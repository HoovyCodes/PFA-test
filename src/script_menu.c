#include "global.h"
#include "main.h"
#include "event_data.h"
#include "field_effect.h"
#include "field_specials.h"
#include "item.h"
#include "menu.h"
#include "palette.h"
#include "script.h"
#include "script_menu.h"
#include "sound.h"
#include "string_util.h"
#include "strings.h"
#include "task.h"
#include "text.h"
#include "constants/field_specials.h"
#include "constants/items.h"
#include "constants/script_menu.h"
#include "constants/songs.h"
#include "list_menu.h"

#include "data/script_menu.h"

static EWRAM_DATA u8 sProcessInputDelay = 0;

static u8 sLilycoveSSTidalSelections[SSTIDAL_SELECTION_COUNT];

static void Task_HandleMultichoiceInput(u8 taskId);
static void Task_HandleYesNoInput(u8 taskId);
static void Task_HandleMultichoiceGridInput(u8 taskId);
static void DrawMultichoiceMenu(u8 left, u8 top, u8 multichoiceId, bool8 ignoreBPress, u8 cursorPos);
static void InitMultichoiceCheckWrap(bool8 ignoreBPress, u8 count, u8 windowId, u8 multichoiceId);
static void DrawLinkServicesMultichoiceMenu(u8 multichoiceId);
static void CreatePCMultichoice(void);
static void CreateLilycoveSSTidalMultichoice(void);
static bool8 IsPicboxClosed(void);
static void CreateStartMenuForPokenavTutorial(void);
static void InitMultichoiceNoWrap(bool8 ignoreBPress, u8 unusedCount, u8 windowId, u8 multichoiceId);

bool8 ScriptMenu_Multichoice(u8 left, u8 top, u8 multichoiceId, bool8 ignoreBPress)
{
    if (FuncIsActiveTask(Task_HandleMultichoiceInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        gSpecialVar_Result = 0xFF;
        DrawMultichoiceMenu(left, top, multichoiceId, ignoreBPress, 0);
        return TRUE;
    }
}

bool8 ScriptMenu_MultichoiceWithDefault(u8 left, u8 top, u8 multichoiceId, bool8 ignoreBPress, u8 defaultChoice)
{
    if (FuncIsActiveTask(Task_HandleMultichoiceInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        gSpecialVar_Result = 0xFF;
        DrawMultichoiceMenu(left, top, multichoiceId, ignoreBPress, defaultChoice);
        return TRUE;
    }
}

// Unused
static u16 GetLengthWithExpandedPlayerName(const u8 *str)
{
    u16 length = 0;

    while (*str != EOS)
    {
        if (*str == PLACEHOLDER_BEGIN)
        {
            str++;
            if (*str == PLACEHOLDER_ID_PLAYER)
            {
                length += StringLength(gSaveBlock2Ptr->playerName);
                str++;
            }
        }
        else
        {
            str++;
            length++;
        }
    }

    return length;
}

static void DrawMultichoiceMenu(u8 left, u8 top, u8 multichoiceId, bool8 ignoreBPress, u8 cursorPos)
{
    int i;
    u8 windowId;
    u8 count = sMultichoiceLists[multichoiceId].count;
    const struct MenuAction *actions = sMultichoiceLists[multichoiceId].list;
    int width = 0;
    u8 newWidth;

    for (i = 0; i < count; i++)
    {
        width = DisplayTextAndGetWidth(actions[i].text, width);
    }

    newWidth = ConvertPixelWidthToTileWidth(width);
    left = ScriptMenu_AdjustLeftCoordFromWidth(left, newWidth);
    windowId = CreateWindowFromRect(left, top, newWidth, count * 2);
    SetStandardWindowBorderStyle(windowId, 0);
    PrintMenuTable(windowId, count, actions);
    InitMenuInUpperLeftCornerPlaySoundWhenAPressed(windowId, count, cursorPos);
    ScheduleBgCopyTilemapToVram(0);
    InitMultichoiceCheckWrap(ignoreBPress, count, windowId, multichoiceId);
}

#define tLeft           data[0]
#define tTop            data[1]
#define tRight          data[2]
#define tBottom         data[3]
#define tIgnoreBPress   data[4]
#define tDoWrap         data[5]
#define tWindowId       data[6]
#define tMultichoiceId  data[7]

static void InitMultichoiceCheckWrap(bool8 ignoreBPress, u8 count, u8 windowId, u8 multichoiceId)
{
    u8 i;
    u8 taskId;
    sProcessInputDelay = 2;

    for (i = 0; i < ARRAY_COUNT(sLinkServicesMultichoiceIds); i++)
    {
        if (sLinkServicesMultichoiceIds[i] == multichoiceId)
        {
            sProcessInputDelay = 12;
        }
    }

    taskId = CreateTask(Task_HandleMultichoiceInput, 80);

    gTasks[taskId].tIgnoreBPress = ignoreBPress;

    if (count > 3)
        gTasks[taskId].tDoWrap = TRUE;
    else
        gTasks[taskId].tDoWrap = FALSE;

    gTasks[taskId].tWindowId = windowId;
    gTasks[taskId].tMultichoiceId = multichoiceId;

    DrawLinkServicesMultichoiceMenu(multichoiceId);
}

static void Task_HandleMultichoiceInput(u8 taskId)
{
    s8 selection;
    s16 *data = gTasks[taskId].data;

    if (!gPaletteFade.active)
    {
        if (sProcessInputDelay)
        {
            sProcessInputDelay--;
        }
        else
        {
            if (!tDoWrap)
                selection = Menu_ProcessInputNoWrap();
            else
                selection = Menu_ProcessInput();

            if (JOY_NEW(DPAD_UP | DPAD_DOWN))
            {
                DrawLinkServicesMultichoiceMenu(tMultichoiceId);
            }

            if (selection != MENU_NOTHING_CHOSEN)
            {
                if (selection == MENU_B_PRESSED)
                {
                    if (tIgnoreBPress)
                        return;
                    PlaySE(SE_SELECT);
                    gSpecialVar_Result = MULTI_B_PRESSED;
                }
                else
                {
                    gSpecialVar_Result = selection;
                }
                ClearToTransparentAndRemoveWindow(tWindowId);
                DestroyTask(taskId);
                EnableBothScriptContexts();
            }
        }
    }
}

bool8 ScriptMenu_YesNo(u8 left, u8 top)
{
    u8 taskId;

    if (FuncIsActiveTask(Task_HandleYesNoInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        gSpecialVar_Result = 0xFF;
        DisplayYesNoMenuDefaultYes();
        taskId = CreateTask(Task_HandleYesNoInput, 0x50);
        return TRUE;
    }
}

// Unused
bool8 IsScriptActive(void)
{
    if (gSpecialVar_Result == 0xFF)
        return FALSE;
    else
        return TRUE;
}

static void Task_HandleYesNoInput(u8 taskId)
{
    if (gTasks[taskId].tRight < 5)
    {
        gTasks[taskId].tRight++;
        return;
    }

    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case MENU_NOTHING_CHOSEN:
        return;
    case MENU_B_PRESSED:
    case 1:
        PlaySE(SE_SELECT);
        gSpecialVar_Result = 0;
        break;
    case 0:
        gSpecialVar_Result = 1;
        break;
    }

    DestroyTask(taskId);
    EnableBothScriptContexts();
}

bool8 ScriptMenu_MultichoiceGrid(u8 left, u8 top, u8 multichoiceId, bool8 ignoreBPress, u8 columnCount)
{
    if (FuncIsActiveTask(Task_HandleMultichoiceGridInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        u8 taskId;
        u8 rowCount, newWidth;
        int i, width;

        gSpecialVar_Result = 0xFF;
        width = 0;

        for (i = 0; i < sMultichoiceLists[multichoiceId].count; i++)
        {
            width = DisplayTextAndGetWidth(sMultichoiceLists[multichoiceId].list[i].text, width);
        }

        newWidth = ConvertPixelWidthToTileWidth(width);

        left = ScriptMenu_AdjustLeftCoordFromWidth(left, columnCount * newWidth);
        rowCount = sMultichoiceLists[multichoiceId].count / columnCount;

        taskId = CreateTask(Task_HandleMultichoiceGridInput, 80);

        gTasks[taskId].tIgnoreBPress = ignoreBPress;
        gTasks[taskId].tWindowId = CreateWindowFromRect(left, top, columnCount * newWidth, rowCount * 2);
        SetStandardWindowBorderStyle(gTasks[taskId].tWindowId, 0);
        PrintMenuGridTable(gTasks[taskId].tWindowId, newWidth * 8, columnCount, rowCount, sMultichoiceLists[multichoiceId].list);
        sub_8199944(gTasks[taskId].tWindowId, newWidth * 8, columnCount, rowCount, 0);
        CopyWindowToVram(gTasks[taskId].tWindowId, 3);
        return TRUE;
    }
}

static void Task_HandleMultichoiceGridInput(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    s8 selection = Menu_ProcessInputGridLayout();

    switch (selection)
    {
    case MENU_NOTHING_CHOSEN:
        return;
    case MENU_B_PRESSED:
        if (tIgnoreBPress)
            return;
        PlaySE(SE_SELECT);
        gSpecialVar_Result = MULTI_B_PRESSED;
        break;
    default:
        gSpecialVar_Result = selection;
        break;
    }

    ClearToTransparentAndRemoveWindow(tWindowId);
    DestroyTask(taskId);
    EnableBothScriptContexts();
}

#undef tWindowId

bool16 ScriptMenu_CreatePCMultichoice(void)
{
    if (FuncIsActiveTask(Task_HandleMultichoiceInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        gSpecialVar_Result = 0xFF;
        CreatePCMultichoice();
        return TRUE;
    }
}

static void CreatePCMultichoice(void)
{
    u8 y = 8;
    u32 pixelWidth = 0;
    u8 width;
    u8 numChoices;
    u8 windowId;
    int i;

    for (i = 0; i < ARRAY_COUNT(sPCNameStrings); i++)
    {
        pixelWidth = DisplayTextAndGetWidth(sPCNameStrings[i], pixelWidth);
    }

    if (FlagGet(FLAG_SYS_GAME_CLEAR))
    {
        pixelWidth = DisplayTextAndGetWidth(gText_HallOfFame, pixelWidth);
    }

    width = ConvertPixelWidthToTileWidth(pixelWidth);

    // Include Hall of Fame option if player is champion
    if (FlagGet(FLAG_SYS_GAME_CLEAR))
    {
        numChoices = 4;
        windowId = CreateWindowFromRect(0, 0, width, 8);
        SetStandardWindowBorderStyle(windowId, 0);
        AddTextPrinterParameterized(windowId, 1, gText_HallOfFame, y, 33, TEXT_SPEED_FF, NULL);
        AddTextPrinterParameterized(windowId, 1, gText_LogOff, y, 49, TEXT_SPEED_FF, NULL);
    }
    else
    {
        numChoices = 3;
        windowId = CreateWindowFromRect(0, 0, width, 6);
        SetStandardWindowBorderStyle(windowId, 0);
        AddTextPrinterParameterized(windowId, 1, gText_LogOff, y, 33, TEXT_SPEED_FF, NULL);
    }

    // Change PC name if player has met Lanette
    if (FlagGet(FLAG_SYS_PC_LANETTE))
        AddTextPrinterParameterized(windowId, 1, gText_LanettesPC, y, 1, TEXT_SPEED_FF, NULL);
    else
        AddTextPrinterParameterized(windowId, 1, gText_SomeonesPC, y, 1, TEXT_SPEED_FF, NULL);

    StringExpandPlaceholders(gStringVar4, gText_PlayersPC);
    PrintPlayerNameOnWindow(windowId, gStringVar4, y, 17);
    InitMenuInUpperLeftCornerPlaySoundWhenAPressed(windowId, numChoices, 0);
    CopyWindowToVram(windowId, 3);
    InitMultichoiceCheckWrap(FALSE, numChoices, windowId, MULTI_PC);
}

void ScriptMenu_DisplayPCStartupPrompt(void)
{
    sub_819786C(0, TRUE);
    AddTextPrinterParameterized2(0, 1, gText_WhichPCShouldBeAccessed, 0, NULL, 2, 1, 3);
}

bool8 ScriptMenu_CreateLilycoveSSTidalMultichoice(void)
{
    if (FuncIsActiveTask(Task_HandleMultichoiceInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        gSpecialVar_Result = 0xFF;
        CreateLilycoveSSTidalMultichoice();
        return TRUE;
    }
}

// gSpecialVar_0x8004 is 1 if the Sailor was shown multiple event tickets at the same time
// otherwise gSpecialVar_0x8004 is 0
static void CreateLilycoveSSTidalMultichoice(void)
{
    u8 selectionCount = 0;
    u8 count;
    u32 pixelWidth;
    u8 width;
    u8 windowId;
    u8 i;
    u32 j;

    for (i = 0; i < SSTIDAL_SELECTION_COUNT; i++)
    {
        sLilycoveSSTidalSelections[i] = 0xFF;
    }

    GetFontAttribute(1, FONTATTR_MAX_LETTER_WIDTH);

    if (gSpecialVar_0x8004 == 0)
    {
        sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_SLATEPORT;
        selectionCount++;

        if (FlagGet(FLAG_MET_SCOTT_ON_SS_TIDAL) == TRUE)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_BATTLE_FRONTIER;
            selectionCount++;
        }
    }

    if (CheckBagHasItem(ITEM_EON_TICKET, 1) == TRUE && FlagGet(FLAG_ENABLE_SHIP_SOUTHERN_ISLAND) == TRUE)
    {
        if (gSpecialVar_0x8004 == 0)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_SOUTHERN_ISLAND;
            selectionCount++;
        }

        if (gSpecialVar_0x8004 == 1 && FlagGet(FLAG_SHOWN_EON_TICKET) == FALSE)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_SOUTHERN_ISLAND;
            selectionCount++;
            FlagSet(FLAG_SHOWN_EON_TICKET);
        }
    }

    if (CheckBagHasItem(ITEM_MYSTIC_TICKET, 1) == TRUE && FlagGet(FLAG_ENABLE_SHIP_NAVEL_ROCK) == TRUE)
    {
        if (gSpecialVar_0x8004 == 0)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_NAVEL_ROCK;
            selectionCount++;
        }

        if (gSpecialVar_0x8004 == 1 && FlagGet(FLAG_SHOWN_MYSTIC_TICKET) == FALSE)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_NAVEL_ROCK;
            selectionCount++;
            FlagSet(FLAG_SHOWN_MYSTIC_TICKET);
        }
    }

    if (CheckBagHasItem(ITEM_AURORA_TICKET, 1) == TRUE && FlagGet(FLAG_ENABLE_SHIP_BIRTH_ISLAND) == TRUE)
    {
        if (gSpecialVar_0x8004 == 0)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_BIRTH_ISLAND;
            selectionCount++;
        }

        if (gSpecialVar_0x8004 == 1 && FlagGet(FLAG_SHOWN_AURORA_TICKET) == FALSE)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_BIRTH_ISLAND;
            selectionCount++;
            FlagSet(FLAG_SHOWN_AURORA_TICKET);
        }
    }

    if (CheckBagHasItem(ITEM_OLD_SEA_MAP, 1) == TRUE && FlagGet(FLAG_ENABLE_SHIP_FARAWAY_ISLAND) == TRUE)
    {
        if (gSpecialVar_0x8004 == 0)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_FARAWAY_ISLAND;
            selectionCount++;
        }

        if (gSpecialVar_0x8004 == 1 && FlagGet(FLAG_SHOWN_OLD_SEA_MAP) == FALSE)
        {
            sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_FARAWAY_ISLAND;
            selectionCount++;
            FlagSet(FLAG_SHOWN_OLD_SEA_MAP);
        }
    }

    sLilycoveSSTidalSelections[selectionCount] = SSTIDAL_SELECTION_EXIT;
    selectionCount++;

    if (gSpecialVar_0x8004 == 0 && FlagGet(FLAG_MET_SCOTT_ON_SS_TIDAL) == TRUE)
    {
        count = selectionCount;
    }

    count = selectionCount;
    if (count == SSTIDAL_SELECTION_COUNT)
    {
        gSpecialVar_0x8004 = SCROLL_MULTI_SS_TIDAL_DESTINATION;
        ShowScrollableMultichoice();
    }
    else
    {
        pixelWidth = 0;

        for (j = 0; j < SSTIDAL_SELECTION_COUNT; j++)
        {
            u8 selection = sLilycoveSSTidalSelections[j];
            if (selection != 0xFF)
            {
                pixelWidth = DisplayTextAndGetWidth(sLilycoveSSTidalDestinations[selection], pixelWidth);
            }
        }

        width = ConvertPixelWidthToTileWidth(pixelWidth);
        windowId = CreateWindowFromRect(MAX_MULTICHOICE_WIDTH - width, (6 - count) * 2, width, count * 2);
        SetStandardWindowBorderStyle(windowId, 0);

        for (selectionCount = 0, i = 0; i < SSTIDAL_SELECTION_COUNT; i++)
        {
            if (sLilycoveSSTidalSelections[i] != 0xFF)
            {
                AddTextPrinterParameterized(windowId, 1, sLilycoveSSTidalDestinations[sLilycoveSSTidalSelections[i]], 8, selectionCount * 16 + 1, TEXT_SPEED_FF, NULL);
                selectionCount++;
            }
        }

        InitMenuInUpperLeftCornerPlaySoundWhenAPressed(windowId, count, count - 1);
        CopyWindowToVram(windowId, 3);
        InitMultichoiceCheckWrap(FALSE, count, windowId, MULTI_SSTIDAL_LILYCOVE);
    }
}

void GetLilycoveSSTidalSelection(void)
{
    if (gSpecialVar_Result != MULTI_B_PRESSED)
    {
        gSpecialVar_Result = sLilycoveSSTidalSelections[gSpecialVar_Result];
    }
}

#define tState       data[0]
#define tMonSpecies  data[1]
#define tMonSpriteId data[2]
#define tWindowX     data[3]
#define tWindowY     data[4]
#define tWindowId    data[5]

static void Task_PokemonPicWindow(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    switch (task->tState)
    {
    case 0:
        task->tState++;
        break;
    case 1:
        break;
    case 2:
        FreeResourcesAndDestroySprite(&gSprites[task->tMonSpriteId], task->tMonSpriteId);
        task->tState++;
        break;
    case 3:
        ClearToTransparentAndRemoveWindow(task->tWindowId);
        DestroyTask(taskId);
        break;
    }
}

bool8 ScriptMenu_ShowPokemonPic(u16 species, u8 x, u8 y)
{
    u8 taskId;
    u8 spriteId;

    if (FindTaskIdByFunc(Task_PokemonPicWindow) != 0xFF)
    {
        return FALSE;
    }
    else
    {
        spriteId = CreateMonSprite_PicBox(species, x * 8 + 40, y * 8 + 40, 0);
        taskId = CreateTask(Task_PokemonPicWindow, 0x50);
        gTasks[taskId].tWindowId = CreateWindowFromRect(x, y, 8, 8);
        gTasks[taskId].tState = 0;
        gTasks[taskId].tMonSpecies = species;
        gTasks[taskId].tMonSpriteId = spriteId;
        gSprites[spriteId].callback = SpriteCallbackDummy;
        gSprites[spriteId].oam.priority = 0;
        SetStandardWindowBorderStyle(gTasks[taskId].tWindowId, 1);
        ScheduleBgCopyTilemapToVram(0);
        return TRUE;
    }
}

bool8 (*ScriptMenu_GetPicboxWaitFunc(void))(void)
{
    u8 taskId = FindTaskIdByFunc(Task_PokemonPicWindow);

    if (taskId == 0xFF)
        return NULL;
    gTasks[taskId].tState++;
    return IsPicboxClosed;
}

static bool8 IsPicboxClosed(void)
{
    if (FindTaskIdByFunc(Task_PokemonPicWindow) == 0xFF)
        return TRUE;
    else
        return FALSE;
}

#undef tState
#undef tMonSpecies
#undef tMonSpriteId
#undef tWindowX
#undef tWindowY
#undef tWindowId

u8 CreateWindowFromRect(u8 x, u8 y, u8 width, u8 height)
{
    struct WindowTemplate template = CreateWindowTemplate(0, x + 1, y + 1, width, height, 15, 100);
    u8 windowId = AddWindow(&template);
    PutWindowTilemap(windowId);
    return windowId;
}

void ClearToTransparentAndRemoveWindow(u8 windowId)
{
    ClearStdWindowAndFrameToTransparent(windowId, TRUE);
    RemoveWindow(windowId);
}

static void DrawLinkServicesMultichoiceMenu(u8 multichoiceId)
{
    switch (multichoiceId)
    {
    case MULTI_WIRELESS_NO_BERRY:
        FillWindowPixelBuffer(0, PIXEL_FILL(1));
        AddTextPrinterParameterized2(0, 1, sWirelessOptionsNoBerryCrush[Menu_GetCursorPos()], 0, NULL, 2, 1, 3);
        break;
    case MULTI_CABLE_CLUB_WITH_RECORD_MIX:
        FillWindowPixelBuffer(0, PIXEL_FILL(1));
        AddTextPrinterParameterized2(0, 1, sCableClubOptions_WithRecordMix[Menu_GetCursorPos()], 0, NULL, 2, 1, 3);
        break;
    case MULTI_WIRELESS_NO_RECORD:
        FillWindowPixelBuffer(0, PIXEL_FILL(1));
        AddTextPrinterParameterized2(0, 1, sWirelessOptions_NoRecordMix[Menu_GetCursorPos()], 0, NULL, 2, 1, 3);
        break;
    case MULTI_WIRELESS_ALL_SERVICES:
        FillWindowPixelBuffer(0, PIXEL_FILL(1));
        AddTextPrinterParameterized2(0, 1, sWirelessOptions_AllServices[Menu_GetCursorPos()], 0, NULL, 2, 1, 3);
        break;
    case MULTI_WIRELESS_NO_RECORD_BERRY:
        FillWindowPixelBuffer(0, PIXEL_FILL(1));
        AddTextPrinterParameterized2(0, 1, sWirelessOptions_NoRecordMixBerryCrush[Menu_GetCursorPos()], 0, NULL, 2, 1, 3);
        break;
    case MULTI_CABLE_CLUB_NO_RECORD_MIX:
        FillWindowPixelBuffer(0, PIXEL_FILL(1));
        AddTextPrinterParameterized2(0, 1, sCableClubOptions_NoRecordMix[Menu_GetCursorPos()], 0, NULL, 2, 1, 3);
        break;
    }
}

bool16 ScriptMenu_CreateStartMenuForPokenavTutorial(void)
{
    if (FuncIsActiveTask(Task_HandleMultichoiceInput) == TRUE)
    {
        return FALSE;
    }
    else
    {
        gSpecialVar_Result = 0xFF;
        CreateStartMenuForPokenavTutorial();
        return TRUE;
    }
}

static void CreateStartMenuForPokenavTutorial(void)
{
    u8 windowId = CreateWindowFromRect(21, 0, 7, 18);
    SetStandardWindowBorderStyle(windowId, 0);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionPokedex, 8, 9, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionPokemon, 8, 25, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionBag, 8, 41, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionPokenav, 8, 57, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gSaveBlock2Ptr->playerName, 8, 73, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionSave, 8, 89, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionOption, 8, 105, TEXT_SPEED_FF, NULL);
    AddTextPrinterParameterized(windowId, 1, gText_MenuOptionExit, 8, 121, TEXT_SPEED_FF, NULL);
    sub_81983AC(windowId, 1, 0, 9, 16, ARRAY_COUNT(MultichoiceList_ForcedStartMenu), 0);
    InitMultichoiceNoWrap(FALSE, ARRAY_COUNT(MultichoiceList_ForcedStartMenu), windowId, MULTI_FORCED_START_MENU);
    CopyWindowToVram(windowId, 3);
}

#define tWindowId       data[6]

static void InitMultichoiceNoWrap(bool8 ignoreBPress, u8 unusedCount, u8 windowId, u8 multichoiceId)
{
    u8 taskId;
    sProcessInputDelay = 2;
    taskId = CreateTask(Task_HandleMultichoiceInput, 80);
    gTasks[taskId].tIgnoreBPress = ignoreBPress;
    gTasks[taskId].tDoWrap = 0;
    gTasks[taskId].tWindowId = windowId;
    gTasks[taskId].tMultichoiceId = multichoiceId;
}

#undef tLeft
#undef tTop
#undef tRight
#undef tBottom
#undef tIgnoreBPress
#undef tDoWrap
#undef tWindowId
#undef tMultichoiceId

static int DisplayTextAndGetWidthInternal(const u8 *str)
{
    u8 temp[64];
    StringExpandPlaceholders(temp, str);
    return GetStringWidth(1, temp, 0);
}

int DisplayTextAndGetWidth(const u8 *str, int prevWidth)
{
    int width = DisplayTextAndGetWidthInternal(str);
    if (width < prevWidth)
    {
        width = prevWidth;
    }
    return width;
}

int ConvertPixelWidthToTileWidth(int width)
{
    return (((width + 9) / 8) + 1) > MAX_MULTICHOICE_WIDTH ? MAX_MULTICHOICE_WIDTH : (((width + 9) / 8) + 1);
}

int ScriptMenu_AdjustLeftCoordFromWidth(int left, int width)
{
    int adjustedLeft = left;

    if (left + width > MAX_MULTICHOICE_WIDTH)
    {
        if (MAX_MULTICHOICE_WIDTH - width < 0)
        {
            adjustedLeft = 0;
        }
        else
        {
            adjustedLeft = MAX_MULTICHOICE_WIDTH - width;
        }
    }

    return adjustedLeft;
}

//Stat Names
static const u8 sText_HP[] = _("HP");
static const u8 sText_Attack[] = _("Attack");
static const u8 sText_Defense[] = _("Defense");
static const u8 sText_Speed[] = _("Speed");
static const u8 sText_SpAttack[] = _("Sp. Attack");
static const u8 sText_SpDefense[] = _("Sp. Defense");
//Nature
static const u8 sText_Lonely[] = _("Lonely +Atk/-Def");
static const u8 sText_Adamant[] = _("Adamant +Atk/-Sp.Atk");
static const u8 sText_Naughty[] = _("Naughty +Atk/-Sp.Def");
static const u8 sText_Brave[] = _("Brave +Atk/-Spd");
static const u8 sText_Bold[] = _("Bold +Def/-Atk");
static const u8 sText_Impish[] = _("Impish +Def/-Sp.Atk");
static const u8 sText_Lax[] = _("Lax +Def/-Sp.Def");
static const u8 sText_Relaxed[] = _("Relaxed +Def/-Spd");
static const u8 sText_Modest[] = _("Modest +Sp.Atk/-Atk");
static const u8 sText_Mild[] = _("Mild +Sp.Atk/-Def");
static const u8 sText_Rash[] = _("Rash +Sp.Atk/-Sp.Def");
static const u8 sText_Quiet[] = _("Quiet +Sp.Atk/-Spd");
static const u8 sText_Calm[] = _("Calm +Sp.Def/-Atk");
static const u8 sText_Gentle[] = _("Gentle +Sp.Def/-Def");
static const u8 sText_Careful[] = _("Careful +Sp.Def/-Sp.Atk");
static const u8 sText_Sassy[] = _("Sassy +Sp.Def/-Spd");
static const u8 sText_Timid[] = _("Timid +Spd/-Atk");
static const u8 sText_Hasty[] = _("Hasty +Spd/-Def");
static const u8 sText_Jolly[] = _("Jolly +Spd/-Sp.Atk");
static const u8 sText_Naive[] = _("Naive +Spd/-Sp.Def");
static const u8 sText_DCN[] = _("Don't Change Nature");
//Coins to BP
static const u8 sText_25toBP[] = _("25 Coins        1 BP");
static const u8 sText_250toBP[] = _("250 Coins       10BP");
static const u8 sText_Cancel[] = _("Cancel");
//NU Pokemon
static const u8 sText_NU1[] = _("Abomasnow");
static const u8 sText_NU2[] = _("Accelgor");
static const u8 sText_NU3[] = _("Aerodactyl");
static const u8 sText_NU4[] = _("Ambipom");
static const u8 sText_NU5[] = _("Audino");
static const u8 sText_NU6[] = _("Blastoise");
static const u8 sText_NU7[] = _("Braviary");
static const u8 sText_NU8[] = _("Clawitzer");
static const u8 sText_NU9[] = _("Comfey");
static const u8 sText_NU10[] = _("Decidueye");
static const u8 sText_NU11[] = _("Delphox");
static const u8 sText_NU12[] = _("Dhelmise");
static const u8 sText_NU13[] = _("Druddigon");
static const u8 sText_NU14[] = _("A. Exeggutor ");
static const u8 sText_NU15[] = _("Garbodor");
static const u8 sText_NU16[] = _("Glalie");
static const u8 sText_NU17[] = _("Hariyama");
static const u8 sText_NU18[] = _("Heliolisk");
static const u8 sText_NU19[] = _("Hitmonlee");
static const u8 sText_NU20[] = _("Hitmontop");
static const u8 sText_NU21[] = _("Incineroar");
static const u8 sText_NU22[] = _("Klinklang");
static const u8 sText_NU23[] = _("Magmortar");
static const u8 sText_NU24[] = _("Malamar");
static const u8 sText_NU25[] = _("Medicham");
static const u8 sText_NU26[] = _("Charizard");
static const u8 sText_NU27[] = _("Miltank");
static const u8 sText_NU28[] = _("Minior");
static const u8 sText_NU29[] = _("Mismagius");
static const u8 sText_NU30[] = _("Palossand");
static const u8 sText_NU31[] = _("Pangoro");
static const u8 sText_NU32[] = _("Passimian");
static const u8 sText_NU33[] = _("Rotom");
static const u8 sText_NU34[] = _("Samurott");
static const u8 sText_NU35[] = _("Sceptile");
static const u8 sText_NU36[] = _("Scrafty");
static const u8 sText_NU37[] = _("Seismitoad");
static const u8 sText_NU38[] = _("Sigilyph");
static const u8 sText_NU39[] = _("Slowking");
static const u8 sText_NU40[] = _("Steelix");
static const u8 sText_NU41[] = _("Togedemaru");
static const u8 sText_NU42[] = _("Typhlosion");
static const u8 sText_NU43[] = _("Vaporeon");
static const u8 sText_NU44[] = _("Vikavolt");
static const u8 sText_NU45[] = _("Vivillon");
static const u8 sText_NU46[] = _("Weezing");
static const u8 sText_NU47[] = _("Whimsicott");
static const u8 sText_NU48[] = _("Xatu");

static const u8 sText_NU49[] = _("Barbaracle");
static const u8 sText_NU50[] = _("Bruxish");
static const u8 sText_NU51[] = _("Camerupt");
static const u8 sText_NU52[] = _("Cofagrigus");
static const u8 sText_NU53[] = _("Emboar");
static const u8 sText_NU54[] = _("Exploud");
static const u8 sText_NU55[] = _("Kingdra");
static const u8 sText_NU56[] = _("Slurpuff");
static const u8 sText_NU57[] = _("Vanilluxe");
static const u8 sText_NU58[] = _("Vileplume");

static const u8 sText_NU59[] = _("Archeops");
static const u8 sText_NU60[] = _("Absol");
static const u8 sText_NU61[] = _("Aromatisse");
static const u8 sText_NU62[] = _("Aurorus");
static const u8 sText_NU63[] = _("Cinccino");
static const u8 sText_NU64[] = _("Gallade");
static const u8 sText_NU65[] = _("Guzzlord");
static const u8 sText_NU66[] = _("Kingler");
static const u8 sText_NU67[] = _("Lilligant");
static const u8 sText_NU68[] = _("Pyroar");
static const u8 sText_NU69[] = _("Pyukumuku");
static const u8 sText_NU70[] = _("Regirock");
static const u8 sText_NU71[] = _("Sawk");
static const u8 sText_NU72[] = _("Tauros");
static const u8 sText_NU73[] = _("Silvally");
static const u8 sText_NU74[] = _("Mesprit");
//RU
static const u8 sText_RU1[] = _("Ampharos");
static const u8 sText_RU2[] = _("Araquanid");
static const u8 sText_RU3[] = _("Arcanine");
static const u8 sText_RU4[] = _("Banette");
static const u8 sText_RU5[] = _("Bewear");
static const u8 sText_RU6[] = _("Bronzong");
static const u8 sText_RU7[] = _("Cloyster");
static const u8 sText_RU8[] = _("Donphan");
static const u8 sText_RU9[] = _("Dragalge");
static const u8 sText_RU10[] = _("Drapion");
static const u8 sText_RU11[] = _("Escavalier");
static const u8 sText_RU12[] = _("Espeon");
static const u8 sText_RU13[] = _("Florges");
static const u8 sText_RU14[] = _("Flygon");
static const u8 sText_RU15[] = _("Forretress");
static const u8 sText_RU16[] = _("Galvantula");
static const u8 sText_RU17[] = _("Shaymin");
static const u8 sText_RU18[] = _("Gigalith");
static const u8 sText_RU19[] = _("Golisopod");
static const u8 sText_RU20[] = _("Goodra");
static const u8 sText_RU21[] = _("Honchkrow");
static const u8 sText_RU22[] = _("Jolteon");
static const u8 sText_RU23[] = _("Lycanroc (Dusk)");
static const u8 sText_RU24[] = _("Machamp");
static const u8 sText_RU25[] = _("Mandibuzz");
static const u8 sText_RU26[] = _("Mantine");
static const u8 sText_RU27[] = _("Marowak (Alolan)");
static const u8 sText_RU28[] = _("Metagross");
static const u8 sText_RU29[] = _("Milotic");
static const u8 sText_RU30[] = _("Nidoqueen");
static const u8 sText_RU31[] = _("Ninetales");
static const u8 sText_RU32[] = _("Noivern");
static const u8 sText_RU33[] = _("Rhyperior");
static const u8 sText_RU34[] = _("Ribombee");
static const u8 sText_RU35[] = _("Roserade");
static const u8 sText_RU36[] = _("Rotom (Mow)");
static const u8 sText_RU37[] = _("Salazzle");
static const u8 sText_RU38[] = _("DUMMY");
static const u8 sText_RU39[] = _("Slowbro");
static const u8 sText_RU40[] = _("Snorlax");
static const u8 sText_RU41[] = _("Swellow");
static const u8 sText_RU42[] = _("Toxicroak");
static const u8 sText_RU43[] = _("Tsareena");
static const u8 sText_RU44[] = _("Tyrantrum");
static const u8 sText_RU45[] = _("Umbreon");
static const u8 sText_RU46[] = _("Venusaur");
static const u8 sText_RU47[] = _("Yanmega");

static const u8 sText_RU48[] = _("Torterra");
static const u8 sText_RU49[] = _("DUMMY");
static const u8 sText_RU50[] = _("Darmanitan");
static const u8 sText_RU51[] = _("Durant");
static const u8 sText_RU52[] = _("Heracross");
static const u8 sText_RU53[] = _("Houndoom");
static const u8 sText_RU54[] = _("Linoone");
static const u8 sText_RU55[] = _("Mienshao");
static const u8 sText_RU56[] = _("Reuniclus");
static const u8 sText_RU57[] = _("Sharpedo");
static const u8 sText_RU58[] = _("Talonflame");
static const u8 sText_RU59[] = _("Venomoth");
static const u8 sText_RU60[] = _("Zoroark");

static const u8 sText_RU61[] = _("Cresselia");
static const u8 sText_RU62[] = _("Diancie");
static const u8 sText_RU63[] = _("Gardevoir");
static const u8 sText_RU64[] = _("Hoopa");
static const u8 sText_RU65[] = _("Necrozma");
static const u8 sText_RU66[] = _("Raikou");
static const u8 sText_RU67[] = _("Registeel");
static const u8 sText_RU68[] = _("Uxie");
static const u8 sText_RU69[] = _("Virizion");
static const u8 sText_RU70[] = _("Zygarde 10%");
static const u8 sText_RU71[] = _("Kyurem");
static const u8 sText_RU72[] = _("Meloetta");
static const u8 sText_RU73[] = _("Stakataka");
static const u8 sText_RU74[] = _("Tornadus");
static const u8 sText_RU75[] = _("Entei");

//UU
static const u8 sText_UU1[] = _("Aggron");
static const u8 sText_UU2[] = _("Alomomola");
static const u8 sText_UU3[] = _("Altaria");
static const u8 sText_UU4[] = _("Amoonguss");
static const u8 sText_UU5[] = _("Beedrill");
static const u8 sText_UU6[] = _("Bisharp");
static const u8 sText_UU7[] = _("Blissey");
static const u8 sText_UU8[] = _("Chandelure");
static const u8 sText_UU9[] = _("Chesnaught");
static const u8 sText_UU10[] = _("Crawdaunt");
static const u8 sText_UU11[] = _("Crobat");
static const u8 sText_UU12[] = _("Empoleon");
static const u8 sText_UU13[] = _("Feraligatr");
static const u8 sText_UU14[] = _("Froslass");
static const u8 sText_UU15[] = _("Gengar");
static const u8 sText_UU16[] = _("Haxorus");
static const u8 sText_UU17[] = _("Hippowdon");
static const u8 sText_UU18[] = _("Hydreigon");
static const u8 sText_UU19[] = _("Klefki");
static const u8 sText_UU20[] = _("Krookodile");
static const u8 sText_UU21[] = _("Lucario");
static const u8 sText_UU22[] = _("Mamoswine");
static const u8 sText_UU23[] = _("Manectric");
static const u8 sText_UU24[] = _("Mimikyu");
static const u8 sText_UU25[] = _("Muk (Alolan)");
static const u8 sText_UU26[] = _("Nidoking");
static const u8 sText_UU27[] = _("Pidgeot");
static const u8 sText_UU28[] = _("Primarina");
static const u8 sText_UU29[] = _("Quagsire");
static const u8 sText_UU30[] = _("Rotom (Heat)");
static const u8 sText_UU31[] = _("Scizor");
static const u8 sText_UU32[] = _("Sharpedo DUMMMY");
static const u8 sText_UU33[] = _("Starmie");
static const u8 sText_UU34[] = _("Swampert");
static const u8 sText_UU35[] = _("Sylveon");
static const u8 sText_UU36[] = _("Tentacruel");
static const u8 sText_UU37[] = _("Togekiss");

static const u8 sText_UU38[] = _("Alakazam");
static const u8 sText_UU39[] = _("Breloom");
static const u8 sText_UU40[] = _("Conkeldurr");
static const u8 sText_UU41[] = _("Diggersby");
static const u8 sText_UU42[] = _("Dragonite");
static const u8 sText_UU43[] = _("DUMMY");
static const u8 sText_UU44[] = _("DUMMY");
static const u8 sText_UU45[] = _("Gyarados");
static const u8 sText_UU46[] = _("Ninetales (Alolan)");
static const u8 sText_UU47[] = _("Pinsir");
static const u8 sText_UU48[] = _("Porygon-Z");
static const u8 sText_UU49[] = _("Salamence");
static const u8 sText_UU50[] = _("Scolipede");
static const u8 sText_UU51[] = _("Staraptor");
static const u8 sText_UU52[] = _("Weavile");

static const u8 sText_UU53[] = _("Azelf");
static const u8 sText_UU54[] = _("Celebi");
static const u8 sText_UU55[] = _("Cobalion");
static const u8 sText_UU56[] = _("Latias");
static const u8 sText_UU57[] = _("Mew");
static const u8 sText_UU58[] = _("Moltres");
static const u8 sText_UU59[] = _("Nihilego");
static const u8 sText_UU60[] = _("Suicune");
static const u8 sText_UU61[] = _("Terrakion");
static const u8 sText_UU62[] = _("Volcanion");
static const u8 sText_UU63[] = _("Zeraora");
static const u8 sText_UU64[] = _("Buzzwole");
static const u8 sText_UU65[] = _("Hoopa-Unbound");
static const u8 sText_UU66[] = _("Latios");
static const u8 sText_UU67[] = _("Thundurus");
static const u8 sText_UU68[] = _("Thundurus-Therian");
static const u8 sText_UU69[] = _("Xurkitree");

//OU
static const u8 sText_OU1[] = _("Azumarill");
static const u8 sText_OU2[] = _("Clefable");
static const u8 sText_OU3[] = _("Excadrill");
static const u8 sText_OU4[] = _("Ferrothorn");
static const u8 sText_OU5[] = _("Garchomp");
static const u8 sText_OU6[] = _("Gliscor");
static const u8 sText_OU7[] = _("Hawlucha");
static const u8 sText_OU8[] = _("Kommo-O");
static const u8 sText_OU9[] = _("Blacephalon");
static const u8 sText_OU10[] = _("Celesteela");
static const u8 sText_OU11[] = _("DUMMY");
static const u8 sText_OU12[] = _("Heatran");
static const u8 sText_OU13[] = _("Jirachi");
static const u8 sText_OU14[] = _("Kartana");
static const u8 sText_OU15[] = _("Keldeo");
static const u8 sText_OU16[] = _("Kyurem Black");
static const u8 sText_OU17[] = _("Landorus-Therian");
static const u8 sText_OU19[] = _("Lopunny");
static const u8 sText_OU20[] = _("Magearna");
static const u8 sText_OU21[] = _("Magnezone");
static const u8 sText_OU22[] = _("Manaphy");
static const u8 sText_OU23[] = _("Mawile");
static const u8 sText_OU24[] = _("Pelipper");
static const u8 sText_OU25[] = _("Rotom (Wash)");
static const u8 sText_OU26[] = _("Sableye");
static const u8 sText_OU27[] = _("Serperior");
static const u8 sText_OU28[] = _("Skarmory");
static const u8 sText_OU29[] = _("Tangrowth");
static const u8 sText_OU30[] = _("Tapu Bulu");
static const u8 sText_OU31[] = _("Tapu Fini");
static const u8 sText_OU32[] = _("Tapu Koko");
static const u8 sText_OU33[] = _("Tapu Lele");
static const u8 sText_OU34[] = _("Tornadus-Therian");
static const u8 sText_OU35[] = _("Toxapex");
static const u8 sText_OU36[] = _("Tyranitar");
static const u8 sText_OU37[] = _("Victini");
static const u8 sText_OU38[] = _("Volcarona");
static const u8 sText_OU39[] = _("Zapdos");

static const u8 sText_Random[] = _("Random");

//MOVES
//UNIQUE
static const u8 sText_Move1[] = _("Grass Pledge");
static const u8 sText_Move2[] = _("Fire Pledge");
static const u8 sText_Move3[] = _("Water Pledge");
static const u8 sText_Move4[] = _("Frenzy Plant");
static const u8 sText_Move5[] = _("Blast Burn");
static const u8 sText_Move6[] = _("Hydro Cannon");
static const u8 sText_Move7[] = _("Draco Meteor");
static const u8 sText_Move8[] = _("Dragon Ascent");
static const u8 sText_Move9[] = _("Secret Sword");
static const u8 sText_Move10[] = _("Relic Song");


static const u8 sText_Move11[] = _("Fury Cutter");
static const u8 sText_Move12[] = _("Rollout");
static const u8 sText_Move13[] = _("Seismic Toss");
static const u8 sText_Move14[] = _("Covet");
static const u8 sText_Move15[] = _("Vacuum Wave");
static const u8 sText_Move16[] = _("Shock Wave");
static const u8 sText_Move17[] = _("Bug Bite");
static const u8 sText_Move18[] = _("Air Cutter");
static const u8 sText_Move19[] = _("Swift");
static const u8 sText_Move20[] = _("Snatch");
static const u8 sText_Move21[] = _("Mimic");
static const u8 sText_Move22[] = _("Mud Slap");
static const u8 sText_Move23[] = _("Metronome");
static const u8 sText_Move24[] = _("Ominous Wind");
static const u8 sText_Move25[] = _("Super Fang");
static const u8 sText_Move26[] = _("Counter");
static const u8 sText_Move27[] = _("Signal Beam");
static const u8 sText_Move28[] = _("Defog");
static const u8 sText_Move29[] = _("Magic Coat");
static const u8 sText_Move30[] = _("Gravity");
static const u8 sText_Move31[] = _("Seed Bomb");
static const u8 sText_Move32[] = _("Dynamic Punch");
static const u8 sText_Move33[] = _("Synthesis");
static const u8 sText_Move34[] = _("Pain Split");
static const u8 sText_Move35[] = _("Uproar");
static const u8 sText_Move36[] = _("Hone Claws");
static const u8 sText_Move37[] = _("Endeavor");
static const u8 sText_Move38[] = _("Worry Seed");
static const u8 sText_Move39[] = _("Psych Up");

static const u8 sText_Move40[] = _("Thunder Punch");
static const u8 sText_Move41[] = _("Fire Punch");
static const u8 sText_Move42[] = _("Ice Punch");
static const u8 sText_Move43[] = _("Icy Wind");
static const u8 sText_Move44[] = _("Electroweb");
static const u8 sText_Move45[] = _("Low Kick");
static const u8 sText_Move46[] = _("Iron Defense");
static const u8 sText_Move47[] = _("Magnet Rise");
static const u8 sText_Move48[] = _("Tailwind");
static const u8 sText_Move49[] = _("Zen Headbutt");
static const u8 sText_Move50[] = _("Dual Chop");
static const u8 sText_Move51[] = _("Body Slam");
static const u8 sText_Move52[] = _("Brine");
static const u8 sText_Move53[] = _("Swagger");
static const u8 sText_Move54[] = _("Iron Head");
static const u8 sText_Move55[] = _("Soft-Boiled");
static const u8 sText_Move56[] = _("Last Resort");
static const u8 sText_Move57[] = _("Role Play");
static const u8 sText_Move58[] = _("Drill Run");
static const u8 sText_Move59[] = _("Trick");


static const u8 sText_Move60[] = _("Aqua Tail");
static const u8 sText_Move61[] = _("Sky Attack");
static const u8 sText_Move62[] = _("Foul Play");
static const u8 sText_Move63[] = _("Double-Edge");
static const u8 sText_Move64[] = _("Bounce");
static const u8 sText_Move65[] = _("Heal Bell");
static const u8 sText_Move66[] = _("Superpower");
static const u8 sText_Move67[] = _("Helping Hand");
static const u8 sText_Move68[] = _("Heat Wave");
static const u8 sText_Move69[] = _("Outrage");
static const u8 sText_Move70[] = _("Knock Off");
static const u8 sText_Move71[] = _("Liquidation");
static const u8 sText_Move72[] = _("Hyper Voice");
static const u8 sText_Move73[] = _("Earth Power");
static const u8 sText_Move74[] = _("Gunk Shot");
static const u8 sText_Move75[] = _("Aura Sphere");
static const u8 sText_Move76[] = _("Throat Chop");
static const u8 sText_Move77[] = _("Gastro Acid");
static const u8 sText_Move78[] = _("Power Gem");
static const u8 sText_Move79[] = _("Hurricane");

static const u8 sText_Bet1BP[] = _("1 BP");
static const u8 sText_Bet3BP[] = _("3 BP");
static const u8 sText_Bet5BP[] = _("5 BP");

static const u8 sText_Red[] = _("Red");
static const u8 sText_Blue[] = _("Blue");
static const u8 sText_Lance[] = _("Lance");
static const u8 sText_Steven[] = _("Steven");
static const u8 sText_Wallace[] = _("Wallace");
static const u8 sText_Cynthia[] = _("Cynthia");
static const u8 sText_Alder[] = _("Alder");
static const u8 sText_Iris[] = _("Iris");
static const u8 sText_Diantha[] = _("Diantha");
static const u8 sText_Kukui[] = _("Kukui");
static const u8 sText_Hau[] = _("Hau");

static const u8 sText_CFT[] = _("Challenge");
static const u8 sText_Record[] = _("View Record");

static const u8 sText_Ability1[] = _("{STR_VAR_1}");
static const u8 sText_Ability2[] = _("{STR_VAR_2}");
static const u8 sText_Ability3[] = _("{STR_VAR_3}");


// Sets of multichoices.
static const struct ListMenuItem sSet1[] =
{
    {sText_HP, 0},
    {sText_Attack, 1},
    {sText_Defense, 2},
    {sText_Speed, 3},
    {sText_SpAttack, 4},
    {sText_SpDefense, 5},
};

static const struct ListMenuItem sSet2[] =
{
    {sText_DCN, 0x7F},
    {sText_Lonely, 0},
    {sText_Adamant, 1},
    {sText_Naughty, 2},
    {sText_Brave, 3},
    {sText_Bold, 4},
	{sText_Impish, 5},
    {sText_Lax, 6},
    {sText_Relaxed, 7},
    {sText_Modest, 8},
    {sText_Mild, 9},
	{sText_Rash, 10},
    {sText_Quiet, 11},
    {sText_Calm, 12},
    {sText_Gentle, 13},
    {sText_Careful, 14},
	{sText_Sassy, 15},
    {sText_Timid, 16},
    {sText_Hasty, 17},
    {sText_Jolly, 18},
    {sText_Naive, 19},
};

static const struct ListMenuItem sSet3[] =
{
    {sText_25toBP, 0},
    {sText_250toBP, 1},
    {sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet4[] =
{
	{sText_Random, 99},
	{sText_NU1, 0},
	{sText_NU60, 59},
    {sText_NU2, 1},
    {sText_NU3, 2},
    {sText_NU4, 3},
	{sText_NU59, 58},
	{sText_NU61, 60},
    {sText_NU5, 4},
	{sText_NU62, 61},
    {sText_NU49, 48},
    {sText_NU6, 5},
    {sText_NU7, 6},
    {sText_NU50, 49},
    {sText_NU26, 25},
    {sText_NU51, 50},
	{sText_NU63, 62},
    {sText_NU8, 7},
    {sText_NU52, 51},
    {sText_NU9, 8},
    {sText_NU10, 9},
    {sText_NU11, 10},
    {sText_NU12, 11},
    {sText_NU13, 12},
    {sText_NU53, 52},
    {sText_NU14, 13},
    {sText_NU54, 53},
	{sText_NU64, 63},
    {sText_NU15, 14},
    {sText_NU16, 15},
	{sText_NU65, 64},
    {sText_NU17, 16},
    {sText_NU18, 17},
    {sText_NU19, 18},
    {sText_NU20, 19},
    {sText_NU21, 20},
    {sText_NU55, 54},
	{sText_NU66, 65},
    {sText_NU22, 21},
	{sText_NU67, 66},
    {sText_NU23, 22},
    {sText_NU24, 23},
    {sText_NU25, 24},
	{sText_NU74, 73},
    {sText_NU27, 26},
    {sText_NU28, 27},
    {sText_NU29, 28},
    {sText_NU30, 29},
    {sText_NU31, 30},
    {sText_NU32, 31},
	{sText_NU68, 67},
	{sText_NU69, 68},
	{sText_NU70, 69},
    {sText_NU33, 32},
    {sText_NU34, 33},
	{sText_NU71, 70},
    {sText_NU35, 34},
    {sText_NU36, 35},
    {sText_NU37, 36},
    {sText_NU38, 37},
	{sText_NU73, 72},
    {sText_NU39, 38},
    {sText_NU56, 55},
    {sText_NU40, 39},
	{sText_NU72, 71},
    {sText_NU41, 40},
    {sText_NU42, 41},
    {sText_NU57, 56},
    {sText_NU43, 42},
    {sText_NU44, 43},
    {sText_NU58, 57},
    {sText_NU45, 44},
    {sText_NU46, 45},
    {sText_NU47, 46},
    {sText_NU48, 47},
    {sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet5[] =
{
	{sText_Random, 99},
    {sText_RU1, 0},
    {sText_RU2, 1},
    {sText_RU3, 2},
    {sText_RU4, 3},
    {sText_RU5, 4},
    {sText_RU6, 5},
	{sText_RU61, 60},
    {sText_RU7, 6},
    {sText_RU50, 49},
	{sText_RU62, 61},
    {sText_RU8, 7},
    {sText_RU9, 8},
    {sText_RU10, 9},
    {sText_RU51, 50},
	{sText_RU75, 74},
    {sText_RU11, 10},
    {sText_RU12, 11},
    {sText_RU13, 12},
    {sText_RU14, 13},
    {sText_RU15, 14},
    {sText_RU16, 15},
	{sText_RU63, 62},
    {sText_RU18, 17},
    {sText_RU19, 18},
    {sText_RU20, 19},
    {sText_RU52, 51},
    {sText_RU21, 20},
	{sText_RU64, 63},
    {sText_RU53, 52},
    {sText_RU22, 21},
	{sText_RU71, 70},
    {sText_RU54, 53},
    {sText_RU23, 22},
    {sText_RU24, 23},
    {sText_RU25, 24},
    {sText_RU26, 25},
    {sText_RU27, 26},
	{sText_RU72, 71},
    {sText_RU28, 27},
    {sText_RU55, 54},
    {sText_RU29, 28},
	{sText_RU65, 64},
    {sText_RU30, 29},
    {sText_RU31, 30},
    {sText_RU32, 31},
	{sText_RU66, 65},
	{sText_RU67, 66},
    {sText_RU56, 55},
    {sText_RU33, 32},
    {sText_RU34, 33},
    {sText_RU35, 34},
    {sText_RU36, 35},
    {sText_RU37, 36},
    {sText_RU57, 56},
	{sText_RU17, 16},
    {sText_RU39, 38},
    {sText_RU40, 39},
	{sText_RU73, 72},
    {sText_RU41, 40},
    {sText_RU58, 57},
    {sText_RU48, 47},
	{sText_RU74, 73},
    {sText_RU42, 41},
    {sText_RU43, 42},
    {sText_RU44, 43},
    {sText_RU45, 44},
	{sText_RU68, 67},
    {sText_RU59, 58},
    {sText_RU46, 45},
	{sText_RU69, 68},
    {sText_RU47, 46},
    {sText_RU60, 59},
	{sText_RU70, 69},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet6[] =
{
	{sText_Random, 99},
	{sText_UU1, 0},
    {sText_UU38, 37},
    {sText_UU2, 1},
    {sText_UU3, 2},
    {sText_UU4, 3},
	{sText_UU53, 52},
    {sText_UU5, 4},
    {sText_UU6, 5},
    {sText_UU7, 6},
    {sText_UU39, 38},
	{sText_UU64, 63},
    {sText_UU8, 7},
    {sText_UU9, 8},
	{sText_UU54, 53},
	{sText_UU55, 54},
    {sText_UU40, 39},
    {sText_UU10, 9},
    {sText_UU11, 10},
    {sText_UU41, 40},
    {sText_UU42, 41},
    {sText_UU12, 11},
    {sText_UU13, 12},
    {sText_UU14, 13},
    {sText_UU15, 14},
    {sText_UU45, 44},
    {sText_UU16, 15},
    {sText_UU17, 16},
	{sText_UU65, 64},
    {sText_UU18, 17},
    {sText_UU19, 18},
    {sText_UU20, 19},
	{sText_UU56, 55},
	{sText_UU66, 65},
    {sText_UU21, 20},
    {sText_UU22, 21},
    {sText_UU23, 22},
	{sText_UU57, 56},
	{sText_UU58, 57},
    {sText_UU24, 23},
    {sText_UU25, 24},
    {sText_UU26, 25},
	{sText_UU59, 58},
    {sText_UU46, 45},
    {sText_UU27, 26},
    {sText_UU47, 46},
    {sText_UU48, 47},
    {sText_UU28, 27},
    {sText_UU29, 28},
    {sText_UU30, 29},
    {sText_UU49, 48},
    {sText_UU31, 30},
    {sText_UU50, 49},
    {sText_UU51, 50},
    {sText_UU33, 32},
	{sText_UU60, 59},
    {sText_UU34, 33},
    {sText_UU35, 34},
    {sText_UU36, 35},
	{sText_UU61, 60},
	{sText_UU67, 66},
	{sText_UU68, 67},
    {sText_UU37, 36},
	{sText_UU62, 61},
    {sText_UU52, 51},
	{sText_UU69, 68},
	{sText_UU63, 62},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet7[] =
{
	{sText_Random, 99},
	{sText_OU1, 0},
	{sText_OU9, 8},
	{sText_OU10, 9},
    {sText_OU2, 1},
    {sText_OU3, 2},
    {sText_OU4, 3},
    {sText_OU5, 4},
    {sText_OU6, 5},
    {sText_OU7, 6},
	{sText_OU12, 11},
    {sText_OU8, 7},
	{sText_OU13, 12},
    {sText_OU14, 13},
    {sText_OU15, 14},
    {sText_OU16, 15},
    {sText_OU17, 16},
    {sText_OU19, 18},
    {sText_OU20, 19},
    {sText_OU21, 20},
    {sText_OU22, 21},
    {sText_OU23, 22},
    {sText_OU24, 23},
    {sText_OU25, 24},
    {sText_OU26, 25},
    {sText_OU27, 26},
    {sText_OU28, 27},
    {sText_OU29, 28},
    {sText_OU30, 29},
    {sText_OU31, 30},
    {sText_OU32, 31},
    {sText_OU33, 32},
    {sText_OU34, 33},
    {sText_OU35, 34},
    {sText_OU36, 35},
    {sText_OU37, 36},
    {sText_OU38, 37},
    {sText_OU39, 38},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet8[] =
{
	{sText_Move1, 1},
    {sText_Move2, 2},
    {sText_Move3, 3},
    {sText_Move4, 4},
    {sText_Move5, 5},
    {sText_Move6, 6},
    {sText_Move7, 7},
    {sText_Move8, 8},
    {sText_Move9, 9},
    {sText_Move10, 10},
	{sText_Cancel, 0x7f},
};
static const struct ListMenuItem sSet9[] =
{
	{sText_Move11, 11},
    {sText_Move12, 12},
    {sText_Move13, 13},
    {sText_Move14, 14},
    {sText_Move15, 15},
    {sText_Move16, 16},
    {sText_Move17, 17},
    {sText_Move18, 18},
    {sText_Move19, 19},
    {sText_Move20, 20},
    {sText_Move21, 21},
    {sText_Move22, 22},
    {sText_Move23, 23},
    {sText_Move24, 24},
    {sText_Move25, 25},
    {sText_Move26, 26},
    {sText_Move27, 27},
    {sText_Move28, 28},
    {sText_Move29, 29},
    {sText_Move30, 30},
    {sText_Move31, 31},
    {sText_Move32, 32},
    {sText_Move33, 33},
    {sText_Move34, 34},
    {sText_Move35, 35},
    {sText_Move36, 36},
    {sText_Move37, 37},
    {sText_Move38, 38},
    {sText_Move39, 39},
	{sText_Cancel, 0x7f},
};
static const struct ListMenuItem sSet10[] =
{
	{sText_Move40, 40},
    {sText_Move41, 41},
    {sText_Move42, 42},
    {sText_Move43, 43},
    {sText_Move44, 44},
    {sText_Move45, 45},
    {sText_Move46, 46},
    {sText_Move47, 47},
    {sText_Move48, 48},
    {sText_Move49, 49},
    {sText_Move50, 50},
    {sText_Move51, 51},
    {sText_Move52, 52},
    {sText_Move53, 53},
    {sText_Move54, 54},
    {sText_Move55, 55},
    {sText_Move56, 56},
    {sText_Move57, 57},
    {sText_Move58, 58},
    {sText_Move59, 59},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet11[] =
{
    {sText_Move60, 60},
    {sText_Move61, 61},
    {sText_Move62, 62},
    {sText_Move63, 63},
    {sText_Move64, 64},
    {sText_Move65, 65},
    {sText_Move66, 66},
    {sText_Move67, 67},
    {sText_Move68, 68},
    {sText_Move69, 69},
    {sText_Move70, 70},
    {sText_Move71, 71},
    {sText_Move72, 72},
    {sText_Move73, 73},
    {sText_Move74, 74},
    {sText_Move75, 75},
    {sText_Move76, 76},
    {sText_Move77, 77},
    {sText_Move78, 78},
    {sText_Move79, 79},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet12[] =
{
    {sText_Bet1BP, 1},
	{sText_Bet3BP, 3},
	{sText_Bet5BP, 5},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet13[] =
{
    {sText_CFT, 0},
	{sText_Record, 1},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet14[] =
{
    {sText_Red, 0},
	{sText_Blue, 1},
	{sText_Lance, 2},
	{sText_Steven, 3},
	{sText_Wallace, 4},
	{sText_Cynthia, 5},
	{sText_Alder, 6},
	{sText_Iris, 7},
	{sText_Diantha, 8},
	{sText_Hau, 9},
	{sText_Kukui, 10},
	{sText_Cancel, 0x7f},
};

static const struct ListMenuItem sSet15[] =
{
    {gStringVar1, 0},
	{gStringVar2, 1},
	{gStringVar3, 2},
};

// Table of your multichoice sets.
struct
{
    const struct ListMenuItem *set;
    int count;
} static const sScrollingSets[] =
{
    {sSet1, ARRAY_COUNT(sSet1)},
	{sSet2, ARRAY_COUNT(sSet2)},
	{sSet3, ARRAY_COUNT(sSet3)},
	{sSet4, ARRAY_COUNT(sSet4)},
	{sSet5, ARRAY_COUNT(sSet5)},
	{sSet6, ARRAY_COUNT(sSet6)},
	{sSet7, ARRAY_COUNT(sSet7)},
	{sSet8, ARRAY_COUNT(sSet8)},
	{sSet9, ARRAY_COUNT(sSet9)},
	{sSet10, ARRAY_COUNT(sSet10)},
	{sSet11, ARRAY_COUNT(sSet11)},
	{sSet12, ARRAY_COUNT(sSet12)},
	{sSet13, ARRAY_COUNT(sSet13)},
	{sSet14, ARRAY_COUNT(sSet14)},
	{sSet15, ARRAY_COUNT(sSet15)},
};

static void Task_ScrollingMultichoiceInput(u8 taskId);

static const struct ListMenuTemplate sMultichoiceListTemplate =
{
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 0,
    .upText_Y = 1,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = LIST_NO_MULTIPLE_SCROLL,
    .fontId = 1,
    .cursorKind = 0
};

// 0x8004 = set id
// 0x8005 = window X
// 0x8006 = window y
// 0x8007 = showed at once
// 0x8008 = Allow B press
void ScriptMenu_ScrollingMultichoice(void)
{
    int i, windowId, taskId, width = 0;
    int setId = gSpecialVar_0x8004;
    int left = gSpecialVar_0x8005;
    int top = gSpecialVar_0x8006;
    int maxShowed = gSpecialVar_0x8007;

    for (i = 0; i < sScrollingSets[setId].count; i++)
        width = DisplayTextAndGetWidth(sScrollingSets[setId].set[i].name, width);

    width = ConvertPixelWidthToTileWidth(width);
    left = ScriptMenu_AdjustLeftCoordFromWidth(left, width);
    windowId = CreateWindowFromRect(left, top, width, maxShowed * 2);
    SetStandardWindowBorderStyle(windowId, 0);
    CopyWindowToVram(windowId, 3);

    gMultiuseListMenuTemplate = sMultichoiceListTemplate;
    gMultiuseListMenuTemplate.windowId = windowId;
    gMultiuseListMenuTemplate.items = sScrollingSets[setId].set;
    gMultiuseListMenuTemplate.totalItems = sScrollingSets[setId].count;
    gMultiuseListMenuTemplate.maxShowed = maxShowed;

    taskId = CreateTask(Task_ScrollingMultichoiceInput, 0);
    gTasks[taskId].data[0] = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);
    gTasks[taskId].data[1] = gSpecialVar_0x8008;
    gTasks[taskId].data[2] = windowId;
}

static void Task_ScrollingMultichoiceInput(u8 taskId)
{
    bool32 done = FALSE;
    s32 input = ListMenu_ProcessInput(gTasks[taskId].data[0]);

    switch (input)
    {
    case LIST_HEADER:
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        if (gTasks[taskId].data[1])
        {
            gSpecialVar_Result = 0x7F;
            done = TRUE;
        }
        break;
    default:
        gSpecialVar_Result = input;
        done = TRUE;
        break;
    }

    if (done)
    {
        DestroyListMenuTask(gTasks[taskId].data[0], NULL, NULL);
        ClearStdWindowAndFrame(gTasks[taskId].data[2], TRUE);
        RemoveWindow(gTasks[taskId].data[2]);
        EnableBothScriptContexts();
        DestroyTask(taskId);
    }
}