# 0 "src/battle_tower.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/battle_tower.c"
# 1 "include/global.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/global.h" 2
# 1 "tools/agbcc/include/limits.h" 1
# 6 "include/global.h" 2
# 1 "include/config.h" 1
# 7 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;
typedef vu8 vbool8;
typedef vu16 vbool16;
typedef vu32 vbool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 120 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const u32 *src, void *dest);

void LZ77UnCompVram(const u32 *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 11 "include/gba/gba.h" 2
# 8 "include/global.h" 2
# 1 "include/constants/global.h" 1
# 9 "include/global.h" 2
# 1 "include/constants/flags.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/flags.h" 2
# 10 "include/global.h" 2
# 1 "include/constants/vars.h" 1
# 11 "include/global.h" 2
# 1 "include/constants/species.h" 1
# 12 "include/global.h" 2
# 134 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};

struct Pokedex
{
             u8 order;
             u8 mode;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 filler[0x68];
};

struct PokemonJumpResults
{
    u16 jumpsInRow;
    u16 field2;
    u16 excellentsInRow;
    u16 field6;
    u32 field8;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};


struct PyramidBag
{
    u16 itemId[2][10];
    u8 quantity[2][10];
};

struct BerryCrush
{
    u16 berryCrushResults[4];
    u32 berryPowderAmount;
    u32 unk;
};

struct ApprenticeMon
{
    u16 species;
    u16 moves[4];
    u16 item;
};



struct Apprentice
{
    u8 id:5;
    u8 lvlMode:2;
    u8 numQuestions;
    u8 number;
    struct ApprenticeMon party[6 / 2];
    u16 speechWon[6];
    u8 playerId[4];
    u8 playerName[7];
    u8 language;
    u32 checksum;
};

struct BattleTowerPokemon
{
    u16 species;
    u16 heldItem;
    u16 moves[4];
    u8 level;
    u8 ppBonuses;
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u32 otId;
    u32 hpIV:5;
    u32 attackIV:5;
    u32 defenseIV:5;
    u32 speedIV:5;
    u32 spAttackIV:5;
    u32 spDefenseIV:5;
    u32 gap:1;
    u32 abilityNum:1;
    u32 personality;
    u8 nickname[10 + 1];
    u8 friendship;
};



struct EmeraldBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 speechWon[6];
             u16 speechLost[6];
             struct BattleTowerPokemon party[4];
             u8 language;
             u32 checksum;
};

struct BattleTowerInterview
{
    u16 playerSpecies;
    u16 opponentSpecies;
    u8 opponentName[7 + 1];
    u8 opponentMonNickname[10 + 1];
    u8 opponentLanguage;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};


struct DomeMonData
{
    u16 moves[4];
    u8 evs[6];
    u8 nature;
};

struct RentalMon
{
    u16 monId;
    u32 personality;
    u8 ivs;
    u8 abilityNum;
};

struct BattleDomeTrainer
{
    u16 trainerId:10;
    u16 isEliminated:1;
    u16 eliminatedAt:2;
    u16 forfeited:3;
};



struct BattleFrontier
{
              struct EmeraldBattleTowerRecord towerPlayer;
              struct EmeraldBattleTowerRecord towerRecords[5];
              struct BattleTowerInterview towerInterview;
              struct BattleTowerEReaderTrainer ereaderTrainer;
              u8 challengeStatus;
              u8 lvlMode:2;
              u8 challengePaused:1;
              u8 disableRecordBattle:1;
              u16 selectedPartyMons[4];
              u16 curChallengeBattleNum;
              u16 trainerIds[20];
              u32 winStreakActiveFlags;
              u16 towerWinStreaks[4][2];
              u16 towerRecordWinStreaks[4][2];
              u16 battledBrainFlags;
              u16 towerSinglesStreak;
              u16 towerNumWins;
              u8 towerBattleOutcome;
              u8 towerLvlMode;
              u8 domeAttemptedSingles50:1;
              u8 domeAttemptedSinglesOpen:1;
              u8 domeHasWonSingles50:1;
              u8 domeHasWonSinglesOpen:1;
              u8 domeAttemptedDoubles50:1;
              u8 domeAttemptedDoublesOpen:1;
              u8 domeHasWonDoubles50:1;
              u8 domeHasWonDoublesOpen:1;
              u8 domeUnused;
              u8 domeLvlMode;
              u8 domeBattleMode;
              u16 domeWinStreaks[2][2];
              u16 domeRecordWinStreaks[2][2];
              u16 domeTotalChampionships[2][2];
              struct BattleDomeTrainer domeTrainers[16];
              u16 domeMonIds[16][3];
              u16 unused_DC4;
              u16 palacePrize;
              u16 palaceWinStreaks[2][2];
              u16 palaceRecordWinStreaks[2][2];
              u16 arenaPrize;
              u16 arenaWinStreaks[2];
              u16 arenaRecordStreaks[2];
              u16 factoryWinStreaks[2][2];
              u16 factoryRecordWinStreaks[2][2];
              u16 factoryRentsCount[2][2];
              u16 factoryRecordRentsCount[2][2];
              u16 pikePrize;
              u16 pikeWinStreaks[2];
              u16 pikeRecordStreaks[2];
              u16 pikeTotalStreaks[2];
              u8 pikeHintedRoomIndex:3;
              u8 pikeHintedRoomType:4;
              u8 pikeHealingRoomsDisabled:1;
              u16 pikeHeldItemsBackup[3];
              u16 pyramidPrize;
              u16 pyramidWinStreaks[2];
              u16 pyramidRecordStreaks[2];
              u16 pyramidRandoms[4];
              u8 pyramidTrainerFlags;
              struct PyramidBag pyramidBag;
              u8 pyramidLightRadius;
              u16 verdanturfTentPrize;
              u16 fallarborTentPrize;
              u16 slateportTentPrize;
              struct RentalMon rentalMons[3 * 2];
              u16 battlePoints;
              u16 cardBattlePoints;
              u32 battlesCount;
              u16 domeWinningMoves[16];
              u8 trainerFlags;
              u8 opponentNames[2][7 + 1];
              u8 opponentTrainerIds[2][4];
              u8 unk_EF9:7;
              u8 savedGame:1;
              u8 unused_EFA;
              u8 unused_EFB;
              struct DomeMonData domePlayerPartyData[3];
};

struct ApprenticeQuestion
{
    u8 questionId:2;
    u8 monId:2;
    u8 moveSlot:2;
    u8 suggestedChange:2;
    u16 data;
};

struct PlayersApprentice
{
             u8 id;
             u8 lvlMode:2;
             u8 questionsAnswered:4;
             u8 leadMonId:2;
             u8 party:3;
             u8 saveId:2;
             u8 unused;
             u8 speciesIds[6 / 2];
             struct ApprenticeQuestion questions[9];
};

struct RankingHall1P
{
    u8 id[4];
    u16 winStreak;
    u8 name[7 + 1];
    u8 language;
};

struct RankingHall2P
{
    u8 id1[4];
    u8 id2[4];
    u16 winStreak;
    u8 name1[7 + 1];
    u8 name2[7 + 1];
    u8 language;
};

struct SaveBlock2
{
             u8 playerName[7 + 1];
             u8 playerGender;
             u8 specialSaveWarpFlags;
             u8 playerTrainerId[4];
             u16 playTimeHours;
             u8 playTimeMinutes;
             u8 playTimeSeconds;
             u8 playTimeVBlanks;
             u8 optionsButtonMode;
             u16 optionsTextSpeed:3;
             u16 optionsWindowFrameType:5;
             u16 optionsSound:1;
             u16 optionsBattleStyle:1;
             u16 optionsBattleSceneOff:1;
             u16 regionMapZoom:1;
             struct Pokedex pokedex;
             u8 filler_90[0x8];
             struct Time localTimeOffset;
             struct Time lastBerryTreeUpdate;
             u32 gcnLinkFlags;
             u32 encryptionKey;
             struct PlayersApprentice playerApprentice;
             struct Apprentice apprentices[4];
              struct BerryCrush berryCrush;
              struct PokemonJumpResults pokeJump;
              struct BerryPickingResults berryPick;
              struct RankingHall1P hallRecords1P[9][2][3];
              struct RankingHall2P hallRecords2P[2][3];
              u16 contestLinkResults[5][4];
              struct BattleFrontier frontier;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};

struct SecretBase
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPositions[16];
               struct SecretBaseParty party;
};

# 1 "include/constants/game_stat.h" 1
# 531 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 13 "include/global.fieldmap.h"
enum
{
    CONNECTION_SOUTH = 1,
    CONNECTION_NORTH,
    CONNECTION_WEST,
    CONNECTION_EAST,
    CONNECTION_DIVE,
    CONNECTION_EMERGE
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             void *tiles;
             void *palettes;
             u16 *metatiles;
             u16 *metatileAttributes;
             TilesetCB callback;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
};

struct BackupMapLayout
{
    s32 width;
    s32 height;
    u16 *map;
};

struct ObjectEventTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 inConnection;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u16 movementRangeX:4;
             u16 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             const u8 *script;
             u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    s16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {
        u8 *script;
        struct {
            u16 item;
            u16 hiddenItemId;
        } hiddenItem;
        u32 secretBaseId;
    } bgUnion;
};

struct MapEvents
{
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    struct ObjectEventTemplate *objectEvents;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
    u8 direction;
    u32 offset;
    u8 mapGroup;
    u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18[2];
               u8 flags;
               u8 battleType;
};
# 156 "include/global.fieldmap.h"
struct ObjectEvent
{
             u32 active:1;
             u32 singleMovementActive:1;
             u32 triggerGroundEffectsOnMove:1;
             u32 triggerGroundEffectsOnStop:1;
             u32 disableCoveringGroundEffects:1;
             u32 landingJump:1;
             u32 heldMovementActive:1;
             u32 heldMovementFinished:1;
             u32 frozen:1;
             u32 facingDirectionLocked:1;
             u32 disableAnim:1;
             u32 enableAnim:1;
             u32 inanimate:1;
             u32 invisible:1;
             u32 offScreen:1;
             u32 trackedByCamera:1;
             u32 isPlayer:1;
             u32 hasReflection:1;
             u32 inShortGrass:1;
             u32 inShallowFlowingWater:1;
             u32 inSandPile:1;
             u32 inHotSprings:1;
             u32 hasShadow:1;
             u32 spriteAnimPausedBackup:1;
             u32 spriteAffineAnimPausedBackup:1;
             u32 disableJumpLandingGroundEffect:1;
             u32 fixedPriority:1;
             u32 hideReflection:1;
             u8 spriteId;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             u8 currentElevation:4;
             u8 previousElevation:4;
             struct Coords16 initialCoords;
             struct Coords16 currentCoords;
             struct Coords16 previousCoords;
             u8 facingDirection:4;
             u8 movementDirection:4;
             union __attribute__((packed)) {
        u8 as_byte;
        struct __attribute__((packed)) {
            u8 x:4;
            u8 y:4;
        } __attribute__((aligned(1))) as_nybbles;
    } __attribute__((aligned(1))) range;
             u8 fieldEffectSpriteId;
             u8 warpArrowSpriteId;
             u8 movementActionId;
             u8 trainerRange_berryTreeId;
             u8 currentMetatileBehavior;
             u8 previousMetatileBehavior;
             u8 previousMovementDirection;
             u8 directionSequenceIndex;
             u8 playerCopyableMovement;

};

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag1;
             u16 paletteTag2;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_FIELD_MOVE,
    PLAYER_AVATAR_STATE_FISHING,
    PLAYER_AVATAR_STATE_WATERING,
};
# 259 "include/global.fieldmap.h"
enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_ROTATING_GATE,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId;
             bool8 preventStep;
             u8 gender;
             u8 acroBikeState;
             u8 newDirBackup;
             u8 bikeFrameCounter;
             u8 bikeSpeed;

             u32 directionHistory;
             u32 abStartSelectHistory;

             u8 dirTimerHistory[8];
             u8 abStartSelectTimerHistory[8];
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 532 "include/global.h" 2
# 1 "include/global.berry.h" 1






struct Berry
{
    const u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[6 + 1];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 533 "include/global.h" 2
# 1 "include/global.tv.h" 1



typedef union
{

    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[26];
                 u8 srcTrainerId3Lo;
                 u8 srcTrainerId3Hi;
                 u8 srcTrainerId2Lo;
                 u8 srcTrainerId2Hi;
                 u8 srcTrainerIdLo;
                 u8 srcTrainerIdHi;
                 u8 trainerIdLo;
                 u8 trainerIdHi;
    } common;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[34];
    } commonInit;



    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[6];
                 u8 playerName[7 + 1];
                 u8 language;
    } fanclubLetter;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 var02;
                 u16 words[6];
                 u8 playerName[7 + 1];
                 u8 language;
    } recentHappenings;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 friendshipHighNybble:4;
                 u8 questionAsked:4;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_0F[1];
                 u8 nickname[7 + 1];
                 u16 words18[2];
                 u16 words[4];
    } fanclubOpinions;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 words[2];
                 u16 var06;
                 u8 pad_08[3];
                 u8 string_0b[12];
                 u8 language;
    } unkShow04;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 pokemonName[10 + 1];
                 u8 trainerName[11];
                 u8 random;
                 u8 random2;
                 u16 randomSpecies;
                 u8 language;
                 u8 pokemonNameLanguage;
    } nameRaterShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[2];
                 u8 pokemonNickname[10 + 1];
                 u8 contestCategory:3;
                 u8 contestRank:2;
                 u8 contestResult:2;
                 u16 move;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 trainerName[7 + 1];
                 u16 species;
                 u8 pokemonName[8];
                 u16 defeatedSpecies;
                 u16 numFights;
                 u16 words[1];
                 u8 btLevel;
                 u8 interviewResponse;
                 bool8 wonTheChallenge;
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainerTower;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 losingSpecies;
                 u8 losingTrainerName[7 + 1];
                 u8 loserAppealFlag;
                 u8 round1Placing;
                 u8 round2Placing;
                 u8 winnerAppealFlag;
                 u16 move;
                 u16 winningSpecies;
                 u8 winningTrainerName[7 + 1];
                 u8 category;
                 u8 winningTrainerLanguage;
                 u8 losingTrainerLanguage;
    } contestLiveUpdates;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 sheen;
                 u8 flavor:3;
                 u8 color:2;
                 u8 worstBlenderName[7 + 1];
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 worstBlenderLanguage;
    } threeCheers;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 speciesOpponent;
                 u8 playerName[7 + 1];
                 u8 linkOpponentName[7 + 1];
                 u16 move;
                 u16 speciesPlayer;
                 u8 battleType;
                 u8 language;
                 u8 linkOpponentLanguage;
    } battleUpdate;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[7 + 1];
                 u8 idLo;
                 u8 idHi;
                 u8 idolName[7 + 1];
                 u16 words[1];
                 u8 score;
                 u8 language;
                 u8 idolNameLanguage;
    } fanClubSpecial;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[7 + 1];
                 u8 contestCategory;
                 u8 nickname[10 + 1];
                 u8 pokeblockState;
                 u8 language;
                 u8 pokemonNameLanguage;
    } contestLiveUpdates2;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 language2;
                 u8 nickname[10 + 1];
                 u8 ball;
                 u16 species;
                 u8 nBallsUsed;
                 u8 playerName[7 + 1];
    } pokemonToday;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 priceReduced;
                 u8 language;
                 u8 pad04[2];
                 u16 itemIds[3];
                 u16 itemAmounts[3];
                 u8 shopLocation;
                 u8 playerName[7 + 1];
    } smartshopperShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 pad03[9];
                 u16 species;
                 u16 species2;
                 u8 nBallsUsed;
                 u8 outcome;
                 u8 location;
                 u8 playerName[7 + 1];
    } pokemonTodayFailed;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nBites;
                 u8 nFails;
                 u16 species;
                 u8 language;
                 u8 pad07[12];
                 u8 playerName[7 + 1];
    } pokemonAngler;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 numPokeCaught;
                 u16 caughtPoke;
                 u16 steps;
                 u16 species;
                 u8 location;
                 u8 language;
                 u8 pad0c[7];
                 u8 playerName[7 + 1];
    } worldOfMasters;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 dexCount;
                 u8 badgeCount;
                 u8 nSilverSymbols;
                 u8 nGoldSymbols;
                 u8 location;
                 u16 battlePoints;
                 u16 mapLayoutId;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[7 + 1];
    } rivalTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 gender;
                 u8 language;
                 u8 filler_0a[9];
                 u8 playerName[7 + 1];
    } trendWatcher;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 location;
                 u8 language;
                 u16 mapLayoutId;
                 u8 filler_08[11];
                 u8 playerName[7 + 1];
    } treasureInvestigators;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 won;
                 u8 whichGame;
                 u16 nCoins;
                 u8 filler_06[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[7 + 1];
    } findThatGamer;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 lastOpponentSpecies;
                 u8 location;
                 u8 outcome;
                 u16 caughtMonBall;
                 u16 balls;
                 u16 poke1Species;
                 u16 lastUsedMove;
                 u8 language;
                 u8 filler_0f[4];
                 u8 playerName[7 + 1];
    } breakingNews;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 avgLevel;
                 u8 nDecorations;
                 u8 decorations[4];
                 u16 species;
                 u16 move;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[7 + 1];
    } secretBaseVisit;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 whichPrize;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[7 + 1];
    } lottoWinner;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 move;
                 u16 foeSpecies;
                 u16 species;
                 u16 otherMoves[3];
                 u16 betterMove;
                 u8 nOtherMoves;
                 u8 language;
                 u8 filler_12[1];
                 u8 playerName[7 + 1];
    } battleSeminar;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[7 + 1];
    } trainerFanClub;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nRibbons;
                 u8 selectedRibbon;
                 u8 nickname[10 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_12[2];
                 u8 playerName[7 + 1];
    } cuties;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winStreak;
                 u16 species1;
                 u16 species2;
                 u16 species3;
                 u16 species4;
                 u8 language;
                 u8 facility;
                 u8 filler_0e[5];
                 u8 playerName[7 + 1];
    } frontier;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 count;
                 u8 actionIdx;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[7 + 1];
    } numberOne;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 stepsInBase;
                 u8 baseOwnersName[7 + 1];
                 u32 flags;
                 u16 item;
                 u8 savedState;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 baseOwnersNameLanguage;
    } secretBaseSecrets;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nMonsCaught;
                 u8 nPkblkUsed;
                 u8 language;
                 u8 filler_05[14];
                 u8 playerName[7 + 1];
    } safariFanClub;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 var02;
                 u8 var03;
                 u16 moves[4];
                 u16 species;
                 u16 var0E;
                 u8 locationMapNum;
                 u8 locationMapGroup;
                 u8 var12;
                 u8 probability;
                 u8 level;
                 u8 var15;
                 u16 daysLeft;
                 u8 language;
    } massOutbreak;
} TVShow;

typedef struct
{
    u8 kind;
    u8 state;
    u16 days;
} PokeNews;

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote[1];
             u8 mapnum;
             u8 battleNum;
             u8 battleTookMoreThanOneTurn:1;
             u8 playerLostAMon:1;
             u8 playerUsedHealingItem:1;
             u8 playerThrewABall:1;
             u8 onAir:1;
             u8 valA_5:3;
             u8 battleTookMoreThanOneTurn2:1;
             u8 playerLostAMon2:1;
             u8 playerUsedHealingItem2:1;
             u8 playerThrewABall2:1;
             u8 valB_4:4;
};
# 534 "include/global.h" 2
# 1 "include/pokemon.h" 1



# 1 "include/constants/pokemon.h" 1
# 5 "include/pokemon.h" 2
# 1 "gflib/sprite.h" 1






struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};





struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 86 "gflib/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 136 "gflib/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};





struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             struct Coords16 pos1;
             struct Coords16 pos2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             bool8 animPaused:1;
             bool8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             bool16 inUse:1;
             bool16 coordOffsetEnabled:1;
             bool16 invisible:1;
             bool16 flags_3:1;
             bool16 flags_4:1;
             bool16 flags_5:1;
             bool16 flags_6:1;
             bool16 flags_7:1;
             bool16 hFlip:1;
             bool16 vFlip:1;
             bool16 animBeginning:1;
             bool16 affineAnimBeginning:1;
             bool16 animEnded:1;
             bool16 affineAnimEnded:1;
             bool16 usingSheet:1;
             bool16 flags_f:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern const struct SpriteTemplate gDummySpriteTemplate;

extern u8 gReservedSpritePaletteCount;
extern struct Sprite gSprites[];
extern u8 gOamLimit;
extern u16 gReservedSpriteTileCount;
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void sub_800142C(u32 a1, u32 a2, u16 *a3, u16 a4, u32 a5);
void AnimateSprite(struct Sprite *sprite);
void sub_8007E18(struct Sprite* sprite, s16 a2, s16 a3);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void LoadTilesForSpriteSheet(const struct SpriteSheet *sheet);
void LoadTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
# 6 "include/pokemon.h" 2
# 1 "include/constants/region_map_sections.h" 1
# 7 "include/pokemon.h" 2
# 1 "include/constants/pokemon_config.h" 1
# 8 "include/pokemon.h" 2
# 1 "include/constants/map_groups.h" 1
# 9 "include/pokemon.h" 2

struct PokemonSubstruct0
{
             u16 species;
             u16 heldItem;
             u32 experience;
             u8 ppBonuses;
             u8 friendship;
             u8 pokeball:5;
             u8 unused0_A:3;
             u8 hiddenNature:5;
};

struct PokemonSubstruct1
{
             u16 moves[4];
             u8 pp[4];
};

struct PokemonSubstruct2
{
             u8 hpEV;
             u8 attackEV;
             u8 defenseEV;
             u8 speedEV;
             u8 spAttackEV;
             u8 spDefenseEV;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 unused3_3:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 giftRibbon1:1;
            u32 giftRibbon2:1;
            u32 giftRibbon3:1;
            u32 giftRibbon4:1;
            u32 giftRibbon5:1;
            u32 giftRibbon6:1;
            u32 giftRibbon7:1;
            u32 fatefulEncounter:2;
            u32 abilityNum:2;
            u32 obedient:1;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct Unknown_806F160_Struct
{
    u32 field_0_0:4;
    u32 field_0_1:4;
    u32 field_1:8;
    u16 magic:8;
    u32 field_3_0:4;
    u32 field_3_1:4;
    void *bytes;
    u8 **byteArrays;
    struct SpriteTemplate *templates;
    struct SpriteFrameImage *frameImages;
};

struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 abilityNum:2;
             s8 statStages[6 + 2];
             u16 ability;
             u8 type1;
             u8 type2;
             u8 type3;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u16 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u16 abilities[2];

            u16 abilityHidden;

            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
            u8 flags;
};

# 1 "include/constants/battle_config.h" 1
# 218 "include/pokemon.h" 2
struct BattleMove
{
    u16 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u32 flags;
    u8 split;
    u8 argument;
};

struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct LevelUpMove
{
    u16 move;
    u16 level;
};

struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};

extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern struct SpriteTemplate gMultiuseSpriteTemplate;

extern const struct BattleMove gBattleMoves[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const struct Evolution gEvolutionTable[][10];
extern const u32 gExperienceTables[][100 + 1];
extern const struct LevelUpMove *const gLevelUpLearnsets[];
extern const u8 gPPUpGetMask[];
extern const u8 gPPUpSetMask[];
extern const u8 gPPUpAddMask[];
extern const u8 gStatStageRatios[12 + 1][2];
extern const u16 gLinkPlayerFacilityClasses[];
extern const struct SpriteTemplate gUnknown_08329D98[];
extern const s8 gNatureStatTable[][5];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithIVsOTID(struct Pokemon *mon, u16 species, u8 level, u8 *ivs, u32 otId);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void CreateBattleTowerMon2(struct Pokemon *mon, struct BattleTowerPokemon *src, bool8 lvl50);
void CreateApprenticeMon(struct Pokemon *mon, const struct Apprentice *src, u8 monId);
void CreateMonWithEVSpreadNatureOTID(struct Pokemon *mon, u16 species, u8 level, u8 nature, u8 fixedIV, u8 evSpread, u32 otId);
void sub_80686FC(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CreateObedientMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
bool8 sub_80688F8(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 GetUnionRoomTrainerPic(void);
u16 GetUnionRoomTrainerClass(void);
void CreateObedientEnemyMon(void);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(const struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromMonExp(struct Pokemon *mon);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
void GiveMonInitialMoveset(struct Pokemon *mon);
void GiveBoxMonInitialMoveset(struct BoxPokemon *boxMon);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
void DeleteFirstMoveAndGiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);

u8 CountAliveMonsInBattle(u8 caseId);




u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
u32 GetUnownSpeciesId(u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerFront(u16 arg0, u8 battlerPosition);





u32 GetMonData();
u32 GetBoxMonData();

void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 SendMonToPC(struct Pokemon* mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetMonsStateToDoubles_2(void);
u16 GetAbilityBySpecies(u16 species, u8 abilityNum);
u16 GetMonAbility(struct Pokemon *mon);
void CreateSecretBaseEnemyParty(struct SecretBase *secretBaseRecord);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerClass(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
bool8 IsPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
void PokemonToBattleMon(struct Pokemon *src, struct BattlePokemon *dst);
void CopyPlayerPartyMonToBattleData(u8 battlerId, u8 partyIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, u8 e);
bool8 HealStatusConditions(struct Pokemon *mon, u32 battlePartyId, u32 healMask, u8 battlerId);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
u8 *UseStatIncreaseItem(u16 itemId);
u8 GetNature(struct Pokemon *mon, bool32 checkHidden);
u8 GetNatureFromPersonality(u32 personality);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem, u16 tradePartnerSpecies);
u16 HoennPokedexNumToSpecies(u16 hoennNum);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 NationalToHoennOrder(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 SpeciesToHoennPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
void sub_806D544(u16 species, u32 personality, u8 *dest);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, u8 a4);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
u8 GetPlayerFlankId(void);
u16 GetLinkTrainerFlankId(u8 id);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainerOpponentId);
u16 ModifyStatByNature(u8 nature, u16 n, u8 statIndex);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 selection);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void UpdatePartyPokerusTime(u16 days);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u32 CanSpeciesLearnTMHM(u16 species, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
bool32 IsSpeciesInHoennDex(u16 species);
void ClearBattleMonForms(void);
u16 GetBattleBGM(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
void sub_806E694(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetMonFlavorRelation(struct Pokemon *mon, u8 flavor);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
bool8 IsShinyOtIdPersonality(u32 otId, u32 personality);
const u8 *GetTrainerPartnerName(void);
void BattleAnimateFrontSprite(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void DoMonFrontSpriteAnimation(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void PokemonSummaryDoMonAnimation(struct Sprite* sprite, u16 species, bool8 oneFrame);
void StopPokemonAnimationDelayTask(void);
void BattleAnimateBackSprite(struct Sprite* sprite, u16 species);
u8 sub_806EF08(u8 arg0);
u8 sub_806EF84(u8 arg0, u8 arg1);
u16 sub_806EFF0(u16 arg0);
u16 FacilityClassToPicIndex(u16 facilityClass);
u16 PlayerGenderToFrontTrainerPicId(u8 playerGender);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
const u8 *GetTrainerClassNameFromId(u16 trainerId);
const u8 *GetTrainerNameFromId(u16 trainerId);
bool8 HasTwoFramesAnimation(u16 species);
struct Unknown_806F160_Struct *sub_806F2AC(u8 id, u8 arg1);
void sub_806F47C(u8 id);
u8 *sub_806F4F8(u8 id, u8 arg1);
void CreateShinyMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 nature);
# 535 "include/global.h" 2

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};

struct EasyChatPair
{
    u16 unk0_0:7;
    u16 unk0_7:7;
    u16 unk1_6:1;
    u16 unk2;
    u16 words[2];
};

struct MailStruct
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorations[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct RecordMixing_UnknownStructSub
{
    u32 unk0;
    u8 data[0x34];

};

struct RecordMixing_UnknownStruct
{
    struct RecordMixing_UnknownStructSub data[2];
    u32 unk70;
    u16 unk74[0x2];
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

struct ContestWinner
{
    u32 personality;
    u32 trainerId;
    u16 species;
    u8 contestCategory;
    u8 monName[10 + 1];
    u8 trainerName[7 + 1];
    u8 contestRank;
};

struct DayCareMail
{
    struct MailStruct message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u32 offspringPersonality;
    u8 stepCounter;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct LilycoveLadyQuiz
{
              u8 id;
              u8 state;
              u16 question[9];
              u16 correctAnswer;
              u16 playerAnswer;
              u8 playerName[7 + 1];
              u16 playerTrainerId[4];
              u16 prize;
              bool8 waitingForChallenger;
              u8 questionId;
              u8 prevQuestionId;
              u8 language;
};

struct LilycoveLadyFavor
{
              u8 id;
              u8 state;
              bool8 likedItem;
              u8 numItemsGiven;
              u8 playerName[7 + 1];
              u8 favorId;
              u16 itemId;
              u16 bestItem;
              u8 language;
};

struct LilycoveLadyContest
{
              u8 id;
              bool8 givenPokeblock;
              u8 numGoodPokeblocksGiven;
              u8 numOtherPokeblocksGiven;
              u8 playerName[7 + 1];
              u8 maxSheen;
              u8 category;
              u8 language;
};

typedef union
{
    struct LilycoveLadyQuiz quiz;
    struct LilycoveLadyFavor favor;
    struct LilycoveLadyContest contest;
    u8 id;
    u8 pad[0x40];
} LilycoveLady;

struct WaldaPhrase
{
    u16 colors[2];
    u8 text[16];
    u8 iconId;
    u8 patternId;
    bool8 patternUnlocked;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};

struct SaveTrainerHill
{
               u32 timer;
               u32 bestTime;
               u8 unk_3D6C;
               u8 unused;
               u16 receivedPrize:1;
               u16 checkedFinalTime:1;
               u16 spokeToOwner:1;
               u16 hasLost:1;
               u16 maybeECardScanDuringChallenge:1;
               u16 field_3D6E_0f:1;
               u16 tag:2;
};

struct MysteryEventStruct
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 unk_1;
};

 struct WonderNews
{
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[40];
    u8 unk_2C[10][40];
};

 struct WonderNewsSaveStruct
{
    u32 crc;
    struct WonderNews data;
};

 struct WonderCard
{
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08_0:2;
    u8 unk_08_2:4;
    u8 unk_08_6:2;
    u8 unk_09;
    u8 unk_0A[40];
    u8 unk_32[40];
    u8 unk_5A[4][40];
    u8 unk_FA[40];
    u8 unk_122[40];
};

 struct WonderCardSaveStruct
{
    u32 crc;
    struct WonderCard data;
};

 struct MEventBuffer_3430_Sub
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2][7];
};

 struct MEventBuffer_3430
{
    u32 crc;
    struct MEventBuffer_3430_Sub data;
};

 struct MEventBuffers
{
                     struct WonderNewsSaveStruct wonderNews;
                     struct WonderCardSaveStruct wonderCard;
                     struct MEventBuffer_3430 buffer_310;
                     u16 unk_338[4];
                     struct MysteryEventStruct unk_340;
                     u32 unk_344[2][5];
};

struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData continueGameWarp;
             struct WarpData dynamicWarp;
             struct WarpData lastHealLocation;
             struct WarpData escapeWarp;
             u16 savedMusic;
             u8 weather;
             u8 weatherCycleStage;
             u8 flashLevel;
             u16 mapLayoutId;
             u16 mapView[0x100];
              u8 playerPartyCount;
              struct Pokemon playerParty[6];
              u32 money;
              u16 coins;
              u16 registeredItem;
              struct ItemSlot pcItems[50];
              struct ItemSlot bagPocket_Items[30];
              struct ItemSlot bagPocket_KeyItems[30];
              struct ItemSlot bagPocket_PokeBalls[16];
              struct ItemSlot bagPocket_TMHM[64];
              struct ItemSlot bagPocket_Berries[46];
              struct Pokeblock pokeblocks[40];
              u8 filler1[0x34];
              u16 berryBlenderRecords[3];
              u8 field_9C2[6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct ObjectEvent objectEvents[16];
              struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[(((((((((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) + (7 - (((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) % 8)) + 1)) / 8) + ((((((((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) + (7 - (((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) % 8)) + 1)) % 8) ? 1 : 0)))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               u32 gameStats[64];
               struct BerryTree berryTrees[128];
               struct SecretBase secretBases[20];
               u8 playerRoomDecorations[12];
               u8 playerRoomDecorationPositions[12];
               u8 decorationDesks[10];
               u8 decorationChairs[10];
               u8 decorationPlants[10];
               u8 decorationOrnaments[30];
               u8 decorationMats[30];
               u8 decorationPosters[10];
               u8 decorationDolls[40];
               u8 decorationCushions[10];
               u8 padding_27CA[2];
               TVShow tvShows[25];
               PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakDaysLeft;
               struct GabbyAndTyData gabbyAndTyData;
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct MailStruct mail[16];
               u8 additionalPhrases[8];
               OldMan oldMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[13];
               struct DayCare daycare;
               struct LinkBattleRecords linkBattleRecords;
               u8 giftRibbons[52];
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MEventBuffers unk_322C;
               u8 dexSeen[(((((809 + 1)) / 8) + ((((809 + 1)) % 8) ? 1 : 0)))];
               u8 dexCaught[(((((809 + 1)) / 8) + ((((809 + 1)) % 8) ? 1 : 0)))];
               u32 trainerHillTimes[4];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               LilycoveLady lilycoveLady;
               struct TrainerNameRecord trainerNameRecords[20];
               u8 registeredTexts[10][21];
               struct SaveTrainerHill trainerHill;
               struct WaldaPhrase waldaPhrase;

};

extern struct SaveBlock1* gSaveBlock1Ptr;

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct TradeRoomPlayer
{
    u8 playerId;
    u8 isLocalPlayer;
    u8 c;
    u8 facing;
    struct MapPosition pos;
    u16 field_C;
};
# 2 "src/battle_tower.c" 2
# 1 "include/battle_tower.h" 1



struct RSBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};

struct BattleFrontierTrainer
{
    u8 facilityClass;
    u8 filler1[3];
    u8 trainerName[7 + 1];
    u16 speechBefore[6];
    u16 speechWin[6];
    u16 speechLose[6];
    const u16 *monSet;
};

struct FacilityMon
{
    u16 species;
    u16 moves[4];
    u8 itemTableId;
    u8 evSpread;
    u8 nature;
 u8 abilityNum;
};

extern const u8 gTowerMaleFacilityClasses[30];
extern const u8 gTowerMaleTrainerGfxIds[30];
extern const u8 gTowerFemaleFacilityClasses[20];
extern const u8 gTowerFemaleTrainerGfxIds[20];
extern const u16 gBattleFrontierHeldItems[];
extern const struct FacilityMon gBattleFrontierMons[];
extern const struct BattleFrontierTrainer gBattleFrontierTrainers[];
extern const struct FacilityMon gSlateportBattleTentMons[];
extern const struct BattleFrontierTrainer gSlateportBattleTentTrainers[];



extern u16 gFrontierTempParty[];

extern const struct BattleFrontierTrainer *gFacilityTrainers;
extern const struct FacilityMon *gFacilityTrainerMons;

void CallBattleTowerFunc(void);
u16 GetRandomScaledFrontierTrainerId(u8 challengeNum, u8 battleNum);
void SetBattleFacilityTrainerGfxId(u16 trainerId, u8 tempVarId);
void SetEReaderTrainerGfxId(void);
u8 GetBattleFacilityTrainerGfxId(u16 trainerId);
void PutNewBattleTowerRecord(struct EmeraldBattleTowerRecord *newRecordEm);
u8 GetFrontierTrainerFrontSpriteId(u16 trainerId);
u8 GetFrontierOpponentClass(u16 trainerId);
void GetFrontierTrainerName(u8 *dst, u16 trainerId);
void FillFrontierTrainerParty(u8 monsCount);
void FillFrontierTrainersParties(u8 monsCount);
u16 GetRandomFrontierMonFromSet(u16 trainerId);
void FrontierSpeechToString(const u16 *words);
void DoSpecialTrainerBattle(void);
void CalcEmeraldBattleTowerChecksum(struct EmeraldBattleTowerRecord *record);
void CalcRubyBattleTowerChecksum(struct RSBattleTowerRecord *record);
u16 GetCurrentBattleTowerWinStreak(u8 lvlMode, u8 battleMode);
u8 GetEreaderTrainerFrontSpriteId(void);
u8 GetEreaderTrainerClassId(void);
void GetEreaderTrainerName(u8 *dst);
void ValidateEReaderTrainer(void);
void ClearEReaderTrainer(struct BattleTowerEReaderTrainer *ereaderTrainer);
void CopyEReaderTrainerGreeting(void);
void TryHideBattleTowerReporter(void);
bool32 RubyBattleTowerRecordToEmerald(struct RSBattleTowerRecord *src, struct EmeraldBattleTowerRecord *dst);
bool32 EmeraldBattleTowerRecordToRuby(struct EmeraldBattleTowerRecord *src, struct RSBattleTowerRecord *dst);
void CalcApprenticeChecksum(struct Apprentice *apprentice);
void GetBattleTowerTrainerLanguage(u8 *dst, u16 trainerId);
u8 SetFacilityPtrsGetLevel(void);
u8 GetFrontierEnemyMonLevel(u8 lvlMode);
s32 GetHighestLevelInPlayerParty(void);
u8 FacilityClassToGraphicsId(u8 facilityClass);
bool32 ValidateBattleTowerRecord(u8 recordId);
void sub_8166188(void);
# 3 "src/battle_tower.c" 2
# 1 "include/apprentice.h" 1



# 1 "include/constants/apprentice.h" 1
# 5 "include/apprentice.h" 2

struct ApprenticeTrainer
{
    u8 name[7 - 1][7 + 1];
    u16 otId;
    u8 facilityClass;
    u16 species[10];
    u8 id;
    u16 speechLost[6];
};

extern const struct ApprenticeTrainer gApprentices[];

void BufferApprenticeChallengeText(u8 saveApprenticeId);
void Apprentice_EnableBothScriptContexts(void);
void ResetApprenticeStruct(struct Apprentice *apprentice);
void ResetAllApprenticeData(void);
void CallApprenticeFunction(void);
const u8 *GetApprenticeNameInLanguage(u32 apprenticeId, s32 language);
# 4 "src/battle_tower.c" 2
# 1 "include/event_data.h" 1



void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearDailyFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void ClearMysteryEventFlags(void);
void ClearMysteryEventVars(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetObjectEventGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);

extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_Unused_0x8014;
# 5 "src/battle_tower.c" 2
# 1 "include/battle_setup.h" 1



# 1 "include/gym_leader_rematch.h" 1



enum {
    REMATCH_ROSE,
    REMATCH_ANDRES,
    REMATCH_DUSTY,
    REMATCH_LOLA,
    REMATCH_RICKY,
    REMATCH_LILA_AND_ROY,
    REMATCH_CRISTIN,
    REMATCH_BROOKE,
    REMATCH_WILTON,
    REMATCH_VALERIE,
    REMATCH_CINDY,
    REMATCH_THALIA,
    REMATCH_JESSICA,
    REMATCH_WINSTON,
    REMATCH_STEVE,
    REMATCH_TONY,
    REMATCH_NOB,
    REMATCH_KOJI,
    REMATCH_FERNANDO,
    REMATCH_DALTON,
    REMATCH_BERNIE,
    REMATCH_ETHAN,
    REMATCH_JOHN_AND_JAY,
    REMATCH_JEFFREY,
    REMATCH_CAMERON,
    REMATCH_JACKI,
    REMATCH_WALTER,
    REMATCH_KAREN,
    REMATCH_JERRY,
    REMATCH_ANNA_AND_MEG,
    REMATCH_ISABEL,
    REMATCH_MIGUEL,
    REMATCH_TIMOTHY,
    REMATCH_SHELBY,
    REMATCH_CALVIN,
    REMATCH_ELLIOT,
    REMATCH_ISAIAH,
    REMATCH_MARIA,
    REMATCH_ABIGAIL,
    REMATCH_DYLAN,
    REMATCH_KATELYN,
    REMATCH_BENJAMIN,
    REMATCH_PABLO,
    REMATCH_NICOLAS,
    REMATCH_ROBERT,
    REMATCH_LAO,
    REMATCH_CYNDY,
    REMATCH_MADELINE,
    REMATCH_JENNY,
    REMATCH_DIANA,
    REMATCH_AMY_AND_LIV,
    REMATCH_ERNEST,
    REMATCH_CORY,
    REMATCH_EDWIN,
    REMATCH_LYDIA,
    REMATCH_ISAAC,
    REMATCH_GABRIELLE,
    REMATCH_CATHERINE,
    REMATCH_JACKSON,
    REMATCH_HALEY,
    REMATCH_JAMES,
    REMATCH_TRENT,
    REMATCH_SAWYER,
    REMATCH_KIRA_AND_DAN,
    REMATCH_WALLY_3,
    REMATCH_ROXANNE,
    REMATCH_BRAWLY,
    REMATCH_WATTSON,
    REMATCH_FLANNERY,
    REMATCH_NORMAN,
    REMATCH_WINONA,
    REMATCH_TATE_AND_LIZA,
    REMATCH_JUAN,
    REMATCH_SIDNEY,
    REMATCH_PHOEBE,
    REMATCH_GLACIA,
    REMATCH_DRAKE,
    REMATCH_WALLACE,
    REMATCH_TABLE_ENTRIES
};




void UpdateGymLeaderRematch(void);
# 5 "include/battle_setup.h" 2



struct RematchTrainer
{
    u16 trainerIds[5];
    u16 mapGroup;
    u16 mapNum;
};

extern const struct RematchTrainer gRematchTable[REMATCH_TABLE_ENTRIES];

extern u16 gTrainerBattleOpponent_A;
extern u16 gTrainerBattleOpponent_B;
extern u16 gPartnerTrainerId;

void BattleSetup_StartWildBattle(void);
void BattleSetup_StartDoubleWildBattle(void);
void BattleSetup_StartBattlePikeWildBattle(void);
void BattleSetup_StartRoamerBattle(void);
void StartWallyTutorialBattle(void);
void BattleSetup_StartScriptedWildBattle(void);
void BattleSetup_StartScriptedDoubleWildBattle(void);
void BattleSetup_StartLatiBattle(void);
void BattleSetup_StartLegendaryBattle(void);
void StartGroudonKyogreBattle(void);
void StartRegiBattle(void);
u8 BattleSetup_GetTerrainId(void);
u8 GetWildBattleTransition(void);
u8 GetTrainerBattleTransition(void);
u8 GetSpecialBattleTransition(s32 arg0);
void ChooseStarter(void);
void ResetTrainerOpponentIds(void);
void SetMapVarsToTrainer(void);
const u8 *BattleSetup_ConfigureTrainerBattle(const u8 *data);
void ConfigureAndSetUpOneTrainerBattle(u8 trainerObjEventId, const u8 *trainerScript);
void ConfigureTwoTrainersBattle(u8 trainerObjEventId, const u8 *trainerScript);
void SetUpTwoTrainersBattle(void);
bool32 GetTrainerFlagFromScriptPointer(const u8 *data);
void SetUpTrainerMovement(void);
u8 GetTrainerBattleMode(void);
bool8 GetTrainerFlag(void);
bool8 HasTrainerBeenFought(u16 trainerId);
void SetTrainerFlag(u16 trainerId);
void ClearTrainerFlag(u16 trainerId);
void BattleSetup_StartTrainerBattle(void);
void BattleSetup_StartRematchBattle(void);
void ShowTrainerIntroSpeech(void);
const u8 *BattleSetup_GetScriptAddrAfterBattle(void);
const u8 *BattleSetup_GetTrainerPostBattleScript(void);
void ShowTrainerCantBattleSpeech(void);
void SetUpTrainerEncounterMusic(void);
const u8 *GetTrainerALoseText(void);
const u8 *GetTrainerBLoseText(void);
const u8 *GetTrainerWonSpeech(void);
void UpdateRematchIfDefeated(s32 rematchTableId);
void IncrementRematchStepCounter(void);
void TryUpdateRandomTrainerRematches(u16 mapGroup, u16 mapNum);
bool32 DoesSomeoneWantRematchIn(u16 mapGroup, u16 mapNum);
bool32 IsRematchTrainerIn(u16 mapGroup, u16 mapNum);
u16 GetLastBeatenRematchTrainerId(u16 trainerId);
bool8 ShouldTryRematchBattle(void);
bool8 IsTrainerReadyForRematch(void);
void ShouldTryGetTrainerScript(void);
u16 CountBattledRematchTeams(u16 trainerId);
# 6 "src/battle_tower.c" 2
# 1 "include/overworld.h" 1
# 29 "include/overworld.h"
struct InitialPlayerAvatarState
{
    u8 transitionFlags;
    u8 direction;
};

struct LinkPlayerObjectEvent
{
    u8 active;
    u8 linkPlayerId;
    u8 objEventId;
    u8 movementMode;
};


extern struct WarpData gLastUsedWarp;
extern struct LinkPlayerObjectEvent gLinkPlayerObjectEvents[4];

extern u16 *gBGTilemapBuffers1;
extern u16 *gBGTilemapBuffers2;
extern u16 *gBGTilemapBuffers3;
extern u16 gHeldKeyCodeToSend;
extern void (*gFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);
extern u8 gLocalLinkPlayerId;
extern u8 gFieldLinkPlayerCount;


extern const struct UCoords32 gDirectionToVectors[];

void DoWhiteOut(void);
void Overworld_ResetStateAfterFly(void);
void Overworld_ResetStateAfterTeleport(void);
void Overworld_ResetStateAfterDigEscRope(void);
void ResetGameStats(void);
void IncrementGameStat(u8 index);
u32 GetGameStat(u8 index);
void SetGameStat(u8 index, u32 value);
void ApplyNewEncryptionKeyToGameStats(u32 newKey);
void LoadObjEventTemplatesFromHeader(void);
void LoadSaveblockObjEventScripts(void);
void Overworld_SetObjEventTemplateCoords(u8 localId, s16 x, s16 y);
void Overworld_SetObjEventTemplateMovementType(u8 localId, u8 movementType);
const struct MapLayout *GetMapLayout(void);
void ApplyCurrentWarp(void);
struct MapHeader const *const Overworld_GetMapHeaderByGroupAndId(u16 mapGroup, u16 mapNum);
struct MapHeader const *const GetDestinationWarpMapHeader(void);
void WarpIntoMap(void);
void SetWarpDestination(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToMapWarp(s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarp(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarpWithCoords(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToDynamicWarp(u8 unused);
void SetWarpDestinationToHealLocation(u8 a1);
void SetWarpDestinationToLastHealLocation(void);
void SetLastHealLocationWarp(u8 healLocationId);
void UpdateEscapeWarp(s16 x, s16 y);
void SetEscapeWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToEscapeWarp(void);
void SetFixedDiveWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedHoleWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToFixedHoleWarp(s16 x, s16 y);
void SetContinueGameWarpToHealLocation(u8 a1);
void SetContinueGameWarpToDynamicWarp(int unused);
const struct MapConnection *GetMapConnection(u8 dir);
bool8 SetDiveWarpEmerge(u16 x, u16 y);
bool8 SetDiveWarpDive(u16 x, u16 y);
void LoadMapFromCameraTransition(u8 mapGroup, u8 mapNum);
void ResetInitialPlayerAvatarState(void);
void StoreInitialPlayerAvatarState(void);
bool32 Overworld_IsBikingAllowed(void);
void SetDefaultFlashLevel(void);
void Overworld_SetFlashLevel(s32 flashLevel);
u8 Overworld_GetFlashLevel(void);
void SetCurrentMapLayout(u16 mapLayoutId);
void SetObjectEventLoadFlag(u8 var);
u16 GetLocationMusic(struct WarpData *warp);
u16 GetCurrLocationDefaultMusic(void);
u16 GetWarpDestinationMusic(void);
void Overworld_ResetMapMusic(void);
void Overworld_PlaySpecialMapMusic(void);
void Overworld_SetSavedMusic(u16 songNum);
void Overworld_ClearSavedMusic(void);
void Overworld_ChangeMusicToDefault(void);
void Overworld_ChangeMusicTo(u16 newMusic);
u8 GetMapMusicFadeoutSpeed(void);
void TryFadeOutOldMapMusic(void);
bool8 BGMusicStopped(void);
void Overworld_FadeOutMapMusic(void);
void UpdateAmbientCry(s16 *state, u16 *delayCounter);
u8 GetMapTypeByGroupAndId(s8 mapGroup, s8 mapNum);
u8 GetMapTypeByWarpData(struct WarpData *warp);
u8 GetCurrentMapType(void);
u8 GetLastUsedWarpMapType(void);
bool8 IsMapTypeOutdoors(u8 mapType);
bool8 Overworld_MapTypeAllowsTeleportAndFly(u8 mapType);
bool8 IsMapTypeIndoors(u8 mapType);
u8 GetSavedWarpRegionMapSectionId(void);
u8 GetCurrentRegionMapSectionId(void);
u8 GetCurrentMapBattleScene(void);
void CleanupOverworldWindowsAndTilemaps(void);
bool32 IsUpdateLinkStateCBActive(void);
void CB1_Overworld(void);
void CB2_OverworldBasic(void);
void CB2_Overworld(void);
void SetMainCallback1(void (*cb)(void));
void SetUnusedCallback(void *a0);
void CB2_NewGame(void);
void CB2_WhiteOut(void);
void CB2_LoadMap(void);
void CB2_ReturnToFieldContestHall(void);
void CB2_ReturnToFieldCableClub(void);
void CB2_ReturnToField(void);
void CB2_ReturnToFieldFromMultiplayer(void);
void CB2_ReturnToFieldWithOpenMenu(void);
void CB2_ReturnToFieldContinueScript(void);
void CB2_ReturnToFieldContinueScriptPlayMapMusic(void);
void sub_80861E8(void);
void CB2_ContinueSavedGame(void);
void ResetAllMultiplayerState(void);
u32 sub_8087214(void);
bool32 sub_808727C(void);
u16 sub_8087288(void);
u16 sub_808729C(void);
u16 QueueExitLinkRoomKey(void);
u16 sub_80872C4(void);
bool32 sub_8087598(void);
bool32 sub_80875C8(void);
bool32 sub_8087634(void);
bool32 sub_808766C(void);
void ClearLinkPlayerObjectEvents(void);
# 7 "src/battle_tower.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 20 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 8 "src/battle_tower.c" 2
# 1 "gflib/text.h" 1
# 272 "gflib/text.h"
enum
{
    FONTATTR_MAX_LETTER_WIDTH,
    FONTATTR_MAX_LETTER_HEIGHT,
    FONTATTR_LETTER_SPACING,
    FONTATTR_LINE_SPACING,
    FONTATTR_UNKNOWN,
    FONTATTR_COLOR_FOREGROUND,
    FONTATTR_COLOR_BACKGROUND,
    FONTATTR_COLOR_SHADOW
};

struct TextPrinterSubStruct
{
    u8 glyphId:4;
    bool8 hasPrintBeenSpedUp:1;
    u8 unk:3;
    u8 downArrowDelay:5;
    u8 downArrowYPosIdx:2;
    bool8 hasGlyphIdBeenSet:1;
    u8 autoScrollDelay;
};

struct TextPrinterTemplate
{
    const u8* currentChar;
    u8 windowId;
    u8 fontId;
    u8 x;
    u8 y;
    u8 currentX;
    u8 currentY;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

struct TextPrinter
{
    struct TextPrinterTemplate printerTemplate;

    void (*callback)(struct TextPrinterTemplate *, u16);

    u8 subStructFields[7];
    u8 active;
    u8 state;
    u8 textSpeed;
    u8 delayCounter;
    u8 scrollDistance;
    u8 minLetterSpacing;
    u8 japanese;
};

struct FontInfo
{
    u16 (*fontFunction)(struct TextPrinter *x);
    u8 maxLetterWidth;
    u8 maxLetterHeight;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

extern const struct FontInfo *gFonts;

struct GlyphWidthFunc
{
    u32 fontId;
    u32 (*func)(u16 glyphId, bool32 isJapanese);
};

struct KeypadIcon
{
    u16 tileOffset;
    u8 width;
    u8 height;
};

typedef struct {
    bool8 canABSpeedUpPrint:1;
    bool8 useAlternateDownArrow:1;
    bool8 autoScroll:1;
    bool8 forceMidTextSpeed:1;
} TextFlags;

struct Struct_03002F90
{
    u32 unk0[8];
    u32 unk20[8];
    u32 unk40[8];
    u32 unk60[8];
    u8 width;
    u8 height;
};

extern TextFlags gTextFlags;

extern u8 gUnknown_03002F84;
extern struct Struct_03002F90 gUnknown_03002F90;

void SetFontsPointer(const struct FontInfo *fonts);
void DeactivateAllTextPrinters(void);
u16 AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
bool16 AddTextPrinter(struct TextPrinterTemplate *template, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
void RunTextPrinters(void);
bool16 IsTextPrinterActive(u8 id);
u32 RenderFont(struct TextPrinter *textPrinter);
void GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor);
void SaveTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void RestoreTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void DecompressGlyphTile(const void *src_, void *dest_);
u8 GetLastTextColor(u8 colorType);
void CopyGlyphToWindow(struct TextPrinter *x);
void ClearTextSpan(struct TextPrinter *textPrinter, u32 width);
u8 GetMenuCursorDimensionByFont(u8, u8);

u16 Font0Func(struct TextPrinter *textPrinter);
u16 Font1Func(struct TextPrinter *textPrinter);
u16 Font2Func(struct TextPrinter *textPrinter);
u16 Font3Func(struct TextPrinter *textPrinter);
u16 Font4Func(struct TextPrinter *textPrinter);
u16 Font5Func(struct TextPrinter *textPrinter);
u16 Font7Func(struct TextPrinter *textPrinter);
u16 Font8Func(struct TextPrinter *textPrinter);

void TextPrinterInitDownArrowCounters(struct TextPrinter *textPrinter);
void TextPrinterDrawDownArrow(struct TextPrinter *textPrinter);
void TextPrinterClearDownArrow(struct TextPrinter *textPrinter);
bool8 TextPrinterWaitAutoMode(struct TextPrinter *textPrinter);
bool16 TextPrinterWaitWithDownArrow(struct TextPrinter *textPrinter);
bool16 TextPrinterWait(struct TextPrinter *textPrinter);
void DrawDownArrow(u8 windowId, u16 x, u16 y, u8 bgColor, bool8 drawArrow, u8 *counter, u8 *yCoordIndex);
u16 RenderText(struct TextPrinter *textPrinter);
u32 GetStringWidthFixedWidthFont(const u8 *str, u8 fontId, u8 letterSpacing);
u32 (*GetFontWidthFunc(u8 glyphId))(u16, bool32);
s32 GetStringWidth(u8 fontId, const u8 *str, s16 letterSpacing);
u8 RenderTextFont9(u8 *pixels, u8 fontId, u8 *str);
u8 DrawKeypadIcon(u8 windowId, u8 keypadIconId, u16 x, u16 y);
u8 GetKeypadIconTileOffset(u8 keypadIconId);
u8 GetKeypadIconWidth(u8 keypadIconId);
u8 GetKeypadIconHeight(u8 keypadIconId);
void SetDefaultFontsPointer(void);
u8 GetFontAttribute(u8 fontId, u8 attributeId);
u8 GetMenuCursorDimensionByFont(u8 fontId, u8 whichDimension);
void DecompressGlyphFont0(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont0(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont7(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont7(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont8(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont8(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont2(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont2(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont1(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont1(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont9(u16 glyphId);


u16 Font6Func(struct TextPrinter *textPrinter);
u32 GetGlyphWidthFont6(u16 glyphId, bool32 isJapanese);
# 9 "src/battle_tower.c" 2
# 1 "include/main.h" 1



typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);

struct Main
{
              MainCallback callback1;
              MainCallback callback2;

              MainCallback savedCallback;

              IntrCallback vblankCallback;
              IntrCallback hblankCallback;
              IntrCallback vcountCallback;
              IntrCallback serialCallback;

              vu16 intrCheck;

              u32 vblankCounter1;
              u32 vblankCounter2;

              u16 heldKeysRaw;
              u16 newKeysRaw;
              u16 heldKeys;
              u16 newKeys;
              u16 newAndRepeatedKeys;
              u16 keyRepeatCounter;
              bool16 watchedKeysPressed;
              u16 watchedKeysMask;

              struct OamData oamBuffer[128];

              u8 state;

              u8 oamLoadDisabled:1;
              u8 inBattle:1;
              u8 field_439_x4:1;
};

extern const u8 gGameVersion;
extern const u8 gGameLanguage;
extern const u8 RomHeaderGameCode[4];
extern const u8 RomHeaderSoftwareVersion;

extern u16 gKeyRepeatStartDelay;
extern bool8 gLinkTransferringData;
extern struct Main gMain;
extern u16 gKeyRepeatContinueDelay;
extern bool8 gSoftResetDisabled;
extern IntrFunc gIntrTable[];
extern u8 gLinkVSyncDisabled;
extern u32 IntrMain_Buffer[];
extern s8 gPcmDmaCounter;

void AgbMain(void);
void SetMainCallback2(MainCallback callback);
void InitKeys(void);
void SetVBlankCallback(IntrCallback callback);
void SetHBlankCallback(IntrCallback callback);
void SetVCountCallback(IntrCallback callback);
void SetSerialCallback(IntrCallback callback);
void InitFlashTimer(void);
void SetTrainerHillVBlankCounter(u32 *var);
void ClearTrainerHillVBlankCounter(void);
void DoSoftReset(void);
void ClearPokemonCrySongs(void);
void RestoreSerialTimer3IntrHandlers(void);
void StartTimer1(void);
void SeedRngAndSetTrainerId(void);
u16 GetGeneratedTrainerIdLower(void);
void sub_819789C(void);
# 10 "src/battle_tower.c" 2
# 1 "include/international_string_util.h" 1



# 1 "include/menu.h" 1



# 1 "include/task.h" 1
# 10 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, u32 value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 5 "include/menu.h" 2

# 1 "gflib/window.h" 1





enum
{
    WINDOW_BG,
    WINDOW_TILEMAP_LEFT,
    WINDOW_TILEMAP_TOP,
    WINDOW_WIDTH,
    WINDOW_HEIGHT,
    WINDOW_PALETTE_NUM,
    WINDOW_BASE_BLOCK,
    WINDOW_TILE_DATA
};

struct WindowTemplate
{
    u8 bg;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseBlock;
};
# 40 "gflib/window.h"
struct Window
{
    struct WindowTemplate window;
    u8 *tileData;
};

bool16 InitWindows(const struct WindowTemplate *templates);
u16 AddWindow(const struct WindowTemplate *template);
int AddWindowWithoutTileMap(const struct WindowTemplate *template);
void RemoveWindow(u8 windowId);
void FreeAllWindowBuffers(void);
void CopyWindowToVram(u8 windowId, u8 mode);
void CopyWindowRectToVram(u32 windowId, u32 mode, u32 x, u32 y, u32 w, u32 h);
void PutWindowTilemap(u8 windowId);
void PutWindowRectTilemapOverridePalette(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 palette);
void ClearWindowTilemap(u8 windowId);
void PutWindowRectTilemap(u8 windowId, u8 x, u8 y, u8 width, u8 height);
void BlitBitmapToWindow(u8 windowId, const u8 *pixels, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight);
void FillWindowPixelRect(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void CopyToWindowPixelBuffer(u8 windowId, const void *src, u16 size, u16 tileOffset);
void FillWindowPixelBuffer(u8 windowId, u8 fillValue);
void ScrollWindow(u8 windowId, u8 direction, u8 distance, u8 fillValue);
void CallWindowFunction(u8 windowId, void ( *func)(u8, u8, u8, u8, u8, u8));
bool8 SetWindowAttribute(u8 windowId, u8 attributeId, u32 value);
u32 GetWindowAttribute(u8 windowId, u8 attributeId);
u16 AddWindow8Bit(const struct WindowTemplate *template);
void FillWindowPixelBuffer8Bit(u8 windowId, u8 fillValue);
void FillWindowPixelRect8Bit(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow4BitTo8Bit(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight, u8 paletteNum);
void CopyWindowToVram8Bit(u8 windowId, u8 mode);

extern struct Window gWindows[];
extern void* gUnknown_03002F70[];
extern u32 filler_03002F58;
extern u32 filler_03002F5C;
extern u32 filler_03002F64;
# 7 "include/menu.h" 2
# 26 "include/menu.h"
enum
{
    SAVE_MENU_NAME,
    SAVE_MENU_CAUGHT,
    SAVE_MENU_PLAY_TIME,
    SAVE_MENU_LOCATION,
    SAVE_MENU_BADGES,
};

struct MenuAction
{
    const u8 *text;
    union {
        void (*void_u8)(u8);
        u8 (*u8_void)(void);
    } func;
};

extern const u16 gUnknown_0860F074[];

void FreeAllOverworldWindowBuffers(void);
void InitStandardTextBoxWindows(void);
void InitTextBoxGfxAndPrinters(void);
u16 RunTextPrintersAndIsPrinter0Active(void);
void LoadMessageBoxAndBorderGfx(void);
void DrawDialogueFrame(u8 windowId, bool8 copyToVram);
void ClearStdWindowAndFrame(u8 windowId, bool8 copyToVram);
u16 AddTextPrinterParameterized2(u8 windowId, u8 fontId, const u8 *str, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 fgColor, u8 bgColor, u8 shadowColor);
void PrintPlayerNameOnWindow(u8, const u8*, u16, u16);
void ClearDialogWindowAndFrame(u8 windowId, bool8 copyToVram);
void SetStandardWindowBorderStyle(u8 windowId, bool8 copyToVram);
void DisplayYesNoMenuDefaultYes(void);
u32 GetPlayerTextSpeed(void);
u8 GetPlayerTextSpeedDelay(void);
void Menu_LoadStdPalAt(u16 arg0);
void AddTextPrinterWithCallbackForMessage(bool8 a1, void (*callback)(struct TextPrinterTemplate *, u16));
void sub_8199DF0(u32 bg, u8 a1, int a2, int a3);
void AddTextPrinterParameterized3(u8 windowId, u8 fontId, u8 left, u8 top, const u8 *color, s8 speed, const u8 *str);
void ClearStdWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void SetWindowTemplateFields(struct WindowTemplate* template, u8 priority, u8 tilemapLeft, u8 tilemapTop, u8 width, u8 height, u8 palNum, u16 baseBlock);
void DrawStdFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 tileStart, u8 palette);
void ScheduleBgCopyTilemapToVram(u8 bgNum);
void PrintMenuTable(u8 windowId, u8 itemCount, const struct MenuAction *strs);
u8 InitMenuInUpperLeftCornerPlaySoundWhenAPressed(u8 windowId, u8 numItems, u8 initialCursorPos);
u8 Menu_GetCursorPos(void);
s8 Menu_ProcessInput(void);
s8 Menu_ProcessInputNoWrap(void);
void BlitMenuInfoIcon(u8 winId, u8 a2, u16 x, u16 y);
void ResetTempTileDataBuffers(void);
void *DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
bool8 FreeTempTileDataBuffersIfPossible(void);
struct WindowTemplate CreateWindowTemplate(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);
void CreateYesNoMenu(const struct WindowTemplate *windowTemplate, u16 borderFirstTileNum, u8 borderPalette, u8 initialCursorPos);
void DecompressAndLoadBgGfxUsingHeap(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
s8 Menu_ProcessInputNoWrapClearOnChoose(void);
s8 ProcessMenuInput_other(void);
void DoScheduledBgTilemapCopiesToVram(void);
void ClearScheduledBgCopiesToVram(void);
void AddTextPrinterParameterized4(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, const u8 *color, s8 speed, const u8 *str);
void DrawDialogFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 a2, u8 a3);
void sub_81995E4(u8 windowId, u8 optionsNo, const struct MenuAction *actions, const u8 *actionIds);
void ClearDialogWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
u16 sub_8198AA4(u8, u8, u8, u8, u8, u8, u16);
void *malloc_and_decompress(const void *src, u32 *sizeOut);
u16 copy_decompressed_tile_data_to_vram(u8 bgId, const void *src, u16 size, u16 offset, u8 mode);
void AddTextPrinterForMessage(bool8 allowSkippingDelayWithButtonPress);
void AddItemMenuActionTextPrinters(u8 windowId, u8 fontId, u8 left, u8 top, u8 letterSpacing, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, const u8 *a8);
void sub_8198DBC(u8 windowId, u8 fontId, u8 left, u8 top, u8 a4, u8 itemCount, u8 itemCount2, const struct MenuAction *strs, const u8 *a8);
u8 sub_8199944(u8 windowId, u8 optionWidth, u8 columns, u8 rows, u8 initialCursorPos);
u8 ChangeListMenuCursorPosition(s8 deltaX, s8 deltaY);
u8 GetStartMenuWindowId(void);
void ListMenuLoadStdPalAt(u8, u8);
u8 Menu_MoveCursor(s8 cursorDelta);
u8 Menu_MoveCursorNoWrapAround(s8 cursorDelta);
void DrawStdWindowFrame(u8 windowId, bool8 CopyToVram);
u8 sub_81979C4(u8 a1);
u8 sub_81983AC(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos);
void sub_819786C(u8 windowId, bool8 copyToVram);
void AddTextPrinterForMessage_2(bool8 allowSkippingDelayWithButtonPress);
void RemoveStartMenuWindow(void);
void DisplayYesNoMenuWithDefault(u8 initialCursorPos);
void BufferSaveMenuText(u8 textId, u8 *dest, u8 color);
void RemoveMapNamePopUpWindow(void);
u8 GetMapNamePopUpWindowId(void);
u8 AddMapNamePopUpWindow(void);
void AddTextPrinterParameterized5(u8 windowId, u8 fontId, const u8 *str, u8 left, u8 top, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 letterSpacing, u8 lineSpacing);
void SetBgTilemapPalette(u8 bgId, u8 left, u8 top, u8 width, u8 height, u8 palette);
void sub_8199D3C(void *ptr, int delta, int width, int height, bool32 is8BPP);
void sub_8198204(const u8 *string, const u8 *string2, u8 a3, u8 a4, bool8 copyToVram);
void sub_8197AE8(bool8 copyToVram);
void PrintMenuGridTable(u8 windowId, u8 optionWidth, u8 columns, u8 rows, const struct MenuAction *strs);
s8 Menu_ProcessInputGridLayout(void);
u8 InitMenuInUpperLeftCorner(u8 windowId, u8 itemCount, u8 initialCursorPos, bool8 APressMuted);
s8 Menu_ProcessInputNoWrapAround_other(void);
void CopyToBufferFromBgTilemap(u8 bgId, u16 *dest, u8 left, u8 top, u8 width, u8 height);
u8 sub_81980F0(u8 bg, u8 xPos, u8 yPos, u8 palette, u16 baseTile);
void sub_8198314(void);
void sub_8198180(const u8 *string, u8 a2, bool8 copyToVram);
void ResetBgPositions(void);
void AddTextPrinterWithCustomSpeedForMessage(bool8 allowSkippingDelayWithButtonPress, u8 speed);
void sub_8198C78(void);
void PrintTextArray(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
# 5 "include/international_string_util.h" 2
# 1 "include/list_menu.h" 1
# 14 "include/list_menu.h"
enum
{
    SCROLL_ARROW_LEFT,
    SCROLL_ARROW_RIGHT,
    SCROLL_ARROW_UP,
    SCROLL_ARROW_DOWN
};

struct ListMenu;

struct ListMenuItem
{
    const u8 *name;
    s32 id;
};

struct ListMenuTemplate
{
    const struct ListMenuItem *items;
    void (* moveCursorFunc)(s32 itemIndex, bool8 onInit, struct ListMenu *list);
    void (* itemPrintFunc)(u8 windowId, s32 itemId, u8 y);
    u16 totalItems;
    u16 maxShowed;
    u8 windowId;
    u8 header_X;
    u8 item_X;
    u8 cursor_X;
    u8 upText_Y:4;
    u8 cursorPal:4;
    u8 fillValue:4;
    u8 cursorShadowPal:4;
    u8 lettersSpacing:3;
    u8 itemVerticalPadding:3;
    u8 scrollMultiple:2;
    u8 fontId:6;
    u8 cursorKind:2;
};

struct ListMenu
{
    struct ListMenuTemplate template;
    u16 scrollOffset;
    u16 selectedRow;
    u8 unk_1C;
    u8 unk_1D;
    u8 taskId;
    u8 unk_1F;
};

struct ListMenuWindowRect
{
    u8 x;
    u8 y;
    u8 width;
    u8 height;
    u8 palNum;
};

struct ScrollArrowsTemplate
{
    u8 firstArrowType;
    u8 firstX;
    u8 firstY;
    u8 secondArrowType;
    u8 secondX;
    u8 secondY;
    u16 fullyUpThreshold;
    u16 fullyDownThreshold;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

struct CursorStruct
{
    u8 left;
    u8 top;
    u16 rowWidth;
    u16 rowHeight;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

extern struct ScrollArrowsTemplate gTempScrollArrowTemplate;
extern struct ListMenuTemplate gMultiuseListMenuTemplate;

s32 DoMysteryGiftListMenu(const struct WindowTemplate *windowTemplate, const struct ListMenuTemplate *listMenuTemplate, u8 arg2, u16 tileNum, u16 palNum);
u8 ListMenuInit(struct ListMenuTemplate *listMenuTemplate, u16 scrollOffset, u16 selectedRow);
u8 ListMenuInitInRect(struct ListMenuTemplate *listMenuTemplate, struct ListMenuWindowRect *arg1, u16 scrollOffset, u16 selectedRow);
s32 ListMenu_ProcessInput(u8 listTaskId);
void DestroyListMenuTask(u8 listTaskId, u16 *scrollOffset, u16 *selectedRow);
void RedrawListMenu(u8 listTaskId);
void ChangeListMenuPals(u8 listTaskId, u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ChangeListMenuCoords(u8 listTaskId, u8 x, u8 y);
s32 ListMenuTestInput(struct ListMenuTemplate *template, u32 scrollOffset, u32 selectedRow, u16 keys, u16 *newScrollOffset, u16 *newSelectedRow);
void ListMenuGetCurrentItemArrayId(u8 listTaskId, u16 *arrayId);
void ListMenuGetScrollAndRow(u8 listTaskId, u16 *scrollOffset, u16 *selectedRow);
u16 ListMenuGetYCoordForPrintingArrowCursor(u8 listTaskId);
void ListMenuOverrideSetColors(u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ListMenuDefaultCursorMoveFunc(s32 arg0, u8 arg1, struct ListMenu *list);
s32 ListMenuGetUnkIndicatorsStructFields(u8 taskId, u8 field);
void ListMenuSetUnkIndicatorsStructField(u8 taskId, u8 field, s32 value);
u8 AddScrollIndicatorArrowPair(const struct ScrollArrowsTemplate *arrowInfo, u16 *arg1);
u8 AddScrollIndicatorArrowPairParameterized(u32 arrowType, s32 commonPos, s32 firstPos, s32 secondPos, s32 fullyDownThreshold, s32 tileTag, s32 palTag, u16 *currItemPtr);
void RemoveScrollIndicatorArrowPair(u8 taskId);
void Task_ScrollIndicatorArrowPairOnMainMenu(u8 taskId);
# 6 "include/international_string_util.h" 2

void sub_81DB52C(u8 *src);
void TVShowConvertInternationalString(u8 *dest, const u8 *src, int language);
int GetStringCenterAlignXOffset(int fontId, const u8 *str, int totalWidth);
int GetStringRightAlignXOffset(int fontId, const u8 *str, int totalWidth);
int GetStringCenterAlignXOffsetWithLetterSpacing(int fontId, const u8 *str, int totalWidth, int letterSpacing);
int GetStringWidthDifference(int fontId, const u8 *str, int totalWidth, int letterSpacing);
int GetMaxWidthInMenuTable(const struct MenuAction *str, int arg1);
int sub_81DB3D8(const struct MenuAction *str, const u8* arg1, int arg2);
int Intl_GetListMenuWidth(const struct ListMenuTemplate *listMenu);
void CopyMonCategoryText(int dexNum, u8 *dest);
u8 *sub_81DB494(u8 *str, int fontId, const u8 *str2, int totalStringWidth);
void PadNameString(u8 *dest, u8 padChar);
void sub_81DB554(u8 *, u8);
void sub_81DB5AC(u8 *);
int sub_81DB604(u8 *);
void sub_81DB620(int windowId, int columnStart, int rowStart, int numFillTiles, int numRows);
# 11 "src/battle_tower.c" 2
# 1 "include/battle.h" 1




# 1 "include/constants/battle.h" 1
# 6 "include/battle.h" 2
# 1 "include/battle_main.h" 1



struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct UnknownPokemonStruct4
{
             u16 species;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 31 "include/battle_main.h"
void CB2_InitBattle(void);
void BattleMainCB2(void);
void CB2_QuitRecordedBattle(void);
void sub_8038528(struct Sprite* sprite);
void sub_8038A04(void);
void VBlankCB_Battle(void);
void nullsub_17(struct Sprite *sprite);
void sub_8038B74(struct Sprite *sprite);
void sub_8038D64(void);
u32 sub_80391E0(u8 arrayId, u8 caseId);
u32 sub_80397C4(u32 setId, u32 tableId);
void SpriteCb_WildMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void SpriteCb_ShowAsMoveTarget(struct Sprite *sprite);
void SpriteCb_HideAsMoveTarget(struct Sprite *sprite);
void SpriteCb_OpponentMonFromBall(struct Sprite *sprite);
void sub_8039BB4(struct Sprite *sprite);
void sub_80105DC(struct Sprite *sprite);
void sub_8039C00(struct Sprite *sprite);
void DoBounceEffect(u8 battlerId, u8 b, s8 c, s8 d);
void EndBounceEffect(u8 battlerId, bool8 b);
void SpriteCb_PlayerMonFromBall(struct Sprite *sprite);
void sub_8039E60(struct Sprite *sprite);
void SpriteCB_TrainerThrowObject(struct Sprite *sprite);
void sub_8039E9C(struct Sprite *sprite);
void nullsub_20(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void SwitchPartyOrder(u8 battlerId);
void SwapTurnOrder(u8 id1, u8 id2);
u32 GetBattlerTotalSpeedStat(u8 battlerId);
s8 GetChosenMovePriority(u32 battlerId);
s8 GetMovePriority(u32 battlerId, u16 move);
u8 GetWhoStrikesFirst(u8 battlerId1, u8 battlerId2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battlerId);
void SpecialStatusesClear(void);
void SetTypeBeforeUsingMove(u16 move, u8 battlerAtk);

extern struct UnknownPokemonStruct4 gMultiPartnerParty[6 / 2];

extern const struct SpriteTemplate gUnknown_0831AC88;
extern const struct OamData gOamData_831ACA8;
extern const struct OamData gOamData_831ACB0;
extern const u8 gTypeNames[19][6 + 1];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 gAbilityNames[][12 + 1];
extern const u8 *const gAbilityDescriptionPointers[];

extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];

extern const u8 *const gStatusConditionStringsTable[7][2];
# 7 "include/battle.h" 2
# 1 "include/battle_message.h" 1
# 208 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u16 lastAbility;
    u8 scrActive;
    u8 unk1605E;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u16 abilities[4];
    u8 textBuffs[3][16];
};

enum
{
    TRAINER_SLIDE_LAST_SWITCHIN,
    TRAINER_SLIDE_LAST_LOW_HP,
    TRAINER_SLIDE_FIRST_DOWN,
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8* src);
u32 BattleStringExpandPlaceholders(const u8* src, u8* dst);
void BattlePutTextOnWindow(const u8* text, u8 windowId);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);
bool32 ShouldDoTrainerSlide(u32 battlerId, u32 trainerId, u32 which);

extern struct BattleMsgData *gBattleMsgDataPtr;

extern const u8* const gBattleStringsTable[];
extern const u8* const gStatNamesTable[];
extern const u8* const gPokeblockWasTooXStringTable[];
extern const u8* const gRefereeStringsTable[];
extern const u8* const gStatNamesTable2[];
extern const u8 *const gRoundsStringTable[];

extern const u8 gText_PkmnIsEvolving[];
extern const u8 gText_CongratsPkmnEvolved[];
extern const u8 gText_PkmnStoppedEvolving[];
extern const u8 gText_EllipsisQuestionMark[];
extern const u8 gText_WhatWillPkmnDo[];
extern const u8 gText_WhatWillPkmnDo2[];
extern const u8 gText_WhatWillWallyDo[];
extern const u8 gText_LinkStandby[];
extern const u8 gText_BattleMenu[];
extern const u8 gText_SafariZoneMenu[];
extern const u8 gText_MoveInterfacePP[];
extern const u8 gText_MoveInterfaceType[];
extern const u8 gText_MoveInterfacePpType[];
extern const u8 gText_MoveInterfaceDynamicColors[];
extern const u8 gText_WhichMoveToForget4[];
extern const u8 gText_BattleYesNoChoice[];
extern const u8 gText_BattleSwitchWhich[];
extern const u8 gText_BattleSwitchWhich2[];
extern const u8 gText_BattleSwitchWhich3[];
extern const u8 gText_BattleSwitchWhich4[];
extern const u8 gText_BattleSwitchWhich5[];
extern const u8 gText_SafariBalls[];
extern const u8 gText_SafariBallLeft[];
extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_Space2[];
extern const u8 gText_LineBreak[];
extern const u8 gText_NewLine[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_BadEgg[];
extern const u8 gText_BattleWallyName[];
extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
extern const u8 gText_StatRose[];
extern const u8 gText_PkmnsStatChanged2[];
extern const u8 gText_PkmnGettingPumped[];
extern const u8 gText_PkmnShroudedInMist[];
extern const u8 gText_PkmnsXPreventsSwitching[];
extern const u8 gText_TheGreatNewHope[];
extern const u8 gText_WillChampionshipDreamComeTrue[];
extern const u8 gText_AFormerChampion[];
extern const u8 gText_ThePreviousChampion[];
extern const u8 gText_TheUnbeatenChampion[];
extern const u8 gText_PlayerMon1Name[];
extern const u8 gText_Vs[];
extern const u8 gText_OpponentMon1Name[];
extern const u8 gText_Mind[];
extern const u8 gText_Skill[];
extern const u8 gText_Body[];
extern const u8 gText_Judgement[];
extern const u8 gText_EmptyString3[];
extern const u8 gText_RecordBattleToPass[];
extern const u8 gText_BattleRecordedOnPass[];
extern const u8 gText_BattleTourney[];

extern const u16 gMissStringIds[];
extern const u16 gStatUpStringIds[];
extern const u16 gTrappingMoves[];
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 39 "include/battle_util.h"
struct TypePower
{
    u8 type;
    u8 power;
    u16 effect;
};

extern const struct TypePower gNaturalGiftTable[];

void HandleAction_UseMove(void);
void HandleAction_Switch(void);
void HandleAction_UseItem(void);
void HandleAction_Run(void);
void HandleAction_WatchesCarefully(void);
void HandleAction_SafariZoneBallThrow(void);
void HandleAction_ThrowPokeblock(void);
void HandleAction_GoNear(void);
void HandleAction_SafariZoneRun(void);
void HandleAction_WallyBallThrow(void);
void HandleAction_TryFinish(void);
void HandleAction_NothingIsFainted(void);
void HandleAction_ActionFinished(void);
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void PressurePPLoseOnUsingImprison(u8 attacker);
void MarkAllBattlersForControllerExec(void);
bool32 IsBattlerMarkedForControllerExec(u8 battlerId);
void MarkBattlerForControllerExec(u8 battlerId);
void sub_803F850(u8 arg0);
void CancelMultiTurnMoves(u8 battlerId);
bool8 WasUnableToUseMove(u8 battlerId);
void PrepareStringBattle(u16 stringId, u8 battlerId);
void ResetSentPokesToOpponentValue(void);
void OpponentSwitchInResetSentPokesToOpponentValue(u8 battlerId);
void UpdateSentPokesToOpponentValue(u8 battlerId);
void BattleScriptPush(const u8* bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
s32 GetDrainedBigRootHp(u32 battler, s32 hp);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageAndFuryCutter(void);
u8 AtkCanceller_UnableToUseMove(void);
u8 AtkCanceller_UnableToUseMove2(void);
bool8 HasNoMonsToSwitch(u8 battlerId, u8 r1, u8 r2);
u8 TryWeatherFormChange(u8 battlerId);
bool32 TryChangeBattleWeather(u8 battler, u32 weatherEnumId, bool32 viaAbility);
u8 AbilityBattleEffects(u8 caseID, u8 battlerId, u16 ability, u8 special, u16 moveArg);
u32 GetBattlerAbility(u8 battlerId);
u32 IsAbilityOnSide(u32 battlerId, u32 ability);
u32 IsAbilityOnOpposingSide(u32 battlerId, u32 ability);
u32 IsAbilityOnField(u32 ability);
u32 IsAbilityOnFieldExcept(u32 battlerId, u32 ability);
u32 IsAbilityPreventingEscape(u32 battlerId);
bool32 CanBattlerEscape(u32 battlerId);
void BattleScriptExecute(const u8* BS_ptr);
void BattleScriptPushCursorAndCallback(const u8* BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u32 SetRandomTarget(u32 battlerId);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
u32 GetBattlerHoldEffect(u8 battlerId, bool32 checkNegating);
u32 GetBattlerHoldEffectParam(u8 battlerId);
bool32 IsMoveMakingContact(u16 move, u8 battlerAtk);
bool32 IsBattlerGrounded(u8 battlerId);
bool32 IsBattlerAlive(u8 battlerId);
u8 GetBattleMonMoveSlot(struct BattlePokemon *battleMon, u16 move);
u32 GetBattlerWeight(u8 battlerId);
s32 CalculateMoveDamage(u16 move, u8 battlerAtk, u8 battlerDef, u8 moveType, s32 fixedBasePower, bool32 isCrit, bool32 randomFactor, bool32 updateFlags);
u16 CalcTypeEffectivenessMultiplier(u16 move, u8 moveType, u8 battlerAtk, u8 battlerDef, bool32 recordAbilities);
u16 CalcPartyMonTypeEffectivenessMultiplier(u16 move, u16 speciesDef, u16 abilityDef);
u16 GetTypeModifier(u8 atkType, u8 defType);
s32 GetStealthHazardDamage(u8 hazardType, u8 battlerId);
u16 GetMegaEvolutionSpecies(u16 preEvoSpecies, u16 heldItemId);
u16 GetWishMegaEvolutionSpecies(u16 preEvoSpecies, u16 moveId1, u16 moveId2, u16 moveId3, u16 moveId4);
bool32 CanMegaEvolve(u8 battlerId);
void UndoMegaEvolution(u32 monId);
void UndoFormChange(u32 monId, u32 side);
bool32 DoBattlersShareType(u32 battler1, u32 battler2);
bool32 CanBattlerGetOrLoseItem(u8 battlerId, u16 itemId);
struct Pokemon *GetIllusionMonPtr(u32 battlerId);
void ClearIllusionMon(u32 battlerId);
bool32 SetIllusionMon(struct Pokemon *mon, u32 battlerId);
bool8 ShouldGetStatBadgeBoost(u16 flagId, u8 battlerId);
u8 GetBattleMoveSplit(u32 moveId);
bool32 CanSleep(u8 battlerId);
bool32 CanBePoisoned(u8 battlerId);
bool32 CanBeBurned(u8 battlerId);
bool32 CanBeParalyzed(u8 battlerId);
bool32 CanBeFrozen(u8 battlerId);
bool32 CanBeConfused(u8 battlerId);
bool32 IsBattlerTerrainAffected(u8 battlerId, u32 terrainFlag);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1
# 9 "include/battle_script_commands.h"
s32 CalcCritChanceStage(u8 battlerAtk, u8 battlerDef, u32 move, bool32 recordAbility);
u32 GetTotalAccuracy(u32 battlerAtk, u32 battlerDef, u32 move);
u8 GetBattlerTurnOrderNum(u8 battlerId);
bool32 NoAliveMonsForEitherParty(void);
void SetMoveEffect(bool32 primary, u32 certain);
bool32 CanBattlerSwitch(u32 battlerId);
void BattleDestroyYesNoCursorAt(u8 cursorPosition);
void BattleCreateYesNoCursorAt(u8 cursorPosition);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);
bool32 DoesSubstituteBlockMove(u8 battlerAtk, u8 battlerDef, u32 move);
bool32 DoesDisguiseBlockMove(u8 battlerAtk, u8 battlerDef, u32 move);
bool32 CanPoisonType(u8 battlerAttacker, u8 battlerTarget);
bool32 CanParalyzeType(u8 battlerAttacker, u8 battlerTarget);
bool32 CanUseLastResort(u8 battlerId);
u32 IsFlowerVeilProtected(u32 battler);
u32 IsLeafGuardProtected(u32 battler);
bool32 IsShieldsDownProtected(u32 battler);
u32 IsAbilityStatusProtected(u32 battler);

extern void (* const gBattleScriptingCommandsTable[])(void);
extern const u8 gBattlePalaceNatureToMoveGroupLikelihood[25][4];
# 10 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1



enum
{
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

void GetAIPartyIndexes(u32 battlerId, s32 *firstId, s32 *lastId);
void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 11 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
u16 ChooseMoveAndTargetInBattlePalace(void);
void sub_805D714(struct Sprite *sprite);
void sub_805D770(struct Sprite *sprite, bool8 arg1);
void sub_805D7AC(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 mplay_80342A4(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void nullsub_23(void);
void nullsub_24(u16 species);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPic(u16 backPicId, u8 battlerId);
void nullsub_25(u8 arg0);
void FreeTrainerFrontPicPalette(u16 frontPicId);
void sub_805DFFC(void);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state1, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 attacker, u8 target, bool8 notTransform, bool32 megaEvo);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
u8 GetMonHPBarLevel(struct Pokemon *mon);
void HandleBattleLowHpMusicChange(void);
void sub_805EB9C(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void sub_805EF14(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 12 "include/battle.h" 2
# 1 "include/battle_util2.h" 1



void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 battler);
void SwitchPartyOrderInGameMulti(u8 battler, u8 arg1);
u32 sub_805725C(u8 battler);
# 13 "include/battle.h" 2
# 1 "include/battle_bg.h" 1



void BattleInitBgsAndWindows(void);
void InitBattleBgsVideo(void);
void LoadBattleMenuWindowGfx(void);
void DrawMainBattleBackground(void);
void LoadBattleTextboxAndBackground(void);
void InitLinkBattleVsScreen(u8 taskId);
void DrawBattleEntryBackground(void);
bool8 LoadChosenBattleElement(u8 caseId);
void DrawTerrainTypeBattleBackground(void);
# 14 "include/battle.h" 2
# 1 "include/pokeball.h" 1



enum
{
    BALL_POKE,
    BALL_GREAT,
    BALL_SAFARI,
    BALL_ULTRA,
    BALL_MASTER,
    BALL_NET,
    BALL_DIVE,
    BALL_NEST,
    BALL_REPEAT,
    BALL_TIMER,
    BALL_LUXURY,
    BALL_PREMIER,
    BALL_LEVEL,
    BALL_LURE,
    BALL_MOON,
    BALL_FRIEND,
    BALL_LOVE,
    BALL_HEAVY,
    BALL_FAST,
    BALL_SPORT,
    BALL_DUSK,
    BALL_QUICK,
    BALL_HEAL,
    BALL_CHERISH,
    BALL_PARK,
    BALL_DREAM,
    BALL_BEAST,
    POKEBALL_COUNT
};

enum {
    BALL_AFFINE_ANIM_0,
    BALL_ROTATE_RIGHT,
    BALL_ROTATE_LEFT,
    BALL_AFFINE_ANIM_3,
    BALL_AFFINE_ANIM_4
};

extern const struct SpriteTemplate gBallSpriteTemplates[];




u8 DoPokeballSendOutAnimation(s16 pan, u8 kindOfThrow);
void CreatePokeballSpriteToReleaseMon(u8 monSpriteId, u8 battler, u8 x, u8 y, u8 oamPriority, u8 subpriortiy, u8 g, u32 h, u16 species);
u8 CreateTradePokeballSprite(u8 a, u8 b, u8 x, u8 y, u8 oamPriority, u8 subPriority, u8 g, u32 h);
void sub_8076918(u8 battler);
void DoHitAnimHealthboxEffect(u8 battler);
void LoadBallGfx(u8 ballId);
void FreeBallGfx(u8 ballId);
# 15 "include/battle.h" 2
# 1 "include/battle_debug.h" 1





void CB2_BattleDebugMenu(void);
# 16 "include/battle.h" 2
# 57 "include/battle.h"
struct ResourceFlags
{
    u32 flags[4];
};
# 69 "include/battle.h"
struct DisableStruct
{
    u32 transformedMonPersonality;
    u16 disabledMove;
    u16 encoredMove;
    u8 protectUses;
    u8 stockpileCounter;
    s8 stockpileDef;
    s8 stockpileSpDef;
    s8 stockpileBeforeDef;
    s8 stockpileBeforeSpDef;
    u8 substituteHP;
    u8 disableTimer:4;
    u8 disableTimerStartValue:4;
    u8 encoredMovePos;
    u8 encoreTimer:4;
    u8 encoreTimerStartValue:4;
    u8 perishSongTimer:4;
    u8 perishSongTimerStartValue:4;
    u8 furyCutterCounter;
    u8 rolloutTimer:4;
    u8 rolloutTimerStartValue:4;
    u8 chargeTimer:4;
    u8 chargeTimerStartValue:4;
    u8 tauntTimer:4;
    u8 tauntTimer2:4;
    u8 battlerPreventingEscape;
    u8 battlerWithSureHit;
    u8 isFirstTurn;
    u8 truantCounter:1;
    u8 truantSwitchInHack:1;
    u8 mimickedMoves:4;
    u8 rechargeTimer;
    u8 autotomizeCount;
    u8 slowStartTimer;
    u8 embargoTimer;
    u8 magnetRiseTimer;
    u8 telekinesisTimer;
    u8 healBlockTimer;
    u8 laserFocusTimer;
    u8 throatChopTimer;
    u8 usedMoves:4;
    u8 wrapTurns;
};

struct ProtectStruct
{
    u32 protected:1;
    u32 spikyShielded:1;
    u32 kingsShielded:1;
    u32 banefulBunkered:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 prlzImmobility:1;
    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeFlag:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;
    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 palaceUnableToUseMove:1;
    u32 usesBouncedMove:1;
    u32 usedHealBlockedMove:1;
    u32 usedGravityPreventedMove:1;
    u32 powderSelfDmg:1;
    u32 usedThroatChopPreventedMove:1;
    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
};

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite: 1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 flag40:1;
    u8 focusBanded:1;
    u8 focusSashed:1;
    u8 sturdied:1;
    u8 stormDrainRedirected:1;
    u8 switchInAbilityDone:1;
    u8 switchInItemDone:1;
    u8 instructedChosenTarget:3;
    u8 berryReduced:1;
    u8 gemBoost:1;
    u8 gemParam;
    u8 damagedMons:4;
    u8 dancerUsedMove:1;
    u8 dancerOriginalTarget:3;
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u8 changedStatsBattlerId;
};

struct SideTimer
{
    u8 reflectTimer;
    u8 reflectBattlerId;
    u8 lightscreenTimer;
    u8 lightscreenBattlerId;
    u8 mistTimer;
    u8 mistBattlerId;
    u8 safeguardTimer;
    u8 safeguardBattlerId;
    u8 followmeTimer;
    u8 followmeTarget;
    u8 spikesAmount;
    u8 toxicSpikesAmount;
    u8 stealthRockAmount;
    u8 stickyWebAmount;
    u8 auroraVeilTimer;
    u8 auroraVeilBattlerId;
    u8 tailwindTimer;
    u8 tailwindBattlerId;
    u8 luckyChantTimer;
    u8 luckyChantBattlerId;
};

struct FieldTimer
{
    u8 mudSportTimer;
    u8 waterSportTimer;
    u8 wonderRoomTimer;
    u8 magicRoomTimer;
    u8 trickRoomTimer;
    u8 grassyTerrainTimer;
    u8 mistyTerrainTimer;
    u8 electricTerrainTimer;
    u8 psychicTerrainTimer;
    u8 echoVoiceCounter;
    u8 gravityTimer;
    u8 fairyLockTimer;
};

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

struct AI_SavedBattleMon
{
    u16 ability;
    u16 moves[4];
    u16 heldItem;
    u16 species;
};

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    s32 simulatedDmg[4][4][4];
    struct AI_SavedBattleMon saved[4];
    bool8 switchMon;
};



struct BattleHistory
{
    u16 abilities[4];
    u8 itemEffects[4];
    u16 usedMoves[4][4];
    u16 moveHistory[4][3];
    u8 moveHistoryIndex[4];
    u16 trainerItems[4];
    u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBase* secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack* battleScriptsStack;
    struct BattleCallbacksStack* battleCallbackStack;
    struct StatsArray* beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
    u8 bufferA[4][0x200];
    u8 bufferB[4][0x200];
};

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u16 playerMon1Species;
    u8 playerMon1Name[10 + 1];
    u8 battleTurnCounter;
    u8 playerMon2Name[10 + 1];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10 + 1];
    u8 filler35;
    u8 catchAttempts[POKEBALL_COUNT - 1];
};

struct BattleTv_Side
{
    u32 spikesMonId:3;
    u32 reflectMonId:3;
    u32 lightScreenMonId:3;
    u32 safeguardMonId:3;
    u32 mistMonId:3;
    u32 futureSightMonId:3;
    u32 doomDesireMonId:3;
    u32 perishSongMonId:3;
    u32 wishMonId:3;
    u32 grudgeMonId:3;
    u32 usedMoveSlot:2;
    u32 spikesMoveSlot:2;
    u32 reflectMoveSlot:2;
    u32 lightScreenMoveSlot:2;
    u32 safeguardMoveSlot:2;
    u32 mistMoveSlot:2;
    u32 futureSightMoveSlot:2;
    u32 doomDesireMoveSlot:2;
    u32 perishSongMoveSlot:2;
    u32 wishMoveSlot:2;
    u32 grudgeMoveSlot:2;
    u32 destinyBondMonId:3;
    u32 destinyBondMoveSlot:2;
    u32 faintCause:4;
    u32 faintCauseMonId:3;
    u32 explosion:1;
    u32 explosionMoveSlot:2;
    u32 explosionMonId:3;
    u32 perishSong:1;
};

struct BattleTv_Position
{
    u32 curseMonId:3;
    u32 leechSeedMonId:3;
    u32 nightmareMonId:3;
    u32 wrapMonId:3;
    u32 attractMonId:3;
    u32 confusionMonId:3;
    u32 curseMoveSlot:2;
    u32 leechSeedMoveSlot:2;
    u32 nightmareMoveSlot:2;
    u32 wrapMoveSlot:2;
    u32 attractMoveSlot:2;
    u32 confusionMoveSlot:2;
    u32 waterSportMoveSlot:2;
    u32 waterSportMonId:3;
    u32 mudSportMonId:3;
    u32 mudSportMoveSlot:2;
    u32 ingrainMonId:3;
    u32 ingrainMoveSlot:2;
    u32 attackedByMonId:3;
    u32 attackedByMoveSlot:2;
};

struct BattleTv_Mon
{
    u32 psnMonId:3;
    u32 badPsnMonId:3;
    u32 brnMonId:3;
    u32 prlzMonId:3;
    u32 slpMonId:3;
    u32 frzMonId:3;
    u32 psnMoveSlot:2;
    u32 badPsnMoveSlot:2;
    u32 brnMoveSlot:2;
    u32 prlzMoveSlot:2;
    u32 slpMoveSlot:2;
    u32 frzMoveSlot:2;
};

struct BattleTv
{
    struct BattleTv_Mon mon[2][6];
    struct BattleTv_Position pos[2][2];
    struct BattleTv_Side side[2];
};

struct BattleTvMovePoints
{
    s16 points[2][6 * 4];
};

struct MegaEvolutionData
{
    u8 toEvolve;
    u8 evolvedPartyIds[2];
    bool8 alreadyEvolved[4];
    u16 evolvedSpecies[4];
    u16 playerEvolvedSpecies;
    u8 battlerId;
    bool8 playerSelect;
    u8 triggerSpriteId;
    bool8 isWishMegaEvo;
};

struct Illusion
{
    u8 on;
    u8 set;
    u8 broken;
    u8 partyId;
    struct Pokemon *mon;
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 turnCountersTracker;
    u16 wrappedMove[4];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;
    u16 expValue;
    u8 field_52;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 field_58[4];
    u8 monToSwitchIntoId[4];
    u8 field_60[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 safariGoNearCounter;
    u8 safariPkblThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 field_8B;
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 field_91;
    u8 palaceFlags;
    u8 field_93;
    u8 wallyBattleState;
    u8 wallyMovesState;
    u8 wallyWaitFrames;
    u8 wallyMoveFrames;
    u16 lastTakenMove[4];
    u16 hpOnSwitchout[2];
    u32 savedBattleTypeFlags;
    u16 abilityPreventingSwitchout;
    u8 hpScale;
    u16 synchronizeMoveEffect;
    bool8 anyMonHasTransformed;
    void (*savedCallback)(void);
    u16 usedHeldItems[4];
    u16 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 arenaTurnCounter;
    u8 turnSideTracker;
    u8 givenExpMons;
    u16 lastTakenMoveFrom[4][4];
    u16 castformPalette[4][16];
    u8 field_180;
    u8 field_181;
    u8 field_182;
    u8 field_183;
    struct BattleEnigmaBerry battleEnigmaBerry;
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    bool8 overworldWeatherDone;
    u8 atkCancellerTracker;
    struct BattleTvMovePoints tvMovePoints;
    struct BattleTv tv;
    u8 AI_monToSwitchIntoId[4];
    s8 arenaMindPoints[2];
    s8 arenaSkillPoints[2];
    u16 arenaStartHp[2];
    u8 arenaLostPlayerMons;
    u8 arenaLostOpponentMons;
    u8 alreadyStatusedMoveAttempt;
    u8 debugBattler;
    u8 magnitudeBasePower;
    u8 presentBasePower;
    u8 roostTypes[4][3];
    u8 savedBattlerTarget;
    bool8 ateBoost[4];
    u8 activeAbilityPopUps;
    bool8 throwingPokeBall;
    struct MegaEvolutionData mega;
    const u8 *trainerSlideMsg;
    bool8 trainerSlideLowHpMsgDone;
    u8 introState;
    u8 ateBerry[2];
    u8 stolenStats[6 + 2];
    u8 lastMoveFailed;
    u8 lastMoveTarget[4];
    u8 debugHoldEffects[4];
    u16 tracedAbility[4];
    u16 hpBefore[4];
    bool8 spriteIgnore0Hp;
    struct Illusion illusion[4];
    s8 aiFinalScore[4][4][4];
    u8 soulheartBattlerId;
    u8 friskedBattler;
    bool8 friskedAbility;
    u8 sameMoveTurns[4];
    u16 moveEffect2;
    u16 changedSpecies[6];
 u8 abilityPopUpSpriteIds[4][2];
};
# 580 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    bool8 expOnCatch;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 moveendState;
    u8 savedStatChanger;
    u8 shiftSwitched;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 getexpState;
    u8 battleStyle;
    u8 drawlvlupboxState;
    u8 learnMoveState;
    u8 savedBattler;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 levelUpHP;
    u8 windowsType;
    u8 multiplayerId;
    u8 specialTrainerBattleType;
    bool8 monCaught;
    s32 savedDmg;
    u16 savedMoveEffect;
    u16 moveEffect;
    u16 multihitMoveEffect;
    u8 illusionNickHack;
    bool8 fixedPopup;
};




struct BattleSpriteInfo
{
    u16 invisible:1;
    u16 lowHpSong:1;
    u16 behindSubstitute:1;
    u16 flag_x8:1;
    u16 hpNumbersNoBars:1;
    u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId:6;
    u8 isCriticalCapture:1;
    u8 criticalCaptureSuccess:1;
    u8 field_9_x1:1;
    u8 wildMonInvisible:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 numBallParticles;
    u8 field_B;
    s16 ballSubpx;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown:1;
    u8 healthboxIsBouncing:1;
    u8 battlerIsBouncing:1;
    u8 ballAnimActive:1;
    u8 statusAnimActive:1;
    u8 animFromTableActive:1;
    u8 specialAnimActive:1;
    u8 triedShinyMonAnim:1;
    u8 finishedShinyMonAnim:1;
    u8 field_1_x1E:4;
    u8 field_1_x20:1;
    u8 field_1_x40:1;
    u8 field_1_x80:1;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 field_5;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
 u8 oddFrame;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};



struct MonSpritesGfx
{
    void* firstDecompressed;
    void* sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage field_74[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *buffer;
};


extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern u8 gDisplayedStringBattle[400];
extern u8 gBattleTextBuff1[16];
extern u8 gBattleTextBuff2[16];
extern u8 gBattleTextBuff3[16];
extern u32 gBattleTypeFlags;
extern u8 gBattleTerrain;
extern u32 gUnknown_02022FF4;
extern u8 *gUnknown_0202305C;
extern u8 *gUnknown_02023060;
extern u8 gActiveBattler;
extern u32 gBattleControllerExecFlags;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern u8 gBattlerPositions[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gCurrentTurnActionNumber;
extern u8 gCurrentActionFuncId;
extern struct BattlePokemon gBattleMons[4];
extern u8 gBattlerSpriteIds[4];
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern s32 gBattleMoveDamage;
extern s32 gHpDealt;
extern s32 gTakenDmg[4];
extern u16 gLastUsedItem;
extern u16 gLastUsedAbility;
extern u8 gBattlerAttacker;
extern u8 gBattlerTarget;
extern u8 gBattlerFainted;
extern u8 gEffectBattler;
extern u8 gPotentialItemEffectBattler;
extern u8 gAbsentBattlerFlags;
extern u8 gIsCriticalHit;
extern u8 gMultiHitCounter;
extern const u8 *gBattlescriptCurrInstr;
extern u8 gChosenActionByBattler[4];
extern const u8 *gSelectionBattleScripts[4];
extern const u8 *gPalaceSelectionBattleScripts[4];
extern u16 gLastPrintedMoves[4];
extern u16 gLastMoves[4];
extern u16 gLastLandedMoves[4];
extern u16 gLastHitByType[4];
extern u16 gLastResultingMoves[4];
extern u16 gLockedMoves[4];
extern u16 gLastUsedMove;
extern u8 gLastHitBy[4];
extern u16 gChosenMoveByBattler[4];
extern u16 gMoveResultFlags;
extern u32 gHitMarker;
extern u8 gTakenDmgByBattler[4];
extern u8 gUnknown_0202428C;
extern u32 gSideStatuses[2];
extern struct SideTimer gSideTimers[2];
extern u32 gStatuses3[4];
extern struct DisableStruct gDisableStructs[4];
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gRandomTurnNumber;
extern u8 gBattleCommunication[0x8];
extern u8 gBattleOutcome;
extern struct ProtectStruct gProtectStructs[4];
extern struct SpecialStatus gSpecialStatuses[4];
extern u16 gBattleWeather;
extern struct WishFutureKnock gWishFutureKnock;
extern u16 gIntroSlideFlags;
extern u8 gSentPokesToOpponent[2];
extern u16 gExpShareExp;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern struct BattleScripting gBattleScripting;
extern struct BattleStruct *gBattleStruct;
extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;
extern struct BattleResources *gBattleResources;
extern u8 gActionSelectionCursor[4];
extern u8 gMoveSelectionCursor[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u8 gBattlerInMenuId;
extern bool8 gDoingBattleAnim;
extern u32 gTransformedPersonalities[4];
extern u8 gPlayerDpadHoldFrames;
extern struct BattleSpriteData *gBattleSpritesDataPtr;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern struct BattleHealthboxInfo *gUnknown_020244D8;
extern struct BattleHealthboxInfo *gUnknown_020244DC;
extern u16 gBattleMovePower;
extern u16 gMoveToLearn;
extern u8 gBattleMonForms[4];
extern u32 gFieldStatuses;
extern struct FieldTimer gFieldTimers;
extern u8 gBattlerAbility;
extern u16 gPartnerSpriteId;

extern void (*gPreBattleCallback1)(void);
extern void (*gBattleMainFunc)(void);
extern struct BattleResults gBattleResults;
extern u8 gLeveledUpInBattle;
extern void (*gBattlerControllerFuncs[4])(void);
extern u8 gHealthboxSpriteIds[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u8 gUnknown_03005D7C[4];
# 12 "src/battle_tower.c" 2
# 1 "include/frontier_util.h" 1



void CallFrontierUtilFunc(void);
u8 GetFrontierBrainStatus(void);
void CopyFrontierTrainerText(u8 whichText, u16 trainerId);
void ResetWinStreaks(void);
u32 GetCurrentFacilityWinStreak(void);
void ResetFrontierTrainerIds(void);
u8 GetPlayerSymbolCountForFacility(u8 facility);
void ShowRankingHallRecordsWindow(void);
void ScrollRankingHallRecordsWindow(void);
void ClearRankingHallRecords(void);
void SaveGameFrontier(void);
u8 GetFrontierBrainTrainerPicIndex(void);
u8 GetFrontierBrainTrainerClass(void);
void CopyFrontierBrainTrainerName(u8 *dst);
bool8 IsFrontierBrainFemale(void);
void SetFrontierBrainObjEventGfx_2(void);
void CreateFrontierBrainPokemon(void);
u16 GetFrontierBrainMonSpecies(u8 monId);
void SetFrontierBrainObjEventGfx(u8 facility);
u16 GetFrontierBrainMonMove(u8 monId, u8 moveSlotId);
u8 GetFrontierBrainMonNature(u8 monId);
u8 GetFrontierBrainMonEvs(u8 monId, u8 evStatId);
s32 GetFronterBrainSymbol(void);

extern const u16 gFrontierBannedSpecies[];
# 13 "src/battle_tower.c" 2
# 1 "include/strings.h" 1




extern const u8 gText_ExpandedPlaceholder_Empty[];
extern const u8 gText_ExpandedPlaceholder_Kun[];
extern const u8 gText_ExpandedPlaceholder_Chan[];
extern const u8 gText_ExpandedPlaceholder_Sapphire[];
extern const u8 gText_ExpandedPlaceholder_Ruby[];
extern const u8 gText_ExpandedPlaceholder_Emerald[];
extern const u8 gText_ExpandedPlaceholder_Aqua[];
extern const u8 gText_ExpandedPlaceholder_Magma[];
extern const u8 gText_ExpandedPlaceholder_Archie[];
extern const u8 gText_ExpandedPlaceholder_Maxie[];
extern const u8 gText_ExpandedPlaceholder_Kyogre[];
extern const u8 gText_ExpandedPlaceholder_Groudon[];
extern const u8 gText_ExpandedPlaceholder_Brendan[];
extern const u8 gText_ExpandedPlaceholder_May[];

extern const u8 gText_FromSpace[];

extern const u8 gText_Lv50[];
extern const u8 gText_OpenLevel[];

extern const u8 gText_Mom[];
extern const u8 gText_Dad[];

extern const u8 gText_GetsAPokeBlockQuestion[];
extern const u8 gText_WontEatAnymore[];
extern const u8 gText_WasEnhanced[];
extern const u8 gText_NothingChanged[];
extern const u8 gText_NatureSlash[];

extern const u8 gText_Cool[];
extern const u8 gText_Beauty[];
extern const u8 gText_Cute[];
extern const u8 gText_Smart[];
extern const u8 gText_Tough[];

extern const u8 gText_Normal[];
extern const u8 gText_Super[];
extern const u8 gText_Hyper[];
extern const u8 gText_Master[];

extern const u8 gText_Cool2[];
extern const u8 gText_Beauty2[];
extern const u8 gText_Cute2[];
extern const u8 gText_Smart2[];
extern const u8 gText_Tough2[];

extern const u8 gText_Items[];
extern const u8 gText_Key_Items[];
extern const u8 gText_Poke_Balls[];
extern const u8 gText_TMs_Hms[];
extern const u8 gText_Berries2[];

extern const u8 gText_Single2[];
extern const u8 gText_Double2[];
extern const u8 gText_Multi[];
extern const u8 gText_MultiLink[];

extern const u8 gText_Single[];
extern const u8 gText_Double[];

extern const u8 gText_Spicy[];
extern const u8 gText_Dry[];
extern const u8 gText_Sweet[];
extern const u8 gText_Bitter[];
extern const u8 gText_Sour[];

extern const u8 gText_StowCase[];
extern const u8 gText_LvVar1[];

extern const u8 gText_Spicy2[];
extern const u8 gText_Dry2[];
extern const u8 gText_Sweet2[];
extern const u8 gText_Bitter2[];
extern const u8 gText_Sour2[];

extern const u8 gText_Excellent[];
extern const u8 gText_VeryGood[];
extern const u8 gText_Good[];
extern const u8 gText_SoSo[];
extern const u8 gText_Bad[];
extern const u8 gText_TheWorst[];

extern const u8 Roulette_Text_ControlsInstruction[];
extern const u8 Roulette_Text_KeepPlaying[];
extern const u8 Roulette_Text_Jackpot[];
extern const u8 Roulette_Text_ItsAHit[];
extern const u8 Roulette_Text_NothingDoing[];
extern const u8 Roulette_Text_YouveWonXCoins[];
extern const u8 Roulette_Text_BoardWillBeCleared[];
extern const u8 Roulette_Text_CoinCaseIsFull[];
extern const u8 Roulette_Text_NoCoinsLeft[];
extern const u8 Roulette_Text_PlayMinimumWagerIsX[];
extern const u8 Roulette_Text_SpecialRateTable[];
extern const u8 Roulette_Text_NotEnoughCoins[];

extern const u8 gText_Slots[];
extern const u8 gText_Roulette[];
extern const u8 gText_Jackpot[];

extern const u8 gText_YouDontHaveThreeCoins[];
extern const u8 gText_QuitTheGame[];
extern const u8 gText_YouveGot9999Coins[];
extern const u8 gText_YouveRunOutOfCoins[];
extern const u8 gText_ReelTimeHelp[];

extern const u8 gText_First[];
extern const u8 gText_Second[];
extern const u8 gText_Third[];

extern const u8 gText_NoDecorations[];
extern const u8 gText_NoDecorationsInUse[];

extern const u8 gText_Exit[];
extern const u8 gText_Cancel[];

extern const u8 gText_ThrowAwayVar1[];
extern const u8 gText_Var1ThrownAway[];

extern const u8 gText_Color161Shadow161[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_CantPlaceInRoom[];
extern const u8 gText_NoMoreDecorations[];
extern const u8 gText_NoMoreDecorations2[];
extern const u8 gText_InUseAlready[];
extern const u8 gText_CancelDecorating[];
extern const u8 gText_PlaceItHere[];
extern const u8 gText_CantBePlacedHere[];
extern const u8 gText_DecorationReturnedToPC[];
extern const u8 gText_StopPuttingAwayDecorations[];
extern const u8 gText_ReturnDecorationToPC[];
extern const u8 gText_NoDecorationHere[];
extern const u8 gText_DecorationWillBeDiscarded[];
extern const u8 gText_CantThrowAwayInUse[];
extern const u8 gText_DecorationThrownAway[];

extern const u8 gText_PokeBalls[];
extern const u8 gText_Berries[];
extern const u8 gText_Berry[];

extern const u8 gText_Desk[];
extern const u8 gText_Chair[];
extern const u8 gText_Plant[];
extern const u8 gText_Ornament[];
extern const u8 gText_Mat[];
extern const u8 gText_Poster[];

extern const u8 gText_PutOutSelectedDecorItem[];
extern const u8 gText_StoreChosenDecorInPC[];
extern const u8 gText_ThrowAwayUnwantedDecors[];
extern const u8 gText_Doll[];
extern const u8 gText_Cushion[];
extern const u8 gText_Decorate[];
extern const u8 gText_PutAway[];
extern const u8 gText_Toss2[];
extern const u8 gText_Hoenn[];
extern const u8 gText_Ferry[];
extern const u8 gText_SecretBase[];
extern const u8 gText_Hideout[];
extern const u8 gText_FlyToWhere[];
extern const u8 gText_PokemonLeague[];
extern const u8 gText_PokemonCenter[];
extern const u8 gText_ApostropheSBase[];
extern const u8 gText_NoRegistry[];
extern const u8 gText_OkayToDeleteFromRegistry[];
extern const u8 gText_RegisteredDataDeleted[];
extern const u8 gText_DelRegist[];
extern const u8 gText_CommErrorEllipsis[];
extern const u8 gText_MoveCloserToLinkPartner[];
extern const u8 gText_CommErrorCheckConnections[];
extern const u8 gText_ABtnTitleScreen[];
extern const u8 gText_ABtnRegistrationCounter[];
extern const u8 gText_MixingRecords[];
extern const u8 gText_RecordMixingComplete[];
extern const u8 gText_EmptyString2[];
extern const u8 gText_Confirm3[];
extern const u8 gText_Cancel4[];
extern const u8 gText_IsThisTheCorrectTime[];
extern const u8 gText_PkmnFainted3[];
extern const u8 gText_Coins[];
extern const u8 gText_Silver[];
extern const u8 gText_Gold[];

extern const u8 gText_Var1AteTheVar2[];
extern const u8 gText_Var1HappilyAteVar2[];
extern const u8 gText_Var1DisdainfullyAteVar2[];

extern const u8 gText_RedPokeblock[];
extern const u8 gText_BluePokeblock[];
extern const u8 gText_PinkPokeblock[];
extern const u8 gText_GreenPokeblock[];
extern const u8 gText_YellowPokeblock[];
extern const u8 gText_PurplePokeblock[];
extern const u8 gText_IndigoPokeblock[];
extern const u8 gText_BrownPokeblock[];
extern const u8 gText_LiteBluePokeblock[];
extern const u8 gText_OlivePokeblock[];
extern const u8 gText_GrayPokeblock[];
extern const u8 gText_BlackPokeblock[];
extern const u8 gText_WhitePokeblock[];
extern const u8 gText_GoldPokeblock[];

extern const u8 gMenuText_Use[];
extern const u8 gMenuText_Toss[];
extern const u8 gMenuText_Give[];
extern const u8 gMenuText_Give2[];
extern const u8 gMenuText_Register[];
extern const u8 gMenuText_Check[];
extern const u8 gMenuText_Walk[];
extern const u8 gMenuText_Deselect[];
extern const u8 gMenuText_CheckTag[];
extern const u8 gMenuText_Confirm[];
extern const u8 gMenuText_Show[];
extern const u8 gMenuText_Give2[];

extern const u8 gText_WithdrawPokemon[];
extern const u8 gText_WithdrawMonDescription[];
extern const u8 gText_DepositPokemon[];
extern const u8 gText_DepositMonDescription[];
extern const u8 gText_MovePokemon[];
extern const u8 gText_MoveMonDescription[];
extern const u8 gText_MoveItems[];
extern const u8 gText_MoveItemsDescription[];
extern const u8 gText_SeeYa[];
extern const u8 gText_SeeYaDescription[];

extern const u8 gText_EggNickname[];
extern const u8 gText_Pokemon[];
extern const u8 gText_InParty[];
extern const u8 gText_InGameClockUsable[];


extern const u8 gText_Day[];
extern const u8 gText_Colon3[];
extern const u8 gText_Confirm2[];
extern const u8 gText_PresentTime[];
extern const u8 gText_PreviousTime[];
extern const u8 gText_ResetRTCConfirmCancel[];
extern const u8 gText_NoSaveFileCantSetTime[];
extern const u8 gText_PleaseResetTime[];
extern const u8 gText_ClockHasBeenReset[];
extern const u8 gText_SaveCompleted[];
extern const u8 gText_SaveFailed[];


extern const u8 gText_MenuPokedex[];
extern const u8 gText_MenuPokemon[];
extern const u8 gText_MenuBag[];
extern const u8 gText_MenuPokenav[];
extern const u8 gText_MenuPlayer[];
extern const u8 gText_MenuSave[];
extern const u8 gText_MenuOption[];
extern const u8 gText_MenuExit[];
extern const u8 gText_MenuRetire[];
extern const u8 gText_MenuRest[];
extern const u8 gText_Floor1[];
extern const u8 gText_Floor2[];
extern const u8 gText_Floor3[];
extern const u8 gText_Floor4[];
extern const u8 gText_Floor5[];
extern const u8 gText_Floor6[];
extern const u8 gText_Floor7[];
extern const u8 gText_Peak[];
extern const u8 gText_SafariBallStock[];
extern const u8 gText_BattlePyramidFloor[];

extern const u8 gText_MenuOptionPokedex[];
extern const u8 gText_MenuOptionPokemon[];
extern const u8 gText_MenuOptionBag[];
extern const u8 gText_MenuOptionPokenav[];
extern const u8 gText_MenuOptionSave[];
extern const u8 gText_MenuOptionOption[];
extern const u8 gText_MenuOptionExit[];


extern const u8 gText_ConfirmSave[];
extern const u8 gText_DifferentSaveFile[];
extern const u8 gText_AlreadySavedFile[];
extern const u8 gText_SavingDontTurnOff[];
extern const u8 gText_PlayerSavedGame[];
extern const u8 gText_SaveError[];
extern const u8 gText_SavingDontTurnOffPower[];
extern const u8 gText_SavingPlayer[];
extern const u8 gText_SavingBadges[];
extern const u8 gText_SavingPokedex[];
extern const u8 gText_SavingTime[];


extern const u8 gText_BattlePyramidConfirmRest[];
extern const u8 gText_BattlePyramidConfirmRetire[];


extern const u8 gText_TextSpeedSlow[];
extern const u8 gText_TextSpeedMid[];
extern const u8 gText_TextSpeedFast[];
extern const u8 gText_BattleSceneOn[];
extern const u8 gText_BattleSceneOff[];
extern const u8 gText_BattleStyleShift[];
extern const u8 gText_BattleStyleSet[];
extern const u8 gText_SoundMono[];
extern const u8 gText_SoundStereo[];
extern const u8 gText_FrameTypeNumber[];
extern const u8 gText_FrameType[];
extern const u8 gText_ButtonTypeNormal[];
extern const u8 gText_ButtonTypeLR[];
extern const u8 gText_ButtonTypeLEqualsA[];
extern const u8 gText_Option[];
extern const u8 gText_OptionMenu[];
extern const u8 gText_TextSpeed[];
extern const u8 gText_BattleScene[];
extern const u8 gText_BattleStyle[];
extern const u8 gText_Sound[];
extern const u8 gText_Frame[];
extern const u8 gText_OptionMenuCancel[];
extern const u8 gText_ButtonMode[];

extern const u8 gText_MaleSymbol[];
extern const u8 gText_FemaleSymbol[];

extern const u8 gText_SelectorArrow3[];
extern const u8 gText_YesNo[];


extern const u8 gText_SaveFileErased[];
extern const u8 gText_SaveFileCorrupted[];
extern const u8 gJPText_No1MSubCircuit[];
extern const u8 gText_BatteryRunDry[];
extern const u8 gText_MainMenuNewGame[];
extern const u8 gText_MainMenuOption[];
extern const u8 gText_MainMenuContinue[];
extern const u8 gText_MainMenuMysteryGift2[];
extern const u8 gText_MainMenuMysteryEvents[];
extern const u8 gText_MainMenuMysteryGift[];
extern const u8 gText_WirelessNotConnected[];
extern const u8 gText_MysteryGiftCantUse[];
extern const u8 gText_MysteryEventsCantUse[];
extern const u8 gText_Birch_Welcome[];
extern const u8 gText_ThisIsAPokemon[];
extern const u8 gText_Birch_MainSpeech[];
extern const u8 gText_Birch_AndYouAre[];
extern const u8 gText_Birch_BoyOrGirl[];
extern const u8 gText_Birch_WhatsYourName[];
extern const u8 gText_Birch_SoItsPlayer[];
extern const u8 gText_Birch_YourePlayer[];
extern const u8 gText_Birch_AreYouReady[];
extern const u8 gText_ContinueMenuPlayer[];
extern const u8 gText_ContinueMenuTime[];
extern const u8 gText_ContinueMenuPokedex[];
extern const u8 gText_ContinueMenuBadges[];
extern const u8 gText_BirchBoy[];
extern const u8 gText_BirchGirl[];
extern const u8 gText_DefaultNameStu[];
extern const u8 gText_DefaultNameMilton[];
extern const u8 gText_DefaultNameTom[];
extern const u8 gText_DefaultNameKenny[];
extern const u8 gText_DefaultNameReid[];
extern const u8 gText_DefaultNameJude[];
extern const u8 gText_DefaultNameJaxson[];
extern const u8 gText_DefaultNameEaston[];
extern const u8 gText_DefaultNameWalker[];
extern const u8 gText_DefaultNameTeru[];
extern const u8 gText_DefaultNameJohnny[];
extern const u8 gText_DefaultNameBrett[];
extern const u8 gText_DefaultNameSeth[];
extern const u8 gText_DefaultNameTerry[];
extern const u8 gText_DefaultNameCasey[];
extern const u8 gText_DefaultNameDarren[];
extern const u8 gText_DefaultNameLandon[];
extern const u8 gText_DefaultNameCollin[];
extern const u8 gText_DefaultNameStanley[];
extern const u8 gText_DefaultNameQuincy[];
extern const u8 gText_DefaultNameKimmy[];
extern const u8 gText_DefaultNameTiara[];
extern const u8 gText_DefaultNameBella[];
extern const u8 gText_DefaultNameJayla[];
extern const u8 gText_DefaultNameAllie[];
extern const u8 gText_DefaultNameLianna[];
extern const u8 gText_DefaultNameSara[];
extern const u8 gText_DefaultNameMonica[];
extern const u8 gText_DefaultNameCamila[];
extern const u8 gText_DefaultNameAubree[];
extern const u8 gText_DefaultNameRuthie[];
extern const u8 gText_DefaultNameHazel[];
extern const u8 gText_DefaultNameNadine[];
extern const u8 gText_DefaultNameTanja[];
extern const u8 gText_DefaultNameYasmin[];
extern const u8 gText_DefaultNameNicola[];
extern const u8 gText_DefaultNameLillie[];
extern const u8 gText_DefaultNameTerra[];
extern const u8 gText_DefaultNameLucy[];
extern const u8 gText_DefaultNameHalie[];

extern const u8 gText_BirchInTrouble[];
extern const u8 gText_ConfirmStarterChoice[];


extern const u8 gText_EventSafelyLoaded[];
extern const u8 gText_LoadErrorEndingSession[];
extern const u8 gText_PressAToLoadEvent[];
extern const u8 gText_LoadingEvent[];
extern const u8 gText_DontRemoveCableTurnOff[];
extern const u8 gText_LinkStandby2[];


extern const u8 gBerryFirmnessString_VerySoft[];
extern const u8 gBerryFirmnessString_Soft[];
extern const u8 gBerryFirmnessString_Hard[];
extern const u8 gBerryFirmnessString_VeryHard[];
extern const u8 gBerryFirmnessString_SuperHard[];
extern const u8 gText_BerryTag[];
extern const u8 gText_NumberVar1Var2[];
extern const u8 gText_SizeSlash[];
extern const u8 gText_Var1DotVar2[];
extern const u8 gText_ThreeMarks[];
extern const u8 gText_FirmSlash[];


extern const u8 gText_CloseBag[];
extern const u8 gText_ClearTo11Var1Clear5Var2[];
extern const u8 gText_NumberVar1Clear7Var2[];
extern const u8 gText_xVar1[];
extern const u8 gText_ReturnToVar1[];
extern const u8 gText_SelectorArrow2[];
extern const u8 gText_MoveVar1Where[];
extern const u8 gText_Var1IsSelected[];
extern const u8 gText_TossHowManyVar1s[];
extern const u8 gText_ConfirmTossItems[];
extern const u8 gText_ThrewAwayVar2Var1s[];
extern const u8 gText_CantWriteMail[];
extern const u8 gText_NoPokemon[];
extern const u8 gText_Var1CantBeHeld[];
extern const u8 gText_Var1CantBeHeldHere[];
extern const u8 gText_CantBuyKeyItem[];
extern const u8 gText_HowManyToSell[];
extern const u8 gText_ICanPayVar1[];
extern const u8 gText_TurnedOverVar1ForVar2[];
extern const u8 gText_DepositHowManyVar1[];
extern const u8 gText_CantStoreImportantItems[];
extern const u8 gText_DepositedVar2Var1s[];
extern const u8 gText_NoRoomForItems[];
extern const u8 gText_ThreeDashes[];


extern const u8 gText_PkmnHPRestoredByVar2[];
extern const u8 gText_CantBeUsedOnPkmn[];
extern const u8 gText_CancelParticipation[];
extern const u8 gText_PkmnWasGivenItem[];
extern const u8 gText_ReceivedItemFromPkmn[];
extern const u8 gText_PkmnAlreadyHoldingItemSwitch[];
extern const u8 gText_SwitchedPkmnItem[];
extern const u8 gText_BagFullCouldNotRemoveItem[];
extern const u8 gText_PkmnCantParticipate[];
extern const u8 gText_PkmnNotHolding[];
extern const u8 gText_ThrowAwayItem[];
extern const u8 gText_ItemThrownAway[];
extern const u8 gText_SendMailToPC[];
extern const u8 gText_MailSentToPC[];
extern const u8 gText_PCMailboxFull[];
extern const u8 gText_MailMessageWillBeLost[];
extern const u8 gText_MailTakenFromPkmn[];
extern const u8 gText_NoMoreThanVar1Pkmn[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OnlyPkmnForBattle[];
extern const u8 gJPText_AreYouSureYouWantToSpinTradeMon[];
extern const u8 gText_PauseUntilPress[];
extern const u8 gText_CantUseUntilNewBadge[];
extern const u8 gText_ReturnToHealingSpot[];
extern const u8 gText_EscapeFromHere[];
extern const u8 gText_PkmnCuredOfPoison[];
extern const u8 gText_PkmnWokeUp2[];
extern const u8 gText_PkmnBurnHealed[];
extern const u8 gText_PkmnThawedOut[];
extern const u8 gText_PkmnCuredOfParalysis[];
extern const u8 gText_PkmnGotOverInfatuation[];
extern const u8 gText_PkmnBecameHealthy[];
extern const u8 gText_HP3[];
extern const u8 gText_SpAtk3[];
extern const u8 gText_SpDef3[];
extern const u8 gText_PkmnBaseVar2StatIncreased[];
extern const u8 gText_MovesPPIncreased[];
extern const u8 gText_PPWasRestored[];
extern const u8 gText_WontHaveEffect[];
extern const u8 gText_PkmnSnappedOutOfConfusion[];
extern const u8 gText_PkmnFriendlyBaseVar2Fell[];
extern const u8 gText_PkmnFriendlyBaseVar2CantFall[];
extern const u8 gText_PkmnAdoresBaseVar2Fell[];
extern const u8 gText_PkmnAlreadyKnows[];
extern const u8 gText_PkmnCantLearnMove[];
extern const u8 gText_PkmnNeedsToReplaceMove[];
extern const u8 gText_PkmnLearnedMove3[];
extern const u8 gText_WhichMoveToForget[];
extern const u8 gText_12PoofForgotMove[];
extern const u8 gText_StopLearningMove2[];
extern const u8 gText_MoveNotLearned[];
extern const u8 gText_PkmnElevatedToLvVar2[];
extern const u8 gText_RemoveMailBeforeItem[];
extern const u8 gText_PkmnHoldingItemCantHoldMail[];
extern const u8 gText_MailTransferredFromMailbox[];
extern const u8 gText_CancelBattle[];
extern const u8 gText_ReturnToWaitingRoom[];
extern const u8 gText_CancelChallenge[];
extern const u8 gText_CantSwitchWithAlly[];
extern const u8 gText_PkmnHasNoEnergy[];
extern const u8 gText_EggCantBattle[];
extern const u8 gText_PkmnAlreadySelected[];
extern const u8 gText_PkmnAlreadyInBattle[];
extern const u8 gText_PkmnCantSwitchOut[];
extern const u8 gText_MaxHP[];
extern const u8 gText_Attack[];
extern const u8 gText_Defense[];
extern const u8 gText_SpAtk[];
extern const u8 gText_SpDef[];
extern const u8 gText_Speed[];
extern const u8 gText_Dash[];
extern const u8 gText_Plus[];
extern const u8 gText_Nickname[];
extern const u8 gText_CHALL[];
extern const u8 gText_GC[];
extern const u8 gText_SB[];


extern const u8 gText_CryOf[];
extern const u8 gText_SizeComparedTo[];
extern const u8 gText_PokedexRegistration[];
extern const u8 gText_NumberClear01[];
extern const u8 gText_5MarksPokemon[];
extern const u8 gText_UnkHeight[];
extern const u8 gText_UnkWeight[];
extern const u8 gText_HTHeight[];
extern const u8 gText_WTWeight[];
extern const u8 gText_SearchingPleaseWait[];
extern const u8 gText_SearchCompleted[];
extern const u8 gText_NoMatchingPkmnWereFound[];
extern const u8 gText_SelectorArrow[];


extern const u8 gBirchDexRatingText_LessThan10[];
extern const u8 gBirchDexRatingText_LessThan20[];
extern const u8 gBirchDexRatingText_LessThan30[];
extern const u8 gBirchDexRatingText_LessThan40[];
extern const u8 gBirchDexRatingText_LessThan50[];
extern const u8 gBirchDexRatingText_LessThan60[];
extern const u8 gBirchDexRatingText_LessThan70[];
extern const u8 gBirchDexRatingText_LessThan80[];
extern const u8 gBirchDexRatingText_LessThan90[];
extern const u8 gBirchDexRatingText_LessThan100[];
extern const u8 gBirchDexRatingText_LessThan110[];
extern const u8 gBirchDexRatingText_LessThan120[];
extern const u8 gBirchDexRatingText_LessThan130[];
extern const u8 gBirchDexRatingText_LessThan140[];
extern const u8 gBirchDexRatingText_LessThan150[];
extern const u8 gBirchDexRatingText_LessThan160[];
extern const u8 gBirchDexRatingText_LessThan170[];
extern const u8 gBirchDexRatingText_LessThan180[];
extern const u8 gBirchDexRatingText_LessThan190[];
extern const u8 gBirchDexRatingText_LessThan200[];
extern const u8 gBirchDexRatingText_DexCompleted[];


extern const u8 gText_WhatWouldYouLike[];
extern const u8 gText_NoMailHere[];

extern const u8 gText_TakeOutItemsFromPC[];
extern const u8 gText_StoreItemsInPC[];
extern const u8 gText_ThrowAwayItemsInPC[];
extern const u8 gText_GoBackPrevMenu[];

extern const u8 gText_ItemStorage[];
extern const u8 gText_Mailbox[];
extern const u8 gText_Decoration[];
extern const u8 gText_TurnOff[];

extern const u8 gText_WithdrawItem[];
extern const u8 gText_DepositItem[];
extern const u8 gText_TossItem[];
extern const u8 gText_Cancel[];

extern const u8 gText_Read[];
extern const u8 gText_MoveToBag[];
extern const u8 gText_Give2[];
extern const u8 gText_Cancel2[];

extern const u8 gText_NoItems[];
extern const u8 gText_WhatToDoWithVar1sMail[];
extern const u8 gText_MessageWillBeLost[];
extern const u8 gText_BagIsFull[];

extern const u8 gText_MailToBagMessageErased[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_WithdrawHowManyItems[];
extern const u8 gText_WithdrawXItems[];
extern const u8 gText_TossHowManyVar1s[];
extern const u8 gText_ThrewAwayVar2Var1s[];
extern const u8 gText_NoRoomInBag[];
extern const u8 gText_TooImportantToToss[];
extern const u8 gText_ConfirmTossItems[];
extern const u8 gText_MoveVar1Where[];

extern const u8 gText_ColorLightShadowDarkGrey[];
extern const u8 gText_ColorBlue[];
extern const u8 gText_Friend[];
extern const u8 gText_Tristan[];
extern const u8 gText_Philip[];
extern const u8 gText_Dennis[];
extern const u8 gText_Roberto[];
extern const u8 gText_FiveMarks[];

extern const u8 gText_TotalRecordWLD[];
extern const u8 gText_PlayersBattleResults[];
extern const u8 gText_WinLoseDraw[];
extern const u8 gText_ColorTransparent[];
extern const u8 gText_Slash[];

extern const u8 gText_99TimesPlus[];
extern const u8 gText_1MinutePlus[];
extern const u8 gText_SpaceSeconds[];
extern const u8 gText_SpaceTimes[];

extern const u8 gText_BigGuy[];
extern const u8 gText_BigGirl[];
extern const u8 gText_Son[];
extern const u8 gText_Daughter[];


extern const u8 gText_Exit[];
extern const u8 gText_1F[];
extern const u8 gText_2F[];
extern const u8 gText_3F[];
extern const u8 gText_4F[];
extern const u8 gText_5F[];
extern const u8 gText_6F[];
extern const u8 gText_7F[];
extern const u8 gText_8F[];
extern const u8 gText_9F[];
extern const u8 gText_10F[];
extern const u8 gText_11F[];
extern const u8 gText_B1F[];
extern const u8 gText_B2F[];
extern const u8 gText_B3F[];
extern const u8 gText_B4F[];
extern const u8 gText_Rooftop[];
extern const u8 gText_ElevatorNowOn[];

extern const u8 gText_BlueFlute[];
extern const u8 gText_YellowFlute[];
extern const u8 gText_RedFlute[];
extern const u8 gText_WhiteFlute[];
extern const u8 gText_BlackFlute[];
extern const u8 gText_PrettyChair[];
extern const u8 gText_PrettyDesk[];

extern const u8 gText_0Pts[];
extern const u8 gText_10Pts[];
extern const u8 gText_20Pts[];
extern const u8 gText_30Pts[];
extern const u8 gText_40Pts[];
extern const u8 gText_50Pts[];
extern const u8 gText_60Pts[];
extern const u8 gText_70Pts[];
extern const u8 gText_80Pts[];
extern const u8 gText_90Pts[];
extern const u8 gText_100Pts[];
extern const u8 gText_QuestionMark[];

extern const u8 gText_KissPoster16BP[];
extern const u8 gText_KissCushion32BP[];
extern const u8 gText_SmoochumDoll32BP[];
extern const u8 gText_TogepiDoll48BP[];
extern const u8 gText_MeowthDoll48BP[];
extern const u8 gText_ClefairyDoll48BP[];
extern const u8 gText_DittoDoll48BP[];
extern const u8 gText_CyndaquilDoll80BP[];
extern const u8 gText_ChikoritaDoll80BP[];
extern const u8 gText_TotodileDoll80BP[];

extern const u8 gText_Dolls[];
extern const u8 gText_MatDesk[];
extern const u8 gText_OrnaPost[];
extern const u8 gText_ChairPlant[];
extern const u8 gText_Contest[];
extern const u8 gText_TMs[];
extern const u8 gText_MegaC[];
extern const u8 gText_MegaB[];
extern const u8 gText_MegaA[];
extern const u8 gText_MegaS[];


extern const u8 gText_NUPoke[];
extern const u8 gText_RUPoke[];
extern const u8 gText_UUPoke[];
extern const u8 gText_OUPoke[];

extern const u8 gText_WhiteHerbBP[];
extern const u8 gText_PowerHerbBP[];
extern const u8 gText_ScopeLensBP[];
extern const u8 gText_WideLensBP[];
extern const u8 gText_QuickClawBP[];
extern const u8 gText_LifeOrbBP[];
extern const u8 gText_ChoiceBandBP[];
extern const u8 gText_ChoiceSpecsBP[];
extern const u8 gText_ChoiceScarfBP[];
extern const u8 gText_RockyHelmetBP[];
extern const u8 gText_WeaknessPolicyBP[];
extern const u8 gText_AssaultVestBP[];
extern const u8 gText_FocusSashBP[];
extern const u8 gText_KingsRockBP[];
extern const u8 gText_LeftoversBP[];

extern const u8 gText_EnergyPowder50[];
extern const u8 gText_EnergyRoot80[];
extern const u8 gText_HealPowder50[];
extern const u8 gText_RevivalHerb300[];
extern const u8 gText_Protein1000[];
extern const u8 gText_Iron1000[];
extern const u8 gText_Carbos1000[];
extern const u8 gText_Calcium1000[];
extern const u8 gText_Zinc1000[];
extern const u8 gText_HPUp1000[];
extern const u8 gText_PPUp3000[];

extern const u8 gText_BattleTower2[];
extern const u8 gText_BattleDome[];
extern const u8 gText_BattlePalace[];
extern const u8 gText_BattleArena[];
extern const u8 gText_BattleFactory[];
extern const u8 gText_BattlePike[];
extern const u8 gText_BattlePyramid[];
extern const u8 gText_RankingHall[];
extern const u8 gText_ExchangeService[];


extern const u8 gText_Softboiled16BP[];
extern const u8 gText_SeismicToss24BP[];
extern const u8 gText_DreamEater24BP[];
extern const u8 gText_MegaPunch24BP[];
extern const u8 gText_MegaKick48BP[];
extern const u8 gText_BodySlam48BP[];
extern const u8 gText_RockSlide48BP[];
extern const u8 gText_Counter48BP[];
extern const u8 gText_ThunderWave48BP[];
extern const u8 gText_SwordsDance48BP[];
extern const u8 gText_DefenseCurl16BP[];
extern const u8 gText_Snore24BP[];
extern const u8 gText_MudSlap24BP[];
extern const u8 gText_Swift24BP[];
extern const u8 gText_IcyWind24BP[];
extern const u8 gText_Endure48BP[];
extern const u8 gText_PsychUp48BP[];
extern const u8 gText_IcePunch48BP[];
extern const u8 gText_ThunderPunch48BP[];
extern const u8 gText_FirePunch48BP[];

extern const u8 gText_SlateportCity[];
extern const u8 gText_BattleFrontier[];
extern const u8 gText_SouthernIsland[];
extern const u8 gText_NavelRock[];
extern const u8 gText_BirthIsland[];
extern const u8 gText_FarawayIsland[];

extern const u8 gText_BattleTrainers[];
extern const u8 gText_BattleBasics[];
extern const u8 gText_PokemonNature[];
extern const u8 gText_PokemonMoves[];
extern const u8 gText_Underpowered[];
extern const u8 gText_WhenInDanger[];


extern const u8 BattleFrontier_Lounge2_Text_SalonMaidenIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_SalonMaidenSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_SalonMaidenGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_DoubleBattleAdvice1[];
extern const u8 BattleFrontier_Lounge2_Text_DoubleBattleAdvice2[];
extern const u8 BattleFrontier_Lounge2_Text_DoubleBattleAdvice3[];
extern const u8 BattleFrontier_Lounge2_Text_MultiBattleAdvice[];
extern const u8 BattleFrontier_Lounge2_Text_LinkMultiBattleAdvice[];
extern const u8 BattleFrontier_Lounge2_Text_DomeAceIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_DomeAceSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_DomeAceGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_FactoryHeadIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_FactoryHeadSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_FactoryHeadGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_PalaceMavenIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_PalaceMavenSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_PalaceMavenGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_ArenaTycoonIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_ArenaTycoonSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_ArenaTycoonGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_PikeQueenIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_PikeQueenSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_PikeQueenGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_PyramidKingIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_PyramidKingSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_PyramidKingGoldMons[];


extern const u8 BattleFrontier_Lounge5_Text_NatureGirlHardy[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlLonely[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlBrave[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlAdamant[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlNaughty[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlBold[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlDocileNaiveQuietQuirky[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlRelaxed[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlImpish[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlLax[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlTimid[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlHasty[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlSerious[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlJolly[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlModest[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlMild[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlBashful[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlRash[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlCalm[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlGentle[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlSassy[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlCareful[];


extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleTowerSingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleTowerDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleTowerMulti[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleDomeSingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleDomeDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleFactorySingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleFactoryDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePalaceSingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePalaceDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleArena[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePike[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePyramid[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleTowerSingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleTowerDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleTowerMulti[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleDomeSingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleDomeDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleFactorySingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleFactoryDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePalaceSingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePalaceDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleArena[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePike[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePyramid[];

extern const u8 gText_BP[];


extern const u8 BattleFrontier_ExchangeServiceCorner_Text_KissPosterDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_KissCushionDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_SmoochumDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_TogepiDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MeowthDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ClefairyDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_DittoDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_CyndaquilDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChikoritaDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_TotodileDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_Doll[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MatDesk[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_OrnaPost[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChairPlant[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_Contest[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_TM[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MegaC[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MegaB[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MegaA[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MegaS[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ProteinDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_CalciumDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_IronDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ZincDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_CarbosDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_HPUpDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_WhiteHerbDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MentalHerbDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_PowerHerbDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ScopeLensDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_WideLensDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_QuickClawDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_LifeOrbDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChoiceBandDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChoiceSpecsDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChoiceScarfDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_RockyHelmetDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_WeaknessPolicyDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_AssaultVestDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_FocusSashDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_KingsRockDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_LeftoversDesc[];


extern const u8 BattleFrontier_Lounge7_Text_SoftboiledDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SeismicTossDesc[];
extern const u8 BattleFrontier_Lounge7_Text_DreamEaterDesc[];
extern const u8 BattleFrontier_Lounge7_Text_MegaPunchDesc[];
extern const u8 BattleFrontier_Lounge7_Text_MegaKickDesc[];
extern const u8 BattleFrontier_Lounge7_Text_BodySlamDesc[];
extern const u8 BattleFrontier_Lounge7_Text_RockSlideDesc[];
extern const u8 BattleFrontier_Lounge7_Text_CounterDesc[];
extern const u8 BattleFrontier_Lounge7_Text_ThunderWaveDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SwordsDanceDesc[];
extern const u8 BattleFrontier_Lounge7_Text_DefenseCurlDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SnoreDesc[];
extern const u8 BattleFrontier_Lounge7_Text_MudSlapDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SwiftDesc[];
extern const u8 BattleFrontier_Lounge7_Text_IcyWindDesc[];
extern const u8 BattleFrontier_Lounge7_Text_EndureDesc[];
extern const u8 BattleFrontier_Lounge7_Text_PsychUpDesc[];
extern const u8 BattleFrontier_Lounge7_Text_IcePunchDesc[];
extern const u8 BattleFrontier_Lounge7_Text_ThunderPunchDesc[];
extern const u8 BattleFrontier_Lounge7_Text_FirePunchDesc[];

extern const u8 gText_YourPartnerHasRetired[];

extern const u8 gText_Wallace[];
extern const u8 gText_Steven[];
extern const u8 gText_Brawly[];
extern const u8 gText_Winona[];
extern const u8 gText_Phoebe[];
extern const u8 gText_Glacia[];

extern const u8 gText_MoveRelearnerPkmnLearnedMove[];
extern const u8 gText_MoveRelearnerPkmnTryingToLearnMove[];
extern const u8 gText_MoveRelearnerWhichMoveToForget[];
extern const u8 gText_MoveRelearnerStopTryingToTeachMove[];
extern const u8 gText_MoveRelearnerAndPoof[];
extern const u8 gText_MoveRelearnerPkmnForgotMoveAndLearnedNew[];
extern const u8 gText_TeachWhichMoveToPkmn[];
extern const u8 gText_MoveRelearnerGiveUp[];
extern const u8 gText_MoveRelearnerTeachMoveConfirm[];
extern const u8 gText_MoveRelearnerBattleMoves[];
extern const u8 gText_MoveRelearnerPP[];
extern const u8 gText_MoveRelearnerPower[];
extern const u8 gText_MoveRelearnerAccuracy[];
extern const u8 gText_MoveRelearnerContestMovesTitle[];
extern const u8 gText_MoveRelearnerAppeal[];
extern const u8 gText_MoveRelearnerJam[];

extern const u8 gText_Kira[];
extern const u8 gText_Amy[];
extern const u8 gText_John[];
extern const u8 gText_Roy[];
extern const u8 gText_Gabby[];
extern const u8 gText_Anna[];

extern const u8 gText_DadsAdvice[];
extern const u8 gText_CantDismountBike[];
extern const u8 gText_ItemFinderNothing[];
extern const u8 gText_ItemFinderNearby[];
extern const u8 gText_ItemFinderOnTop[];
extern const u8 gText_CoinCase[];
extern const u8 gText_PowderQty[];
extern const u8 gText_BootedUpHM[];
extern const u8 gText_BootedUpTM[];
extern const u8 gText_TMHMContainedVar1[];
extern const u8 gText_PlayerUsedVar2[];
extern const u8 gText_RepelEffectsLingered[];
extern const u8 gText_UsedVar2WildLured[];
extern const u8 gText_UsedVar2WildRepelled[];
extern const u8 gText_BoxFull[];
extern const u8 gText_WontHaveEffect[];

extern const u8 gText_LevelSymbol[];
extern const u8 gText_PkmnInfo[];
extern const u8 gText_PkmnSkills[];
extern const u8 gText_BattleMoves[];
extern const u8 gText_ContestMoves[];
extern const u8 gText_HMMovesCantBeForgotten2[];
extern const u8 gText_Info[];
extern const u8 gText_Switch[];
extern const u8 gText_RentalPkmn[];
extern const u8 gText_TypeSlash[];
extern const u8 gText_HP4[];
extern const u8 gText_Attack3[];
extern const u8 gText_Defense3[];
extern const u8 gText_SpAtk4[];
extern const u8 gText_SpDef4[];
extern const u8 gText_Speed2[];
extern const u8 gText_ExpPoints[];
extern const u8 gText_NextLv[];
extern const u8 gText_Status[];
extern const u8 gText_Power[];
extern const u8 gText_Accuracy2[];
extern const u8 gText_Appeal[];
extern const u8 gText_Jam[];
extern const u8 gText_OTSlash[];
extern const u8 gText_IDNumber2[];
extern const u8 gText_XNature[];
extern const u8 gText_XNatureHatchedAtYZ[];
extern const u8 gText_XNatureHatchedSomewhereAt[];
extern const u8 gText_XNatureMetAtYZ[];
extern const u8 gText_XNatureMetSomewhereAt[];
extern const u8 gText_XNatureFatefulEncounter[];
extern const u8 gText_XNatureProbablyMetAt[];
extern const u8 gText_XNatureObtainedInTrade[];
extern const u8 gText_EmptyString5[];
extern const u8 gText_EggWillTakeALongTime[];
extern const u8 gText_EggAboutToHatch[];
extern const u8 gText_EggWillHatchSoon[];
extern const u8 gText_EggWillTakeSomeTime[];
extern const u8 gText_PeculiarEggNicePlace[];
extern const u8 gText_PeculiarEggTrade[];
extern const u8 gText_EggFromTraveler[];
extern const u8 gText_EggFromHotSprings[];
extern const u8 gText_OddEggFoundByCouple[];
extern const u8 gText_None[];
extern const u8 gText_RibbonsVar1[];
extern const u8 gText_OneDash[];
extern const u8 gText_TwoDashes[];

extern const u8 *const gReturnToXStringsTable2[];

extern const u8 gText_NumPlayerLink[];
extern const u8 gText_ConfirmLinkWhenPlayersReady[];
extern const u8 gText_ConfirmStartLinkWithXPlayers[];
extern const u8 gText_AwaitingLinkup[];
extern const u8 gText_PleaseWaitForLink[];
extern const u8 gText_BronzeCard[];
extern const u8 gText_CopperCard[];
extern const u8 gText_SilverCard[];
extern const u8 gText_GoldCard[];

extern const u8 gText_CanIHelpWithAnythingElse[];
extern const u8 gText_AnythingElseICanHelp[];
extern const u8 gText_QuitShopping[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_YouDontHaveMoney[];
extern const u8 gText_Var1CertainlyHowMany2[];
extern const u8 gText_Var1CertainlyHowMany[];
extern const u8 gText_Var1IsItThatllBeVar2[];
extern const u8 gText_YouWantedVar1ThatllBeVar2[];
extern const u8 gText_InBagVar1[];
extern const u8 gText_Var1AndYouWantedVar2[];
extern const u8 gText_HereYouGoThankYou[];
extern const u8 gText_NoMoreRoomForThis[];
extern const u8 gText_ThankYouIllSendItHome[];
extern const u8 gText_ThanksIllSendItHome[];
extern const u8 gText_SpaceForVar1Full[];
extern const u8 gText_ThrowInPremierBall[];
extern const u8 gText_ShopBuy[];
extern const u8 gText_ShopSell[];
extern const u8 gText_ShopQuit[];

extern const u8 gText_OhABite[];
extern const u8 gText_PokemonOnHook[];
extern const u8 gText_NotEvenANibble[];
extern const u8 gText_ItGotAway[];

extern const u8 gText_HallOfFame[];
extern const u8 gText_LogOff[];
extern const u8 gText_LanettesPC[];
extern const u8 gText_SomeonesPC[];
extern const u8 gText_PlayersPC[];
extern const u8 gText_WhichPCShouldBeAccessed[];

extern const u8 gText_PokenavMatchCall_Strategy[];
extern const u8 gText_PokenavMatchCall_TrainerPokemon[];
extern const u8 gText_PokenavMatchCall_SelfIntroduction[];
extern const u8 gText_Pokenav_ClearButtonList[];
extern const u8 gText_PokenavMap_ZoomedOutButtons[];
extern const u8 gText_PokenavMap_ZoomedInButtons[];
extern const u8 gText_PokenavCondition_MonListButtons[];
extern const u8 gText_PokenavCondition_MonStatusButtons[];
extern const u8 gText_PokenavCondition_MarkingButtons[];
extern const u8 gText_PokenavMatchCall_TrainerListButtons[];
extern const u8 gText_PokenavMatchCall_CallMenuButtons[];
extern const u8 gText_PokenavMatchCall_CheckTrainerButtons[];
extern const u8 gText_PokenavRibbons_MonListButtons[];
extern const u8 gText_PokenavRibbons_RibbonListButtons[];
extern const u8 gText_PokenavRibbons_RibbonCheckButtons[];
extern const u8 gText_Number2[];

extern const u8 gText_Petalburg[];
extern const u8 gText_Slateport[];
extern const u8 gText_Enter2[];
extern const u8 gText_Info2[];
extern const u8 gText_WhatsAContest[];
extern const u8 gText_TypesOfContests[];
extern const u8 gText_Ranks[];
extern const u8 gText_Decoration2[];
extern const u8 gText_PackUp[];
extern const u8 gText_Registry[];
extern const u8 gText_Information[];
extern const u8 gText_Mach[];
extern const u8 gText_Acro[];
extern const u8 gText_Psn[];
extern const u8 gText_Par[];
extern const u8 gText_Slp[];
extern const u8 gText_Brn[];
extern const u8 gText_Frz[];
extern const u8 gText_Dewford[];
extern const u8 gText_SawIt[];
extern const u8 gText_NotYet[];
extern const u8 gText_Yes[];
extern const u8 gText_No[];
extern const u8 gText_Challenge[];
extern const u8 gText_Info3[];
extern const u8 gTrickHouse_Mechadoll_Oddish[];
extern const u8 gTrickHouse_Mechadoll_Poochyena[];
extern const u8 gTrickHouse_Mechadoll_Taillow[];
extern const u8 gTrickHouse_Mechadoll_Azurill[];
extern const u8 gTrickHouse_Mechadoll_Lotad[];
extern const u8 gTrickHouse_Mechadoll_Wingull[];
extern const u8 gTrickHouse_Mechadoll_Dustox[];
extern const u8 gTrickHouse_Mechadoll_Zubat[];
extern const u8 gTrickHouse_Mechadoll_Nincada[];
extern const u8 gTrickHouse_Mechadoll_Ralts[];
extern const u8 gTrickHouse_Mechadoll_Zigzagoon[];
extern const u8 gTrickHouse_Mechadoll_Slakoth[];
extern const u8 gTrickHouse_Mechadoll_Poochyena2[];
extern const u8 gTrickHouse_Mechadoll_Shroomish[];
extern const u8 gTrickHouse_Mechadoll_Zigzagoon2[];
extern const u8 gTrickHouse_Mechadoll_Poochyena3[];
extern const u8 gTrickHouse_Mechadoll_Zubat2[];
extern const u8 gTrickHouse_Mechadoll_Carvanha[];
extern const u8 gTrickHouse_Mechadoll_BurnHeal[];
extern const u8 gTrickHouse_Mechadoll_HarborMail[];
extern const u8 gTrickHouse_Mechadoll_SamePrice[];
extern const u8 gTrickHouse_Mechadoll_60Yen[];
extern const u8 gTrickHouse_Mechadoll_55Yen[];
extern const u8 gTrickHouse_Mechadoll_Nothing[];
extern const u8 gTrickHouse_Mechadoll_CostMore[];
extern const u8 gTrickHouse_Mechadoll_CostLess[];
extern const u8 gTrickHouse_Mechadoll_SamePrice2[];
extern const u8 gTrickHouse_Mechadoll_Male[];
extern const u8 gTrickHouse_Mechadoll_Female[];
extern const u8 gTrickHouse_Mechadoll_Neither[];
extern const u8 gTrickHouse_Mechadoll_ElderlyMen[];
extern const u8 gTrickHouse_Mechadoll_ElderlyLadies[];
extern const u8 gTrickHouse_Mechadoll_SameNumber[];
extern const u8 gTrickHouse_Mechadoll_None[];
extern const u8 gTrickHouse_Mechadoll_One[];
extern const u8 gTrickHouse_Mechadoll_Two[];
extern const u8 gTrickHouse_Mechadoll_Two2[];
extern const u8 gTrickHouse_Mechadoll_Three[];
extern const u8 gTrickHouse_Mechadoll_Four[];
extern const u8 gTrickHouse_Mechadoll_Six[];
extern const u8 gTrickHouse_Mechadoll_Seven[];
extern const u8 gTrickHouse_Mechadoll_Eight[];
extern const u8 gTrickHouse_Mechadoll_Six2[];
extern const u8 gTrickHouse_Mechadoll_Seven2[];
extern const u8 gTrickHouse_Mechadoll_Eight2[];


extern const u8 gText_SearchForPkmnBasedOnParameters[];
extern const u8 gText_SwitchPokedexListings[];
extern const u8 gText_ReturnToPokedex[];
extern const u8 gText_SelectPokedexMode[];
extern const u8 gText_SelectPokedexListingMode[];
extern const u8 gText_ListByFirstLetter[];
extern const u8 gText_ListByBodyColor[];
extern const u8 gText_ListByType[];
extern const u8 gText_ExecuteSearchSwitch[];
extern const u8 gText_DexHoennTitle[];
extern const u8 gText_DexNatTitle[];
extern const u8 gText_DexSortNumericalTitle[];
extern const u8 gText_DexSortAtoZTitle[];
extern const u8 gText_DexSortHeaviestTitle[];
extern const u8 gText_DexSortLightestTitle[];
extern const u8 gText_DexSortTallestTitle[];
extern const u8 gText_DexSortSmallestTitle[];
extern const u8 gText_DexSearchAlphaABC[];
extern const u8 gText_DexSearchAlphaDEF[];
extern const u8 gText_DexSearchAlphaGHI[];
extern const u8 gText_DexSearchAlphaJKL[];
extern const u8 gText_DexSearchAlphaMNO[];
extern const u8 gText_DexSearchAlphaPQR[];
extern const u8 gText_DexSearchAlphaSTU[];
extern const u8 gText_DexSearchAlphaVWX[];
extern const u8 gText_DexSearchAlphaYZ[];
extern const u8 gText_DexSearchColorRed[];
extern const u8 gText_DexSearchColorBlue[];
extern const u8 gText_DexSearchColorYellow[];
extern const u8 gText_DexSearchColorGreen[];
extern const u8 gText_DexSearchColorBlack[];
extern const u8 gText_DexSearchColorBrown[];
extern const u8 gText_DexSearchColorPurple[];
extern const u8 gText_DexSearchColorGray[];
extern const u8 gText_DexSearchColorWhite[];
extern const u8 gText_DexSearchColorPink[];
extern const u8 gText_DexHoennDescription[];
extern const u8 gText_DexNatDescription[];
extern const u8 gText_DexSortNumericalDescription[];
extern const u8 gText_DexSortAtoZDescription[];
extern const u8 gText_DexSortHeaviestDescription[];
extern const u8 gText_DexSortLightestDescription[];
extern const u8 gText_DexSortTallestDescription[];
extern const u8 gText_DexSortSmallestDescription[];
extern const u8 gText_DexEmptyString[];
extern const u8 gText_DexSearchDontSpecify[];
extern const u8 gText_DexSearchTypeNone[];

extern const u8 gText_FreshWaterAndPrice[];
extern const u8 gText_SodaPopAndPrice[];
extern const u8 gText_LemonadeAndPrice[];
extern const u8 gText_HowToRide[];
extern const u8 gText_HowToTurn[];
extern const u8 gText_SandySlopes[];
extern const u8 gText_Wheelies[];
extern const u8 gText_BunnyHops[];
extern const u8 gText_Jump[];
extern const u8 gText_Satisfied[];
extern const u8 gText_Dissatisfied[];
extern const u8 gText_DeepSeaTooth[];
extern const u8 gText_DeepSeaScale[];
extern const u8 gText_BlueFlute2[];
extern const u8 gText_YellowFlute2[];
extern const u8 gText_RedFlute2[];
extern const u8 gText_WhiteFlute2[];
extern const u8 gText_BlackFlute2[];
extern const u8 gText_GlassChair[];
extern const u8 gText_GlassDesk[];
extern const u8 gText_TreeckoDollAndPrice[];
extern const u8 gText_TorchicDollAndPrice[];
extern const u8 gText_MudkipDollAndPrice[];
extern const u8 gText_1BPAndPrice[];
extern const u8 gText_10BPAndPrice[];
extern const u8 gText_50CoinsAndPrice[];
extern const u8 gText_500CoinsAndPrice[];
extern const u8 gText_Excellent2[];
extern const u8 gText_NotSoGood[];
extern const u8 gText_LilycoveCity[];
extern const u8 gText_Right[];
extern const u8 gText_Left[];
extern const u8 gText_RedShard[];
extern const u8 gText_YellowShard[];
extern const u8 gText_BlueShard[];
extern const u8 gText_GreenShard[];
extern const u8 gText_Opponent[];
extern const u8 gText_Tourney_Tree[];
extern const u8 gText_ReadyToStart[];
extern const u8 gText_Record2[];
extern const u8 gText_Rest[];
extern const u8 gText_Retire[];
extern const u8 gText_RedTent[];
extern const u8 gText_BlueTent[];
extern const u8 gText_TradeCenter[];
extern const u8 gText_Colosseum[];
extern const u8 gText_RecordCorner[];
extern const u8 gText_SingleBattle[];
extern const u8 gText_DoubleBattle[];
extern const u8 gText_MultiBattle[];
extern const u8 gText_BerryCrush3[];
extern const u8 gText_PokemonJump[];
extern const u8 gText_DodrioBerryPicking[];
extern const u8 gText_JoinGroup[];
extern const u8 gText_BecomeLeader[];
extern const u8 gText_NormalRank[];
extern const u8 gText_SuperRank[];
extern const u8 gText_HyperRank[];
extern const u8 gText_MasterRank[];
extern const u8 gText_BattleBag[];
extern const u8 gText_HeldItem[];
extern const u8 gText_LinkContest[];
extern const u8 gText_AboutE_Mode[];
extern const u8 gText_AboutG_Mode[];
extern const u8 gText_E_Mode[];
extern const u8 gText_G_Mode[];
extern const u8 gText_Blank[];
extern const u8 gText_5BP[];
extern const u8 gText_10BP[];
extern const u8 gText_15BP[];
extern const u8 gText_ClawFossil[];
extern const u8 gText_RootFossil[];
extern const u8 gText_No4[];
extern const u8 gText_TwoStyles[];
extern const u8 gText_Lv50_3[];
extern const u8 gText_OpenLevel2[];
extern const u8 gText_MonTypeAndNo[];
extern const u8 gText_HoldItems[];
extern const u8 gText_Symbols2[];
extern const u8 gText_Record3[];
extern const u8 gText_BattlePts[];
extern const u8 gText_BattleRules[];
extern const u8 gText_JudgeMind[];
extern const u8 gText_JudgeSkill[];
extern const u8 gText_JudgeBody[];
extern const u8 gText_TowerInfo[];
extern const u8 gText_BattleMon[];
extern const u8 gText_BattleSalon[];
extern const u8 gText_MultiLink2[];
extern const u8 gText_Matchup[];
extern const u8 gText_TourneyTree[];
extern const u8 gText_DoubleKO[];
extern const u8 gText_BasicRules[];
extern const u8 gText_SwapPartners[];
extern const u8 gText_SwapNumber[];
extern const u8 gText_SwapNotes[];
extern const u8 gText_OpenLevel3[];
extern const u8 gText_PyramidPokemon[];
extern const u8 gText_PyramidTrainers[];
extern const u8 gText_PyramidMaze[];
extern const u8 gText_BattleBag2[];
extern const u8 gText_PokenavAndBag[];
extern const u8 gText_HeldItems[];
extern const u8 gText_PokemonOrder[];
extern const u8 gText_GoOn[];
extern const u8 gText_Red[];
extern const u8 gText_Blue[];
extern const u8 gText_IllBattleNow[];
extern const u8 gText_IWon[];
extern const u8 gText_ILost[];
extern const u8 gText_IWontTell[];
extern const u8 gText_CaveOfOrigin[];
extern const u8 gText_MtPyre[];
extern const u8 gText_SkyPillar[];
extern const u8 gText_DontRemember[];
extern const u8 gText_BattlePokemon[];
extern const u8 gText_NormalTagMatch[];
extern const u8 gText_VarietyTagMatch[];
extern const u8 gText_UniqueTagMatch[];
extern const u8 gText_ExpertTagMatch[];
extern const u8 gText_TimeBoard[];
extern const u8 gText_TimeCleared[];
extern const u8 gText_XMinYDotZSec[];
extern const u8 gText_TrainerHill1F[];
extern const u8 gText_TrainerHill2F[];
extern const u8 gText_TrainerHill3F[];
extern const u8 gText_TrainerHill4F[];


extern const u8 CableClub_Text_TradeUsingLinkCable[];
extern const u8 CableClub_Text_BattleUsingLinkCable[];
extern const u8 CableClub_Text_RecordCornerUsingLinkCable[];
extern const u8 CableClub_Text_CancelSelectedItem[];
extern const u8 CableClub_Text_YouMayTradeHere[];
extern const u8 CableClub_Text_YouMayBattleHere[];
extern const u8 CableClub_Text_CanMixRecords[];
extern const u8 CableClub_Text_CanMakeBerryPowder[];


extern const u8 gText_WinStreak[];
extern const u8 gText_Record[];
extern const u8 gText_Current[];
extern const u8 gText_RoomsCleared[];
extern const u8 gText_Prev[];
extern const u8 gText_SingleBattleRoomResults[];
extern const u8 gText_DoubleBattleRoomResults[];
extern const u8 gText_MultiBattleRoomResults[];
extern const u8 gText_LinkMultiBattleRoomResults[];
extern const u8 gText_Lv502[];
extern const u8 gText_OpenLv[];
extern const u8 gText_RentalSwap[];
extern const u8 gText_ClearStreak[];
extern const u8 gText_Total[];
extern const u8 gText_Championships[];
extern const u8 gText_SingleBattleTourneyResults[];
extern const u8 gText_DoubleBattleTourneyResults[];
extern const u8 gText_SingleBattleHallResults[];
extern const u8 gText_DoubleBattleHallResults[];
extern const u8 gText_BattleChoiceResults[];
extern const u8 gText_TimesCleared[];
extern const u8 gText_KOsInARow[];
extern const u8 gText_SetKOTourneyResults[];
extern const u8 gText_TimesVar1[];
extern const u8 gText_BattleSwapSingleResults[];
extern const u8 gText_BattleSwapDoubleResults[];
extern const u8 gText_FloorsCleared[];
extern const u8 gText_BattleQuestResults[];
extern const u8 gText_LinkContestResults[];
extern const u8 gText_4th[];
extern const u8 gText_3rd[];
extern const u8 gText_2nd[];
extern const u8 gText_1st[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_NewLine[];
extern const u8 gText_LineBreak[];
extern const u8 gText_Space[];
extern const u8 gText_Space2[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_123Dot[][3];


extern const u8 gText_FacilitySingle[];
extern const u8 gText_FacilityDouble[];
extern const u8 gText_FacilityMulti[];
extern const u8 gText_FacilityLink[];
extern const u8 gText_Facility[];

extern const u8 gText_RecordsLv50[];
extern const u8 gText_RecordsOpenLevel[];
extern const u8 gText_FrontierFacilityWinStreak[];
extern const u8 gText_FrontierFacilityClearStreak[];
extern const u8 gText_FrontierFacilityRoomsCleared[];
extern const u8 gText_FrontierFacilityKOsStreak[];
extern const u8 gText_FrontierFacilityFloorsCleared[];


extern const u8 gText_AnabelWonSilver[];
extern const u8 gText_TuckerWonSilver[];
extern const u8 gText_SpenserWonSilver[];
extern const u8 gText_GretaWonSilver[];
extern const u8 gText_NolandWonSilver[];
extern const u8 gText_LucyWonSilver[];
extern const u8 gText_BrandonWonSilver[];
extern const u8 gText_AnabelDefeatSilver[];
extern const u8 gText_TuckerDefeatSilver[];
extern const u8 gText_SpenserDefeatSilver[];
extern const u8 gText_GretaDefeatSilver[];
extern const u8 gText_NolandDefeatSilver[];
extern const u8 gText_LucyDefeatSilver[];
extern const u8 gText_BrandonDefeatSilver[];
extern const u8 gText_AnabelWonGold[];
extern const u8 gText_TuckerWonGold[];
extern const u8 gText_SpenserWonGold[];
extern const u8 gText_GretaWonGold[];
extern const u8 gText_NolandWonGold[];
extern const u8 gText_LucyWonGold[];
extern const u8 gText_BrandonWonGold[];
extern const u8 gText_AnabelDefeatGold[];
extern const u8 gText_TuckerDefeatGold[];
extern const u8 gText_SpenserDefeatGold[];
extern const u8 gText_GretaDefeatGold[];
extern const u8 gText_NolandDefeatGold[];
extern const u8 gText_LucyDefeatGold[];
extern const u8 gText_BrandonDefeatGold[];


extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMReject[];


extern const u8 BattleDome_Text_Potential1[];
extern const u8 BattleDome_Text_Potential2[];
extern const u8 BattleDome_Text_Potential3[];
extern const u8 BattleDome_Text_Potential4[];
extern const u8 BattleDome_Text_Potential5[];
extern const u8 BattleDome_Text_Potential6[];
extern const u8 BattleDome_Text_Potential7[];
extern const u8 BattleDome_Text_Potential8[];
extern const u8 BattleDome_Text_Potential9[];
extern const u8 BattleDome_Text_Potential10[];
extern const u8 BattleDome_Text_Potential11[];
extern const u8 BattleDome_Text_Potential12[];
extern const u8 BattleDome_Text_Potential13[];
extern const u8 BattleDome_Text_Potential14[];
extern const u8 BattleDome_Text_Potential15[];
extern const u8 BattleDome_Text_Potential16[];
extern const u8 BattleDome_Text_PotentialDomeAceTucker[];
extern const u8 BattleDome_Text_StyleRiskDisaster[];
extern const u8 BattleDome_Text_StyleEndureLongBattles[];
extern const u8 BattleDome_Text_StyleVariesTactics[];
extern const u8 BattleDome_Text_StyleToughWinningPattern[];
extern const u8 BattleDome_Text_StyleUsesVeryRareMove[];
extern const u8 BattleDome_Text_StyleUsesStartlingMoves[];
extern const u8 BattleDome_Text_StyleConstantlyWatchesHP[];
extern const u8 BattleDome_Text_StyleStoresAndLoosesPower[];
extern const u8 BattleDome_Text_StyleEnfeeblesFoes[];
extern const u8 BattleDome_Text_StylePrefersLuckTactics[];
extern const u8 BattleDome_Text_StyleRegalAtmosphere[];
extern const u8 BattleDome_Text_StylePowerfulLowPPMoves[];
extern const u8 BattleDome_Text_StyleEnfeebleThenAttack[];
extern const u8 BattleDome_Text_StyleBattlesWhileEnduring[];
extern const u8 BattleDome_Text_StyleUpsetsFoesEmotionally[];
extern const u8 BattleDome_Text_StyleStrongAndStraightforward[];
extern const u8 BattleDome_Text_StyleAggressivelyStrongMoves[];
extern const u8 BattleDome_Text_StyleCleverlyDodgesAttacks[];
extern const u8 BattleDome_Text_StyleUsesUpsettingMoves[];
extern const u8 BattleDome_Text_StyleUsesPopularMoves[];
extern const u8 BattleDome_Text_StyleHasPowerfulComboMoves[];
extern const u8 BattleDome_Text_StyleUsesHighProbabilityMoves[];
extern const u8 BattleDome_Text_StyleAggressivelySpectacularMoves[];
extern const u8 BattleDome_Text_StyleEmphasizesOffenseOverDefense[];
extern const u8 BattleDome_Text_StyleEmphasizesDefenseOverOffense[];
extern const u8 BattleDome_Text_StyleAttacksQuicklyStrongMoves[];
extern const u8 BattleDome_Text_StyleUsesAddedEffectMoves[];
extern const u8 BattleDome_Text_StyleUsesBalancedMixOfMoves[];
extern const u8 BattleDome_Text_StyleSampleMessage1[];
extern const u8 BattleDome_Text_StyleSampleMessage2[];
extern const u8 BattleDome_Text_StyleSampleMessage3[];
extern const u8 BattleDome_Text_StyleSampleMessage4[];
extern const u8 BattleDome_Text_EmphasizesHPAndAtk[];
extern const u8 BattleDome_Text_EmphasizesHPAndDef[];
extern const u8 BattleDome_Text_EmphasizesHPAndSpeed[];
extern const u8 BattleDome_Text_EmphasizesHPAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesHPAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesAtkAndDef[];
extern const u8 BattleDome_Text_EmphasizesAtkAndSpeed[];
extern const u8 BattleDome_Text_EmphasizesAtkAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesAtkAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesDefAndSpeed[];
extern const u8 BattleDome_Text_EmphasizesDefAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesDefAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesSpeedAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesSpeedAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesSpAtkAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesHP[];
extern const u8 BattleDome_Text_EmphasizesAtk[];
extern const u8 BattleDome_Text_EmphasizesDef[];
extern const u8 BattleDome_Text_EmphasizesSpeed[];
extern const u8 BattleDome_Text_EmphasizesSpAtk[];
extern const u8 BattleDome_Text_EmphasizesSpDef[];
extern const u8 BattleDome_Text_NeglectsHPAndAtk[];
extern const u8 BattleDome_Text_NeglectsHPAndDef[];
extern const u8 BattleDome_Text_NeglectsHPAndSpeed[];
extern const u8 BattleDome_Text_NeglectsHPAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsHPAndSpDef[];
extern const u8 BattleDome_Text_NeglectsAtkAndDef[];
extern const u8 BattleDome_Text_NeglectsAtkAndSpeed[];
extern const u8 BattleDome_Text_NeglectsAtkAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsAtkAndSpDef[];
extern const u8 BattleDome_Text_NeglectsDefAndSpeed[];
extern const u8 BattleDome_Text_NeglectsDefAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsDefAndSpDef[];
extern const u8 BattleDome_Text_NeglectsSpeedAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsSpeedAndSpDef[];
extern const u8 BattleDome_Text_NeglectsSpAtkAndSpDef[];
extern const u8 BattleDome_Text_NeglectsHP[];
extern const u8 BattleDome_Text_NeglectsAtk[];
extern const u8 BattleDome_Text_NeglectsDef[];
extern const u8 BattleDome_Text_NeglectsSpeed[];
extern const u8 BattleDome_Text_NeglectsSpAtk[];
extern const u8 BattleDome_Text_NeglectsSpDef[];
extern const u8 BattleDome_Text_RaisesMonsWellBalanced[];
extern const u8 BattleDome_Text_Round1Match1[];
extern const u8 BattleDome_Text_Round1Match2[];
extern const u8 BattleDome_Text_Round1Match3[];
extern const u8 BattleDome_Text_Round1Match4[];
extern const u8 BattleDome_Text_Round1Match5[];
extern const u8 BattleDome_Text_Round1Match6[];
extern const u8 BattleDome_Text_Round1Match7[];
extern const u8 BattleDome_Text_Round1Match8[];
extern const u8 BattleDome_Text_Round2Match1[];
extern const u8 BattleDome_Text_Round2Match2[];
extern const u8 BattleDome_Text_Round2Match3[];
extern const u8 BattleDome_Text_Round2Match4[];
extern const u8 BattleDome_Text_SemifinalMatch1[];
extern const u8 BattleDome_Text_SemifinalMatch2[];
extern const u8 BattleDome_Text_FinalMatch[];
extern const u8 BattleDome_Text_LetTheBattleBegin[];
extern const u8 BattleDome_Text_TrainerWonUsingMove[];
extern const u8 BattleDome_Text_TrainerBecameChamp[];
extern const u8 BattleDome_Text_TrainerWonByDefault[];
extern const u8 BattleDome_Text_TrainerWonOutrightByDefault[];
extern const u8 BattleDome_Text_TrainerWonNoMoves[];
extern const u8 BattleDome_Text_TrainerWonOutrightNoMoves[];


extern const u8 BattlePyramid_Text_ExitHintUp1[];
extern const u8 BattlePyramid_Text_ExitHintLeft1[];
extern const u8 BattlePyramid_Text_ExitHintRight1[];
extern const u8 BattlePyramid_Text_ExitHintDown1[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining1[];
extern const u8 BattlePyramid_Text_OneItemRemaining1[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining1[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining1[];
extern const u8 BattlePyramid_Text_FourItemsRemaining1[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining1[];
extern const u8 BattlePyramid_Text_SixItemsRemaining1[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining1[];
extern const u8 BattlePyramid_Text_EightItemsRemaining1[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining1[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining1[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining1[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining1[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining1[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining1[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining1[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining1[];
extern const u8 BattlePyramid_Text_ExitHintUp2[];
extern const u8 BattlePyramid_Text_ExitHintLeft2[];
extern const u8 BattlePyramid_Text_ExitHintRight2[];
extern const u8 BattlePyramid_Text_ExitHintDown2[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining2[];
extern const u8 BattlePyramid_Text_OneItemRemaining2[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining2[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining2[];
extern const u8 BattlePyramid_Text_FourItemsRemaining2[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining2[];
extern const u8 BattlePyramid_Text_SixItemsRemaining2[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining2[];
extern const u8 BattlePyramid_Text_EightItemsRemaining2[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining2[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining2[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining2[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining2[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining2[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining2[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining2[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining2[];
extern const u8 BattlePyramid_Text_ExitHintUp3[];
extern const u8 BattlePyramid_Text_ExitHintLeft3[];
extern const u8 BattlePyramid_Text_ExitHintRight3[];
extern const u8 BattlePyramid_Text_ExitHintDown3[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining3[];
extern const u8 BattlePyramid_Text_OneItemRemaining3[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining3[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining3[];
extern const u8 BattlePyramid_Text_FourItemsRemaining3[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining3[];
extern const u8 BattlePyramid_Text_SixItemsRemaining3[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining3[];
extern const u8 BattlePyramid_Text_EightItemsRemaining3[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining3[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining3[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining3[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining3[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining3[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining3[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining3[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining3[];
extern const u8 BattlePyramid_Text_ExitHintUp4[];
extern const u8 BattlePyramid_Text_ExitHintLeft4[];
extern const u8 BattlePyramid_Text_ExitHintRight4[];
extern const u8 BattlePyramid_Text_ExitHintDown4[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining4[];
extern const u8 BattlePyramid_Text_OneItemRemaining4[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining4[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining4[];
extern const u8 BattlePyramid_Text_FourItemsRemaining4[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining4[];
extern const u8 BattlePyramid_Text_SixItemsRemaining4[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining4[];
extern const u8 BattlePyramid_Text_EightItemsRemaining4[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining4[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining4[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining4[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining4[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining4[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining4[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining4[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining4[];
extern const u8 BattlePyramid_Text_ExitHintUp5[];
extern const u8 BattlePyramid_Text_ExitHintLeft5[];
extern const u8 BattlePyramid_Text_ExitHintRight5[];
extern const u8 BattlePyramid_Text_ExitHintDown5[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining5[];
extern const u8 BattlePyramid_Text_OneItemRemaining5[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining5[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining5[];
extern const u8 BattlePyramid_Text_FourItemsRemaining5[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining5[];
extern const u8 BattlePyramid_Text_SixItemsRemaining5[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining5[];
extern const u8 BattlePyramid_Text_EightItemsRemaining5[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining5[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining5[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining5[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining5[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining5[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining5[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining5[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining5[];
extern const u8 BattlePyramid_Text_ExitHintUp6[];
extern const u8 BattlePyramid_Text_ExitHintLeft6[];
extern const u8 BattlePyramid_Text_ExitHintRight6[];
extern const u8 BattlePyramid_Text_ExitHintDown6[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining6[];
extern const u8 BattlePyramid_Text_OneItemRemaining6[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining6[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining6[];
extern const u8 BattlePyramid_Text_FourItemsRemaining6[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining6[];
extern const u8 BattlePyramid_Text_SixItemsRemaining6[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining6[];
extern const u8 BattlePyramid_Text_EightItemsRemaining6[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining6[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining6[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining6[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining6[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining6[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining6[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining6[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining6[];


extern const u8 gText_ExitFromBox[];
extern const u8 gText_WhatDoYouWantToDo[];
extern const u8 gText_PleasePickATheme[];
extern const u8 gText_PickTheWallpaper[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_JumpToWhichBox[];
extern const u8 gText_DepositInWhichBox[];
extern const u8 gText_PkmnWasDeposited[];
extern const u8 gText_BoxIsFull2[];
extern const u8 gText_ReleaseThisPokemon[];
extern const u8 gText_PkmnWasReleased[];
extern const u8 gText_ByeByePkmn[];
extern const u8 gText_MarkYourPkmn[];
extern const u8 gText_ThatsYourLastPkmn[];
extern const u8 gText_YourPartysFull[];
extern const u8 gText_YoureHoldingAPkmn[];
extern const u8 gText_WhichOneWillYouTake[];
extern const u8 gText_YouCantReleaseAnEgg[];
extern const u8 gText_ContinueBoxOperations[];
extern const u8 gText_PkmnCameBack[];
extern const u8 gText_WasItWorriedAboutYou[];
extern const u8 gText_FourEllipsesExclamation[];
extern const u8 gText_PleaseRemoveTheMail[];
extern const u8 gText_GiveToAPkmn[];
extern const u8 gText_PlacedItemInBag[];
extern const u8 gText_BagIsFull2[];
extern const u8 gText_PutItemInBag[];
extern const u8 gText_ItemIsNowHeld[];
extern const u8 gText_ChangedToNewItem[];
extern const u8 gText_MailCantBeStored[];
extern const u8 gPCText_Cancel[];
extern const u8 gPCText_Store[];
extern const u8 gPCText_Withdraw[];
extern const u8 gPCText_Move[];
extern const u8 gPCText_Shift[];
extern const u8 gPCText_Place[];
extern const u8 gPCText_Summary[];
extern const u8 gPCText_Release[];
extern const u8 gPCText_Mark[];
extern const u8 gPCText_Jump[];
extern const u8 gPCText_Wallpaper[];
extern const u8 gPCText_Name[];
extern const u8 gPCText_Take[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Switch[];
extern const u8 gPCText_Bag[];
extern const u8 gPCText_Info[];
extern const u8 gPCText_Scenery1[];
extern const u8 gPCText_Scenery2[];
extern const u8 gPCText_Scenery3[];
extern const u8 gPCText_Etcetera[];
extern const u8 gPCText_Friends[];
extern const u8 gPCText_Forest[];
extern const u8 gPCText_City[];
extern const u8 gPCText_Desert[];
extern const u8 gPCText_Savanna[];
extern const u8 gPCText_Crag[];
extern const u8 gPCText_Volcano[];
extern const u8 gPCText_Snow[];
extern const u8 gPCText_Cave[];
extern const u8 gPCText_Beach[];
extern const u8 gPCText_Seafloor[];
extern const u8 gPCText_River[];
extern const u8 gPCText_Sky[];
extern const u8 gPCText_PolkaDot[];
extern const u8 gPCText_Pokecenter[];
extern const u8 gPCText_Machine[];
extern const u8 gPCText_Simple[];
extern const u8 gText_PartyFull[];
extern const u8 gText_Box[];
extern const u8 gText_JustOnePkmn[];


extern const u8 gText_LinkStandby3[];
extern const u8 BattleFrontier_BattleTowerBattleRoom_Text_RecordCouldntBeSaved[];
extern const u8 gText_Poison[];
extern const u8 gText_Sleep[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Burn[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];


extern const u8 gText_PkmnTransferredSomeonesPCBoxFull[];
extern const u8 gText_PkmnTransferredLanettesPCBoxFull[];
extern const u8 gText_PkmnTransferredSomeonesPC[];
extern const u8 gText_PkmnTransferredLanettesPC[];


extern const u8 gText_LeagueChamp[];
extern const u8 gText_HOFNumber[];
extern const u8 gText_PickNextCancel[];
extern const u8 gText_PickCancel[];
extern const u8 gText_AButtonExit[];
extern const u8 gText_HOFCorrupted[];
extern const u8 gText_WelcomeToHOF[];
extern const u8 gText_Number[];
extern const u8 gText_Level[];
extern const u8 gText_IDNumber[];
extern const u8 gText_Name[];
extern const u8 gText_Time[];


extern const u8 gText_MaleSymbol4[];
extern const u8 gText_FemaleSymbol4[];
extern const u8 gText_GenderlessSymbol[];
extern const u8 gText_NewLine2[];
extern const u8 gText_Exit4[];
extern const u8 gText_Lv[];
extern const u8 gExpandedPlaceholder_Empty[];
extern const u8 gText_Exit[];
extern const u8 gDaycareText_GetAlongVeryWell[];
extern const u8 gDaycareText_GetAlong[];
extern const u8 gDaycareText_DontLikeOther[];
extern const u8 gDaycareText_PlayOther[];


extern const u8 gText_ChoosePokemon[];
extern const u8 gText_ChoosePokemonCancel[];
extern const u8 gText_ChoosePokemonConfirm[];
extern const u8 gText_MoveToWhere[];
extern const u8 gText_TeachWhichPokemon[];
extern const u8 gText_UseOnWhichPokemon[];
extern const u8 gText_GiveToWhichPokemon[];
extern const u8 gText_NothingToCut[];
extern const u8 gText_CantSurfHere[];
extern const u8 gText_AlreadySurfing[];
extern const u8 gText_CurrentIsTooFast[];
extern const u8 gText_EnjoyCycling[];
extern const u8 gText_InUseAlready_PM[];
extern const u8 gText_CantUseHere[];
extern const u8 gText_NoPokemonForBattle[];
extern const u8 gText_ChoosePokemon2[];
extern const u8 gText_NotEnoughHp[];
extern const u8 gText_PokemonAreNeeded[];
extern const u8 gText_PokemonCantBeSame[];
extern const u8 gText_NoIdenticalHoldItems[];
extern const u8 gText_DoWhatWithPokemon[];
extern const u8 gText_RestoreWhichMove[];
extern const u8 gText_BoostPp[];
extern const u8 gText_DoWhatWithItem[];
extern const u8 gText_DoWhatWithMail[];
extern const u8 gText_AlreadyHoldingOne[];
extern const u8 gText_NoUse[];
extern const u8 gText_Able[];
extern const u8 gText_First_PM[];
extern const u8 gText_Second_PM[];
extern const u8 gText_Third_PM[];
extern const u8 gText_Fourth[];
extern const u8 gText_Able2[];
extern const u8 gText_NotAble[];
extern const u8 gText_Able3[];
extern const u8 gText_NotAble2[];
extern const u8 gText_Learned[];
extern const u8 gText_Have[];
extern const u8 gText_DontHave[];
extern const u8 gText_Take[];
extern const u8 gText_Mail[];
extern const u8 gText_Take2[];
extern const u8 gText_Read2[];
extern const u8 gText_Cancel2[];
extern const u8 gText_Shift[];
extern const u8 gText_SendOut[];
extern const u8 gText_Enter[];
extern const u8 gText_NoEntry[];
extern const u8 gText_Store[];
extern const u8 gText_Register[];
extern const u8 gText_Trade4[];
extern const u8 gText_Summary5[];
extern const u8 gText_Switch2[];
extern const u8 gText_Item[];
extern const u8 gText_NotPkmnOtherTrainerWants[];
extern const u8 gText_ThatIsntAnEgg[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_OtherTrainersPkmnCantBeTraded[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OtherTrainerCantAcceptPkmn[];
extern const u8 gText_CantTradeWithTrainer[];


extern const u8 gText_XWillBeSentToY[];
extern const u8 gText_ByeByeVar1[];
extern const u8 gText_XSentOverY[];
extern const u8 gText_TakeGoodCareOfX[];
extern const u8 gText_CommunicationStandby5[];


extern const u8 MatchCall_WildBattleText1[];
extern const u8 MatchCall_WildBattleText2[];
extern const u8 MatchCall_WildBattleText3[];
extern const u8 MatchCall_WildBattleText4[];
extern const u8 MatchCall_WildBattleText5[];
extern const u8 MatchCall_WildBattleText6[];
extern const u8 MatchCall_WildBattleText7[];
extern const u8 MatchCall_WildBattleText8[];
extern const u8 MatchCall_WildBattleText9[];
extern const u8 MatchCall_WildBattleText10[];
extern const u8 MatchCall_WildBattleText11[];
extern const u8 MatchCall_WildBattleText12[];
extern const u8 MatchCall_WildBattleText13[];
extern const u8 MatchCall_WildBattleText14[];
extern const u8 MatchCall_WildBattleText15[];
extern const u8 MatchCall_NegativeBattleText1[];
extern const u8 MatchCall_NegativeBattleText2[];
extern const u8 MatchCall_NegativeBattleText3[];
extern const u8 MatchCall_NegativeBattleText4[];
extern const u8 MatchCall_NegativeBattleText5[];
extern const u8 MatchCall_NegativeBattleText6[];
extern const u8 MatchCall_NegativeBattleText7[];
extern const u8 MatchCall_NegativeBattleText8[];
extern const u8 MatchCall_NegativeBattleText9[];
extern const u8 MatchCall_NegativeBattleText10[];
extern const u8 MatchCall_NegativeBattleText11[];
extern const u8 MatchCall_NegativeBattleText12[];
extern const u8 MatchCall_NegativeBattleText13[];
extern const u8 MatchCall_NegativeBattleText14[];
extern const u8 MatchCall_PositiveBattleText1[];
extern const u8 MatchCall_PositiveBattleText2[];
extern const u8 MatchCall_PositiveBattleText3[];
extern const u8 MatchCall_PositiveBattleText4[];
extern const u8 MatchCall_PositiveBattleText5[];
extern const u8 MatchCall_PositiveBattleText6[];
extern const u8 MatchCall_PositiveBattleText7[];
extern const u8 MatchCall_PositiveBattleText8[];
extern const u8 MatchCall_PositiveBattleText9[];
extern const u8 MatchCall_PositiveBattleText10[];
extern const u8 MatchCall_PositiveBattleText11[];
extern const u8 MatchCall_PositiveBattleText12[];
extern const u8 MatchCall_PositiveBattleText13[];
extern const u8 MatchCall_PositiveBattleText14[];
extern const u8 MatchCall_SameRouteBattleRequestText1[];
extern const u8 MatchCall_SameRouteBattleRequestText2[];
extern const u8 MatchCall_SameRouteBattleRequestText3[];
extern const u8 MatchCall_SameRouteBattleRequestText4[];
extern const u8 MatchCall_SameRouteBattleRequestText5[];
extern const u8 MatchCall_SameRouteBattleRequestText6[];
extern const u8 MatchCall_SameRouteBattleRequestText7[];
extern const u8 MatchCall_SameRouteBattleRequestText8[];
extern const u8 MatchCall_SameRouteBattleRequestText9[];
extern const u8 MatchCall_SameRouteBattleRequestText10[];
extern const u8 MatchCall_SameRouteBattleRequestText11[];
extern const u8 MatchCall_SameRouteBattleRequestText12[];
extern const u8 MatchCall_SameRouteBattleRequestText13[];
extern const u8 MatchCall_SameRouteBattleRequestText14[];
extern const u8 MatchCall_DifferentRouteBattleRequestText1[];
extern const u8 MatchCall_DifferentRouteBattleRequestText2[];
extern const u8 MatchCall_DifferentRouteBattleRequestText3[];
extern const u8 MatchCall_DifferentRouteBattleRequestText4[];
extern const u8 MatchCall_DifferentRouteBattleRequestText5[];
extern const u8 MatchCall_DifferentRouteBattleRequestText6[];
extern const u8 MatchCall_DifferentRouteBattleRequestText7[];
extern const u8 MatchCall_DifferentRouteBattleRequestText8[];
extern const u8 MatchCall_DifferentRouteBattleRequestText9[];
extern const u8 MatchCall_DifferentRouteBattleRequestText10[];
extern const u8 MatchCall_DifferentRouteBattleRequestText11[];
extern const u8 MatchCall_DifferentRouteBattleRequestText12[];
extern const u8 MatchCall_DifferentRouteBattleRequestText13[];
extern const u8 MatchCall_DifferentRouteBattleRequestText14[];
extern const u8 MatchCall_PersonalizedText1[];
extern const u8 MatchCall_PersonalizedText2[];
extern const u8 MatchCall_PersonalizedText3[];
extern const u8 MatchCall_PersonalizedText4[];
extern const u8 MatchCall_PersonalizedText5[];
extern const u8 MatchCall_PersonalizedText6[];
extern const u8 MatchCall_PersonalizedText7[];
extern const u8 MatchCall_PersonalizedText8[];
extern const u8 MatchCall_PersonalizedText9[];
extern const u8 MatchCall_PersonalizedText10[];
extern const u8 MatchCall_PersonalizedText11[];
extern const u8 MatchCall_PersonalizedText12[];
extern const u8 MatchCall_PersonalizedText13[];
extern const u8 MatchCall_PersonalizedText14[];
extern const u8 MatchCall_PersonalizedText15[];
extern const u8 MatchCall_PersonalizedText16[];
extern const u8 MatchCall_PersonalizedText17[];
extern const u8 MatchCall_PersonalizedText18[];
extern const u8 MatchCall_PersonalizedText19[];
extern const u8 MatchCall_PersonalizedText20[];
extern const u8 MatchCall_PersonalizedText21[];
extern const u8 MatchCall_PersonalizedText22[];
extern const u8 MatchCall_PersonalizedText23[];
extern const u8 MatchCall_PersonalizedText24[];
extern const u8 MatchCall_PersonalizedText25[];
extern const u8 MatchCall_PersonalizedText26[];
extern const u8 MatchCall_PersonalizedText27[];
extern const u8 MatchCall_PersonalizedText28[];
extern const u8 MatchCall_PersonalizedText29[];
extern const u8 MatchCall_PersonalizedText30[];
extern const u8 MatchCall_PersonalizedText31[];
extern const u8 MatchCall_PersonalizedText32[];
extern const u8 MatchCall_PersonalizedText33[];
extern const u8 MatchCall_PersonalizedText34[];
extern const u8 MatchCall_PersonalizedText35[];
extern const u8 MatchCall_PersonalizedText36[];
extern const u8 MatchCall_PersonalizedText37[];
extern const u8 MatchCall_PersonalizedText38[];
extern const u8 MatchCall_PersonalizedText39[];
extern const u8 MatchCall_PersonalizedText40[];
extern const u8 MatchCall_PersonalizedText41[];
extern const u8 MatchCall_PersonalizedText42[];
extern const u8 MatchCall_PersonalizedText43[];
extern const u8 MatchCall_PersonalizedText44[];
extern const u8 MatchCall_PersonalizedText45[];
extern const u8 MatchCall_PersonalizedText46[];
extern const u8 MatchCall_PersonalizedText47[];
extern const u8 MatchCall_PersonalizedText48[];
extern const u8 MatchCall_PersonalizedText49[];
extern const u8 MatchCall_PersonalizedText50[];
extern const u8 MatchCall_PersonalizedText51[];
extern const u8 MatchCall_PersonalizedText52[];
extern const u8 MatchCall_PersonalizedText53[];
extern const u8 MatchCall_PersonalizedText54[];
extern const u8 MatchCall_PersonalizedText55[];
extern const u8 MatchCall_PersonalizedText56[];
extern const u8 MatchCall_PersonalizedText57[];
extern const u8 MatchCall_PersonalizedText58[];
extern const u8 MatchCall_PersonalizedText59[];
extern const u8 MatchCall_PersonalizedText60[];
extern const u8 MatchCall_PersonalizedText61[];
extern const u8 MatchCall_PersonalizedText62[];
extern const u8 MatchCall_PersonalizedText63[];
extern const u8 MatchCall_PersonalizedText64[];
extern const u8 MatchCall_BattleFrontierStreakText1[];
extern const u8 MatchCall_BattleFrontierStreakText2[];
extern const u8 MatchCall_BattleFrontierStreakText3[];
extern const u8 MatchCall_BattleFrontierStreakText4[];
extern const u8 MatchCall_BattleFrontierStreakText5[];
extern const u8 MatchCall_BattleFrontierStreakText6[];
extern const u8 MatchCall_BattleFrontierStreakText7[];
extern const u8 MatchCall_BattleFrontierStreakText8[];
extern const u8 MatchCall_BattleFrontierStreakText9[];
extern const u8 MatchCall_BattleFrontierStreakText10[];
extern const u8 MatchCall_BattleFrontierStreakText11[];
extern const u8 MatchCall_BattleFrontierStreakText12[];
extern const u8 MatchCall_BattleFrontierStreakText13[];
extern const u8 MatchCall_BattleFrontierStreakText14[];
extern const u8 MatchCall_BattleFrontierRecordStreakText1[];
extern const u8 MatchCall_BattleFrontierRecordStreakText2[];
extern const u8 MatchCall_BattleFrontierRecordStreakText3[];
extern const u8 MatchCall_BattleFrontierRecordStreakText4[];
extern const u8 MatchCall_BattleFrontierRecordStreakText5[];
extern const u8 MatchCall_BattleFrontierRecordStreakText6[];
extern const u8 MatchCall_BattleFrontierRecordStreakText7[];
extern const u8 MatchCall_BattleFrontierRecordStreakText8[];
extern const u8 MatchCall_BattleFrontierRecordStreakText9[];
extern const u8 MatchCall_BattleFrontierRecordStreakText10[];
extern const u8 MatchCall_BattleFrontierRecordStreakText11[];
extern const u8 MatchCall_BattleFrontierRecordStreakText12[];
extern const u8 MatchCall_BattleFrontierRecordStreakText13[];
extern const u8 MatchCall_BattleFrontierRecordStreakText14[];
extern const u8 MatchCall_BattleDomeText1[];
extern const u8 MatchCall_BattleDomeText2[];
extern const u8 MatchCall_BattleDomeText3[];
extern const u8 MatchCall_BattleDomeText4[];
extern const u8 MatchCall_BattleDomeText5[];
extern const u8 MatchCall_BattleDomeText6[];
extern const u8 MatchCall_BattleDomeText7[];
extern const u8 MatchCall_BattleDomeText8[];
extern const u8 MatchCall_BattleDomeText9[];
extern const u8 MatchCall_BattleDomeText10[];
extern const u8 MatchCall_BattleDomeText11[];
extern const u8 MatchCall_BattleDomeText12[];
extern const u8 MatchCall_BattleDomeText13[];
extern const u8 MatchCall_BattleDomeText14[];
extern const u8 MatchCall_BattlePikeText1[];
extern const u8 MatchCall_BattlePikeText2[];
extern const u8 MatchCall_BattlePikeText3[];
extern const u8 MatchCall_BattlePikeText4[];
extern const u8 MatchCall_BattlePikeText5[];
extern const u8 MatchCall_BattlePikeText6[];
extern const u8 MatchCall_BattlePikeText7[];
extern const u8 MatchCall_BattlePikeText8[];
extern const u8 MatchCall_BattlePikeText9[];
extern const u8 MatchCall_BattlePikeText10[];
extern const u8 MatchCall_BattlePikeText11[];
extern const u8 MatchCall_BattlePikeText12[];
extern const u8 MatchCall_BattlePikeText13[];
extern const u8 MatchCall_BattlePikeText14[];
extern const u8 MatchCall_BattlePyramidText1[];
extern const u8 MatchCall_BattlePyramidText2[];
extern const u8 MatchCall_BattlePyramidText3[];
extern const u8 MatchCall_BattlePyramidText4[];
extern const u8 MatchCall_BattlePyramidText5[];
extern const u8 MatchCall_BattlePyramidText6[];
extern const u8 MatchCall_BattlePyramidText7[];
extern const u8 MatchCall_BattlePyramidText8[];
extern const u8 MatchCall_BattlePyramidText9[];
extern const u8 MatchCall_BattlePyramidText10[];
extern const u8 MatchCall_BattlePyramidText11[];
extern const u8 MatchCall_BattlePyramidText12[];
extern const u8 MatchCall_BattlePyramidText13[];
extern const u8 MatchCall_BattlePyramidText14[];
extern const u8 MatchCall_Text_MrStone1[];
extern const u8 MatchCall_Text_MrStone2[];
extern const u8 MatchCall_Text_MrStone3[];
extern const u8 MatchCall_Text_MrStone4[];
extern const u8 MatchCall_Text_MrStone5[];
extern const u8 MatchCall_Text_MrStone6[];
extern const u8 MatchCall_Text_MrStone7[];
extern const u8 MatchCall_Text_MrStone8[];
extern const u8 MatchCall_Text_MrStone9[];
extern const u8 MatchCall_Text_MrStone10[];
extern const u8 MatchCall_Text_MrStone11[];
extern const u8 MatchCall_Text_Norman1[];
extern const u8 MatchCall_Text_Norman2[];
extern const u8 MatchCall_Text_Norman3[];
extern const u8 MatchCall_Text_Norman4[];
extern const u8 MatchCall_Text_Norman5[];
extern const u8 MatchCall_Text_Norman6[];
extern const u8 MatchCall_Text_Norman7[];
extern const u8 MatchCall_Text_Norman8[];
extern const u8 MatchCall_Text_Norman9[];
extern const u8 MatchCall_Text_Mom1[];
extern const u8 MatchCall_Text_Mom2[];
extern const u8 MatchCall_Text_Mom3[];
extern const u8 MatchCall_Text_Steven1[];
extern const u8 MatchCall_Text_Steven2[];
extern const u8 MatchCall_Text_Steven3[];
extern const u8 MatchCall_Text_Steven4[];
extern const u8 MatchCall_Text_Steven5[];
extern const u8 MatchCall_Text_Steven6[];
extern const u8 MatchCall_Text_Steven7[];
extern const u8 MatchCall_Text_May1[];
extern const u8 MatchCall_Text_May2[];
extern const u8 MatchCall_Text_May3[];
extern const u8 MatchCall_Text_May4[];
extern const u8 MatchCall_Text_May5[];
extern const u8 MatchCall_Text_May6[];
extern const u8 MatchCall_Text_May7[];
extern const u8 MatchCall_Text_May8[];
extern const u8 MatchCall_Text_May9[];
extern const u8 MatchCall_Text_May10[];
extern const u8 MatchCall_Text_May11[];
extern const u8 MatchCall_Text_May12[];
extern const u8 MatchCall_Text_May13[];
extern const u8 MatchCall_Text_May14[];
extern const u8 MatchCall_Text_May15[];
extern const u8 MatchCall_Text_Brendan1[];
extern const u8 MatchCall_Text_Brendan2[];
extern const u8 MatchCall_Text_Brendan3[];
extern const u8 MatchCall_Text_Brendan4[];
extern const u8 MatchCall_Text_Brendan5[];
extern const u8 MatchCall_Text_Brendan6[];
extern const u8 MatchCall_Text_Brendan7[];
extern const u8 MatchCall_Text_Brendan8[];
extern const u8 MatchCall_Text_Brendan9[];
extern const u8 MatchCall_Text_Brendan10[];
extern const u8 MatchCall_Text_Brendan11[];
extern const u8 MatchCall_Text_Brendan12[];
extern const u8 MatchCall_Text_Brendan13[];
extern const u8 MatchCall_Text_Brendan14[];
extern const u8 MatchCall_Text_Brendan15[];
extern const u8 MatchCall_Text_Wally1[];
extern const u8 MatchCall_Text_Wally2[];
extern const u8 MatchCall_Text_Wally3[];
extern const u8 MatchCall_Text_Wally4[];
extern const u8 MatchCall_Text_Wally5[];
extern const u8 MatchCall_Text_Wally6[];
extern const u8 MatchCall_Text_Wally7[];
extern const u8 MatchCall_Text_Scott1[];
extern const u8 MatchCall_Text_Scott2[];
extern const u8 MatchCall_Text_Scott3[];
extern const u8 MatchCall_Text_Scott4[];
extern const u8 MatchCall_Text_Scott5[];
extern const u8 MatchCall_Text_Scott6[];
extern const u8 MatchCall_Text_Scott7[];
extern const u8 MatchCall_Text_Roxanne1[];
extern const u8 MatchCall_Text_Roxanne2[];
extern const u8 MatchCall_Text_Roxanne3[];
extern const u8 MatchCall_Text_Roxanne4[];
extern const u8 MatchCall_Text_Brawly1[];
extern const u8 MatchCall_Text_Brawly2[];
extern const u8 MatchCall_Text_Brawly3[];
extern const u8 MatchCall_Text_Brawly4[];
extern const u8 MatchCall_Text_Wattson1[];
extern const u8 MatchCall_Text_Wattson2[];
extern const u8 MatchCall_Text_Wattson3[];
extern const u8 MatchCall_Text_Wattson4[];
extern const u8 MatchCall_Text_Flannery1[];
extern const u8 MatchCall_Text_Flannery2[];
extern const u8 MatchCall_Text_Flannery3[];
extern const u8 MatchCall_Text_Flannery4[];
extern const u8 MatchCall_Text_Winona1[];
extern const u8 MatchCall_Text_Winona2[];
extern const u8 MatchCall_Text_Winona3[];
extern const u8 MatchCall_Text_Winona4[];
extern const u8 MatchCall_Text_TateLiza1[];
extern const u8 MatchCall_Text_TateLiza2[];
extern const u8 MatchCall_Text_TateLiza3[];
extern const u8 MatchCall_Text_TateLiza4[];
extern const u8 MatchCall_Text_Juan1[];
extern const u8 MatchCall_Text_Juan2[];
extern const u8 MatchCall_Text_Juan3[];
extern const u8 MatchCall_Text_Juan4[];
extern const u8 MatchCall_Text_Sidney[];
extern const u8 MatchCall_Text_Phoebe[];
extern const u8 MatchCall_Text_Glacia[];
extern const u8 MatchCall_Text_Drake[];
extern const u8 MatchCall_Text_Wallace[];
extern const u8 gText_MrStoneMatchCallDesc[];
extern const u8 gText_MrStoneMatchCallName[];
extern const u8 gText_StevenMatchCallDesc[];
extern const u8 gText_StevenMatchCallName[];
extern const u8 gText_MayBrendanMatchCallDesc[];
extern const u8 gText_WallyMatchCallDesc[];
extern const u8 gText_NormanMatchCallDesc[];
extern const u8 gText_NormanMatchCallName[];
extern const u8 gText_MomMatchCallDesc[];
extern const u8 gText_MomMatchCallName[];
extern const u8 gText_ScottMatchCallDesc[];
extern const u8 gText_ScottMatchCallName[];
extern const u8 gText_RoxanneMatchCallDesc[];
extern const u8 gText_BrawlyMatchCallDesc[];
extern const u8 gText_WattsonMatchCallDesc[];
extern const u8 gText_FlanneryMatchCallDesc[];
extern const u8 gText_WinonaMatchCallDesc[];
extern const u8 gText_TateLizaMatchCallDesc[];
extern const u8 gText_JuanMatchCallDesc[];
extern const u8 gText_EliteFourMatchCallDesc[];
extern const u8 gText_ChampionMatchCallDesc[];
extern const u8 gText_ProfBirchMatchCallDesc[];
extern const u8 gText_ProfBirchMatchCallName[];
extern const u8 gText_MatchCallSteven_Strategy[];
extern const u8 gText_MatchCallSteven_Pokemon[];
extern const u8 gText_MatchCallSteven_Intro1_BeforeMeteorFallsBattle[];
extern const u8 gText_MatchCallSteven_Intro2_BeforeMeteorFallsBattle[];
extern const u8 gText_MatchCallSteven_Intro1_AfterMeteorFallsBattle[];
extern const u8 gText_MatchCallSteven_Intro2_AfterMeteorFallsBattle[];
extern const u8 gText_MatchCallBrendan_Strategy[];
extern const u8 gText_MatchCallBrendan_Pokemon[];
extern const u8 gText_MatchCallBrendan_Intro1[];
extern const u8 gText_MatchCallBrendan_Intro2[];
extern const u8 gText_MatchCallMay_Strategy[];
extern const u8 gText_MatchCallMay_Pokemon[];
extern const u8 gText_MatchCallMay_Intro1[];
extern const u8 gText_MatchCallMay_Intro2[];


extern const u8 gText_ColorDarkGrey[];
extern const u8 gText_CommunicationStandby[];
extern const u8 gText_AnnouncingResults[];
extern const u8 gText_PreliminaryResults[];
extern const u8 gText_Round2Results[];
extern const u8 gText_ContestantsMonWon[];


extern const u8 gText_LinkCableBattles[];
extern const u8 gText_LinkBattles[];
extern const u8 gText_WaitingTrainerFinishReading[];
extern const u8 gText_TrainerCardName[];
extern const u8 gText_TrainerCardIDNo[];
extern const u8 gText_TrainerCardMoney[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_EmptyString6[];
extern const u8 gText_TrainerCardPokedex[];
extern const u8 gText_TrainerCardTime[];
extern const u8 gText_Colon2[];
extern const u8 gText_Var1sTrainerCard[];
extern const u8 gText_HallOfFameDebut[];
extern const u8 gText_WinsLosses[];
extern const u8 gText_PokemonTrades[];
extern const u8 gText_BerryCrush[];
extern const u8 gText_UnionTradesAndBattles[];
extern const u8 gText_NumPokeblocks[];
extern const u8 gText_PokeblocksWithFriends[];
extern const u8 gText_WonContestsWFriends[];
extern const u8 gText_WinsStraight[];
extern const u8 gText_NumBP[];
extern const u8 gText_BattleTower[];
extern const u8 gText_BattlePtsWon[];


extern const u8 gText_SymbolsEarned[];
extern const u8 gText_BattleRecord[];
extern const u8 gText_BattlePoints[];
extern const u8 gText_ThereIsNoBattleRecord[];
extern const u8 gText_CheckFrontierMap[];
extern const u8 gText_CheckTrainerCard[];
extern const u8 gText_ViewRecordedBattle[];
extern const u8 gText_PutAwayFrontierPass[];
extern const u8 gText_CurrentBattlePoints[];
extern const u8 gText_CollectedSymbols[];
extern const u8 gText_BattleTowerAbilitySymbol[];
extern const u8 gText_BattleDomeTacticsSymbol[];
extern const u8 gText_BattlePalaceSpiritsSymbol[];
extern const u8 gText_BattleArenaGutsSymbol[];
extern const u8 gText_BattleFactoryKnowledgeSymbol[];
extern const u8 gText_BattlePikeLuckSymbol[];
extern const u8 gText_BattlePyramidBraveSymbol[];
extern const u8 gText_EmptyString7[];
extern const u8 gText_BattleTower3[];
extern const u8 gText_BattleDome2[];
extern const u8 gText_BattlePalace2[];
extern const u8 gText_BattleArena2[];
extern const u8 gText_BattleFactory2[];
extern const u8 gText_BattlePike2[];
extern const u8 gText_BattlePyramid2[];
extern const u8 gText_BattleTowerDesc[];
extern const u8 gText_BattleDomeDesc[];
extern const u8 gText_BattlePalaceDesc[];
extern const u8 gText_BattleArenaDesc[];
extern const u8 gText_BattleFactoryDesc[];
extern const u8 gText_BattlePikeDesc[];
extern const u8 gText_BattlePyramidDesc[];


extern const u8 gText_Give[];
extern const u8 gText_NoNeed[];


extern const u8 gText_StopGivingPkmnMail[];
extern const u8 gText_LikeToQuitQuiz[];
extern const u8 gText_ChallengeQuestionMark[];
extern const u8 gText_QuitEditing[];
extern const u8 gText_AllTextBeingEditedWill[];
extern const u8 gText_BeDeletedThatOkay[];
extern const u8 gText_Lady[];
extern const u8 gText_F700sQuiz[];
extern const u8 gText_CreateAQuiz[];
extern const u8 gText_SelectTheAnswer[];
extern const u8 gText_OriginalSongWillBeUsed[];
extern const u8 gText_LyricsCantBeDeleted[];
extern const u8 gText_CombineTwoWordsOrPhrases3[];
extern const u8 gText_OnlyOnePhrase[];
extern const u8 gText_YouCannotQuitHere[];
extern const u8 gText_SectionMustBeCompleted[];
extern const u8 gText_ThreeQuestionMarks[];
extern const u8 gText_Profile[];
extern const u8 gText_CombineFourWordsOrPhrases[];
extern const u8 gText_AndMakeYourProfile[];
extern const u8 gText_YourProfile[];
extern const u8 gText_IsAsShownOkay[];
extern const u8 gText_AtTheBattlesStart[];
extern const u8 gText_CombineSixWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage[];
extern const u8 gText_YourFeelingAtTheBattlesStart[];
extern const u8 gText_UponWinningABattle[];
extern const u8 gText_WhatYouSayIfYouWin[];
extern const u8 gText_UponLosingABattle[];
extern const u8 gText_WhatYouSayIfYouLose[];
extern const u8 gText_CombineNineWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage2[];
extern const u8 gText_TheMailMessage[];
extern const u8 gText_Interview[];
extern const u8 gText_LetsReplyToTheInterview[];
extern const u8 gText_TheAnswer[];
extern const u8 gText_TheBardsSong[];
extern const u8 gText_ChangeJustOneWordOrPhrase[];
extern const u8 gText_AndImproveTheBardsSong[];
extern const u8 gText_TheBardsSong2[];
extern const u8 gText_FindWordsThatDescribeYour[];
extern const u8 gText_FeelingsRightNow[];
extern const u8 gText_WhatsHipAndHappening[];
extern const u8 gText_CombineTwoWordsOrPhrases[];
extern const u8 gText_AndMakeATrendySaying[];
extern const u8 gText_TheTrendySaying[];
extern const u8 gText_AfterYouHaveReadTheQuiz[];
extern const u8 gText_QuestionPressTheAButton[];
extern const u8 gText_TheQuizAnswerIs[];
extern const u8 gText_OutOfTheListedChoices[];
extern const u8 gText_SelectTheAnswerToTheQuiz[];
extern const u8 gText_TheAnswerColon[];
extern const u8 gText_AndCreateAQuiz[];
extern const u8 gText_IsThisQuizOK[];
extern const u8 gText_PickAWordOrPhraseAnd[];
extern const u8 gText_SetTheQuizAnswer[];
extern const u8 gText_ApprenticesPhrase[];
extern const u8 gText_FindWordsWhichFit[];
extern const u8 gText_TheTrainersImage[];
extern const u8 gText_ApprenticePhrase[];
extern const u8 gText_GoodSaying[];
extern const u8 gText_CombineTwoWordsOrPhrases2[];
extern const u8 gText_ToTeachHerAGoodSaying[];
extern const u8 gText_FansQuestion[];
extern const u8 gText_TheImage[];
extern const u8 gText_Questionnaire[];
extern const u8 gText_AndFillOutTheQuestionnaire[];
extern const u8 gText_DelAll[];
extern const u8 gText_Cancel5[];
extern const u8 gText_Ok2[];
extern const u8 gText_Quiz[];
extern const u8 gText_Answer[];
extern const u8 gEasyChatGroupName_Pokemon[];
extern const u8 gEasyChatGroupName_Trainer[];
extern const u8 gEasyChatGroupName_Status[];
extern const u8 gEasyChatGroupName_Battle[];
extern const u8 gEasyChatGroupName_Greetings[];
extern const u8 gEasyChatGroupName_People[];
extern const u8 gEasyChatGroupName_Voices[];
extern const u8 gEasyChatGroupName_Speech[];
extern const u8 gEasyChatGroupName_Endings[];
extern const u8 gEasyChatGroupName_Feelings[];
extern const u8 gEasyChatGroupName_Conditions[];
extern const u8 gEasyChatGroupName_Actions[];
extern const u8 gEasyChatGroupName_Lifestyle[];
extern const u8 gEasyChatGroupName_Hobbies[];
extern const u8 gEasyChatGroupName_Time[];
extern const u8 gEasyChatGroupName_Misc[];
extern const u8 gEasyChatGroupName_Adjectives[];
extern const u8 gEasyChatGroupName_Events[];
extern const u8 gEasyChatGroupName_Move1[];
extern const u8 gEasyChatGroupName_Move2[];
extern const u8 gEasyChatGroupName_TrendySaying[];
extern const u8 gEasyChatGroupName_Pokemon2[];


extern const u8 gText_EasyChatKeyboard_ABCDEFothers[];
extern const u8 gText_EasyChatKeyboard_GHIJKL[];
extern const u8 gText_EasyChatKeyboard_MNOPQRS[];
extern const u8 gText_EasyChatKeyboard_TUVWXYZ[];
extern const u8 gText_NamingScreenKeyboard_abcdef[];
extern const u8 gText_NamingScreenKeyboard_ghijkl[];
extern const u8 gText_NamingScreenKeyboard_mnopqrs[];
extern const u8 gText_NamingScreenKeyboard_tuvwxyz[];
extern const u8 gText_NamingScreenKeyboard_ABCDEF[];
extern const u8 gText_NamingScreenKeyboard_GHIJKL[];
extern const u8 gText_NamingScreenKeyboard_MNOPQRS[];
extern const u8 gText_NamingScreenKeyboard_TUVWXYZ[];
extern const u8 gText_NamingScreenKeyboard_01234[];
extern const u8 gText_NamingScreenKeyboard_56789[];
extern const u8 gText_NamingScreenKeyboard_Symbols1[];
extern const u8 gText_NamingScreenKeyboard_Symbols2[];
extern const u8 gText_UnionRoomChatKeyboard_ABCDE[];
extern const u8 gText_UnionRoomChatKeyboard_FGHIJ[];
extern const u8 gText_UnionRoomChatKeyboard_KLMNO[];
extern const u8 gText_UnionRoomChatKeyboard_PQRST[];
extern const u8 gText_UnionRoomChatKeyboard_UVWXY[];
extern const u8 gText_UnionRoomChatKeyboard_Z[];
extern const u8 gText_UnionRoomChatKeyboard_01234Upper[];
extern const u8 gText_UnionRoomChatKeyboard_56789Upper[];
extern const u8 gText_UnionRoomChatKeyboard_PunctuationUpper[];
extern const u8 gText_UnionRoomChatKeyboard_SymbolsUpper[];
extern const u8 gText_UnionRoomChatKeyboard_abcde[];
extern const u8 gText_UnionRoomChatKeyboard_fghij[];
extern const u8 gText_UnionRoomChatKeyboard_klmno[];
extern const u8 gText_UnionRoomChatKeyboard_pqrst[];
extern const u8 gText_UnionRoomChatKeyboard_uvwxy[];
extern const u8 gText_UnionRoomChatKeyboard_z[];
extern const u8 gText_UnionRoomChatKeyboard_01234Lower[];
extern const u8 gText_UnionRoomChatKeyboard_56789Lower[];
extern const u8 gText_UnionRoomChatKeyboard_PunctuationLower[];
extern const u8 gText_UnionRoomChatKeyboard_SymbolsLower[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji1[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji2[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji3[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji4[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji5[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji6[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji7[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji8[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji9[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji10[];


extern const u8 gJPText_ReceiveMysteryGiftWithEReader[];
extern const u8 gJPText_SelectConnectFromEReaderMenu[];
extern const u8 gJPText_SelectConnectWithGBA[];
extern const u8 gJPText_LinkIsIncorrect[];
extern const u8 gJPText_CardReadingHasBeenHalted[];
extern const u8 gJPText_Connecting[];
extern const u8 gJPText_ConnectionErrorCheckLink[];
extern const u8 gJPText_ConnectionErrorTryAgain[];
extern const u8 gJPText_AllowEReaderToLoadCard[];
extern const u8 gJPText_ConnectionComplete[];
extern const u8 gJPText_NewTrainerHasComeToHoenn[];
extern const u8 gJPText_PleaseWaitAMoment[];
extern const u8 gJPText_WriteErrorUnableToSaveData[];


extern const u8 gText_Powder[];


extern const u8 gText_F700JoinedChat[];
extern const u8 gText_F700LeftChat[];
extern const u8 gText_Hello[];
extern const u8 gText_Pokemon2[];
extern const u8 gText_Trade[];
extern const u8 gText_Battle[];
extern const u8 gText_Lets[];
extern const u8 gText_Ok[];
extern const u8 gText_Sorry[];
extern const u8 gText_YaySmileEmoji[];
extern const u8 gText_ThankYou[];
extern const u8 gText_ByeBye[];


extern const u8 gText_MysteryGift[];
extern const u8 gText_PickOKCancel[];
extern const u8 gText_PickOKExit[];
extern const u8 gJPText_MysteryGift[];
extern const u8 gJPText_DecideStop[];
extern const u8 gText_WonderCards[];
extern const u8 gText_WonderNews[];
extern const u8 gText_Exit3[];
extern const u8 gText_WirelessCommunication[];
extern const u8 gText_Friend2[];
extern const u8 gText_Cancel2[];
extern const u8 gText_Receive[];
extern const u8 gText_Send[];
extern const u8 gText_Toss[];
extern const u8 gText_VarietyOfEventsImportedWireless[];
extern const u8 gText_WonderCardsInPossession[];
extern const u8 gText_ReadNewsThatArrived[];
extern const u8 gText_ReturnToTitle[];
extern const u8 gText_WhatToDoWithCards[];
extern const u8 gText_WhatToDoWithNews[];
extern const u8 gText_IfThrowAwayCardEventWontHappen[];
extern const u8 gText_OkayToDiscardNews[];
extern const u8 gText_WonderNewsThrownAway[];
extern const u8 gText_WonderCardThrownAway[];
extern const u8 gText_DataWillBeSaved[];
extern const u8 gText_SaveCompletedPressA[];
extern const u8 gText_NothingSentOver[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardReceivedFrom[];
extern const u8 gText_WonderCardReceived[];
extern const u8 gText_WonderNewsReceivedFrom[];
extern const u8 gText_WonderNewsReceived[];
extern const u8 gText_NewStampReceived[];
extern const u8 gText_AlreadyHadCard[];
extern const u8 gText_AlreadyHadStamp[];
extern const u8 gText_AlreadyHadNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_CommunicationCanceled[];
extern const u8 gText_CantAcceptNewsFromTrainer[];
extern const u8 gText_CantAcceptCardFromTrainer[];
extern const u8 gText_CommunicationError[];
extern const u8 gText_NewTrainerReceived[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardSentTo[];
extern const u8 gText_WonderNewsSentTo[];
extern const u8 gText_StampSentTo[];
extern const u8 gText_OtherTrainerHasCard[];
extern const u8 gText_OtherTrainerHasStamp[];
extern const u8 gText_OtherTrainerHasNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_OtherTrainerCanceled[];
extern const u8 gText_GiftSentTo[];
extern const u8 gText_CantSendGiftToTrainer[];
extern const u8 gText_DontHaveCardNewOneInput[];
extern const u8 gText_DontHaveNewsNewOneInput[];
extern const u8 gText_WhereShouldCardBeAccessed[];
extern const u8 gText_WhereShouldNewsBeAccessed[];
extern const u8 gText_Communicating[];
extern const u8 gText_ThrowAwayWonderCard[];
extern const u8 gText_HaventReceivedCardsGift[];
extern const u8 gText_CommunicationCompleted[];
extern const u8 gText_HaventReceivedGiftOkayToDiscard[];
extern const u8 gText_SendingWonderCard[];
extern const u8 gText_SendingWonderNews[];
extern const u8 gText_WirelessCommStatus[];
extern const u8 gText_PeopleTrading[];
extern const u8 gText_PeopleBattling[];
extern const u8 gText_PeopleInUnionRoom[];
extern const u8 gText_PeopleCommunicating[];
extern const u8 gText_CommStandbyAwaitingOtherPlayer[];
extern const u8 gText_RefusedBattle[];
extern const u8 gText_BattleWasRefused[];
extern const u8 gText_QuitChatting[];
extern const u8 gText_RegisterTextWhere[];
extern const u8 gText_RegisterTextHere[];
extern const u8 gText_InputText[];
extern const u8 gText_ExitingChat[];
extern const u8 gText_LeaderLeftEndingChat[];
extern const u8 gText_RegisteredTextChangedOKToSave[];
extern const u8 gText_AlreadySavedFile_Chat[];
extern const u8 gText_SavingDontTurnOff_Chat[];
extern const u8 gText_PlayerSavedGame_Chat[];
extern const u8 gText_IfLeaderLeavesChatEnds[];
extern const u8 gText_Upper[];
extern const u8 gText_Lower[];
extern const u8 gText_Symbols[];
extern const u8 gText_Register2[];
extern const u8 gText_Exit2[];


extern const u8 gText_BerryPickingRecords[];
extern const u8 gText_BerriesPicked[];
extern const u8 gText_BerriesInRowFivePlayers[];
extern const u8 gText_BestScore[];
extern const u8 gText_1Colon[];
extern const u8 gText_2Colon[];
extern const u8 gText_3Colon[];
extern const u8 gText_4Colon[];
extern const u8 gText_5Colon[];
extern const u8 gText_SpacePoints[];
extern const u8 gText_10P30P50P50P[];
extern const u8 gText_AnnouncingPrizes[];
extern const u8 gText_AnnouncingRankings[];
extern const u8 gText_FirstPlacePrize[];
extern const u8 gText_CantHoldAnyMore[];
extern const u8 gText_FilledStorageSpace[];
extern const u8 gText_BerryPickingResults[];
extern const u8 gText_WantToPlayAgain[];
extern const u8 gText_CommunicationStandby3[];
extern const u8 gText_SomeoneDroppedOut[];


extern const u8 gText_WantToPlayAgain2[];
extern const u8 gText_SomeoneDroppedOut2[];
extern const u8 gText_CommunicationStandby4[];
extern const u8 gText_AwesomeWonF701F700[];
extern const u8 gText_FilledStorageSpace2[];
extern const u8 gText_CantHoldMore[];
extern const u8 gText_SpacePoints2[];
extern const u8 gText_SpaceTimes3[];
extern const u8 gText_PkmnJumpRecords[];
extern const u8 gText_JumpsInARow[];
extern const u8 gText_BestScore2[];
extern const u8 gText_ExcellentsInARow[];


extern const u8 gText_Var1Berry[];
extern const u8 gText_XDotY[];
extern const u8 gText_1DotBlueF700[];
extern const u8 gText_1DotF700[];
extern const u8 gText_TimeColon[];
extern const u8 gText_SpaceSec[];
extern const u8 gText_XDotY2[];
extern const u8 gText_SpaceMin[];
extern const u8 gText_StrVar1[];
extern const u8 gText_PressingSpeed[];
extern const u8 gText_TimesPerSec[];
extern const u8 gText_XDotY3[];
extern const u8 gText_Silkiness[];
extern const u8 gText_Var1Percent[];
extern const u8 gText_PressesRankings[];
extern const u8 gText_CrushingResults[];
extern const u8 gText_BerryCrush2[];
extern const u8 gText_PressingSpeedRankings[];
extern const u8 gText_Var1Players[];
extern const u8 gText_ReadyToBerryCrush[];
extern const u8 gText_WaitForAllChooseBerry[];
extern const u8 gText_EndedWithXUnitsPowder[];
extern const u8 gText_RecordingGameResults[];
extern const u8 gText_PlayBerryCrushAgain[];
extern const u8 gText_YouHaveNoBerries[];
extern const u8 gText_MemberDroppedOut[];
extern const u8 gText_TimesUpNoGoodPowder[];
extern const u8 gText_CommunicationStandby2[];
extern const u8 gText_SpaceTimes2[];
extern const u8 gText_XDotY[];
extern const u8 gText_Var1Berry[];
extern const u8 gText_NeatnessRankings[];
extern const u8 gText_CoopRankings[];
extern const u8 gText_PressingPowerRankings[];


extern const u8 gText_ContestLady_Handsome[];
extern const u8 gText_ContestLady_Vinny[];
extern const u8 gText_ContestLady_Moreme[];
extern const u8 gText_ContestLady_Ironhard[];
extern const u8 gText_ContestLady_Muscle[];
extern const u8 gText_ContestLady_Coolness[];
extern const u8 gText_ContestLady_Beauty[];
extern const u8 gText_ContestLady_Cuteness[];
extern const u8 gText_ContestLady_Smartness[];
extern const u8 gText_ContestLady_Toughness[];
extern const u8 gText_QuizLady_Lady[];
extern const u8 gText_FavorLady_Slippery[];
extern const u8 gText_FavorLady_Roundish[];
extern const u8 gText_FavorLady_Whamish[];
extern const u8 gText_FavorLady_Shiny[];
extern const u8 gText_FavorLady_Sticky[];
extern const u8 gText_FavorLady_Pointy[];

extern const u8 gText_CoolnessContest[];
extern const u8 gText_BeautyContest[];
extern const u8 gText_CutenessContest[];
extern const u8 gText_SmartnessContest[];
extern const u8 gText_ToughnessContest[];


extern const u8 gText_CallCantBeMadeHere[];
extern const u8 gText_NumberRegistered[];
extern const u8 gText_NumberOfBattles[];
extern const u8 gText_Unknown[];
extern const u8 gText_TrainerCloseBy[];
extern const u8 gText_Call[];
extern const u8 gText_Check[];
extern const u8 gText_Cancel6[];


extern const u8 gText_CheckMapOfHoenn[];
extern const u8 gText_CheckPokemonInDetail[];
extern const u8 gText_CallRegisteredTrainer[];
extern const u8 gText_CheckObtainedRibbons[];
extern const u8 gText_PutAwayPokenav[];
extern const u8 gText_CheckPartyPokemonInDetail[];
extern const u8 gText_CheckAllPokemonInDetail[];
extern const u8 gText_ReturnToPokenavMenu[];
extern const u8 gText_FindCoolPokemon[];
extern const u8 gText_FindBeautifulPokemon[];
extern const u8 gText_FindCutePokemon[];
extern const u8 gText_FindSmartPokemon[];
extern const u8 gText_FindToughPokemon[];
extern const u8 gText_ReturnToConditionMenu[];
extern const u8 gText_NoRibbonWinners[];


extern const u8 gText_NumberF700[];
extern const u8 gText_RibbonsF700[];


extern const u8 gText_Coolness[];
extern const u8 gText_Toughness[];
extern const u8 gText_Smartness[];
extern const u8 gText_Cuteness[];
extern const u8 gText_Beauty3[];


extern const u8 gText_SavingDontTurnOff2[];
extern const u8 gText_BlenderMaxSpeedRecord[];
extern const u8 gText_234Players[];


extern const u8 gText_Stats_EV[];
extern const u8 gText_Stats_EV_HP[];
extern const u8 gText_Stats_EV_Attack[];
extern const u8 gText_Stats_EV_Defense[];
extern const u8 gText_Stats_EV_Speed[];
extern const u8 gText_Stats_EV_SpAtk[];
extern const u8 gText_Stats_EV_SpDef[];
extern const u8 gText_Stats_HP[];
extern const u8 gText_Stats_Attack[];
extern const u8 gText_Stats_Defense[];
extern const u8 gText_Stats_Speed[];
extern const u8 gText_Stats_SpAtk[];
extern const u8 gText_Stats_SpDef[];
extern const u8 gText_Stats_EVHP[];
extern const u8 gText_Stats_EVAttack[];
extern const u8 gText_Stats_EVDefense[];
extern const u8 gText_Stats_EVSpeed[];
extern const u8 gText_Stats_EVSpAtk[];
extern const u8 gText_Stats_EVSpDef[];
extern const u8 gText_Stats_MoveSelectedMax[];
extern const u8 gText_Stats_MoveLevel[];
extern const u8 gText_Stats_Gender_0[];
extern const u8 gText_Stats_Gender_12_5[];
extern const u8 gText_Stats_Gender_25[];
extern const u8 gText_Stats_Gender_50[];
extern const u8 gText_Stats_Gender_75[];
extern const u8 gText_Stats_Gender_87_5[];
extern const u8 gText_Stats_Gender_100[];
extern const u8 gText_Stats_Catch[];
extern const u8 gText_Stats_Exp[];
extern const u8 gText_Stats_EggCycles[];
extern const u8 gText_Stats_Growthrate[];
extern const u8 gText_Stats_Friendship[];
extern const u8 gText_Stats_MEDIUM_FAST[];
extern const u8 gText_Stats_ERRATIC[];
extern const u8 gText_Stats_FLUCTUATING[];
extern const u8 gText_Stats_MEDIUM_SLOW[];
extern const u8 gText_Stats_FAST[];
extern const u8 gText_Stats_SLOW[];
extern const u8 gText_Stats_ContestHeart[];
extern const u8 gText_PlusSymbol[];
extern const u8 gText_Stats_Minus[];
extern const u8 gText_Stats_eggGroup_g1[];
extern const u8 gText_Stats_eggGroup_g2[];
extern const u8 gText_Stats_eggGroup_MONSTER[];
extern const u8 gText_Stats_eggGroup_WATER_1[];
extern const u8 gText_Stats_eggGroup_BUG[];
extern const u8 gText_Stats_eggGroup_FLYING[];
extern const u8 gText_Stats_eggGroup_FIELD[];
extern const u8 gText_Stats_eggGroup_FAIRY[];
extern const u8 gText_Stats_eggGroup_GRASS[];
extern const u8 gText_Stats_eggGroup_HUMAN_LIKE[];
extern const u8 gText_Stats_eggGroup_WATER_3[];
extern const u8 gText_Stats_eggGroup_MINERAL[];
extern const u8 gText_Stats_eggGroup_AMORPHOUS[];
extern const u8 gText_Stats_eggGroup_WATER_2[];
extern const u8 gText_Stats_eggGroup_DITTO[];
extern const u8 gText_Stats_eggGroup_DRAGON[];
extern const u8 gText_Stats_eggGroup_UNDISCOVERED[];
extern const u8 gText_Dex_SEEN[];
extern const u8 gText_Dex_OWN[];
# 14 "src/battle_tower.c" 2
# 1 "include/recorded_battle.h" 1



extern u32 gRecordedBattleRngSeed;
extern u32 gBattlePalaceMoveSelectionRngValue;
extern u8 gUnknown_0203C7B4;

void sub_8184DA4(u8 arg0);
void sub_8184E58(void);
void RecordedBattle_SetBattlerAction(u8 battlerId, u8 action);
void RecordedBattle_ClearBattlerAction(u8 battlerId, u8 bytesToClear);
u8 RecordedBattle_GetBattlerAction(u8 battlerId);
u8 sub_81850D0(void);
u8 sub_81850DC(u8 *arg0);
void sub_81851A8(u8 *arg0);
bool32 CanCopyRecordedBattleSaveData(void);
bool32 MoveRecordedBattleToSaveData(void);
void PlayRecordedBattle(void (*CB2_After)(void));
u8 GetRecordedBattleFrontierFacility(void);
u8 GetRecordedBattleFronterBrainSymbol(void);
void RecordedBattle_SaveParties(void);
u8 GetActiveBattlerLinkPlayerGender(void);
void sub_8185F84(void);
void sub_8185F90(u16 arg0);
u8 sub_8185FAC(void);
u8 GetBattleSceneInRecordedBattle(void);
u8 GetTextSpeedInRecordedBattle(void);
void RecordedBattle_CopyBattlerMoves(void);
void sub_818603C(u8 arg0);
u32 GetAiScriptsInRecordedBattle(void);
void sub_8186444(void);
bool8 sub_8186450(void);
void sub_8186468(u8 *dst);
u8 GetRecordedBattleRecordMixFriendClass(void);
u8 GetRecordedBattleApprenticeId(void);
u8 GetRecordedBattleRecordMixFriendLanguage(void);
u8 GetRecordedBattleApprenticeLanguage(void);
void RecordedBattle_SaveBattleOutcome(void);
u16 *GetRecordedBattleEasyChatSpeech(void);
# 15 "src/battle_tower.c" 2
# 1 "include/easy_chat.h" 1



# 1 "include/main.h" 1
# 5 "include/easy_chat.h" 2
# 1 "include/constants/easy_chat.h" 1
# 6 "include/easy_chat.h" 2

struct EasyChatScreenTemplate
{
    u8 type;
    u8 numColumns;
    u8 numRows;
    u8 frameId:7;
    u8 fourFooterOptions:1;
    const u8 *titleText;
    const u8 *instructionsText1;
    const u8 *instructionsText2;
    const u8 *confirmText1;
    const u8 *confirmText2;
};

struct EasyChatScreen
{
             u8 type;
             u8 templateId;
             u8 numColumns;
             u8 numRows;
             u8 state;
             s8 mainCursorColumn;
             s8 mainCursorRow;
             u8 unk_07;
             u8 stateBackup;
             u8 unk_09;
             s8 unk_0a;
             s8 unk_0b;
             u8 unk_0c;
             u8 unk_0d;
             u8 unk_0e;
             u8 unk_0f;
             s8 unk_10;
             s8 unk_11;
             u8 displayedPersonType;
             u8 unk_13;
             u8 unk_14[0x20];
             const u8 *titleText;
             u16 *words;
             u16 ecWordBuffer[9];
};

struct Unk203A11C
{
    u16 unk0;
    u16 windowId;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    s8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB[0xC1];
    u8 unkCC[0x202];
    u16 unk2CE;
    int unk2D0;
    int unk2D4;
    struct Sprite *unk2D8;
    struct Sprite *unk2DC;
    struct Sprite *unk2E0;
    struct Sprite *unk2E4;
    struct Sprite *unk2E8;
    struct Sprite *unk2EC;
    struct Sprite *unk2F0;
    struct Sprite *unk2F4;
    struct Sprite *unk2F8;
    struct Sprite *unk2FC;
    u16 unk300[0x800 / 2];
    u16 unkB00[0x800 / 2];
};

struct EasyChatPhraseFrameDimensions
{
    u8 left:5;
    u8 top:3;
    u8 width;
    u8 height;
    u8 footerId;
};

struct EasyChatWordInfo
{
    const u8 *text;
    int alphabeticalOrder;
    int enabled;
};

typedef union
{
    const u16 *valueList;
    const struct EasyChatWordInfo *words;
} EasyChatGroupWordData;

struct EasyChatGroup
{
    EasyChatGroupWordData wordData;
    u16 numWords;
    u16 numEnabledWords;
};

struct Unk203A120
{
    u16 unk0;
    u16 unk2[0x16];
    u16 unk2E[27];
    u16 unk64[27][270];
    u8 filler3958[0x2C];
    u16 unk3984[0x10E];
    u16 unk3BA0;
};

struct EasyChatWordsByLetter
{
    const u16 *words;
    int numWords;
};

void InitEasyChatPhrases(void);
void ShowEasyChatScreen(void);
u8 * CopyEasyChatWord(u8 *dest, u16 word);
bool32 sub_811F8D8(int word);
void InitializeEasyChatWordArray(u16 *words, u16 length);
u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows);
bool8 ECWord_CheckIfOutsideOfValidRange(u16 word);
u16 GetRandomEasyChatWordFromGroup(u16 group);
u16 GetNewHipsterPhraseToTeach(void);
u16 EasyChat_GetNumWordsInGroup(u8);
u16 GetRandomEasyChatWordFromUnlockedGroup(u16);
void DoEasyChatScreen(u8 type, u16 *words, MainCallback callback, u8 displayedPersonType);
void sub_811F8BC(void);
void UnlockAdditionalPhrase(u8 additionalPhraseId);
# 16 "src/battle_tower.c" 2
# 1 "include/gym_leader_rematch.h" 1
# 17 "src/battle_tower.c" 2
# 1 "include/battle_transition.h" 1



void TestBattleTransition(u8 transitionId);
void BattleTransition_StartOnField(u8 transitionId);
void BattleTransition_Start(u8 transitionId);
bool8 IsBattleTransitionDone(void);
bool8 FldEff_Pokeball(void);
void TransitionPhase1_Task_RunFuncs(u8 taskId);
void GetBg0TilesDst(u16 **tilemap, u16 **tileset);

extern const struct SpritePalette gSpritePalette_Pokeball;

enum
{
    MUGSHOT_SIDNEY,
    MUGSHOT_PHOEBE,
    MUGSHOT_GLACIA,
    MUGSHOT_DRAKE,
    MUGSHOT_CHAMPION,
    MUGSHOTS_COUNT
};
# 18 "src/battle_tower.c" 2
# 1 "include/trainer_see.h" 1



struct ApproachingTrainer
{
    u8 objectEventId;
    u8 radius;
    const u8 *trainerScriptPtr;
    u8 taskId;
};

extern u16 gWhichTrainerToFaceAfterBattle;
extern u8 gPostBattleMovementScript[4];
extern struct ApproachingTrainer gApproachingTrainers[2];
extern u8 gNoOfApproachingTrainers;
extern bool8 gTrainerApproachedPlayer;
extern u8 gApproachingTrainerId;

bool8 CheckForTrainersWantingBattle(void);
void sub_80B4578(struct ObjectEvent *var);
void EndTrainerApproach(void);
void TryPrepareSecondApproachingTrainer(void);
u8 FldEff_ExclamationMarkIcon(void);
u8 FldEff_QuestionMarkIcon(void);
u8 FldEff_HeartIcon(void);
u8 GetCurrentApproachingTrainerObjectEventId(void);
u8 GetChosenApproachingTrainerObjectEventId(u8 arrayId);
void PlayerFaceTrainerAfterBattle(void);
# 19 "src/battle_tower.c" 2
# 1 "include/new_game.h" 1



extern bool8 gDifferentSaveFile;


extern bool8 gEnableContestDebugging;

void SetTrainerId(u32 trainerId, u8 *dst);
u32 GetTrainerId(u8 *trainerId);
void CopyTrainerId(u8 *dst, u8 *src);
void NewGameInitData(void);
void ResetMenuAndMonGlobals(void);
void Sav2_ClearSetDefault(void);
# 20 "src/battle_tower.c" 2
# 1 "gflib/string_util.h" 1



extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];

enum StringConvertMode
{
    STR_CONV_MODE_LEFT_ALIGN,
    STR_CONV_MODE_RIGHT_ALIGN,
    STR_CONV_MODE_LEADING_ZEROS
};

u8 *StringCopy10(u8 *dest, const u8 *src);
u8 *StringGetEnd10(u8 *str);
u8 *StringCopy7(u8 *dest, const u8 *src);
u8 *StringCopy(u8 *dest, const u8 *src);
u8 *StringAppend(u8 *dest, const u8 *src);
u8 *StringCopyN(u8 *dest, const u8 *src, u8 n);
u8 *StringAppendN(u8 *dest, const u8 *src, u8 n);
u16 StringLength(const u8 *str);
s32 StringCompare(const u8 *str1, const u8 *str2);
s32 StringCompareN(const u8 *str1, const u8 *str2, u32 n);
bool8 IsStringLengthAtLeast(const u8 *str, s32 n);
u8 *ConvertIntToDecimalStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertUIntToDecimalStringN(u8 *dest, u32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertIntToHexStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *StringExpandPlaceholders(u8 *dest, const u8 *src);
u8 *StringBraille(u8 *dest, const u8 *src);
const u8 *GetExpandedPlaceholder(u32 id);
u8 *StringFill(u8 *dest, u8 c, u16 n);
u8 *StringCopyPadded(u8 *dest, const u8 *src, u8 c, u16 n);
u8 *StringFillWithTerminator(u8 *dest, u16 n);
u8 *StringCopyN_Multibyte(u8 *dest, u8 *src, u32 n);
u32 StringLength_Multibyte(const u8 *str);
u8 *WriteColorChangeControlCode(u8 *dest, u32 colorType, u8 color);
bool32 IsStringJapanese(u8 *str);
bool32 sub_800924C(u8 *str, s32 n);
u8 GetExtCtrlCodeLength(u8 code);
s32 StringCompareWithoutExtCtrlCodes(const u8 *str1, const u8 *str2);
void ConvertInternationalString(u8 *s, u8 language);
void StripExtCtrlCodes(u8 *str);
# 21 "src/battle_tower.c" 2
# 1 "include/data.h" 1



# 1 "include/constants/moves.h" 1
# 5 "include/data.h" 2



struct MonCoords
{


    u8 size;
    u8 y_offset;
};

struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
 u8 evs[6];
    u16 species;
    u16 heldItem;
    u16 moves[4];
};

union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             union TrainerMonPtr party;
};



extern const u16 gUnknown_082FF1D8[];
extern const u32 gUnknown_082FF1F8[];

extern const struct SpriteFrameImage gUnknown_082FF3A8[];
extern const struct SpriteFrameImage gUnknown_082FF3C8[];
extern const struct SpriteFrameImage gUnknown_082FF3E8[];
extern const struct SpriteFrameImage gUnknown_082FF408[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Brendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_May[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Red[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Leaf[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireBrendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireMay[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Wally[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Steven[];

extern const union AffineAnimCmd *const gUnknown_082FF618[];
extern const union AffineAnimCmd *const gUnknown_082FF694[];
extern const union AffineAnimCmd *const gUnknown_082FF6C0[];

extern const union AnimCmd *const gUnknown_082FF70C[];
extern const struct MonCoords gMonFrontPicCoords[];
extern const struct MonCoords gMonBackPicCoords[];
extern const struct CompressedSpriteSheet gMonBackPicTable[];
extern const struct CompressedSpriteSheet gMonBackPicTableFemale[];
extern const struct CompressedSpritePalette gMonPaletteTable[];
extern const struct CompressedSpritePalette gMonPaletteTableFemale[];
extern const struct CompressedSpritePalette gMonShinyPaletteTable[];
extern const struct CompressedSpritePalette gMonShinyPaletteTableFemale[];
extern const union AnimCmd *const *const gTrainerFrontAnimsPtrTable[];
extern const struct MonCoords gTrainerFrontPicCoords[];
extern const struct CompressedSpriteSheet gTrainerFrontPicTable[];
extern const struct CompressedSpritePalette gTrainerFrontPicPaletteTable[];
extern const union AnimCmd *const *const gTrainerBackAnimsPtrTable[];
extern const struct MonCoords gTrainerBackPicCoords[];
extern const struct CompressedSpriteSheet gTrainerBackPicTable[];
extern const struct CompressedSpritePalette gTrainerBackPicPaletteTable[];

extern const u8 gEnemyMonElevation[809 + 264 + 1];

extern const union AnimCmd *const *const gMonFrontAnimsPtrTable[];
extern const struct CompressedSpriteSheet gMonFrontPicTable[];
extern const struct CompressedSpriteSheet gMonFrontPicTableFemale[];
extern const bool8 SpeciesHasGenderDifference[809 + 264 + 1];

extern const struct Trainer gTrainers[];
extern const u8 gTrainerClassNames[][13];
extern const u8 gSpeciesNames[][10 + 1];
extern const u8 gMoveNames[747][12 + 1];
# 22 "src/battle_tower.c" 2
# 1 "include/link.h" 1
# 106 "include/link.h"
struct LinkStatus
{
    u32 localId:2;
    u32 playerCount:3;
    u32 master:1;
    u32 connEstablished:1;
    u32 unused_7:1;
    u32 receivedNothing:1;
    u32 unused_9:7;
    u32 errors:7;
};






enum
{
    LINK_STATE_START0,
    LINK_STATE_START1,
    LINK_STATE_HANDSHAKE,
    LINK_STATE_INIT_TIMER,
    LINK_STATE_CONN_ESTABLISHED,
};

enum
{
    EXCHANGE_NOT_STARTED,
    EXCHANGE_COMPLETE,
    EXCHANGE_TIMED_OUT,
    EXCHANGE_DIFF_SELECTIONS,
    EXCHANGE_PLAYER_NOT_READY,
    EXCHANGE_PARTNER_NOT_READY,
    EXCHANGE_WRONG_NUM_PLAYERS,
    EXCHANGE_STAT_7
};

enum
{
    QUEUE_FULL_NONE,
    QUEUE_FULL_SEND,
    QUEUE_FULL_RECV,
};

enum
{
    LAG_NONE,
    LAG_MASTER,
    LAG_SLAVE,
};

struct LinkPlayer
{
               u16 version;
               u16 lp_field_2;
               u32 trainerId;
               u8 name[7 + 1];
               u8 progressFlags;
               u8 neverRead;
               u8 progressFlagsCopy;
               u8 gender;
               u32 linkType;
               u16 id;
               u16 language;
};

struct LinkPlayerBlock
{
    char magic1[16];
    struct LinkPlayer linkPlayer;
    char magic2[16];
};



struct SendQueue
{
                u16 data[8][50];
                u8 pos;
                u8 count;
};

struct RecvQueue
{
    u16 data[4][8][50];
    u8 pos;
    u8 count;
};

struct Link
{
                u8 isMaster;
                u8 state;
                u8 localId;
                u8 playerCount;
                u16 tempRecvBuffer[4];
                bool8 receivedNothing;
                s8 serialIntrCounter;
                bool8 handshakeAsMaster;
                u8 link_field_F;


                bool8 hardwareError;
                bool8 badChecksum;
                u8 queueFull;
                u8 lag;

                u16 checksum;

                u8 sendCmdIndex;
                u8 recvCmdIndex;

                struct SendQueue sendQueue;
                struct RecvQueue recvQueue;
};

struct BlockRequest
{
    void * address;
    u32 size;
};

extern const struct BlockRequest sBlockRequestLookupTable[5];

extern struct Link gLink;
extern u16 gRecvCmds[5][8];
extern u8 gBlockSendBuffer[0x100];
extern u16 gLinkType;
extern u32 gLinkStatus;
extern u16 gBlockRecvBuffer[5][0x100 / 2];
extern u16 gSendCmd[8];
extern struct LinkPlayer gLinkPlayers[5];
extern u16 word_3002910[];
extern bool8 gReceivedRemoteLinkPlayers;
extern u32 gBerryBlenderKeySendAttempts;
extern bool8 gLinkVSyncDisabled;
extern u32 gLinkStatus;


bool8 IsWirelessAdapterConnected(void);
void Task_DestroySelf(u8 taskId);
void OpenLink(void);
void CloseLink(void);
u16 LinkMain2(const u16 *);
void sub_8007B14(void);
bool32 sub_8007B24(void);
void ClearLinkCallback(void);
void ClearLinkCallback_2(void);
u8 GetLinkPlayerCount(void);
void OpenLinkTimed(void);
u8 GetLinkPlayerDataExchangeStatusTimed(int lower, int upper);
bool8 IsLinkPlayerDataExchangeComplete(void);
u32 GetLinkPlayerTrainerId(u8);
void ResetLinkPlayers(void);
void sub_8007E24(void);
void sub_8007E4C(void);
u8 GetMultiplayerId(void);
u8 bitmask_all_link_players_but_self(void);
bool8 SendBlock(u8, const void *, u16);
u8 GetBlockReceivedStatus(void);
void ResetBlockReceivedFlags(void);
void ResetBlockReceivedFlag(u8);
u8 GetLinkPlayerCount_2(void);
bool8 IsLinkMaster(void);
void CB2_LinkError(void);
u8 GetSioMultiSI(void);
bool8 IsLinkConnectionEstablished(void);
bool8 HasLinkErrorOccurred(void);
void ResetSerial(void);
u32 LinkMain1(u8 *shouldAdvanceLinkState, u16 *sendCmd, u16 (*recvCmds)[8]);
void LinkVSync(void);
void Timer3Intr(void);
void SerialCB(void);
bool32 InUnionRoom(void);
void LoadWirelessStatusIndicatorSpriteGfx(void);
bool8 IsLinkTaskFinished(void);
void CreateWirelessStatusIndicatorSprite(u8, u8);
void SetLinkStandbyCallback(void);
void SetWirelessCommType1(void);
void CheckShouldAdvanceLinkState(void);
u8 IsLinkMaster(void);
void SetCloseLinkCallback(void);
bool8 HandleLinkConnection(void);
void SetLinkDebugValues(u32 seed, u32 flags);
void SetBerryBlenderLinkCallback(void);
void SetSuppressLinkErrorMessage(bool8 flag);
void sub_800B524(struct LinkPlayer *linkPlayer);
u8 GetSioMultiSI(void);
void ClearSavedLinkPlayers(void);
void BufferLinkErrorInfo(u32 status, u8 lastSendQueueCount, u8 lastRecvQueueCount, u8 unk_06);
void sub_800B348(void);
void LinkPlayerFromBlock(u32 who);
bool32 Link_AnyPartnersPlayingFRLG_JP(void);
void ResetLinkPlayerCount(void);
void SaveLinkPlayers(u8 a0);
void SetWirelessCommType0(void);
bool32 sub_800B504(void);

extern u16 gLinkPartnersHeldKeys[6];
extern u32 gLinkDebugSeed;
extern struct LinkPlayerBlock gLocalLinkPlayerBlock;
extern bool8 gLinkErrorOccurred;
extern u32 gLinkDebugFlags;
extern bool8 gRemoteLinkPlayersNotReceived[4];
extern u8 gBlockReceivedStatus[4];
extern u16 gLinkHeldKeys;
extern u32 gLinkStatus;
extern u8 gUnknown_030030E4;
extern u8 gUnknown_030030E8;
extern bool8 gReadyToExitStandby[4];
extern bool8 gReadyToCloseLink[4];
extern u16 gReadyCloseLinkType;
extern u8 gSuppressLinkErrorMessage;
extern u8 gWirelessCommType;
extern bool8 gSavedLinkPlayerCount;
extern u8 gSavedMultiplayerId;
extern struct LinkTestBGInfo gLinkTestBGInfo;
extern void (*gLinkCallback)(void);
extern bool8 gShouldAdvanceLinkState;
extern u16 gLinkTestBlockChecksums[4];
extern u8 gBlockRequestType;
extern u8 gLastSendQueueCount;
extern u8 gLastRecvQueueCount;
extern u16 gLinkSavedIme;
extern u32 gFiller_03003074;
extern u32 gFiller_03003154;
extern u32 gFiller_03003158;
extern u32 gFiller_0300315c;
extern u32 gFiller_03004138;
extern u32 gFiller_0300413C;
extern u32 gFiller_03003080;
extern struct LinkPlayer gLocalLinkPlayer;

bool32 Link_AnyPartnersPlayingRubyOrSapphire(void);
bool32 LinkDummy_Return2(void);
void SetLocalLinkPlayerId(u8);
u8 GetSavedPlayerCount(void);
void sub_8009FAC(void);
bool8 SendBlockRequest(u8 type);
u8 GetLinkPlayerCountAsBitFlags(void);
u8 sub_800A0C8(s32, s32);
u8 GetSavedLinkPlayerCountAsBitFlags(void);
void SetCloseLinkCallbackHandleJP(void);
void CheckLinkPlayersMatchSaved(void);
void StartSendingKeysToLink(void);
bool8 DoesLinkPlayerCountMatchSaved(void);
void SetCloseLinkCallbackAndType(u16 type);
bool32 IsSendingKeysToLink(void);
u32 GetLinkRecvQueueLength(void);
# 23 "src/battle_tower.c" 2
# 1 "include/field_message_box.h" 1



enum
{
    FIELD_MESSAGE_BOX_HIDDEN,
    FIELD_MESSAGE_BOX_UNUSED,
    FIELD_MESSAGE_BOX_NORMAL,
    FIELD_MESSAGE_BOX_AUTO_SCROLL,
};

bool8 ShowFieldMessage(const u8 *message);
bool8 ShowPokenavFieldMessage(const u8 *message);
bool8 ShowFieldMessageFromBuffer(void);
bool8 ShowFieldAutoScrollMessage(const u8 *message);
void HideFieldMessageBox(void);
bool8 IsFieldMessageBoxHidden(void);
u8 GetFieldMessageBoxMode(void);
void StopFieldMessage(void);
void InitFieldMessageBox(void);
# 24 "src/battle_tower.c" 2
# 1 "include/tv.h" 1






extern u8 *const gTVStringVarPtrs[3];

void ClearTVShowData(void);
void sub_80EE184(void);
void sub_80EE35C(u16 foeSpecies, u16 species, u8 moveIdx, const u16 *movePtr, u16 betterMove);
void TryPutFrontierTVShowOnAir(u16 winStreak, u8 facility);
void DoTVShow(void);
void DoTVShowInSearchOfTrainers(void);
void TryPutTreasureInvestigatorsOnAir(void);
void TryPutLotteryWinnerReportOnAir(void);
void TryPutTrainerFanClubOnAir(void);
void IncrementDailyPlantedBerries(void);
void IncrementDailyPickedBerries(void);
void IncrementDailyBattlePoints(u16 delta);
void HideBattleTowerReporter(void);
void ReceiveTvShowsData(void *src, u32 size, u8 masterIdx);
void TryPutSpotTheCutiesOnAir(struct Pokemon *pokemon, u8 ribbonMonDataIdx);
u32 GetPlayerIDAsU32(void);
bool8 GetPriceReduction(u8 newsKind);
void sub_80F14F8(TVShow *shows);
size_t CountDigits(int value);
u8 GetRibbonCount(struct Pokemon *pokemon);
void AlertTVThatPlayerPlayedSlotMachine(u16 nCoinsSpent);
void AlertTVThatPlayerPlayedRoulette(u16 nCoinsSpent);
void AlertTVOfNewCoinTotal(u16 nCoinsPaidOut);
void TryPutSecretBaseSecretsOnAir(void);
void TryPutTodaysRivalTrainerOnAir(void);
void sub_80EDC60(const u16 *words);
void sub_80EDA80(void);
void ReceivePokeNewsData(void *src, u32 size, u8 masterIdx);
void sub_80F0BB8(void);
void RecordFishingAttemptForTV(bool8 caughtFish);
void IncrementDailySlotsUses(void);
void IncrementDailyRouletteUses(void);
void IncrementDailyWildBattles(void);
void IncrementDailyBerryBlender(void);
void sub_80F1208(TVShow *shows);
void sub_80EE44C(u8 nMonsCaught, u8 nPkblkUsed);
void sub_80F14F8(TVShow *shows);
size_t sub_80EF370(int value);
bool8 Put3CheersForPokeblocksOnTheAir(const u8 *partnersName, u8 flavor, u8 unused, u8 sheen, u8 language);
void SetPokemonAnglerSpecies(u16 species);
void UpdateTVShowsPerDay(u16 days);
void PutPokemonTodayCaughtOnAir(void);
void TV_PutSecretBaseVisitOnTheAir(void);
void PutBattleUpdateOnTheAir(u8 opponentLinkPlayerId, u16 move, u16 speciesPlayer, u16 speciesOpponent);
void BravoTrainerPokemonProfile_BeforeInterview1(u16 move);
void InterviewBefore(void);
void InterviewAfter(void);
void UpdateTVScreensOnMap(int, int);
void TV_PrintIntToStringVar(u8 varIdx, int value);
void SaveRecordedItemPurchasesForTVShow(void);
bool8 ShouldAirFrontierTVShow(void);
void sub_80EE8C8(u16 winStreak, u8 facilityAndMode);
void BravoTrainerPokemonProfile_BeforeInterview2(u8 contestStandingPlace);
void ContestLiveUpdates_Init(u8 round1Placing);
void ContestLiveUpdates_SetRound2Placing(u8 round2Placing);
void ContestLiveUpdates_SetWinnerAppealFlag(u8 flag);
void ContestLiveUpdates_SetWinnerMoveUsed(u16 move);
void ContestLiveUpdates_SetLoserData(u8 flag, u8 loser);
void ResetGabbyAndTy(void);
# 25 "src/battle_tower.c" 2
# 1 "include/battle_factory.h" 1



void CallBattleFactoryFunction(void);
bool8 InBattleFactory(void);
u8 GetFactoryMonFixedIV(u8 arg0, u8 arg1);
void FillFactoryBrainParty(void);
u8 GetNumPastRentalsRank(u8 battleMode, u8 lvlMode);
u32 GetAiScriptsInBattleFactory(void);
void SetMonMoveAvoidReturn(struct Pokemon *mon, u16 moveArg, u8 moveSlot);
# 26 "src/battle_tower.c" 2
# 1 "include/constants/apprentice.h" 1
# 27 "src/battle_tower.c" 2
# 1 "include/constants/battle_dome.h" 1
# 28 "src/battle_tower.c" 2
# 1 "include/constants/battle_frontier.h" 1
# 29 "src/battle_tower.c" 2
# 1 "include/constants/battle_frontier_mons.h" 1
# 30 "src/battle_tower.c" 2
# 1 "include/constants/battle_tent_mons.h" 1
# 31 "src/battle_tower.c" 2
# 1 "include/constants/battle_tent_trainers.h" 1
# 32 "src/battle_tower.c" 2
# 1 "include/constants/battle_tower.h" 1
# 33 "src/battle_tower.c" 2
# 1 "include/constants/frontier_util.h" 1
# 34 "src/battle_tower.c" 2
# 1 "include/constants/items.h" 1
# 35 "src/battle_tower.c" 2
# 1 "include/constants/trainers.h" 1




# 1 "include/constants/battle_frontier_trainers.h" 1
# 6 "include/constants/trainers.h" 2
# 36 "src/battle_tower.c" 2
# 1 "include/constants/event_objects.h" 1
# 37 "src/battle_tower.c" 2
# 1 "include/constants/moves.h" 1
# 38 "src/battle_tower.c" 2
# 1 "include/constants/easy_chat.h" 1
# 39 "src/battle_tower.c" 2
# 1 "include/constants/tv.h" 1
# 40 "src/battle_tower.c" 2
extern const u8 MossdeepCity_SpaceCenter_2F_EventScript_MaxieTrainer[];
extern const u8 MossdeepCity_SpaceCenter_2F_EventScript_TabithaTrainer[];


__attribute__((section("ewram_data"))) const struct BattleFrontierTrainer *gFacilityTrainers = ((void *)0);
__attribute__((section("ewram_data"))) const struct FacilityMon *gFacilityTrainerMons = ((void *)0);


u16 gFrontierTempParty[4];


static void InitTowerChallenge(void);
static void GetTowerData(void);
static void SetTowerData(void);
static void SetNextFacilityOpponent(void);
static void SetTowerBattleWon(void);
static void AwardBattleTowerRibbons(void);
static void SaveTowerChallenge(void);
static void GetOpponentIntroSpeech(void);
static void nullsub_61(void);
static void nullsub_116(void);
static void LoadMultiPartnerCandidatesData(void);
static void ShowPartnerCandidateMessage(void);
static void LoadLinkMultiOpponentsData(void);
static void sub_8164DCC(void);
static void SetMultiPartnerGfx(void);
static void SetTowerInterviewData(void);
static void ValidateBattleTowerRecordChecksums(void);
static void SaveCurrentWinStreak(void);
static void ValidateApprenticesChecksums(void);
static void SetNextBattleTentOpponent(void);
static void CopyEReaderTrainerFarewellMessage(void);
static void ClearBattleTowerRecord(struct EmeraldBattleTowerRecord *record);
static void FillTrainerParty(u16 trainerId, u8 firstMonId, u8 monCount);
static void FillTrainerPartyFAKE(u16 trainerId, u8 firstMonId, u8 monCount);
static void FillTentTrainerParty_(u16 trainerId, u8 firstMonId, u8 monCount);
static void FillFactoryFrontierTrainerParty(u16 trainerId, u8 firstMonId);
static void FillFrontierTrainerPartyFake(u8 monCount);
static void FillFactoryTentTrainerParty(u16 trainerId, u8 firstMonId);
static u8 GetFrontierTrainerFixedIvs(u16 trainerId);
static void FillPartnerParty(u16 trainerId);
static void SetEReaderTrainerChecksum(struct BattleTowerEReaderTrainer *ereaderTrainer);
static u8 SetTentPtrsGetLevel(void);


const u16 gBattleFrontierHeldItems[] =
{
0,
94,
95,
96,
97,
98,
99,
100,

1,

144,
145,
146,
147,
148,

3,

149,
150,
151,
152,
153,
154,
155,
156,
157,
158,
159,
160,
161,
162,
163,
164,
165,
166,
167,
168,
169,
170,
171,
172,
173,
174,
175,
176,
177,
178,
179,
180,
181,
182,
183,
184,
185,
186,
187,
188,
189,
190,
191,
192,
193,
194,
195,
196,
197,
198,
199,
200,
201,
202,
203,
204,
205,
206,
207,
208,
209,
210,
211,
212,
215,
217,
218,
219,
220,
223,
225,
227,
228,
229,
235,
236,
237,
238,
239,
240,
241,
242,
243,
244,
245,
246,
256,
257,
258,
266,
267,
268,
269,
270,
271,
272,
273,
274,
275,
276,
277,
278,
279,
280,
281,
282,
283,
284,
285,
286,
287,
288,
289,
290,
291,
292,
293,
294,
295,
296,
297,
298,
299,
300,
301,
302,
303,
304,
305,
306,
307,
308,
309,
310,
311,
312,
314,
362,
397,
398,
399,
400,
401,
402,
403,
404,
405,
406,
407,
408,
409,
410,
411,
412,
413,
414,
415,
416,
417,
418,
419,
420,
421,
422,
423,
424,
425,
426,
427,
428,
429,
430,
431,
432,
433,
434,
435,
436,
437,
438,
439,
440,
441,
442,
443,
247,
253,
265,
};

# 1 "src/data/battle_frontier/battle_frontier_trainer_mons.h" 1
# 1984 "src/data/battle_frontier/battle_frontier_trainer_mons.h"
const u16 gBattleFrontierTrainerMons_ZU[] =
{
 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 92, 93, 114, 129, 130, -1
};

const u16 gBattleFrontierTrainerMons_ZU_PU[] =
{
 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 92, 93, 114, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 187, 188, 189, 190, 191, 195, 196, 185, 186, 192, 193, 194, 197, 198, 199, 199, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, -1
};

const u16 gBattleFrontierTrainerMons_ZU_PU_NU[] =
{
 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 187, 188, 189, 190, 191, 195, 196, 185, 186, 192, 193, 194, 197, 198, 199, 199, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, -1
};

const u16 gBattleFrontierTrainerMons_PU_NU[] =
{
 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, -1
};

const u16 gBattleFrontierTrainerMons_PU_NU_RU[] =
{
 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, -1
};
const u16 gBattleFrontierTrainerMons_NU_RU[] =
{
 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, -1
};

const u16 gBattleFrontierTrainerMons_NU_RU_UU[] =
{
 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, -1
};

const u16 gBattleFrontierTrainerMons_NU_RU_UU_OU[] =
{
 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, -1
};

const u16 gBattleFrontierTrainerMons_RU_UU_OU[] =
{
 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, -1
};

const u16 gBattleFrontierTrainerMons_UU_OU[] =
{
 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, -1
};
const u16 gBattleFrontierTrainerMons_Dortha[] =
{
 1, 4, 5, 7, 8, 12, 13, 15, 16, 17, 18, 20, 21, 24, 25, 26, 33, 35, 37, 39, 40, 41, 42, 44, 45, 46, 47, 48, 49, 52, 53, 55, 59, 67, 68, 69, 70, 71, 73, 76, 77, 83, 86, 90, 94, 97, 105, 106, 111, 113, 119, 120, 127, 129, 131, 132, 135, 136, 139, 148, 152, 153, 163, 165, 167, 169, 170, 171, 172, 180, 183, 187, 188, 191, 193, 194, 201, 202, 205, 208, 209, 210, 211, 214, 218, 220, 221, 222, 232, 234, 235, 239, 240, 249, 255, 256, 269, 270, 271, 274, 276, 280, 281, 282, 285, 288, 290, 294, 295, 309, 310, 313, 316, 319, 320, 321, 322, 323, 325, 327, 330, 333, 334, 339, 341, 342, 346, 350, 353, 357, 358, 359, 361, 365, 370, 373, 374, 375, 377, 378, 380, 381, 382, 383, 384, 386, 392, 394, 397, 401, 404, 409, 411, 412, 413, 414, 415, 421, 424, 430, 437, 443, 447, 448, 449, 456, 460, 465, 466, 475, 476, 478, 479, 482, 485, 488, 489, 490, 491, 493, 495, 496, 497, 500, 501, 505, 507, 510, 516, 521, 522, 526, 527, 528, 537, 538, 542, 548, 549, 550, 551, 553, 557, 558, 559, 561, 564, 566, 568, 571, 577, 579, 582, 587, 588, 592, 593, 595, 596, 598, 599, 600, 601, 603, 606, 607, 609, 611, 612, 613, 616, 617, 618, 622, 627, 630, 631, 632, 633, 636, -1
};
# 297 "src/battle_tower.c" 2
# 1 "src/data/battle_frontier/battle_frontier_trainers.h" 1
const struct BattleFrontierTrainer gBattleFrontierTrainers[300] =
{
    [0] = {
        .facilityClass = 0x2b,
        .trainerName = _("Dylan"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x1e, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x31, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x20, (0x5 << 9) | 0x1f, (0x5 << 9) | 0x1, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x22, (0x6 << 9) | 0x3, 0xFFFF, (0x7 << 9) | 0xa, (0x7 << 9) | 0xf, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [1] = {
        .facilityClass = 0x2b,
        .trainerName = _("Bryce"),
        .speechBefore = {(0x14 << 9) | 0xe, (0x8 << 9) | 0x3d, (0x2 << 9) | 0x61, (0x5 << 9) | 0x14, 0xFFFF, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x20, (0x3 << 9) | 0x6, (0x8 << 9) | 0xb, (0x7 << 9) | 0x1e, (0x10 << 9) | 0x17, 0xFFFF},
        .speechLose = {(0x9 << 9) | 0x1f, (0x6 << 9) | 0x4, (0x14 << 9) | 0xe, (0x8 << 9) | 0x19, (0x2 << 9) | 0x61, (0x5 << 9) | 0x14},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [2] = {
        .facilityClass = 0x2b,
        .trainerName = _("Lorenz"),
        .speechBefore = {(0x4 << 9) | 0xe, (0x6 << 9) | 0x0, (0x5 << 9) | 0x6, (0x5 << 9) | 0x28, (0x5 << 9) | 0x0, (0xe << 9) | 0xd},
        .speechWin = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x15, (0xe << 9) | 0x10, (0x6 << 9) | 0x0},
        .speechLose = {(0xe << 9) | 0x2, (0x8 << 9) | 0xb, (0xf << 9) | 0x21, (0x5 << 9) | 0x3d, (0x7 << 9) | 0x2c, (0x3 << 9) | 0x28},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [3] = {
        .facilityClass = 0x47,
        .trainerName = _("Manjula"),
        .speechBefore = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x2c, (0x7 << 9) | 0x1, (0x9 << 9) | 0x19, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a},
        .speechWin = {(0x5 << 9) | 0x31, (0x9 << 9) | 0xe, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x39, (0x5 << 9) | 0x2, ((0x13 << 9) | 165)},
        .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0x15, (0x8 << 9) | 0x6, (0x14 << 9) | 0xf, (0x5 << 9) | 0x27, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [4] = {
        .facilityClass = 0x47,
        .trainerName = _("Jenni"),
        .speechBefore = {(0x6 << 9) | 0x1d, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x25, (0x10 << 9) | 0xf, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x31, (0x9 << 9) | 0x21, (0x7 << 9) | 0xf, (0x3 << 9) | 0x20, (0x5 << 9) | 0x29, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0x33, (0x6 << 9) | 0x4, (0x5 << 9) | 0x29, (0x7 << 9) | 0x1e, (0x4 << 9) | 0x1d, (0xa << 9) | 0x5},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [5] = {
        .facilityClass = 0x47,
        .trainerName = _("Shannon"),
        .speechBefore = {(0x1 << 9) | 0xf, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x10 << 9) | 0x1f, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x1, 0xFFFF, (0x5 << 9) | 0x29, (0x10 << 9) | 0x9, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x9 << 9) | 0xe, (0x4 << 9) | 0x0, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [6] = {
        .facilityClass = 0x26,
        .trainerName = _("Axl"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x7 << 9) | 0x1e, (0xc << 9) | 0x22, (0x5 << 9) | 0x2, (0xb << 9) | 0x20},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0xc << 9) | 0x22, (0x7 << 9) | 0x11, (0x6 << 9) | 0x4, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xc << 9) | 0x22, (0x7 << 9) | 0x36, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [7] = {
        .facilityClass = 0x26,
        .trainerName = _("Matevos"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0x3 << 9) | 0x28, (0x8 << 9) | 0x13, (0xd << 9) | 0x6, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x6, (0x9 << 9) | 0x3c, (0x5 << 9) | 0x1f, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x3d, (0x8 << 9) | 0x11, (0x8 << 9) | 0x3a, (0xd << 9) | 0x7, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [8] = {
        .facilityClass = 0x26,
        .trainerName = _("Gnaeus"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0xa, (0x8 << 9) | 0x6, (0x2 << 9) | 0x15, (0x3 << 9) | 0x8, 0xFFFF},
        .speechWin = {(0x2 << 9) | 0x15, (0x6 << 9) | 0x0, 0xFFFF, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x2 << 9) | 0x15},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [9] = {
        .facilityClass = 0x27,
        .trainerName = _("Katka"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x14, (0x3 << 9) | 0x2d, (0x7 << 9) | 0x30, (0x5 << 9) | 0x1, (0x3 << 9) | 0x6},
        .speechWin = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0x4 << 9) | 0x1d, (0x3 << 9) | 0x13, (0x8 << 9) | 0x37, (0x5 << 9) | 0x14},
        .speechLose = {(0x7 << 9) | 0x1d, (0x8 << 9) | 0x29, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0x3 << 9) | 0x2d, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [10] = {
        .facilityClass = 0x27,
        .trainerName = _("Cindie"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x3 << 9) | 0x16, (0x8 << 9) | 0xb, (0x7 << 9) | 0x8, (0x5 << 9) | 0x28, (0x5 << 9) | 0xb},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x6, (0x6 << 9) | 0x0, (0x5 << 9) | 0xb, (0x5 << 9) | 0x2a, (0x3 << 9) | 0x7},
        .speechLose = {(0x4 << 9) | 0xd, (0x5 << 9) | 0x14, (0x5 << 9) | 0xb, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2a, (0x3 << 9) | 0x30},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [11] = {
        .facilityClass = 0x27,
        .trainerName = _("Olga"),
        .speechBefore = {(0xb << 9) | 0x11, (0x3 << 9) | 0x28, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2, (0x8 << 9) | 0x29},
        .speechWin = {(0x4 << 9) | 0x11, (0x6 << 9) | 0x1, 0xFFFF, (0x4 << 9) | 0x11, (0x8 << 9) | 0x25, (0xa << 9) | 0x21},
        .speechLose = {(0x8 << 9) | 0x11, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2c, (0xa << 9) | 0xe, (0x3 << 9) | 0x2c, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [12] = {
        .facilityClass = 0x15,
        .trainerName = _("Caius"),
        .speechBefore = {(0x5 << 9) | 0x14, (0x3 << 9) | 0x31, (0x6 << 9) | 0x3, (0x7 << 9) | 0x1d, (0xa << 9) | 0x2e, (0x6 << 9) | 0x0},
        .speechWin = {(0x7 << 9) | 0x21, (0x5 << 9) | 0x1, (0x3 << 9) | 0x6, 0xFFFF, 0xFFFF, 0xFFFF},
        .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x0, 0xFFFF, (0x5 << 9) | 0x1, (0x3 << 9) | 0x30, (0x5 << 9) | 0x8},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [13] = {
        .facilityClass = 0x15,
        .trainerName = _("Caelius"),
        .speechBefore = {(0x5 << 9) | 0x37, (0x8 << 9) | 0x2a, (0x9 << 9) | 0x36, (0x5 << 9) | 0x28, (0xa << 9) | 0x23, (0x1 << 9) | 0xe},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0xc << 9) | 0x21},
        .speechLose = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x8, (0x5 << 9) | 0x2, (0x8 << 9) | 0x18, (0xf << 9) | 0x14, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [14] = {
        .facilityClass = 0x15,
        .trainerName = _("Seppo"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x3a, (0x2 << 9) | 0x15, (0x1 << 9) | 0xe, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x25, (0x3 << 9) | 0x9, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x25, (0x3 << 9) | 0x2f, (0x8 << 9) | 0x39, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [15] = {
        .facilityClass = 0x13,
        .trainerName = _("Neela"),
        .speechBefore = {(0x3 << 9) | 0x8, (0x5 << 9) | 0x2, (0x8 << 9) | 0x16, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x13 << 9) | 186)},
        .speechWin = {(0x4 << 9) | 0x4, (0x5 << 9) | 0x5, ((0x13 << 9) | 186), (0x7 << 9) | 0x8, (0x5 << 9) | 0x28, ((0x15 << 9) | 124)},
        .speechLose = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x36, (0x8 << 9) | 0x20, ((0x12 << 9) | 129), ((0x13 << 9) | 25), (0x7 << 9) | 0x3a},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [16] = {
        .facilityClass = 0x13,
        .trainerName = _("Fortune"),
        .speechBefore = {(0x7 << 9) | 0xd, (0xd << 9) | 0xe, (0xf << 9) | 0x5, (0x8 << 9) | 0xb, (0x8 << 9) | 0x25, (0xe << 9) | 0xc},
        .speechWin = {(0x1 << 9) | 0xe, (0x9 << 9) | 0x1e, (0x3 << 9) | 0x1, (0x8 << 9) | 0x38, (0x8 << 9) | 0x34, (0xd << 9) | 0x2a},
        .speechLose = {(0x14 << 9) | 0xe, (0x8 << 9) | 0x3d, (0x9 << 9) | 0x1b, (0x5 << 9) | 0x14, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [17] = {
        .facilityClass = 0x13,
        .trainerName = _("Rose"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1f, (0x8 << 9) | 0x20, (0xb << 9) | 0x32, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a},
        .speechWin = {(0xc << 9) | 0x29, (0x8 << 9) | 0xb, (0xe << 9) | 0x6, (0xa << 9) | 0x5, (0x5 << 9) | 0x27, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0xb << 9) | 0x32, (0x8 << 9) | 0x27, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0xa << 9) | 0x2b},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [18] = {
        .facilityClass = 0x1b,
        .trainerName = _("Caihong"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x2f, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2f, (0x2 << 9) | 0xa, (0xe << 9) | 0xd},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0x8 << 9) | 0x2c, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x2a, (0x3 << 9) | 0x30, (0x5 << 9) | 0x28, ((0x12 << 9) | 116), (0x7 << 9) | 0x15, (0x2 << 9) | 0x34},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [19] = {
        .facilityClass = 0x1b,
        .trainerName = _("Shashi"),
        .speechBefore = {(0x5 << 9) | 0x5, (0xd << 9) | 0x35, (0xb << 9) | 0x9, (0x5 << 9) | 0x6, (0x7 << 9) | 0x2c, (0x2 << 9) | 0x33},
        .speechWin = {(0x5 << 9) | 0x31, (0x5 << 9) | 0x14, (0x5 << 9) | 0x30, (0x7 << 9) | 0x2c, (0x2 << 9) | 0x33, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x29, (0xf << 9) | 0x29, (0x6 << 9) | 0x0, (0x5 << 9) | 0x6, (0x7 << 9) | 0x2c, (0x2 << 9) | 0x33},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [20] = {
        .facilityClass = 0x1b,
        .trainerName = _("Lenox"),
        .speechBefore = {(0x5 << 9) | 0x8, (0x1 << 9) | 0x6, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0x5 << 9) | 0x34, (0x6 << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x10, (0xf << 9) | 0x14, (0x7 << 9) | 0x11, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x8, (0x1 << 9) | 0x6, (0x8 << 9) | 0x3c, (0x3 << 9) | 0x4, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [21] = {
        .facilityClass = 0x1c,
        .trainerName = _("Tirta"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x9 << 9) | 0x37, (0x8 << 9) | 0xd, (0x3 << 9) | 0x28, (0xe << 9) | 0x1a},
        .speechWin = {(0x5 << 9) | 0x28, (0x9 << 9) | 0x6, (0x8 << 9) | 0xb, (0xa << 9) | 0x22, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x7, (0x10 << 9) | 0x1f, (0x5 << 9) | 0x28, (0x9 << 9) | 0x6, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [22] = {
        .facilityClass = 0x1c,
        .trainerName = _("Abene"),
        .speechBefore = {(0x2 << 9) | 0x18, (0x7 << 9) | 0x15, (0x7 << 9) | 0x34, (0x3 << 9) | 0x20, (0x7 << 9) | 0x1d, (0x5 << 9) | 0x14},
        .speechWin = {(0x6 << 9) | 0x27, (0x5 << 9) | 0x29, (0x2 << 9) | 0x18, (0x7 << 9) | 0x15, (0x7 << 9) | 0x34, (0x3 << 9) | 0x20},
        .speechLose = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x39, (0x6 << 9) | 0x4, (0x7 << 9) | 0xa, (0x5 << 9) | 0x29, (0x2 << 9) | 0x18},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [23] = {
        .facilityClass = 0x1c,
        .trainerName = _("Vera"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x14 << 9) | 0x1e, (0x7 << 9) | 0xa, (0x5 << 9) | 0x29, (0x7 << 9) | 0x29, (0xa << 9) | 0x5},
        .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0xb, (0x5 << 9) | 0x26, (0x14 << 9) | 0x1e, (0x7 << 9) | 0xa, (0xa << 9) | 0x5},
        .speechLose = {(0xf << 9) | 0x22, (0x8 << 9) | 0x20, (0xa << 9) | 0x9, (0xc << 9) | 0x27, (0xf << 9) | 0x19, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [24] = {
        .facilityClass = 0x11,
        .trainerName = _("Erast"),
        .speechBefore = {(0x3 << 9) | 0x8, (0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, ((0x13 << 9) | 57)},
        .speechWin = {(0x4 << 9) | 0x5, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0x8 << 9) | 0x2d, (0x8 << 9) | 0x2f, ((0x13 << 9) | 57)},
        .speechLose = {(0x6 << 9) | 0x1d, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x0, (0x8 << 9) | 0x20, ((0x12 << 9) | 250), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [25] = {
        .facilityClass = 0x11,
        .trainerName = _("Meine"),
        .speechBefore = {(0xb << 9) | 0xf, (0x5 << 9) | 0x14, (0x8 << 9) | 0x20, (0xa << 9) | 0x5, (0x3 << 9) | 0x16, 0xFFFF},
        .speechWin = {(0xf << 9) | 0x19, (0x5 << 9) | 0x5, (0xa << 9) | 0x5, (0x3 << 9) | 0x16, (0x6 << 9) | 0x2, 0xFFFF},
        .speechLose = {(0x6 << 9) | 0x12, (0xf << 9) | 0x14, (0x8 << 9) | 0xb, (0x8 << 9) | 0x21, (0x10 << 9) | 0x17, (0x3 << 9) | 0x16},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [26] = {
        .facilityClass = 0x11,
        .trainerName = _("Matts"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0xa << 9) | 0x1a, (0x14 << 9) | 0xa, (0x1 << 9) | 0xb, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x29, (0x14 << 9) | 0xa, (0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0x14 << 9) | 0xa, (0x8 << 9) | 0x25, (0xf << 9) | 0x22, (0x3 << 9) | 0x2f, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [27] = {
        .facilityClass = 0x10,
        .trainerName = _("Miep"),
        .speechBefore = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x25, (0x10 << 9) | 0xf, (0x8 << 9) | 0x29, (0x7 << 9) | 0x2c, (0x8 << 9) | 0xb},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x9 << 9) | 0x5, (0x5 << 9) | 0x1, (0x8 << 9) | 0x16, (0x6 << 9) | 0x19},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x9 << 9) | 0xe, (0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x6 << 9) | 0x19},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [28] = {
        .facilityClass = 0x10,
        .trainerName = _("Aminah"),
        .speechBefore = {(0x8 << 9) | 0xd, (0xb << 9) | 0x3f, (0x5 << 9) | 0x29, (0x8 << 9) | 0x21, (0x5 << 9) | 0xd, (0x8 << 9) | 0x24},
        .speechWin = {(0x8 << 9) | 0x25, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x21, (0x5 << 9) | 0xd, (0x7 << 9) | 0x9},
        .speechLose = {(0x8 << 9) | 0x21, (0x5 << 9) | 0xd, (0x8 << 9) | 0x15, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [29] = {
        .facilityClass = 0x10,
        .trainerName = _("Alondra"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xe << 9) | 0x1f, (0xd << 9) | 0x34, (0x8 << 9) | 0xb, (0x8 << 9) | 0x2b, (0x1 << 9) | 0xe},
        .speechWin = {(0x5 << 9) | 0x28, (0xe << 9) | 0x1f, (0xd << 9) | 0x34, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x10 << 9) | 0x17},
        .speechLose = {(0x5 << 9) | 0x1, (0x3 << 9) | 0xa, (0x8 << 9) | 0x3a, (0xf << 9) | 0xf, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [30] = {
        .facilityClass = 0x7,
        .trainerName = _("Arkadiy"),
        .speechBefore = {(0x3 << 9) | 0x19, (0x8 << 9) | 0x0, (0xb << 9) | 0x1b, (0x5 << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x1c, (0x6 << 9) | 0x0, 0xFFFF, (0x5 << 9) | 0x1, (0x7 << 9) | 0x2c, (0x3 << 9) | 0x7},
        .speechLose = {(0xa << 9) | 0x30, (0x8 << 9) | 0xb, (0xb << 9) | 0x3a, (0x8 << 9) | 0x38, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [31] = {
        .facilityClass = 0x7,
        .trainerName = _("Adam"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x20, (0xa << 9) | 0x0, (0x3 << 9) | 0x28},
        .speechWin = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x2 << 9) | 0x5f, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x15, (0xf << 9) | 0x13},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x5 << 9) | 0x14, (0x7 << 9) | 0x9, (0x2 << 9) | 0x20, (0xa << 9) | 0x1e},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [32] = {
        .facilityClass = 0x7,
        .trainerName = _("Bradley"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 57), (0x8 << 9) | 0x37, (0x7 << 9) | 0xd, (0xe << 9) | 0x24, (0x8 << 9) | 0x39},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x1, ((0x13 << 9) | 57), (0xf << 9) | 0x29, (0xe << 9) | 0x1a},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, ((0x13 << 9) | 251), (0x5 << 9) | 0x28, ((0x13 << 9) | 57), (0xd << 9) | 0x2c},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [33] = {
        .facilityClass = 0x38,
        .trainerName = _("Ju"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x2a, (0x5 << 9) | 0x28, (0x2 << 9) | 0x2c},
        .speechWin = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x2 << 9) | 0x2a, (0x8 << 9) | 0x30, (0x5 << 9) | 0x14, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x2a, (0x8 << 9) | 0x31, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [34] = {
        .facilityClass = 0x38,
        .trainerName = _("Tempest"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x14 << 9) | 0x17, (0x5 << 9) | 0x2, (0x3 << 9) | 0xa, (0x6 << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x3f, (0x8 << 9) | 0x2a, (0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x14 << 9) | 0x17, (0x6 << 9) | 0x0},
        .speechLose = {(0x7 << 9) | 0x1d, (0x8 << 9) | 0x22, (0x7 << 9) | 0xd, (0x14 << 9) | 0x17, (0x5 << 9) | 0x1, (0x7 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [35] = {
        .facilityClass = 0x38,
        .trainerName = _("Shell"),
        .speechBefore = {(0x5 << 9) | 0x2a, (0x3 << 9) | 0x7, (0xf << 9) | 0x10, (0x3 << 9) | 0x18, (0xe << 9) | 0xd, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x25, (0x9 << 9) | 0x40, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x6, (0x6 << 9) | 0x0},
        .speechLose = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x1, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, (0x8 << 9) | 0x1e, (0x3 << 9) | 0x30},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [36] = {
        .facilityClass = 0x29,
        .trainerName = _("Leopold"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x1e, (0x9 << 9) | 0xc, (0x8 << 9) | 0x30, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe},
        .speechWin = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x5, (0x7 << 9) | 0x19, (0x5 << 9) | 0x3d, (0x3 << 9) | 0x6, (0xa << 9) | 0xb},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x28, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x7 << 9) | 0x36, (0x3 << 9) | 0x2f},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [37] = {
        .facilityClass = 0x29,
        .trainerName = _("Derick"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x28, (0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0xf << 9) | 0x29, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x2f, (0x8 << 9) | 0x38, (0x8 << 9) | 0x34, (0x7 << 9) | 0xd, (0x9 << 9) | 0x42},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x18, (0x9 << 9) | 0x28, (0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [38] = {
        .facilityClass = 0x29,
        .trainerName = _("Brooks"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x7 << 9) | 0xa, (0x8 << 9) | 0x20, (0xc << 9) | 0x27},
        .speechWin = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x2 << 9) | 0xb, (0xc << 9) | 0x27, (0x6 << 9) | 0x0},
        .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x21, (0xa << 9) | 0x36, ((0x12 << 9) | 171), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [39] = {
        .facilityClass = 0x2a,
        .trainerName = _("Thema"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0xb << 9) | 0x20, (0x7 << 9) | 0xf, (0x5 << 9) | 0x29, (0x7 << 9) | 0x9},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0xa << 9) | 0x22, (0x9 << 9) | 0x1c, (0x8 << 9) | 0x28, (0xf << 9) | 0xf},
        .speechLose = {(0x10 << 9) | 0x1f, (0x8 << 9) | 0xb, (0x7 << 9) | 0xd, (0x6 << 9) | 0x23, (0x5 << 9) | 0x29, (0x7 << 9) | 0x9},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [40] = {
        .facilityClass = 0x2a,
        .trainerName = _("Chanel"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x1b, (0x7 << 9) | 0x8, (0x8 << 9) | 0x20, (0x1 << 9) | 0xb, (0x5 << 9) | 0x17},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0xd << 9) | 0x1b, (0xf << 9) | 0xf, (0x3 << 9) | 0x6, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x9 << 9) | 0xb, (0xf << 9) | 0x29, (0xe << 9) | 0x1a},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [41] = {
        .facilityClass = 0x2a,
        .trainerName = _("Hourig"),
        .speechBefore = {(0x8 << 9) | 0x2a, (0x1 << 9) | 0xe, (0x8 << 9) | 0x1e, (0x5 << 9) | 0x3a, (0xb << 9) | 0x46, (0x2 << 9) | 0x63},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0x7 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechLose = {(0x9 << 9) | 0x31, (0x5 << 9) | 0x1, (0x8 << 9) | 0x22, (0x9 << 9) | 0x28, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [42] = {
        .facilityClass = 0x42,
        .trainerName = _("Nico"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x6 << 9) | 0x0, (0x8 << 9) | 0xd, (0x9 << 9) | 0x39, (0x5 << 9) | 0x4a, (0x3 << 9) | 0xd},
        .speechWin = {(0xf << 9) | 0x17, (0x7 << 9) | 0x1d, (0x7 << 9) | 0xd, (0x3 << 9) | 0xd, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0xa << 9) | 0x40, (0x8 << 9) | 0x25, (0xa << 9) | 0x21, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x40, (0x3 << 9) | 0xd},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [43] = {
        .facilityClass = 0x42,
        .trainerName = _("Ciril"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x3 << 9) | 0x24, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29, (0x6 << 9) | 0x0},
        .speechWin = {(0x7 << 9) | 0x1d, (0x7 << 9) | 0xf, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24, (0xb << 9) | 0x39, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x36, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24, (0x8 << 9) | 0x42, (0x5 << 9) | 0x29},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [44] = {
        .facilityClass = 0x42,
        .trainerName = _("Roma"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xc << 9) | 0xf, (0x7 << 9) | 0x8, (0x7 << 9) | 0xd, (0x1 << 9) | 0x8, (0xf << 9) | 0x1b},
        .speechWin = {(0xa << 9) | 0x40, (0x9 << 9) | 0x3c, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x19, (0x8 << 9) | 0x20, ((0x13 << 9) | 135), (0x3 << 9) | 0x2e, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [45] = {
        .facilityClass = 0x2,
        .trainerName = _("Angel"),
        .speechBefore = {(0x8 << 9) | 0x2a, (0x1 << 9) | 0xe, (0x9 << 9) | 0x28, (0x8 << 9) | 0x20, (0xa << 9) | 0x3f, (0x1 << 9) | 0xb},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x39, (0x9 << 9) | 0x2e, (0x5 << 9) | 0x2, (0x3 << 9) | 0x30, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x6, (0xa << 9) | 0x3f, (0x7 << 9) | 0x15, (0x5 << 9) | 0x6, (0x7 << 9) | 0x29, (0x3 << 9) | 0x20},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [46] = {
        .facilityClass = 0x2,
        .trainerName = _("Hayfa"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x28, (0x5 << 9) | 0x22},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x9 << 9) | 0x5, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe},
        .speechLose = {(0x6 << 9) | 0x33, (0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x4 << 9) | 0xb, (0x8 << 9) | 0x27, (0xf << 9) | 0xf},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [47] = {
        .facilityClass = 0x2,
        .trainerName = _("Astrid"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xc << 9) | 0x26, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x28, (0x7 << 9) | 0x2e, 0xFFFF},
        .speechWin = {(0xc << 9) | 0x26, (0x5 << 9) | 0x14, (0x5 << 9) | 0x2, (0x8 << 9) | 0x0, (0x8 << 9) | 0x18, (0x8 << 9) | 0x31},
        .speechLose = {(0xc << 9) | 0x26, (0x5 << 9) | 0x14, (0xe << 9) | 0x12, (0x3 << 9) | 0x28, (0xb << 9) | 0x11, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [48] = {
        .facilityClass = 0x43,
        .trainerName = _("Anthel"),
        .speechBefore = {(0x7 << 9) | 0x13, (0x2 << 9) | 0x61, (0x8 << 9) | 0xb, (0x9 << 9) | 0x19, (0x6 << 9) | 0x3, (0x6 << 9) | 0x28},
        .speechWin = {(0xd << 9) | 0x35, (0xd << 9) | 0x35, (0x6 << 9) | 0x0, (0x8 << 9) | 0x20, (0x9 << 9) | 0x19, (0x2 << 9) | 0x61},
        .speechLose = {(0x6 << 9) | 0x1d, (0x8 << 9) | 0x20, (0x2 << 9) | 0x61, (0x8 << 9) | 0x13, (0x9 << 9) | 0x19, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [49] = {
        .facilityClass = 0x43,
        .trainerName = _("Yoshi"),
        .speechBefore = {(0x2 << 9) | 0x61, (0x1 << 9) | 0xe, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0x7 << 9) | 0x9, (0x10 << 9) | 0x21},
        .speechWin = {(0x2 << 9) | 0x61, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x6, (0xb << 9) | 0x25, (0x8 << 9) | 0x27, (0x2 << 9) | 0x61, (0x1 << 9) | 0xe, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [50] = {
        .facilityClass = 0x43,
        .trainerName = _("Palmer"),
        .speechBefore = {(0x5 << 9) | 0x31, (0x6 << 9) | 0x23, (0x8 << 9) | 0x39, (0xa << 9) | 0x0, (0xf << 9) | 0xa, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x27, (0x8 << 9) | 0x2f, ((0x12 << 9) | 315), 0xFFFF, 0xFFFF},
        .speechLose = {(0xb << 9) | 0x11, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x5 << 9) | 0x4a, (0x2 << 9) | 0x5f, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [51] = {
        .facilityClass = 0x35,
        .trainerName = _("Haneul"),
        .speechBefore = {(0x4 << 9) | 0xd, (0x5 << 9) | 0x14, (0x7 << 9) | 0xa, (0x4 << 9) | 0x3, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0xd, (0x5 << 9) | 0x14, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0xa << 9) | 0x22, (0x3 << 9) | 0x1e},
        .speechLose = {(0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [52] = {
        .facilityClass = 0x35,
        .trainerName = _("Rastus"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xc << 9) | 0x26, (0x5 << 9) | 0x2, (0x8 << 9) | 0x20, (0xa << 9) | 0x0, (0x3 << 9) | 0x28},
        .speechWin = {(0x7 << 9) | 0xd, (0x11 << 9) | 0x13, (0x8 << 9) | 0x34, (0x2 << 9) | 0x15, (0x7 << 9) | 0x1d, (0x5 << 9) | 0x14},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x39, (0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x25, (0x2 << 9) | 0x15},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [53] = {
        .facilityClass = 0x35,
        .trainerName = _("Grady"),
        .speechBefore = {(0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0x8 << 9) | 0x20, (0x7 << 9) | 0x2c, (0x10 << 9) | 0x11, (0x3 << 9) | 0x3e},
        .speechWin = {(0x8 << 9) | 0x23, (0x8 << 9) | 0x10, (0xa << 9) | 0x30, (0x10 << 9) | 0x11, (0x8 << 9) | 0x27, (0xf << 9) | 0x14},
        .speechLose = {(0x5 << 9) | 0x2, (0x7 << 9) | 0x2c, (0x8 << 9) | 0xf, (0x10 << 9) | 0x11, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [54] = {
        .facilityClass = 0x1d,
        .trainerName = _("Helio"),
        .speechBefore = {(0x8 << 9) | 0xd, (0x9 << 9) | 0x39, (0x5 << 9) | 0x2, ((0x13 << 9) | 96), (0x8 << 9) | 0x3a, (0x5 << 9) | 0x14},
        .speechWin = {(0x7 << 9) | 0xf, (0x5 << 9) | 0x1, ((0x13 << 9) | 96), (0x8 << 9) | 0xb, (0x7 << 9) | 0x1e, (0x2 << 9) | 0xb},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, ((0x13 << 9) | 96), (0x8 << 9) | 0x2b, (0x8 << 9) | 0x20, ((0x13 << 9) | 347)},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [55] = {
        .facilityClass = 0x1d,
        .trainerName = _("Marion"),
        .speechBefore = {((0x13 << 9) | 77), (0x8 << 9) | 0xb, (0x8 << 9) | 0x37, (0x5 << 9) | 0x40, ((0x13 << 9) | 178), (0x3 << 9) | 0x3e},
        .speechWin = {(0x4 << 9) | 0x8, (0x5 << 9) | 0x2, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x40, ((0x13 << 9) | 77), (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 178), (0x8 << 9) | 0x10, (0x10 << 9) | 0xd, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [56] = {
        .facilityClass = 0x1d,
        .trainerName = _("Javad"),
        .speechBefore = {(0x4 << 9) | 0x1c, 0xFFFF, 0xFFFF, (0xf << 9) | 0x20, (0x8 << 9) | 0x5, 0xFFFF},
        .speechWin = {(0xf << 9) | 0x20, (0x8 << 9) | 0x5, (0x5 << 9) | 0x2a, (0x3 << 9) | 0x30, (0x5 << 9) | 0x28, (0x1 << 9) | 0xd},
        .speechLose = {(0xf << 9) | 0x20, (0x8 << 9) | 0x5, (0x5 << 9) | 0x2a, (0x3 << 9) | 0x30, (0x5 << 9) | 0x28, (0x3 << 9) | 0x1b},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [57] = {
        .facilityClass = 0x2d,
        .trainerName = _("Teol"),
        .speechBefore = {(0x4 << 9) | 0x28, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x4a, (0xa << 9) | 0x10, (0x2 << 9) | 0x5f, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x36, (0x8 << 9) | 0x18, (0x5 << 9) | 0x2, (0x9 << 9) | 0x36, (0x5 << 9) | 0x4a, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0xa, (0xf << 9) | 0xf, (0xa << 9) | 0x10, (0x2 << 9) | 0x5f, (0xd << 9) | 0xa},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [58] = {
        .facilityClass = 0x2d,
        .trainerName = _("Petrit"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x0, (0xb << 9) | 0x1e, (0x5 << 9) | 0x2, (0x9 << 9) | 0x20},
        .speechWin = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0x17, (0xb << 9) | 0x1e, (0x7 << 9) | 0xd, ((0x12 << 9) | 15)},
        .speechLose = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0x1 << 9) | 0xb, (0x5 << 9) | 0x30, (0x7 << 9) | 0x9, (0x9 << 9) | 0x20},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [59] = {
        .facilityClass = 0x2d,
        .trainerName = _("Shachar"),
        .speechBefore = {((0x15 << 9) | 151), ((0x15 << 9) | 151), (0x8 << 9) | 0xb, (0x7 << 9) | 0xf, (0x5 << 9) | 0x1, (0x6 << 9) | 0x19},
        .speechWin = {(0x4 << 9) | 0x1, (0x5 << 9) | 0x1, (0xb << 9) | 0x20, (0x5 << 9) | 0x29, (0x2 << 9) | 0x18, (0x6 << 9) | 0x0},
        .speechLose = {((0x15 << 9) | 151), ((0x15 << 9) | 151), (0x6 << 9) | 0x0, ((0x15 << 9) | 151), (0x6 << 9) | 0x1, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [60] = {
        .facilityClass = 0xe,
        .trainerName = _("Mikkel"),
        .speechBefore = {(0x1 << 9) | 0xf, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14, (0x8 << 9) | 0x2f, ((0x12 << 9) | 37)},
        .speechWin = {(0x6 << 9) | 0x3e, (0x6 << 9) | 0x0, (0x4 << 9) | 0xb, (0x8 << 9) | 0x27, (0xf << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0x2 << 9) | 0x33, (0x3 << 9) | 0x2e, (0x8 << 9) | 0x2f, ((0x13 << 9) | 256)},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [61] = {
        .facilityClass = 0xe,
        .trainerName = _("Timothy"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x14 << 9) | 0x1f, (0x8 << 9) | 0x36, (0x14 << 9) | 0x1d, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x22, (0x2 << 9) | 0x15, (0x6 << 9) | 0x0, (0x8 << 9) | 0x22, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a},
        .speechLose = {(0x5 << 9) | 0x29, (0x14 << 9) | 0x1e, (0x7 << 9) | 0x15, (0x7 << 9) | 0x9, (0x10 << 9) | 0x1a, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [62] = {
        .facilityClass = 0xe,
        .trainerName = _("Roland"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xc << 9) | 0x21, (0x8 << 9) | 0xb, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2f, (0x2 << 9) | 0xa},
        .speechWin = {(0x5 << 9) | 0x28, (0xc << 9) | 0x21, (0x8 << 9) | 0xb, (0x7 << 9) | 0x1e, (0x9 << 9) | 0x21, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x6 << 9) | 0x19, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0xc << 9) | 0x21, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [63] = {
        .facilityClass = 0x5,
        .trainerName = _("Wilmer"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x2, (0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x4 << 9) | 0x1d, (0x5 << 9) | 0x42},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x3 << 9) | 0x31},
        .speechLose = {(0x4 << 9) | 0x1d, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0x8 << 9) | 0x14, (0x3 << 9) | 0x35, (0xf << 9) | 0xf},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [64] = {
        .facilityClass = 0x5,
        .trainerName = _("Curt"),
        .speechBefore = {(0x4 << 9) | 0x26, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x26, (0x6 << 9) | 0x1, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0x11, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x11, (0x6 << 9) | 0x1, 0xFFFF},
        .speechLose = {(0x4 << 9) | 0x10, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x10, (0x6 << 9) | 0x1, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [65] = {
        .facilityClass = 0x5,
        .trainerName = _("Daud"),
        .speechBefore = {(0xf << 9) | 0x26, (0x6 << 9) | 0x3, 0xFFFF, (0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24},
        .speechWin = {(0x9 << 9) | 0x39, (0x6 << 9) | 0x3, 0xFFFF, (0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24, (0x8 << 9) | 0x37, (0x3 << 9) | 0x28},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [66] = {
        .facilityClass = 0x37,
        .trainerName = _("Ersilia"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x12, (0x5 << 9) | 0x29, (0xd << 9) | 0xa, (0x8 << 9) | 0x39, (0xa << 9) | 0x21},
        .speechWin = {(0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0xd << 9) | 0x24},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x25, (0x9 << 9) | 0x36, (0xe << 9) | 0x12, (0x1 << 9) | 0xe, (0xd << 9) | 0x24},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [67] = {
        .facilityClass = 0x37,
        .trainerName = _("Doretta"),
        .speechBefore = {(0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0xf << 9) | 0x14, (0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x2 << 9) | 0x21},
        .speechWin = {(0x4 << 9) | 0x20, (0x6 << 9) | 0x0, (0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x4 << 9) | 0x1d, (0x2 << 9) | 0x21},
        .speechLose = {(0xf << 9) | 0x19, (0x3 << 9) | 0x14, (0x6 << 9) | 0x4, (0x5 << 9) | 0x6, (0x7 << 9) | 0x7, (0x11 << 9) | 0x7},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [68] = {
        .facilityClass = 0x37,
        .trainerName = _("Lyu"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x2e, (0x7 << 9) | 0x2, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x6, (0x6 << 9) | 0x0},
        .speechWin = {(0xf << 9) | 0x19, (0x5 << 9) | 0x28, (0x8 << 9) | 0x0, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x6, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x6, (0xf << 9) | 0x1d, (0x3 << 9) | 0x21, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [69] = {
        .facilityClass = 0x14,
        .trainerName = _("Talulla"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x7 << 9) | 0x20, (0x5 << 9) | 0x28, (0x5 << 9) | 0x0, (0xe << 9) | 0x1a, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x33, (0x3 << 9) | 0x3a, (0x6 << 9) | 0x0, (0x8 << 9) | 0x17, (0x3 << 9) | 0x2d, (0x6 << 9) | 0x0},
        .speechLose = {(0xf << 9) | 0x19, (0xa << 9) | 0x5, (0x7 << 9) | 0x15, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x4 << 9) | 0x10},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [70] = {
        .facilityClass = 0x14,
        .trainerName = _("Margit"),
        .speechBefore = {(0x3 << 9) | 0x2f, (0x5 << 9) | 0x2, (0x8 << 9) | 0x16, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x13 << 9) | 217)},
        .speechWin = {(0x4 << 9) | 0x4, (0x7 << 9) | 0x13, (0xb << 9) | 0x40, (0x8 << 9) | 0x2e, (0x5 << 9) | 0x5, ((0x13 << 9) | 217)},
        .speechLose = {(0x5 << 9) | 0x5, ((0x13 << 9) | 217), (0x6 << 9) | 0x2, (0x4 << 9) | 0x4, (0x8 << 9) | 0x20, ((0x12 << 9) | 3)},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [71] = {
        .facilityClass = 0x14,
        .trainerName = _("Hilda"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x27, (0x8 << 9) | 0x37, (0x2 << 9) | 0x18, (0xd << 9) | 0x2a, (0x11 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x5, (0xd << 9) | 0x2a, (0x3 << 9) | 0x1b, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x9 << 9) | 0x29},
        .speechLose = {(0xf << 9) | 0x19, (0xa << 9) | 0x36, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0xc << 9) | 0x1},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [72] = {
        .facilityClass = 0xd,
        .trainerName = _("Agnija"),
        .speechBefore = {(0xf << 9) | 0x22, (0x8 << 9) | 0xb, (0xf << 9) | 0x14, (0x5 << 9) | 0x1, (0x4 << 9) | 0x23, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x31, (0x7 << 9) | 0xd, ((0x12 << 9) | 230), (0x8 << 9) | 0x34, (0xa << 9) | 0x10, (0x2 << 9) | 0x5f},
        .speechLose = {(0x5 << 9) | 0x31, (0x5 << 9) | 0x5, (0x3 << 9) | 0x1a, (0x2 << 9) | 0x1, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [73] = {
        .facilityClass = 0xd,
        .trainerName = _("Sabien"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x9 << 9) | 0xf, (0x5 << 9) | 0x28, (0xa << 9) | 0x39, ((0x12 << 9) | 312), (0x8 << 9) | 0x24},
        .speechWin = {(0x5 << 9) | 0x28, ((0x12 << 9) | 312), (0x8 << 9) | 0xb, (0x9 << 9) | 0x30, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .speechLose = {(0x8 << 9) | 0x3c, (0x5 << 9) | 0x2, (0x4 << 9) | 0x23, (0x8 << 9) | 0x20, (0xf << 9) | 0x5, (0x6 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [74] = {
        .facilityClass = 0xd,
        .trainerName = _("Sophy"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x5 << 9) | 0xc, (0x5 << 9) | 0x33, (0xb << 9) | 0x39, (0x8 << 9) | 0x39, (0xa << 9) | 0x21},
        .speechWin = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x16, (0x7 << 9) | 0xe, (0x5 << 9) | 0x19, (0x7 << 9) | 0x36, (0x6 << 9) | 0x4},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x9 << 9) | 0x1a, (0x8 << 9) | 0x3e, (0x5 << 9) | 0x19, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [75] = {
        .facilityClass = 0x19,
        .trainerName = _("Vlatko"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x20, (0x7 << 9) | 0xf, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0x3 << 9) | 0x1},
        .speechWin = {(0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0xd << 9) | 0x1d},
        .speechLose = {(0x3 << 9) | 0x1, (0x3 << 9) | 0x1, (0x6 << 9) | 0x4, (0x7 << 9) | 0x1e, ((0x12 << 9) | 175), (0x8 << 9) | 0x27},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [76] = {
        .facilityClass = 0x19,
        .trainerName = _("Xinyi"),
        .speechBefore = {(0x4 << 9) | 0xf, (0x5 << 9) | 0x1, (0x9 << 9) | 0x12, (0x5 << 9) | 0x1, (0x9 << 9) | 0x28, (0x5 << 9) | 0x2},
        .speechWin = {(0x5 << 9) | 0x2, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, ((0x12 << 9) | 37), (0x8 << 9) | 0x37, ((0x13 << 9) | 218)},
        .speechLose = {(0xf << 9) | 0xe, 0xFFFF, 0xFFFF, (0x4 << 9) | 0x10, (0xe << 9) | 0x8, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [77] = {
        .facilityClass = 0x19,
        .trainerName = _("Claus"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0xd << 9) | 0x1d, (0x8 << 9) | 0x30, (0x3 << 9) | 0x1e},
        .speechWin = {(0x9 << 9) | 0xa, (0x8 << 9) | 0x29, (0x6 << 9) | 0x3, (0xd << 9) | 0x1d, (0x8 << 9) | 0x30, (0x3 << 9) | 0x1e},
        .speechLose = {(0x6 << 9) | 0x38, (0x5 << 9) | 0x2, (0x9 << 9) | 0x43, (0x9 << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [78] = {
        .facilityClass = 0x4,
        .trainerName = _("Wilfred"),
        .speechBefore = {(0x2 << 9) | 0x56, (0x1 << 9) | 0xc, (0xd << 9) | 0x7, (0x8 << 9) | 0xf, (0x10 << 9) | 0xd, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x16, (0xb << 9) | 0x6, (0x2 << 9) | 0x45, (0x1 << 9) | 0xc, (0xd << 9) | 0x7},
        .speechLose = {(0x5 << 9) | 0x1, ((0x13 << 9) | 213), (0x2 << 9) | 0x56, (0x1 << 9) | 0xc, (0xd << 9) | 0x7, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [79] = {
        .facilityClass = 0x4,
        .trainerName = _("Tuncay"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x1 << 9) | 0xf, (0x8 << 9) | 0x2f, ((0x13 << 9) | 251), (0x8 << 9) | 0x2c, (0x5 << 9) | 0x2},
        .speechWin = {(0x8 << 9) | 0x39, (0x3 << 9) | 0x38, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x2 << 9) | 0x15},
        .speechLose = {(0xf << 9) | 0x25, (0x6 << 9) | 0x2, 0xFFFF, (0x5 << 9) | 0x1, ((0x13 << 9) | 174), (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_ZU
    },
    [80] = {
        .facilityClass = 0x4,
        .trainerName = _("Vetle"),
        .speechBefore = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0xa << 9) | 0x2f, (0x8 << 9) | 0x31, (0x8 << 9) | 0x42, (0x5 << 9) | 0x14},
        .speechWin = {(0x14 << 9) | 0x1, 0xFFFF, 0xFFFF, (0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c},
        .speechLose = {(0x3 << 9) | 0x2c, (0x6 << 9) | 0x2, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [81] = {
        .facilityClass = 0x3a,
        .trainerName = _("Tommy"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x2a, (0x6 << 9) | 0x0, (0x3 << 9) | 0x2d, (0xe << 9) | 0x1a, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x17, (0x8 << 9) | 0x6, (0x9 << 9) | 0xc, (0x5 << 9) | 0x29, (0x7 << 9) | 0x2a, 0xFFFF},
        .speechLose = {(0x7 << 9) | 0xa, (0x7 << 9) | 0xf, (0x6 << 9) | 0x3, (0x5 << 9) | 0x29, (0x7 << 9) | 0x2a, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [82] = {
        .facilityClass = 0x3a,
        .trainerName = _("Akio"),
        .speechBefore = {(0xf << 9) | 0x22, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0xf << 9) | 0x1b, (0x8 << 9) | 0x2f, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x11, (0x8 << 9) | 0x20, (0x9 << 9) | 0x34, (0x5 << 9) | 0x27, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0xb << 9) | 0x20, (0x5 << 9) | 0x2b, (0x5 << 9) | 0x29, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [83] = {
        .facilityClass = 0x3a,
        .trainerName = _("Rauf"),
        .speechBefore = {(0x4 << 9) | 0xe, (0x5 << 9) | 0x30, (0x5 << 9) | 0x5, (0x5 << 9) | 0x42, (0x6 << 9) | 0x3, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x28, (0x5 << 9) | 0x42, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0x5 << 9) | 0x15, (0x5 << 9) | 0x33},
        .speechLose = {(0x5 << 9) | 0x29, (0xd << 9) | 0x1f, (0x5 << 9) | 0x2, (0x5 << 9) | 0x28, (0x5 << 9) | 0x42, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [84] = {
        .facilityClass = 0x0,
        .trainerName = _("Irénée"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x16, (0xb << 9) | 0x20, (0x7 << 9) | 0xf, (0x8 << 9) | 0x2f, ((0x12 << 9) | 268)},
        .speechWin = {(0xf << 9) | 0x18, (0x5 << 9) | 0x1, (0xa << 9) | 0x22, (0x8 << 9) | 0x2, (0xf << 9) | 0x22, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x6, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x20, (0x3 << 9) | 0x25, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [85] = {
        .facilityClass = 0x0,
        .trainerName = _("Ozzy"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x31, (0x8 << 9) | 0x22, ((0x13 << 9) | 303), (0x8 << 9) | 0x30, (0x5 << 9) | 0x14},
        .speechWin = {(0x8 << 9) | 0x3b, (0x5 << 9) | 0x28, ((0x13 << 9) | 269), (0x2 << 9) | 0x6, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [86] = {
        .facilityClass = 0x0,
        .trainerName = _("Imani"),
        .speechBefore = {(0x5 << 9) | 0x5, ((0x12 << 9) | 263), (0x8 << 9) | 0x3d, ((0x13 << 9) | 271), (0x5 << 9) | 0x14, 0xFFFF},
        .speechWin = {(0x7 << 9) | 0x2e, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x24, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x19, (0x7 << 9) | 0x2c, (0x2 << 9) | 0x33, (0x8 << 9) | 0x2c, (0x5 << 9) | 0x14, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [87] = {
        .facilityClass = 0x1a,
        .trainerName = _("Vegard"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x8 << 9) | 0x6, (0x9 << 9) | 0x3e, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x2 << 9) | 0x5a, (0x6 << 9) | 0x0, 0xFFFF, (0x2 << 9) | 0x5a, (0x6 << 9) | 0x1, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x29, (0xa << 9) | 0x2a, (0x6 << 9) | 0x4, (0x5 << 9) | 0x31, (0x8 << 9) | 0x25, (0xa << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [88] = {
        .facilityClass = 0x1a,
        .trainerName = _("Ferdie"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x1 << 9) | 0x10, (0x8 << 9) | 0xb, (0x7 << 9) | 0x13, (0xc << 9) | 0x2a, (0x6 << 9) | 0x3},
        .speechWin = {(0x7 << 9) | 0x13, (0xc << 9) | 0x2a, (0x4 << 9) | 0x1c, (0x7 << 9) | 0x1d, (0x7 << 9) | 0x2f, (0x2 << 9) | 0x15},
        .speechLose = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x22, (0x6 << 9) | 0x3, (0x8 << 9) | 0xb, (0x1 << 9) | 0xd, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [89] = {
        .facilityClass = 0x1a,
        .trainerName = _("Koby"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x2c, (0x2 << 9) | 0x5a, (0x14 << 9) | 0x1c, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0xf << 9) | 0x28, (0x5 << 9) | 0x2, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x21, ((0x13 << 9) | 52)},
        .speechLose = {(0x6 << 9) | 0x29, (0x6 << 9) | 0x1, 0xFFFF, (0x4 << 9) | 0x1d, (0x2 << 9) | 0x5f, (0xb << 9) | 0x11},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [90] = {
        .facilityClass = 0x30,
        .trainerName = _("Hasim"),
        .speechBefore = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x0, (0x9 << 9) | 0x5, (0x8 << 9) | 0x2f, (0x4 << 9) | 0x21, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0x3 << 9) | 0x3c, (0x8 << 9) | 0x30, (0xa << 9) | 0x1f, (0x2 << 9) | 0x3b},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, ((0x12 << 9) | 37), (0x5 << 9) | 0x28, (0xd << 9) | 0x7, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [91] = {
        .facilityClass = 0x30,
        .trainerName = _("Pridon"),
        .speechBefore = {(0x5 << 9) | 0x28, ((0x13 << 9) | 98), (0x8 << 9) | 0x16, (0x9 << 9) | 0x3f, (0x8 << 9) | 0x20, ((0x13 << 9) | 100)},
        .speechWin = {(0x8 << 9) | 0x3a, (0x5 << 9) | 0x1, (0xb << 9) | 0xb, (0x5 << 9) | 0x29, (0x9 << 9) | 0x1f, (0xa << 9) | 0x34},
        .speechLose = {(0x5 << 9) | 0x26, (0x14 << 9) | 0xc, (0x8 << 9) | 0x27, (0xf << 9) | 0x14, ((0x13 << 9) | 100), (0xf << 9) | 0x5},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [92] = {
        .facilityClass = 0x31,
        .trainerName = _("Storm"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0xc << 9) | 0xf, (0xa << 9) | 0x5, (0x7 << 9) | 0x11, (0x6 << 9) | 0x3},
        .speechWin = {(0x8 << 9) | 0x17, ((0x13 << 9) | 269), (0x5 << 9) | 0x14, (0x8 << 9) | 0x3a, (0xf << 9) | 0x14, (0x8 << 9) | 0x24},
        .speechLose = {(0xf << 9) | 0x25, (0xb << 9) | 0x2d, (0x5 << 9) | 0x1, (0x3 << 9) | 0x6, (0xf << 9) | 0xf, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [93] = {
        .facilityClass = 0x31,
        .trainerName = _("Théodor"),
        .speechBefore = {(0x11 << 9) | 0x16, (0x5 << 9) | 0x2, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x21, (0x1 << 9) | 0x8, (0x6 << 9) | 0x0},
        .speechWin = {(0xf << 9) | 0x19, (0x8 << 9) | 0x20, (0xa << 9) | 0x10, (0x3 << 9) | 0x19, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechLose = {(0x8 << 9) | 0x39, (0x2 << 9) | 0x33, (0x8 << 9) | 0x2f, (0x11 << 9) | 0x16, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [94] = {
        .facilityClass = 0x32,
        .trainerName = _("Anant"),
        .speechBefore = {(0x6 << 9) | 0x38, (0x6 << 9) | 0x0, 0xFFFF, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0xa << 9) | 0x19},
        .speechWin = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x5, (0xf << 9) | 0x14, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xa << 9) | 0x39, (0xf << 9) | 0x25, (0x5 << 9) | 0x29, (0x9 << 9) | 0x5},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [95] = {
        .facilityClass = 0x32,
        .trainerName = _("Azar"),
        .speechBefore = {(0x4 << 9) | 0x3, (0x7 << 9) | 0x9, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2b, (0x8 << 9) | 0x29, (0x8 << 9) | 0x2a},
        .speechWin = {(0xf << 9) | 0x17, 0xFFFF, 0xFFFF, (0xf << 9) | 0x19, (0xa << 9) | 0x23, (0x6 << 9) | 0x0},
        .speechLose = {(0xf << 9) | 0x19, (0x8 << 9) | 0x22, (0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [96] = {
        .facilityClass = 0x33,
        .trainerName = _("Tzvia"),
        .speechBefore = {(0xf << 9) | 0x10, (0xe << 9) | 0x4, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x9 << 9) | 0x40, (0xe << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x28, ((0x13 << 9) | 291), (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x8 << 9) | 0x20, (0x3 << 9) | 0x25},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 291), (0xf << 9) | 0x28, (0x5 << 9) | 0x14, (0xa << 9) | 0x1e, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [97] = {
        .facilityClass = 0x33,
        .trainerName = _("Liana"),
        .speechBefore = {(0xb << 9) | 0x1b, (0x9 << 9) | 0x39, (0x8 << 9) | 0x21, (0x9 << 9) | 0x21, (0x2 << 9) | 0x2c, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0x1e, (0x8 << 9) | 0x29, (0xd << 9) | 0x35, (0x8 << 9) | 0x25, (0x3 << 9) | 0x38},
        .speechLose = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, ((0x13 << 9) | 251), (0x7 << 9) | 0x15, (0xa << 9) | 0x2a, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [98] = {
        .facilityClass = 0x2e,
        .trainerName = _("Roch"),
        .speechBefore = {(0x6 << 9) | 0x1d, (0x8 << 9) | 0x22, (0xe << 9) | 0x12, (0x3 << 9) | 0x28, (0xb << 9) | 0x11, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x38, (0x3 << 9) | 0x7, (0x6 << 9) | 0x4, (0x5 << 9) | 0x29, (0xa << 9) | 0x2a},
        .speechLose = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x38, (0x3 << 9) | 0x30, (0x6 << 9) | 0x4, (0x5 << 9) | 0x29, (0xa << 9) | 0x2a},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [99] = {
        .facilityClass = 0x2f,
        .trainerName = _("Erna"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, ((0x13 << 9) | 98), (0x1 << 9) | 0xb, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x7 << 9) | 0xd, ((0x13 << 9) | 98), (0x1 << 9) | 0xb, (0x3 << 9) | 0x5, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x7 << 9) | 0xd, ((0x13 << 9) | 98), (0x1 << 9) | 0xb, (0xb << 9) | 0x3, (0xf << 9) | 0x1b, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU
    },
    [100] = {
        .facilityClass = 0x30,
        .trainerName = _("Basilio"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0x2 << 9) | 0x14, (0xd << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0x11, (0x7 << 9) | 0x8, (0x7 << 9) | 0xd, (0x2 << 9) | 0x14, (0xd << 9) | 0x27, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x1, 0xFFFF, (0x4 << 9) | 0x1d, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x1},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [101] = {
        .facilityClass = 0x31,
        .trainerName = _("Greer"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0xa, (0x7 << 9) | 0x33, (0xb << 9) | 0x38, (0x8 << 9) | 0x42, (0xd << 9) | 0x15},
        .speechWin = {(0x4 << 9) | 0x1, (0x5 << 9) | 0x1, (0x8 << 9) | 0xa, (0xa << 9) | 0x21, (0x7 << 9) | 0x33, (0xb << 9) | 0x38},
        .speechLose = {(0x4 << 9) | 0x20, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x42},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [102] = {
        .facilityClass = 0x32,
        .trainerName = _("Tybalt"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x8 << 9) | 0x20, (0x5 << 9) | 0xb},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x9 << 9) | 0x37, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0x14 << 9) | 0x1c},
        .speechLose = {(0x5 << 9) | 0x28, (0x14 << 9) | 0x1c, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x7 << 9) | 0x2f, (0x10 << 9) | 0x17},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [103] = {
        .facilityClass = 0x33,
        .trainerName = _("Rosy"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x8 << 9) | 0x20, (0x5 << 9) | 0x8},
        .speechWin = {(0x8 << 9) | 0x20, (0x14 << 9) | 0x1c, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x7 << 9) | 0x13, (0x3 << 9) | 0x1f},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x39, (0x9 << 9) | 0x5, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x9 << 9) | 0x17},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [104] = {
        .facilityClass = 0x2e,
        .trainerName = _("Zlatko"),
        .speechBefore = {(0xf << 9) | 0x22, (0x9 << 9) | 0x31, (0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0xe << 9) | 0xd, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x31, (0x9 << 9) | 0x2a, (0x5 << 9) | 0x4a, (0xd << 9) | 0x17, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x1, (0x9 << 9) | 0x1, (0x8 << 9) | 0x20, (0xd << 9) | 0xf},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [105] = {
        .facilityClass = 0x2e,
        .trainerName = _("Antony"),
        .speechBefore = {(0x6 << 9) | 0x26, (0x6 << 9) | 0x1, 0xFFFF, (0x4 << 9) | 0x5, (0x6 << 9) | 0x1, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0xf << 9) | 0x4, (0x8 << 9) | 0x36, ((0x12 << 9) | 245), (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x30, (0x8 << 9) | 0x36, ((0x12 << 9) | 245), (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [106] = {
        .facilityClass = 0x2f,
        .trainerName = _("Alberta"),
        .speechBefore = {(0x5 << 9) | 0x14, (0xb << 9) | 0x32, (0x6 << 9) | 0x3, (0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0xa << 9) | 0x2f},
        .speechWin = {(0x6 << 9) | 0xb, (0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0xf << 9) | 0x19, (0x7 << 9) | 0x3b, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0xb, (0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0xf << 9) | 0x19, (0xa << 9) | 0x18, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [107] = {
        .facilityClass = 0x2f,
        .trainerName = _("Penny"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xd << 9) | 0x15, (0x8 << 9) | 0xb, (0x7 << 9) | 0x1a, (0xa << 9) | 0x25, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x17, (0xb << 9) | 0x1b, (0xf << 9) | 0x1f, (0x5 << 9) | 0x28, (0xd << 9) | 0x15, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x28, (0xd << 9) | 0x15, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0xa << 9) | 0x3c, (0x5 << 9) | 0x33},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [108] = {
        .facilityClass = 0xa,
        .trainerName = _("Madison"),
        .speechBefore = {(0x4 << 9) | 0x5, (0x6 << 9) | 0x1, 0xFFFF, (0x6 << 9) | 0x26, (0x6 << 9) | 0x1, 0xFFFF},
        .speechWin = {(0xf << 9) | 0x22, (0x6 << 9) | 0x2, 0xFFFF, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x2},
        .speechLose = {(0x6 << 9) | 0x29, (0x6 << 9) | 0x1, 0xFFFF, (0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x6 << 9) | 0x1},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [109] = {
        .facilityClass = 0xa,
        .trainerName = _("Anass"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x6 << 9) | 0x0, (0x9 << 9) | 0x1, (0xe << 9) | 0x13, (0x8 << 9) | 0xb, (0x8 << 9) | 0x28},
        .speechWin = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x38, (0x8 << 9) | 0x34, (0xf << 9) | 0xa, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0xb << 9) | 0x11, (0x8 << 9) | 0x17, (0x7 << 9) | 0x10, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [110] = {
        .facilityClass = 0xa,
        .trainerName = _("Eliseo"),
        .speechBefore = {(0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0xf << 9) | 0x14, (0x5 << 9) | 0x6, (0x3 << 9) | 0x2c, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x14, (0xb << 9) | 0x49, (0x8 << 9) | 0x27, (0x5 << 9) | 0x2, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x2a, (0x8 << 9) | 0x37, (0xf << 9) | 0x10, (0x6 << 9) | 0x23, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [111] = {
        .facilityClass = 0x36,
        .trainerName = _("Eef"),
        .speechBefore = {(0x5 << 9) | 0x6, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x31, (0xf << 9) | 0x29, (0xf << 9) | 0x1e},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0x14 << 9) | 0x19, (0x9 << 9) | 0x13, (0x5 << 9) | 0x14, ((0x13 << 9) | 46)},
        .speechLose = {(0x5 << 9) | 0x1, (0xb << 9) | 0x22, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x35, (0xf << 9) | 0x14, ((0x12 << 9) | 200)},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [112] = {
        .facilityClass = 0x36,
        .trainerName = _("Innes"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xe << 9) | 0x2b, (0xc << 9) | 0x6, (0x8 << 9) | 0xb, (0x7 << 9) | 0x2c, (0x9 << 9) | 0x19},
        .speechWin = {(0x8 << 9) | 0x20, (0x5 << 9) | 0x32, (0x2 << 9) | 0x1f, (0xb << 9) | 0x4b, (0x8 << 9) | 0x23, 0xFFFF},
        .speechLose = {(0x7 << 9) | 0xd, (0xc << 9) | 0x1, (0xc << 9) | 0xd, (0x8 << 9) | 0xb, (0x7 << 9) | 0x34, (0x9 << 9) | 0x19},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [113] = {
        .facilityClass = 0x36,
        .trainerName = _("Kirsti"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x2, (0xf << 9) | 0x21, (0x5 << 9) | 0x31, (0x8 << 9) | 0x27, (0x3 << 9) | 0x1e},
        .speechWin = {(0x9 << 9) | 0x43, (0x5 << 9) | 0x28, (0x3 << 9) | 0x1e, (0xe << 9) | 0x1a, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0x9 << 9) | 0x30, (0x6 << 9) | 0x4, 0xFFFF, (0x5 << 9) | 0x29, (0x9 << 9) | 0x30, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [114] = {
        .facilityClass = 0x9,
        .trainerName = _("Yeong"),
        .speechBefore = {(0xf << 9) | 0x10, (0x3 << 9) | 0x28, (0xa << 9) | 0x4, (0x8 << 9) | 0x20, (0x4 << 9) | 0x23, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x1d, (0x6 << 9) | 0x0, (0x7 << 9) | 0xd, ((0x12 << 9) | 230), (0x8 << 9) | 0x34, (0x3 << 9) | 0x19},
        .speechLose = {(0x7 << 9) | 0xd, (0xa << 9) | 0x36, (0x2 << 9) | 0x1, (0x8 << 9) | 0x34, (0x8 << 9) | 0x20, (0x3 << 9) | 0x2e},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [115] = {
        .facilityClass = 0x9,
        .trainerName = _("Aref"),
        .speechBefore = {(0xa << 9) | 0x5, (0x6 << 9) | 0x0, 0xFFFF, (0x3 << 9) | 0x11, (0x6 << 9) | 0x1, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x22, (0x6 << 9) | 0x2, 0xFFFF, (0x7 << 9) | 0xa, (0x7 << 9) | 0xf, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [116] = {
        .facilityClass = 0x9,
        .trainerName = _("Izem"),
        .speechBefore = {(0x6 << 9) | 0x2b, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x13, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
        .speechLose = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [117] = {
        .facilityClass = 0x16,
        .trainerName = _("Haydée"),
        .speechBefore = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x4, 0xFFFF, (0x8 << 9) | 0x20, (0x5 << 9) | 0x21, (0x6 << 9) | 0x4},
        .speechWin = {(0x7 << 9) | 0x1e, (0x7 << 9) | 0x13, (0x5 << 9) | 0x21, (0x8 << 9) | 0x3f, (0x8 << 9) | 0x2a, (0x6 << 9) | 0x0},
        .speechLose = {(0x8 << 9) | 0x20, (0x2 << 9) | 0x33, (0x5 << 9) | 0x21, (0x4 << 9) | 0x1c, (0x6 << 9) | 0x2e, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [118] = {
        .facilityClass = 0x16,
        .trainerName = _("Wronika"),
        .speechBefore = {(0x4 << 9) | 0x1c, (0xf << 9) | 0x22, (0x8 << 9) | 0x5, 0xFFFF, 0xFFFF, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x1d, (0x4 << 9) | 0x1, (0x6 << 9) | 0x0, (0xf << 9) | 0x25, (0x8 << 9) | 0x22, (0x6 << 9) | 0x3},
        .speechLose = {(0x6 << 9) | 0x1d, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x0, (0xf << 9) | 0x25, (0x8 << 9) | 0x22, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [119] = {
        .facilityClass = 0x16,
        .trainerName = _("Breanne"),
        .speechBefore = {(0xb << 9) | 0x1b, (0x5 << 9) | 0x3d, (0x8 << 9) | 0x0, (0x8 << 9) | 0x18, (0x3 << 9) | 0x28, (0xe << 9) | 0x1a},
        .speechWin = {(0x7 << 9) | 0x36, (0x6 << 9) | 0x0, 0xFFFF, (0xe << 9) | 0x12, (0x3 << 9) | 0x28, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0x1d, (0x6 << 9) | 0x0, 0xFFFF, (0x3 << 9) | 0x20, (0x5 << 9) | 0x2, (0x8 << 9) | 0xf},
        .monSet = gBattleFrontierTrainerMons_ZU_PU_NU
    },
    [120] = {
        .facilityClass = 0x1e,
        .trainerName = _("Urbano"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x20, (0x7 << 9) | 0x16, (0x5 << 9) | 0x2, 0xFFFF, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0x16, (0x7 << 9) | 0xa, (0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0x3 << 9) | 0x3b, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x6, (0x5 << 9) | 0x4a, (0xa << 9) | 0x3f, (0x8 << 9) | 0x34, (0x10 << 9) | 0x17, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [121] = {
        .facilityClass = 0x1e,
        .trainerName = _("Lukas"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x7 << 9) | 0x24, (0x8 << 9) | 0xb, (0xa << 9) | 0x1a, (0x9 << 9) | 0x30, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x5, (0x2 << 9) | 0x7, (0xa << 9) | 0x1, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x4a, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x5, (0x2 << 9) | 0x7, (0xb << 9) | 0x1b, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x4a, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [122] = {
        .facilityClass = 0x1e,
        .trainerName = _("Caspar"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x21, (0xa << 9) | 0x1c, ((0x13 << 9) | 102), (0x8 << 9) | 0x34, (0x1 << 9) | 0xe},
        .speechWin = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x5, (0x8 << 9) | 0x3a, (0x7 << 9) | 0x13, ((0x15 << 9) | 175), (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x17, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x20, ((0x15 << 9) | 56), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [123] = {
        .facilityClass = 0x1f,
        .trainerName = _("Ebba"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x11 << 9) | 0x16, (0xf << 9) | 0x4, (0x8 << 9) | 0x30, (0x2 << 9) | 0xe, (0x3 << 9) | 0x1e},
        .speechWin = {(0x5 << 9) | 0x28, (0x3 << 9) | 0x19, (0x8 << 9) | 0x0, (0xb << 9) | 0x1e, (0x7 << 9) | 0xd, (0xc << 9) | 0x1f},
        .speechLose = {(0x4 << 9) | 0x1d, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x4, (0xf << 9) | 0xf, (0x8 << 9) | 0x14, (0x8 << 9) | 0x18},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [124] = {
        .facilityClass = 0x1f,
        .trainerName = _("Vera"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x0, (0x11 << 9) | 0x16, (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x1e, (0x5 << 9) | 0x4a, (0x7 << 9) | 0x36, (0x8 << 9) | 0x34, (0xf << 9) | 0xf, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x2 << 9) | 0x21, (0x7 << 9) | 0x15, (0xa << 9) | 0x2b, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [125] = {
        .facilityClass = 0x1f,
        .trainerName = _("Bindy"),
        .speechBefore = {(0x7 << 9) | 0x19, (0x5 << 9) | 0x6, (0x2 << 9) | 0x12, (0xe << 9) | 0x19, (0xf << 9) | 0x29, (0xe << 9) | 0x1a},
        .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0xb, (0xf << 9) | 0x14, (0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0xe << 9) | 0x19},
        .speechLose = {(0xf << 9) | 0x25, (0x8 << 9) | 0x3c, (0x5 << 9) | 0x2, (0xe << 9) | 0x19, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [126] = {
        .facilityClass = 0xc,
        .trainerName = _("Nkem"),
        .speechBefore = {(0x8 << 9) | 0x0, (0x5 << 9) | 0x28, (0x2 << 9) | 0x63, ((0x13 << 9) | 213), (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x5 << 9) | 0x28, (0xd << 9) | 0x7, (0xe << 9) | 0x1a},
        .speechLose = {(0x6 << 9) | 0x1d, (0x7 << 9) | 0xf, (0x8 << 9) | 0x8, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [127] = {
        .facilityClass = 0xc,
        .trainerName = _("Cyan"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x2 << 9) | 0x3a, (0x9 << 9) | 0x30, (0xf << 9) | 0x4, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .speechWin = {(0x8 << 9) | 0x23, (0x8 << 9) | 0x1c, (0x5 << 9) | 0x28, (0x2 << 9) | 0x3a, (0xf << 9) | 0x29, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 193), (0x8 << 9) | 0x3c, (0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0xf << 9) | 0xf},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [128] = {
        .facilityClass = 0xc,
        .trainerName = _("Jacoba"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1f, (0xb << 9) | 0x33, (0x8 << 9) | 0x37, (0xe << 9) | 0x9, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x28, (0xb << 9) | 0x34, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0xa << 9) | 0x1c, (0xe << 9) | 0x1a},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x10 << 9) | 0x1f, (0x5 << 9) | 0x28, (0xb << 9) | 0x34, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [129] = {
        .facilityClass = 0x17,
        .trainerName = _("Rolf"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0xb << 9) | 0x48, (0x1 << 9) | 0xe, (0x8 << 9) | 0x2f, ((0x12 << 9) | 37)},
        .speechWin = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x0, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x9 << 9) | 0x17, (0x6 << 9) | 0x3},
        .speechLose = {(0xf << 9) | 0x25, (0x8 << 9) | 0xb, (0xf << 9) | 0xf, (0x8 << 9) | 0x25, (0x9 << 9) | 0x2f, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [130] = {
        .facilityClass = 0x17,
        .trainerName = _("Wim"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 256), ((0x13 << 9) | 124), (0x8 << 9) | 0x2f, ((0x13 << 9) | 144), (0x5 << 9) | 0x25},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x12 << 9) | 74), (0x8 << 9) | 0x34, ((0x13 << 9) | 151)},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x12 << 9) | 74), (0x8 << 9) | 0x34, (0x2 << 9) | 0x1b},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [131] = {
        .facilityClass = 0x17,
        .trainerName = _("Fito"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0xa, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x2c, (0xc << 9) | 0x2b},
        .speechWin = {(0x5 << 9) | 0x31, (0x9 << 9) | 0x21, (0x5 << 9) | 0x28, (0xc << 9) | 0x2b, (0x1 << 9) | 0xe, (0x3 << 9) | 0x7},
        .speechLose = {(0xc << 9) | 0x2b, (0x1 << 9) | 0xe, (0x5 << 9) | 0x1f, (0xf << 9) | 0x1b, (0x8 << 9) | 0x2f, ((0x13 << 9) | 10)},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [132] = {
        .facilityClass = 0x20,
        .trainerName = _("Xaivier"),
        .speechBefore = {(0x5 << 9) | 0x6, (0xf << 9) | 0x1b, (0x8 << 9) | 0x2f, (0x7 << 9) | 0xd, (0x3 << 9) | 0x1f, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3c, (0x9 << 9) | 0x12, (0x5 << 9) | 0x6, (0xa << 9) | 0x5, (0x7 << 9) | 0x11},
        .speechLose = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x7 << 9) | 0x2a, (0x4 << 9) | 0x11, (0x8 << 9) | 0x25, (0xa << 9) | 0x21},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [133] = {
        .facilityClass = 0x20,
        .trainerName = _("Abdul"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 273), (0x8 << 9) | 0x2f, (0x9 << 9) | 0x39, (0x7 << 9) | 0xd, (0xc << 9) | 0x1f},
        .speechWin = {(0xd << 9) | 0x30, (0x1 << 9) | 0xf, (0x2 << 9) | 0x25, (0x7 << 9) | 0x8, (0x2 << 9) | 0x4, (0x6 << 9) | 0x3},
        .speechLose = {(0x7 << 9) | 0xd, (0x10 << 9) | 0x4, (0xc << 9) | 0x2, (0xc << 9) | 0x13, (0xd << 9) | 0x1e, (0x6 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [134] = {
        .facilityClass = 0x1d,
        .trainerName = _("Fiacre"),
        .speechBefore = {((0x12 << 9) | 103), (0x8 << 9) | 0xb, (0x8 << 9) | 0x3a, (0xd << 9) | 0x8, (0x5 << 9) | 0x27, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x28, ((0x12 << 9) | 103), (0x3 << 9) | 0x16, (0x8 << 9) | 0xb, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c},
        .speechLose = {(0x5 << 9) | 0x6, (0x2 << 9) | 0x57, (0x6 << 9) | 0x3, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [135] = {
        .facilityClass = 0xe,
        .trainerName = _("Cem"),
        .speechBefore = {(0x8 << 9) | 0x16, (0x5 << 9) | 0x2, ((0x12 << 9) | 91), (0x8 << 9) | 0x29, (0x4 << 9) | 0x27, (0x6 << 9) | 0x3},
        .speechWin = {((0x13 << 9) | 36), (0xb << 9) | 0x47, (0x8 << 9) | 0x20, ((0x13 << 9) | 291), (0x4 << 9) | 0x27, (0x4 << 9) | 0x27},
        .speechLose = {(0x10 << 9) | 0x14, (0xf << 9) | 0x13, ((0x13 << 9) | 291), (0xe << 9) | 0x13, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [136] = {
        .facilityClass = 0x5,
        .trainerName = _("Ji"),
        .speechBefore = {((0x13 << 9) | 1), (0x7 << 9) | 0xd, (0x2 << 9) | 0x2, (0x8 << 9) | 0x2c, (0x5 << 9) | 0x28, ((0x13 << 9) | 187)},
        .speechWin = {((0x13 << 9) | 1), (0x5 << 9) | 0x28, ((0x13 << 9) | 187), ((0x13 << 9) | 1), (0x5 << 9) | 0x28, ((0x13 << 9) | 187)},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 187), (0x8 << 9) | 0x10, (0x3 << 9) | 0x3a, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [137] = {
        .facilityClass = 0x37,
        .trainerName = _("Alice"),
        .speechBefore = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x27, (0x7 << 9) | 0x1b, (0x8 << 9) | 0x34, ((0x12 << 9) | 95), (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x28, ((0x12 << 9) | 95), (0x3 << 9) | 0x16, (0xb << 9) | 0x39, (0x8 << 9) | 0x2f, (0xa << 9) | 0x19},
        .speechLose = {(0x5 << 9) | 0x28, ((0x12 << 9) | 95), (0x3 << 9) | 0x16, (0xb << 9) | 0xa, (0xa << 9) | 0x44, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [138] = {
        .facilityClass = 0x14,
        .trainerName = _("Terese"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0xb << 9) | 0x20, (0x5 << 9) | 0x28, (0xa << 9) | 0x39, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x2e, (0x5 << 9) | 0x1, (0xb << 9) | 0x30, (0x6 << 9) | 0x4},
        .speechLose = {(0x7 << 9) | 0xa, (0x7 << 9) | 0xf, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x2, (0xb << 9) | 0x20, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [139] = {
        .facilityClass = 0xd,
        .trainerName = _("Charis"),
        .speechBefore = {((0x0 << 9) | 294), (0x7 << 9) | 0x18, (0xa << 9) | 0x4, (0x8 << 9) | 0x20, ((0x12 << 9) | 230), 0xFFFF},
        .speechWin = {(0x7 << 9) | 0x1d, (0x7 << 9) | 0xd, (0x7 << 9) | 0x9, (0xf << 9) | 0x14, (0x5 << 9) | 0x1, (0x1 << 9) | 0xf},
        .speechLose = {(0x5 << 9) | 0x1, (0xc << 9) | 0xd, (0x8 << 9) | 0x36, (0x7 << 9) | 0xd, (0xc << 9) | 0x1a, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_PU_NU
    },
    [140] = {
        .facilityClass = 0x3,
        .trainerName = _("Yefrem"),
        .speechBefore = {(0x1 << 9) | 0x0, (0x6 << 9) | 0x0, 0xFFFF, (0xf << 9) | 0xe, 0xFFFF, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0xa << 9) | 0x1a, (0x10 << 9) | 0x17, (0x8 << 9) | 0x27, (0x5 << 9) | 0x25},
        .speechLose = {(0x9 << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF, (0x5 << 9) | 0x1, (0x3 << 9) | 0x13, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [141] = {
        .facilityClass = 0x3,
        .trainerName = _("Ingmar"),
        .speechBefore = {(0x5 << 9) | 0x37, (0xb << 9) | 0x41, (0xf << 9) | 0x14, (0xd << 9) | 0xe, (0xf << 9) | 0x5, (0x6 << 9) | 0x4},
        .speechWin = {(0xf << 9) | 0x14, (0xd << 9) | 0xe, (0xf << 9) | 0x5, (0x8 << 9) | 0x13, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechLose = {(0x4 << 9) | 0x22, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0xa << 9) | 0x1a, (0xa << 9) | 0x10, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [142] = {
        .facilityClass = 0x3,
        .trainerName = _("Ognijan"),
        .speechBefore = {(0xf << 9) | 0xf, (0x9 << 9) | 0x31, (0x7 << 9) | 0x14, (0x8 << 9) | 0x6, (0x8 << 9) | 0x20, (0x3 << 9) | 0x3b},
        .speechWin = {(0xf << 9) | 0x19, (0x8 << 9) | 0x39, (0x10 << 9) | 0xf, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14, (0x6 << 9) | 0x4},
        .speechLose = {(0xb << 9) | 0x11, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0xb, (0x5 << 9) | 0x29, (0x4 << 9) | 0xb},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [143] = {
        .facilityClass = 0x12,
        .trainerName = _("Marjana"),
        .speechBefore = {(0x3 << 9) | 0xd, (0xa << 9) | 0x37, (0x8 << 9) | 0x14, (0xb << 9) | 0x1e, (0x5 << 9) | 0x2, (0x3 << 9) | 0x6},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0x3 << 9) | 0x35, (0xf << 9) | 0xf, (0x8 << 9) | 0x30, (0x2 << 9) | 0x3b},
        .speechLose = {(0x7 << 9) | 0x22, (0x4 << 9) | 0x10, (0x7 << 9) | 0xa, (0x5 << 9) | 0x31, (0x8 << 9) | 0x22, (0x8 << 9) | 0x28},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [144] = {
        .facilityClass = 0x12,
        .trainerName = _("Dorine"),
        .speechBefore = {(0x6 << 9) | 0x11, (0x6 << 9) | 0x1, (0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x7 << 9) | 0x25, (0x6 << 9) | 0x1},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x31, (0x5 << 9) | 0x25, (0x7 << 9) | 0x19, (0x5 << 9) | 0x31, (0x10 << 9) | 0xf},
        .speechLose = {(0x7 << 9) | 0x1d, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x8 << 9) | 0x2f, ((0x13 << 9) | 33), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [145] = {
        .facilityClass = 0x12,
        .trainerName = _("Chelsea"),
        .speechBefore = {(0x5 << 9) | 0x5, (0xa << 9) | 0x39, (0x8 << 9) | 0x15, (0x8 << 9) | 0x6, (0x11 << 9) | 0xf, (0xe << 9) | 0x8},
        .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0x20, (0x5 << 9) | 0x5, (0xa << 9) | 0x39, (0xe << 9) | 0x1a, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, ((0x12 << 9) | 219), (0x5 << 9) | 0x5, (0xb << 9) | 0x46, (0xa << 9) | 0x39},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [146] = {
        .facilityClass = 0x44,
        .trainerName = _("Yosif"),
        .speechBefore = {(0x5 << 9) | 0x5, (0x3 << 9) | 0x28, (0x3 << 9) | 0x1b, (0x8 << 9) | 0xb, (0x10 << 9) | 0xb, (0x9 << 9) | 0x2d},
        .speechWin = {(0x5 << 9) | 0x28, (0x3 << 9) | 0x28, (0x3 << 9) | 0x1b, (0x8 << 9) | 0xb, (0x2 << 9) | 0x15, (0x8 << 9) | 0xc},
        .speechLose = {(0x5 << 9) | 0x26, (0x2 << 9) | 0x5c, (0x5 << 9) | 0x28, (0x2 << 9) | 0x45, (0x3 << 9) | 0x1e, (0xe << 9) | 0xd},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [147] = {
        .facilityClass = 0x44,
        .trainerName = _("Eustace"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0xf << 9) | 0xf, (0xa << 9) | 0x1c, (0xd << 9) | 0xb, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x28, (0xd << 9) | 0xb, (0x8 << 9) | 0x10, (0x7 << 9) | 0x34, (0xa << 9) | 0x25, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x28, (0xd << 9) | 0xb, (0x8 << 9) | 0x3d, (0x7 << 9) | 0xe, (0x8 << 9) | 0x20, (0xf << 9) | 0x5},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [148] = {
        .facilityClass = 0x44,
        .trainerName = _("Rokurou"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 102), (0x1 << 9) | 0xe, (0x8 << 9) | 0x3f, (0xf << 9) | 0x10, (0x3 << 9) | 0x28},
        .speechWin = {(0x3 << 9) | 0x8, (0x5 << 9) | 0x1, (0xb << 9) | 0x3f, (0x5 << 9) | 0x29, (0x8 << 9) | 0x20, ((0x15 << 9) | 128)},
        .speechLose = {(0x3 << 9) | 0x2f, (0x5 << 9) | 0x1, (0xb << 9) | 0x3f, (0x5 << 9) | 0x29, (0x8 << 9) | 0x20, ((0x15 << 9) | 241)},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [149] = {
        .facilityClass = 0x45,
        .trainerName = _("Caryl"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 273), (0x5 << 9) | 0x2, (0x8 << 9) | 0xa, (0x8 << 9) | 0x22, ((0x13 << 9) | 137)},
        .speechWin = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x2, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0x7 << 9) | 0x2, (0x7 << 9) | 0x2c},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, (0x7 << 9) | 0x2c, ((0x12 << 9) | 184), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [150] = {
        .facilityClass = 0x45,
        .trainerName = _("Aura"),
        .speechBefore = {(0xc << 9) | 0x6, (0x8 << 9) | 0xb, (0x8 << 9) | 0x28, (0xe << 9) | 0x13, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x1},
        .speechWin = {(0x5 << 9) | 0x28, (0x5 << 9) | 0xc, (0x5 << 9) | 0x33, (0x8 << 9) | 0xb, (0x7 << 9) | 0x8, (0xc << 9) | 0x6},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0xc << 9) | 0xd, (0xe << 9) | 0x1c, (0xe << 9) | 0x2c},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [151] = {
        .facilityClass = 0x45,
        .trainerName = _("Embla"),
        .speechBefore = {(0xc << 9) | 0x6, (0x8 << 9) | 0xb, (0x8 << 9) | 0x38, (0xe << 9) | 0x13, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x1},
        .speechWin = {(0x5 << 9) | 0x28, (0x5 << 9) | 0xc, (0x5 << 9) | 0x33, (0x9 << 9) | 0x22, (0xd << 9) | 0x30, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x31, (0xf << 9) | 0x8, (0x8 << 9) | 0x2f, (0xc << 9) | 0x6, (0xe << 9) | 0x16, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [152] = {
        .facilityClass = 0x34,
        .trainerName = _("Zeke"),
        .speechBefore = {(0x2 << 9) | 0x3e, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x3 << 9) | 0x36, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1d, (0x9 << 9) | 0x2e, (0x5 << 9) | 0x26, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x31},
        .speechLose = {(0x5 << 9) | 0x1f, (0x5 << 9) | 0x2, (0x9 << 9) | 0x38, (0x10 << 9) | 0x1e, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [153] = {
        .facilityClass = 0x34,
        .trainerName = _("Elof"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x6b, (0x8 << 9) | 0xb, (0xc << 9) | 0x23, (0x8 << 9) | 0x3a, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x28, ((0x13 << 9) | 183), (0x8 << 9) | 0x0, (0xb << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x12 << 9) | 280)},
        .speechLose = {(0x6 << 9) | 0x34, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x1, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [154] = {
        .facilityClass = 0x34,
        .trainerName = _("Yanko"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xd << 9) | 0x2a, (0x3 << 9) | 0x1b, (0xa << 9) | 0x43, ((0x0 << 9) | 43), (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x31, (0x5 << 9) | 0x28, (0x5 << 9) | 0x17, (0x11 << 9) | 0x2, (0xd << 9) | 0x35, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x42, (0x5 << 9) | 0x5, (0xd << 9) | 0x2a, (0x3 << 9) | 0x1b, (0x7 << 9) | 0x2e},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [155] = {
        .facilityClass = 0x34,
        .trainerName = _("Raymond"),
        .speechBefore = {(0x4 << 9) | 0x5, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x1f, (0x6 << 9) | 0x1, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x3e, (0x6 << 9) | 0x3e, (0x6 << 9) | 0x0, (0x6 << 9) | 0x3e, (0x6 << 9) | 0x3e, (0x6 << 9) | 0x1},
        .speechLose = {(0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x6 << 9) | 0x4, (0x5 << 9) | 0x31, (0x5 << 9) | 0x28, (0x9 << 9) | 0x2e},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [156] = {
        .facilityClass = 0x29,
        .trainerName = _("Stellan"),
        .speechBefore = {(0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x7 << 9) | 0x9, (0x5 << 9) | 0x28, ((0x13 << 9) | 257), (0x6 << 9) | 0x3},
        .speechWin = {(0x4 << 9) | 0x1, (0x5 << 9) | 0x29, (0x8 << 9) | 0x2c, (0x2 << 9) | 0x5a, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x7 << 9) | 0xa, (0x5 << 9) | 0x26, (0x8 << 9) | 0x2c, (0x2 << 9) | 0x5a, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [157] = {
        .facilityClass = 0x2a,
        .trainerName = _("Gauri"),
        .speechBefore = {(0x2 << 9) | 0x10, (0x3 << 9) | 0xd, (0x6 << 9) | 0x3, (0x5 << 9) | 0x14, (0x6 << 9) | 0x3, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x7 << 9) | 0x36, (0x2 << 9) | 0x18, (0x1 << 9) | 0xe, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0xd << 9) | 0x35, (0x7 << 9) | 0x7, (0x2 << 9) | 0x18, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [158] = {
        .facilityClass = 0x42,
        .trainerName = _("Jihoon"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x3 << 9) | 0x28, (0x8 << 9) | 0xb, (0x3 << 9) | 0xe, (0x8 << 9) | 0x2c, (0x3 << 9) | 0xd},
        .speechWin = {(0x8 << 9) | 0x15, (0x5 << 9) | 0x2, (0x3 << 9) | 0x35, (0xf << 9) | 0x14, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x8 << 9) | 0x2c, (0x5 << 9) | 0x28, (0x6 << 9) | 0x23},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [159] = {
        .facilityClass = 0x2,
        .trainerName = _("Pattie"),
        .speechBefore = {(0x8 << 9) | 0xb, (0x5 << 9) | 0x5, (0x1 << 9) | 0x10, (0x7 << 9) | 0x2c, (0x10 << 9) | 0x17, (0x6 << 9) | 0x3},
        .speechWin = {(0x6 << 9) | 0x1c, (0x6 << 9) | 0x12, (0x5 << 9) | 0x5, (0x1 << 9) | 0x10, (0x8 << 9) | 0xb, (0x11 << 9) | 0x7},
        .speechLose = {(0x8 << 9) | 0x21, (0x14 << 9) | 0x2, (0x1 << 9) | 0x10, (0x8 << 9) | 0xa, (0x8 << 9) | 0x6, (0x10 << 9) | 0x17},
        .monSet = gBattleFrontierTrainerMons_NU_RU
    },
    [160] = {
        .facilityClass = 0x2b,
        .trainerName = _("Zdenko"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x5 << 9) | 0x28, (0xb << 9) | 0x46, (0x5 << 9) | 0x1b, (0x14 << 9) | 0x5},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x21, (0x10 << 9) | 0xf, (0xe << 9) | 0x13, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0x14 << 9) | 0xb, (0x5 << 9) | 0x28, (0x9 << 9) | 0x6, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [161] = {
        .facilityClass = 0x2b,
        .trainerName = _("Carlos"),
        .speechBefore = {(0xe << 9) | 0x24, (0x8 << 9) | 0x0, (0xe << 9) | 0x16, (0x8 << 9) | 0x6, (0xf << 9) | 0xa, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x28, (0xc << 9) | 0x3, (0x8 << 9) | 0x8, (0xb << 9) | 0x2a, (0x8 << 9) | 0x20, ((0x13 << 9) | 270)},
        .speechLose = {(0x5 << 9) | 0x1, (0xe << 9) | 0x6, (0xb << 9) | 0x2a, (0x5 << 9) | 0x28, (0xc << 9) | 0x3, (0xf << 9) | 0x1b},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [162] = {
        .facilityClass = 0x47,
        .trainerName = _("Fenne"),
        .speechBefore = {(0x8 << 9) | 0x18, (0x5 << 9) | 0x2, (0x3 << 9) | 0x28, (0x8 << 9) | 0x30, (0x2 << 9) | 0xc, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x2, (0x3 << 9) | 0x28, (0x8 << 9) | 0x37, (0x8 << 9) | 0x21, (0x14 << 9) | 0x20, (0x6 << 9) | 0x23},
        .speechLose = {(0xf << 9) | 0x22, (0x8 << 9) | 0xb, (0x2 << 9) | 0xc, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [163] = {
        .facilityClass = 0x47,
        .trainerName = _("Maritza"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x10 << 9) | 0x8, (0xf << 9) | 0x29, (0xe << 9) | 0x1a, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x8, (0xb << 9) | 0x2a, (0x8 << 9) | 0x20, (0xa << 9) | 0x1e, (0x9 << 9) | 0x33},
        .speechLose = {(0xf << 9) | 0x14, (0x3 << 9) | 0x2e, (0x8 << 9) | 0xb, (0x9 << 9) | 0x2f, (0x8 << 9) | 0x2f, ((0x13 << 9) | 256)},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [164] = {
        .facilityClass = 0x26,
        .trainerName = _("Kameron"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x3f, (0x8 << 9) | 0x2f, (0xc << 9) | 0x22, (0x7 << 9) | 0x12, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, ((0x13 << 9) | 271), (0x5 << 9) | 0x8, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0xc << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0xc << 9) | 0x22, (0x7 << 9) | 0x36},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [165] = {
        .facilityClass = 0x26,
        .trainerName = _("Archil"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x2a, (0xd << 9) | 0x30, (0x7 << 9) | 0x15, (0xf << 9) | 0xf, (0xd << 9) | 0xf},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0xf << 9) | 0xf, (0xd << 9) | 0x8, (0xd << 9) | 0x0, (0x8 << 9) | 0x39},
        .speechLose = {(0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0xc << 9) | 0x22, (0x7 << 9) | 0x36},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [166] = {
        .facilityClass = 0x27,
        .trainerName = _("Ivona"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x32, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x8 << 9) | 0x2f, (0xb << 9) | 0x34},
        .speechWin = {(0x8 << 9) | 0x20, (0x3 << 9) | 0x6, (0xb << 9) | 0x3, (0x5 << 9) | 0x14, (0x8 << 9) | 0x20, ((0x13 << 9) | 347)},
        .speechLose = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x51, (0x8 << 9) | 0x0, (0x1 << 9) | 0xf, (0x9 << 9) | 0x2e, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [167] = {
        .facilityClass = 0x27,
        .trainerName = _("Nedelya"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x27, (0x8 << 9) | 0x37, (0x8 << 9) | 0x21, ((0x12 << 9) | 312), (0xc << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x20, (0xa << 9) | 0x1b, (0x2 << 9) | 0x1d, 0xFFFF},
        .speechLose = {(0x7 << 9) | 0x19, (0x7 << 9) | 0x16, ((0x12 << 9) | 312), (0x8 << 9) | 0x11, (0xa << 9) | 0x6, (0xa << 9) | 0x25},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [168] = {
        .facilityClass = 0x15,
        .trainerName = _("Jarvis"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xd << 9) | 0x16, (0x6 << 9) | 0x3, 0xFFFF, 0xFFFF, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x7 << 9) | 0x39, (0xa << 9) | 0x3f, (0x8 << 9) | 0x34, ((0x13 << 9) | 346)},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x16, (0x7 << 9) | 0x39, (0xa << 9) | 0x3f, (0x8 << 9) | 0x34, ((0x13 << 9) | 300)},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [169] = {
        .facilityClass = 0x15,
        .trainerName = _("Grigori"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x9 << 9) | 0xe, (0xb << 9) | 0x1f, (0x5 << 9) | 0x29, (0x3 << 9) | 0x3a, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x2, (0x5 << 9) | 0x1f, (0x3 << 9) | 0x21, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14, 0xFFFF},
        .speechLose = {(0x4 << 9) | 0x22, (0xf << 9) | 0x22, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [170] = {
        .facilityClass = 0x13,
        .trainerName = _("Dian"),
        .speechBefore = {(0x5 << 9) | 0x7, (0x9 << 9) | 0xa, (0x5 << 9) | 0x5, (0x2 << 9) | 0x49, (0x8 << 9) | 0x2c, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x6, (0x5 << 9) | 0x2, (0x2 << 9) | 0x49, (0x8 << 9) | 0x2c, (0x8 << 9) | 0x38},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x1 << 9) | 0xf, (0x7 << 9) | 0xf, (0x5 << 9) | 0x1, (0x3 << 9) | 0x30},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [171] = {
        .facilityClass = 0x13,
        .trainerName = _("Brigita"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x38, (0x6 << 9) | 0x4, (0xd << 9) | 0x1d, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechWin = {(0x5 << 9) | 0x7, (0xa << 9) | 0x38, (0x5 << 9) | 0x14, (0x5 << 9) | 0x4a, (0x7 << 9) | 0x36, 0xFFFF},
        .speechLose = {(0xb << 9) | 0x47, (0x5 << 9) | 0x5, ((0x13 << 9) | 218), (0x5 << 9) | 0x4a, (0x8 << 9) | 0xe, (0x5 << 9) | 0x1b},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [172] = {
        .facilityClass = 0x43,
        .trainerName = _("Milko"),
        .speechBefore = {(0x8 << 9) | 0xd, (0xc << 9) | 0x7, (0x5 << 9) | 0x28, (0x2 << 9) | 0x16, (0x8 << 9) | 0x37, (0x3 << 9) | 0x28},
        .speechWin = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x3a, (0x8 << 9) | 0x2b, (0x7 << 9) | 0x39, (0xb << 9) | 0x40, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x5, (0x3 << 9) | 0x28, (0x3 << 9) | 0x1b, (0x8 << 9) | 0xb, (0xa << 9) | 0x17, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [173] = {
        .facilityClass = 0x43,
        .trainerName = _("Hamid"),
        .speechBefore = {(0x5 << 9) | 0x3d, (0x8 << 9) | 0x0, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, (0x2 << 9) | 0x15, (0x3 << 9) | 0x28},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x8 << 9) | 0x37, (0x8 << 9) | 0x20, (0x2 << 9) | 0x15, (0x6 << 9) | 0x23},
        .speechLose = {(0x4 << 9) | 0xf, (0x6 << 9) | 0x3, (0x5 << 9) | 0x29, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x20, (0x5 << 9) | 0x21},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [174] = {
        .facilityClass = 0x35,
        .trainerName = _("Moe"),
        .speechBefore = {(0x5 << 9) | 0x28, ((0x13 << 9) | 290), (0x8 << 9) | 0xb, (0xa << 9) | 0x22, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xe},
        .speechWin = {(0x8 << 9) | 0x3b, (0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0xf << 9) | 0x14, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0xb << 9) | 0x2a, ((0x12 << 9) | 108), (0x8 << 9) | 0x2f, (0x3 << 9) | 0x26},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [175] = {
        .facilityClass = 0x35,
        .trainerName = _("Lowie"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x12 << 9) | 15), (0xf << 9) | 0x13, (0xf << 9) | 0x10, (0x5 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x17, ((0x12 << 9) | 288), (0x5 << 9) | 0x14, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x5, (0x3 << 9) | 0x2e},
        .speechLose = {(0xb << 9) | 0x11, (0x3 << 9) | 0x31, (0xf << 9) | 0x14, ((0x12 << 9) | 184), (0x8 << 9) | 0x34, (0x5 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [176] = {
        .facilityClass = 0x11,
        .trainerName = _("Gavriel"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x9 << 9) | 0x37, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0xc << 9) | 0xf},
        .speechWin = {(0x5 << 9) | 0x28, (0xc << 9) | 0xf, (0x8 << 9) | 0x13, (0xf << 9) | 0xa, (0x10 << 9) | 0x1e, (0x6 << 9) | 0x4},
        .speechLose = {(0x4 << 9) | 0x4, (0x5 << 9) | 0x28, (0xc << 9) | 0xf, (0x4 << 9) | 0x15, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [177] = {
        .facilityClass = 0x11,
        .trainerName = _("Chad"),
        .speechBefore = {(0x8 << 9) | 0x23, (0x8 << 9) | 0x10, (0x8 << 9) | 0x20, ((0x13 << 9) | 257), (0xe << 9) | 0x3, (0xe << 9) | 0x2c},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0xb << 9) | 0x47, (0x8 << 9) | 0x20, ((0x13 << 9) | 257), 0xFFFF},
        .speechLose = {(0x8 << 9) | 0x3c, (0x8 << 9) | 0x29, ((0x12 << 9) | 258), (0x8 << 9) | 0x39, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [178] = {
        .facilityClass = 0x10,
        .trainerName = _("Gulisa"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x1, (0x8 << 9) | 0x37, (0x2 << 9) | 0x5f},
        .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0x22, (0x8 << 9) | 0x2f, (0xb << 9) | 0x1b, (0x8 << 9) | 0x38, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x22, (0xa << 9) | 0x21, (0xa << 9) | 0x5, (0x8 << 9) | 0x37, (0x2 << 9) | 0x5f},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [179] = {
        .facilityClass = 0x10,
        .trainerName = _("Kozue"),
        .speechBefore = {(0xf << 9) | 0xf, (0xc << 9) | 0x28, (0xd << 9) | 0x13, (0x8 << 9) | 0xb, (0x8 << 9) | 0x39, (0xa << 9) | 0x21},
        .speechWin = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x61, (0x5 << 9) | 0x5, (0xc << 9) | 0x14, (0x6 << 9) | 0x3},
        .speechLose = {(0x9 << 9) | 0x2a, (0x8 << 9) | 0x20, (0xa << 9) | 0x10, (0xc << 9) | 0x6, (0xd << 9) | 0x1a, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_NU_RU_UU_OU
    },
    [180] = {
        .facilityClass = 0x1d,
        .trainerName = _("Farid"),
        .speechBefore = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x2 << 9) | 0x61, (0xc << 9) | 0x17, (0xe << 9) | 0x16},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0x2 << 9) | 0x61, (0xd << 9) | 0x2a, (0xb << 9) | 0x42, (0x6 << 9) | 0x0},
        .speechLose = {(0x8 << 9) | 0x17, (0x5 << 9) | 0x2, (0x8 << 9) | 0x3a, (0x2 << 9) | 0x61, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [181] = {
        .facilityClass = 0x1d,
        .trainerName = _("Saionji"),
        .speechBefore = {(0x7 << 9) | 0xd, (0x3 << 9) | 0x36, (0x2 << 9) | 0x61, (0x1 << 9) | 0xb, (0x8 << 9) | 0xb, (0xf << 9) | 0xa},
        .speechWin = {(0x7 << 9) | 0xd, (0x3 << 9) | 0x36, (0x2 << 9) | 0x61, (0x1 << 9) | 0xb, (0xf << 9) | 0x18, (0x5 << 9) | 0x1},
        .speechLose = {(0x9 << 9) | 0x39, (0x7 << 9) | 0xf, (0xa << 9) | 0x34, (0x5 << 9) | 0x1, (0x2 << 9) | 0x42, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [182] = {
        .facilityClass = 0x2d,
        .trainerName = _("Lohan"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0xa, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x20, (0xd << 9) | 0x20, (0xc << 9) | 0x6},
        .speechWin = {(0x7 << 9) | 0x2e, (0x5 << 9) | 0x29, (0x8 << 9) | 0x37, (0x7 << 9) | 0xd, (0xd << 9) | 0x20, (0x11 << 9) | 0x9},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0xf << 9) | 0x8, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [183] = {
        .facilityClass = 0x2d,
        .trainerName = _("Stian"),
        .speechBefore = {(0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0x8 << 9) | 0x20, (0x7 << 9) | 0x2f, (0x2 << 9) | 0x15, ((0x12 << 9) | 238)},
        .speechWin = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x18, (0x8 << 9) | 0x20, ((0x12 << 9) | 238)},
        .speechLose = {(0x8 << 9) | 0x10, (0x8 << 9) | 0x29, (0x8 << 9) | 0x20, (0xa << 9) | 0x3e, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [184] = {
        .facilityClass = 0xe,
        .trainerName = _("Hunter"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xc << 9) | 0xd, (0x8 << 9) | 0xb, (0xd << 9) | 0x1f, (0x5 << 9) | 0x14, (0xa << 9) | 0x1b},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x5 << 9) | 0x29, (0xa << 9) | 0x1b, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x36, (0xa << 9) | 0x1b, (0x8 << 9) | 0x42, (0x5 << 9) | 0x29, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [185] = {
        .facilityClass = 0xe,
        .trainerName = _("Alph"),
        .speechBefore = {(0x4 << 9) | 0xe, (0x6 << 9) | 0x0, 0xFFFF, (0xd << 9) | 0x35, (0xd << 9) | 0x35, (0x6 << 9) | 0x1},
        .speechWin = {(0x4 << 9) | 0x10, (0x7 << 9) | 0x15, (0x4 << 9) | 0x11, (0xf << 9) | 0x19, (0x9 << 9) | 0x9, 0xFFFF},
        .speechLose = {(0x6 << 9) | 0x3c, (0x6 << 9) | 0x0, 0xFFFF, (0x4 << 9) | 0x1d, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x1},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [186] = {
        .facilityClass = 0x5,
        .trainerName = _("Faisal"),
        .speechBefore = {(0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x39, (0x5 << 9) | 0x28, ((0x12 << 9) | 95), (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x5, ((0x13 << 9) | 154), (0x5 << 9) | 0x5, ((0x12 << 9) | 70), (0x14 << 9) | 0x1f, (0x1 << 9) | 0xb},
        .speechLose = {(0x6 << 9) | 0x24, (0x6 << 9) | 0x4, 0xFFFF, (0x5 << 9) | 0x29, (0x3 << 9) | 0x3a, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [187] = {
        .facilityClass = 0x5,
        .trainerName = _("Vencel"),
        .speechBefore = {(0xf << 9) | 0xf, (0x3 << 9) | 0x28, (0x8 << 9) | 0xb, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0x5 << 9) | 0x8},
        .speechWin = {(0x5 << 9) | 0x8, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x9 << 9) | 0x5, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x5 << 9) | 0x28, (0x5 << 9) | 0x8, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [188] = {
        .facilityClass = 0x19,
        .trainerName = _("Miki"),
        .speechBefore = {(0x5 << 9) | 0x40, (0xd << 9) | 0x8, (0x8 << 9) | 0x0, (0x9 << 9) | 0x1, (0x8 << 9) | 0x2a, (0xe << 9) | 0x2b},
        .speechWin = {(0xe << 9) | 0x2a, (0x8 << 9) | 0xb, (0xf << 9) | 0x21, (0x5 << 9) | 0x1, (0x9 << 9) | 0x1, (0xa << 9) | 0x3c},
        .speechLose = {(0x8 << 9) | 0xd, (0xc << 9) | 0x21, (0x7 << 9) | 0x30, (0x7 << 9) | 0xd, ((0x12 << 9) | 234), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [189] = {
        .facilityClass = 0x19,
        .trainerName = _("Gerard"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xd << 9) | 0x33, (0x5 << 9) | 0x1f, (0x5 << 9) | 0x1, (0x6 << 9) | 0x3, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x14 << 9) | 0x10, (0x14 << 9) | 0xf, (0x6 << 9) | 0x1c, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0xe << 9) | 0x6, (0xd << 9) | 0x33, (0x4 << 9) | 0x11, (0x7 << 9) | 0x1a, (0xa << 9) | 0x21},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [190] = {
        .facilityClass = 0x4,
        .trainerName = _("Georgs"),
        .speechBefore = {(0x4 << 9) | 0x4, (0x8 << 9) | 0x20, (0x2 << 9) | 0x4b, (0x2 << 9) | 0x32, (0x11 << 9) | 0xf, (0x3 << 9) | 0x3e},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0x2 << 9) | 0x4b, (0x2 << 9) | 0x32, (0x3 << 9) | 0x19, (0x6 << 9) | 0x0},
        .speechLose = {(0x3 << 9) | 0x2f, (0x5 << 9) | 0x1, (0x7 << 9) | 0x1e, ((0x12 << 9) | 19), (0xf << 9) | 0x1e, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [191] = {
        .facilityClass = 0x4,
        .trainerName = _("Juanma"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0xa << 9) | 0x9, (0x7 << 9) | 0x8, (0x8 << 9) | 0x20, (0xc << 9) | 0x27},
        .speechWin = {(0x5 << 9) | 0x5, ((0x12 << 9) | 184), (0x8 << 9) | 0x10, (0x8 << 9) | 0x37, (0x5 << 9) | 0x28, (0xc << 9) | 0x27},
        .speechLose = {(0x5 << 9) | 0x28, (0x9 << 9) | 0x21, (0xc << 9) | 0x27, (0x8 << 9) | 0x10, (0x8 << 9) | 0x25, (0xa << 9) | 0x9},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [192] = {
        .facilityClass = 0x3a,
        .trainerName = _("Gage"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x8 << 9) | 0xd, (0xd << 9) | 0x1d, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x31, (0xe << 9) | 0xc},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x3a, (0x7 << 9) | 0xf, (0x5 << 9) | 0x1, (0xd << 9) | 0x1d, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0x4 << 9) | 0x19, (0x7 << 9) | 0xf, (0x5 << 9) | 0x1, (0xd << 9) | 0x1d},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [193] = {
        .facilityClass = 0x3a,
        .trainerName = _("Artemio"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x5 << 9) | 0x15, (0xb << 9) | 0x3, (0x5 << 9) | 0x14, (0x7 << 9) | 0x13, ((0x13 << 9) | 186)},
        .speechWin = {(0x5 << 9) | 0x28, (0x5 << 9) | 0x15, (0x5 << 9) | 0x33, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0xd << 9) | 0x1b},
        .speechLose = {(0x8 << 9) | 0x20, (0xd << 9) | 0x1b, (0x8 << 9) | 0x13, (0xe << 9) | 0x6, (0x8 << 9) | 0x27, (0xc << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [194] = {
        .facilityClass = 0x0,
        .trainerName = _("Nirmal"),
        .speechBefore = {(0x2 << 9) | 0x13, (0xa << 9) | 0x37, (0x8 << 9) | 0x14, (0xb << 9) | 0x1e, (0x5 << 9) | 0x2, (0x3 << 9) | 0x6},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x1, (0x2 << 9) | 0x12, (0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7},
        .speechLose = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x2, ((0x13 << 9) | 252), (0x5 << 9) | 0x14, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [195] = {
        .facilityClass = 0x0,
        .trainerName = _("Alwin"),
        .speechBefore = {((0x12 << 9) | 268), (0x6 << 9) | 0x0, 0xFFFF, ((0x12 << 9) | 268), (0x6 << 9) | 0x1, 0xFFFF},
        .speechWin = {(0x3 << 9) | 0x13, (0x6 << 9) | 0x3, 0xFFFF, (0x8 << 9) | 0x25, (0xe << 9) | 0x16, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0x3 << 9) | 0x13, (0x10 << 9) | 0x1e},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [196] = {
        .facilityClass = 0x1a,
        .trainerName = _("Ofek"),
        .speechBefore = {(0x3 << 9) | 0x10, (0x6 << 9) | 0x0, (0x5 << 9) | 0x31, (0x5 << 9) | 0x28, (0x10 << 9) | 0x20, ((0x13 << 9) | 271)},
        .speechWin = {(0x8 << 9) | 0x3b, (0x5 << 9) | 0x28, (0x10 << 9) | 0x20, ((0x13 << 9) | 271), ((0x12 << 9) | 310), (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x3c, (0xe << 9) | 0x0, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, ((0x13 << 9) | 271)},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [197] = {
        .facilityClass = 0x1a,
        .trainerName = _("Killian"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x10 << 9) | 0x20, (0xd << 9) | 0xe, (0xf << 9) | 0x18, (0x5 << 9) | 0x1, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xa << 9) | 0x10, (0xd << 9) | 0xe, (0x3 << 9) | 0x19, (0x6 << 9) | 0x0},
        .speechLose = {(0xf << 9) | 0x22, (0x8 << 9) | 0x20, (0x9 << 9) | 0x29, (0xf << 9) | 0x19, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [198] = {
        .facilityClass = 0x20,
        .trainerName = _("Ayomide"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x9 << 9) | 0x37, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xf, (0xa << 9) | 0x8},
        .speechWin = {(0x1 << 9) | 0xf, (0xa << 9) | 0x8, (0x6 << 9) | 0x0, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x4 << 9) | 0x10},
        .speechLose = {(0x5 << 9) | 0x2a, (0x9 << 9) | 0xa, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xf, (0xa << 9) | 0x8, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [199] = {
        .facilityClass = 0x20,
        .trainerName = _("Kubo"),
        .speechBefore = {(0x8 << 9) | 0x20, ((0x13 << 9) | 217), (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14, (0x6 << 9) | 0x3, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x36, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x7 << 9) | 0x7, (0xa << 9) | 0x10, (0x6 << 9) | 0x4},
        .speechLose = {(0x6 << 9) | 0x1d, (0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xd << 9) | 0xf, (0x8 << 9) | 0x5, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_RU_UU_OU
    },
    [200] = {
        .facilityClass = 0x2b,
        .trainerName = _("Nick"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x2 << 9) | 0x23, (0x8 << 9) | 0xb, (0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0x9 << 9) | 0x36},
        .speechWin = {(0x5 << 9) | 0x28, (0x5 << 9) | 0xb, (0x7 << 9) | 0x15, (0x5 << 9) | 0x8, (0x8 << 9) | 0x14, (0x3 << 9) | 0x35},
        .speechLose = {(0xb << 9) | 0x11, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x20, (0x2 << 9) | 0x23, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [201] = {
        .facilityClass = 0x2b,
        .trainerName = _("Winton"),
        .speechBefore = {(0x3 << 9) | 0x2f, (0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0xc << 9) | 0x22, (0x8 << 9) | 0x2b, (0xc << 9) | 0x6},
        .speechWin = {(0x5 << 9) | 0x14, (0xc << 9) | 0x22, (0x6 << 9) | 0x3, (0x7 << 9) | 0x1, (0x8 << 9) | 0x9, (0x9 << 9) | 0x39},
        .speechLose = {(0x4 << 9) | 0x1d, (0x4 << 9) | 0x0, (0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0xb << 9) | 0x34},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [202] = {
        .facilityClass = 0x47,
        .trainerName = _("Adriana"),
        .speechBefore = {(0x8 << 9) | 0xb, (0xf << 9) | 0xf, (0xa << 9) | 0x3f, (0x8 << 9) | 0x34, (0x3 << 9) | 0x28, (0x8 << 9) | 0x24},
        .speechWin = {(0x8 << 9) | 0xd, (0x3 << 9) | 0x1, (0x8 << 9) | 0x2b, (0x8 << 9) | 0x21, ((0x12 << 9) | 196), ((0x13 << 9) | 57)},
        .speechLose = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x27, (0x8 << 9) | 0x20, ((0x12 << 9) | 157), (0xb << 9) | 0x42, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [203] = {
        .facilityClass = 0x47,
        .trainerName = _("Nanami"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0xd << 9) | 0x2a, (0x11 << 9) | 0x4, (0x8 << 9) | 0xb, (0xa << 9) | 0x1a},
        .speechWin = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x3a, (0x7 << 9) | 0x35, (0xd << 9) | 0x2a, (0xf << 9) | 0x4},
        .speechLose = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x2f, (0x9 << 9) | 0x2d, (0x8 << 9) | 0x37, (0xd << 9) | 0x2a, (0x3 << 9) | 0x1b},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [204] = {
        .facilityClass = 0x1b,
        .trainerName = _("Cillain"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x7 << 9) | 0x36, (0x2 << 9) | 0x1c, (0x2 << 9) | 0x32, (0x1 << 9) | 0xe},
        .speechWin = {(0x1 << 9) | 0x2, (0x5 << 9) | 0x14, (0x8 << 9) | 0x20, (0x2 << 9) | 0x1c, (0x1 << 9) | 0xe, (0xb << 9) | 0x11},
        .speechLose = {(0x8 << 9) | 0x23, (0x5 << 9) | 0x1f, (0x7 << 9) | 0x11, (0x2 << 9) | 0x1c, (0x2 << 9) | 0x32, (0x1 << 9) | 0xe},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [205] = {
        .facilityClass = 0x1b,
        .trainerName = _("Micha"),
        .speechBefore = {((0x13 << 9) | 275), (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0xf << 9) | 0x1c, (0x3 << 9) | 0x28, (0x3 << 9) | 0x3e},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0x3 << 9) | 0x3e, (0x5 << 9) | 0x14, (0xe << 9) | 0x1a, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x2, ((0x12 << 9) | 15), (0x5 << 9) | 0x14, (0xf << 9) | 0x13, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [206] = {
        .facilityClass = 0x1c,
        .trainerName = _("Jed"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x2a, (0xf << 9) | 0xf, (0x3 << 9) | 0x28},
        .speechWin = {(0xf << 9) | 0x19, (0xa << 9) | 0x21, (0x8 << 9) | 0x39, (0x3 << 9) | 0x38, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0xb << 9) | 0x11, (0xe << 9) | 0x19, (0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x9 << 9) | 0x2a, (0xf << 9) | 0xf},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [207] = {
        .facilityClass = 0x1c,
        .trainerName = _("Eskil"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 273), (0xe << 9) | 0x20, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, ((0x13 << 9) | 241)},
        .speechWin = {(0xe << 9) | 0x20, (0xa << 9) | 0x43, (0xe << 9) | 0x8, (0x8 << 9) | 0x2f, (0xb << 9) | 0x1b, (0x6 << 9) | 0x4},
        .speechLose = {(0x7 << 9) | 0xd, (0x2 << 9) | 0x3a, (0xb << 9) | 0x9, (0x8 << 9) | 0x29, (0x8 << 9) | 0x0, ((0x12 << 9) | 258)},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [208] = {
        .facilityClass = 0x7,
        .trainerName = _("Walter"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x2 << 9) | 0x2c, (0x8 << 9) | 0x0, (0x8 << 9) | 0x18, (0x5 << 9) | 0x2, (0xa << 9) | 0x5},
        .speechWin = {(0x7 << 9) | 0x1d, (0x7 << 9) | 0xf, (0x5 << 9) | 0x1, (0xb << 9) | 0x3d, (0x8 << 9) | 0x21, (0x5 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0x9, (0x6 << 9) | 0x0, 0xFFFF, (0x8 << 9) | 0x20, ((0x12 << 9) | 250), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [209] = {
        .facilityClass = 0x7,
        .trainerName = _("Egbert"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, ((0x13 << 9) | 33), (0x5 << 9) | 0x2, (0xf << 9) | 0x13, (0x6 << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x17, (0x5 << 9) | 0x2, (0x2 << 9) | 0x42, (0x5 << 9) | 0x2, (0x14 << 9) | 0xd, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3c, (0x9 << 9) | 0x12, (0x5 << 9) | 0x2, (0x8 << 9) | 0xa, ((0x12 << 9) | 68)},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [210] = {
        .facilityClass = 0x38,
        .trainerName = _("Keiko"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xd << 9) | 0x29, (0xd << 9) | 0x2b, (0x8 << 9) | 0x13, (0xa << 9) | 0x8, (0xa << 9) | 0x40},
        .speechWin = {(0x4 << 9) | 0x11, (0x6 << 9) | 0x0, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0xa << 9) | 0xf},
        .speechLose = {(0x5 << 9) | 0x1, (0xb << 9) | 0x20, (0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x20, (0xd << 9) | 0x29},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [211] = {
        .facilityClass = 0x38,
        .trainerName = _("Danai"),
        .speechBefore = {(0x5 << 9) | 0x2, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0x3 << 9) | 0x1, (0x6 << 9) | 0xb, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x39, (0x4 << 9) | 0x1d, (0x14 << 9) | 0xe, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0x39, (0x6 << 9) | 0x4, 0xFFFF, (0x4 << 9) | 0x1c, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [212] = {
        .facilityClass = 0x29,
        .trainerName = _("Maksim"),
        .speechBefore = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0x2 << 9) | 0x4d, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0x3 << 9) | 0x1e},
        .speechWin = {(0x7 << 9) | 0x1d, (0x8 << 9) | 0x2a, (0x5 << 9) | 0x2, (0x8 << 9) | 0x8, ((0x12 << 9) | 71), (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, ((0x13 << 9) | 115), (0x5 << 9) | 0x28, (0x3 << 9) | 0x1e, (0xf << 9) | 0x8, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [213] = {
        .facilityClass = 0x29,
        .trainerName = _("Erwin"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, ((0x12 << 9) | 117), (0x5 << 9) | 0x28, (0xe << 9) | 0x13, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x28, (0x8 << 9) | 0x25, (0xe << 9) | 0x16, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x28, (0xa << 9) | 0x3e, (0x8 << 9) | 0x10, (0x8 << 9) | 0x39, (0xa << 9) | 0x25, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [214] = {
        .facilityClass = 0x2a,
        .trainerName = _("Szilvia"),
        .speechBefore = {(0xc << 9) | 0x26, (0x8 << 9) | 0x2f, (0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0x2 << 9) | 0x18, (0x1 << 9) | 0xe},
        .speechWin = {(0x6 << 9) | 0x13, (0x6 << 9) | 0x4, 0xFFFF, (0x4 << 9) | 0x11, (0x8 << 9) | 0x25, (0xa << 9) | 0x21},
        .speechLose = {(0x6 << 9) | 0x24, (0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x5 << 9) | 0x1f, (0x7 << 9) | 0x1a, (0x9 << 9) | 0x32},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [215] = {
        .facilityClass = 0x2a,
        .trainerName = _("Luba"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x20, (0x9 << 9) | 0x32, ((0x13 << 9) | 217), (0x6 << 9) | 0x4},
        .speechWin = {(0xb << 9) | 0x11, (0x1 << 9) | 0xf, (0x5 << 9) | 0x14, (0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0xd << 9) | 0xf},
        .speechLose = {(0xc << 9) | 0x25, (0xd << 9) | 0x9, (0xb << 9) | 0x1e, (0x8 << 9) | 0x20, (0x3 << 9) | 0x39, ((0x13 << 9) | 217)},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [216] = {
        .facilityClass = 0x42,
        .trainerName = _("Soo-Jin"),
        .speechBefore = {(0x8 << 9) | 0xd, (0x9 << 9) | 0x39, (0x5 << 9) | 0x5, (0x3 << 9) | 0x1e, (0x8 << 9) | 0x37, (0xa << 9) | 0xc},
        .speechWin = {(0xf << 9) | 0x19, (0x8 << 9) | 0x22, (0x5 << 9) | 0x5, (0xa << 9) | 0xc, (0x3 << 9) | 0x1e, (0x6 << 9) | 0x0},
        .speechLose = {(0x8 << 9) | 0x22, (0x9 << 9) | 0x9, (0x6 << 9) | 0x4, (0x5 << 9) | 0x6, (0x3 << 9) | 0x21, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [217] = {
        .facilityClass = 0x42,
        .trainerName = _("Steph"),
        .speechBefore = {(0xc << 9) | 0xd, (0x8 << 9) | 0xb, (0xd << 9) | 0x1f, (0x5 << 9) | 0x14, (0x8 << 9) | 0x21, (0x2 << 9) | 0x48},
        .speechWin = {(0x8 << 9) | 0x2a, (0xc << 9) | 0xd, (0x7 << 9) | 0x15, (0x4 << 9) | 0x1d, (0x9 << 9) | 0x1, (0x6 << 9) | 0x4},
        .speechLose = {((0x12 << 9) | 203), (0x8 << 9) | 0xb, (0x8 << 9) | 0x2a, (0x5 << 9) | 0x1, (0x8 << 9) | 0x16, (0x8 << 9) | 0x18},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [218] = {
        .facilityClass = 0x2,
        .trainerName = _("Nura"),
        .speechBefore = {(0x6 << 9) | 0x3a, (0x6 << 9) | 0x0, (0x8 << 9) | 0x20, (0x2 << 9) | 0x33, (0x1 << 9) | 0xb, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x3b, (0x6 << 9) | 0x0, (0x8 << 9) | 0x20, (0x10 << 9) | 0x18, (0x1 << 9) | 0xb, (0x6 << 9) | 0x0},
        .speechLose = {(0x2 << 9) | 0x15, (0x6 << 9) | 0x0, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24, (0x1 << 9) | 0xb, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [219] = {
        .facilityClass = 0x2,
        .trainerName = _("Harun"),
        .speechBefore = {(0x9 << 9) | 0x36, (0x5 << 9) | 0x4a, ((0x0 << 9) | 316), (0xd << 9) | 0x22, (0xd << 9) | 0x4, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x3b, (0x8 << 9) | 0x20, (0xa << 9) | 0x39, (0x1 << 9) | 0xe, (0xd << 9) | 0xe, (0xc << 9) | 0x1d},
        .speechLose = {(0x5 << 9) | 0x3b, (0xa << 9) | 0x10, (0x6 << 9) | 0x0, (0xa << 9) | 0x1f, (0x8 << 9) | 0x39, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [220] = {
        .facilityClass = 0x3,
        .trainerName = _("Mamiya"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x31, (0x8 << 9) | 0x42, (0x7 << 9) | 0x39, (0x8 << 9) | 0xe, (0x1 << 9) | 0xb},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3b, (0x8 << 9) | 0x29, ((0x13 << 9) | 26), (0x8 << 9) | 0x2b, (0x9 << 9) | 0x1c},
        .speechLose = {(0xf << 9) | 0x8, (0xc << 9) | 0x1, (0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x1, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [221] = {
        .facilityClass = 0x3,
        .trainerName = _("Mikage"),
        .speechBefore = {(0x5 << 9) | 0x2a, (0x8 << 9) | 0x22, (0x3 << 9) | 0x30, (0x8 << 9) | 0x43, (0x10 << 9) | 0x1e, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x5, (0x9 << 9) | 0xe, (0xd << 9) | 0x35, (0xa << 9) | 0x32, (0x5 << 9) | 0x2, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0xb << 9) | 0x27, (0xf << 9) | 0xf, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [222] = {
        .facilityClass = 0x3,
        .trainerName = _("Touga"),
        .speechBefore = {(0x7 << 9) | 0xd, (0xa << 9) | 0x2c, (0x1 << 9) | 0xb, (0x7 << 9) | 0x1d, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechWin = {(0x7 << 9) | 0xd, (0xa << 9) | 0x2c, (0x11 << 9) | 0x14, (0x8 << 9) | 0x35, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x11 << 9) | 0x0, (0xf << 9) | 0xf, ((0x12 << 9) | 200), (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [223] = {
        .facilityClass = 0x3,
        .trainerName = _("Ruy"),
        .speechBefore = {(0x5 << 9) | 0x28, ((0x13 << 9) | 140), (0x8 << 9) | 0x0, ((0x13 << 9) | 21), (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x3c, (0x4 << 9) | 0x29, (0x7 << 9) | 0x39, (0xa << 9) | 0x6, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x17, (0x1 << 9) | 0xf, (0x8 << 9) | 0x29, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [224] = {
        .facilityClass = 0x12,
        .trainerName = _("Marie"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0xd << 9) | 0x1b, (0x8 << 9) | 0x34, (0xf << 9) | 0xf, (0xc << 9) | 0x2c},
        .speechWin = {(0x5 << 9) | 0x28, (0xc << 9) | 0x2c, (0x8 << 9) | 0xb, (0xa << 9) | 0xc, (0x8 << 9) | 0x34, (0x8 << 9) | 0x4},
        .speechLose = {(0xf << 9) | 0x25, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x8 << 9) | 0x25, (0x9 << 9) | 0x30, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [225] = {
        .facilityClass = 0x12,
        .trainerName = _("Utena"),
        .speechBefore = {(0x6 << 9) | 0x1d, (0x8 << 9) | 0x20, (0x1 << 9) | 0xb, (0x8 << 9) | 0x30, (0x8 << 9) | 0x20, ((0x12 << 9) | 184)},
        .speechWin = {(0x6 << 9) | 0xb, (0x5 << 9) | 0x2, (0x7 << 9) | 0x16, (0xd << 9) | 0x35, (0x9 << 9) | 0x19, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0x29, (0x6 << 9) | 0x0, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2c, (0x8 << 9) | 0xf, (0x9 << 9) | 0x19},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [226] = {
        .facilityClass = 0x12,
        .trainerName = _("Sancha"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0xb << 9) | 0x42, (0x5 << 9) | 0x2, (0x3 << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x2a, (0x8 << 9) | 0x27, (0x2 << 9) | 0x21, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x6 << 9) | 0x1d, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x4, ((0x12 << 9) | 120), (0x7 << 9) | 0x35, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [227] = {
        .facilityClass = 0x12,
        .trainerName = _("Kanae"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x45, (0x8 << 9) | 0x20, (0x7 << 9) | 0x2d, (0x9 << 9) | 0x40, (0x3 << 9) | 0x28},
        .speechWin = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x7 << 9) | 0x12, (0x8 << 9) | 0x31, (0x3 << 9) | 0x28, (0x6 << 9) | 0x4},
        .speechLose = {(0xf << 9) | 0x19, (0x7 << 9) | 0x13, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x8 << 9) | 0x2f, (0xb << 9) | 0x47},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [228] = {
        .facilityClass = 0x44,
        .trainerName = _("Linford"),
        .speechBefore = {(0x4 << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF, (0x8 << 9) | 0xd, (0x3 << 9) | 0x1, (0x6 << 9) | 0x1},
        .speechWin = {(0x4 << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x4 << 9) | 0x27},
        .speechLose = {(0x4 << 9) | 0x27, (0x6 << 9) | 0x0, 0xFFFF, (0x5 << 9) | 0x1, (0x3 << 9) | 0x30, (0x4 << 9) | 0x27},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [229] = {
        .facilityClass = 0x44,
        .trainerName = _("Tallak"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x3 << 9) | 0x1e},
        .speechWin = {(0x5 << 9) | 0x37, (0x8 << 9) | 0x1e, (0x7 << 9) | 0x36, (0x3 << 9) | 0x1e, (0xe << 9) | 0x1a, (0x6 << 9) | 0x0},
        .speechLose = {(0x4 << 9) | 0x5, ((0x13 << 9) | 36), (0x5 << 9) | 0x3a, (0x3 << 9) | 0x1e, (0x7 << 9) | 0x1b, (0xb << 9) | 0x11},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [230] = {
        .facilityClass = 0x44,
        .trainerName = _("Artie"),
        .speechBefore = {(0x4 << 9) | 0x17, (0x8 << 9) | 0x0, (0xf << 9) | 0xf, (0x1 << 9) | 0xe, (0xc << 9) | 0xd, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x39, (0xf << 9) | 0x14, (0x8 << 9) | 0x29, (0x8 << 9) | 0x10, (0x3 << 9) | 0x21},
        .speechLose = {(0x8 << 9) | 0x29, (0x8 << 9) | 0x3c, (0x3 << 9) | 0x0, (0xa << 9) | 0x40, (0x5 << 9) | 0x1, (0x9 << 9) | 0x12},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [231] = {
        .facilityClass = 0x45,
        .trainerName = _("Guanyu"),
        .speechBefore = {(0x8 << 9) | 0x2a, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x7 << 9) | 0x14, (0x9 << 9) | 0x28, (0x5 << 9) | 0x14},
        .speechWin = {(0x9 << 9) | 0x6, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0x8 << 9) | 0x30, (0x2 << 9) | 0x63},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x25, (0x7 << 9) | 0x2, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x18, (0x1 << 9) | 0xe},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [232] = {
        .facilityClass = 0x45,
        .trainerName = _("Olaug"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x39, (0x5 << 9) | 0x5, (0x1 << 9) | 0xe},
        .speechWin = {(0xa << 9) | 0x40, (0x5 << 9) | 0x1f, (0x5 << 9) | 0x37, (0x9 << 9) | 0x24, (0x6 << 9) | 0x3, (0x6 << 9) | 0xb},
        .speechLose = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x7 << 9) | 0x26, (0xa << 9) | 0x24, (0x9 << 9) | 0x27},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [233] = {
        .facilityClass = 0x45,
        .trainerName = _("Shiori"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x14 << 9) | 0x1f, (0x7 << 9) | 0x15, (0x3 << 9) | 0x20, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x5 << 9) | 0x1f, (0x5 << 9) | 0x1, (0xa << 9) | 0x5, (0x6 << 9) | 0x3},
        .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0x13, (0xb << 9) | 0x3a, (0x8 << 9) | 0x38, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [234] = {
        .facilityClass = 0x34,
        .trainerName = _("Aleks"),
        .speechBefore = {(0x2 << 9) | 0x3e, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x5 << 9) | 0x28, (0x3 << 9) | 0x2, (0xf << 9) | 0x1c},
        .speechWin = {(0x5 << 9) | 0x31, (0x4 << 9) | 0x1d, (0xa << 9) | 0x39, (0x2 << 9) | 0x3e, (0x1 << 9) | 0xe, (0x3 << 9) | 0x6},
        .speechLose = {(0x2 << 9) | 0x3e, (0x1 << 9) | 0xe, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, (0x3 << 9) | 0x31, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [235] = {
        .facilityClass = 0x34,
        .trainerName = _("Bartolo"),
        .speechBefore = {(0x8 << 9) | 0xd, (0x9 << 9) | 0x13, (0x5 << 9) | 0x2, ((0x13 << 9) | 46), (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x11, 0xFFFF, 0xFFFF, (0x3 << 9) | 0x19, (0x6 << 9) | 0x1, 0xFFFF},
        .speechLose = {(0x6 << 9) | 0x11, 0xFFFF, 0xFFFF, (0xf << 9) | 0x25, (0x6 << 9) | 0x2, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [236] = {
        .facilityClass = 0x34,
        .trainerName = _("Serge"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xc << 9) | 0x13, (0x7 << 9) | 0x16, (0x8 << 9) | 0x30, (0x2 << 9) | 0x3e, (0x1 << 9) | 0xe},
        .speechWin = {(0x7 << 9) | 0xd, (0x6 << 9) | 0x23, (0x5 << 9) | 0x29, (0xc << 9) | 0x13, (0x8 << 9) | 0xb, (0x7 << 9) | 0x2a},
        .speechLose = {(0x5 << 9) | 0x7, (0x10 << 9) | 0x1f, (0x7 << 9) | 0xd, (0x6 << 9) | 0x23, (0x5 << 9) | 0x29, (0xc << 9) | 0x13},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [237] = {
        .facilityClass = 0xa,
        .trainerName = _("Anuj"),
        .speechBefore = {(0xf << 9) | 0xf, (0x9 << 9) | 0x31, (0x8 << 9) | 0x6, (0x8 << 9) | 0x28, (0xe << 9) | 0x16, (0x7 << 9) | 0x11},
        .speechWin = {(0xa << 9) | 0x40, (0xf << 9) | 0x14, (0x8 << 9) | 0x3c, (0xb << 9) | 0x47, (0x7 << 9) | 0x1a, (0xa << 9) | 0x21},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x3 << 9) | 0x31, (0x8 << 9) | 0x25, (0xe << 9) | 0x16, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [238] = {
        .facilityClass = 0xa,
        .trainerName = _("Sigmund"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x10 << 9) | 0x2, (0x1 << 9) | 0xe, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c},
        .speechWin = {(0x2 << 9) | 0x34, (0x8 << 9) | 0xb, (0x7 << 9) | 0xd, (0x6 << 9) | 0x23, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1},
        .speechLose = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x29, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, (0xd << 9) | 0x24, (0xd << 9) | 0x11},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [239] = {
        .facilityClass = 0xa,
        .trainerName = _("Isaija"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x34, (0xf << 9) | 0x10, (0x3 << 9) | 0x39, (0x1 << 9) | 0xb, 0xFFFF},
        .speechWin = {(0x6 << 9) | 0x2e, (0x6 << 9) | 0x0, (0xe << 9) | 0x12, (0x3 << 9) | 0x39, (0x1 << 9) | 0xb, (0x6 << 9) | 0x4},
        .speechLose = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0xa << 9) | 0x30, (0x3 << 9) | 0x39, (0x8 << 9) | 0x27, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [240] = {
        .facilityClass = 0x36,
        .trainerName = _("Cvijeta"),
        .speechBefore = {(0x7 << 9) | 0x15, (0x10 << 9) | 0x1e, (0xe << 9) | 0x12, (0x3 << 9) | 0x28, (0x6 << 9) | 0x3, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x7 << 9) | 0xa, (0x5 << 9) | 0x29, (0xa << 9) | 0x2a, (0x6 << 9) | 0x4},
        .speechLose = {(0xa << 9) | 0x5, (0x5 << 9) | 0x31, (0x8 << 9) | 0x28, (0x8 << 9) | 0x36, (0xe << 9) | 0x3, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [241] = {
        .facilityClass = 0x36,
        .trainerName = _("Juri"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x3 << 9) | 0x28, (0x5 << 9) | 0x15, (0x7 << 9) | 0x1d, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x13, (0x8 << 9) | 0x20, (0x3 << 9) | 0x28, (0x5 << 9) | 0x15, (0x10 << 9) | 0x17, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x16, (0x8 << 9) | 0x20, (0x3 << 9) | 0x28, (0x5 << 9) | 0x15, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [242] = {
        .facilityClass = 0x36,
        .trainerName = _("Meave"),
        .speechBefore = {(0x9 << 9) | 0x2c, (0x5 << 9) | 0x28, (0x3 << 9) | 0x36, (0x3 << 9) | 0x12, (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0xa << 9) | 0x21, (0x8 << 9) | 0x2f, (0xb << 9) | 0x12, 0xFFFF},
        .speechLose = {(0x8 << 9) | 0x25, (0xa << 9) | 0x21, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0x3 << 9) | 0x36, (0x3 << 9) | 0x12},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [243] = {
        .facilityClass = 0x9,
        .trainerName = _("Milorad"),
        .speechBefore = {(0xa << 9) | 0x5, (0x8 << 9) | 0x2f, (0x4 << 9) | 0x21, (0x14 << 9) | 0x1f, (0x1 << 9) | 0xb, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x3e, (0x6 << 9) | 0x0, 0xFFFF, (0xb << 9) | 0x2, (0x8 << 9) | 0x29, (0xf << 9) | 0x1b},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0xf, (0x8 << 9) | 0x20, (0x3 << 9) | 0x20, (0x1 << 9) | 0xb, (0x5 << 9) | 0x21},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [244] = {
        .facilityClass = 0x9,
        .trainerName = _("Vaughn"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x9 << 9) | 0x1, (0xf << 9) | 0x13, (0x9 << 9) | 0x27, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x6, (0xf << 9) | 0x1d, (0x8 << 9) | 0x39, (0x3 << 9) | 0x38, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x12},
        .speechLose = {(0xa << 9) | 0x40, (0xa << 9) | 0x40, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0x3 << 9) | 0x13, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [245] = {
        .facilityClass = 0x9,
        .trainerName = _("Ata"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x14 << 9) | 0x1e, (0x5 << 9) | 0x29, (0xa << 9) | 0x11, (0x6 << 9) | 0x0},
        .speechWin = {(0xa << 9) | 0x11, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x29, (0x6 << 9) | 0x1f, (0x6 << 9) | 0x0, (0xf << 9) | 0x13, (0x5 << 9) | 0x1, (0x3 << 9) | 0x1},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [246] = {
        .facilityClass = 0x16,
        .trainerName = _("Maria"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x14, (0xf << 9) | 0x13, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x26, (0x6 << 9) | 0x0, 0xFFFF, (0x5 << 9) | 0x1, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x2},
        .speechLose = {(0x5 << 9) | 0x29, ((0x13 << 9) | 251), (0x7 << 9) | 0x15, (0x9 << 9) | 0x20, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [247] = {
        .facilityClass = 0x16,
        .trainerName = _("Lucia"),
        .speechBefore = {(0xa << 9) | 0x40, (0xa << 9) | 0x40, 0xFFFF, (0x8 << 9) | 0xd, (0xe << 9) | 0x17, 0xFFFF},
        .speechWin = {(0xf << 9) | 0x22, (0x6 << 9) | 0x3, (0x9 << 9) | 0x3c, (0x8 << 9) | 0x25, (0xe << 9) | 0x16, (0x6 << 9) | 0x3},
        .speechLose = {(0xa << 9) | 0x40, (0x5 << 9) | 0x1, (0x9 << 9) | 0x39, (0xf << 9) | 0x14, (0x5 << 9) | 0x29, (0x3 << 9) | 0x3a},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [248] = {
        .facilityClass = 0x16,
        .trainerName = _("Vivi"),
        .speechBefore = {(0x5 << 9) | 0x2a, (0x5 << 9) | 0x3e, (0xb << 9) | 0x18, (0x8 << 9) | 0x27, (0x5 << 9) | 0x2, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x12, (0x5 << 9) | 0x2a, (0x9 << 9) | 0x15, (0xf << 9) | 0x4, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x22, (0x5 << 9) | 0x2a, (0x5 << 9) | 0x3e, (0xb << 9) | 0x18, (0x8 << 9) | 0xb, (0xf << 9) | 0x29},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [249] = {
        .facilityClass = 0x1e,
        .trainerName = _("Edvard"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x11 << 9) | 0x7, (0x1 << 9) | 0xe, (0xd << 9) | 0x27, (0x6 << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x10, (0xf << 9) | 0x14, (0x7 << 9) | 0x11, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, (0x9 << 9) | 0x3f, (0x8 << 9) | 0x20, (0xd << 9) | 0x27},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [250] = {
        .facilityClass = 0x1e,
        .trainerName = _("Loke"),
        .speechBefore = {(0xf << 9) | 0xf, (0x9 << 9) | 0x31, (0x8 << 9) | 0x6, (0x8 << 9) | 0x21, (0x3 << 9) | 0x38, (0x3 << 9) | 0x18},
        .speechWin = {(0x8 << 9) | 0x29, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x10, (0x3 << 9) | 0x38, 0xFFFF, 0xFFFF},
        .speechLose = {(0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x9 << 9) | 0x5, (0xe << 9) | 0x1a, (0x6 << 9) | 0x3, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [251] = {
        .facilityClass = 0x1e,
        .trainerName = _("Matteo"),
        .speechBefore = {(0x5 << 9) | 0x28, ((0x13 << 9) | 193), (0xb << 9) | 0x9, (0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x6},
        .speechWin = {(0x5 << 9) | 0x28, ((0x13 << 9) | 193), (0xa << 9) | 0x4, (0x5 << 9) | 0x3e, (0x7 << 9) | 0x2a, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3c, (0x9 << 9) | 0x39, (0xf << 9) | 0xf, ((0x12 << 9) | 179), (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [252] = {
        .facilityClass = 0x1f,
        .trainerName = _("Wakaba"),
        .speechBefore = {(0x7 << 9) | 0x26, (0xa << 9) | 0x5, (0x8 << 9) | 0x0, (0xb << 9) | 0x1b, (0x8 << 9) | 0x34, (0xf << 9) | 0xf},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x7 << 9) | 0x3b, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x14, (0x7 << 9) | 0x26, (0xa << 9) | 0x5, (0xb << 9) | 0xa, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [253] = {
        .facilityClass = 0x1f,
        .trainerName = _("Ofir"),
        .speechBefore = {(0xf << 9) | 0x10, (0x1 << 9) | 0xb, (0xa << 9) | 0x4, (0x5 << 9) | 0x3e, (0x3 << 9) | 0x3a, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x31, (0xd << 9) | 0x1f, (0x5 << 9) | 0x14, ((0x12 << 9) | 281), (0xf << 9) | 0x14, (0x3 << 9) | 0x28},
        .speechLose = {(0x5 << 9) | 0x1, (0xb << 9) | 0x33, (0x7 << 9) | 0x15, (0x8 << 9) | 0x25, (0x5 << 9) | 0x1, (0x3 << 9) | 0x30},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [254] = {
        .facilityClass = 0x1f,
        .trainerName = _("Téa"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x20, (0x7 << 9) | 0x1a, (0x7 << 9) | 0x2, (0x1 << 9) | 0xb},
        .speechWin = {(0x8 << 9) | 0x1c, (0xf << 9) | 0x14, (0x8 << 9) | 0x20, (0xa << 9) | 0x5, (0x3 << 9) | 0x18, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x30, (0xb << 9) | 0x1f, (0x5 << 9) | 0x6, (0x7 << 9) | 0x2, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [255] = {
        .facilityClass = 0xc,
        .trainerName = _("Aliona"),
        .speechBefore = {(0x8 << 9) | 0x17, ((0x12 << 9) | 288), (0x5 << 9) | 0x14, (0x3 << 9) | 0x8, (0x8 << 9) | 0x24, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x39, (0x5 << 9) | 0x2, (0x9 << 9) | 0x17},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x12 << 9) | 288), (0x8 << 9) | 0x30, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [256] = {
        .facilityClass = 0xc,
        .trainerName = _("Uttaraa"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x10 << 9) | 0x16, (0x5 << 9) | 0x4a, ((0x13 << 9) | 77), (0x8 << 9) | 0x27},
        .speechWin = {(0x5 << 9) | 0x31, (0x9 << 9) | 0x19, (0x7 << 9) | 0xf, (0x5 << 9) | 0x28, (0x3 << 9) | 0x16, (0xb << 9) | 0x39},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x16, (0x5 << 9) | 0x2, (0x7 << 9) | 0x15, (0x5 << 9) | 0x5, (0x1 << 9) | 0xe},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [257] = {
        .facilityClass = 0xc,
        .trainerName = _("Chantal"),
        .speechBefore = {(0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x39, (0x9 << 9) | 0x19, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3},
        .speechWin = {(0x8 << 9) | 0x1c, (0xf << 9) | 0x14, (0x9 << 9) | 0x19, (0x6 << 9) | 0x18, 0xFFFF, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x36, (0x9 << 9) | 0x19, (0x8 << 9) | 0x42, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [258] = {
        .facilityClass = 0x17,
        .trainerName = _("Yuri"),
        .speechBefore = {(0x4 << 9) | 0xf, (0x6 << 9) | 0x3, 0xFFFF, (0x4 << 9) | 0xf, (0x6 << 9) | 0x2, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0xf, (0x5 << 9) | 0x8, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x28, (0xc << 9) | 0x1c, (0x8 << 9) | 0x13, (0xb << 9) | 0x3a, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [259] = {
        .facilityClass = 0x17,
        .trainerName = _("Mikael"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x16, (0x3 << 9) | 0x31, (0x5 << 9) | 0x5, ((0x12 << 9) | 207), (0xe << 9) | 0x1a},
        .speechWin = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0x4 << 9) | 0x1d, ((0x12 << 9) | 207), (0xf << 9) | 0x28, (0x6 << 9) | 0x18},
        .speechLose = {(0x3 << 9) | 0x1, (0x8 << 9) | 0x2c, ((0x12 << 9) | 207), (0x8 << 9) | 0x2a, (0x5 << 9) | 0x2, (0x9 << 9) | 0x36},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [260] = {
        .facilityClass = 0x17,
        .trainerName = _("Jacob"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x20, (0x5 << 9) | 0x29, (0x7 << 9) | 0x2f, (0x2 << 9) | 0x15, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x16, (0xd << 9) | 0x35, (0xf << 9) | 0x1b, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x14},
        .speechLose = {(0x5 << 9) | 0x6, (0x2 << 9) | 0x15, (0x6 << 9) | 0x0, (0x4 << 9) | 0x1d, (0x7 << 9) | 0x2c, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [261] = {
        .facilityClass = 0x20,
        .trainerName = _("Max"),
        .speechBefore = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0xf << 9) | 0x9, (0x1 << 9) | 0x12, (0x3 << 9) | 0x28},
        .speechWin = {(0xf << 9) | 0x19, (0xf << 9) | 0x9, (0x1 << 9) | 0x12, (0x7 << 9) | 0x15, (0x10 << 9) | 0xf, (0x8 << 9) | 0x39},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x39, (0xf << 9) | 0x9, (0x8 << 9) | 0x37, (0x1 << 9) | 0x12, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [262] = {
        .facilityClass = 0x20,
        .trainerName = _("Dryden"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0xf << 9) | 0x14, (0x14 << 9) | 0x1e, (0x10 << 9) | 0x1e, 0xFFFF},
        .speechWin = {(0x5 << 9) | 0x2b, (0xb << 9) | 0x9, (0x5 << 9) | 0x29, (0x8 << 9) | 0x39, (0x14 << 9) | 0x1e, (0x6 << 9) | 0x3},
        .speechLose = {(0xb << 9) | 0x11, (0x5 << 9) | 0x29, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x22, (0xf << 9) | 0x14, (0x14 << 9) | 0x1e},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [263] = {
        .facilityClass = 0x20,
        .trainerName = _("Van"),
        .speechBefore = {(0x5 << 9) | 0x2a, (0x8 << 9) | 0x20, (0x14 << 9) | 0x3, (0xf << 9) | 0x4, 0xFFFF, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x17, (0xd << 9) | 0x1a, (0x9 << 9) | 0x1, (0xd << 9) | 0x17, (0x7 << 9) | 0x3a, 0xFFFF},
        .speechLose = {(0x7 << 9) | 0x3a, (0x8 << 9) | 0x34, (0xc << 9) | 0x1b, (0x1 << 9) | 0xf, (0x8 << 9) | 0x20, (0xd << 9) | 0x2e},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [264] = {
        .facilityClass = 0x30,
        .trainerName = _("Ormond"),
        .speechBefore = {(0xb << 9) | 0x11, (0x8 << 9) | 0x17, (0xb << 9) | 0x1e, (0xf << 9) | 0xf, (0x9 << 9) | 0x19, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0x11, (0x6 << 9) | 0x4, 0xFFFF, (0x5 << 9) | 0x29, (0x9 << 9) | 0x5, (0xe << 9) | 0x1a},
        .speechLose = {(0x5 << 9) | 0x29, (0x9 << 9) | 0xc, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [265] = {
        .facilityClass = 0x30,
        .trainerName = _("Sisto"),
        .speechBefore = {(0x7 << 9) | 0x0, (0xf << 9) | 0x1b, 0xFFFF, (0x5 << 9) | 0x1, (0xe << 9) | 0x6, (0x3 << 9) | 0x6},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x3 << 9) | 0x24, (0x8 << 9) | 0x2, (0xf << 9) | 0x22, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x16, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x2, (0x8 << 9) | 0x36, (0x2 << 9) | 0x13},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [266] = {
        .facilityClass = 0x31,
        .trainerName = _("Hitomi"),
        .speechBefore = {(0x7 << 9) | 0xd, (0xd << 9) | 0x17, (0xc << 9) | 0x2c, (0x9 << 9) | 0x31, (0x3 << 9) | 0x35, (0x1 << 9) | 0xe},
        .speechWin = {(0x4 << 9) | 0x11, (0x6 << 9) | 0x0, (0xf << 9) | 0x14, (0x3 << 9) | 0x6, (0x8 << 9) | 0x10, (0xa << 9) | 0x1f},
        .speechLose = {(0x4 << 9) | 0x11, (0x6 << 9) | 0x0, (0xf << 9) | 0x14, (0x3 << 9) | 0x2e, (0x8 << 9) | 0x10, (0xa << 9) | 0x1f},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [267] = {
        .facilityClass = 0x31,
        .trainerName = _("Tariro"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x5 << 9) | 0x2, (0xa << 9) | 0xf, (0x8 << 9) | 0x20, (0x2 << 9) | 0x14, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x2, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xb << 9) | 0x42, (0x7 << 9) | 0x36, (0x2 << 9) | 0x21},
        .speechLose = {(0x6 << 9) | 0x1d, (0x5 << 9) | 0x2, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [268] = {
        .facilityClass = 0x32,
        .trainerName = _("Herman"),
        .speechBefore = {(0x8 << 9) | 0x22, (0xe << 9) | 0x12, (0x1 << 9) | 0xb, (0x3 << 9) | 0x28, (0x6 << 9) | 0x4, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x14, (0xf << 9) | 0xf, (0x8 << 9) | 0x32, (0xe << 9) | 0xa, (0x6 << 9) | 0x3, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x38, (0x1 << 9) | 0xf, (0x8 << 9) | 0x2f, ((0x13 << 9) | 156), (0x7 << 9) | 0x13},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [269] = {
        .facilityClass = 0x32,
        .trainerName = _("Jessé"),
        .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 291), (0xf << 9) | 0x6, (0x7 << 9) | 0xd, ((0x13 << 9) | 57), (0x6 << 9) | 0x0},
        .speechWin = {(0x4 << 9) | 0x26, (0xb << 9) | 0x47, (0x8 << 9) | 0x20, ((0x13 << 9) | 291), (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0xb << 9) | 0x3d, (0x6 << 9) | 0x4, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [270] = {
        .facilityClass = 0x33,
        .trainerName = _("Lorna"),
        .speechBefore = {(0x8 << 9) | 0x3b, (0x5 << 9) | 0x2, (0x2 << 9) | 0x27, (0xf << 9) | 0x1b, (0x8 << 9) | 0x40, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x2, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x7 << 9) | 0x36, (0x7 << 9) | 0x25},
        .speechLose = {(0xa << 9) | 0xe, (0x2 << 9) | 0x27, (0x8 << 9) | 0x3c, (0xc << 9) | 0xd, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [271] = {
        .facilityClass = 0x33,
        .trainerName = _("Merle"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x12, (0x8 << 9) | 0x30, (0x2 << 9) | 0x1b},
        .speechWin = {(0x6 << 9) | 0x13, (0x6 << 9) | 0x4, (0x5 << 9) | 0x31, (0x8 << 9) | 0x28, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x1 << 9) | 0xf, (0x7 << 9) | 0xf, (0x2 << 9) | 0x1b, (0xc << 9) | 0xd},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [272] = {
        .facilityClass = 0x2e,
        .trainerName = _("Castiel"),
        .speechBefore = {(0x8 << 9) | 0x3a, (0x8 << 9) | 0x20, ((0x12 << 9) | 49), (0x4 << 9) | 0x12, 0xFFFF, 0xFFFF},
        .speechWin = {(0x4 << 9) | 0xb, (0x8 << 9) | 0x2f, (0xb << 9) | 0x1e, (0x5 << 9) | 0x2, (0x8 << 9) | 0x25, (0x9 << 9) | 0x20},
        .speechLose = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x30, (0x8 << 9) | 0x20, ((0x13 << 9) | 48), (0x2 << 9) | 0x14},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [273] = {
        .facilityClass = 0x2e,
        .trainerName = _("Abrar"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0x11 << 9) | 0x13, (0x7 << 9) | 0x1d, (0x5 << 9) | 0x28, (0xc << 9) | 0x27},
        .speechWin = {(0x5 << 9) | 0x28, (0xc << 9) | 0x27, (0x8 << 9) | 0x13, (0xf << 9) | 0x1d, (0x8 << 9) | 0x2d, (0x6 << 9) | 0x0},
        .speechLose = {(0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0xc << 9) | 0x27, (0x8 << 9) | 0x13, (0x14 << 9) | 0xf, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [274] = {
        .facilityClass = 0x2f,
        .trainerName = _("Manaia"),
        .speechBefore = {(0x8 << 9) | 0x17, (0x5 << 9) | 0x2, (0x9 << 9) | 0x12, (0x5 << 9) | 0x29, (0x2 << 9) | 0x18, (0x6 << 9) | 0x3},
        .speechWin = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0x7 << 9) | 0x36, (0x5 << 9) | 0x27, (0x8 << 9) | 0x42, (0x2 << 9) | 0x19},
        .speechLose = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x63, (0x8 << 9) | 0x3d, ((0x13 << 9) | 213), (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [275] = {
        .facilityClass = 0x2f,
        .trainerName = _("Kandi"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xe << 9) | 0x6, (0x9 << 9) | 0x5, (0x9 << 9) | 0x5, (0x9 << 9) | 0x5, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x1d, (0x6 << 9) | 0x3a, (0x6 << 9) | 0x0, (0x4 << 9) | 0x26, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechLose = {(0x4 << 9) | 0x26, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0x9 << 9) | 0x5, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [276] = {
        .facilityClass = 0x1d,
        .trainerName = _("Bojidar"),
        .speechBefore = {(0x5 << 9) | 0x2a, (0x9 << 9) | 0xa, (0x7 << 9) | 0x12, (0x8 << 9) | 0x34, (0x2 << 9) | 0x61, (0x1 << 9) | 0xe},
        .speechWin = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x61, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x8 << 9) | 0x2a, (0x6 << 9) | 0x15},
        .speechLose = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x61, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x8 << 9) | 0x2a, (0xa << 9) | 0x1d},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [277] = {
        .facilityClass = 0x1d,
        .trainerName = _("Tendaji"),
        .speechBefore = {(0x5 << 9) | 0x3d, (0x7 << 9) | 0x2c, (0x9 << 9) | 0x16, (0x2 << 9) | 0x5a, (0x7 << 9) | 0x15, (0x2 << 9) | 0x4b},
        .speechWin = {(0x2 << 9) | 0x61, (0x1 << 9) | 0xe, (0x5 << 9) | 0x1f, (0x9 << 9) | 0x2e, (0x4 << 9) | 0x1a, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x2, (0xb << 9) | 0x20, (0xf << 9) | 0x22, (0x5 << 9) | 0x3d, (0x9 << 9) | 0x16, (0x4 << 9) | 0x1a},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [278] = {
        .facilityClass = 0x2d,
        .trainerName = _("Enta"),
        .speechBefore = {(0xd << 9) | 0x20, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0xf << 9) | 0x1c, (0x8 << 9) | 0x37, (0xc << 9) | 0x29},
        .speechWin = {(0x2 << 9) | 0x5f, (0x1 << 9) | 0xe, ((0x13 << 9) | 213), (0x5 << 9) | 0x14, (0x8 << 9) | 0x3e, (0xe << 9) | 0xa},
        .speechLose = {(0x8 << 9) | 0x17, (0x4 << 9) | 0x29, (0xf << 9) | 0x14, (0x14 << 9) | 0xf, (0xe << 9) | 0x12, (0xe << 9) | 0x13},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [279] = {
        .facilityClass = 0x2d,
        .trainerName = _("Petr"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x21, (0x5 << 9) | 0xd, (0x5 << 9) | 0x1, (0x3 << 9) | 0x28, (0x3 << 9) | 0x38},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x21, (0x5 << 9) | 0xd, (0x5 << 9) | 0x1, ((0x13 << 9) | 256), (0x9 << 9) | 0x1c},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x21, (0x5 << 9) | 0xd, (0x5 << 9) | 0x1, ((0x13 << 9) | 256), ((0x13 << 9) | 218)},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [280] = {
        .facilityClass = 0xe,
        .trainerName = _("Ane"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0xf, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c, (0x5 << 9) | 0x1, (0x8 << 9) | 0x16},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0xb, (0x7 << 9) | 0x19, (0x5 << 9) | 0x1, (0x9 << 9) | 0xf, (0x7 << 9) | 0x11},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3b, (0x9 << 9) | 0xf, (0x8 << 9) | 0x3c, (0x5 << 9) | 0x1, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [281] = {
        .facilityClass = 0xe,
        .trainerName = _("Chucky"),
        .speechBefore = {(0x5 << 9) | 0x26, (0x8 << 9) | 0x2c, (0xd << 9) | 0x34, (0x7 << 9) | 0x30, (0x7 << 9) | 0x16, (0xe << 9) | 0xc},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1f, (0x3 << 9) | 0x30, (0x5 << 9) | 0x28, (0xa << 9) | 0x2b, (0x10 << 9) | 0x1e},
        .speechLose = {(0x7 << 9) | 0x1d, (0x8 << 9) | 0x29, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0xb << 9) | 0x34},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [282] = {
        .facilityClass = 0x5,
        .trainerName = _("Colt"),
        .speechBefore = {(0x4 << 9) | 0x1b, (0x5 << 9) | 0x2, (0x9 << 9) | 0x12, (0x5 << 9) | 0x29, (0x9 << 9) | 0x19, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x29, (0x2 << 9) | 0x15, (0x7 << 9) | 0xa, (0x8 << 9) | 0x22, (0x9 << 9) | 0x19, (0x6 << 9) | 0x0},
        .speechLose = {(0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, (0xa << 9) | 0x23, (0xd << 9) | 0x2a, (0x3 << 9) | 0x1b},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [283] = {
        .facilityClass = 0x5,
        .trainerName = _("Micha"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0xa, (0x7 << 9) | 0x33, (0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x1 << 9) | 0xe},
        .speechWin = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x2},
        .speechLose = {(0x9 << 9) | 0x39, (0x6 << 9) | 0x3, 0xFFFF, (0x5 << 9) | 0x1, (0xe << 9) | 0x6, (0x3 << 9) | 0x31},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [284] = {
        .facilityClass = 0x19,
        .trainerName = _("Alexy"),
        .speechBefore = {(0x5 << 9) | 0x31, (0x10 << 9) | 0xc, (0x8 << 9) | 0x2f, ((0x13 << 9) | 165), (0x8 << 9) | 0x30, (0x5 << 9) | 0x14},
        .speechWin = {((0x12 << 9) | 66), (0x8 << 9) | 0x10, (0x5 << 9) | 0x5, (0x7 << 9) | 0x16, (0xf << 9) | 0x1c, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0xf << 9) | 0x13, (0xf << 9) | 0x13, (0xf << 9) | 0x13, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [285] = {
        .facilityClass = 0x19,
        .trainerName = _("Daichi"),
        .speechBefore = {(0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x13, (0x5 << 9) | 0x28, (0xd << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechWin = {(0x9 << 9) | 0x38, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x9 << 9) | 0x38, (0x8 << 9) | 0xb, (0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x8 << 9) | 0x6},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [286] = {
        .facilityClass = 0x4,
        .trainerName = _("Kayden"),
        .speechBefore = {(0x2 << 9) | 0x4b, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0xf << 9) | 0x7, (0x7 << 9) | 0xd, ((0x13 << 9) | 156)},
        .speechWin = {(0x5 << 9) | 0x2, (0x3 << 9) | 0xa, (0x6 << 9) | 0x0, (0x2 << 9) | 0x4b, (0x1 << 9) | 0xe, (0x3 << 9) | 0x3d},
        .speechLose = {(0x5 << 9) | 0x1f, (0x8 << 9) | 0x23, (0x7 << 9) | 0x36, (0x2 << 9) | 0x4b, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [287] = {
        .facilityClass = 0x4,
        .trainerName = _("Case"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x11 << 9) | 0x0, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x18, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3},
        .speechLose = {(0x8 << 9) | 0x25, (0x5 << 9) | 0x2, (0x9 << 9) | 0x16, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [288] = {
        .facilityClass = 0x3a,
        .trainerName = _("Kanba"),
        .speechBefore = {(0x3 << 9) | 0x4, (0x8 << 9) | 0x37, ((0x12 << 9) | 216), (0x8 << 9) | 0x2b, (0x8 << 9) | 0x20, ((0x13 << 9) | 217)},
        .speechWin = {(0xf << 9) | 0xa, (0x5 << 9) | 0x2, (0x8 << 9) | 0xf, (0x5 << 9) | 0x4a, ((0x13 << 9) | 92), (0xd << 9) | 0x4},
        .speechLose = {(0x5 << 9) | 0x5, ((0x13 << 9) | 217), (0x6 << 9) | 0x3, (0xf << 9) | 0x22, (0x8 << 9) | 0x2b, (0x6 << 9) | 0x2},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [289] = {
        .facilityClass = 0x3a,
        .trainerName = _("Rama"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x24, (0x8 << 9) | 0x27, (0x5 << 9) | 0x28, (0x9 << 9) | 0x6, (0x8 << 9) | 0x24},
        .speechWin = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0x7 << 9) | 0x0, (0x5 << 9) | 0x27, (0xb << 9) | 0x24},
        .speechLose = {(0x5 << 9) | 0x29, (0x9 << 9) | 0xc, (0x5 << 9) | 0x2, (0x8 << 9) | 0x14, (0x7 << 9) | 0x0, (0x5 << 9) | 0x27},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [290] = {
        .facilityClass = 0x0,
        .trainerName = _("Nhung"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x8 << 9) | 0xd, (0x1 << 9) | 0xf, (0x8 << 9) | 0x20, (0x3 << 9) | 0x3e, (0x8 << 9) | 0x2c},
        .speechWin = {(0x5 << 9) | 0x1, (0x1 << 9) | 0xf, (0x8 << 9) | 0x2f, (0xd << 9) | 0x28, (0x8 << 9) | 0x3f, (0xf << 9) | 0x14},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xd << 9) | 0x28, (0x8 << 9) | 0x3f, (0xf << 9) | 0x14},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [291] = {
        .facilityClass = 0x0,
        .trainerName = _("Oliwer"),
        .speechBefore = {(0x8 << 9) | 0xd, (0xb << 9) | 0xf, (0x5 << 9) | 0x2, (0x7 << 9) | 0xf, (0x2 << 9) | 0x33, (0x5 << 9) | 0x29},
        .speechWin = {(0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x14, (0xb << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x12 << 9) | 280)},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 218), (0x8 << 9) | 0xb, (0xa << 9) | 0x15, (0x8 << 9) | 0x2f, ((0x13 << 9) | 284)},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [292] = {
        .facilityClass = 0x1a,
        .trainerName = _("Isi"),
        .speechBefore = {(0xe << 9) | 0x1a, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x7 << 9) | 0x2a, (0x2 << 9) | 0x5b},
        .speechWin = {(0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, (0x10 << 9) | 0x20, (0xd << 9) | 0x1d, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x36, (0x8 << 9) | 0x21, ((0x13 << 9) | 153), (0xf << 9) | 0xa, (0x6 << 9) | 0x3},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [293] = {
        .facilityClass = 0x1a,
        .trainerName = _("Whitney"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x2, (0x8 << 9) | 0x37, (0x7 << 9) | 0xd, (0x14 << 9) | 0x1e, (0xc << 9) | 0x10},
        .speechWin = {(0x3 << 9) | 0x2, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x3 << 9) | 0x2, (0x7 << 9) | 0x39, (0x7 << 9) | 0x36, (0x6 << 9) | 0x4},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [294] = {
        .facilityClass = 0x37,
        .trainerName = _("Maddie"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x9 << 9) | 0x4, (0x8 << 9) | 0x25, (0x9 << 9) | 0x31, (0x5 << 9) | 0x2},
        .speechWin = {(0x8 << 9) | 0x29, (0x8 << 9) | 0x10, (0x8 << 9) | 0x2a, (0xa << 9) | 0xb, (0x8 << 9) | 0x39, (0x3 << 9) | 0x38},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x9 << 9) | 0x4, (0xf << 9) | 0x1b, (0x7 << 9) | 0x15, (0xf << 9) | 0x1e},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [295] = {
        .facilityClass = 0x37,
        .trainerName = _("Batya"),
        .speechBefore = {(0x8 << 9) | 0xd, (0x9 << 9) | 0x2a, (0x5 << 9) | 0x40, (0x3 << 9) | 0x28, (0xa << 9) | 0xb, 0xFFFF},
        .speechWin = {(0xf << 9) | 0x17, 0xFFFF, 0xFFFF, (0x4 << 9) | 0x11, (0x7 << 9) | 0x1a, (0xa << 9) | 0x21},
        .speechLose = {(0xf << 9) | 0x17, 0xFFFF, 0xFFFF, (0x8 << 9) | 0x18, (0x3 << 9) | 0x1, (0x8 << 9) | 0x2c},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [296] = {
        .facilityClass = 0x14,
        .trainerName = _("Havva"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x16, (0x6 << 9) | 0x1d, (0x8 << 9) | 0x25, (0xa << 9) | 0x1a, (0xd << 9) | 0x2a},
        .speechWin = {(0xd << 9) | 0x2a, (0x9 << 9) | 0x31, (0x3 << 9) | 0x18, (0x7 << 9) | 0xd, (0x5 << 9) | 0x35, 0xFFFF},
        .speechLose = {(0xa << 9) | 0x1a, (0x8 << 9) | 0x8, (0x8 << 9) | 0x6, (0xa << 9) | 0x5, 0xFFFF, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [297] = {
        .facilityClass = 0x14,
        .trainerName = _("Uliana"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x1, (0x8 << 9) | 0x2a, (0x8 << 9) | 0x38, (0x6 << 9) | 0x0, 0xFFFF},
        .speechWin = {(0x8 << 9) | 0x17, (0x8 << 9) | 0x6, (0x8 << 9) | 0x20, (0x14 << 9) | 0x1c, (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0x5 << 9) | 0x2, (0x3 << 9) | 0x7, (0x6 << 9) | 0x0, (0x3 << 9) | 0x3e, (0x8 << 9) | 0x2c, (0x6 << 9) | 0x0},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [298] = {
        .facilityClass = 0xd,
        .trainerName = _("Anthy"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x20, (0x1 << 9) | 0xb, (0x7 << 9) | 0x1d, (0xa << 9) | 0x1f},
        .speechWin = {(0x3 << 9) | 0x19, (0xa << 9) | 0x4, (0x8 << 9) | 0x20, ((0x12 << 9) | 230), (0x6 << 9) | 0x0, 0xFFFF},
        .speechLose = {(0xf << 9) | 0x22, (0x8 << 9) | 0x21, (0xa << 9) | 0x36, (0x2 << 9) | 0x1, (0x6 << 9) | 0x0, 0xFFFF},
        .monSet = gBattleFrontierTrainerMons_UU_OU
    },
    [299] = {
        .facilityClass = 0x16,
        .trainerName = _("Dortha"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xb << 9) | 0x1f, ((0x12 << 9) | 200), (0x8 << 9) | 0x2e, (0x8 << 9) | 0x20, (0x1 << 9) | 0xb},
        .speechWin = {(0x5 << 9) | 0x31, (0x7 << 9) | 0x16, (0xa << 9) | 0x31, (0x4 << 9) | 0x15, (0x4 << 9) | 0x20, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x31, (0x9 << 9) | 0x2f, (0x8 << 9) | 0x2f, (0xb << 9) | 0x27, (0x7 << 9) | 0xa, (0x4 << 9) | 0x9},
        .monSet = gBattleFrontierTrainerMons_Dortha
    }
};
# 298 "src/battle_tower.c" 2
# 1 "src/data/battle_frontier/battle_frontier_mons.h" 1
const struct FacilityMon gBattleFrontierMons[637] =
{
    [0] = {
        .species = 334,
        .moves = {53, 538, 406, 355},
        .itemTableId = 140,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 3,
  .abilityNum = 2
    },
    [1] = {
        .species = 334,
        .moves = {432, 92, 406, 355},
        .itemTableId = 88,
        .evSpread = (1 << 2) | (1 << 0),
        .nature = 20,
  .abilityNum = 0
    },
 [2] = {
        .species = 181,
        .moves = {280, 9, 103, 316},
        .itemTableId = 18,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 4,
  .abilityNum = 0

    },
 [3] = {
        .species = 181,
        .moves = {85, 411, 521, 215},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 15,
  .abilityNum = 0

    },
 [4] = {
        .species = 24,
        .moves = {489, 441, 89, 389},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [5] = {
        .species = 168,
        .moves = {564, 390, 224, 389},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
    [6] = {
        .species = 348,
        .moves = {157, 89, 404, 397},
        .itemTableId = 92,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
  .abilityNum = 0

    },
 [7] = {
        .species = 348,
        .moves = {229, 89, 444, 282},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [8] = {
        .species = 713,
        .moves = {229, 419, 105, 89},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
  .abilityNum = 2

    },
 [9] = {
        .species = 354,
        .moves = {421, 282, 261, 389},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [10] = {
        .species = 354,
        .moves = {421, 282, 174, 228},
        .itemTableId = 110,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [11] = {
        .species = 550,
        .moves = {127, 453, 58, 276},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
  .abilityNum = 1

    },
 [12] = {
        .species = 411,
        .moves = {368, 157, 469, 174},
        .itemTableId = 19,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
  .abilityNum = 0

    },
 [13] = {
        .species = 411,
        .moves = {446, 157, 46, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 0

    },
 [14] = {
        .species = 614,
        .moves = {556, 276, 453, 14},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [15] = {
        .species = 267,
        .moves = {483, 405, 355, 63},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [16] = {
        .species = 15,
        .moves = {398, 228, 92, 565},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [17] = {
        .species = 15,
        .moves = {390, 283, 366, 404},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [18] = {
        .species = 606,
        .moves = {433, 94, 417, 324},
        .itemTableId = 59,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 2

    },
 [19] = {
        .species = 182,
        .moves = {631, 483, 202, 585},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [20] = {
        .species = 400,
        .moves = {14, 98, 664, 263},
        .itemTableId = 101,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
  [21] = {
        .species = 626,
        .moves = {371, 89, 543, 182},
        .itemTableId = 120,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [22] = {
        .species = 626,
        .moves = {14, 89, 92, 164},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
  [23] = {
        .species = 12,
        .moves = {483, 405, 164, 79},
        .itemTableId = 19,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
  [24] = {
        .species = 703,
        .moves = {153, 94, 585, 408},
        .itemTableId = 86,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 7,
  .abilityNum = 0

    },
 [25] = {
        .species = 703,
        .moves = {153, 433, 446, 277},
        .itemTableId = 80,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
  .abilityNum = 2

    },
 [26] = {
        .species = 332,
        .moves = {191, 202, 399, 389},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 16,
  .abilityNum = 2

    },
  [27] = {
        .species = 323,
        .moves = {281, 53, 89, 444},
        .itemTableId = 46,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 17,
  .abilityNum = 1

    },
 [28] = {
        .species = 323,
        .moves = {284, 126, 414, 444},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 1

    },
  [29] = {
        .species = 441,
        .moves = {586, 448, 257, 369},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 1

    },
  [30] = {
        .species = 358,
        .moves = {361, 105, 94, 86},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
  .abilityNum = 0

    },
  [31] = {
        .species = 346,
        .moves = {254, 182, 275, 202},
        .itemTableId = 128,
        .evSpread = (1 << 5) | (1 << 0),
        .nature = 20,
  .abilityNum = 0

    },
  [32] = {
        .species = 346,
        .moves = {202, 92, 446, 105},
        .itemTableId = 88,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 5,
  .abilityNum = 2

    },
  [33] = {
        .species = 222,
        .moves = {503, 92, 446, 105},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 2

    },
 [34] = {
        .species = 558,
        .moves = {504, 444, 89, 282},
        .itemTableId = 78,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [35] = {
        .species = 426,
        .moves = {247, 85, 95, 194},
        .itemTableId = 72,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 1

    },
  [36] = {
        .species = 426,
        .moves = {164, 512, 282, 261},
        .itemTableId = 19,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
  [37] = {
        .species = 51,
        .moves = {90, 92, 164, 201},
        .itemTableId = 77,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
  [38] = {
        .species = 51,
        .moves = {89, 92, 446, 262},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [39] = {
        .species = 477,
        .moves = {433, 425, 7, 374},
        .itemTableId = 125,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
  .abilityNum = 0

    },
 [40] = {
        .species = 477,
        .moves = {433, 261, 280, 262},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 7,
  .abilityNum = 2

    },
 [41] = {
        .species = 466,
        .moves = {86, 7, 157, 264},
        .itemTableId = 77,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
  .abilityNum = 0

    },
 [42] = {
        .species = 466,
        .moves = {521, 53, 89, 8},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
  .abilityNum = 0

    },
 [43] = {
        .species = 101,
        .moves = {85, 243, 168, 182},
        .itemTableId = 132,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [44] = {
        .species = 101,
        .moves = {115, 113, 269, 153},
        .itemTableId = 113,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [45] = {
        .species = 103,
        .moves = {473, 447, 113, 235},
        .itemTableId = 66,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 15,
  .abilityNum = 2

    },
 [46] = {
        .species = 103,
        .moves = {437, 94, 202, 79},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [47] = {
        .species = 419,
        .moves = {56, 58, 411, 453},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 14,
  .abilityNum = 0

    },
 [48] = {
        .species = 809 + 203,
        .moves = {369, 57, 389, 92},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [49] = {
        .species = 471,
        .moves = {258, 243, 59, 63},
        .itemTableId = 106,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 2

    },
 [50] = {
        .species = 471,
        .moves = {58, 247, 59, 324},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [51] = {
        .species = 55,
        .moves = {58, 240, 56, 485},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 2

    },
 [52] = {
        .species = 76,
        .moves = {444, 89, 201, 475},
        .itemTableId = 137,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [53] = {
        .species = 76,
        .moves = {446, 89, 444, 389},
        .itemTableId = 141,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [54] = {
        .species = 809 + 64,
        .moves = {528, 89, 350, 38},
        .itemTableId = 132,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [55] = {
        .species = 809 + 64,
        .moves = {521, 89, 444, 7},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [56] = {
        .species = 210,
        .moves = {583, 89, 370, 7},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [57] = {
        .species = 367,
        .moves = {504, 127, 58, 389},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [58] = {
        .species = 189,
        .moves = {369, 512, 631, 79},
  .itemTableId = 141,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [59] = {
        .species = 352,
        .moves = {282, 409, 425, 252},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 2,
  .abilityNum = 2

    },
 [60] = {
        .species = 775,
        .moves = {281, 205, 37, 111},
        .itemTableId = 79,
        .evSpread = (1 << 2) | (1 << 0),
        .nature = 8,
  .abilityNum = 0

    },
 [61] = {
        .species = 775,
        .moves = {282, 89, 369, 452},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [62] = {
        .species = 470,
        .moves = {241, 235, 348, 404},
        .itemTableId = 116,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [63] = {
        .species = 470,
        .moves = {204, 14, 348, 282},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [64] = {
        .species = 463,
        .moves = {273, 182, 92, 69},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
  .abilityNum = 1

    },
 [65] = {
        .species = 463,
        .moves = {59, 330, 126, 87},
        .itemTableId = 112,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 15,
  .abilityNum = 0

    },
 [66] = {
        .species = 809 + 227,
        .moves = {68, 179, 389, 157},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
  .abilityNum = 0

    },
 [67] = {
        .species = 809 + 227,
        .moves = {444, 661, 389, 92},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [68] = {
        .species = 105,
        .moves = {155, 444, 282, 446},
        .itemTableId = 152,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [69] = {
        .species = 105,
        .moves = {198, 24, 283, 479},
        .itemTableId = 133,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [70] = {
        .species = 303,
        .moves = {583, 92, 282, 446},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
  .abilityNum = 1

    },
 [71] = {
        .species = 303,
        .moves = {242, 389, 442, 269},
        .itemTableId = 79,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [72] = {
        .species = 122,
        .moves = {417, 605, 94, 227},
        .itemTableId = 19,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [73] = {
        .species = 89,
        .moves = {156, 214, 174, 398},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 1

    },
 [74] = {
        .species = 89,
        .moves = {254, 256, 189, 398},
        .itemTableId = 124,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 0

    },
 [75] = {
        .species = 291,
        .moves = {141, 332, 400, 369},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [76] = {
        .species = 809 + 224,
        .moves = {347, 542, 355, 269},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [77] = {
        .species = 741,
        .moves = {403, 649, 542, 369},
        .itemTableId = 141,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [78] = {
        .species = 127,
        .moves = {14, 404, 89, 444},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [79] = {
        .species = 127,
        .moves = {12, 404, 89, 370},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [80] = {
        .species = 62,
        .moves = {503, 411, 58, 182},
        .itemTableId = 88,
        .evSpread = (1 << 4) | (1 << 2),
        .nature = 15,
  .abilityNum = 0

    },
 [81] = {
        .species = 476,
        .moves = {479, 414, 446, 521},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 15,
  .abilityNum = 1

    },
 [82] = {
        .species = 476,
        .moves = {86, 104, 443, 156},
        .itemTableId = 10,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 15,
  .abilityNum = 0

    },
 [83] = {
        .species = 432,
        .moves = {252, 282, 369, 389},
        .itemTableId = 99,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [84] = {
        .species = 771,
        .moves = {105, 180, 92, 335},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 2

    },
 [85] = {
        .species = 26,
        .moves = {417, 85, 411, 324},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 2

    },
 [86] = {
        .species = 26,
        .moves = {609, 411, 186, 451},
        .itemTableId = 52,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 0

    },
 [87] = {
        .species = 409,
        .moves = {157, 7, 58, 428},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 14,
  .abilityNum = 2

    },
 [88] = {
        .species = 409,
        .moves = {457, 280, 89, 442},
        .itemTableId = 104,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 14,
  .abilityNum = 0

    },
 [89] = {
        .species = 78,
        .moves = {394, 528, 630, 234},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 2

    },
 [90] = {
        .species = 20,
        .moves = {263, 242, 661, 369},
        .itemTableId = 122,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 1

    },
 [91] = {
        .species = 369,
        .moves = {457, 127, 89, 428},
        .itemTableId = 81,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 14,
  .abilityNum = 2

    },
 [92] = {
        .species = 809 + 126,
        .moves = {521, 403, 261, 432},
        .itemTableId = 21,
        .evSpread = (1 << 3) | (1 << 0),
        .nature = 10,
  .abilityNum = 0

    },
 [93] = {
        .species = 809 + 126,
        .moves = {87, 403, 271, 399},
        .itemTableId = 104,
        .evSpread = (1 << 3) | (1 << 0),
        .nature = 10,
  .abilityNum = 0

    },
 [94] = {
        .species = 28,
        .moves = {229, 446, 89, 282},
        .itemTableId = 20,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
  .abilityNum = 2

    },
 [95] = {
        .species = 28,
        .moves = {201, 404, 89, 444},
        .itemTableId = 115,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 2

    },
 [96] = {
        .species = 809 + 152,
        .moves = {38, 532, 26, 29},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [97] = {
        .species = 809 + 154,
        .moves = {38, 14, 532, 26},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [98] = {
        .species = 756,
        .moves = {147, 631, 202, 585},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 1

    },
 [99] = {
        .species = 756,
        .moves = {202, 188, 451, 585},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 0

    },
 [100] = {
        .species = 213,
        .moves = {564, 446, 227, 611},
        .itemTableId = 80,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
  .abilityNum = 0

    },
 [101] = {
        .species = 213,
        .moves = {360, 611, 164, 379},
        .itemTableId = 151,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
  .abilityNum = 2

    },
 [102] = {
        .species = 516,
        .moves = {417, 56, 58, 411},
        .itemTableId = 19,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [103] = {
        .species = 512,
        .moves = {437, 282, 276, 231},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 14,
  .abilityNum = 2

    },
 [104] = {
        .species = 514,
        .moves = {417, 126, 164, 411},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [105] = {
        .species = 581,
        .moves = {542, 503, 432, 355},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 1

    },
 [106] = {
        .species = 528,
        .moves = {164, 347, 500, 257},
        .itemTableId = 65,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [107] = {
        .species = 389,
        .moves = {446, 235, 452, 89},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 0

    },
 [108] = {
        .species = 389,
        .moves = {328, 235, 402, 174},
        .itemTableId = 135,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 2

    },
 [109] = {
        .species = 733,
        .moves = {413, 331, 282, 369},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [110] = {
        .species = 733,
        .moves = {413, 331, 350, 366},
        .itemTableId = 82,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [111] = {
        .species = 746,
        .moves = {56, 58, 369, 38},
        .itemTableId = 120,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 0

    },
 [112] = {
        .species = 746,
        .moves = {58, 56, 369, 283},
        .itemTableId = 48,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 0

    },
 [113] = {
        .species = 523,
        .moves = {85, 521, 416, 315},
        .itemTableId = 120,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 10,
  .abilityNum = 0

    },

 [114] = {
        .species = 773,
        .moves = {38, 369, 153, 57},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
  .abilityNum = 0

    },
 [115] = {
        .species = 740,
        .moves = {409, 628, 89, 9},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 3,
  .abilityNum = 1

    },
 [116] = {
        .species = 740,
        .moves = {156, 628, 334, 223},
        .itemTableId = 10,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
  .abilityNum = 1

    },
 [117] = {
        .species = 368,
        .moves = {504, 56, 58, 164},
        .itemTableId = 78,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 10,
  .abilityNum = 0

    },
 [118] = {
        .species = 124,
        .moves = {164, 417, 142, 58},
        .itemTableId = 88,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 10,
  .abilityNum = 2

    },
 [119] = {
        .species = 124,
        .moves = {94, 411, 271, 58},
        .itemTableId = 104,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 1

    },
 [120] = {
        .species = 809 + 52,
        .moves = {14, 38, 282, 389},
        .itemTableId = 101,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [121] = {
        .species = 275,
        .moves = {282, 389, 437, 67},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 1,
  .abilityNum = 0

    },
 [122] = {
        .species = 275,
        .moves = {241, 76, 399, 153},
        .itemTableId = 116,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 1,
  .abilityNum = 0

    },
 [123] = {
        .species = 538,
        .moves = {339, 480, 282, 164},
        .itemTableId = 88,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 8,
  .abilityNum = 2

    },
 [124] = {
        .species = 538,
        .moves = {89, 480, 371, 157},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 8,
  .abilityNum = 1

    },
 [125] = {
        .species = 776,
        .moves = {504, 126, 434, 406},
        .itemTableId = 78,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [126] = {
        .species = 776,
        .moves = {182, 83, 525, 269},
        .itemTableId = 131,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [127] = {
        .species = 217,
        .moves = {14, 263, 242, 370},
        .itemTableId = 122,
        .evSpread = (1 << 1) | (1 << 0),
        .nature = 2,
  .abilityNum = 0

    },
 [128] = {
        .species = 217,
        .moves = {37, 156, 242, 68},
        .itemTableId = 10,
        .evSpread = (1 << 1) | (1 << 0),
        .nature = 2,
  .abilityNum = 2

    },
[129] = {
        .species = 809 + 216,
        .moves = {492, 235, 261, 73},
        .itemTableId = 59,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[130] = {
        .species = 378,
        .moves = {156, 214, 58, 85},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 20,
        .abilityNum = 0

    },

 [131] = {
        .species = 460,
        .moves = {59, 202, 89, 420},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 11,
  .abilityNum = 0

    },
 [132] = {
        .species = 460,
        .moves = {73, 275, 196, 524},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
  .abilityNum = 0

    },
 [133] = {
        .species = 359,
        .moves = {282, 389, 583, 228},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [134] = {
        .species = 359,
        .moves = {371, 104, 212, 226},
        .itemTableId = 19,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [135] = {
        .species = 306,
        .moves = {457, 484, 401, 89},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [136] = {
        .species = 306,
        .moves = {57, 430, 411, 496},
        .itemTableId = 82,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [137] = {
        .species = 531,
        .moves = {273, 182, 282, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 1

    },
 [138] = {
        .species = 531,
        .moves = {304, 87, 59, 126},
        .itemTableId = 105,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
  .abilityNum = 1

    },
 [139] = {
        .species = 699,
        .moves = {59, 573, 414, 304},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [140] = {
        .species = 699,
        .moves = {246, 573, 201, 258},
        .itemTableId = 88,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 15,
  .abilityNum = 2

    },
 [141] = {
        .species = 565,
        .moves = {504, 444, 453, 58},
        .itemTableId = 78,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 4,
  .abilityNum = 0

    },
 [142] = {
        .species = 565,
        .moves = {127, 157, 453, 89},
        .itemTableId = 141,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 4,
  .abilityNum = 1

    },
 [143] = {
        .species = 344,
        .moves = {229, 92, 94, 414},
        .itemTableId = 59,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 5,
  .abilityNum = 0

    },
 [144] = {
        .species = 615,
        .moves = {229, 105, 573, 432},
        .itemTableId = 109,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [145] = {
        .species = 85,
        .moves = {413, 26, 282, 228},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [146] = {
        .species = 780,
        .moves = {434, 304, 53, 412},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15,
  .abilityNum = 2

    },
 [147] = {
        .species = 780,
        .moves = {126, 304, 406, 355},
        .itemTableId = 79,
        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15,
  .abilityNum = 0

    },
 [148] = {
        .species = 809 + 59,
        .moves = {89, 442, 164, 92},
        .itemTableId = 88,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [149] = {
        .species = 809 + 59,
        .moves = {91, 442, 157, 201},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [150] = {
        .species = 604,
        .moves = {521, 202, 53, 282},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 0

    },
 [151] = {
        .species = 604,
        .moves = {85, 86, 380, 435},
        .itemTableId = 200,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 0

    },
 [152] = {
        .species = 423,
        .moves = {503, 105, 92, 89},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 22,
  .abilityNum = 1

    },
 [153] = {
        .species = 809 + 122,
        .moves = {127, 133, 174, 281},
        .itemTableId = 48,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 22,
  .abilityNum = 0

    },
 [154] = {
        .species = 623,
        .moves = {446, 89, 325, 8},
        .itemTableId = 59,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [155] = {
        .species = 623,
        .moves = {359, 157, 174, 360},
        .itemTableId = 59,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
  .abilityNum = 2

    },
 [156] = {
        .species = 107,
        .moves = {409, 183, 92, 229},
        .itemTableId = 24,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 23,
  .abilityNum = 1

    },
 [157] = {
        .species = 593,
        .moves = {506, 269, 261, 105},
        .itemTableId = 59,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 0

    },
 [158] = {
        .species = 593,
        .moves = {240, 56, 58, 109},
        .itemTableId = 117,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 1

    },
 [159] = {
        .species = 593,
        .moves = {664, 444, 282, 229},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [160] = {
        .species = 115,
        .moves = {252, 38, 89, 389},
        .itemTableId = 20,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [161] = {
        .species = 115,
        .moves = {157, 389, 203, 179},
        .itemTableId = 65,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [162] = {
        .species = 171,
        .moves = {503, 521, 58, 291},
        .itemTableId = 142,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [163] = {
        .species = 171,
        .moves = {254, 156, 451, 58},
        .itemTableId = 10,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 15,
  .abilityNum = 2

    },
 [164] = {
        .species = 510,
        .moves = {282, 228, 583, 369},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [165] = {
        .species = 510,
        .moves = {492, 28, 86, 389},
        .itemTableId = 133,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [166] = {
        .species = 272,
        .moves = {240, 56, 202, 58},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [167] = {
        .species = 272,
        .moves = {252, 56, 447, 73},
        .itemTableId = 75,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [168] = {
        .species = 754,
        .moves = {432, 437, 276, 312},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 2

    },
 [169] = {
        .species = 754,
        .moves = {632, 398, 141, 371},
        .itemTableId = 202,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [170] = {
        .species = 745,
        .moves = {14, 444, 280, 663},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [171] = {
        .species = 745,
        .moves = {98, 157, 422, 663},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [172] = {
        .species = 310,
        .moves = {85, 521, 315, 415},
        .itemTableId = 104,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 1

    },
 [173] = {
        .species = 310,
        .moves = {53, 435, 315, 268},
        .itemTableId = 132,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [174] = {
        .species = 750,
        .moves = {446, 89, 92, 157},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
  .abilityNum = 1

    },
 [175] = {
        .species = 750,
        .moves = {484, 89, 370, 201},
        .itemTableId = 49,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 1

    },
 [176] = {
        .species = 518,
        .moves = {248, 605, 236, 361},
        .itemTableId = 59,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 15,
  .abilityNum = 1

    },
 [177] = {
        .species = 518,
        .moves = {247, 412, 94, 433},
        .itemTableId = 18,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 15,
  .abilityNum = 0

    },
 [178] = {
        .species = 139,
        .moves = {446, 191, 503, 58},
        .itemTableId = 106,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [179] = {
        .species = 809 + 61,
        .moves = {417, 399, 575, 85},
        .itemTableId = 99,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 0

    },
 [180] = {
        .species = 57,
        .moves = {370, 369, 8, 441},
        .itemTableId = 104,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 2

    },
 [181] = {
        .species = 211,
        .moves = {191, 503, 269, 194},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [182] = {
        .species = 211,
        .moves = {14, 127, 398, 153},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [183] = {
        .species = 809 + 53,
        .moves = {417, 85, 473, 411},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [184] = {
        .species = 809 + 53,
        .moves = {417, 85, 94, 447},
        .itemTableId = 106,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [185] = {
        .species = 809 + 125,
        .moves = {59, 85, 521, 271},
        .itemTableId = 104,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [186] = {
        .species = 809 + 125,
        .moves = {59, 435, 115, 113},
        .itemTableId = 113,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 10,
  .abilityNum = 0

    },
 [187] = {
        .species = 302,
        .moves = {269, 261, 105, 282},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
  .abilityNum = 2

    },
 [188] = {
        .species = 302,
        .moves = {282, 109, 247, 105},
        .itemTableId = 151,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 24,
  .abilityNum = 2

    },
 [189] = {
        .species = 809 + 55,
        .moves = {556, 442, 89, 282},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [190] = {
        .species = 809 + 55,
        .moves = {68, 111, 301, 360},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
  .abilityNum = 2

    },
 [191] = {
        .species = 435,
        .moves = {228, 389, 398, 269},
        .itemTableId = 124,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 1

    },
 [192] = {
        .species = 442,
        .moves = {228, 389, 94, 261},
        .itemTableId = 99,
        .evSpread = (1 << 1) | (1 << 0),
        .nature = 14,
  .abilityNum = 2

    },
 [193] = {
        .species = 442,
        .moves = {220, 389, 164, 261},
        .itemTableId = 72,
        .evSpread = (1 << 2) | (1 << 0),
        .nature = 14,
  .abilityNum = 2

    },
 [194] = {
        .species = 508,
        .moves = {276, 228, 263, 216},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [195] = {
        .species = 71,
        .moves = {631, 438, 398, 14},
        .itemTableId = 131,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [196] = {
        .species = 335,
        .moves = {263, 98, 282, 370},
        .itemTableId = 121,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },

 [197] = {
        .species = 567,
        .moves = {457, 446, 283, 269},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
  .abilityNum = 0

    },
 [198] = {
        .species = 567,
        .moves = {89, 414, 283, 246},
        .itemTableId = 71,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [199] = {
        .species = 683,
        .moves = {433, 417, 585, 94},
        .itemTableId = 19,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 2

    },
 [200] = {
        .species = 683,
        .moves = {204, 186, 213, 577},
        .itemTableId = 151,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
  .abilityNum = 2

    },
 [201] = {
        .species = 6,
        .moves = {337, 424, 187, 421},
        .itemTableId = 65,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [202] = {
        .species = 6,
        .moves = {241, 76, 53, 406},
        .itemTableId = 116,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [203] = {
        .species = 573,
        .moves = {541, 350, 331, 282},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [204] = {
        .species = 475,
        .moves = {14, 370, 427, 282},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [205] = {
        .species = 475,
        .moves = {444, 280, 427, 404},
        .itemTableId = 86,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [206] = {
        .species = 229,
        .moves = {126, 399, 315, 194},
        .itemTableId = 104,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 1

    },
 [207] = {
        .species = 229,
        .moves = {53, 247, 188, 261},
        .itemTableId = 132,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 2

    },
 [208] = {
        .species = 99,
        .moves = {97, 14, 664, 404},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [209] = {
        .species = 549,
        .moves = {483, 79, 202, 63},
        .itemTableId = 101,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [210] = {
        .species = 549,
        .moves = {275, 73, 92, 182},
        .itemTableId = 128,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 5,
  .abilityNum = 2

    },
 [211] = {
        .species = 668,
        .moves = {126, 304, 261, 269},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 1

    },
 [212] = {
        .species = 668,
        .moves = {53, 304, 555, 568},
        .itemTableId = 82,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 2

    },
 [213] = {
        .species = 539,
        .moves = {370, 282, 89, 269},
        .itemTableId = 112,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 0

    },
 [214] = {
        .species = 539,
        .moves = {371, 203, 89, 179},
        .itemTableId = 106,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 0

    },
 [215] = {
        .species = 128,
        .moves = {34, 526, 428, 89},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 14,
  .abilityNum = 2

    },
 [216] = {
        .species = 128,
        .moves = {164, 157, 428, 89},
        .itemTableId = 63,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 1

    },
[217] = {
        .species = 144,
        .moves = {164, 355, 573, 542},
        .itemTableId = 88,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[218] = {
        .species = 809 + 223,
        .moves = {347, 355, 542, 649},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[219] = {
        .species = 809 + 225,
        .moves = {347, 355, 269, 542},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[220] = {
        .species = 377,
        .moves = {446, 157, 409, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 0

    },

 [221] = {
        .species = 460,
        .moves = {59, 202, 420, 89},
        .itemTableId = 153,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 16,
  .abilityNum = 2

    },
 [222] = {
        .species = 460,
        .moves = {59, 411, 420, 182},
        .itemTableId = 153,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 16,
  .abilityNum = 2

    },
 [223] = {
        .species = 617,
        .moves = {405, 411, 412, 191},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 1

    },
 [224] = {
        .species = 617,
        .moves = {405, 188, 412, 203},
        .itemTableId = 141,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 1

    },
 [225] = {
        .species = 142,
        .moves = {444, 332, 89, 228},
        .itemTableId = 81,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 2

    },
 [226] = {
        .species = 142,
        .moves = {157, 242, 355, 423},
        .itemTableId = 46,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 0

    },
 [227] = {
        .species = 424,
        .moves = {252, 67, 228, 369},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 0

    },
 [228] = {
        .species = 424,
        .moves = {447, 85, 417, 68},
        .itemTableId = 106,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 1

    },
 [229] = {
        .species = 531,
        .moves = {273, 182, 92, 605},
        .itemTableId = 160,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
  .abilityNum = 1

    },
 [230] = {
        .species = 531,
        .moves = {361, 53, 347, 577},
        .itemTableId = 160,
        .evSpread = (1 << 4) | (1 << 5),
        .nature = 20,
  .abilityNum = 1

    },
 [231] = {
        .species = 9,
        .moves = {503, 92, 229, 58},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 5,
  .abilityNum = 2

    },
 [232] = {
        .species = 9,
        .moves = {392, 401, 334, 157},
        .itemTableId = 108,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
  .abilityNum = 2

    },
 [233] = {
        .species = 628,
        .moves = {413, 276, 339, 355},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [234] = {
        .species = 628,
        .moves = {157, 403, 366, 37},
        .itemTableId = 82,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [235] = {
        .species = 693,
        .moves = {352, 58, 399, 396},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [236] = {
        .species = 693,
        .moves = {164, 330, 104, 92},
        .itemTableId = 77,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [237] = {
        .species = 764,
        .moves = {577, 202, 347, 496},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15,
  .abilityNum = 1

    },
 [238] = {
        .species = 764,
        .moves = {605, 412, 579, 203},
        .itemTableId = 66,
        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15,
  .abilityNum = 1

    },
 [239] = {
        .species = 724,
        .moves = {417, 247, 437, 355},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [240] = {
        .species = 724,
        .moves = {174, 109, 412, 355},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [241] = {
        .species = 655,
        .moves = {347, 126, 94, 447},
        .itemTableId = 59,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [242] = {
        .species = 655,
        .moves = {272, 415, 595, 247},
        .itemTableId = 122,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [243] = {
        .species = 781,
        .moves = {438, 640, 229, 235},
        .itemTableId = 59,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [244] = {
        .species = 781,
        .moves = {360, 157, 566, 280},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
  .abilityNum = 0

    },
 [245] = {
        .species = 621,
        .moves = {446, 137, 89, 525},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 2

    },
 [246] = {
        .species = 621,
        .moves = {242, 337, 89, 157},
        .itemTableId = 79,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
  .abilityNum = 2

    },
 [247] = {
        .species = 809 + 67,
        .moves = {434, 437, 53, 202},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
  .abilityNum = 0

    },
 [248] = {
        .species = 809 + 67,
        .moves = {655, 89, 280, 452},
        .itemTableId = 142,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 15,
  .abilityNum = 0

    },
 [249] = {
        .species = 569,
        .moves = {441, 191, 390, 153},
        .itemTableId = 124,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 2

    },
 [250] = {
        .species = 362,
        .moves = {191, 38, 89, 153},
        .itemTableId = 173,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
  .abilityNum = 1

    },
 [251] = {
        .species = 362,
        .moves = {182, 573, 89, 153},
        .itemTableId = 173,
        .evSpread = (1 << 2) | (1 << 1),
        .nature = 3,
  .abilityNum = 1

    },
 [252] = {
        .species = 297,
        .moves = {370, 282, 484, 8},
        .itemTableId = 142,
        .evSpread = (1 << 5) | (1 << 1),
        .nature = 3,
  .abilityNum = 0

    },
 [253] = {
        .species = 297,
        .moves = {179, 418, 182, 187},
        .itemTableId = 72,
        .evSpread = (1 << 5) | (1 << 1),
        .nature = 3,
  .abilityNum = 1

    },
 [254] = {
        .species = 695,
        .moves = {521, 304, 85, 57},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
  .abilityNum = 0

    },
 [255] = {
        .species = 106,
        .moves = {174, 370, 282, 89},
        .itemTableId = 78,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3,
  .abilityNum = 2

    },
 [256] = {
        .species = 237,
        .moves = {229, 193, 370, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
  .abilityNum = 0

    },
 [257] = {
        .species = 727,
        .moves = {14, 282, 89, 394},
        .itemTableId = 20,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [258] = {
        .species = 727,
        .moves = {656, 424, 339, 122},
        .itemTableId = 92,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [259] = {
        .species = 601,
        .moves = {508, 544, 528, 393},
        .itemTableId = 52,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 2

    },
 [260] = {
        .species = 601,
        .moves = {430, 85, 182, 92},
        .itemTableId = 88,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 2

    },
 [261] = {
        .species = 467,
        .moves = {126, 85, 411, 269},
        .itemTableId = 88,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 2

    },
 [262] = {
        .species = 467,
        .moves = {394, 488, 238, 157},
        .itemTableId = 132,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 13,
  .abilityNum = 2

    },
 [263] = {
        .species = 687,
        .moves = {276, 282, 156, 214},
        .itemTableId = 88,
        .evSpread = (1 << 5) | (1 << 0),
        .nature = 23,
  .abilityNum = 0

    },
 [264] = {
        .species = 687,
        .moves = {85, 399, 53, 94},
        .itemTableId = 105,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
  .abilityNum = 0

    },
 [265] = {
        .species = 308,
        .moves = {136, 428, 9, 418},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
  .abilityNum = 0

    },
 [266] = {
        .species = 308,
        .moves = {136, 252, 339, 364},
        .itemTableId = 19,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [267] = {
        .species = 241,
        .moves = {446, 69, 208, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 20,
  .abilityNum = 0

    },
 [268] = {
        .species = 774,
        .moves = {504, 444, 89, 512},
        .itemTableId = 78,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
  .abilityNum = 0

    },
 [269] = {
        .species = 774,
        .moves = {369, 317, 113, 115},
        .itemTableId = 113,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
  .abilityNum = 0

    },
 [270] = {
        .species = 429,
        .moves = {417, 247, 408, 182},
        .itemTableId = 77,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
  .abilityNum = 0

    },
 [271] = {
        .species = 429,
        .moves = {269, 286, 247, 182},
        .itemTableId = 59,
        .evSpread = (1 << 4) | (1 << 2),
        .nature = 5,
  .abilityNum = 0

    },
 [272] = {
        .species = 770,
        .moves = {446, 414, 247, 622},
        .itemTableId = 59,
        .evSpread = (1 << 0)| (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
 [273] = {
        .species = 770,
        .moves = {414, 194, 247, 202},
        .itemTableId = 141,
        .evSpread = (1 << 4)| (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
 [274] = {
        .species = 675,
        .moves = {14, 282, 409, 418},
        .itemTableId = 50,
        .evSpread = (1 << 1)| (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
 [275] = {
        .species = 766,
        .moves = {370, 369, 282, 441},
        .itemTableId = 104,
        .evSpread = (1 << 1)| (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
 [276] = {
        .species = 766,
        .moves = {370, 157, 442, 364},
        .itemTableId = 53,
        .evSpread = (1 << 1)| (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
 [277] = {
        .species = 479,
        .moves = {432, 521, 261, 506},
        .itemTableId = 59,
        .evSpread = (1 << 0)| (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
 [278] = {
        .species = 503,
        .moves = {56, 447, 58, 269},
        .itemTableId = 120,
        .evSpread = (1 << 3)| (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
 [279] = {
        .species = 503,
        .moves = {59, 416, 197, 56},
        .itemTableId = 108,
        .evSpread = (1 << 3)| (1 << 4),
        .nature = 5,
        .abilityNum = 2

    },
 [280] = {
        .species = 254,
        .moves = {437, 202, 411, 89},
        .itemTableId = 120,
        .evSpread = (1 << 2)| (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
 [281] = {
        .species = 254,
        .moves = {437, 412, 411, 197},
        .itemTableId = 78,
        .evSpread = (1 << 4)| (1 << 3),
        .nature = 15,
        .abilityNum = 2

    },
 [282] = {
        .species = 560,
        .moves = {339, 282, 409, 156},
        .itemTableId = 88,
        .evSpread = (1 << 0)| (1 << 1),
        .nature = 23,
        .abilityNum = 0

    },
 [283] = {
        .species = 560,
        .moves = {252, 339, 264, 164},
        .itemTableId = 63,
        .evSpread = (1 << 0)| (1 << 1),
        .nature = 3,
        .abilityNum = 2

    },
 [284] = {
        .species = 537,
        .moves = {446, 503, 287, 89},
        .itemTableId = 88,
        .evSpread = (1 << 0)| (1 << 2),
        .nature = 10,
        .abilityNum = 2

    },
 [285] = {
        .species = 561,
        .moves = {403, 257, 412, 355},
        .itemTableId = 120,
        .evSpread = (1 << 3)| (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
 [286] = {
        .species = 199,
        .moves = {503, 248, 126, 525},
        .itemTableId = 142,
        .evSpread = (1 << 0)| (1 << 4),
        .nature = 15,
        .abilityNum = 2

    },
 [287] = {
        .species = 199,
        .moves = {94, 247, 503, 411},
        .itemTableId = 105,
        .evSpread = (1 << 4)| (1 << 3),
        .nature = 15,
        .abilityNum = 0

    },
 [288] = {
        .species = 208,
        .moves = {446, 484, 89, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0)| (1 << 1),
        .nature = 23,
        .abilityNum = 1

    },
 [289] = {
        .species = 208,
        .moves = {242, 174, 360, 103},
        .itemTableId = 71,
        .evSpread = (1 << 0)| (1 << 2),
        .nature = 23,
        .abilityNum = 0

    },
 [290] = {
        .species = 777,
        .moves = {369, 670, 442, 609},
        .itemTableId = 104,
        .evSpread = (1 << 1)| (1 << 2),
        .nature = 13,
        .abilityNum = 1

    },
 [291] = {
        .species = 777,
        .moves = {609, 670, 565, 398},
        .itemTableId = 133,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
 [292] = {
        .species = 157,
        .moves = {284, 53, 411, 126},
        .itemTableId = 105,
        .evSpread = (1 << 3)| (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
 [293] = {
        .species = 157,
        .moves = {326, 436, 523, 76},
        .itemTableId = 202,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 2

    },
 [294] = {
        .species = 134,
        .moves = {503, 92, 273, 182},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
 [295] = {
        .species = 134,
        .moves = {57, 58, 247, 608},
        .itemTableId = 112,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 5,
        .abilityNum = 0

    },
 [296] = {
        .species = 738,
        .moves = {405, 521, 412, 355},
        .itemTableId = 88,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 0

    },
 [297] = {
        .species = 738,
        .moves = {451, 189, 412, 268},
        .itemTableId = 88,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
 [298] = {
        .species = 809 + 186,
        .moves = {483, 542, 412, 79},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
 [299] = {
        .species = 110,
        .moves = {188, 261, 220, 390},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
 [300] = {
        .species = 110,
        .moves = {92, 261, 254, 156},
        .itemTableId = 10,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 0

    },
 [301] = {
        .species = 547,
        .moves = {585, 412, 94, 369},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
 [302] = {
        .species = 547,
        .moves = {585, 73, 164, 538},
        .itemTableId = 88,
        .evSpread = (1 << 5) | (1 << 4),
        .nature = 5,
        .abilityNum = 0

    },
 [303] = {
        .species = 178,
        .moves = {101, 355, 369, 92},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 2

    },

[304] = {
        .species = 689,
        .moves = {504, 444, 664, 447},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
        .abilityNum = 0

    },
 [305] = {
        .species = 689,
        .moves = {504, 104, 534, 444},
        .itemTableId = 151,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[306] = {
        .species = 779,
        .moves = {14, 660, 453, 242},
        .itemTableId = 47,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[307] = {
        .species = 779,
        .moves = {94, 503, 59, 50},
        .itemTableId = 47,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[308] = {
        .species = 323,
        .moves = {126, 414, 156, 214},
        .itemTableId = 165,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
        .abilityNum = 1

    },
[309] = {
        .species = 323,
        .moves = {257, 414, 430, 182},
        .itemTableId = 165,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[310] = {
        .species = 563,
        .moves = {247, 194, 433, 417},
        .itemTableId = 106,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 17,
        .abilityNum = 0

    },
[311] = {
        .species = 563,
        .moves = {506, 92, 347, 261},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 23,
        .abilityNum = 0

    },
[312] = {
        .species = 500,
        .moves = {394, 276, 528, 89},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[313] = {
        .species = 500,
        .moves = {53, 411, 503, 164},
        .itemTableId = 65,
        .evSpread = (1 << 4) | (1 << 2),
        .nature = 20,
        .abilityNum = 0

    },
[314] = {
        .species = 295,
        .moves = {586, 411, 126, 57},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[315] = {
        .species = 230,
        .moves = {56, 57, 434, 58},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 0

    },
[316] = {
        .species = 230,
        .moves = {56, 240, 406, 58},
        .itemTableId = 76,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[317] = {
        .species = 685,
        .moves = {187, 583, 216, 409},
        .itemTableId = 19,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 2

    },
[318] = {
        .species = 584,
        .moves = {59, 573, 420, 430},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 11,
        .abilityNum = 1

    },
[319] = {
        .species = 584,
        .moves = {269, 151, 58, 243},
        .itemTableId = 76,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 11,
        .abilityNum = 0

    },
[320] = {
        .species = 45,
        .moves = {202, 188, 631, 79},
        .itemTableId = 124,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
[321] = {
        .species = 481,
        .moves = {446, 94, 87, 412},
        .itemTableId = 59,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },

[322] = {
        .species = 181,
        .moves = {521, 406, 411, 85},
        .itemTableId = 159,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 15,
        .abilityNum = 0

    },
[323] = {
        .species = 181,
        .moves = {87, 406, 411, 109},
        .itemTableId = 159,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[324] = {
        .species = 752,
        .moves = {564, 664, 277, 243},
        .itemTableId = 88,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[325] = {
        .species = 752,
        .moves = {104, 254, 392, 92},
        .itemTableId = 77,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[326] = {
        .species = 59,
        .moves = {394, 528, 245, 234},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 1

    },
[327] = {
        .species = 59,
        .moves = {315, 241, 245, 76},
        .itemTableId = 78,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[328] = {
        .species = 354,
        .moves = {194, 421, 441, 269},
        .itemTableId = 161,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[329] = {
        .species = 354,
        .moves = {389, 421, 261, 441},
        .itemTableId = 161,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[330] = {
        .species = 760,
        .moves = {14, 38, 276, 421},
        .itemTableId = 101,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[331] = {
        .species = 760,
        .moves = {359, 8, 9, 14},
        .itemTableId = 79,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[332] = {
        .species = 9,
        .moves = {229, 399, 396, 58},
        .itemTableId = 163,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[333] = {
        .species = 9,
        .moves = {352, 399, 396, 406},
        .itemTableId = 163,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
        .abilityNum = 2

    },
[334] = {
        .species = 437,
        .moves = {446, 92, 149, 182},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 0

    },
[335] = {
        .species = 437,
        .moves = {240, 113, 451, 447},
        .itemTableId = 117,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 1

    },
[336] = {
        .species = 91,
        .moves = {504, 333, 191, 153},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[337] = {
        .species = 232,
        .moves = {229, 89, 282, 420},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[338] = {
        .species = 691,
        .moves = {434, 188, 411, 390},
        .itemTableId = 105,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 15,
        .abilityNum = 2

    },
[339] = {
        .species = 452,
        .moves = {282, 398, 228, 89},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[340] = {
        .species = 452,
        .moves = {440, 400, 89, 14},
        .itemTableId = 91,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[341] = {
        .species = 589,
        .moves = {224, 442, 182, 282},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 2

    },
[342] = {
        .species = 589,
        .moves = {224, 14, 179, 501},
        .itemTableId = 63,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[343] = {
        .species = 196,
        .moves = {347, 94, 247, 234},
        .itemTableId = 88,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[344] = {
        .species = 196,
        .moves = {473, 447, 605, 204},
        .itemTableId = 57,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 15,
        .abilityNum = 0

    },
[345] = {
        .species = 671,
        .moves = {585, 235, 312, 273},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 2

    },
[346] = {
        .species = 809 + 198,
        .moves = {585, 94, 447, 347},
        .itemTableId = 51,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 15,
        .abilityNum = 2

    },
[347] = {
        .species = 330,
        .moves = {369, 89, 200, 332},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[348] = {
        .species = 330,
        .moves = {126, 89, 337, 203},
        .itemTableId = 141,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
[349] = {
        .species = 205,
        .moves = {360, 191, 521, 229},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
        .abilityNum = 2

    },
[350] = {
        .species = 282,
        .moves = {473, 585, 271, 361},
        .itemTableId = 104,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[351] = {
        .species = 282,
        .moves = {94, 412, 605, 247},
        .itemTableId = 18,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[352] = {
        .species = 526,
        .moves = {446, 444, 89, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 1

    },
[353] = {
        .species = 526,
        .moves = {334, 350, 199, 201},
        .itemTableId = 97,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 2

    },
[354] = {
        .species = 768,
        .moves = {623, 664, 141, 453},
        .itemTableId = 19,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[355] = {
        .species = 768,
        .moves = {14, 534, 141, 389},
        .itemTableId = 79,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[356] = {
        .species = 706,
        .moves = {434, 85, 126, 89},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[357] = {
        .species = 706,
        .moves = {164, 330, 406, 482},
        .itemTableId = 151,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[358] = {
        .species = 430,
        .moves = {413, 389, 276, 269},
        .itemTableId = 99,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[359] = {
        .species = 430,
        .moves = {94, 182, 417, 399},
        .itemTableId = 75,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[360] = {
        .species = 135,
        .moves = {281, 521, 85, 324},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[361] = {
        .species = 135,
        .moves = {281, 87, 240, 247},
        .itemTableId = 82,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[362] = {
        .species = 809 + 228,
        .moves = {14, 444, 424, 389},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[363] = {
        .species = 68,
        .moves = {370, 282, 263, 418},
        .itemTableId = 122,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[364] = {
        .species = 68,
        .moves = {223, 371, 193, 469},
        .itemTableId = 12,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 1

    },
[365] = {
        .species = 630,
        .moves = {269, 92, 355, 492},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 1

    },
[366] = {
        .species = 630,
        .moves = {417, 399, 403, 366},
        .itemTableId = 19,
        .evSpread = (1 << 4) | (1 << 2),
        .nature = 8,
        .abilityNum = 0

    },
[367] = {
        .species = 226,
        .moves = {355, 432, 503, 403},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 20,
        .abilityNum = 1

    },
[368] = {
        .species = 809 + 68,
        .moves = {394, 662, 14, 67},
        .itemTableId = 152,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 2

    },
[369] = {
        .species = 809 + 68,
        .moves = {261, 506, 87, 240},
        .itemTableId = 132,
        .evSpread = (1 << 2) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[370] = {
        .species = 376,
        .moves = {446, 309, 89, 153},
        .itemTableId = 52,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[371] = {
        .species = 376,
        .moves = {94, 309, 393, 247},
        .itemTableId = 45,
        .evSpread = (1 << 4) | (1 << 1),
        .nature = 20,
        .abilityNum = 0

    },
[372] = {
        .species = 350,
        .moves = {503, 105, 92, 287},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 0

    },
[373] = {
        .species = 350,
        .moves = {56, 105, 243, 59},
        .itemTableId = 107,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 2

    },
[374] = {
        .species = 31,
        .moves = {446, 414, 482, 92},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[375] = {
        .species = 31,
        .moves = {85, 68, 63, 414},
        .itemTableId = 137,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[376] = {
        .species = 38,
        .moves = {315, 126, 76, 53},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[377] = {
        .species = 38,
        .moves = {261, 481, 506, 109},
        .itemTableId = 46,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 2

    },
[378] = {
        .species = 715,
        .moves = {542, 269, 355, 369},
        .itemTableId = 88,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[379] = {
        .species = 715,
        .moves = {337, 528, 404, 512},
        .itemTableId = 62,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[380] = {
        .species = 464,
        .moves = {446, 89, 224, 14},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[381] = {
        .species = 464,
        .moves = {439, 89, 8, 397},
        .itemTableId = 97,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[382] = {
        .species = 743,
        .moves = {585, 405, 369, 94},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[383] = {
        .species = 743,
        .moves = {78, 141, 577, 164},
        .itemTableId = 128,
        .evSpread = (1 << 0) | (1 << 4),
        .nature = 24,
        .abilityNum = 1

    },
[384] = {
        .species = 407,
        .moves = {191, 437, 188, 235},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[385] = {
        .species = 758,
        .moves = {417, 126, 482, 406},
        .itemTableId = 77,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[386] = {
        .species = 758,
        .moves = {417, 126, 252, 188},
        .itemTableId = 106,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[387] = {
        .species = 254,
        .moves = {437, 406, 182, 73},
        .itemTableId = 192,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[388] = {
        .species = 254,
        .moves = {348, 530, 89, 157},
        .itemTableId = 192,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 2

    },
[389] = {
        .species = 492,
        .moves = {465, 414, 94, 235},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[390] = {
        .species = 80,
        .moves = {503, 473, 303, 58},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
[391] = {
        .species = 80,
        .moves = {53, 58, 303, 352},
        .itemTableId = 79,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[392] = {
        .species = 143,
        .moves = {174, 218, 156, 89},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 1

    },
[393] = {
        .species = 143,
        .moves = {34, 90, 242, 89},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 2

    },
[394] = {
        .species = 277,
        .moves = {586, 369, 257, 403},
        .itemTableId = 105,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[395] = {
        .species = 454,
        .moves = {14, 441, 409, 389},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[396] = {
        .species = 454,
        .moves = {411, 188, 164, 182},
        .itemTableId = 66,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 20,
        .abilityNum = 0

    },
[397] = {
        .species = 763,
        .moves = {229, 438, 282, 235},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 1

    },
[398] = {
        .species = 763,
        .moves = {136, 651, 369, 583},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[399] = {
        .species = 697,
        .moves = {457, 200, 89, 337},
        .itemTableId = 104,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 2

    },
[400] = {
        .species = 697,
        .moves = {457, 337, 89, 242},
        .itemTableId = 81,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[401] = {
        .species = 197,
        .moves = {273, 182, 215, 492},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 0

    },
[402] = {
        .species = 197,
        .moves = {174, 376, 371, 156},
        .itemTableId = 10,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 2

    },
[403] = {
        .species = 3,
        .moves = {74, 188, 202, 63},
        .itemTableId = 120,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 15,
        .abilityNum = 2

    },
[404] = {
        .species = 3,
        .moves = {447, 188, 182, 412},
        .itemTableId = 65,
        .evSpread = (1 << 2) | (1 << 5),
        .nature = 15,
        .abilityNum = 0

    },
[405] = {
        .species = 469,
        .moves = {405, 403, 369, 202},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[406] = {
        .species = 469,
        .moves = {405, 403, 197, 247},
        .itemTableId = 82,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[407] = {
        .species = 359,
        .moves = {282, 228, 126, 389},
        .itemTableId = 154,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
        .abilityNum = 2

    },
[408] = {
        .species = 359,
        .moves = {583, 224, 444, 389},
        .itemTableId = 154,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
        .abilityNum = 0

    },
[409] = {
        .species = 555,
        .moves = {394, 369, 89, 157},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[410] = {
        .species = 555,
        .moves = {94, 496, 53, 590},
        .itemTableId = 139,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[411] = {
        .species = 632,
        .moves = {468, 442, 276, 242},
        .itemTableId = 19,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 1

    },
[412] = {
        .species = 632,
        .moves = {157, 442, 421, 404},
        .itemTableId = 45,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[413] = {
        .species = 229,
        .moves = {417, 126, 399, 188},
        .itemTableId = 176,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[414] = {
        .species = 229,
        .moves = {76, 126, 399, 241},
        .itemTableId = 176,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[415] = {
        .species = 264,
        .moves = {187, 245, 661, 402},
        .itemTableId = 20,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[416] = {
        .species = 620,
        .moves = {136, 282, 369, 252},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[417] = {
        .species = 620,
        .moves = {136, 369, 512, 252},
        .itemTableId = 82,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[418] = {
        .species = 579,
        .moves = {347, 473, 411, 105},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[419] = {
        .species = 579,
        .moves = {271, 94, 411, 105},
        .itemTableId = 121,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[420] = {
        .species = 319,
        .moves = {242, 423, 89, 660},
        .itemTableId = 81,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 2

    },
[421] = {
        .species = 319,
        .moves = {453, 423, 523, 242},
        .itemTableId = 110,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 2

    },
[422] = {
        .species = 80,
        .moves = {503, 53, 303, 58},
        .itemTableId = 195,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 5,
        .abilityNum = 2

    },
[423] = {
        .species = 80,
        .moves = {94, 57, 433, 59},
        .itemTableId = 195,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 5,
        .abilityNum = 2

    },
[424] = {
        .species = 663,
        .moves = {14, 413, 394, 269},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[425] = {
        .species = 663,
        .moves = {496, 382, 261, 53},
        .itemTableId = 56,
        .evSpread = (1 << 4) | (1 << 2),
        .nature = 10,
        .abilityNum = 2

    },
[426] = {
        .species = 49,
        .moves = {483, 79, 405, 188},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[427] = {
        .species = 571,
        .moves = {417, 399, 411, 188},
        .itemTableId = 112,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[428] = {
        .species = 571,
        .moves = {269, 421, 400, 68},
        .itemTableId = 106,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[429] = {
        .species = 488,
        .moves = {236, 473, 585, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 5,
        .abilityNum = 0

    },
[430] = {
        .species = 719,
        .moves = {446, 585, 414, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
        .abilityNum = 0

    },
[431] = {
        .species = 720,
        .moves = {247, 411, 85, 417},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[432] = {
        .species = 800,
        .moves = {94, 257, 347, 236},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[433] = {
        .species = 243,
        .moves = {164, 347, 85, 396},
        .itemTableId = 88,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[434] = {
        .species = 379,
        .moves = {69, 92, 446, 182},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 5),
        .nature = 20,
        .abilityNum = 0

    },
[435] = {
        .species = 480,
        .moves = {446, 473, 281, 369},
        .itemTableId = 21,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[436] = {
        .species = 640,
        .moves = {14, 370, 348, 235},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[437] = {
        .species = 809 + 218,
        .moves = {349, 614, 200, 245},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[438] = {
        .species = 244,
        .moves = {221, 245, 444, 394},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
[439] = {
        .species = 646,
        .moves = {164, 58, 414, 355},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[440] = {
        .species = 805,
        .moves = {433, 360, 444, 89},
        .itemTableId = 125,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 1,
        .abilityNum = 0

    },
[441] = {
        .species = 641,
        .moves = {542, 257, 276, 447},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 11,
        .abilityNum = 0

    },

[442] = {
        .species = 142,
        .moves = {444, 89, 423, 355},
        .itemTableId = 155,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[443] = {
        .species = 142,
        .moves = {157, 442, 89, 423},
        .itemTableId = 155,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[444] = {
        .species = 306,
        .moves = {446, 484, 89, 92},
        .itemTableId = 156,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 0

    },
[445] = {
        .species = 306,
        .moves = {407, 484, 86, 444},
        .itemTableId = 156,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 1

    },
[446] = {
        .species = 594,
        .moves = {273, 182, 92, 503},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
[447] = {
        .species = 334,
        .moves = {349, 263, 287, 355},
        .itemTableId = 158,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[448] = {
        .species = 334,
        .moves = {349, 416, 89, 407},
        .itemTableId = 158,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[449] = {
        .species = 591,
        .moves = {147, 202, 188, 499},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
[450] = {
        .species = 591,
        .moves = {147, 202, 235, 499},
        .itemTableId = 124,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[451] = {
        .species = 15,
        .moves = {369, 398, 529, 282},
        .itemTableId = 162,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[452] = {
        .species = 15,
        .moves = {42, 398, 182, 280},
        .itemTableId = 162,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[453] = {
        .species = 625,
        .moves = {14, 282, 442, 389},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
[454] = {
        .species = 625,
        .moves = {442, 490, 400, 389},
        .itemTableId = 50,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 1

    },
[455] = {
        .species = 242,
        .moves = {69, 92, 135, 215},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[456] = {
        .species = 242,
        .moves = {451, 247, 447, 86},
        .itemTableId = 72,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[457] = {
        .species = 609,
        .moves = {164, 347, 247, 53},
        .itemTableId = 88,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[458] = {
        .species = 609,
        .moves = {315, 182, 247, 261},
        .itemTableId = 78,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 15,
        .abilityNum = 0

    },
[459] = {
        .species = 652,
        .moves = {191, 452, 409, 235},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 2

    },
[460] = {
        .species = 652,
        .moves = {337, 402, 89, 280},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[461] = {
        .species = 342,
        .moves = {14, 152, 282, 453},
        .itemTableId = 120,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 2

    },
[462] = {
        .species = 169,
        .moves = {413, 162, 269, 355},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[463] = {
        .species = 169,
        .moves = {413, 440, 428, 404},
        .itemTableId = 91,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[464] = {
        .species = 395,
        .moves = {503, 446, 92, 182},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 0

    },
[465] = {
        .species = 395,
        .moves = {57, 164, 59, 250},
        .itemTableId = 66,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 2

    },
[466] = {
        .species = 160,
        .moves = {349, 664, 8, 242},
        .itemTableId = 120,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 2

    },
[467] = {
        .species = 160,
        .moves = {349, 401, 423, 349},
        .itemTableId = 63,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[468] = {
        .species = 478,
        .moves = {191, 269, 196, 194},
        .itemTableId = 106,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[469] = {
        .species = 478,
        .moves = {420, 86, 506, 269},
        .itemTableId = 57,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[470] = {
        .species = 94,
        .moves = {164, 247, 482, 411},
        .itemTableId = 112,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[471] = {
        .species = 94,
        .moves = {171, 138, 95, 247},
        .itemTableId = 106,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[472] = {
        .species = 612,
        .moves = {14, 200, 89, 398},
        .itemTableId = 18,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[473] = {
        .species = 612,
        .moves = {530, 46, 89, 269},
        .itemTableId = 58,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[474] = {
        .species = 450,
        .moves = {446, 89, 303, 18},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 0

    },
[475] = {
        .species = 450,
        .moves = {242, 89, 281, 18},
        .itemTableId = 96,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[476] = {
        .species = 635,
        .moves = {434, 399, 369, 126},
        .itemTableId = 104,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[477] = {
        .species = 635,
        .moves = {411, 126, 526, 407},
        .itemTableId = 107,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[478] = {
        .species = 392,
        .moves = {417, 126, 411, 410},
        .itemTableId = 120,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[479] = {
        .species = 392,
        .moves = {252, 394, 227, 370},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[480] = {
        .species = 707,
        .moves = {191, 86, 92, 583},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 23,
        .abilityNum = 0

    },
[481] = {
        .species = 553,
        .moves = {282, 89, 228, 444},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[482] = {
        .species = 448,
        .moves = {417, 396, 430, 410},
        .itemTableId = 112,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[483] = {
        .species = 448,
        .moves = {406, 396, 245, 444},
        .itemTableId = 141,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[484] = {
        .species = 473,
        .moves = {420, 89, 556, 282},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 2

    },
[485] = {
        .species = 473,
        .moves = {258, 89, 419, 90},
        .itemTableId = 151,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 5,
        .abilityNum = 1

    },
[486] = {
        .species = 310,
        .moves = {521, 315, 85, 324},
        .itemTableId = 182,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[487] = {
        .species = 310,
        .moves = {555, 315, 85, 98},
        .itemTableId = 182,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 24,
        .abilityNum = 0

    },
[488] = {
        .species = 778,
        .moves = {14, 421, 583, 425},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 0

    },
[489] = {
        .species = 778,
        .moves = {174, 310, 182, 608},
        .itemTableId = 88,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[490] = {
        .species = 809 + 66,
        .moves = {228, 441, 282, 7},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[491] = {
        .species = 809 + 66,
        .moves = {107, 555, 491, 156},
        .itemTableId = 132,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 5,
        .abilityNum = 2

    },
[492] = {
        .species = 34,
        .moves = {482, 414, 58, 164},
        .itemTableId = 120,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[493] = {
        .species = 34,
        .moves = {523, 224, 157, 389},
        .itemTableId = 82,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
[494] = {
        .species = 18,
        .moves = {542, 257, 369, 355},
        .itemTableId = 188,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[495] = {
        .species = 18,
        .moves = {542, 63, 366, 98},
        .itemTableId = 188,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[496] = {
        .species = 730,
        .moves = {56, 585, 627, 94},
        .itemTableId = 105,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 15,
        .abilityNum = 0

    },
[497] = {
        .species = 730,
        .moves = {56, 585, 608, 94},
        .itemTableId = 51,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 15,
        .abilityNum = 2

    },
[498] = {
        .species = 195,
        .moves = {503, 89, 105, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
        .abilityNum = 2

    },
[499] = {
        .species = 809 + 123,
        .moves = {432, 521, 315, 261},
        .itemTableId = 24,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[500] = {
        .species = 809 + 123,
        .moves = {261, 451, 109, 506},
        .itemTableId = 77,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 15,
        .abilityNum = 0

    },
[501] = {
        .species = 212,
        .moves = {418, 369, 276, 282},
        .itemTableId = 81,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[502] = {
        .species = 212,
        .moves = {14, 418, 369, 179},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
        .abilityNum = 1

    },
[503] = {
        .species = 319,
        .moves = {242, 423, 89, 182},
        .itemTableId = 194,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3,
        .abilityNum = 2

    },
[504] = {
        .species = 319,
        .moves = {242, 423, 453, 398},
        .itemTableId = 194,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
        .abilityNum = 2

    },
[505] = {
        .species = 121,
        .moves = {56, 58, 473, 85},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[506] = {
        .species = 121,
        .moves = {57, 58, 94, 85},
        .itemTableId = 82,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 0

    },
[507] = {
        .species = 208,
        .moves = {446, 360, 89, 174},
        .itemTableId = 196,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 2,
        .abilityNum = 1

    },
[508] = {
        .species = 208,
        .moves = {444, 360, 89, 201},
        .itemTableId = 196,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 2,
        .abilityNum = 0

    },
[509] = {
        .species = 260,
        .moves = {446, 89, 503, 92},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
        .abilityNum = 0

    },
[510] = {
        .species = 260,
        .moves = {243, 89, 68, 46},
        .itemTableId = 73,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 7,
        .abilityNum = 2

    },
[511] = {
        .species = 73,
        .moves = {503, 229, 114, 188},
        .itemTableId = 124,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 0

    },
[512] = {
        .species = 73,
        .moves = {57, 92, 474, 182},
        .itemTableId = 124,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 15,
        .abilityNum = 1

    },
[513] = {
        .species = 468,
        .moves = {417, 215, 403, 355},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[514] = {
        .species = 468,
        .moves = {396, 403, 447, 605},
        .itemTableId = 112,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[515] = {
        .species = 807,
        .moves = {674, 370, 447, 282},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
        .abilityNum = 0

    },

[516] = {
        .species = 65,
        .moves = {94, 411, 247, 105},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[517] = {
        .species = 65,
        .moves = {94, 470, 412, 477},
        .itemTableId = 201,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 2

    },
[518] = {
        .species = 286,
        .moves = {164, 147, 73, 264},
        .itemTableId = 121,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 23,
        .abilityNum = 1

    },
[519] = {
        .species = 286,
        .moves = {264, 147, 157, 402},
        .itemTableId = 106,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 23,
        .abilityNum = 0

    },
[520] = {
        .species = 534,
        .moves = {409, 183, 282, 263},
        .itemTableId = 122,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
[521] = {
        .species = 534,
        .moves = {157, 265, 395, 395},
        .itemTableId = 100,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 5,
        .abilityNum = 1

    },
[522] = {
        .species = 660,
        .moves = {89, 216, 98, 7},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 3,
        .abilityNum = 2

    },
[523] = {
        .species = 149,
        .moves = {349, 19, 89, 245},
        .itemTableId = 49,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[524] = {
        .species = 149,
        .moves = {407, 231, 245, 7},
        .itemTableId = 140,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 20,
        .abilityNum = 2

    },
[525] = {
        .species = 475,
        .moves = {14, 370, 428, 282},
        .itemTableId = 169,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[526] = {
        .species = 475,
        .moves = {427, 370, 157, 194},
        .itemTableId = 169,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[527] = {
        .species = 282,
        .moves = {261, 473, 304, 411},
        .itemTableId = 171,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 1

    },
[528] = {
        .species = 282,
        .moves = {94, 63, 247, 411},
        .itemTableId = 171,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[529] = {
        .species = 130,
        .moves = {349, 340, 127, 89},
        .itemTableId = 47,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[530] = {
        .species = 130,
        .moves = {423, 349, 401, 86},
        .itemTableId = 110,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[531] = {
        .species = 214,
        .moves = {14, 370, 350, 42},
        .itemTableId = 175,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 2

    },
[532] = {
        .species = 214,
        .moves = {42, 370, 331, 350},
        .itemTableId = 175,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 3,
        .abilityNum = 0

    },
[533] = {
        .species = 809 + 57,
        .moves = {657, 573, 95, 258},
        .itemTableId = 113,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[534] = {
        .species = 809 + 57,
        .moves = {573, 605, 326, 420},
        .itemTableId = 107,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[535] = {
        .species = 127,
        .moves = {14, 216, 98, 370},
        .itemTableId = 189,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[536] = {
        .species = 127,
        .moves = {404, 276, 444, 37},
        .itemTableId = 189,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[537] = {
        .species = 474,
        .moves = {85, 58, 97, 161},
        .itemTableId = 101,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[538] = {
        .species = 474,
        .moves = {85, 58, 63, 247},
        .itemTableId = 105,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 1

    },
[539] = {
        .species = 373,
        .moves = {349, 19, 89, 424},
        .itemTableId = 49,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[540] = {
        .species = 373,
        .moves = {349, 337, 157, 428},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[541] = {
        .species = 545,
        .moves = {14, 224, 401, 89},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[542] = {
        .species = 398,
        .moves = {413, 38, 369, 370},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[543] = {
        .species = 398,
        .moves = {297, 98, 369, 283},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[544] = {
        .species = 3,
        .moves = {73, 188, 241, 235},
        .itemTableId = 199,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
[545] = {
        .species = 3,
        .moves = {164, 188, 202, 235},
        .itemTableId = 199,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[546] = {
        .species = 461,
        .moves = {282, 556, 420, 228},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[547] = {
        .species = 461,
        .moves = {269, 8, 400, 252},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
 [548] = {
        .species = 482,
        .moves = {446, 153, 269, 282},
        .itemTableId = 106,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[549] = {
        .species = 251,
        .moves = {417, 94, 202, 605},
        .itemTableId = 55,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[550] = {
        .species = 638,
        .moves = {14, 442, 370, 397},
        .itemTableId = 52,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[551] = {
        .species = 380,
        .moves = {347, 434, 473, 355},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[552] = {
        .species = 151,
        .moves = {69, 269, 261, 135},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[553] = {
        .species = 146,
        .moves = {542, 126, 355, 369},
        .itemTableId = 56,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[554] = {
        .species = 793,
        .moves = {482, 85, 408, 390},
        .itemTableId = 124,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[555] = {
        .species = 245,
        .moves = {347, 182, 503, 164},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[556] = {
        .species = 639,
        .moves = {14, 444, 370, 89},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[557] = {
        .species = 721,
        .moves = {432, 592, 53, 188},
        .itemTableId = 52,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 0

    },
[558] = {
        .species = 807,
        .moves = {674, 370, 447, 282},
        .itemTableId = 112,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
        .abilityNum = 0

    },
[559] = {
        .species = 794,
        .moves = {359, 92, 355, 89},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 0

    },
[560] = {
        .species = 809 + 222,
        .moves = {282, 441, 7, 409},
        .itemTableId = 81,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[561] = {
        .species = 381,
        .moves = {94, 89, 58, 355},
        .itemTableId = 179,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 14,
        .abilityNum = 0

    },
[562] = {
        .species = 642,
        .moves = {417, 85, 324, 411},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[563] = {
        .species = 809 + 156,
        .moves = {417, 85, 324, 411},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[564] = {
        .species = 796,
        .moves = {85, 324, 412, 294},
        .itemTableId = 112,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 15,
        .abilityNum = 0

    },

[565] = {
        .species = 65,
        .moves = {94, 411, 105, 247},
        .itemTableId = 157,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[566] = {
        .species = 65,
        .moves = {94, 411, 447, 247},
        .itemTableId = 157,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
        .abilityNum = 2

    },
[567] = {
        .species = 184,
        .moves = {187, 453, 583, 282},
        .itemTableId = 112,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[568] = {
        .species = 806,
        .moves = {126, 247, 399, 271},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[569] = {
        .species = 797,
        .moves = {73, 182, 484, 53},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 22,
        .abilityNum = 0

    },
[570] = {
        .species = 113,
        .moves = {69, 92, 446, 135},
        .itemTableId = 129,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[571] = {
        .species = 6,
        .moves = {349, 394, 89, 355},
        .itemTableId = 166,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[572] = {
        .species = 6,
        .moves = {349, 394, 407, 157},
        .itemTableId = 166,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[573] = {
        .species = 6,
        .moves = {53, 411, 76, 355},
        .itemTableId = 167,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[574] = {
        .species = 6,
        .moves = {257, 411, 76, 403},
        .itemTableId = 167,
        .evSpread = (1 << 2) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[575] = {
        .species = 36,
        .moves = {446, 585, 135, 347},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[576] = {
        .species = 719,
        .moves = {446, 585, 591, 414},
        .itemTableId = 168,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 11,
        .abilityNum = 0

    },
[577] = {
        .species = 530,
        .moves = {14, 89, 442, 229},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[578] = {
        .species = 530,
        .moves = {468, 334, 529, 157},
        .itemTableId = 96,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 2

    },
[579] = {
        .species = 598,
        .moves = {191, 73, 360, 438},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 22,
        .abilityNum = 0

    },
[580] = {
        .species = 598,
        .moves = {371, 153, 360, 182},
        .itemTableId = 72,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 22,
        .abilityNum = 1

    },
[581] = {
        .species = 445,
        .moves = {446, 89, 434, 126},
        .itemTableId = 170,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 16,
        .abilityNum = 2

    },
[582] = {
        .species = 445,
        .moves = {126, 225, 57, 201},
        .itemTableId = 170,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[583] = {
        .species = 445,
        .moves = {446, 89, 444, 14},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[584] = {
        .species = 472,
        .moves = {14, 355, 89, 263},
        .itemTableId = 121,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[585] = {
        .species = 472,
        .moves = {89, 512, 369, 68},
        .itemTableId = 106,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[586] = {
        .species = 658,
        .moves = {91, 58, 441, 369},
        .itemTableId = 142,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 11,
        .abilityNum = 2

    },
[587] = {
        .species = 658,
        .moves = {240, 58, 57, 496},
        .itemTableId = 117,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 11,
        .abilityNum = 0

    },
[588] = {
        .species = 130,
        .moves = {349, 242, 89, 164},
        .itemTableId = 174,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[589] = {
        .species = 130,
        .moves = {349, 242, 127, 444},
        .itemTableId = 174,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 1

    },
[590] = {
        .species = 701,
        .moves = {512, 14, 136, 355},
        .itemTableId = 19,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[591] = {
        .species = 701,
        .moves = {560, 143, 444, 444},
        .itemTableId = 202,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[592] = {
        .species = 485,
        .moves = {436, 92, 182, 414},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 20,
        .abilityNum = 0

    },
[593] = {
        .species = 485,
        .moves = {463, 399, 414, 414},
        .itemTableId = 104,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10,
        .abilityNum = 0

    },
[594] = {
        .species = 385,
        .moves = {442, 369, 361, 7},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[595] = {
        .species = 798,
        .moves = {348, 533, 647, 282},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[596] = {
        .species = 647,
        .moves = {56, 548, 503, 196},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[597] = {
        .species = 784,
        .moves = {446, 92, 182, 409},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 23,
        .abilityNum = 0

    },
[598] = {
        .species = 784,
        .moves = {654, 411, 475, 430},
        .itemTableId = 19,
        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15,
        .abilityNum = 1

    },
[599] = {
        .species = 809 + 159,
        .moves = {553, 559, 58, 414},
        .itemTableId = 120,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 14,
        .abilityNum = 0

    },
[600] = {
        .species = 809 + 157,
        .moves = {89, 369, 444, 153},
        .itemTableId = 104,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[601] = {
        .species = 380,
        .moves = {347, 355, 500, 58},
        .itemTableId = 178,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 0

    },
[602] = {
        .species = 380,
        .moves = {406, 355, 86, 94},
        .itemTableId = 178,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 0

    },
[603] = {
        .species = 428,
        .moves = {216, 136, 252, 8},
        .itemTableId = 180,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 2

    },
[604] = {
        .species = 428,
        .moves = {458, 136, 98, 8},
        .itemTableId = 180,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 13,
        .abilityNum = 0

    },
[605] = {
        .species = 462,
        .moves = {86, 87, 430, 393},
        .itemTableId = 151,
        .evSpread = (1 << 2) | (1 << 4),
        .nature = 15,
        .abilityNum = 1

    },
[606] = {
        .species = 490,
        .moves = {294, 57, 58, 94},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[607] = {
        .species = 303,
        .moves = {14, 583, 389, 282},
        .itemTableId = 183,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[608] = {
        .species = 303,
        .moves = {7, 583, 389, 444},
        .itemTableId = 183,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[609] = {
        .species = 279,
        .moves = {503, 369, 355, 432},
        .itemTableId = 117,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[610] = {
        .species = 279,
        .moves = {254, 92, 355, 57},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 2

    },
[611] = {
        .species = 302,
        .moves = {282, 261, 105, 182},
        .itemTableId = 190,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 2

    },
[612] = {
        .species = 302,
        .moves = {492, 261, 105, 555},
        .itemTableId = 190,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 23,
        .abilityNum = 1

    },
[613] = {
        .species = 212,
        .moves = {14, 418, 355, 282},
        .itemTableId = 193,
        .evSpread = (1 << 1) | (1 << 3),
        .nature = 8,
        .abilityNum = 2

    },
[614] = {
        .species = 212,
        .moves = {404, 418, 332, 355},
        .itemTableId = 193,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 8,
        .abilityNum = 0

    },
[615] = {
        .species = 497,
        .moves = {437, 282, 164, 137},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[616] = {
        .species = 497,
        .moves = {525, 380, 213, 536},
        .itemTableId = 18,
        .evSpread = (1 << 0) | (1 << 3),
        .nature = 10,
        .abilityNum = 2

    },
[617] = {
        .species = 227,
        .moves = {355, 191, 18, 92},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
[618] = {
        .species = 227,
        .moves = {46, 413, 14, 211},
        .itemTableId = 138,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[619] = {
        .species = 260,
        .moves = {127, 89, 8, 276},
        .itemTableId = 197,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 2

    },
[620] = {
        .species = 260,
        .moves = {127, 89, 157, 240},
        .itemTableId = 197,
        .evSpread = (1 << 1) | (1 << 2),
        .nature = 13,
        .abilityNum = 0

    },
[621] = {
        .species = 465,
        .moves = {202, 282, 188, 89},
        .itemTableId = 142,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 22,
        .abilityNum = 2

    },
[622] = {
        .species = 465,
        .moves = {202, 92, 73, 275},
        .itemTableId = 128,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 22,
        .abilityNum = 0

    },
[623] = {
        .species = 787,
        .moves = {452, 532, 276, 444},
        .itemTableId = 81,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[624] = {
        .species = 788,
        .moves = {432, 585, 503, 671},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 0

    },
[625] = {
        .species = 785,
        .moves = {85, 605, 521, 355},
        .itemTableId = 105,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[626] = {
        .species = 786,
        .moves = {94, 585, 411, 347},
        .itemTableId = 120,
        .evSpread = (1 << 3) | (1 << 4),
        .nature = 10,
        .abilityNum = 0

    },
[627] = {
        .species = 809 + 155,
        .moves = {542, 282, 369, 432},
        .itemTableId = 131,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 0

    },
[628] = {
        .species = 748,
        .moves = {503, 624, 105, 92},
        .itemTableId = 124,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 2

    },
[629] = {
        .species = 748,
        .moves = {57, 624, 58, 474},
        .itemTableId = 133,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 20,
        .abilityNum = 2

    },
[630] = {
        .species = 248,
        .moves = {446, 444, 228, 7},
        .itemTableId = 198,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 0

    },
[631] = {
        .species = 248,
        .moves = {242, 157, 349, 58},
        .itemTableId = 82,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 3,
        .abilityNum = 1

    },
[632] = {
        .species = 494,
        .moves = {557, 369, 515, 271},
        .itemTableId = 104,
        .evSpread = (1 << 0) | (1 << 1),
        .nature = 13,
        .abilityNum = 0

    },
[633] = {
        .species = 637,
        .moves = {483, 53, 405, 355},
        .itemTableId = 120,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 0

    },
[634] = {
        .species = 637,
        .moves = {405, 53, 182, 347},
        .itemTableId = 18,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 10,
        .abilityNum = 0

    },
[635] = {
        .species = 145,
        .moves = {435, 257, 324, 355},
        .itemTableId = 88,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 0

    },
[636] = {
        .species = 145,
        .moves = {87, 240, 65, 113},
        .itemTableId = 66,
        .evSpread = (1 << 0) | (1 << 2),
        .nature = 5,
        .abilityNum = 1

    },
};
# 299 "src/battle_tower.c" 2

const u8 gTowerMaleFacilityClasses[30] =
{
    0xe,
    0x11,
    0x3,
    0x15,
    0x17,
    0x7,
    0xa,
    0x19,
    0x1a,
    0x1b,
    0x1d,
    0x1e,
    0x20,
    0x26,
    0x29,
    0x9,
    0x2b,
    0x2d,
    0x2e,
    0x30,
    0x32,
    0x34,
    0x4,
    0x35,
    0x3a,
    0x5,
    0x42,
    0x44,
    0x43,
    0x0
};

const u8 gTowerFemaleFacilityClasses[20] =
{
    0xd,
    0x10,
    0x12,
    0xc,
    0x13,
    0x14,
    0x1f,
    0x27,
    0x2a,
    0x16,
    0x2f,
    0x31,
    0x33,
    0x36,
    0x37,
    0x38,
    0x1c,
    0x2,
    0x45,
    0x47
};

const u8 gTowerMaleTrainerGfxIds[30] =
{
    55,
    54,
    33,
    15,
    39,
    51,
    44,
    66,
    66,
    31,
    39,
    37,
    48,
    38,
    25,
    21,
    35,
    50,
    56,
    51,
    51,
    33,
    66,
    5,
    49,
    39,
    65,
    31,
    36,
    55
};

const u8 gTowerFemaleTrainerGfxIds[20] =
{
    20,
    53,
    34,
    40,
    20,
    45,
    47,
    14,
    18,
    22,
    57,
    52,
    52,
    14,
    34,
    52,
    32,
    20,
    32,
    47
};


static const u8 sRubyFacilityClassToEmerald[0x4D - 2][2] =
{
    {0x0, 0xb},
    {0x1, 0x1},
    {0x2, 0x6},
    {0x3, 0xd},
    {0x4, 0xe},
    {0x5, 0xf},
    {0x6, 0x10},
    {0x7, 0x11},
    {0x8, 0x3},
    {0x9, 0x12},
    {0xA, 0xc},
    {0xB, 0x13},
    {0xC, 0x14},
    {0xD, 0x15},
    {0xE, 0x17},
    {0xF, 0x7},
    {0x10, 0xa},
    {0x11, 0x19},
    {0x12, 0x1a},
    {0x13, 0x1b},
    {0x14, 0x1d},
    {0x15, 0x1e},
    {0x16, 0x1f},
    {0x17, 0x20},
    {0x18, 0x21},
    {0x19, 0x22},
    {0x1A, 0x23},
    {0x1B, 0x24},
    {0x1C, 0x25},
    {0x1D, 0x26},
    {0x1E, 0x27},
    {0x1F, 0x28},
    {0x20, 0x29},
    {0x21, 0x2a},
    {0x22, 0x9},
    {0x23, 0x16},
    {0x24, 0x2b},
    {0x25, 0x2c},
    {0x26, 0x2d},
    {0x27, 0x2e},
    {0x28, 0x2f},
    {0x29, 0x30},
    {0x2A, 0x31},
    {0x2B, 0x32},
    {0x2C, 0x33},
    {0x2D, 0x34},
    {0x2E, 0x4},
    {0x2F, 0x35},
    {0x30, 0x36},
    {0x31, 0x37},
    {0x32, 0x38},
    {0x33, 0x1c},
    {0x34, 0x39},
    {0x35, 0x3a},
    {0x38, 0x5},
    {0x39, 0x3b},
    {0x3A, 0x3c},
    {0x3B, 0x3d},
    {0x3C, 0x3e},
    {0x3D, 0x3f},
    {0x3E, 0x40},
    {0x3F, 0x41},
    {0x40, 0x42},
    {0x41, 0x2},
    {0x42, 0x44},
    {0x43, 0x45},
    {0x44, 0x46},
    {0x45, 0x8},
    {0x46, 0x18},
    {0x47, 0x47},
    {0x48, 0x43},
    {0x49, 0x0},
    {0x4A, 0x48},
    {0x4B, 0x49},
    {0x4C, 0x4a},
};
# 503 "src/battle_tower.c"
static const u8 *const sPartnerApprenticeTexts1[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Reject
};

static const u8 *const sPartnerApprenticeTexts2[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Reject
};

static const u8 *const sPartnerApprenticeTexts3[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Reject
};

static const u8 *const sPartnerApprenticeTexts4[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Reject
};

static const u8 *const sPartnerApprenticeTexts5[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Reject
};

static const u8 *const sPartnerApprenticeTexts6[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Reject
};

static const u8 *const sPartnerApprenticeTexts7[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Reject
};

static const u8 *const sPartnerApprenticeTexts8[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Reject
};

static const u8 *const sPartnerApprenticeTexts9[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Reject
};

static const u8 *const sPartnerApprenticeTexts10[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Reject
};

static const u8 *const sPartnerApprenticeTexts11[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Reject
};

static const u8 *const sPartnerApprenticeTexts12[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Reject
};

static const u8 *const sPartnerApprenticeTexts13[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Reject
};

static const u8 *const sPartnerApprenticeTexts14[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Reject
};

static const u8 *const sPartnerApprenticeTexts15[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Reject
};

static const u8 *const sPartnerApprenticeTexts16[] =
{
     BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Intro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Mon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Mon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Accept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Reject
};

static const u8 *const sPartnerTextsLass[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassReject
};

static const u8 *const sPartnerTextsYoungster[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterReject
};

static const u8 *const sPartnerTextsHiker[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerReject
};

static const u8 *const sPartnerTextsBeauty[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyReject
};

static const u8 *const sPartnerTextsFisherman[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanReject
};

static const u8 *const sPartnerTextsLady[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyReject
};

static const u8 *const sPartnerTextsCyclingTriathleteF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFReject
};

static const u8 *const sPartnerTextsBugCatcher[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherReject
};

static const u8 *const sPartnerTextsSchoolKidM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMReject
};

static const u8 *const sPartnerTextsRichBoy[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyReject
};

static const u8 *const sPartnerTextsBlackBelt[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltReject
};

static const u8 *const sPartnerTextsTuberF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFReject
};

static const u8 *const sPartnerTextsHexManiac[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacReject
};

static const u8 *const sPartnerTextsPkmnBreederM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMReject
};

static const u8 *const sPartnerTextsRunningTriathleteF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFReject
};

static const u8 *const sPartnerTextsRunningTriathleteM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMReject
};

static const u8 *const sPartnerTextsBattleGirl[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlReject
};

static const u8 *const sPartnerTextsCyclingTriathleteM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMReject
};

static const u8 *const sPartnerTextsTuberM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMReject
};

static const u8 *const sPartnerTextsGuitarist[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristReject
};

static const u8 *const sPartnerTextsGentleman[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanReject
};

static const u8 *const sPartnerTextsPokefanM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMReject
};

static const u8 *const sPartnerTextsExpertM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMReject
};

static const u8 *const sPartnerTextsExpertF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFReject
};

static const u8 *const sPartnerTextsDragonTamer[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerReject
};

static const u8 *const sPartnerTextsBirdKeeper[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperReject
};

static const u8 *const sPartnerTextsNinjaBoy[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyReject
};

static const u8 *const sPartnerTextsParasolLady[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyReject
};

static const u8 *const sPartnerTextsBugManiac[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacReject
};

static const u8 *const sPartnerTextsSailor[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorReject
};

static const u8 *const sPartnerTextsCollector[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorReject
};

static const u8 *const sPartnerTextsPkmnRangerM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMReject
};

static const u8 *const sPartnerTextsPkmnRangerF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFReject
};

static const u8 *const sPartnerTextsAromaLady[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyReject
};

static const u8 *const sPartnerTextsRuinManiac[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacReject
};

static const u8 *const sPartnerTextsCoolTrainerM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMReject
};

static const u8 *const sPartnerTextsCoolTrainerF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFReject
};

static const u8 *const sPartnerTextsPokemaniac[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacReject
};

static const u8 *const sPartnerTextsKindler[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerReject
};

static const u8 *const sPartnerTextsCamper[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperReject
};

static const u8 *const sPartnerTextsPicnicker[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerReject
};

static const u8 *const sPartnerTextsPsychicM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMReject
};

static const u8 *const sPartnerTextsPsychicF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFReject
};

static const u8 *const sPartnerTextsSchoolKidF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFReject
};

static const u8 *const sPartnerTextsPkmnBreederF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFReject
};

static const u8 *const sPartnerTextsPokefanF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFReject
};

static const u8 *const sPartnerTextsSwimmerF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFReject
};

static const u8 *const sPartnerTextsSwimmingTriathleteM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMReject
};

static const u8 *const sPartnerTextsSwimmingTriathleteF[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFReject
};

static const u8 *const sPartnerTextsSwimmerM[] =
{
    BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMIntro, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMMon1, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMMon2Ask, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMAccept, BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMReject
};

struct
{
    u32 facilityClass;
    const u8 *const *strings;
} const sPartnerTrainerTextTables[] =
{
    {0x47, sPartnerTextsLass},
    {0x2b, sPartnerTextsYoungster},
    {0x0, sPartnerTextsHiker},
    {0x14, sPartnerTextsBeauty},
    {0x2d, sPartnerTextsFisherman},
    {0x13, sPartnerTextsLady},
    {0x2f, sPartnerTextsCyclingTriathleteF},
    {0x43, sPartnerTextsBugCatcher},
    {0x26, sPartnerTextsSchoolKidM},
    {0x15, sPartnerTextsRichBoy},
    {0xa, sPartnerTextsBlackBelt},
    {0x10, sPartnerTextsTuberF},
    {0xc, sPartnerTextsHexManiac},
    {0x42, sPartnerTextsPkmnBreederM},
    {0x31, sPartnerTextsRunningTriathleteF},
    {0x30, sPartnerTextsRunningTriathleteM},
    {0x36, sPartnerTextsBattleGirl},
    {0x2e, sPartnerTextsCyclingTriathleteM},
    {0x11, sPartnerTextsTuberM},
    {0x19, sPartnerTextsGuitarist},
    {0x20, sPartnerTextsGentleman},
    {0x29, sPartnerTextsPokefanM},
    {0x9, sPartnerTextsExpertM},
    {0x16, sPartnerTextsExpertF},
    {0x34, sPartnerTextsDragonTamer},
    {0x4, sPartnerTextsBirdKeeper},
    {0x35, sPartnerTextsNinjaBoy},
    {0x37, sPartnerTextsParasolLady},
    {0x1d, sPartnerTextsBugManiac},
    {0x3a, sPartnerTextsSailor},
    {0x5, sPartnerTextsCollector},
    {0x44, sPartnerTextsPkmnRangerM},
    {0x45, sPartnerTextsPkmnRangerF},
    {0xd, sPartnerTextsAromaLady},
    {0xe, sPartnerTextsRuinManiac},
    {0x3, sPartnerTextsCoolTrainerM},
    {0x12, sPartnerTextsCoolTrainerF},
    {0x17, sPartnerTextsPokemaniac},
    {0x1a, sPartnerTextsKindler},
    {0x1b, sPartnerTextsCamper},
    {0x1c, sPartnerTextsPicnicker},
    {0x1e, sPartnerTextsPsychicM},
    {0x1f, sPartnerTextsPsychicF},
    {0x27, sPartnerTextsSchoolKidF},
    {0x2, sPartnerTextsPkmnBreederF},
    {0x2a, sPartnerTextsPokefanF},
    {0x38, sPartnerTextsSwimmerF},
    {0x32, sPartnerTextsSwimmingTriathleteM},
    {0x33, sPartnerTextsSwimmingTriathleteF},
    {0x7, sPartnerTextsSwimmerM}
};

static const u8 *const *const sPartnerApprenticeTextTables[16] =
{
    sPartnerApprenticeTexts1,
    sPartnerApprenticeTexts2,
    sPartnerApprenticeTexts3,
    sPartnerApprenticeTexts4,
    sPartnerApprenticeTexts5,
    sPartnerApprenticeTexts6,
    sPartnerApprenticeTexts7,
    sPartnerApprenticeTexts8,
    sPartnerApprenticeTexts9,
    sPartnerApprenticeTexts10,
    sPartnerApprenticeTexts11,
    sPartnerApprenticeTexts12,
    sPartnerApprenticeTexts13,
    sPartnerApprenticeTexts14,
    sPartnerApprenticeTexts15,
    sPartnerApprenticeTexts16
};

struct
{
    u16 species;
    u8 fixedIV;
    u8 level;
    u8 nature;
    u8 evs[6];
    u16 moves[4];
} const sStevenMons[6 / 2] =
{
    {
        .species = 375,
        .fixedIV = 31,
        .level = 42,
        .nature = 2,
        .evs = {0, 252, 252, 0, 6, 0},
        .moves = {113, 94, 115, 232}
    },
    {
        .species = 227,
        .fixedIV = 31,
        .level = 43,
        .nature = 8,
        .evs = {252, 0, 0, 0, 6, 252},
        .moves = {92, 332, 182, 211}
    },
    {
        .species = 306,
        .fixedIV = 31,
        .level = 44,
        .nature = 3,
        .evs = {0, 252, 0, 0, 252, 6},
        .moves = {87, 182, 76, 337}
    }
};

# 1 "src/data/battle_frontier/battle_tent.h" 1

const u16 gSlateportBattleTentTrainerMons_Jolie[] =
{
    9,
    10,
    13,
    27,
    35,
    37,
    42,
    44,
    45,
    46,
    63,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Malachi[] =
{
    9,
    16,
    17,
    27,
    36,
    39,
    42,
    45,
    48,
    49,
    53,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Kelsie[] =
{
    4,
    5,
    6,
    11,
    28,
    34,
    35,
    37,
    43,
    51,
    53,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Davon[] =
{
    4,
    5,
    6,
    12,
    26,
    36,
    37,
    38,
    40,
    44,
    46,
    50,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Glenda[] =
{
    0,
    1,
    17,
    18,
    19,
    22,
    23,
    33,
    42,
    61,
    64,
    65,
    66,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Helena[] =
{
    18,
    19,
    21,
    38,
    39,
    41,
    42,
    52,
    54,
    58,
    63,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Rodolfo[] =
{
    0,
    1,
    4,
    5,
    7,
    8,
    18,
    20,
    21,
    37,
    38,
    40,
    62,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Davion[] =
{
    17,
    23,
    24,
    25,
    31,
    32,
    33,
    34,
    39,
    43,
    44,
    49,
    57,
    69,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Kendall[] =
{
    4,
    7,
    8,
    9,
    11,
    12,
    13,
    27,
    38,
    40,
    45,
    46,
    47,
    63,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Colten[] =
{
    0,
    2,
    12,
    22,
    28,
    30,
    35,
    38,
    43,
    44,
    56,
    57,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Irvin[] =
{
    0,
    1,
    2,
    3,
    14,
    15,
    24,
    25,
    32,
    34,
    39,
    59,
    60,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Shaun[] =
{
    17,
    18,
    19,
    22,
    29,
    36,
    42,
    48,
    61,
    62,
    66,
    68,
    69,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Kyler[] =
{
    22,
    23,
    28,
    29,
    31,
    32,
    34,
    39,
    55,
    64,
    65,
    67,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Maggie[] =
{
    10,
    13,
    17,
    27,
    45,
    46,
    53,
    56,
    61,
    62,
    63,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Stephon[] =
{
    8,
    10,
    16,
    23,
    29,
    43,
    44,
    60,
    62,
    63,
    68,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Rebecca[] =
{
    8,
    13,
    21,
    29,
    33,
    41,
    48,
    54,
    59,
    61,
    68,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Reggie[] =
{
    6,
    7,
    17,
    23,
    24,
    26,
    32,
    36,
    52,
    53,
    57,
    65,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Janae[] =
{
    0,
    1,
    27,
    28,
    32,
    34,
    36,
    37,
    52,
    53,
    57,
    65,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Caiden[] =
{
    10,
    14,
    15,
    16,
    20,
    21,
    25,
    30,
    35,
    47,
    48,
    50,
    69,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Kirsten[] =
{
    10,
    16,
    18,
    19,
    20,
    21,
    25,
    30,
    35,
    39,
    41,
    48,
    69,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Kurtis[] =
{
    0,
    1,
    36,
    37,
    40,
    46,
    49,
    51,
    64,
    67,
    68,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Stefan[] =
{
    4,
    5,
    21,
    33,
    37,
    38,
    40,
    51,
    52,
    64,
    65,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Avery[] =
{
    2,
    3,
    7,
    8,
    22,
    23,
    28,
    29,
    30,
    51,
    67,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Dwane[] =
{
    14,
    15,
    30,
    43,
    44,
    45,
    46,
    55,
    58,
    59,
    63,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Mckenna[] =
{
    27,
    29,
    30,
    32,
    36,
    48,
    51,
    52,
    53,
    57,
    67,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Camryn[] =
{
    5,
    6,
    7,
    8,
    10,
    16,
    17,
    20,
    21,
    37,
    43,
    44,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Natasha[] =
{
    1,
    3,
    4,
    5,
    9,
    11,
    12,
    20,
    21,
    22,
    51,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Austyn[] =
{
    25,
    31,
    35,
    37,
    38,
    39,
    50,
    51,
    52,
    58,
    68,
    69,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Donovan[] =
{
    10,
    16,
    17,
    24,
    25,
    43,
    44,
    47,
    49,
    53,
    59,
    60,
    64,
    65,
    -1
};

const u16 gSlateportBattleTentTrainerMons_Tamia[] =
{
    2,
    6,
    9,
    13,
    17,
    19,
    20,
    24,
    27,
    29,
    30,
    -1
};

const struct BattleFrontierTrainer gSlateportBattleTentTrainers[30] =
{
    [0] = {
        .facilityClass = 0xd,
        .trainerName = _("JOLIE"),
        .speechBefore = {(0xf << 9) | 0x22, (0x8 << 9) | 0x0, (0x5 << 9) | 0x1, (0x8 << 9) | 0x6, (0xe << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x31, (0xe << 9) | 0xe, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x8 << 9) | 0x3a, (0x5 << 9) | 0x31, (0xe << 9) | 0xf, (0x6 << 9) | 0x4},
        .monSet = gSlateportBattleTentTrainerMons_Jolie
    },
    [1] = {
        .facilityClass = 0xe,
        .trainerName = _("MALACHI"),
        .speechBefore = {(0x9 << 9) | 0x2e, (0xc << 9) | 0x1f, (0x6 << 9) | 0x0, (0x5 << 9) | 0x31, (0x8 << 9) | 0x20, ((0x12 << 9) | 328)},
        .speechWin = {(0x14 << 9) | 0x5, -1, -1, (0x5 << 9) | 0x2a, (0x9 << 9) | 0x3c, (0x8 << 9) | 0x29},
        .speechLose = {(0x5 << 9) | 0x2a, (0x3 << 9) | 0x30, (0x8 << 9) | 0x37, (0xf << 9) | 0xf, ((0x12 << 9) | 328), (0x6 << 9) | 0x4},
        .monSet = gSlateportBattleTentTrainerMons_Malachi
    },
    [2] = {
        .facilityClass = 0x10,
        .trainerName = _("KELSIE"),
        .speechBefore = {(0x3 << 9) | 0x1, (0x6 << 9) | 0x1, (0x5 << 9) | 0x28, (0xc << 9) | 0x4, (0x1 << 9) | 0xe, (0x6 << 9) | 0x1},
        .speechWin = {(0x4 << 9) | 0x26, (0x6 << 9) | 0x1, (0x5 << 9) | 0x28, (0xc << 9) | 0x4, (0x1 << 9) | 0xe, (0x6 << 9) | 0x1},
        .speechLose = {(0x6 << 9) | 0x3d, (0x6 << 9) | 0x1, (0x5 << 9) | 0x28, (0xc << 9) | 0x4, (0x1 << 9) | 0xe, (0x6 << 9) | 0x1},
        .monSet = gSlateportBattleTentTrainerMons_Kelsie
    },
    [3] = {
        .facilityClass = 0x11,
        .trainerName = _("DAVON"),
        .speechBefore = {(0x4 << 9) | 0x1f, (0x6 << 9) | 0x1, -1, (0x9 << 9) | 0x40, ((0x12 << 9) | 250), (0x8 << 9) | 0xc},
        .speechWin = {(0xf << 9) | 0x19, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x20, ((0x12 << 9) | 250), (0x4 << 9) | 0x1f, (0x6 << 9) | 0x1},
        .speechLose = {(0x8 << 9) | 0x17, (0x1 << 9) | 0xf, ((0x13 << 9) | 251), (0x8 << 9) | 0x37, (0xf << 9) | 0x14, ((0x12 << 9) | 250)},
        .monSet = gSlateportBattleTentTrainerMons_Davon
    },
    [4] = {
        .facilityClass = 0x13,
        .trainerName = _("GLENDA"),
        .speechBefore = {(0xc << 9) | 0x5, (0x8 << 9) | 0x16, (0x9 << 9) | 0x37, (0x7 << 9) | 0x30, (0x5 << 9) | 0x1, (0x3 << 9) | 0x6},
        .speechWin = {(0xa << 9) | 0x23, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x2 << 9) | 0xa},
        .speechLose = {(0x4 << 9) | 0x1d, (0x6 << 9) | 0x0, -1, (0x5 << 9) | 0x1, (0x8 << 9) | 0x1c, (0x3 << 9) | 0x2c},
        .monSet = gSlateportBattleTentTrainerMons_Glenda
    },
    [5] = {
        .facilityClass = 0x14,
        .trainerName = _("HELENA"),
        .speechBefore = {(0x8 << 9) | 0x19, (0x5 << 9) | 0x28, (0x2 << 9) | 0xc, (0x2 << 9) | 0x6, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x4 << 9) | 0xb, (0x7 << 9) | 0xa, (0x5 << 9) | 0x6, (0x9 << 9) | 0x24},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0x8 << 9) | 0x25, (0x9 << 9) | 0x2a, (0xf << 9) | 0xf, (0x6 << 9) | 0x0},
        .monSet = gSlateportBattleTentTrainerMons_Helena
    },
    [6] = {
        .facilityClass = 0x15,
        .trainerName = _("RODOLFO"),
        .speechBefore = {(0x3 << 9) | 0x1, (0x1 << 9) | 0xf, (0x8 << 9) | 0x20, ((0x0 << 9) | 340), (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .speechWin = {(0x6 << 9) | 0x3b, (0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x0 << 9) | 340)},
        .speechLose = {(0xb << 9) | 0x11, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x20, ((0x0 << 9) | 340), (0xa << 9) | 0x44},
        .monSet = gSlateportBattleTentTrainerMons_Rodolfo
    },
    [7] = {
        .facilityClass = 0x17,
        .trainerName = _("DAVION"),
        .speechBefore = {(0x6 << 9) | 0x21, (0x6 << 9) | 0x21, (0x6 << 9) | 0x1, (0x6 << 9) | 0x21, (0x6 << 9) | 0x21, (0x6 << 9) | 0x1},
        .speechWin = {((0x13 << 9) | 46), (0x6 << 9) | 0x0, -1, ((0x13 << 9) | 46), (0x6 << 9) | 0x1, -1},
        .speechLose = {(0x6 << 9) | 0xe, (0x6 << 9) | 0xa, (0x6 << 9) | 0x1, -1, -1, -1},
        .monSet = gSlateportBattleTentTrainerMons_Davion
    },
    [8] = {
        .facilityClass = 0x7,
        .trainerName = _("KENDALL"),
        .speechBefore = {(0x7 << 9) | 0x13, ((0x13 << 9) | 80), (0x8 << 9) | 0x2f, (0xb << 9) | 0x11, (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0xf << 9) | 0xf, (0x7 << 9) | 0x16, (0x8 << 9) | 0x2b, (0xc << 9) | 0xd},
        .speechLose = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x8, (0x5 << 9) | 0x2, ((0x13 << 9) | 1), (0x5 << 9) | 0x14, (0x6 << 9) | 0x3},
        .monSet = gSlateportBattleTentTrainerMons_Kendall
    },
    [9] = {
        .facilityClass = 0x1b,
        .trainerName = _("COLTEN"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0xb << 9) | 0x38, (0x7 << 9) | 0x17},
        .speechWin = {(0x6 << 9) | 0x3a, (0x6 << 9) | 0x0, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0xb << 9) | 0x38, (0x6 << 9) | 0x3},
        .speechLose = {(0x8 << 9) | 0x20, (0x2 << 9) | 0x2c, (0x8 << 9) | 0xa, (0x8 << 9) | 0x6, (0xa << 9) | 0x5, (0x8 << 9) | 0x39},
        .monSet = gSlateportBattleTentTrainerMons_Colten
    },
    [10] = {
        .facilityClass = 0x1d,
        .trainerName = _("IRVIN"),
        .speechBefore = {(0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, (0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, ((0x12 << 9) | 109)},
        .speechWin = {(0x4 << 9) | 0x26, (0x5 << 9) | 0x28, ((0x12 << 9) | 109), (0x8 << 9) | 0xb, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c},
        .speechLose = {(0x6 << 9) | 0x3d, (0x6 << 9) | 0x1, -1, (0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x6 << 9) | 0x0},
        .monSet = gSlateportBattleTentTrainerMons_Irvin
    },
    [11] = {
        .facilityClass = 0x20,
        .trainerName = _("SHAUN"),
        .speechBefore = {(0x7 << 9) | 0x0, (0x6 << 9) | 0x4, (0x5 << 9) | 0x2, (0x5 << 9) | 0x1f, (0x7 << 9) | 0x1a, (0xa << 9) | 0x5},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x5 << 9) | 0x1, (0x8 << 9) | 0x10, (0xf << 9) | 0x29},
        .speechLose = {(0x4 << 9) | 0x1, (0x4 << 9) | 0x1, (0x6 << 9) | 0x4, (0x5 << 9) | 0x6, (0x7 << 9) | 0x7, (0x7 << 9) | 0x26},
        .monSet = gSlateportBattleTentTrainerMons_Shaun
    },
    [12] = {
        .facilityClass = 0x19,
        .trainerName = _("KYLER"),
        .speechBefore = {(0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x3},
        .speechWin = {(0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x3a},
        .speechLose = {(0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x12},
        .monSet = gSlateportBattleTentTrainerMons_Kyler
    },
    [13] = {
        .facilityClass = 0x27,
        .trainerName = _("MAGGIE"),
        .speechBefore = {((0x0 << 9) | 37), ((0x0 << 9) | 178), ((0x15 << 9) | 197), (0x6 << 9) | 0x4, (0xf << 9) | 0x2, (0x6 << 9) | 0x4},
        .speechWin = {((0x0 << 9) | 299), (0x6 << 9) | 0x4, (0xf << 9) | 0x2, ((0x0 << 9) | 336), (0x6 << 9) | 0x0, -1},
        .speechLose = {((0x0 << 9) | 299), (0x6 << 9) | 0x4, (0xf << 9) | 0x2, ((0x15 << 9) | 143), (0x6 << 9) | 0x4, (0x6 << 9) | 0x9},
        .monSet = gSlateportBattleTentTrainerMons_Maggie
    },
    [14] = {
        .facilityClass = 0x3,
        .trainerName = _("STEPHON"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x9 << 9) | 0x2a, (0x8 << 9) | 0x21, (0x1 << 9) | 0x8},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x9 << 9) | 0x2a, (0xf << 9) | 0xf, (0xa << 9) | 0x10, (0x3 << 9) | 0x19},
        .speechLose = {(0xa << 9) | 0x36, (0x6 << 9) | 0x1, -1, (0x7 << 9) | 0x1e, (0xa << 9) | 0x36, (0x6 << 9) | 0x1},
        .monSet = gSlateportBattleTentTrainerMons_Stephon
    },
    [15] = {
        .facilityClass = 0x12,
        .trainerName = _("REBECCA"),
        .speechBefore = {(0xf << 9) | 0x14, (0x1 << 9) | 0x8, (0xa << 9) | 0x4, (0x8 << 9) | 0x20, (0xa << 9) | 0x10, (0x2 << 9) | 0x4a},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x6 << 9) | 0x0, (0x4 << 9) | 0x23, (0xf << 9) | 0x14, (0x2 << 9) | 0x1},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0xe << 9) | 0x19, (0x6 << 9) | 0x4},
        .monSet = gSlateportBattleTentTrainerMons_Rebecca
    },
    [16] = {
        .facilityClass = 0x29,
        .trainerName = _("REGGIE"),
        .speechBefore = {(0x1 << 9) | 0xe, (0xb << 9) | 0x1b, (0x8 << 9) | 0x40, (0xc << 9) | 0x2, (0x8 << 9) | 0x2, (0x5 << 9) | 0x17},
        .speechWin = {(0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x8 << 9) | 0xb, (0xd << 9) | 0x1f, (0x5 << 9) | 0x14, (0x3 << 9) | 0x20},
        .speechLose = {(0x7 << 9) | 0x1d, (0xf << 9) | 0x25, (0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x10 << 9) | 0x10, (0x6 << 9) | 0x4},
        .monSet = gSlateportBattleTentTrainerMons_Reggie
    },
    [17] = {
        .facilityClass = 0x2a,
        .trainerName = _("JANAE"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x1e, (0x9 << 9) | 0x28, (0x5 << 9) | 0x5, (0x2 << 9) | 0x33, (0xd << 9) | 0x35},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, (0x7 << 9) | 0xf, (0x5 << 9) | 0x2, ((0x13 << 9) | 165), -1},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0x7 << 9) | 0x2, (0x7 << 9) | 0x15, (0xa << 9) | 0x36, (0x1 << 9) | 0xb},
        .monSet = gSlateportBattleTentTrainerMons_Janae
    },
    [18] = {
        .facilityClass = 0x9,
        .trainerName = _("CAIDEN"),
        .speechBefore = {(0x5 << 9) | 0x28, ((0x13 << 9) | 174), (0x8 << 9) | 0x0, (0x10 << 9) | 0x14, (0x5 << 9) | 0x5, (0x3 << 9) | 0xd},
        .speechWin = {((0x13 << 9) | 174), (0x6 << 9) | 0x3, (0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0x7 << 9) | 0x3, (0x6 << 9) | 0x4},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 174), (0x8 << 9) | 0x0, (0xe << 9) | 0x3, (0xe << 9) | 0x8, -1},
        .monSet = gSlateportBattleTentTrainerMons_Caiden
    },
    [19] = {
        .facilityClass = 0x16,
        .trainerName = _("KIRSTEN"),
        .speechBefore = {(0x4 << 9) | 0x1c, (0x8 << 9) | 0x20, (0x3 << 9) | 0x28, (0x5 << 9) | 0x2, (0xb << 9) | 0xb, (0x6 << 9) | 0x3},
        .speechWin = {(0x4 << 9) | 0x1c, (0x3 << 9) | 0x20, (0x7 << 9) | 0xa, (0x8 << 9) | 0x22, (0x3 << 9) | 0x20, (0x7 << 9) | 0x11},
        .speechLose = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x1, (0x3 << 9) | 0x13, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x5, ((0x12 << 9) | 70)},
        .monSet = gSlateportBattleTentTrainerMons_Kirsten
    },
    [20] = {
        .facilityClass = 0x2b,
        .trainerName = _("KURTIS"),
        .speechBefore = {(0x4 << 9) | 0xb, (0x5 << 9) | 0x6, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xf, ((0x13 << 9) | 251)},
        .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0xb, (0x5 << 9) | 0x3d, (0x8 << 9) | 0xa, ((0x13 << 9) | 1), (0x5 << 9) | 0x2},
        .speechLose = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x1, (0x1 << 9) | 0xf, ((0x13 << 9) | 251), (0x6 << 9) | 0x3},
        .monSet = gSlateportBattleTentTrainerMons_Kurtis
    },
    [21] = {
        .facilityClass = 0x2d,
        .trainerName = _("STEFAN"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x16, (0x9 << 9) | 0x36, (0x2 << 9) | 0x18, (0x1 << 9) | 0xe, -1},
        .speechWin = {(0xf << 9) | 0x22, (0x8 << 9) | 0xb, (0x8 << 9) | 0x29, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x6, (0xa << 9) | 0x3f, (0x8 << 9) | 0x34, (0x10 << 9) | 0x17, (0x6 << 9) | 0x4, -1},
        .monSet = gSlateportBattleTentTrainerMons_Stefan
    },
    [22] = {
        .facilityClass = 0x4,
        .trainerName = _("AVERY"),
        .speechBefore = {(0xd << 9) | 0x7, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x7 << 9) | 0x36, (0xd << 9) | 0x7},
        .speechWin = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x5 << 9) | 0x4a, (0x3 << 9) | 0x38, (0xc << 9) | 0x2, (0xa << 9) | 0x34},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xc << 9) | 0xd, (0x8 << 9) | 0x2b, (0xc << 9) | 0x2},
        .monSet = gSlateportBattleTentTrainerMons_Avery
    },
    [23] = {
        .facilityClass = 0x35,
        .trainerName = _("DWANE"),
        .speechBefore = {(0x6 << 9) | 0x36, (0xa << 9) | 0x10, (0x6 << 9) | 0x4, (0x8 << 9) | 0x4, (0xf << 9) | 0x22, (0x6 << 9) | 0x3},
        .speechWin = {(0x6 << 9) | 0x36, (0x6 << 9) | 0x36, (0x6 << 9) | 0x4, (0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0xb << 9) | 0x20},
        .speechLose = {(0x6 << 9) | 0x36, (0x6 << 9) | 0x36, (0x6 << 9) | 0x4, (0x6 << 9) | 0x1c, (0xf << 9) | 0xe, -1},
        .monSet = gSlateportBattleTentTrainerMons_Dwane
    },
    [24] = {
        .facilityClass = 0x37,
        .trainerName = _("MCKENNA"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x16, (0xa << 9) | 0x28, (0xb << 9) | 0x3c, (0x8 << 9) | 0xd, (0x3 << 9) | 0x1},
        .speechWin = {(0x6 << 9) | 0x27, (0x7 << 9) | 0x1d, (0xf << 9) | 0x14, -1, -1, -1},
        .speechLose = {(0x14 << 9) | 0x0, -1, -1, -1, -1, -1},
        .monSet = gSlateportBattleTentTrainerMons_Mckenna
    },
    [25] = {
        .facilityClass = 0x38,
        .trainerName = _("CAMRYN"),
        .speechBefore = {(0x5 << 9) | 0x23, (0x11 << 9) | 0x6, (0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x5 << 9) | 0x40, (0xb << 9) | 0x15},
        .speechWin = {(0x14 << 9) | 0x1, (0x5 << 9) | 0x41, (0x3 << 9) | 0x2, (0x8 << 9) | 0x37, (0xf << 9) | 0xf, (0x11 << 9) | 0x4},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x14, (0x3 << 9) | 0x2d, (0x5 << 9) | 0x28, (0xd << 9) | 0x0, (0xc << 9) | 0x27},
        .monSet = gSlateportBattleTentTrainerMons_Camryn
    },
    [26] = {
        .facilityClass = 0x1c,
        .trainerName = _("NATASHA"),
        .speechBefore = {(0x4 << 9) | 0x28, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x28, (0x5 << 9) | 0x1b, (0x8 << 9) | 0x24, -1},
        .speechWin = {(0x3 << 9) | 0x11, (0x8 << 9) | 0x28, (0x8 << 9) | 0x29, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0x9 << 9) | 0x40},
        .speechLose = {(0x6 << 9) | 0x3b, (0x8 << 9) | 0x14, (0x5 << 9) | 0x2, (0x4 << 9) | 0x28, (0x6 << 9) | 0x3, -1},
        .monSet = gSlateportBattleTentTrainerMons_Natasha
    },
    [27] = {
        .facilityClass = 0x3a,
        .trainerName = _("AUSTYN"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x9 << 9) | 0x25, (0x7 << 9) | 0xf, (0x5 << 9) | 0x3d, (0x3 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x26, (0xf << 9) | 0x8, (0x8 << 9) | 0x2f, (0xc << 9) | 0x6, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xc << 9) | 0x22, (0x5 << 9) | 0x28, (0xc << 9) | 0x11},
        .monSet = gSlateportBattleTentTrainerMons_Austyn
    },
    [28] = {
        .facilityClass = 0x5,
        .trainerName = _("DONOVAN"),
        .speechBefore = {(0x6 << 9) | 0x1d, (0x5 << 9) | 0x29, (0x7 << 9) | 0x9, (0x10 << 9) | 0x12, (0x8 << 9) | 0x2a, (0x8 << 9) | 0x28},
        .speechWin = {(0x5 << 9) | 0x6, (0xa << 9) | 0x8, (0xf << 9) | 0x13, (0x7 << 9) | 0xd, ((0x13 << 9) | 72), (0x6 << 9) | 0x28},
        .speechLose = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x21, (0x10 << 9) | 0x12, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29},
        .monSet = gSlateportBattleTentTrainerMons_Donovan
    },
    [29] = {
        .facilityClass = 0x47,
        .trainerName = _("TAMIA"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x17, (0x8 << 9) | 0x30, (0x5 << 9) | 0x28, (0x5 << 9) | 0xb, (0x6 << 9) | 0x4},
        .speechWin = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x2c, (0x9 << 9) | 0x16, (0x5 << 9) | 0x28, (0x5 << 9) | 0xb, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x25, (0x9 << 9) | 0x28, (0x5 << 9) | 0x28, (0x5 << 9) | 0xb},
        .monSet = gSlateportBattleTentTrainerMons_Tamia
    }
};

const struct FacilityMon gSlateportBattleTentMons[70] =
{
    [0] = {
        .species = 263,
        .moves = {33, 204, 316, 42},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13
    },
    [1] = {
        .species = 263,
        .moves = {91, 300, 39, 156},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13
    },
    [2] = {
        .species = 267,
        .moves = {78, 72, 16, 106},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15
    },
    [3] = {
        .species = 269,
        .moves = {40, 236, 182, 16},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2) | (1 << 0),
        .nature = 15
    },
    [4] = {
        .species = 320,
        .moves = {205, 174, 45, 250},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [5] = {
        .species = 320,
        .moves = {205, 45, 250, 352},

        .evSpread = (1 << 4) | (1 << 2) | (1 << 0),
        .nature = 15
    },
    [6] = {
        .species = 183,
        .moves = {205, 111, 39, 61},

        .evSpread = (1 << 5) | (1 << 0),
        .nature = 8
    },
    [7] = {
        .species = 278,
        .moves = {48, 45, 17, 211},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 1),
        .nature = 14
    },
    [8] = {
        .species = 279,
        .moves = {239, 346, 45, 17},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2),
        .nature = 15
    },
    [9] = {
        .species = 331,
        .moves = {201, 43, 73, 42},

        .evSpread = (1 << 3),
        .nature = 13
    },
    [10] = {
        .species = 271,
        .moves = {310, 55, 252, 71},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15
    },
    [11] = {
        .species = 270,
        .moves = {235, 267, 240, 72},

        .evSpread = (1 << 4) | (1 << 2) | (1 << 0),
        .nature = 6
    },
    [12] = {
        .species = 273,
        .moves = {241, 235, 73, 117},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 10
    },
    [13] = {
        .species = 274,
        .moves = {252, 267, 106, 213},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 1
    },
    [14] = {
        .species = 291,
        .moves = {210, 103, 14, 104},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2) | (1 << 0),
        .nature = 24
    },
    [15] = {
        .species = 291,
        .moves = {210, 104, 103, 28},

        .evSpread = (1 << 2) | (1 << 1),
        .nature = 4
    },
    [16] = {
        .species = 75,
        .moves = {300, 335, 317, 222},

        .evSpread = (1 << 5) | (1 << 1) | (1 << 0),
        .nature = 2
    },
    [17] = {
        .species = 343,
        .moves = {120, 246, 60, 115},

        .evSpread = (1 << 4) | (1 << 1),
        .nature = 14
    },
    [18] = {
        .species = 262,
        .moves = {44, 46, 207, 33},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 0),
        .nature = 20
    },
    [19] = {
        .species = 262,
        .moves = {316, 336, 28, 305},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 1
    },
    [20] = {
        .species = 264,
        .moves = {29, 321, 39, 156},

        .evSpread = (1 << 5) | (1 << 1) | (1 << 0),
        .nature = 13
    },
    [21] = {
        .species = 118,
        .moves = {346, 30, 127, 48},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2),
        .nature = 20
    },
    [22] = {
        .species = 309,
        .moves = {44, 209, 46, 148},

        .evSpread = (1 << 3) | (1 << 2) | (1 << 1),
        .nature = 15
    },
    [23] = {
        .species = 100,
        .moves = {209, 205, 268, 103},

        .evSpread = (1 << 5) | (1 << 4),
        .nature = 16
    },
    [24] = {
        .species = 304,
        .moves = {91, 232, 334, 283},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 4
    },
    [25] = {
        .species = 304,
        .moves = {189, 231, 106, 46},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 0),
        .nature = 15
    },
    [26] = {
        .species = 328,
        .moves = {34, 116, 328, 28},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 2
    },
    [27] = {
        .species = 331,
        .moves = {275, 201, 40, 194},

        .evSpread = (1 << 3) | (1 << 0),
        .nature = 10
    },
    [28] = {
        .species = 276,
        .moves = {45, 332, 97, 283},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3
    },
    [29] = {
        .species = 277,
        .moves = {48, 45, 116, 64},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 8
    },
    [30] = {
        .species = 42,
        .moves = {310, 16, 212, 109},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2),
        .nature = 10
    },
    [31] = {
        .species = 294,
        .moves = {310, 103, 253, 48},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [32] = {
        .species = 327,
        .moves = {146, 185, 95, 156},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1),
        .nature = 3
    },
    [33] = {
        .species = 81,
        .moves = {319, 48, 86, 209},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 12
    },
    [34] = {
        .species = 293,
        .moves = {156, 214, 336, 34},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [35] = {
        .species = 296,
        .moves = {28, 282, 292, 187},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [36] = {
        .species = 322,
        .moves = {52, 36, 45, 116},

        .evSpread = (1 << 4) | (1 << 1),
        .nature = 15
    },
    [37] = {
        .species = 339,
        .moves = {222, 300, 346, 55},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 13
    },
    [38] = {
        .species = 72,
        .moves = {103, 61, 51, 112},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [39] = {
        .species = 288,
        .moves = {116, 154, 203, 281},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [40] = {
        .species = 129,
        .moves = {33, 175, 150, 0},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [41] = {
        .species = 336,
        .moves = {122, 305, 137, 35},

        .evSpread = (1 << 4) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [42] = {
        .species = 338,
        .moves = {88, 106, 149, 33},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1),
        .nature = 3
    },
    [43] = {
        .species = 352,
        .moves = {60, 164, 168, 39},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 0),
        .nature = 15
    },
    [44] = {
        .species = 352,
        .moves = {185, 310, 122, 103},

        .evSpread = (1 << 5) | (1 << 0),
        .nature = 20
    },
    [45] = {
        .species = 285,
        .moves = {78, 33, 73, 72},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15
    },
    [46] = {
        .species = 285,
        .moves = {71, 78, 147, 73},

        .evSpread = (1 << 1),
        .nature = 2
    },
    [47] = {
        .species = 271,
        .moves = {267, 310, 45, 71},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 1
    },
    [48] = {
        .species = 322,
        .moves = {52, 45, 89, 241},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2),
        .nature = 15
    },
    [49] = {
        .species = 328,
        .moves = {185, 91, 44, 98},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 2
    },
    [50] = {
        .species = 279,
        .moves = {17, 48, 54, 97},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2) | (1 << 0),
        .nature = 3
    },
    [51] = {
        .species = 278,
        .moves = {55, 48, 45, 196},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3
    },
    [52] = {
        .species = 183,
        .moves = {38, 240, 39, 55},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15
    },
    [53] = {
        .species = 300,
        .moves = {274, 213, 47, 204},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 23
    },
    [54] = {
        .species = 336,
        .moves = {207, 35, 342, 114},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2),
        .nature = 2
    },
    [55] = {
        .species = 42,
        .moves = {44, 259, 103, 305},

        .evSpread = (1 << 3) | (1 << 0),
        .nature = 0
    },
    [56] = {
        .species = 280,
        .moves = {95, 286, 94, 138},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 10
    },
    [57] = {
        .species = 27,
        .moves = {163, 28, 328, 111},

        .evSpread = 0,
        .nature = 0
    },
    [58] = {
        .species = 317,
        .moves = {281, 124, 227, 1},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1),
        .nature = 8
    },
    [59] = {
        .species = 313,
        .moves = {33, 109, 98, 104},

        .evSpread = (1 << 5) | (1 << 1),
        .nature = 0
    },
    [60] = {
        .species = 314,
        .moves = {204, 33, 227, 236},

        .evSpread = (1 << 3) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [61] = {
        .species = 64,
        .moves = {50, 93, 115, 105},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 24
    },
    [62] = {
        .species = 281,
        .moves = {347, 93, 104, 45},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 23
    },
    [63] = {
        .species = 286,
        .moves = {71, 33, 78, 72},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 14
    },
    [64] = {
        .species = 311,
        .moves = {209, 227, 86, 45},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 1
    },
    [65] = {
        .species = 311,
        .moves = {209, 313, 164, 98},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 16
    },
    [66] = {
        .species = 309,
        .moves = {209, 268, 46, 86},

        .evSpread = (1 << 3),
        .nature = 10
    },
    [67] = {
        .species = 333,
        .moves = {47, 64, 211, 219},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13
    },
    [68] = {
        .species = 66,
        .moves = {116, 233, 69, 193},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3
    },
    [69] = {
        .species = 67,
        .moves = {116, 43, 2, 193},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 15
    }
};


const u16 gVerdanturfBattleTentTrainerMons_Brenna[] =
{
    4,
    11,
    13,
    18,
    26,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Dilan[] =
{
    30,
    37,
    13,
    29,
    42,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Eliana[] =
{
    6,
    7,
    17,
    18,
    40,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Markus[] =
{
    6,
    7,
    18,
    24,
    38,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Caitlyn[] =
{
    0,
    12,
    25,
    28,
    22,
    44,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Desiree[] =
{
    8,
    12,
    21,
    22,
    31,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Ronald[] =
{
    1,
    20,
    23,
    25,
    32,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Ashten[] =
{
    9,
    12,
    27,
    37,
    43,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Gerard[] =
{
    36,
    7,
    34,
    6,
    40,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Bradly[] =
{
    26,
    3,
    0,
    2,
    17,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Dennis[] =
{
    14,
    37,
    2,
    38,
    27,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Prestin[] =
{
    31,
    28,
    22,
    25,
    44,
    43,
    41,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Ernesto[] =
{
    33,
    32,
    25,
    35,
    34,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Nala[] =
{
    1,
    4,
    8,
    11,
    17,
    40,
    34,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Darnell[] =
{
    0,
    29,
    35,
    37,
    39,
    43,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Ashlyn[] =
{
    29,
    36,
    32,
    30,
    17,
    6,
    44,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Addison[] =
{
    0,
    1,
    16,
    31,
    6,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Justine[] =
{
    0,
    1,
    16,
    36,
    18,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Tyson[] =
{
    5,
    15,
    22,
    30,
    16,
    39,
    43,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Laila[] =
{
    5,
    15,
    19,
    24,
    41,
    43,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Waren[] =
{
    0,
    9,
    10,
    11,
    23,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Tobias[] =
{
    6,
    7,
    24,
    38,
    40,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Josiah[] =
{
    8,
    16,
    23,
    34,
    3,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Dion[] =
{
    14,
    2,
    11,
    39,
    21,
    38,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Kenzie[] =
{
    18,
    10,
    16,
    26,
    25,
    27,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Lillian[] =
{
    24,
    34,
    36,
    38,
    5,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Lesley[] =
{
    26,
    0,
    18,
    13,
    25,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Marquis[] =
{
    24,
    34,
    5,
    15,
    7,
    42,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Freddy[] =
{
    18,
    21,
    26,
    29,
    41,
    -1
};

const u16 gVerdanturfBattleTentTrainerMons_Cecilia[] =
{
    23,
    26,
    27,
    28,
    31,
    -1
};

const struct BattleFrontierTrainer gVerdanturfBattleTentTrainers[30] =
{
    [0] = {
        .facilityClass = 0xd,
        .trainerName = _("BRENNA"),
        .speechBefore = {(0x4 << 9) | 0x1d, (0xe << 9) | 0x9, (0x3 << 9) | 0x1, (0x8 << 9) | 0x3e, (0x5 << 9) | 0x28, ((0x12 << 9) | 313)},
        .speechWin = {(0x6 << 9) | 0x1d, (0xf << 9) | 0x19, (0x8 << 9) | 0x25, (0xa << 9) | 0x1f, (0x6 << 9) | 0x0, -1},
        .speechLose = {(0x8 << 9) | 0x2a, (0x5 << 9) | 0x1, (0x8 << 9) | 0x32, (0x1 << 9) | 0xf, (0x8 << 9) | 0xb, ((0x12 << 9) | 259)},
        .monSet = gVerdanturfBattleTentTrainerMons_Brenna
    },
    [1] = {
        .facilityClass = 0xe,
        .trainerName = _("DILAN"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0xb << 9) | 0x20, (0x7 << 9) | 0xf, (0xa << 9) | 0x38, (0x5 << 9) | 0x29},
        .speechWin = {(0x14 << 9) | 0xe, (0x8 << 9) | 0x13, (0x10 << 9) | 0xf, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a, (0x6 << 9) | 0x4},
        .speechLose = {(0x10 << 9) | 0xf, (0x6 << 9) | 0x1, (0x4 << 9) | 0x20, (0x8 << 9) | 0x2f, (0xa << 9) | 0xe, (0xa << 9) | 0x38},
        .monSet = gVerdanturfBattleTentTrainerMons_Dilan
    },
    [2] = {
        .facilityClass = 0x10,
        .trainerName = _("ELIANA"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2c, (0x8 << 9) | 0x20, (0xd << 9) | 0x34, (0xe << 9) | 0x16},
        .speechWin = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xf, (0x5 << 9) | 0x4a, (0xc << 9) | 0x2},
        .speechLose = {(0x4 << 9) | 0x1d, (0xb << 9) | 0x34, (0x7 << 9) | 0x30, (0x5 << 9) | 0x1, (0x1 << 9) | 0xf, (0xc << 9) | 0x1},
        .monSet = gVerdanturfBattleTentTrainerMons_Eliana
    },
    [3] = {
        .facilityClass = 0x11,
        .trainerName = _("MARKUS"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x2 << 9) | 0x12, (0x6 << 9) | 0x0, (0x3 << 9) | 0x2f, (0x5 << 9) | 0x1, ((0x12 << 9) | 120)},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xa << 9) | 0x2d, ((0x13 << 9) | 153), (0x8 << 9) | 0x34, (0x9 << 9) | 0x1c},
        .speechLose = {(0x5 << 9) | 0x2a, (0x3 << 9) | 0x30, (0x6 << 9) | 0x4, (0xe << 9) | 0x13, (0x8 << 9) | 0x2f, ((0x12 << 9) | 120)},
        .monSet = gVerdanturfBattleTentTrainerMons_Markus
    },
    [4] = {
        .facilityClass = 0x13,
        .trainerName = _("CAITLYN"),
        .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x38, (0x8 << 9) | 0x34, (0xa << 9) | 0xe, (0x8 << 9) | 0x21, (0xd << 9) | 0x0},
        .speechWin = {(0x8 << 9) | 0x20, (0x3 << 9) | 0x28, (0x8 << 9) | 0xb, (0xa << 9) | 0x3c, (0x8 << 9) | 0x2b, (0x9 << 9) | 0x6},
        .speechLose = {(0x14 << 9) | 0xe, (0x8 << 9) | 0x3d, (0x2 << 9) | 0x61, (0x5 << 9) | 0x14, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a},
        .monSet = gVerdanturfBattleTentTrainerMons_Caitlyn
    },
    [5] = {
        .facilityClass = 0x14,
        .trainerName = _("DESIREE"),
        .speechBefore = {(0x8 << 9) | 0x3d, (0x5 << 9) | 0x28, (0x2 << 9) | 0xc, ((0x12 << 9) | 310), (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechWin = {(0x8 << 9) | 0x3b, (0x5 << 9) | 0x1, (0x2 << 9) | 0x6, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3, -1},
        .speechLose = {(0x5 << 9) | 0x28, (0x2 << 9) | 0xc, (0x8 << 9) | 0x3b, (0xa << 9) | 0x30, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .monSet = gVerdanturfBattleTentTrainerMons_Desiree
    },
    [6] = {
        .facilityClass = 0x15,
        .trainerName = _("RONALD"),
        .speechBefore = {(0x3 << 9) | 0x11, (0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x28, (0x7 << 9) | 0x2e, -1},
        .speechWin = {(0x3 << 9) | 0x2d, (0x6 << 9) | 0x3, -1, (0x7 << 9) | 0x1d, (0x7 << 9) | 0x2c, (0x3 << 9) | 0x39},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x18, (0x8 << 9) | 0x20, ((0x13 << 9) | 226)},
        .monSet = gVerdanturfBattleTentTrainerMons_Ronald
    },
    [7] = {
        .facilityClass = 0x17,
        .trainerName = _("ASHTEN"),
        .speechBefore = {(0x6 << 9) | 0x1c, (0xe << 9) | 0x12, (0x10 << 9) | 0xf, (0x3 << 9) | 0x28, (0x6 << 9) | 0x0, -1},
        .speechWin = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x10 << 9) | 0x18, (0x7 << 9) | 0x15, (0x9 << 9) | 0x24},
        .speechLose = {(0xf << 9) | 0x19, (0x8 << 9) | 0x21, (0x10 << 9) | 0xf, (0x3 << 9) | 0x2e, (0x6 << 9) | 0x12, (0x6 << 9) | 0x0},
        .monSet = gVerdanturfBattleTentTrainerMons_Ashten
    },
    [8] = {
        .facilityClass = 0x7,
        .trainerName = _("GERARD"),
        .speechBefore = {(0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, (0x11 << 9) | 0x7, ((0x13 << 9) | 298), (0x6 << 9) | 0x0},
        .speechWin = {(0xf << 9) | 0x19, (0x9 << 9) | 0x2f, (0x6 << 9) | 0x4, (0xf << 9) | 0x18, (0x5 << 9) | 0x1, (0x8 << 9) | 0x24},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x14, (0x4 << 9) | 0xd, (0x5 << 9) | 0x2, (0x8 << 9) | 0x2b, (0xf << 9) | 0x14},
        .monSet = gVerdanturfBattleTentTrainerMons_Gerard
    },
    [9] = {
        .facilityClass = 0x1b,
        .trainerName = _("BRADLY"),
        .speechBefore = {(0x5 << 9) | 0x31, (0x9 << 9) | 0x1a, (0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0xd << 9) | 0x34, (0xa << 9) | 0x37},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, ((0x12 << 9) | 110), (0xf << 9) | 0xb, (0x5 << 9) | 0x28, (0x2 << 9) | 0x23},
        .speechLose = {(0x6 << 9) | 0x1d, (0x6 << 9) | 0x4, -1, (0xa << 9) | 0x37, (0x8 << 9) | 0x2e, (0xe << 9) | 0x6},
        .monSet = gVerdanturfBattleTentTrainerMons_Bradly
    },
    [10] = {
        .facilityClass = 0x1d,
        .trainerName = _("DENNIS"),
        .speechBefore = {(0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2c, (0x3 << 9) | 0x20, (0x6 << 9) | 0x3, -1},
        .speechWin = {(0x6 << 9) | 0x3e, (0x6 << 9) | 0x0, -1, (0x6 << 9) | 0x3e, (0x6 << 9) | 0x1, -1},
        .speechLose = {(0x9 << 9) | 0x32, (0xa << 9) | 0x8, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0x8 << 9) | 0x10, (0xd << 9) | 0x6},
        .monSet = gVerdanturfBattleTentTrainerMons_Dennis
    },
    [11] = {
        .facilityClass = 0x20,
        .trainerName = _("PRESTIN"),
        .speechBefore = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, ((0x12 << 9) | 171), (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
        .speechWin = {(0x4 << 9) | 0xd, (0x5 << 9) | 0x14, (0x6 << 9) | 0x4, (0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xc << 9) | 0x27},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0xb << 9) | 0xc, (0x7 << 9) | 0x8, (0xf << 9) | 0xf},
        .monSet = gVerdanturfBattleTentTrainerMons_Prestin
    },
    [12] = {
        .facilityClass = 0x19,
        .trainerName = _("ERNESTO"),
        .speechBefore = {(0xf << 9) | 0xf, (0xc << 9) | 0x21, (0x9 << 9) | 0x3, (0x8 << 9) | 0x2c, (0xe << 9) | 0x8, (0x6 << 9) | 0x0},
        .speechWin = {(0x7 << 9) | 0xd, (0xd << 9) | 0x8, (0xb << 9) | 0x5, (0x8 << 9) | 0x2c, (0x8 << 9) | 0x3e, (0xe << 9) | 0xa},
        .speechLose = {(0x4 << 9) | 0x1d, (0x6 << 9) | 0x0, (0x7 << 9) | 0xd, (0xd << 9) | 0x8, (0x8 << 9) | 0x15, (0xe << 9) | 0x19},
        .monSet = gVerdanturfBattleTentTrainerMons_Ernesto
    },
    [13] = {
        .facilityClass = 0x27,
        .trainerName = _("NALA"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x7 << 9) | 0xd, (0xc << 9) | 0x2c, (0xd << 9) | 0x3, (0xd << 9) | 0x11},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x8 << 9) | 0x3a, (0xc << 9) | 0x2a, (0x7 << 9) | 0x1a, (0xa << 9) | 0x21},
        .speechLose = {(0x5 << 9) | 0x1, (0xb << 9) | 0x22, (0x8 << 9) | 0x2f, (0xb << 9) | 0x27, (0xf << 9) | 0xf, (0x6 << 9) | 0x0},
        .monSet = gVerdanturfBattleTentTrainerMons_Nala
    },
    [14] = {
        .facilityClass = 0x3,
        .trainerName = _("DARNELL"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x22, (0x8 << 9) | 0x2c, (0x5 << 9) | 0x2, -1},
        .speechWin = {(0x5 << 9) | 0x5, ((0x13 << 9) | 218), (0x9 << 9) | 0x31, (0x8 << 9) | 0x6, (0x11 << 9) | 0xf, (0xf << 9) | 0x1e},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x8 << 9) | 0x2f, (0xb << 9) | 0x47, (0x6 << 9) | 0x4},
        .monSet = gVerdanturfBattleTentTrainerMons_Darnell
    },
    [15] = {
        .facilityClass = 0x12,
        .trainerName = _("ASHLYN"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xd << 9) | 0x35, (0x2 << 9) | 0x33, (0x8 << 9) | 0x18, (0x5 << 9) | 0x1, (0x6 << 9) | 0x3},
        .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x28, (0x5 << 9) | 0x5, ((0x13 << 9) | 269), (0x10 << 9) | 0x1e},
        .speechLose = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x2, (0x6 << 9) | 0x1, -1, -1, -1},
        .monSet = gVerdanturfBattleTentTrainerMons_Ashlyn
    },
    [16] = {
        .facilityClass = 0x29,
        .trainerName = _("ADDISON"),
        .speechBefore = {(0x4 << 9) | 0x1, (0x6 << 9) | 0x0, -1, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x6 << 9) | 0x0},
        .speechWin = {(0xa << 9) | 0x40, (0x8 << 9) | 0x1c, (0xf << 9) | 0x14, (0x3 << 9) | 0x38, (0x6 << 9) | 0x3, -1},
        .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x0, -1, (0x7 << 9) | 0xa, (0xf << 9) | 0x25, (0x6 << 9) | 0x3},
        .monSet = gVerdanturfBattleTentTrainerMons_Addison
    },
    [17] = {
        .facilityClass = 0x2a,
        .trainerName = _("JUSTINE"),
        .speechBefore = {(0x4 << 9) | 0x1, (0x6 << 9) | 0x0, -1, (0x3 << 9) | 0x11, (0x5 << 9) | 0x29, (0x7 << 9) | 0x25},
        .speechWin = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x22, (0xa << 9) | 0x5, (0x7 << 9) | 0x11, (0x6 << 9) | 0x0},
        .speechLose = {(0x6 << 9) | 0x3c, (0x6 << 9) | 0x1, -1, -1, -1, -1},
        .monSet = gVerdanturfBattleTentTrainerMons_Justine
    },
    [18] = {
        .facilityClass = 0x9,
        .trainerName = _("TYSON"),
        .speechBefore = {(0x5 << 9) | 0x6, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x54, (0x5 << 9) | 0x14, (0x6 << 9) | 0x3},
        .speechWin = {(0xf << 9) | 0x22, (0x6 << 9) | 0x3, (0x5 << 9) | 0x6, (0xa << 9) | 0x21, (0x3 << 9) | 0x3a, (0x6 << 9) | 0x0},
        .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0x3d, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0x9 << 9) | 0x5, (0x6 << 9) | 0x0},
        .monSet = gVerdanturfBattleTentTrainerMons_Tyson
    },
    [19] = {
        .facilityClass = 0x16,
        .trainerName = _("LAILA"),
        .speechBefore = {(0x8 << 9) | 0x20, ((0x13 << 9) | 165), (0x8 << 9) | 0x13, (0x7 << 9) | 0x1a, (0x2 << 9) | 0x15, -1},
        .speechWin = {(0x6 << 9) | 0xd, (0x7 << 9) | 0x1, (0x2 << 9) | 0x15, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x22, (0x2 << 9) | 0x15, (0x7 << 9) | 0xa, (0x5 << 9) | 0x2, (0x3 << 9) | 0x7},
        .monSet = gVerdanturfBattleTentTrainerMons_Laila
    },
    [20] = {
        .facilityClass = 0x2b,
        .trainerName = _("WAREN"),
        .speechBefore = {(0x9 << 9) | 0x3d, (0x6 << 9) | 0x0, -1, (0x5 << 9) | 0x1, (0x3 << 9) | 0x1b, (0x9 << 9) | 0x3d},
        .speechWin = {(0x8 << 9) | 0x3b, (0x5 << 9) | 0x2, (0xb << 9) | 0x27, (0x5 << 9) | 0x28, (0x7 << 9) | 0x3, (0x6 << 9) | 0x2},
        .speechLose = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x3b, (0x3 << 9) | 0x1b, (0x9 << 9) | 0x3d, (0x6 << 9) | 0x4},
        .monSet = gVerdanturfBattleTentTrainerMons_Waren
    },
    [21] = {
        .facilityClass = 0x2d,
        .trainerName = _("TOBIAS"),
        .speechBefore = {((0x13 << 9) | 112), (0x6 << 9) | 0x1, -1, (0xe << 9) | 0x1a, (0x3 << 9) | 0x11, (0x6 << 9) | 0x0},
        .speechWin = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x31, (0xb << 9) | 0x20, (0xf << 9) | 0x14, (0x5 << 9) | 0x31, (0x10 << 9) | 0xc},
        .monSet = gVerdanturfBattleTentTrainerMons_Tobias
    },
    [22] = {
        .facilityClass = 0x4,
        .trainerName = _("JOSIAH"),
        .speechBefore = {(0x5 << 9) | 0x1, (0xc << 9) | 0x26, (0x8 << 9) | 0x2f, ((0x12 << 9) | 19), (0x3 << 9) | 0x2f, -1},
        .speechWin = {(0x3 << 9) | 0x3a, (0x6 << 9) | 0x4, -1, (0x5 << 9) | 0x2, ((0x12 << 9) | 19), (0x7 << 9) | 0x3a},
        .speechLose = {(0x5 << 9) | 0x1, (0xc << 9) | 0x26, (0x8 << 9) | 0x2f, ((0x12 << 9) | 19), (0xe << 9) | 0x5, (0xe << 9) | 0x16},
        .monSet = gVerdanturfBattleTentTrainerMons_Josiah
    },
    [23] = {
        .facilityClass = 0x35,
        .trainerName = _("DION"),
        .speechBefore = {(0x5 << 9) | 0x31, (0xd << 9) | 0x33, (0xf << 9) | 0x2, (0x3 << 9) | 0x28, (0x7 << 9) | 0x26, -1},
        .speechWin = {(0x8 << 9) | 0x10, (0x8 << 9) | 0x29, (0x6 << 9) | 0x4, (0x3 << 9) | 0x28, (0xd << 9) | 0x21, (0x6 << 9) | 0x3},
        .speechLose = {(0x8 << 9) | 0x10, (0x8 << 9) | 0x29, (0x6 << 9) | 0x4, (0x3 << 9) | 0x28, (0xd << 9) | 0xe, (0x6 << 9) | 0x3},
        .monSet = gVerdanturfBattleTentTrainerMons_Dion
    },
    [24] = {
        .facilityClass = 0x37,
        .trainerName = _("KENZIE"),
        .speechBefore = {(0x7 << 9) | 0xd, ((0x12 << 9) | 234), (0xb << 9) | 0x3, (0x5 << 9) | 0x14, ((0x12 << 9) | 70), -1},
        .speechWin = {(0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x8 << 9) | 0x3a, ((0x13 << 9) | 236), (0x8 << 9) | 0x39, -1},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x20, (0x9 << 9) | 0x30, ((0x12 << 9) | 201), (0x6 << 9) | 0x4},
        .monSet = gVerdanturfBattleTentTrainerMons_Kenzie
    },
    [25] = {
        .facilityClass = 0x38,
        .trainerName = _("LILLIAN"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0xf << 9) | 0x4, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, (0x2 << 9) | 0x5d},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x3, (0xf << 9) | 0x22, (0x8 << 9) | 0x20, (0x9 << 9) | 0x34},
        .speechLose = {(0x6 << 9) | 0x3b, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x20, (0xd << 9) | 0x28},
        .monSet = gVerdanturfBattleTentTrainerMons_Lillian
    },
    [26] = {
        .facilityClass = 0x1c,
        .trainerName = _("LESLEY"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, (0x8 << 9) | 0x6, (0x10 << 9) | 0x9, (0x8 << 9) | 0x27},
        .speechWin = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0x1 << 9) | 0xf, (0xf << 9) | 0x1b, (0xe << 9) | 0x11, -1},
        .speechLose = {(0xf << 9) | 0xf, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, (0x8 << 9) | 0x6, (0x14 << 9) | 0xf, (0x6 << 9) | 0x0},
        .monSet = gVerdanturfBattleTentTrainerMons_Lesley
    },
    [27] = {
        .facilityClass = 0x3a,
        .trainerName = _("MARQUIS"),
        .speechBefore = {(0xa << 9) | 0x2f, (0x8 << 9) | 0x34, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0xd << 9) | 0x1f, (0x3 << 9) | 0x1b},
        .speechWin = {(0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0xf << 9) | 0xf, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x13, (0x2 << 9) | 0x45},
        .speechLose = {(0x9 << 9) | 0x31, (0x5 << 9) | 0x1, (0xb << 9) | 0x1f, (0x8 << 9) | 0x21, ((0x12 << 9) | 253), (0x6 << 9) | 0x3},
        .monSet = gVerdanturfBattleTentTrainerMons_Marquis
    },
    [28] = {
        .facilityClass = 0x5,
        .trainerName = _("FREDDY"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x28, (0xf << 9) | 0xf, (0x2 << 9) | 0x18, (0xc << 9) | 0x1b, (0xd << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x25, (0x9 << 9) | 0x9, (0xf << 9) | 0x21, (0x5 << 9) | 0x6, (0x9 << 9) | 0x17},
        .speechLose = {(0xa << 9) | 0x14, (0xe << 9) | 0x2b, (0xc << 9) | 0x1b, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0xc << 9) | 0x29},
        .monSet = gVerdanturfBattleTentTrainerMons_Freddy
    },
    [29] = {
        .facilityClass = 0x47,
        .trainerName = _("CECILIA"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xa << 9) | 0x23, (0x2 << 9) | 0x19, (0x8 << 9) | 0xb, (0x8 << 9) | 0x37, (0xd << 9) | 0x2a},
        .speechWin = {(0x5 << 9) | 0x6, (0x4 << 9) | 0x1d, (0x3 << 9) | 0x18, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0x2 << 9) | 0x63},
        .speechLose = {(0x8 << 9) | 0x17, (0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0xd << 9) | 0x2a, (0x3 << 9) | 0x1b, (0x6 << 9) | 0x3},
        .monSet = gVerdanturfBattleTentTrainerMons_Cecilia
    }
};

const struct FacilityMon gVerdanturfBattleTentMons[45] =
{
    [0] = {
        .species = 261,
        .moves = {46, 168, 44, 336},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 4
    },
    [1] = {
        .species = 263,
        .moves = {343, 45, 42, 300},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [2] = {
        .species = 269,
        .moves = {93, 236, 182, 148},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 2),
        .nature = 15
    },
    [3] = {
        .species = 276,
        .moves = {97, 104, 17, 45},

        .evSpread = (1 << 3) | (1 << 1) | (1 << 0),
        .nature = 7
    },
    [4] = {
        .species = 285,
        .moves = {29, 78, 73, 148},

        .evSpread = (1 << 3) | (1 << 0),
        .nature = 19
    },
    [5] = {
        .species = 66,
        .moves = {67, 43, 116, 227},

        .evSpread = (1 << 3) | (1 << 2) | (1 << 1),
        .nature = 1
    },
    [6] = {
        .species = 129,
        .moves = {150, 175, 33, 0},

        .evSpread = (1 << 1),
        .nature = 0
    },
    [7] = {
        .species = 339,
        .moves = {189, 55, 240, 209},

        .evSpread = (1 << 3),
        .nature = 11
    },
    [8] = {
        .species = 278,
        .moves = {213, 239, 17, 48},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1),
        .nature = 8
    },
    [9] = {
        .species = 304,
        .moves = {283, 232, 33, 213},

        .evSpread = (1 << 2) | (1 << 1),
        .nature = 0
    },
    [10] = {
        .species = 322,
        .moves = {52, 157, 205, 45},

        .evSpread = (1 << 4) | (1 << 1),
        .nature = 22
    },
    [11] = {
        .species = 317,
        .moves = {281, 124, 151, 133},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 5
    },
    [12] = {
        .species = 352,
        .moves = {164, 185, 104, 20},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 17
    },
    [13] = {
        .species = 343,
        .moves = {201, 148, 120, 106},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1),
        .nature = 4
    },
    [14] = {
        .species = 291,
        .moves = {91, 103, 14, 141},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2) | (1 << 0),
        .nature = 22
    },
    [15] = {
        .species = 296,
        .moves = {339, 292, 265, 28},

        .evSpread = (1 << 2) | (1 << 1),
        .nature = 4
    },
    [16] = {
        .species = 333,
        .moves = {287, 219, 213, 119},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 16
    },
    [17] = {
        .species = 118,
        .moves = {127, 300, 48, 104},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 21
    },
    [18] = {
        .species = 270,
        .moves = {45, 55, 72, 182},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 24
    },
    [19] = {
        .species = 322,
        .moves = {222, 52, 45, 111},

        .evSpread = (1 << 4) | (1 << 1),
        .nature = 7
    },
    [20] = {
        .species = 264,
        .moves = {29, 321, 182, 156},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 8
    },
    [21] = {
        .species = 336,
        .moves = {35, 137, 305, 207},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 0),
        .nature = 1
    },
    [22] = {
        .species = 227,
        .moves = {314, 201, 43, 97},

        .evSpread = (1 << 5) | (1 << 1),
        .nature = 18
    },
    [23] = {
        .species = 277,
        .moves = {97, 17, 104, 48},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 4
    },
    [24] = {
        .species = 118,
        .moves = {64, 48, 60, 240},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 0),
        .nature = 21
    },
    [25] = {
        .species = 309,
        .moves = {351, 33, 268, 86},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 16
    },
    [26] = {
        .species = 274,
        .moves = {241, 259, 252, 168},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2) | (1 << 0),
        .nature = 5
    },
    [27] = {
        .species = 304,
        .moves = {36, 232, 334, 213},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 15
    },
    [28] = {
        .species = 262,
        .moves = {336, 36, 316, 28},

        .evSpread = (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 24
    },
    [29] = {
        .species = 338,
        .moves = {106, 83, 102, 149},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 2) | (1 << 1),
        .nature = 3
    },
    [30] = {
        .species = 75,
        .moves = {205, 249, 201, 335},

        .evSpread = (1 << 2) | (1 << 1),
        .nature = 8
    },
    [31] = {
        .species = 64,
        .moves = {227, 60, 50, 134},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 0),
        .nature = 17
    },
    [32] = {
        .species = 100,
        .moves = {182, 120, 209, 103},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 18
    },
    [33] = {
        .species = 81,
        .moves = {319, 48, 86, 351},

        .evSpread = (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2) | (1 << 1) | (1 << 0),
        .nature = 12
    },
    [34] = {
        .species = 279,
        .moves = {17, 54, 97, 182},

        .evSpread = 0,
        .nature = 2
    },
    [35] = {
        .species = 294,
        .moves = {336, 253, 156, 103},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 20
    },
    [36] = {
        .species = 183,
        .moves = {205, 111, 39, 61},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 13
    },
    [37] = {
        .species = 328,
        .moves = {91, 317, 201, 185},

        .evSpread = (1 << 3) | (1 << 1) | (1 << 0),
        .nature = 4
    },
    [38] = {
        .species = 72,
        .moves = {103, 109, 35, 213},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 7
    },
    [39] = {
        .species = 288,
        .moves = {227, 303, 281, 290},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 1),
        .nature = 24
    },
    [40] = {
        .species = 320,
        .moves = {352, 205, 174, 182},

        .evSpread = (1 << 0),
        .nature = 7
    },
    [41] = {
        .species = 314,
        .moves = {33, 230, 273, 227},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 24
    },
    [42] = {
        .species = 67,
        .moves = {43, 2, 339, 156},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 20
    },
    [43] = {
        .species = 293,
        .moves = {290, 48, 23, 46},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 24
    },
    [44] = {
        .species = 331,
        .moves = {275, 73, 302, 74},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 12
    }
};


const u16 gFallarborBattleTentTrainerMons_Amber[] =
{
    39,
    40,
    41,
    42,
    43,
    44,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Javier[] =
{
    6,
    35,
    36,
    37,
    38,
    44,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Natalie[] =
{
    5,
    29,
    30,
    32,
    34,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Treve[] =
{
    28,
    29,
    30,
    32,
    33,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Arianna[] =
{
    18,
    23,
    24,
    27,
    44,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Jadyn[] =
{
    0,
    22,
    24,
    27,
    32,
    39,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Gerardo[] =
{
    6,
    18,
    23,
    24,
    29,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Jonn[] =
{
    16,
    17,
    21,
    22,
    37,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Esteban[] =
{
    5,
    28,
    30,
    33,
    42,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Jameson[] =
{
    1,
    2,
    3,
    5,
    9,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Alanzo[] =
{
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Howard[] =
{
    18,
    23,
    31,
    38,
    43,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Conrad[] =
{
    18,
    19,
    20,
    21,
    22,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Makenna[] =
{
    4,
    21,
    25,
    36,
    40,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Brayan[] =
{
    0,
    4,
    6,
    12,
    19,
    23,
    28,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Mariana[] =
{
    0,
    4,
    13,
    19,
    28,
    30,
    37,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Sheldon[] =
{
    2,
    3,
    21,
    31,
    39,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Gianna[] =
{
    1,
    2,
    30,
    32,
    41,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Yahir[] =
{
    4,
    8,
    15,
    17,
    22,
    24,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Britney[] =
{
    4,
    7,
    14,
    20,
    23,
    43,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Hecter[] =
{
    0,
    1,
    2,
    5,
    9,
    35,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Tannor[] =
{
    5,
    30,
    31,
    33,
    34,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Benji[] =
{
    25,
    26,
    27,
    28,
    29,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Rory[] =
{
    9,
    11,
    14,
    15,
    27,
    39,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Eleanor[] =
{
    23,
    28,
    31,
    36,
    38,
    42,
    44,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Evelyn[] =
{
    29,
    31,
    32,
    33,
    34,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Arielle[] =
{
    1,
    3,
    38,
    39,
    41,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Connar[] =
{
    7,
    8,
    28,
    29,
    31,
    32,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Maurice[] =
{
    4,
    5,
    6,
    12,
    13,
    -1
};

const u16 gFallarborBattleTentTrainerMons_Kianna[] =
{
    22,
    24,
    26,
    27,
    34,
    37,
    -1
};

const struct BattleFrontierTrainer gFallarborBattleTentTrainers[30] =
{
    [0] = {
        .facilityClass = 0xd,
        .trainerName = _("AMBER"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0xd << 9) | 0x1a, (0xf << 9) | 0x10, (0xe << 9) | 0x4},
        .speechWin = {(0x8 << 9) | 0x20, ((0x12 << 9) | 171), (0x8 << 9) | 0x34, (0xd << 9) | 0x4, (0x6 << 9) | 0x1f, (0x5 << 9) | 0x14},
        .speechLose = {(0x7 << 9) | 0x19, (0x5 << 9) | 0x2, (0x3 << 9) | 0x2d, (0x5 << 9) | 0x2, (0x8 << 9) | 0x0, (0x3 << 9) | 0x31},
        .monSet = gFallarborBattleTentTrainerMons_Amber
    },
    [1] = {
        .facilityClass = 0xe,
        .trainerName = _("JAVIER"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x1e, (0x8 << 9) | 0x32, (0x8 << 9) | 0x1e, (0x7 << 9) | 0x11, (0xc << 9) | 0x2},
        .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0xc << 9) | 0x2},
        .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0xc << 9) | 0x2, (0x8 << 9) | 0x2b, (0x8 << 9) | 0x20, (0xd << 9) | 0x15},
        .monSet = gFallarborBattleTentTrainerMons_Javier
    },
    [2] = {
        .facilityClass = 0x10,
        .trainerName = _("NATALIE"),
        .speechBefore = {(0x7 << 9) | 0xd, (0x6 << 9) | 0x23, (0x5 << 9) | 0x1, (0x3 << 9) | 0x28, (0x8 << 9) | 0xb, (0xa << 9) | 0x9},
        .speechWin = {(0x5 << 9) | 0x6, (0xa << 9) | 0x21, (0x3 << 9) | 0x3a, (0x8 << 9) | 0x2b, (0xf << 9) | 0xf, (0x5 << 9) | 0x1b},
        .speechLose = {(0x4 << 9) | 0xa, (0x8 << 9) | 0x21, (0x3 << 9) | 0x38, (0x3 << 9) | 0x18, (0xe << 9) | 0x1c, (0xe << 9) | 0x13},
        .monSet = gFallarborBattleTentTrainerMons_Natalie
    },
    [3] = {
        .facilityClass = 0x11,
        .trainerName = _("TREVE"),
        .speechBefore = {(0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, ((0x13 << 9) | 118), (0x7 << 9) | 0x15, (0xb << 9) | 0x34},
        .speechWin = {(0x4 << 9) | 0x5, (0x6 << 9) | 0x0, ((0x12 << 9) | 95), (0x8 << 9) | 0xb, (0x7 << 9) | 0x2f, (0x9 << 9) | 0x40},
        .speechLose = {(0x5 << 9) | 0x28, ((0x12 << 9) | 95), (0x8 << 9) | 0x3c, (0xc << 9) | 0xd, (0x6 << 9) | 0x4, -1},
        .monSet = gFallarborBattleTentTrainerMons_Treve
    },
    [4] = {
        .facilityClass = 0x13,
        .trainerName = _("ARIANNA"),
        .speechBefore = {(0x3 << 9) | 0x8, (0x4 << 9) | 0xa, (0x1 << 9) | 0xe, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x28, (0xd << 9) | 0x11},
        .speechWin = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x3 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0xb << 9) | 0x6},
        .speechLose = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x7 << 9) | 0x26, (0xa << 9) | 0x24, (0x6 << 9) | 0x4},
        .monSet = gFallarborBattleTentTrainerMons_Arianna
    },
    [5] = {
        .facilityClass = 0x14,
        .trainerName = _("JADYN"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xc << 9) | 0x1e, (0x8 << 9) | 0xb, (0x7 << 9) | 0x2c, (0x8 << 9) | 0x20, (0xa << 9) | 0x3a},
        .speechWin = {(0x5 << 9) | 0x28, (0xc << 9) | 0x1e, (0x9 << 9) | 0x3, (0x8 << 9) | 0x2c, (0x8 << 9) | 0x20, (0xa << 9) | 0x3a},
        .speechLose = {(0x5 << 9) | 0x28, (0xc << 9) | 0x1e, (0x6 << 9) | 0x3, (0x5 << 9) | 0x29, (0x5 << 9) | 0x5, (0x5 << 9) | 0x8},
        .monSet = gFallarborBattleTentTrainerMons_Jadyn
    },
    [6] = {
        .facilityClass = 0x15,
        .trainerName = _("GERARDO"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c, (0xd << 9) | 0x27, (0x8 << 9) | 0x32, (0x6 << 9) | 0x0},
        .speechWin = {(0x9 << 9) | 0x39, (0xf << 9) | 0x22, (0x5 << 9) | 0x1, (0x7 << 9) | 0x2, (0x6 << 9) | 0x3, -1},
        .speechLose = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x2, (0x8 << 9) | 0x11, (0xf << 9) | 0x29, (0x6 << 9) | 0x3, -1},
        .monSet = gFallarborBattleTentTrainerMons_Gerardo
    },
    [7] = {
        .facilityClass = 0x17,
        .trainerName = _("JONN"),
        .speechBefore = {(0x7 << 9) | 0xd, (0xc << 9) | 0x2c, ((0x13 << 9) | 276), ((0x13 << 9) | 23), (0x11 << 9) | 0x4, (0x6 << 9) | 0x1},
        .speechWin = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x2, (0x6 << 9) | 0x1, (0x9 << 9) | 0x13, (0x5 << 9) | 0x14, ((0x13 << 9) | 46)},
        .speechLose = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x2d, (0x6 << 9) | 0x0, (0x5 << 9) | 0x6, (0x3 << 9) | 0x2, (0x6 << 9) | 0x0},
        .monSet = gFallarborBattleTentTrainerMons_Jonn
    },
    [8] = {
        .facilityClass = 0x7,
        .trainerName = _("ESTEBAN"),
        .speechBefore = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0xa << 9) | 0x5, (0x1 << 9) | 0xb, (0x6 << 9) | 0x3, (0x6 << 9) | 0x15},
        .speechWin = {(0x5 << 9) | 0x6, (0x5 << 9) | 0x4a, (0x3 << 9) | 0x3b, (0x8 << 9) | 0x34, (0x8 << 9) | 0x20, (0x1 << 9) | 0xb},
        .speechLose = {(0x5 << 9) | 0x6, (0xa << 9) | 0x21, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x14},
        .monSet = gFallarborBattleTentTrainerMons_Esteban
    },
    [9] = {
        .facilityClass = 0x1b,
        .trainerName = _("JAMESON"),
        .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x10 << 9) | 0xa, (0x10 << 9) | 0x11, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x28, (0x10 << 9) | 0xa, (0x10 << 9) | 0x11, (0x1 << 9) | 0xe, (0x3 << 9) | 0x3d, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, ((0x13 << 9) | 165), (0x8 << 9) | 0x37, (0x5 << 9) | 0x5, (0x2 << 9) | 0x43},
        .monSet = gFallarborBattleTentTrainerMons_Jameson
    },
    [10] = {
        .facilityClass = 0x1d,
        .trainerName = _("ALANZO"),
        .speechBefore = {((0x13 << 9) | 193), (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x3 << 9) | 0x1e, (0x5 << 9) | 0x1, (0x8 << 9) | 0x1e},
        .speechWin = {(0x5 << 9) | 0x6, (0x2 << 9) | 0x40, (0x8 << 9) | 0x27, ((0x13 << 9) | 193), (0x6 << 9) | 0x0, -1},
        .speechLose = {(0x5 << 9) | 0x28, ((0x13 << 9) | 193), (0x8 << 9) | 0xb, (0xe << 9) | 0x6, (0xf << 9) | 0x29, (0x6 << 9) | 0x0},
        .monSet = gFallarborBattleTentTrainerMons_Alanzo
    },
    [11] = {
        .facilityClass = 0x20,
        .trainerName = _("HOWARD"),
        .speechBefore = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0x15, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x14, -1},
        .speechWin = {(0x5 << 9) | 0x2, (0xb << 9) | 0x2d, (0x3 << 9) | 0x6, (0x8 << 9) | 0x8, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0xa, (0x3 << 9) | 0x1, (0x8 << 9) | 0x2a, (0x8 << 9) | 0x38, (0x6 << 9) | 0x4},
        .monSet = gFallarborBattleTentTrainerMons_Howard
    },
    [12] = {
        .facilityClass = 0x19,
        .trainerName = _("CONRAD"),
        .speechBefore = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0xa << 9) | 0x1a, (0x7 << 9) | 0x1c, (0x6 << 9) | 0x0},
        .speechWin = {(0x6 << 9) | 0x10, (0x6 << 9) | 0x1, -1, (0x8 << 9) | 0xd, (0xd << 9) | 0x1d, (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x28, (0xd << 9) | 0x8, (0x8 << 9) | 0x0, (0x9 << 9) | 0x1, (0x8 << 9) | 0x2c, (0x6 << 9) | 0x4},
        .monSet = gFallarborBattleTentTrainerMons_Conrad
    },
    [13] = {
        .facilityClass = 0x27,
        .trainerName = _("MAKENNA"),
        .speechBefore = {(0xb << 9) | 0x42, (0x5 << 9) | 0x14, (0xf << 9) | 0x14, (0x5 << 9) | 0x2, (0x7 << 9) | 0x2, (0x8 << 9) | 0x29},
        .speechWin = {(0x7 << 9) | 0x1d, (0xf << 9) | 0x25, (0x5 << 9) | 0x1, (0xc << 9) | 0x22, (0xf << 9) | 0x10, (0xe << 9) | 0x4},
        .speechLose = {(0x6 << 9) | 0x3b, (0x5 << 9) | 0x1, (0xc << 9) | 0x22, (0xf << 9) | 0x10, (0xe << 9) | 0x4, (0x8 << 9) | 0x39},
        .monSet = gFallarborBattleTentTrainerMons_Makenna
    },
    [14] = {
        .facilityClass = 0x3,
        .trainerName = _("BRAYAN"),
        .speechBefore = {(0x8 << 9) | 0x16, (0x5 << 9) | 0x2, (0x9 << 9) | 0x39, (0x5 << 9) | 0x28, (0x3 << 9) | 0x1e, (0x6 << 9) | 0x3},
        .speechWin = {(0x7 << 9) | 0xf, (0x9 << 9) | 0x24, (0x6 << 9) | 0x4, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x4 << 9) | 0x10},
        .speechLose = {(0xf << 9) | 0x18, (0x5 << 9) | 0x1, (0x7 << 9) | 0xd, (0x3 << 9) | 0x39, (0x1 << 9) | 0xb, (0x6 << 9) | 0x3},
        .monSet = gFallarborBattleTentTrainerMons_Brayan
    },
    [15] = {
        .facilityClass = 0x12,
        .trainerName = _("MARIANA"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x7 << 9) | 0x3, (0x8 << 9) | 0x16, (0x8 << 9) | 0x6, (0xa << 9) | 0x3f, (0x6 << 9) | 0x4},
        .speechWin = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x3a, (0x7 << 9) | 0xd, (0xe << 9) | 0x20, (0xd << 9) | 0x30},
        .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x3a, (0x7 << 9) | 0x8, (0x8 << 9) | 0x20, (0xd << 9) | 0x3},
        .monSet = gFallarborBattleTentTrainerMons_Mariana
    },
    [16] = {
        .facilityClass = 0x29,
        .trainerName = _("SHELDON"),
        .speechBefore = {(0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0xc << 9) | 0x14, (0x9 << 9) | 0x1d, (0x4 << 9) | 0x1d, ((0x13 << 9) | 156)},
        .speechWin = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x13, (0x9 << 9) | 0x1d, (0x5 << 9) | 0x14, (0x3 << 9) | 0x38, (0x3 << 9) | 0x5},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0xc << 9) | 0xd, (0x4 << 9) | 0x20},
        .monSet = gFallarborBattleTentTrainerMons_Sheldon
    },
    [17] = {
        .facilityClass = 0x2a,
        .trainerName = _("GIANNA"),
        .speechBefore = {(0x6 << 9) | 0xb, (0x4 << 9) | 0x1, (0x6 << 9) | 0x0, (0x10 << 9) | 0x21, (0x1 << 9) | 0xe, (0xc << 9) | 0x2c},
        .speechWin = {(0x5 << 9) | 0x28, (0x2 << 9) | 0x4a, (0x8 << 9) | 0xb, (0xd << 9) | 0x1f, (0xf << 9) | 0x4, (0x8 << 9) | 0x31},
        .speechLose = {(0x8 << 9) | 0x18, (0x5 << 9) | 0x2, (0x9 << 9) | 0x16, (0x1 << 9) | 0xe, (0x6 << 9) | 0x3, -1},
        .monSet = gFallarborBattleTentTrainerMons_Gianna
    },
    [18] = {
        .facilityClass = 0x9,
        .trainerName = _("YAHIR"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x6 << 9) | 0x6, (0x3 << 9) | 0x11, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x2, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xc << 9) | 0xf, (0x7 << 9) | 0x12, (0x7 << 9) | 0x36},
        .speechLose = {(0x8 << 9) | 0x22, (0x7 << 9) | 0x11, (0x6 << 9) | 0x4, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x22, (0x7 << 9) | 0x11},
        .monSet = gFallarborBattleTentTrainerMons_Yahir
    },
    [19] = {
        .facilityClass = 0x16,
        .trainerName = _("BRITNEY"),
        .speechBefore = {(0x8 << 9) | 0x29, (0xa << 9) | 0x43, (0xf << 9) | 0x14, (0x5 << 9) | 0x6, (0x7 << 9) | 0x7, (0xa << 9) | 0x5},
        .speechWin = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0xa << 9) | 0x33, (0x3 << 9) | 0x15, (0x8 << 9) | 0x36, (0xa << 9) | 0x3c},
        .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0x2 << 9) | 0x15, (0xd << 9) | 0x27, (0x8 << 9) | 0x36, (0xf << 9) | 0xf},
        .monSet = gFallarborBattleTentTrainerMons_Britney
    },
    [20] = {
        .facilityClass = 0x2b,
        .trainerName = _("HECTER"),
        .speechBefore = {(0x5 << 9) | 0x28, ((0x13 << 9) | 237), (0x8 << 9) | 0xb, (0x10 << 9) | 0xf, (0x5 << 9) | 0x14, (0x6 << 9) | 0x0},
        .speechWin = {(0x14 << 9) | 0x5, (0x8 << 9) | 0xd, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x20, ((0x13 << 9) | 237), (0xc << 9) | 0x21},
        .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x0, (0x8 << 9) | 0x17, (0x5 << 9) | 0x2, ((0x13 << 9) | 102), (0x5 << 9) | 0x14},
        .monSet = gFallarborBattleTentTrainerMons_Hecter
    },
    [21] = {
        .facilityClass = 0x2d,
        .trainerName = _("TANNOR"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x9 << 9) | 0xa, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x6, (0x7 << 9) | 0x24},
        .speechWin = {(0x5 << 9) | 0x6, (0x7 << 9) | 0xd, (0xa << 9) | 0x3c, (0x8 << 9) | 0x36, (0xa << 9) | 0xe, (0x9 << 9) | 0x9},
        .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1d, (0xa << 9) | 0xe, (0x9 << 9) | 0x9, (0x8 << 9) | 0x36, (0x8 << 9) | 0x2a},
        .monSet = gFallarborBattleTentTrainerMons_Tannor
    },
    [22] = {
        .facilityClass = 0x4,
        .trainerName = _("BENJI"),
        .speechBefore = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x17, (0x9 << 9) | 0x12, (0x7 << 9) | 0x1a, (0xa << 9) | 0x34, (0x4 << 9) | 0x1c},
        .speechWin = {(0x4 << 9) | 0xb, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0x8 << 9) | 0x3c, (0x7 << 9) | 0x2, (0x5 << 9) | 0x2},
        .speechLose = {(0x5 << 9) | 0x2, (0xf << 9) | 0x28, (0x5 << 9) | 0x14, (0x7 << 9) | 0x9, (0x9 << 9) | 0xe, (0x6 << 9) | 0x4},
        .monSet = gFallarborBattleTentTrainerMons_Benji
    },
    [23] = {
        .facilityClass = 0x35,
        .trainerName = _("RORY"),
        .speechBefore = {(0x8 << 9) | 0x17, (0xb << 9) | 0x1f, (0x8 << 9) | 0x21, ((0x12 << 9) | 253), (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0xa << 9) | 0xf, (0x8 << 9) | 0x21, ((0x12 << 9) | 253), (0x6 << 9) | 0x0},
        .speechLose = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0xb << 9) | 0x1f, (0x8 << 9) | 0x21, ((0x12 << 9) | 253)},
        .monSet = gFallarborBattleTentTrainerMons_Rory
    },
    [24] = {
        .facilityClass = 0x37,
        .trainerName = _("ELEANOR"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x7 << 9) | 0x2c, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0xc << 9) | 0x21, -1},
        .speechWin = {(0x8 << 9) | 0x20, (0xd << 9) | 0x33, (0xc << 9) | 0x21, (0x8 << 9) | 0xa, (0x8 << 9) | 0x6, (0xa << 9) | 0x1f},
        .speechLose = {(0x8 << 9) | 0x17, (0x5 << 9) | 0x2, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0xc << 9) | 0x21, (0x6 << 9) | 0x3},
        .monSet = gFallarborBattleTentTrainerMons_Eleanor
    },
    [25] = {
        .facilityClass = 0x38,
        .trainerName = _("EVELYN"),
        .speechBefore = {(0x5 << 9) | 0x28, (0xd << 9) | 0x25, (0x8 << 9) | 0xb, (0x5 << 9) | 0x28, (0x11 << 9) | 0x10, (0x6 << 9) | 0x0},
        .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x2a, (0xa << 9) | 0x39, (0x8 << 9) | 0x2c, (0x5 << 9) | 0x28, (0xd << 9) | 0x25},
        .speechLose = {(0x4 << 9) | 0x1d, (0x6 << 9) | 0x0, -1, (0x5 << 9) | 0x1, (0x3 << 9) | 0x34, (0xf << 9) | 0xf},
        .monSet = gFallarborBattleTentTrainerMons_Evelyn
    },
    [26] = {
        .facilityClass = 0x1c,
        .trainerName = _("ARIELLE"),
        .speechBefore = {(0x5 << 9) | 0x31, (0x7 << 9) | 0x1, (0xa << 9) | 0x1a, (0x7 << 9) | 0xa, (0x5 << 9) | 0x1, (0x9 << 9) | 0xf},
        .speechWin = {(0x5 << 9) | 0x41, (0x7 << 9) | 0x1, (0xa << 9) | 0x1a, (0x7 << 9) | 0xa, (0x5 << 9) | 0x41, (0x9 << 9) | 0x40},
        .speechLose = {(0xf << 9) | 0x19, (0xa << 9) | 0x1a, (0x7 << 9) | 0x2, (0x8 << 9) | 0x34, (0x5 << 9) | 0x2, (0x6 << 9) | 0x0},
        .monSet = gFallarborBattleTentTrainerMons_Arielle
    },
    [27] = {
        .facilityClass = 0x3a,
        .trainerName = _("CONNAR"),
        .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x3 << 9) | 0x20, (0x7 << 9) | 0x11, (0x8 << 9) | 0x2b, (0xf << 9) | 0xf},
        .speechWin = {(0x8 << 9) | 0x18, (0x5 << 9) | 0x2, (0x9 << 9) | 0x12, (0x5 << 9) | 0x6, (0x8 << 9) | 0x24, -1},
        .speechLose = {(0x4 << 9) | 0x10, (0x7 << 9) | 0x15, (0x4 << 9) | 0x11, -1, -1, -1},
        .monSet = gFallarborBattleTentTrainerMons_Connar
    },
    [28] = {
        .facilityClass = 0x5,
        .trainerName = _("MAURICE"),
        .speechBefore = {(0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0x4 << 9) | 0x1d, (0xc << 9) | 0x2a, (0x8 << 9) | 0x2, (0xc << 9) | 0x1b},
        .speechWin = {(0x7 << 9) | 0xa, (0x8 << 9) | 0x23, (0x8 << 9) | 0xb, (0x7 << 9) | 0x12, (0x8 << 9) | 0x34, (0x1 << 9) | 0xe},
        .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x9 << 9) | 0x2a, (0x5 << 9) | 0x25, (0x8 << 9) | 0x3e, (0xc << 9) | 0x2},
        .monSet = gFallarborBattleTentTrainerMons_Maurice
    },
    [29] = {
        .facilityClass = 0x47,
        .trainerName = _("KIANNA"),
        .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0xc << 9) | 0x1a, (0xd << 9) | 0xa},
        .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x16, (0xd << 9) | 0xa, (0xa << 9) | 0x37, -1, -1},
        .speechLose = {(0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0xd << 9) | 0xa, (0xa << 9) | 0xb, (0x6 << 9) | 0x3},
        .monSet = gFallarborBattleTentTrainerMons_Kianna
    }
};

const struct FacilityMon gFallarborBattleTentMons[45] =
{
    [0] = {
        .species = 322,
        .moves = {45, 53, 33, 241},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 17
    },
    [1] = {
        .species = 264,
        .moves = {316, 343, 249, 204},

        .evSpread = (1 << 5) | (1 << 2),
        .nature = 22
    },
    [2] = {
        .species = 311,
        .moves = {209, 45, 98, 313},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15
    },
    [3] = {
        .species = 261,
        .moves = {281, 316, 336, 218},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 4
    },
    [4] = {
        .species = 352,
        .moves = {122, 163, 185, 60},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 1),
        .nature = 15
    },
    [5] = {
        .species = 129,
        .moves = {150, 33, 175, 0},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 24
    },
    [6] = {
        .species = 338,
        .moves = {88, 148, 201, 149},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 22
    },
    [7] = {
        .species = 296,
        .moves = {197, 292, 252, 265},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 3
    },
    [8] = {
        .species = 67,
        .moves = {68, 279, 339, 116},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 1),
        .nature = 14
    },
    [9] = {
        .species = 290,
        .moves = {154, 203, 189, 91},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 12
    },
    [10] = {
        .species = 267,
        .moves = {148, 234, 106, 72},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2) | (1 << 1),
        .nature = 24
    },
    [11] = {
        .species = 269,
        .moves = {236, 106, 40, 60},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2),
        .nature = 6
    },
    [12] = {
        .species = 314,
        .moves = {118, 260, 273, 213},

        .evSpread = (1 << 2) | (1 << 1),
        .nature = 3
    },
    [13] = {
        .species = 313,
        .moves = {33, 236, 324, 294},

        .evSpread = (1 << 5) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [14] = {
        .species = 291,
        .moves = {104, 182, 91, 28},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2) | (1 << 0),
        .nature = 10
    },
    [15] = {
        .species = 291,
        .moves = {14, 15, 210, 141},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [16] = {
        .species = 304,
        .moves = {232, 182, 351, 319},

        .evSpread = (1 << 4) | (1 << 1) | (1 << 0),
        .nature = 1
    },
    [17] = {
        .species = 304,
        .moves = {290, 232, 334, 189},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 21
    },
    [18] = {
        .species = 309,
        .moves = {242, 86, 336, 98},

        .evSpread = (1 << 4) | (1 << 3) | (1 << 1),
        .nature = 11
    },
    [19] = {
        .species = 81,
        .moves = {86, 48, 203, 209},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 17
    },
    [20] = {
        .species = 100,
        .moves = {268, 209, 103, 49},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15
    },
    [21] = {
        .species = 293,
        .moves = {156, 214, 304, 213},

        .evSpread = (1 << 3) | (1 << 1) | (1 << 0),
        .nature = 3
    },
    [22] = {
        .species = 294,
        .moves = {23, 156, 103, 253},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [23] = {
        .species = 264,
        .moves = {154, 28, 351, 45},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15
    },
    [24] = {
        .species = 262,
        .moves = {28, 336, 207, 290},

        .evSpread = (1 << 3) | (1 << 1) | (1 << 0),
        .nature = 13
    },
    [25] = {
        .species = 333,
        .moves = {36, 47, 45, 219},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 24
    },
    [26] = {
        .species = 227,
        .moves = {97, 211, 28, 259},

        .evSpread = (1 << 5) | (1 << 1) | (1 << 0),
        .nature = 5
    },
    [27] = {
        .species = 42,
        .moves = {109, 44, 104, 164},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 5
    },
    [28] = {
        .species = 278,
        .moves = {17, 258, 104, 48},

        .evSpread = (1 << 4) | (1 << 3),
        .nature = 15
    },
    [29] = {
        .species = 279,
        .moves = {239, 196, 104, 55},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3
    },
    [30] = {
        .species = 339,
        .moves = {209, 55, 89, 346},

        .evSpread = (1 << 4) | (1 << 0),
        .nature = 15
    },
    [31] = {
        .species = 320,
        .moves = {352, 240, 150, 174},

        .evSpread = (1 << 4) | (1 << 1),
        .nature = 17
    },
    [32] = {
        .species = 183,
        .moves = {111, 205, 61, 213},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 3
    },
    [33] = {
        .species = 118,
        .moves = {127, 240, 175, 182},

        .evSpread = (1 << 4) | (1 << 1),
        .nature = 11
    },
    [34] = {
        .species = 118,
        .moves = {214, 32, 156, 48},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 23
    },
    [35] = {
        .species = 328,
        .moves = {216, 28, 213, 70},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3
    },
    [36] = {
        .species = 343,
        .moves = {120, 201, 229, 102},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 1),
        .nature = 13
    },
    [37] = {
        .species = 75,
        .moves = {350, 111, 222, 300},

        .evSpread = (1 << 5) | (1 << 0),
        .nature = 3
    },
    [38] = {
        .species = 27,
        .moves = {328, 201, 104, 264},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 13
    },
    [39] = {
        .species = 317,
        .moves = {281, 227, 331, 124},

        .evSpread = (1 << 1) | (1 << 0),
        .nature = 2
    },
    [40] = {
        .species = 285,
        .moves = {29, 147, 207, 73},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 8
    },
    [41] = {
        .species = 281,
        .moves = {95, 45, 213, 138},

        .evSpread = (1 << 5) | (1 << 1),
        .nature = 3
    },
    [42] = {
        .species = 271,
        .moves = {267, 55, 240, 148},

        .evSpread = (1 << 5) | (1 << 2) | (1 << 0),
        .nature = 18
    },
    [43] = {
        .species = 274,
        .moves = {267, 259, 207, 156},

        .evSpread = (1 << 3) | (1 << 1),
        .nature = 3
    },
    [44] = {
        .species = 331,
        .moves = {201, 302, 298, 73},

        .evSpread = (1 << 5) | (1 << 3) | (1 << 2) | (1 << 0),
        .nature = 3
    }
};
# 948 "src/battle_tower.c" 2

static void (* const sBattleTowerFuncs[])(void) =
{
    [0] = InitTowerChallenge,
    [1] = GetTowerData,
    [2] = SetTowerData,
    [3] = SetNextFacilityOpponent,
    [4] = SetTowerBattleWon,
    [5] = AwardBattleTowerRibbons,
    [6] = SaveTowerChallenge,
    [7] = GetOpponentIntroSpeech,
    [8] = nullsub_61,
    [9] = nullsub_116,
    [10] = LoadMultiPartnerCandidatesData,
    [11] = ShowPartnerCandidateMessage,
    [12] = LoadLinkMultiOpponentsData,
    [13] = sub_8164DCC,
    [14] = SetMultiPartnerGfx,
    [15] = SetTowerInterviewData,
};

static const u32 sWinStreakFlags[][2] =
{
    {(1 << 0), (1 << 1)},
    {(1 << 14), (1 << 15)},
    {(1 << 16), (1 << 17)},
    {(1 << 18), (1 << 19)},
};

static const u32 sWinStreakMasks[][2] =
{
    {~((1 << 0)), ~((1 << 1))},
    {~((1 << 14)), ~((1 << 15))},
    {~((1 << 16)), ~((1 << 17))},
    {~((1 << 18)), ~((1 << 19))},
};


static const u8 sApprenticeChallengeThreshold[6 / 2 + 5 + 2] =
{
    1, 2, 3, 4, 5, 8, 9, 10, 11, 12
};


static const u8 sBattleTowerPartySizes2[] =
{
    [0] = 3,
    [1] = 4,
    [2] = 2,
    [3] = 2,
};



static const u16 sFrontierTrainerIdRanges[][2] =
{
    {0, 99},
    {80, 119},
    {100, 139},
    {120, 159},
    {140, 179},
    {160, 199},
    {180, 219},
    {200, 299},
};

static const u16 sFrontierTrainerIdRangesHard[][2] =
{
    {100, 119},
    {120, 139},
    {140, 159},
    {160, 179},
    {180, 199},
    {200, 219},
    {220, 239},
    {200, 299},
};


static const u16 sUnused_085DFA1A[][2] =
{
    {179, 141},
    {200, 183},
};

static const u8 sBattleTowerPartySizes[4] =
{
    [0] = 3,
    [1] = 4,
    [2] = 2,
    [3] = 2,
};

static const u16 sRecordTrainerSpeechWon[] =
{
    (0x6 << 9) | 0x3a, (0x6 << 9) | 0x3a, (0x6 << 9) | 0x1, (0x5 << 9) | 0x2a, (0x3 << 9) | 0x7, (0x6 << 9) | 0x1
};

static const u16 sRecordTrainerSpeechLost[] =
{
    (0x8 << 9) | 0x39, (0x9 << 9) | 0x2e, (0x6 << 9) | 0x4, (0x5 << 9) | 0x3d, (0x3 << 9) | 0x30, (0x6 << 9) | 0x4
};


void CallBattleTowerFunc(void)
{
    sBattleTowerFuncs[gSpecialVar_0x8004]();
}

static void InitTowerChallenge(void)
{
    u32 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u32 battleMode = VarGet(0x40CE);

    gSaveBlock2Ptr->frontier.challengeStatus = 1;
    gSaveBlock2Ptr->frontier.curChallengeBattleNum = 0;
    gSaveBlock2Ptr->frontier.challengePaused = 0;
    gSaveBlock2Ptr->frontier.disableRecordBattle = 0;
    ResetFrontierTrainerIds();
    if (!(gSaveBlock2Ptr->frontier.winStreakActiveFlags & sWinStreakFlags[battleMode][lvlMode]))
        gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] = 0;

    ValidateBattleTowerRecordChecksums();
    SetDynamicWarp(0, gSaveBlock1Ptr->location.mapGroup, gSaveBlock1Ptr->location.mapNum, -1);
    gTrainerBattleOpponent_A = 0;
}

static void GetTowerData(void)
{
    u32 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u32 battleMode = VarGet(0x40CE);

    switch (gSpecialVar_0x8005)
    {
    case 0:
        break;
    case 1:
        gSpecialVar_Result = GetCurrentBattleTowerWinStreak(lvlMode, battleMode);
        break;
    case 2:
        gSpecialVar_Result = ((gSaveBlock2Ptr->frontier.winStreakActiveFlags & sWinStreakFlags[battleMode][lvlMode]) != 0);
        break;
    case 3:
        gSaveBlock2Ptr->frontier.towerLvlMode = gSaveBlock2Ptr->frontier.lvlMode;
        break;
    }
}

static void SetTowerData(void)
{
    u32 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u32 battleMode = VarGet(0x40CE);

    switch (gSpecialVar_0x8005)
    {
    case 0:
        break;
    case 1:
        gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] = gSpecialVar_0x8006;
        break;
    case 2:
        if (gSpecialVar_0x8006)
            gSaveBlock2Ptr->frontier.winStreakActiveFlags |= sWinStreakFlags[battleMode][lvlMode];
        else
            gSaveBlock2Ptr->frontier.winStreakActiveFlags &= sWinStreakMasks[battleMode][lvlMode];
        break;
    case 3:
        gSaveBlock2Ptr->frontier.towerLvlMode = gSaveBlock2Ptr->frontier.lvlMode;
        break;
    }
}

static void SetTowerBattleWon(void)
{
    if (gTrainerBattleOpponent_A == 500)
        ClearEReaderTrainer(&gSaveBlock2Ptr->frontier.ereaderTrainer);


    if (gSaveBlock2Ptr->frontier.towerNumWins < 9999)
        gSaveBlock2Ptr->frontier.towerNumWins++;

    gSaveBlock2Ptr->frontier.curChallengeBattleNum++;
    SaveCurrentWinStreak();
    gSpecialVar_Result = gSaveBlock2Ptr->frontier.curChallengeBattleNum;
}

static bool8 ChooseSpecialBattleTowerTrainer(void)
{
    s32 i, j, validMons;
    s32 trainerIds[9];
    s32 idsCount = 0;
    s32 winStreak = 0;
    u8 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u8 battleMode = VarGet(0x40CE);

    if (VarGet(0x40CF) != 0)
        return 0;

    winStreak = GetCurrentBattleTowerWinStreak(lvlMode, battleMode);
    for (i = 0; i < 5; i++)
    {
        u32 *record = (u32*)(&gSaveBlock2Ptr->frontier.towerRecords[i]);
        u32 recordHasData = 0;
        u32 checksum = 0;
        for (j = 0; j < (sizeof(struct EmeraldBattleTowerRecord) - 4) / 4; j++)
        {
            recordHasData |= record[j];
            checksum += record[j];
        }
        validMons = 0;
        for (j = 0; j < 4; j++)
        {
            if (gSaveBlock2Ptr->frontier.towerRecords[i].party[j].species != 0
                && gSaveBlock2Ptr->frontier.towerRecords[i].party[j].level <= GetFrontierEnemyMonLevel(lvlMode))
                validMons++;
        }

        if (validMons >= sBattleTowerPartySizes2[battleMode]
            && gSaveBlock2Ptr->frontier.towerRecords[i].winStreak == winStreak
            && gSaveBlock2Ptr->frontier.towerRecords[i].lvlMode == lvlMode
            && recordHasData
            && gSaveBlock2Ptr->frontier.towerRecords[i].checksum == checksum)
        {
            trainerIds[idsCount] = i + 300;
            idsCount++;
        }
    }

    if (battleMode == 0)
    {
        ValidateApprenticesChecksums();
        for (i = 0; i < 4; i++)
        {
            if (gSaveBlock2Ptr->apprentices[i].lvlMode != 0
                && sApprenticeChallengeThreshold[gSaveBlock2Ptr->apprentices[i].numQuestions] == winStreak
                && gSaveBlock2Ptr->apprentices[i].lvlMode - 1 == lvlMode)
            {
                trainerIds[idsCount] = i + 400;
                idsCount++;
            }
        }
    }

    if (idsCount != 0)
    {
        gTrainerBattleOpponent_A = trainerIds[Random() % idsCount];
        return 1;
    }
    else
    {
        return 0;
    }
}

static void SetNextFacilityOpponent(void)
{
    u32 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    if (lvlMode == 2)
    {
        SetNextBattleTentOpponent();
    }
    else
    {
        u16 id;
        u32 battleMode = VarGet(0x40CE);
        u16 winStreak = GetCurrentFacilityWinStreak();
        u32 challengeNum = winStreak / 7;
        SetFacilityPtrsGetLevel();

        if (battleMode == 2 || battleMode == 3)
        {
            id = gSaveBlock2Ptr->frontier.curChallengeBattleNum;
            gTrainerBattleOpponent_A = gSaveBlock2Ptr->frontier.trainerIds[id * 2];
            gTrainerBattleOpponent_B = gSaveBlock2Ptr->frontier.trainerIds[id * 2 + 1];
            SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_A, 0);
            SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_B, 1);
        }
        else if (ChooseSpecialBattleTowerTrainer())
        {
            SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_A, 0);
            gSaveBlock2Ptr->frontier.trainerIds[gSaveBlock2Ptr->frontier.curChallengeBattleNum] = gTrainerBattleOpponent_A;
        }
        else
        {
            s32 i;
            while (1)
            {
                id = GetRandomScaledFrontierTrainerId(challengeNum, gSaveBlock2Ptr->frontier.curChallengeBattleNum);


                for (i = 0; i < gSaveBlock2Ptr->frontier.curChallengeBattleNum; i++)
                {
                    if (gSaveBlock2Ptr->frontier.trainerIds[i] == id)
                        break;
                }
                if (i == gSaveBlock2Ptr->frontier.curChallengeBattleNum)
                    break;
            }

            gTrainerBattleOpponent_A = id;
            SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_A, 0);
            if (gSaveBlock2Ptr->frontier.curChallengeBattleNum + 1 < 7)
                gSaveBlock2Ptr->frontier.trainerIds[gSaveBlock2Ptr->frontier.curChallengeBattleNum] = gTrainerBattleOpponent_A;
        }
    }
}

u16 GetRandomScaledFrontierTrainerId(u8 challengeNum, u8 battleNum)
{
    u16 trainerId;

    if (challengeNum <= 7)
    {
        if (battleNum == 6)
        {

            trainerId = (sFrontierTrainerIdRangesHard[challengeNum][1] - sFrontierTrainerIdRangesHard[challengeNum][0]) + 1;
            trainerId = sFrontierTrainerIdRangesHard[challengeNum][0] + (Random() % trainerId);
        }
        else
        {
            trainerId = (sFrontierTrainerIdRanges[challengeNum][1] - sFrontierTrainerIdRanges[challengeNum][0]) + 1;
            trainerId = sFrontierTrainerIdRanges[challengeNum][0] + (Random() % trainerId);
        }
    }
    else
    {

        trainerId = (sFrontierTrainerIdRanges[7][1] - sFrontierTrainerIdRanges[7][0]) + 1;
        trainerId = sFrontierTrainerIdRanges[7][0] + (Random() % trainerId);
    }

    return trainerId;
}


static void GetRandomScaledFrontierTrainerIdRange(u8 challengeNum, u8 battleNum, u16 *trainerIdPtr, u8 *rangePtr)
{
    u16 trainerId, range;

    if (challengeNum <= 7)
    {
        if (battleNum == 6)
        {

            range = (sFrontierTrainerIdRangesHard[challengeNum][1] - sFrontierTrainerIdRangesHard[challengeNum][0]) + 1;
            trainerId = sFrontierTrainerIdRangesHard[challengeNum][0];
        }
        else
        {
            range = (sFrontierTrainerIdRanges[challengeNum][1] - sFrontierTrainerIdRanges[challengeNum][0]) + 1;
            trainerId = sFrontierTrainerIdRanges[challengeNum][0];
        }
    }
    else
    {

        range = (sFrontierTrainerIdRanges[7][1] - sFrontierTrainerIdRanges[7][0]) + 1;
        trainerId = sFrontierTrainerIdRanges[7][0];
    }

    *trainerIdPtr = trainerId;
    *rangePtr = range;
}

void SetBattleFacilityTrainerGfxId(u16 trainerId, u8 tempVarId)
{
    u32 i;
    u8 facilityClass;
    u8 trainerObjectGfxId;

    SetFacilityPtrsGetLevel();
    if (trainerId == 500)
    {
        facilityClass = gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass;
    }
    else if (trainerId == 1022)
    {
        SetFrontierBrainObjEventGfx_2();
        return;
    }
    else if (trainerId < 300)
    {
        facilityClass = gFacilityTrainers[trainerId].facilityClass;
    }
    else if (trainerId < 400)
    {
        facilityClass = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].facilityClass;
    }
    else
    {
        facilityClass = gApprentices[gSaveBlock2Ptr->apprentices[trainerId - 400].id].facilityClass;
    }


    for (i = 0; i < (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0])); i++)
    {
        if (gTowerMaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0])))
    {
        trainerObjectGfxId = gTowerMaleTrainerGfxIds[i];
        switch (tempVarId)
        {
        case 0:
        default:
            VarSet(0x4010, trainerObjectGfxId);
            return;
        case 1:
            VarSet(0x4011, trainerObjectGfxId);
            return;
        case 15:
            VarSet(0x401E, trainerObjectGfxId);
            return;
        }
    }


    for (i = 0; i < (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])); i++)
    {
        if (gTowerFemaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])))
    {
        trainerObjectGfxId = gTowerFemaleTrainerGfxIds[i];
        switch (tempVarId)
        {
        case 0:
        default:
            VarSet(0x4010, trainerObjectGfxId);
            return;
        case 1:
            VarSet(0x4011, trainerObjectGfxId);
            return;
        case 15:
            VarSet(0x401E, trainerObjectGfxId);
            return;
        }
    }

    switch (tempVarId)
    {
    case 0:
    default:
        VarSet(0x4010, 7);
        return;
    case 1:
        VarSet(0x4011, 7);
        return;
    case 15:
        VarSet(0x401E, 7);
        return;
    }
}

void SetEReaderTrainerGfxId(void)
{
    SetBattleFacilityTrainerGfxId(500, 0);
}

u8 GetBattleFacilityTrainerGfxId(u16 trainerId)
{
    u32 i;
    u8 facilityClass;
    u8 trainerObjectGfxId;

    SetFacilityPtrsGetLevel();
    if (trainerId == 500)
    {
        facilityClass = gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass;
    }
    else if (trainerId < 300)
    {
        facilityClass = gFacilityTrainers[trainerId].facilityClass;
    }
    else if (trainerId < 400)
    {
        facilityClass = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].facilityClass;
    }
    else
    {
        facilityClass = gApprentices[gSaveBlock2Ptr->apprentices[trainerId - 400].id].facilityClass;
    }


    for (i = 0; i < (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0])); i++)
    {
        if (gTowerMaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0])))
    {
        trainerObjectGfxId = gTowerMaleTrainerGfxIds[i];
        return trainerObjectGfxId;
    }


    for (i = 0; i < (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])); i++)
    {
        if (gTowerFemaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])))
    {
        trainerObjectGfxId = gTowerFemaleTrainerGfxIds[i];
        return trainerObjectGfxId;
    }
    else
    {
        return 7;
    }
}

void PutNewBattleTowerRecord(struct EmeraldBattleTowerRecord *newRecordEm)
{
    u16 slotValues[6];
    u16 slotIds[6];
    s32 i, j, k;
    s32 slotsCount = 0;
    struct EmeraldBattleTowerRecord *newRecord = newRecordEm;


    for (i = 0; i < 5; i++)
    {
        k = 0;
        for (j = 0; j < 4; j++)
        {
            if (gSaveBlock2Ptr->frontier.towerRecords[i].trainerId[j] != newRecord->trainerId[j])
                break;
        }
        if (j == 4)
        {
            for (k = 0; k < 7; k++)
            {

                if (gSaveBlock2Ptr->frontier.towerRecords[i].name[k] != newRecord->name[k])
                    break;
                if (newRecord->name[k] == 0xFF)
                {
                    k = 7;
                    break;
                }
            }
        }

        if (k == 7)
            break;
    }
    if (i < 5)
    {
        gSaveBlock2Ptr->frontier.towerRecords[i] = *newRecord;
        return;
    }


    for (i = 0; i < 5; i++)
    {
        if (gSaveBlock2Ptr->frontier.towerRecords[i].winStreak == 0)
            break;
    }
    if (i < 5)
    {
        gSaveBlock2Ptr->frontier.towerRecords[i] = *newRecord;
        return;
    }


    slotValues[0] = gSaveBlock2Ptr->frontier.towerRecords[0].winStreak;
    slotIds[0] = 0;
    slotsCount++;

    for (i = 1; i < 5; i++)
    {
        for (j = 0; j < slotsCount; j++)
        {
            if (gSaveBlock2Ptr->frontier.towerRecords[i].winStreak < slotValues[j])
            {
                j = 0;
                slotsCount = 1;
                slotValues[0] = gSaveBlock2Ptr->frontier.towerRecords[i].winStreak;
                slotIds[0] = i;
                break;
            }
            else if (gSaveBlock2Ptr->frontier.towerRecords[i].winStreak > slotValues[j])
            {
                break;
            }
        }

        if (j == slotsCount)
        {
            slotValues[slotsCount] = gSaveBlock2Ptr->frontier.towerRecords[i].winStreak;
            slotIds[slotsCount] = i;
            slotsCount++;
        }
    }

    i = Random() % slotsCount;
    gSaveBlock2Ptr->frontier.towerRecords[slotIds[i]] = *newRecord;
}

u8 GetFrontierTrainerFrontSpriteId(u16 trainerId)
{
    SetFacilityPtrsGetLevel();

    if (trainerId == 500)
    {
        return gFacilityClassToPicIndex[gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass];
    }
    else if (trainerId == 1022)
    {
        return GetFrontierBrainTrainerPicIndex();
    }
    else if (trainerId < 300)
    {
        return gFacilityClassToPicIndex[gFacilityTrainers[trainerId].facilityClass];
    }
    else if (trainerId < 400)
    {
        if (gBattleTypeFlags & (1 << 24))
            return gFacilityClassToPicIndex[GetRecordedBattleRecordMixFriendClass()];
        else
            return gFacilityClassToPicIndex[gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].facilityClass];
    }
    else
    {
        if (gBattleTypeFlags & (1 << 24))
            return gFacilityClassToPicIndex[gApprentices[GetRecordedBattleApprenticeId()].facilityClass];
        else
            return gFacilityClassToPicIndex[gApprentices[gSaveBlock2Ptr->apprentices[trainerId - 400].id].facilityClass];
    }
}

u8 GetFrontierOpponentClass(u16 trainerId)
{
    u8 trainerClass = 0;
    SetFacilityPtrsGetLevel();

    if (trainerId == 500)
    {
        trainerClass = gFacilityClassToTrainerClass[gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass];
    }
    else if (trainerId == 1022)
    {
        return GetFrontierBrainTrainerClass();
    }
    else if (trainerId == 3075)
    {
        trainerClass = gTrainers[804].trainerClass;
    }
    else if (trainerId >= 3076)
    {
        trainerClass = gTrainers[trainerId - 3076].trainerClass;
    }
    else if (trainerId < 300)
    {
        trainerClass = gFacilityClassToTrainerClass[gFacilityTrainers[trainerId].facilityClass];
    }
    else if (trainerId < 400)
    {
        if (gBattleTypeFlags & (1 << 24))
        {
            trainerClass = gFacilityClassToTrainerClass[GetRecordedBattleRecordMixFriendClass()];
        }
        else
        {
            trainerClass = gFacilityClassToTrainerClass[gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].facilityClass];
        }
    }
    else
    {
        if (gBattleTypeFlags & (1 << 24))
        {
            trainerClass = gFacilityClassToTrainerClass[gApprentices[GetRecordedBattleApprenticeId()].facilityClass];
        }
        else
        {
            trainerClass = gFacilityClassToTrainerClass[gApprentices[gSaveBlock2Ptr->apprentices[trainerId - 400].id].facilityClass];
        }
    }

    return trainerClass;
}

static u8 GetFrontierTrainerFacilityClass(u16 trainerId)
{
    u8 facilityClass;
    SetFacilityPtrsGetLevel();

    if (trainerId == 500)
    {
        facilityClass = gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass;
    }
    else if (trainerId < 300)
    {
        facilityClass = gFacilityTrainers[trainerId].facilityClass;
    }
    else if (trainerId < 400)
    {
        if (gBattleTypeFlags & (1 << 24))
            facilityClass = GetRecordedBattleRecordMixFriendClass();
        else
            facilityClass = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].facilityClass;
    }
    else
    {
        if (gBattleTypeFlags & (1 << 24))
            facilityClass = gApprentices[GetRecordedBattleApprenticeId()].facilityClass;
        else
            facilityClass = gApprentices[gSaveBlock2Ptr->apprentices[trainerId - 400].id].facilityClass;
    }

    return facilityClass;
}

void GetFrontierTrainerName(u8 *dst, u16 trainerId)
{
    s32 i = 0;
    SetFacilityPtrsGetLevel();

    if (trainerId == 500)
    {
        for (i = 0; i < 7; i++)
            dst[i] = gSaveBlock2Ptr->frontier.ereaderTrainer.name[i];
    }
    else if (trainerId == 1022)
    {
        CopyFrontierBrainTrainerName(dst);
        return;
    }
    else if (trainerId == 3075)
    {
        for (i = 0; i < 7; i++)
            dst[i] = gTrainers[804].trainerName[i];
    }
    else if (trainerId >= 3076)
    {
        for (i = 0; gTrainers[trainerId - 3076].trainerName[i] != 0xFF; i++)
            dst[i] = gTrainers[trainerId - 3076].trainerName[i];
    }
    else if (trainerId < 300)
    {
        for (i = 0; i < 7; i++)
            dst[i] = gFacilityTrainers[trainerId].trainerName[i];
    }
    else if (trainerId < 400)
    {
        if (gBattleTypeFlags & (1 << 24))
        {
            sub_8186468(dst);
            return;
        }
        else
        {
            struct EmeraldBattleTowerRecord *record = &gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300];
            TVShowConvertInternationalString(dst, record->name, record->language);
            return;
        }
    }
    else
    {
        u8 id, language;

        if (gBattleTypeFlags & (1 << 24))
        {
            id = GetRecordedBattleApprenticeId();
            language = GetRecordedBattleApprenticeLanguage();
        }
        else
        {
            struct Apprentice *apprentice = &gSaveBlock2Ptr->apprentices[trainerId - 400];
            id = apprentice->id;
            language = apprentice->language;
        }
        TVShowConvertInternationalString(dst, GetApprenticeNameInLanguage(id, language), language);
        return;
    }

    dst[i] = 0xFF;
}

static bool8 IsFrontierTrainerFemale(u16 trainerId)
{
    u32 i;
    u8 facilityClass;

    SetFacilityPtrsGetLevel();
    if (trainerId == 500)
    {
        facilityClass = gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass;
    }
    else if (trainerId == 1022)
    {
        return IsFrontierBrainFemale();
    }
    else if (trainerId < 300)
    {
        facilityClass = gFacilityTrainers[trainerId].facilityClass;
    }
    else if (trainerId < 400)
    {
        facilityClass = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].facilityClass;
    }
    else
    {
        facilityClass = gApprentices[gSaveBlock2Ptr->apprentices[trainerId - 400].id].facilityClass;
    }


    for (i = 0; i < (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])); i++)
    {
        if (gTowerFemaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])))
        return 1;
    else
        return 0;
}

void FillFrontierTrainerParty(u8 monsCount)
{
    ZeroEnemyPartyMons();
    FillTrainerParty(gTrainerBattleOpponent_A, 0, monsCount);
}

void FillFrontierTrainersParties(u8 monsCount)
{
    ZeroEnemyPartyMons();
    FillTrainerParty(gTrainerBattleOpponent_A, 0, monsCount);
    FillTrainerParty(gTrainerBattleOpponent_B, 3, monsCount);
}

static void FillTentTrainerParty(u8 monsCount)
{
    ZeroEnemyPartyMons();
    FillTentTrainerParty_(gTrainerBattleOpponent_A, 0, monsCount);
}

static void FillTrainerParty(u16 trainerId, u8 firstMonId, u8 monCount)
{
    s32 i, j;
    u16 chosenMonIndices[4];
    u8 friendship = 0xFF;
    u8 level = SetFacilityPtrsGetLevel();
    u8 fixedIV = 0;
    u8 bfMonCount;
    const u16 *monSet = ((void *)0);
    u32 otID = 0;

    if (trainerId < 300)
    {

        fixedIV = GetFrontierTrainerFixedIvs(trainerId);
        monSet = gFacilityTrainers[gTrainerBattleOpponent_A].monSet;
    }
    else if (trainerId == 500)
    {
        for (i = firstMonId; i < firstMonId + 3; i++)
            CreateBattleTowerMon(&gEnemyParty[i], &gSaveBlock2Ptr->frontier.ereaderTrainer.party[i - firstMonId]);
        return;
    }
    else if (trainerId == 1022)
    {
        CreateFrontierBrainPokemon();
        return;
    }
    else if (trainerId < 400)
    {

        for (j = 0, i = firstMonId; i < firstMonId + monCount; j++, i++)
        {
            if (gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[j].species != 0
                && gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[j].level <= level)
            {
                CreateBattleTowerMon2(&gEnemyParty[i], &gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[j], 0);
            }
        }
        return;
    }
    else
    {

        for (i = firstMonId; i < firstMonId + 3; i++)
            CreateApprenticeMon(&gEnemyParty[i], &gSaveBlock2Ptr->apprentices[trainerId - 400], i - firstMonId);
        return;
    }





    for (bfMonCount = 0; monSet[bfMonCount] != 0xFFFF; bfMonCount++)
        ;
    i = 0;
    otID = (Random() | (Random() << 16));
    while (i != monCount)
    {
        u16 monId = monSet[Random() % bfMonCount];
        if ((level == 50 || level == 20) && monId > 636)
            continue;


        for (j = 0; j < i + firstMonId; j++)
        {
            if (GetMonData(&gEnemyParty[j], 11, ((void *)0)) == gFacilityTrainerMons[monId].species)
                break;
        }
        if (j != i + firstMonId)
            continue;


        for (j = 0; j < i + firstMonId; j++)
        {
            if (GetMonData(&gEnemyParty[j], 12, ((void *)0)) != 0
             && GetMonData(&gEnemyParty[j], 12, ((void *)0)) == gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId])
                break;
        }
        if (j != i + firstMonId)
            continue;



        for (j = 0; j < i; j++)
        {
            if (chosenMonIndices[j] == monId)
                break;
        }
        if (j != i)
            continue;

        chosenMonIndices[i] = monId;


        CreateMonWithEVSpreadNatureOTID(&gEnemyParty[i + firstMonId],
                                             gFacilityTrainerMons[monId].species,
                                             level,
                                             gFacilityTrainerMons[monId].nature,
                                             fixedIV,
                                             gFacilityTrainerMons[monId].evSpread,
                                             otID);

        friendship = 0xFF;

        for (j = 0; j < 4; j++)
        {
            SetMonMoveSlot(&gEnemyParty[i + firstMonId], gFacilityTrainerMons[monId].moves[j], j);
            if (gFacilityTrainerMons[monId].moves[j] == 218)
                friendship = 0;
        }

        SetMonData(&gEnemyParty[i + firstMonId], 32, &friendship);
        SetMonData(&gEnemyParty[i + firstMonId], 12, &gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId]);
  SetMonData(&gEnemyParty[i + firstMonId], 46, &gFacilityTrainerMons[monId].abilityNum);


        i++;
    }
}


static void Unused_CreateApprenticeMons(u16 trainerId, u8 firstMonId)
{
    s32 i, j;
    u8 friendship = 0xFF;
    u8 level = 0;
    u8 fixedIV = 0;
    struct Apprentice *apprentice = &gSaveBlock2Ptr->apprentices[0];

    if (apprentice->numQuestions < 5)
        fixedIV = 6;
    else
        fixedIV = 9;

    if (gSaveBlock2Ptr->frontier.lvlMode != 0)
        level = 100;
    else
        level = 50;

    for (i = 0; i != 3; i++)
    {
        CreateMonWithEVSpread(&gEnemyParty[firstMonId + i], apprentice->party[i].species, level, fixedIV, 8);
        friendship = 0xFF;
        for (j = 0; j < 4; j++)
        {
            if (apprentice->party[i].moves[j] == 218)
                friendship = 0;
        }
        SetMonData(&gEnemyParty[firstMonId + i], 32, &friendship);
        SetMonData(&gEnemyParty[firstMonId + i], 12, &apprentice->party[i].item);
    }
}

u16 GetRandomFrontierMonFromSet(u16 trainerId)
{
    u8 level = SetFacilityPtrsGetLevel();
    const u16 *monSet = gFacilityTrainers[trainerId].monSet;
    u8 numMons = 0;
    u32 monId = monSet[numMons];

    while (monId != 0xFFFF)
    {
        numMons++;
        monId = monSet[numMons];
        if (monId == 0xFFFF)
            break;
    }

    do
    {
        monId = monSet[Random() % numMons];
    } while((level == 50 || level == 20) && monId > 636);

    return monId;
}

static void FillFactoryTrainerParty(void)
{
    ZeroEnemyPartyMons();
    if (gSaveBlock2Ptr->frontier.lvlMode != 2)
        FillFactoryFrontierTrainerParty(gTrainerBattleOpponent_A, 0);
    else
        FillFactoryTentTrainerParty(gTrainerBattleOpponent_A, 0);
}

void FillFrontierTrainerPartyFake(u8 monsCount)
{
    ZeroEnemyPartyMons();
    FillTrainerPartyFAKE(gTrainerBattleOpponent_A, 0, monsCount);
}

static void FillTrainerPartyFAKE(u16 trainerId, u8 firstMonId, u8 monCount)
{
    s32 i, j;
    u16 chosenMonIndices[4];
    u8 friendship = 0xFF;
    u8 level = SetFacilityPtrsGetLevel();
    u8 fixedIV = 0;
    u8 bfMonCount;
    const u16 *monSet = ((void *)0);
    u32 otID = 0;

    if (trainerId < 300)
    {

        fixedIV = GetFrontierTrainerFixedIvs(trainerId);
        monSet = gFacilityTrainers[gTrainerBattleOpponent_A].monSet;
    }
    else if (trainerId == 500)
    {
        for (i = firstMonId; i < firstMonId + 3; i++)
            CreateBattleTowerMon(&gEnemyParty[i], &gSaveBlock2Ptr->frontier.ereaderTrainer.party[i - firstMonId]);
        return;
    }
    else if (trainerId == 1022)
    {
        CreateFrontierBrainPokemon();
        return;
    }
    else if (trainerId < 400)
    {

        for (j = 0, i = firstMonId; i < firstMonId + monCount; j++, i++)
        {
            if (gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[j].species != 0
                && gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[j].level <= level)
            {
                CreateBattleTowerMon2(&gEnemyParty[i], &gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[j], 0);
            }
        }
        return;
    }
    else
    {

        for (i = firstMonId; i < firstMonId + 3; i++)
            CreateApprenticeMon(&gEnemyParty[i], &gSaveBlock2Ptr->apprentices[trainerId - 400], i - firstMonId);
        return;
    }





    for (bfMonCount = 0; monSet[bfMonCount] != 0xFFFF; bfMonCount++)
        ;
    i = 0;
    otID = (Random() | (Random() << 16));
    while (i != monCount)
    {
        u16 monId = monSet[Random() % bfMonCount];
        if ((level == 50 || level == 20) && monId > 636)
            continue;


        for (j = 0; j < i + firstMonId; j++)
        {
            if (GetMonData(&gEnemyParty[j], 11, ((void *)0)) == gFacilityTrainerMons[monId].species)
                break;
        }
        if (j != i + firstMonId)
            continue;


        for (j = 0; j < i + firstMonId; j++)
        {
            if (GetMonData(&gEnemyParty[j], 12, ((void *)0)) != 0
             && GetMonData(&gEnemyParty[j], 12, ((void *)0)) == gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId])
                break;
        }
        if (j != i + firstMonId)
            continue;



        for (j = 0; j < i; j++)
        {
            if (chosenMonIndices[j] == monId)
                break;
        }
        if (j != i)
            continue;

        chosenMonIndices[i] = monId;


        CreateMonWithEVSpreadNatureOTID(&gEnemyParty[i + firstMonId],
                                             gFacilityTrainerMons[monId].species,
                                             100,
                                             gFacilityTrainerMons[monId].nature,
                                             fixedIV,
                                             gFacilityTrainerMons[monId].evSpread,
                                             otID);

        friendship = 0xFF;

        for (j = 0; j < 4; j++)
        {
            SetMonMoveSlot(&gEnemyParty[i + firstMonId], gFacilityTrainerMons[monId].moves[j], j);
            if (gFacilityTrainerMons[monId].moves[j] == 218)
                friendship = 0;
        }

        SetMonData(&gEnemyParty[i + firstMonId], 32, &friendship);
        SetMonData(&gEnemyParty[i + firstMonId], 12, &gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId]);
  SetMonData(&gEnemyParty[i + firstMonId], 46, &gFacilityTrainerMons[monId].abilityNum);


        i++;
    }
}

static void FillFactoryFrontierTrainerParty(u16 trainerId, u8 firstMonId)
{
    u8 i, j;
    u8 friendship;
    u8 level;
    u8 fixedIV;
    u32 otID;

    if (trainerId < 300)
    {
        u8 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
        u8 battleMode = VarGet(0x40CE);
        u8 challengeNum = gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][0] / 7;
        if (gSaveBlock2Ptr->frontier.curChallengeBattleNum < 6)
            fixedIV = GetFactoryMonFixedIV(challengeNum, 0);
        else
            fixedIV = GetFactoryMonFixedIV(challengeNum, 1);
    }
    else if (trainerId == 500)
    {
        for (i = firstMonId; i < firstMonId + 3; i++)
            CreateBattleTowerMon(&gEnemyParty[i], &gSaveBlock2Ptr->frontier.ereaderTrainer.party[i - firstMonId]);
        return;
    }
    else if (trainerId == 1022)
    {
        FillFactoryBrainParty();
        return;
    }
    else
    {
        fixedIV = 31;
    }

    level = SetFacilityPtrsGetLevel();
    otID = ((gSaveBlock2Ptr->playerTrainerId)[0] | ((gSaveBlock2Ptr->playerTrainerId)[1] << 8) | ((gSaveBlock2Ptr->playerTrainerId)[2] << 16) | ((gSaveBlock2Ptr->playerTrainerId)[3] << 24));
    for (i = 0; i < 3; i++)
    {
        u16 monId = gFrontierTempParty[i];
        CreateMonWithEVSpreadNatureOTID(&gEnemyParty[firstMonId + i],
                                             gFacilityTrainerMons[monId].species,
                                             level,
                                             gFacilityTrainerMons[monId].nature,
                                             fixedIV,
                                             gFacilityTrainerMons[monId].evSpread,
                                             otID);

        friendship = 0;
        for (j = 0; j < 4; j++)
            SetMonMoveAvoidReturn(&gEnemyParty[firstMonId + i], gFacilityTrainerMons[monId].moves[j], j);

        SetMonData(&gEnemyParty[firstMonId + i], 32, &friendship);
        SetMonData(&gEnemyParty[firstMonId + i], 12, &gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId]);
    }
}



static void FillFactoryTentTrainerParty(u16 trainerId, u8 firstMonId)
{
    u8 i, j;
    u8 friendship;
    u8 level = 30;
    u8 fixedIV = 0;
    u32 otID = ((gSaveBlock2Ptr->playerTrainerId)[0] | ((gSaveBlock2Ptr->playerTrainerId)[1] << 8) | ((gSaveBlock2Ptr->playerTrainerId)[2] << 16) | ((gSaveBlock2Ptr->playerTrainerId)[3] << 24));

    for (i = 0; i < 3; i++)
    {
        u16 monId = gFrontierTempParty[i];
        CreateMonWithEVSpreadNatureOTID(&gEnemyParty[firstMonId + i],
                                             gFacilityTrainerMons[monId].species,
                                             level,
                                             gFacilityTrainerMons[monId].nature,
                                             fixedIV,
                                             gFacilityTrainerMons[monId].evSpread,
                                             otID);

        friendship = 0;
        for (j = 0; j < 4; j++)
        {
            SetMonMoveAvoidReturn(&gEnemyParty[firstMonId + i], gFacilityTrainerMons[monId].moves[j], j);
            if (gFacilityTrainerMons[monId].moves[j] == 218)
                friendship = 0;
        }

        SetMonData(&gEnemyParty[firstMonId + i], 32, &friendship);
        SetMonData(&gEnemyParty[firstMonId + i], 12, &gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId]);
    }
}

static const u8 sText_Greeting0[] = _("Let's both do our bests!$");
static const u8 sText_Greeting1[] = _("All right;\nI'm ready!$");
static const u8 sText_Greeting2[] = _("I'm no expert,\nso go easy on me.$");
static const u8 sText_Greeting3[] = _("Don't waste my time.$");
static const u8 sText_Greeting4[] = _("Do you have any legendaries?$");
static const u8 sText_Greeting5[] = _("Don't hold back!$");
static const u8 sText_Greeting6[] = _("Blink, and you'll\nmiss my victory.$");
static const u8 sText_Greeting7[] = _("I'm a beginner.\nPlease be nice to me.$");
static const u8 sText_Greeting8[] = _("I'll never lose.\nNot ever!$");
static const u8 sText_Greeting9[] = _("You're challenging me?\nHow cute.$");
static const u8 sText_Greeting10[] = _("Sure, I have time\nto school a kid.$");
static const u8 sText_Greeting11[] = _("En garde!$");
static const u8 sText_Greeting12[] = _("My dad buys me my Pokémon.$");
static const u8 sText_Greeting13[] = _("Please!\nBreak my streak!!$");
static const u8 sText_Greeting14[] = _("You're just another\nstepping stone on my journey.$");
static const u8 sText_Greeting15[] = _("Can we be quick?\nI have something in the oven.$");
static const u8 sText_Greeting16[] = _("So, they let just anyone in here now?$");
static const u8 sText_Greeting17[] = _("I'm a natural.\nAre you?$");
static const u8 sText_Greeting18[] = _("Remember, you can click\nRun to surrender.$");
static const u8 sText_Greeting19[] = _("Please put up a decent fight.$");
static const u8 sText_Greeting20[] = _("I'm going to sweep your team.$");
static const u8 sText_Greeting21[] = _("No mercy!$");
static const u8 sText_Greeting22[] = _("You're going to\nneed a body bag after this.$");
static const u8 sText_Greeting23[] = _("I've never lost a battle before.$");
static const u8 sText_Greeting24[] = _("Are you ready\nto get wrecked?$");
static const u8 sText_Greeting25[] = _("I'm going to send your Pokémon\nto the Shadow Realm!$");
static const u8 sText_Greeting26[] = _("What time is it?\nWhere am I?$");
static const u8 sText_Greeting27[] = _("Is there anything\nmore fun than a battle?$");
static const u8 sText_Greeting28[] = _("Strength comes from within.\nRemember that.$");
static const u8 sText_Greeting29[] = _("You don't stand a\nghost of a chance.$");
static const u8 sText_Greeting30[] = _("Let's fight\nan epic battle.$");

static const u8 sText_Greeting31[] = _("Oh, hey...");
static const u8 sText_Greeting32[] = _("Nice to meet you!");
static const u8 sText_Greeting33[] = _("Let's have fun together!");
static const u8 sText_Greeting34[] = _("Did you want to battle me?");
static const u8 sText_Greeting35[] = _("Don't drag this out.");
static const u8 sText_Greeting36[] = _("Hey, can you spare some change?");
static const u8 sText_Greeting37[] = _("What? Battling? What's going on?");
static const u8 sText_Greeting38[] = _("I'm ready to rock 'n roll!");
static const u8 sText_Greeting39[] = _("No rest for the weary, eh?");
static const u8 sText_Greeting40[] = _("You!\nI need to battle you.");
static const u8 sText_Greeting41[] = _("The wheel of fate is turning.");
static const u8 sText_Greeting42[] = _("I'm raring to go.");
static const u8 sText_Greeting43[] = _("I live for battling!");
static const u8 sText_Greeting44[] = _("Please, don't take this too seriously.");
static const u8 sText_Greeting45[] = _("Are you the hunter or the hunted?");
static const u8 sText_Greeting46[] = _("Fight the power!\nFree yourself of your chains.");
static const u8 sText_Greeting47[] = _("Sure, I can fit in a battle.");
static const u8 sText_Greeting48[] = _("Please don't hurt\nmy Pokémon too badly.");
static const u8 sText_Greeting49[] = _("I'm hungry.");
static const u8 sText_Greeting50[] = _("Good luck, Trainer.\nDo your best.");
void getintro2(void) {
 switch(Random()%51){
 case 0:
    StringCopy(gStringVar4, sText_Greeting0);
    break;
    case 1:
    StringCopy(gStringVar4, sText_Greeting1);
    break;
    case 2:
    StringCopy(gStringVar4, sText_Greeting2);
    break;
    case 3:
    StringCopy(gStringVar4, sText_Greeting3);
    break;
    case 4:
    StringCopy(gStringVar4, sText_Greeting4);
    break;
    case 5:
    StringCopy(gStringVar4, sText_Greeting5);
    break;
    case 6:
    StringCopy(gStringVar4, sText_Greeting6);
    break;
    case 7:
    StringCopy(gStringVar4, sText_Greeting7);
    break;
    case 8:
    StringCopy(gStringVar4, sText_Greeting8);
    break;
    case 9:
    StringCopy(gStringVar4, sText_Greeting9);
    break;
    case 10:
    StringCopy(gStringVar4, sText_Greeting10);
    break;
    case 11:
    StringCopy(gStringVar4, sText_Greeting11);
    break;
    case 12:
    StringCopy(gStringVar4, sText_Greeting12);
    break;
    case 13:
    StringCopy(gStringVar4, sText_Greeting13);
    break;
    case 14:
    StringCopy(gStringVar4, sText_Greeting14);
    break;
    case 15:
    StringCopy(gStringVar4, sText_Greeting15);
    break;
    case 16:
    StringCopy(gStringVar4, sText_Greeting16);
    break;
    case 17:
    StringCopy(gStringVar4, sText_Greeting17);
    break;
    case 18:
    StringCopy(gStringVar4, sText_Greeting18);
    break;
    case 19:
    StringCopy(gStringVar4, sText_Greeting19);
    break;
    case 20:
    StringCopy(gStringVar4, sText_Greeting20);
    break;
    case 21:
    StringCopy(gStringVar4, sText_Greeting21);
    break;
    case 22:
    StringCopy(gStringVar4, sText_Greeting22);
    break;
    case 23:
    StringCopy(gStringVar4, sText_Greeting23);
    break;
    case 24:
    StringCopy(gStringVar4, sText_Greeting24);
    break;
    case 25:
    StringCopy(gStringVar4, sText_Greeting25);
    break;
    case 26:
    StringCopy(gStringVar4, sText_Greeting26);
    break;
    case 27:
    StringCopy(gStringVar4, sText_Greeting27);
    break;
    case 28:
    StringCopy(gStringVar4, sText_Greeting28);
    break;
    case 29:
    StringCopy(gStringVar4, sText_Greeting29);
    break;
    case 30:
    StringCopy(gStringVar4, sText_Greeting30);
    break;
 case 31:
    StringCopy(gStringVar4, sText_Greeting31);
    break;
    case 32:
    StringCopy(gStringVar4, sText_Greeting32);
    break;
    case 33:
    StringCopy(gStringVar4, sText_Greeting33);
    break;
    case 34:
    StringCopy(gStringVar4, sText_Greeting34);
    break;
    case 35:
    StringCopy(gStringVar4, sText_Greeting35);
    break;
    case 36:
    StringCopy(gStringVar4, sText_Greeting36);
    break;
    case 37:
    StringCopy(gStringVar4, sText_Greeting37);
    break;
    case 38:
    StringCopy(gStringVar4, sText_Greeting38);
    break;
    case 39:
    StringCopy(gStringVar4, sText_Greeting39);
    break;
    case 40:
    StringCopy(gStringVar4, sText_Greeting40);
    break;
    case 41:
    StringCopy(gStringVar4, sText_Greeting41);
    break;
    case 42:
    StringCopy(gStringVar4, sText_Greeting42);
    break;
    case 43:
    StringCopy(gStringVar4, sText_Greeting43);
    break;
    case 44:
    StringCopy(gStringVar4, sText_Greeting44);
    break;
    case 45:
    StringCopy(gStringVar4, sText_Greeting45);
    break;
    case 46:
    StringCopy(gStringVar4, sText_Greeting46);
    break;
    case 47:
    StringCopy(gStringVar4, sText_Greeting47);
    break;
    case 48:
    StringCopy(gStringVar4, sText_Greeting48);
    break;
    case 49:
    StringCopy(gStringVar4, sText_Greeting49);
    break;
    case 50:
    StringCopy(gStringVar4, sText_Greeting50);
    break;
 }

}
void FrontierSpeechToString(const u16 *words)
{
   getintro2();
}
static void GetOpponentIntroSpeech(void)
{
    u16 trainerId;
    SetFacilityPtrsGetLevel();

    if (gSpecialVar_0x8005)
        trainerId = gTrainerBattleOpponent_B;
    else
        trainerId = gTrainerBattleOpponent_A;

    if (trainerId == 500)
        FrontierSpeechToString(gSaveBlock2Ptr->frontier.ereaderTrainer.greeting);
    else if (trainerId < 300)
        getintro2();
    else if (trainerId < 400)
        FrontierSpeechToString(gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].greeting);
    else
        BufferApprenticeChallengeText(trainerId - 400);
}

static void HandleSpecialTrainerBattleEnd(void)
{
    s32 i;

    RecordedBattle_SaveBattleOutcome();
    switch (gBattleScripting.specialTrainerBattleType)
    {
    case 0:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
        if (gSaveBlock2Ptr->frontier.battlesCount < 0xFFFFFF)
        {
            gSaveBlock2Ptr->frontier.battlesCount++;
            if (gSaveBlock2Ptr->frontier.battlesCount % 20 == 0)
                UpdateGymLeaderRematch();
        }
        else
        {
            gSaveBlock2Ptr->frontier.battlesCount = 0xFFFFFF;
        }
        break;
    case 1:
 case 12:
        for (i = 0; i < 6; i++)
        {
            u16 itemBefore = GetMonData(&gSaveBlock1Ptr->playerParty[i], 12);
            SetMonData(&gPlayerParty[i], 12, &itemBefore);
        }
        break;
    case 2:
        CopyEReaderTrainerFarewellMessage();
        break;
    case 11:
        for (i = 0; i < 3; i++)
        {
            if (GetMonData(&gPlayerParty[i], 11))
                gSaveBlock1Ptr->playerParty[i] = gPlayerParty[i];
        }
        break;
    }

    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

static void Task_StartBattleAfterTransition(u8 taskId)
{
    if (IsBattleTransitionDone() == 1)
    {
        gMain.savedCallback = HandleSpecialTrainerBattleEnd;
        SetMainCallback2(CB2_InitBattle);
        DestroyTask(taskId);
    }
}

void DoSpecialTrainerBattle(void)
{
    s32 i;

    gBattleScripting.specialTrainerBattleType = gSpecialVar_0x8004;
    switch (gSpecialVar_0x8004)
    {
    case 0:
        gBattleTypeFlags = (1 << 3) | (1 << 8);
        switch (VarGet(0x40CE))
        {
        case 0:
            FillFrontierTrainerParty(3);
            break;
        case 1:
            FillFrontierTrainerParty(4);
            gBattleTypeFlags |= (1 << 0);
            break;
        case 2:
            FillFrontierTrainersParties(2);
            gPartnerTrainerId = gSaveBlock2Ptr->frontier.trainerIds[17];
            FillPartnerParty(gPartnerTrainerId);
            gBattleTypeFlags |= (1 << 0) | (1 << 22) | (1 << 6) | (1 << 15);
            break;
        case 3:
            gBattleTypeFlags |= (1 << 0) | (1 << 1) | (1 << 6) | (1 << 23);
            FillFrontierTrainersParties(2);
            break;
        }
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(0));
        break;
    case 1:
        for (i = 0; i < 6; i++)
        {
            u16 itemBefore = GetMonData(&gPlayerParty[i], 12);
            SetMonData(&gSaveBlock1Ptr->playerParty[i], 12, &itemBefore);
        }
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(12));
        break;
    case 2:
        ZeroEnemyPartyMons();
        for (i = 0; i < 3; i++)
            CreateBattleTowerMon(&gEnemyParty[i], &gSaveBlock2Ptr->frontier.ereaderTrainer.party[i]);
        gBattleTypeFlags = (1 << 3) | (1 << 11);
        gTrainerBattleOpponent_A = 0;
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(13));
        break;
    case 3:
        gBattleTypeFlags = (1 << 3) | (1 << 16);
        if (VarGet(0x40CE) == 1)
            gBattleTypeFlags |= (1 << 0);
        if (gTrainerBattleOpponent_A == 1022)
            FillFrontierTrainerParty(2);
        CreateTask(Task_StartBattleAfterTransition, 1);
        sub_806E694(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(3));
        break;
    case 4:
        gBattleTypeFlags = (1 << 3) | (1 << 17);
        if (VarGet(0x40CE) == 1)
            gBattleTypeFlags |= (1 << 0);
        if (gSaveBlock2Ptr->frontier.lvlMode != 2)
            FillFrontierTrainerParty(3);
        else
            FillTentTrainerParty(3);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(4));
        break;
    case 5:
        gBattleTypeFlags = (1 << 3) | (1 << 18);
        if (gSaveBlock2Ptr->frontier.lvlMode != 2)
            FillFrontierTrainerParty(3);
        else
            FillTentTrainerParty(3);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(5));
        break;
    case 6:
        gBattleTypeFlags = (1 << 3) | (1 << 19);
        if (VarGet(0x40CE) == 1)
            gBattleTypeFlags |= (1 << 0);
        FillFactoryTrainerParty();
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(6));
        break;
 case 12:
  gTrainerBattleOpponent_A = 299;
        gBattleTypeFlags = (1 << 3) | (1 << 8);
        FillFrontierTrainerPartyFake(6);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(0));
        break;
    case 7:
        gBattleTypeFlags = (1 << 3) | (1 << 8);
        FillFrontierTrainerParty(3);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(7));
        break;
    case 10:
        gBattleTypeFlags = (1 << 3) | (1 << 21);
        FillFrontierTrainerParty(3);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(10));
        break;
    case 9:
        gBattleTypeFlags = (1 << 3) | (1 << 8) | (1 << 0) | (1 << 15);
        FillFrontierTrainersParties(1);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(GetSpecialBattleTransition(7));
        break;
    case 8:
        gBattleTypeFlags = (1 << 3) | (1 << 0) | (1 << 15) | (1 << 6) | (1 << 22);
        FillPartnerParty(3075);
        gApproachingTrainerId = 0;
        BattleSetup_ConfigureTrainerBattle(MossdeepCity_SpaceCenter_2F_EventScript_MaxieTrainer + 1);
        gApproachingTrainerId = 1;
        BattleSetup_ConfigureTrainerBattle(MossdeepCity_SpaceCenter_2F_EventScript_TabithaTrainer + 1);
        gPartnerTrainerId = 3075;
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        BattleTransition_StartOnField(18);
        break;
    case 11:
        if (gSpecialVar_0x8005 & 1)
        {
            gBattleTypeFlags = (1 << 0) | (1 << 6) | (1 << 22);
        }
        else if (gSpecialVar_0x8005 & 2)
        {
            gTrainerBattleOpponent_B = 0xFFFF;
            gBattleTypeFlags = (1 << 3) | (1 << 0) | (1 << 6) | (1 << 22);
        }
        else
        {
            gBattleTypeFlags = (1 << 3) | (1 << 0) | (1 << 15) | (1 << 6) | (1 << 22);
        }

        gPartnerSpriteId = VarGet(gSpecialVar_0x8007);
        gPartnerTrainerId = VarGet(gSpecialVar_0x8006) + 3076;
        FillPartnerParty(gPartnerTrainerId);
        CreateTask(Task_StartBattleAfterTransition, 1);
        PlayMapChosenOrBattleBGM(0);
        if (gSpecialVar_0x8005 & 1)
            BattleTransition_StartOnField(GetWildBattleTransition());
        else
            BattleTransition_StartOnField(GetTrainerBattleTransition());

        if (gSpecialVar_0x8005 & 0x80)
            gBattleScripting.specialTrainerBattleType = 0xFF;
        break;
    }
}

static void SaveCurrentWinStreak(void)
{
    u8 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u8 battleMode = VarGet(0x40CE);
    u16 winStreak = GetCurrentBattleTowerWinStreak(lvlMode, battleMode);

    if (gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] < winStreak)
        gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] = winStreak;
}

static void sub_8163EE4(void)
{
    s32 i;
    u8 lvlMode, battleMode, class;
    struct EmeraldBattleTowerRecord *playerRecord = &gSaveBlock2Ptr->frontier.towerPlayer;

    ClearBattleTowerRecord(playerRecord);
    lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    battleMode = VarGet(0x40CE);
    if (gSaveBlock2Ptr->playerGender != 0)
    {
        class = gTowerFemaleFacilityClasses[(gSaveBlock2Ptr->playerTrainerId[0] +
                                       gSaveBlock2Ptr->playerTrainerId[1] +
                                       gSaveBlock2Ptr->playerTrainerId[2] +
                                       gSaveBlock2Ptr->playerTrainerId[3]) % (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0]))];
    }
    else
    {
        class = gTowerMaleFacilityClasses[(gSaveBlock2Ptr->playerTrainerId[0] +
                                     gSaveBlock2Ptr->playerTrainerId[1] +
                                     gSaveBlock2Ptr->playerTrainerId[2] +
                                     gSaveBlock2Ptr->playerTrainerId[3]) % (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0]))];
    }
    playerRecord->lvlMode = lvlMode;
    playerRecord->facilityClass = class;
    CopyTrainerId(playerRecord->trainerId, gSaveBlock2Ptr->playerTrainerId);
    StringCopy7(playerRecord->name, gSaveBlock2Ptr->playerName);
    playerRecord->winStreak = GetCurrentBattleTowerWinStreak(lvlMode, battleMode);

    for (i = 0; i < 6; i++)
    {
        playerRecord->greeting[i] = gSaveBlock1Ptr->easyChatBattleStart[i];
        playerRecord->speechWon[i] = gSaveBlock1Ptr->easyChatBattleWon[i];
        playerRecord->speechLost[i] = gSaveBlock1Ptr->easyChatBattleLost[i];
    }

    for (i = 0; i < 4; i++)
    {
        if (gSaveBlock2Ptr->frontier.selectedPartyMons[i] != 0)
            sub_80686FC(&gPlayerParty[gSaveBlock2Ptr->frontier.selectedPartyMons[i] - 1], &playerRecord->party[i]);
    }

    playerRecord->language = gGameLanguage;
    CalcEmeraldBattleTowerChecksum(&gSaveBlock2Ptr->frontier.towerPlayer);
    SaveCurrentWinStreak();
}

static void SaveTowerChallenge(void)
{
    u16 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u16 battleMode = VarGet(0x40CE);
    s32 challengeNum = (signed)(gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] / 7);

    if (gSpecialVar_0x8005 == 0 && (challengeNum > 1 || gSaveBlock2Ptr->frontier.curChallengeBattleNum != 0))
        sub_8163EE4();

    gSaveBlock2Ptr->frontier.challengeStatus = gSpecialVar_0x8005;
    VarSet((0x4000 + 0x0), 0);
    gSaveBlock2Ptr->frontier.challengePaused = 1;
    SaveGameFrontier();
}

static void nullsub_61(void)
{

}

static void nullsub_116(void)
{

}

static void GetApprenticeMultiPartnerParty(u16 trainerId)
{
    s32 i, count;
    u32 validSpecies[6 / 2];
    u16 species1 = GetMonData(&gPlayerParty[0], 11, ((void *)0));
    u16 species2 = GetMonData(&gPlayerParty[1], 11, ((void *)0));

    count = 0;
    for (i = 0; i < 6 / 2; i++)
    {
        u16 apprenticeSpecies = gSaveBlock2Ptr->apprentices[trainerId - 400].party[i].species;
        if (apprenticeSpecies != species1 && apprenticeSpecies != species2)
        {
            validSpecies[count] = i;
            count++;
        }
    }

    gFrontierTempParty[0] = validSpecies[Random() % count];
    do
    {
        gFrontierTempParty[1] = validSpecies[Random() % count];
    } while (gFrontierTempParty[0] == gFrontierTempParty[1]);
}

static void GetRecordMixFriendMultiPartnerParty(u16 trainerId)
{
    s32 i, count;
    u32 validSpecies[3];
    u32 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u16 species1 = GetMonData(&gPlayerParty[0], 11, ((void *)0));
    u16 species2 = GetMonData(&gPlayerParty[1], 11, ((void *)0));

    count = 0;
    for (i = 0; i < 4; i++)
    {
        if (gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[i].species != species1
            && gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[i].species != species2
            && gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[i].level <= GetFrontierEnemyMonLevel(lvlMode)
            && gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[i].species != 0)
        {
            validSpecies[count] = i;
            count++;
        }
    }

    gFrontierTempParty[2] = validSpecies[Random() % count];
    do
    {
        gFrontierTempParty[3] = validSpecies[Random() % count];
    } while (gFrontierTempParty[2] == gFrontierTempParty[3]);
}

static void LoadMultiPartnerCandidatesData(void)
{
    s32 i, j, k;
    u32 spArray[5];
    s32 r10;
    u16 trainerId;
    u16 monId;
    u32 lvlMode, battleMode;
    s32 challengeNum;
    u32 species1, species2;
    u32 level;
    struct ObjectEventTemplate *objEventTemplates;

    objEventTemplates = gSaveBlock1Ptr->objectEventTemplates;
    lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    battleMode = VarGet(0x40CE);
    challengeNum = gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] / 7;
    species1 = GetMonData(&gPlayerParty[0], 11, ((void *)0));
    species2 = GetMonData(&gPlayerParty[1], 11, ((void *)0));
    level = SetFacilityPtrsGetLevel();

    j = 0;
    do
    {
        do
        {
            trainerId = GetRandomScaledFrontierTrainerId(challengeNum, 0);
            for (i = 0; i < j; i++)
            {
                if (gSaveBlock2Ptr->frontier.trainerIds[i] == trainerId)
                    break;
                if (gFacilityTrainers[gSaveBlock2Ptr->frontier.trainerIds[i]].facilityClass == gFacilityTrainers[trainerId].facilityClass)
                    break;
            }
        } while (i != j);
        gSaveBlock2Ptr->frontier.trainerIds[j] = trainerId;
        j++;
    } while (j < 6);

    r10 = 8;
    for (i = 0; i < 6; i++)
    {
        trainerId = gSaveBlock2Ptr->frontier.trainerIds[i];
        objEventTemplates[i + 1].graphicsId = GetBattleFacilityTrainerGfxId(trainerId);
        for (j = 0; j < 2; j++)
        {
            while (1)
            {
                monId = GetRandomFrontierMonFromSet(trainerId);
                if (j % 2 != 0 && gFacilityTrainerMons[gSaveBlock2Ptr->frontier.trainerIds[r10 - 1]].itemTableId == gFacilityTrainerMons[monId].itemTableId)
                    continue;

                for (k = 8; k < r10; k++)
                {
                    if (gFacilityTrainerMons[gSaveBlock2Ptr->frontier.trainerIds[k]].species == gFacilityTrainerMons[monId].species)
                        break;
                    if (species1 == gFacilityTrainerMons[monId].species)
                        break;
                    if (species2 == gFacilityTrainerMons[monId].species)
                        break;
                }
                if (k == r10)
                    break;
            }

            gSaveBlock2Ptr->frontier.trainerIds[r10] = monId;
            r10++;
        }
    }

    r10 = 0;
    ValidateApprenticesChecksums();
    for (i = 0; i < 4; i++)
    {
        if (gSaveBlock2Ptr->apprentices[i].lvlMode != 0
            && sApprenticeChallengeThreshold[gSaveBlock2Ptr->apprentices[i].numQuestions] / 7 <= challengeNum
            && gSaveBlock2Ptr->apprentices[i].lvlMode - 1 == lvlMode)
        {
            k = 0;
            for (j = 0; j < 6 / 2; j++)
            {
                if (species1 != gSaveBlock2Ptr->apprentices[i].party[j].species
                    && species2 != gSaveBlock2Ptr->apprentices[i].party[j].species)
                {
                    k++;
                }
            }
            if (k > 2)
            {
                spArray[r10] = i + 400;
                r10++;
            }
        }
    }
    if (r10 != 0)
    {
        gSaveBlock2Ptr->frontier.trainerIds[6] = spArray[Random() % r10];
        objEventTemplates[7].graphicsId = GetBattleFacilityTrainerGfxId(gSaveBlock2Ptr->frontier.trainerIds[6]);
        FlagClear(0x360);
        GetApprenticeMultiPartnerParty(gSaveBlock2Ptr->frontier.trainerIds[6]);
    }

    r10 = 0;
    for (i = 0; i < 5; i++)
    {
        u32 *record = (u32*)(&gSaveBlock2Ptr->frontier.towerRecords[i]);
        u32 recordHasData = 0;
        u32 checksum = 0;
        for (j = 0; j < (sizeof(struct EmeraldBattleTowerRecord) - 4) / 4; j++)
        {
            recordHasData |= record[j];
            checksum += record[j];
        }

        if (gSaveBlock2Ptr->frontier.towerRecords[i].winStreak / 7 <= challengeNum
            && gSaveBlock2Ptr->frontier.towerRecords[i].lvlMode == lvlMode
            && recordHasData
            && gSaveBlock2Ptr->frontier.towerRecords[i].checksum == checksum)
        {
            k = 0;
            for (j = 0; j < 4; j++)
            {
                if (species1 != gSaveBlock2Ptr->frontier.towerRecords[i].party[j].species
                    && species2 != gSaveBlock2Ptr->frontier.towerRecords[i].party[j].species
                    && gSaveBlock2Ptr->frontier.towerRecords[i].party[j].level <= GetFrontierEnemyMonLevel(lvlMode)
                    && gSaveBlock2Ptr->frontier.towerRecords[i].party[j].species != 0)
                {
                    k++;
                }
            }
            if (k > 1)
            {
                spArray[r10] = i + 300;
                r10++;
            }
        }
    }
    if (r10 != 0)
    {
        gSaveBlock2Ptr->frontier.trainerIds[7] = spArray[Random() % r10];
        objEventTemplates[8].graphicsId = GetBattleFacilityTrainerGfxId(gSaveBlock2Ptr->frontier.trainerIds[7]);
        FlagClear(0x361);
        GetRecordMixFriendMultiPartnerParty(gSaveBlock2Ptr->frontier.trainerIds[7]);
    }
}

static void sub_81646BC(u16 trainerId, u16 monId)
{
    u16 move = 0;
    u16 species = 0;
    SetFacilityPtrsGetLevel();

    if (trainerId != 500)
    {
        if (trainerId < 300)
        {
            move = gFacilityTrainerMons[monId].moves[0];
            species = gFacilityTrainerMons[monId].species;
        }
        else if (trainerId < 400)
        {
            move = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[gFrontierTempParty[gSpecialVar_0x8005 + 1]].moves[0];
            species = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].party[gFrontierTempParty[gSpecialVar_0x8005 + 1]].species;
        }
        else
        {
            s32 i;

            move = gSaveBlock2Ptr->apprentices[trainerId - 400].party[gFrontierTempParty[gSpecialVar_0x8005 - 1]].moves[0];
            species = gSaveBlock2Ptr->apprentices[trainerId - 400].party[gFrontierTempParty[gSpecialVar_0x8005 - 1]].species;
            for (i = 0; i < 7; i++)
                gStringVar3[i] = gSaveBlock2Ptr->apprentices[trainerId - 400].playerName[i];
            gStringVar3[i] = 0xFF;
            ConvertInternationalString(gStringVar3, gSaveBlock2Ptr->apprentices[trainerId - 400].language);
        }
    }

    StringCopy(gStringVar1, gMoveNames[move]);
    StringCopy(gStringVar2, gSpeciesNames[species]);
}

static void ShowPartnerCandidateMessage(void)
{
    s32 i, j, partnerId;
    s32 monId;
    s32 level = SetFacilityPtrsGetLevel();
    u16 winStreak = GetCurrentFacilityWinStreak();
    s32 challengeNum = winStreak / 7;
    s32 k = gSpecialVar_LastTalked - 2;
    s32 trainerId = gSaveBlock2Ptr->frontier.trainerIds[k];

    for (partnerId = 0; partnerId < (size_t)(sizeof(sPartnerTrainerTextTables) / sizeof((sPartnerTrainerTextTables)[0])); partnerId++)
    {
        if (sPartnerTrainerTextTables[partnerId].facilityClass == GetFrontierTrainerFacilityClass(trainerId))
            break;
    }

    switch (gSpecialVar_0x8005)
    {
    case 0:
        if (trainerId == 500)
            return;
        if (trainerId < 300)
        {
            GetFrontierTrainerName(gStringVar1, trainerId);
        }
        else if (trainerId < 400)
        {
            GetFrontierTrainerName(gStringVar1, trainerId);
        }
        else
        {
            s32 i;
            for (i = 0; i < 7; i++)
                gStringVar1[i] = gSaveBlock2Ptr->apprentices[trainerId - 400].playerName[i];
            gStringVar1[i] = 0xFF;
            ConvertInternationalString(gStringVar1, gSaveBlock2Ptr->apprentices[trainerId - 400].language);
            ConvertIntToDecimalStringN(gStringVar2, gSaveBlock2Ptr->apprentices[trainerId - 400].number, STR_CONV_MODE_LEFT_ALIGN, 3);
            GetFrontierTrainerName(gStringVar3, trainerId);
        }
        break;
    case 1:
        monId = gSaveBlock2Ptr->frontier.trainerIds[8 + k * 2];
        sub_81646BC(trainerId, monId);
        break;
    case 2:
        monId = gSaveBlock2Ptr->frontier.trainerIds[9 + k * 2];
        sub_81646BC(trainerId, monId);
        break;
    case 3:
        gPartnerTrainerId = trainerId;
        if (trainerId < 300)
        {
            gSaveBlock2Ptr->frontier.trainerIds[18] = gSaveBlock2Ptr->frontier.trainerIds[8 + k * 2];
            gSaveBlock2Ptr->frontier.trainerIds[19] = gSaveBlock2Ptr->frontier.trainerIds[9 + k * 2];
        }
        else if (trainerId < 400)
        {
            gSaveBlock2Ptr->frontier.trainerIds[18] = gFrontierTempParty[2];
            gSaveBlock2Ptr->frontier.trainerIds[19] = gFrontierTempParty[3];
        }
        else
        {
            gSaveBlock2Ptr->frontier.trainerIds[18] = gFrontierTempParty[0];
            gSaveBlock2Ptr->frontier.trainerIds[19] = gFrontierTempParty[1];
        }
        for (k = 0; k < 14; k++)
        {
            while (1)
            {
                i = GetRandomScaledFrontierTrainerId(challengeNum, k / 2);
                if (gPartnerTrainerId == i)
                    continue;

                for (j = 0; j < k; j++)
                {
                    if (gSaveBlock2Ptr->frontier.trainerIds[j] == i)
                        break;
                }
                if (j == k)
                    break;
            }
            gSaveBlock2Ptr->frontier.trainerIds[k] = i;
        }
        gSaveBlock2Ptr->frontier.trainerIds[17] = trainerId;
        break;
    case 4:
        break;
    }

    if (trainerId == 500)
        return;


    if (trainerId < 300)
    {
        ShowFieldMessage(sPartnerTrainerTextTables[partnerId].strings[gSpecialVar_0x8005]);
    }
    else if (trainerId < 400)
    {
        ShowFieldMessage(sPartnerTrainerTextTables[partnerId].strings[gSpecialVar_0x8005]);
    }

    else
    {
        u8 apprenticeId = gSaveBlock2Ptr->apprentices[trainerId - 400].id;
        ShowFieldMessage(sPartnerApprenticeTextTables[apprenticeId][gSpecialVar_0x8005]);
    }
}

static void LoadLinkMultiOpponentsData(void)
{
    s32 challengeNum;
    s32 i, j;
    s32 trainerId = 0;
    u32 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u32 battleMode = VarGet(0x40CE);
    u32 battleNum = gSaveBlock2Ptr->frontier.curChallengeBattleNum;
    GetMultiplayerId();

    switch (gSpecialVar_Result)
    {
    case 0:
        if (battleMode == 3)
        {
            challengeNum = gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode] / 7;
            if (IsLinkTaskFinished())
            {
                SendBlock(bitmask_all_link_players_but_self(), &challengeNum, sizeof(challengeNum));
                gSpecialVar_Result = 1;
            }
        }
        else
        {
            gSpecialVar_Result = 6;
        }
        break;
    case 1:
        if ((GetBlockReceivedStatus() & 3) == 3)
        {
            ResetBlockReceivedFlags();
            if (gBlockRecvBuffer[0][0] > gBlockRecvBuffer[1][0])
                challengeNum = gBlockRecvBuffer[0][0];
            else
                challengeNum = gBlockRecvBuffer[1][0];
            for (i = 0; i < 14; i++)
            {
                do
                {
                    trainerId = GetRandomScaledFrontierTrainerId(challengeNum, i / 2);
                    for (j = 0; j < i; j++)
                    {
                        if (gSaveBlock2Ptr->frontier.trainerIds[j] == trainerId)
                            break;
                    }
                } while (i != j);
                if (i == j)
                    gSaveBlock2Ptr->frontier.trainerIds[i] = trainerId;
            }
            gSpecialVar_Result = 2;
        }
        break;
    case 2:
        if (IsLinkTaskFinished())
        {
            SendBlock(bitmask_all_link_players_but_self(), &gSaveBlock2Ptr->frontier.trainerIds, sizeof(gSaveBlock2Ptr->frontier.trainerIds));
            gSpecialVar_Result = 3;
        }
        break;
    case 3:
        if ((GetBlockReceivedStatus() & 3) == 3)
        {
            ResetBlockReceivedFlags();
            memcpy(&gSaveBlock2Ptr->frontier.trainerIds, gBlockRecvBuffer, sizeof(gSaveBlock2Ptr->frontier.trainerIds));
            gTrainerBattleOpponent_A = gSaveBlock2Ptr->frontier.trainerIds[battleNum * 2];
            gTrainerBattleOpponent_B = gSaveBlock2Ptr->frontier.trainerIds[battleNum * 2 + 1];
            SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_A, 0);
            SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_B, 1);
            if (gReceivedRemoteLinkPlayers != 0 && gWirelessCommType == 0)
                gSpecialVar_Result = 4;
            else
                gSpecialVar_Result = 6;
        }
        break;
    case 4:
        SetCloseLinkCallback();
        gSpecialVar_Result = 5;
        break;
    case 5:
        if (gReceivedRemoteLinkPlayers == 0)
        {
            gSpecialVar_Result = 6;
        }
        break;
    case 6:
        return;
    }
}

static void sub_8164DCC(void)
{
    if (gWirelessCommType != 0)
        SetCloseLinkCallback();
}

static void SetMultiPartnerGfx(void)
{

    SetBattleFacilityTrainerGfxId(gSaveBlock2Ptr->frontier.trainerIds[17], 0xF);
}

static void SetTowerInterviewData(void)
{
    s32 i;
    u8 text[32];

    if (VarGet(0x40CE) != 0)
        return;

    GetFrontierTrainerName(text, gTrainerBattleOpponent_A);
    StripExtCtrlCodes(text);
    StringCopy(gSaveBlock2Ptr->frontier.towerInterview.opponentName, text);
    GetBattleTowerTrainerLanguage(&gSaveBlock2Ptr->frontier.towerInterview.opponentLanguage, gTrainerBattleOpponent_A);
    gSaveBlock2Ptr->frontier.towerInterview.opponentSpecies = GetMonData(&gEnemyParty[gBattlerPartyIndexes[1]], 11, ((void *)0));
    gSaveBlock2Ptr->frontier.towerInterview.playerSpecies = GetMonData(&gPlayerParty[gBattlerPartyIndexes[0]], 11, ((void *)0));
    for (i = 0; i < 10 + 1; i++)
        gSaveBlock2Ptr->frontier.towerInterview.opponentMonNickname[i] = gBattleMons[0].nickname[i];
    gSaveBlock2Ptr->frontier.towerBattleOutcome = gBattleOutcome;
}

static void ValidateBattleTowerRecordChecksums(void)
{
    s32 i, j;
    u32 *record = (u32*)(&gSaveBlock2Ptr->frontier.towerPlayer);
    u32 checksum = 0;

    for (j = 0; j < (sizeof(struct EmeraldBattleTowerRecord) - 4) / 4; j++)
    {
        checksum += record[j];
    }
    if (gSaveBlock2Ptr->frontier.towerPlayer.checksum != checksum)
        ClearBattleTowerRecord(&gSaveBlock2Ptr->frontier.towerPlayer);

    for (i = 0; i < 5; i++)
    {
        record = (u32*)(&gSaveBlock2Ptr->frontier.towerRecords[i]);
        checksum = 0;
        for (j = 0; j < (sizeof(struct EmeraldBattleTowerRecord) - 4) / 4; j++)
        {
            checksum += record[j];
        }
        if (gSaveBlock2Ptr->frontier.towerRecords[i].checksum != checksum)
            ClearBattleTowerRecord(&gSaveBlock2Ptr->frontier.towerRecords[i]);
    }
}

void CalcEmeraldBattleTowerChecksum(struct EmeraldBattleTowerRecord *record)
{
    u32 i;

    record->checksum = 0;
    for (i = 0; i < (sizeof(struct EmeraldBattleTowerRecord) - 4) / 4; i++)
        record->checksum += ((u32 *)record)[i];
}

void CalcRubyBattleTowerChecksum(struct RSBattleTowerRecord *record)
{
    u32 i;

    record->checksum = 0;
    for (i = 0; i < (sizeof(struct RSBattleTowerRecord) - 4) / 4; i++)
        record->checksum += ((u32 *)record)[i];
}

static void ClearBattleTowerRecord(struct EmeraldBattleTowerRecord *record)
{
    u32 i;

    for (i = 0; i < sizeof(struct EmeraldBattleTowerRecord) / 4; i++)
        ((u32 *)record)[i] = 0;
}

u16 GetCurrentBattleTowerWinStreak(u8 lvlMode, u8 battleMode)
{
    u16 winStreak = gSaveBlock2Ptr->frontier.towerWinStreaks[battleMode][lvlMode];

    if (winStreak > 9999)
        return 9999;
    else
        return winStreak;
}

static u8 GetMonCountForBattleMode(u8 battleMode)
{
    u8 partySizes[(size_t)(sizeof(sBattleTowerPartySizes) / sizeof((sBattleTowerPartySizes)[0]))];
    memcpy(partySizes, sBattleTowerPartySizes, sizeof(sBattleTowerPartySizes));

    if (battleMode < (size_t)(sizeof(sBattleTowerPartySizes) / sizeof((sBattleTowerPartySizes)[0])))
        return partySizes[battleMode];
    else
        return 3;
}

struct RibbonCounter
{
    u8 partyIndex;
    u8 count;
};

static void AwardBattleTowerRibbons(void)
{
    s32 i;
    u32 partyIndex;
    struct RibbonCounter ribbons[3];
    u8 ribbonType = 0;
    u8 lvlMode = gSaveBlock2Ptr->frontier.lvlMode;
    u8 battleMode = VarGet(0x40CE);
    u8 monCount = GetMonCountForBattleMode(battleMode);

    if (lvlMode != 0)
        ribbonType = 69;
    else
        ribbonType = 68;

    gSpecialVar_Result = 0;

    if (GetCurrentBattleTowerWinStreak(lvlMode, battleMode) > 55)
    {
        for (i = 0; i < monCount; i++)
        {
            partyIndex = gSaveBlock2Ptr->frontier.selectedPartyMons[i] - 1;
            ribbons[i].partyIndex = partyIndex;
            ribbons[i].count = 0;
            if (!GetMonData(&gSaveBlock1Ptr->playerParty[partyIndex], ribbonType))
            {
                gSpecialVar_Result = 1;
                SetMonData(&gSaveBlock1Ptr->playerParty[partyIndex], ribbonType, &gSpecialVar_Result);
                ribbons[i].count = GetRibbonCount(&gSaveBlock1Ptr->playerParty[partyIndex]);
            }
        }
    }

    if (gSpecialVar_Result)
    {
        IncrementGameStat(42);
        for (i = 1; i < monCount; i++)
        {
            if (ribbons[i].count > ribbons[0].count)
            {
                struct RibbonCounter prevBest = ribbons[0];
                ribbons[0] = ribbons[i];
                ribbons[i] = prevBest;
            }
        }
        if (ribbons[0].count > 4)
        {
            TryPutSpotTheCutiesOnAir(&gSaveBlock1Ptr->playerParty[ribbons[0].partyIndex], ribbonType);
        }
    }
}



static void FillEReaderTrainerWithPlayerData(void)
{
    struct BattleTowerEReaderTrainer *ereaderTrainer = &gSaveBlock2Ptr->frontier.ereaderTrainer;
    s32 i, j;

    if (gSaveBlock2Ptr->playerGender != 0)
    {
        ereaderTrainer->facilityClass = gTowerFemaleFacilityClasses[(gSaveBlock2Ptr->playerTrainerId[0] + gSaveBlock2Ptr->playerTrainerId[1]
                                                        + gSaveBlock2Ptr->playerTrainerId[2] + gSaveBlock2Ptr->playerTrainerId[3]) % (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0]))];
    }
    else
    {
        ereaderTrainer->facilityClass = gTowerMaleFacilityClasses[(gSaveBlock2Ptr->playerTrainerId[0] + gSaveBlock2Ptr->playerTrainerId[1]
                                                        + gSaveBlock2Ptr->playerTrainerId[2] + gSaveBlock2Ptr->playerTrainerId[3]) % (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0]))];
    }

    CopyTrainerId(ereaderTrainer->trainerId, gSaveBlock2Ptr->playerTrainerId);
    StringCopy7(ereaderTrainer->name, gSaveBlock2Ptr->playerName);

    ereaderTrainer->winStreak = 1;

    j = 7;
    for (i = 0; i < 6; i++)
    {
        ereaderTrainer->greeting[i] = gSaveBlock1Ptr->easyChatBattleStart[i];
        ereaderTrainer->farewellPlayerLost[i] = j;
        ereaderTrainer->farewellPlayerWon[i] = j + 6;
        j++;
    }

    for (i = 0; i < 3; i++)
        sub_80686FC(&gPlayerParty[i], &ereaderTrainer->party[i]);

    SetEReaderTrainerChecksum(ereaderTrainer);
}

u8 GetEreaderTrainerFrontSpriteId(void)
{
    return gFacilityClassToPicIndex[gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass];
}

u8 GetEreaderTrainerClassId(void)
{
    return gFacilityClassToTrainerClass[gSaveBlock2Ptr->frontier.ereaderTrainer.facilityClass];
}

void GetEreaderTrainerName(u8 *dst)
{
    s32 i;

    for (i = 0; i < 5; i++)
        dst[i] = gSaveBlock2Ptr->frontier.ereaderTrainer.name[i];

    dst[i] = 0xFF;
}


void ValidateEReaderTrainer(void)
{
    u32 i;
    u32 checksum;
    struct BattleTowerEReaderTrainer *ereaderTrainer;

    gSpecialVar_Result = 0;
    ereaderTrainer = &gSaveBlock2Ptr->frontier.ereaderTrainer;

    checksum = 0;
    for (i = 0; i < (sizeof(struct BattleTowerEReaderTrainer) - 4) / 4; i++)
        checksum |= ((u32 *)ereaderTrainer)[i];

    if (checksum == 0)
    {
        gSpecialVar_Result = 1;
        return;
    }

    checksum = 0;
    for (i = 0; i < (sizeof(struct BattleTowerEReaderTrainer) - 4) / 4; i++)
        checksum += ((u32 *)ereaderTrainer)[i];

    if (gSaveBlock2Ptr->frontier.ereaderTrainer.checksum != checksum)
    {
        ClearEReaderTrainer(&gSaveBlock2Ptr->frontier.ereaderTrainer);
        gSpecialVar_Result = 1;
    }
}

static void SetEReaderTrainerChecksum(struct BattleTowerEReaderTrainer *ereaderTrainer)
{
    s32 i;

    ereaderTrainer->checksum = 0;
    for (i = 0; i < (sizeof(struct BattleTowerEReaderTrainer) - 4) / 4; i++)
        ereaderTrainer->checksum += ((u32 *)ereaderTrainer)[i];
}

void ClearEReaderTrainer(struct BattleTowerEReaderTrainer *ereaderTrainer)
{
    u32 i;

    for (i = 0; i < (sizeof(struct BattleTowerEReaderTrainer)) / 4; i++)
        ((u32 *)ereaderTrainer)[i] = 0;
}

void CopyEReaderTrainerGreeting(void)
{
    FrontierSpeechToString(gSaveBlock2Ptr->frontier.ereaderTrainer.greeting);
}

static void CopyEReaderTrainerFarewellMessage(void)
{
    if (gBattleOutcome == 3)
        gStringVar4[0] = 0xFF;
    else if (gBattleOutcome == 1)
        FrontierSpeechToString(gSaveBlock2Ptr->frontier.ereaderTrainer.farewellPlayerWon);
    else
        FrontierSpeechToString(gSaveBlock2Ptr->frontier.ereaderTrainer.farewellPlayerLost);
}

void TryHideBattleTowerReporter(void)
{
    if (gSaveBlock2Ptr->frontier.challengeStatus == 1)
        HideBattleTowerReporter();
    if (FlagGet(0x77) == 1)
    {
        HideBattleTowerReporter();
        FlagClear(0x77);
    }
}



static void FillPartnerParty(u16 trainerId)
{
    s32 i, j;
    u32 ivs, level;
    u32 friendship;
    u16 monId;
    u32 otID;
    u8 trainerName[(7 * 3) + 1];
    SetFacilityPtrsGetLevel();

    if (trainerId == 3075)
    {
        for (i = 0; i < 6 / 2; i++)
        {
            do
            {
                j = (Random() | (Random() << 16));
            } while (IsShinyOtIdPersonality(61226, j) || sStevenMons[i].nature != GetNatureFromPersonality(j));
            CreateMon(&gPlayerParty[6 / 2 + i],
                      sStevenMons[i].species,
                      sStevenMons[i].level,
                      sStevenMons[i].fixedIV,
                      1, j,
                      1, 61226);
            for (j = 0; j < 6; j++)
                SetMonData(&gPlayerParty[6 / 2 + i], 26 + j, &sStevenMons[i].evs[j]);
            for (j = 0; j < 4; j++)
                SetMonMoveSlot(&gPlayerParty[6 / 2 + i], sStevenMons[i].moves[j], j);
            SetMonData(&gPlayerParty[6 / 2 + i], 7, gTrainers[804].trainerName);
            j = 0;
            SetMonData(&gPlayerParty[6 / 2 + i], 49, &j);
            CalculateMonStats(&gPlayerParty[6 / 2 + i]);
        }
    }
    else if (trainerId >= 3076)
    {
        otID = (Random() | (Random() << 16));

        for (i = 0; i < 3; i++)
            ZeroMonData(&gPlayerParty[i + 3]);

        for (i = 0; i < 3 && i < gTrainers[trainerId - 3076].partySize; i++)
        {
            do
            {
                j = (Random() | (Random() << 16));
            } while (IsShinyOtIdPersonality(otID, j));

            switch (gTrainers[trainerId - 3076].partyFlags)
            {
            case 0:
            {
                const struct TrainerMonNoItemDefaultMoves *partyData = gTrainers[trainerId - 3076].party.NoItemDefaultMoves;

                CreateMon(&gPlayerParty[i + 3], partyData[i].species, partyData[i].lvl, partyData[i].iv * 31 / 255, 1, j, 1, otID);
                break;
            }
            case (1 << 0):
            {
                const struct TrainerMonNoItemCustomMoves *partyData = gTrainers[trainerId - 3076].party.NoItemCustomMoves;

                CreateMon(&gPlayerParty[i + 3], partyData[i].species, partyData[i].lvl, partyData[i].iv * 31 / 255, 1, j, 1, otID);

                for (j = 0; j < 4; j++)
                {
                    SetMonData(&gPlayerParty[i + 3], 13 + j, &partyData[i].moves[j]);
                    SetMonData(&gPlayerParty[i + 3], 17 + j, &gBattleMoves[partyData[i].moves[j]].pp);
                }
                break;
            }
            case (1 << 1):
            {
                const struct TrainerMonItemDefaultMoves *partyData = gTrainers[trainerId - 3076].party.ItemDefaultMoves;

                CreateMon(&gPlayerParty[i + 3], partyData[i].species, partyData[i].lvl, partyData[i].iv * 31 / 255, 1, j, 1, otID);

                SetMonData(&gPlayerParty[i + 3], 12, &partyData[i].heldItem);
                break;
            }
            case (1 << 0) | (1 << 1):
            {
                const struct TrainerMonItemCustomMoves *partyData = gTrainers[trainerId - 3076].party.ItemCustomMoves;

                CreateMon(&gPlayerParty[i + 3], partyData[i].species, partyData[i].lvl, partyData[i].iv * 31 / 255, 1, j, 1, otID);

                SetMonData(&gPlayerParty[i + 3], 12, &partyData[i].heldItem);

                for (j = 0; j < 4; j++)
                {
                    SetMonData(&gPlayerParty[i + 3], 13 + j, &partyData[i].moves[j]);
                    SetMonData(&gPlayerParty[i + 3], 17 + j, &gBattleMoves[partyData[i].moves[j]].pp);
                }
                break;
            }
            }

            StringCopy(trainerName, gTrainers[trainerId - 3076].trainerName);
            SetMonData(&gPlayerParty[i + 3], 7, trainerName);
        }
    }
    else if (trainerId == 500)
    {

        trainerName[0] = gGameLanguage;
    }
    else if (trainerId < 300)
    {
        level = SetFacilityPtrsGetLevel();
        ivs = GetFrontierTrainerFixedIvs(trainerId);
        otID = (Random() | (Random() << 16));
        for (i = 0; i < 2; i++)
        {
            monId = gSaveBlock2Ptr->frontier.trainerIds[i + 18];
            CreateMonWithEVSpreadNatureOTID(&gPlayerParty[6 / 2 + i],
                                                 gFacilityTrainerMons[monId].species,
                                                 level,
                                                 gFacilityTrainerMons[monId].nature,
                                                 ivs,
                                                 gFacilityTrainerMons[monId].evSpread,
                                                 otID);
            friendship = 0xFF;
            for (j = 0; j < 4; j++)
            {
                SetMonMoveSlot(&gPlayerParty[6 / 2 + i], gFacilityTrainerMons[monId].moves[j], j);
                if (gFacilityTrainerMons[monId].moves[j] == 218)
                    friendship = 0;
            }
            SetMonData(&gPlayerParty[6 / 2 + i], 32, &friendship);
            SetMonData(&gPlayerParty[6 / 2 + i], 12, &gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId]);
   SetMonData(&gPlayerParty[6 / 2 + i], 46, &gFacilityTrainerMons[monId].abilityNum);
            for (j = 0; j < 7 + 1; j++)
                trainerName[j] = gFacilityTrainers[trainerId].trainerName[j];
            SetMonData(&gPlayerParty[6 / 2 + i], 7, &trainerName);
            j = IsFrontierTrainerFemale(trainerId);
            SetMonData(&gPlayerParty[6 / 2 + i], 49, &j);
        }
    }
    else if (trainerId < 400)
    {
        trainerId -= 300;
        for (i = 0; i < 2; i++)
        {
            struct EmeraldBattleTowerRecord *record = &gSaveBlock2Ptr->frontier.towerRecords[trainerId];
            struct BattleTowerPokemon monData = record->party[gSaveBlock2Ptr->frontier.trainerIds[18 + i]];
            StringCopy(trainerName, record->name);
            if (record->language == 1)
            {
                if (monData.nickname[0] != 0xFC || monData.nickname[1] != 0x15)
                {
                    monData.nickname[5] = 0xFF;
                    ConvertInternationalString(monData.nickname, 1);
                }
            }
            else
            {
                if (monData.nickname[0] == 0xFC && monData.nickname[1] == 0x15)
                    trainerName[5] = 0xFF;
            }
            CreateBattleTowerMon2(&gPlayerParty[6 / 2 + i], &monData, 1);
            SetMonData(&gPlayerParty[6 / 2 + i], 7, trainerName);
            j = IsFrontierTrainerFemale(trainerId + 300);
            SetMonData(&gPlayerParty[6 / 2 + i], 49, &j);
        }
    }
    else
    {
        trainerId -= 400;
        for (i = 0; i < 2; i++)
        {
            CreateApprenticeMon(&gPlayerParty[6 / 2 + i], &gSaveBlock2Ptr->apprentices[trainerId], gSaveBlock2Ptr->frontier.trainerIds[18 + i]);
            j = IsFrontierTrainerFemale(trainerId + 400);
            SetMonData(&gPlayerParty[6 / 2 + i], 49, &j);
        }
    }
}

bool32 RubyBattleTowerRecordToEmerald(struct RSBattleTowerRecord *src, struct EmeraldBattleTowerRecord *dst)
{
    s32 i, validMons = 0;

    for (i = 0; i < 3; i++)
    {
        if (src->party[i].species)
            validMons++;
    }

    if (validMons != 3)
    {
        memset(dst, 0, sizeof(*dst));
        return 0;
    }
    else
    {
        dst->lvlMode = src->lvlMode;
        dst->winStreak = src->winStreak;


        for (i = 0; i < 0x52; i++)
        {
            if (sRubyFacilityClassToEmerald[i][0] == src->facilityClass)
                break;
        }
        if (i != 0x52)
            dst->facilityClass = sRubyFacilityClassToEmerald[i][1];
        else
            dst->facilityClass = 0x2b;

        for (i = 0; i < 7 + 1; i++)
            dst->name[i] = src->name[i];
        for (i = 0; i < 4; i++)
            dst->trainerId[i] = src->trainerId[i];
        for (i = 0; i < 6; i++)
            dst->greeting[i] = src->greeting[i];
        for (i = 0; i < 6; i++)
            dst->speechWon[i] = sRecordTrainerSpeechWon[i];
        for (i = 0; i < 6; i++)
            dst->speechLost[i] = sRecordTrainerSpeechLost[i];
        for (i = 0; i < 3; i++)
            dst->party[i] = src->party[i];

        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &dst->party[3], 0x04000000 | 0x01000000 | ((sizeof(dst->party[3]))/(32/8) & 0x1FFFFF)); };
        CalcEmeraldBattleTowerChecksum(dst);
        return 1;
    }
}

bool32 EmeraldBattleTowerRecordToRuby(struct EmeraldBattleTowerRecord *src, struct RSBattleTowerRecord *dst)
{
    s32 i, validMons = 0;

    for (i = 0; i < 3; i++)
    {
        if (src->party[i].species)
            validMons++;
    }

    if (validMons != 3)
    {
        memset(dst, 0, sizeof(*dst));
        return 0;
    }
    else
    {
        dst->lvlMode = src->lvlMode;
        dst->winStreak = src->winStreak;


        for (i = 0; i < 0x52; i++)
        {
            if (sRubyFacilityClassToEmerald[i][1] == src->facilityClass)
                break;
        }
        if (i != 0x52)
            dst->facilityClass = sRubyFacilityClassToEmerald[i][0];
        else
            dst->facilityClass = 0x24;

        for (i = 0; i < 7 + 1; i++)
            dst->name[i] = src->name[i];
        for (i = 0; i < 4; i++)
            dst->trainerId[i] = src->trainerId[i];
        for (i = 0; i < 6; i++)
            dst->greeting[i] = src->greeting[i];
        for (i = 0; i < 3; i++)
            dst->party[i] = src->party[i];

        CalcRubyBattleTowerChecksum(dst);
        return 1;
    }
}

void CalcApprenticeChecksum(struct Apprentice *apprentice)
{
    s32 i;

    apprentice->checksum = 0;
    for (i = 0; i < (sizeof(struct Apprentice) - 4) / 4; i++)
        apprentice->checksum += ((u32 *)apprentice)[i];
}

static void ClearApprentice(struct Apprentice *apprentice)
{
    s32 i;

    for (i = 0; i < (sizeof(struct Apprentice)) / 4; i++)
        ((u32 *)apprentice)[i] = 0;
    ResetApprenticeStruct(apprentice);
}

static void ValidateApprenticesChecksums(void)
{
    s32 i, j;

    for (i = 0; i < 4; i++)
    {
        u32 *data = (u32*) &gSaveBlock2Ptr->apprentices[i];
        u32 checksum = 0;
        for (j = 0; j < (sizeof(struct Apprentice) - 4) / 4; j++)
            checksum += data[j];
        if (gSaveBlock2Ptr->apprentices[i].checksum != checksum)
            ClearApprentice(&gSaveBlock2Ptr->apprentices[i]);
    }
}

void GetBattleTowerTrainerLanguage(u8 *dst, u16 trainerId)
{
    if (trainerId == 500)
    {
        *dst = gGameLanguage;
    }
    else if (trainerId < 300)
    {
        *dst = gGameLanguage;
    }
    else if (trainerId < 400)
    {
        if (gBattleTypeFlags & (1 << 24))
            *dst = GetRecordedBattleRecordMixFriendLanguage();
        else
            *dst = gSaveBlock2Ptr->frontier.towerRecords[trainerId - 300].language;
    }
    else
    {
        if (gBattleTypeFlags & (1 << 24))
            *dst = GetRecordedBattleApprenticeLanguage();
        else
            *dst = gSaveBlock2Ptr->apprentices[trainerId - 400].language;
    }
}

u8 SetFacilityPtrsGetLevel(void)
{
    if (gSaveBlock2Ptr->frontier.lvlMode == 2)
    {
        return SetTentPtrsGetLevel();
    }
    else
    {
        gFacilityTrainers = gBattleFrontierTrainers;
        gFacilityTrainerMons = gBattleFrontierMons;
        return GetFrontierEnemyMonLevel(gSaveBlock2Ptr->frontier.lvlMode);
    }
}

u8 GetFrontierEnemyMonLevel(u8 lvlMode)
{
    u8 level;

    switch (lvlMode)
    {
    default:
    case 0:
        level = 50;
        break;
    case 1:
        level = GetHighestLevelInPlayerParty();
        if (level < 60)
            level = 60;
        break;
    }

    return level;
}

s32 GetHighestLevelInPlayerParty(void)
{
    s32 highestLevel = 0;
    s32 i;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&gPlayerParty[i], 11, ((void *)0))
            && GetMonData(&gPlayerParty[i], 65, ((void *)0)) != 809 + 264 + 1)
        {
            s32 level = GetMonData(&gPlayerParty[i], 56, ((void *)0));
            if (level > highestLevel)
                highestLevel = level;
        }
    }

    return highestLevel;
}



static u8 GetFrontierTrainerFixedIvs(u16 trainerId)
{
    u8 fixedIv =31;

    return fixedIv;
}

static u16 sub_8165D40(void)
{
    u32 facility = VarGet(0x40CF);

    if (facility == 2)
        return Random() % 30;
    else if (facility == 3)
        return Random() % 30;
    else if (facility == 4)
        return Random() % 30;
    else if (facility == 0)
        return 0;
    else
        return 0;
}

static u8 SetTentPtrsGetLevel(void)
{
    u8 level = 30;
    u32 facility = VarGet(0x40CF);

    if (facility == 4)
    {
        gFacilityTrainers = gSlateportBattleTentTrainers;
        gFacilityTrainerMons = gSlateportBattleTentMons;
    }
    else if (facility == 2)
    {
        gFacilityTrainers = gVerdanturfBattleTentTrainers;
        gFacilityTrainerMons = gVerdanturfBattleTentMons;
    }
    else if (facility == 3)
    {
        gFacilityTrainers = gFallarborBattleTentTrainers;
        gFacilityTrainerMons = gFallarborBattleTentMons;
    }
    else
    {
        gFacilityTrainers = gBattleFrontierTrainers;
        gFacilityTrainerMons = gBattleFrontierMons;
    }

    level = GetHighestLevelInPlayerParty();
    if (level < 30)
        level = 30;

    return level;
}

static void SetNextBattleTentOpponent(void)
{
    s32 i;
    u16 trainerId;

    do
    {
        trainerId = sub_8165D40();
        for (i = 0; i < gSaveBlock2Ptr->frontier.curChallengeBattleNum; i++)
        {
            if (gSaveBlock2Ptr->frontier.trainerIds[i] == trainerId)
                break;
        }
    } while (i != gSaveBlock2Ptr->frontier.curChallengeBattleNum);

    gTrainerBattleOpponent_A = trainerId;
    SetBattleFacilityTrainerGfxId(gTrainerBattleOpponent_A, 0);
    if (gSaveBlock2Ptr->frontier.curChallengeBattleNum + 1 < 3)
       gSaveBlock2Ptr->frontier.trainerIds[gSaveBlock2Ptr->frontier.curChallengeBattleNum] = gTrainerBattleOpponent_A;
}

static void FillTentTrainerParty_(u16 trainerId, u8 firstMonId, u8 monCount)
{
    s32 i, j;
    u16 chosenMonIndices[4];
    u8 friendship;
    u8 level = SetTentPtrsGetLevel();
    u8 fixedIV = 0;
    u8 bfMonCount;
    const u16 *monSet = ((void *)0);
    u32 otID = 0;
    u16 monId;

    monSet = gFacilityTrainers[gTrainerBattleOpponent_A].monSet;

    bfMonCount = 0;
    monId = monSet[bfMonCount];
    while (monId != 0xFFFF)
    {
        bfMonCount++;
        monId = monSet[bfMonCount];
        if (monId == 0xFFFF)
            break;
    }

    i = 0;
    otID = (Random() | (Random() << 16));
    while (i != monCount)
    {
        u16 monId = monSet[Random() % bfMonCount];


        for (j = 0; j < i + firstMonId; j++)
        {
            if (GetMonData(&gEnemyParty[j], 11, ((void *)0)) == gFacilityTrainerMons[monId].species)
                break;
        }
        if (j != i + firstMonId)
            continue;


        for (j = 0; j < i + firstMonId; j++)
        {
            if (GetMonData(&gEnemyParty[j], 12, ((void *)0)) != 0
             && GetMonData(&gEnemyParty[j], 12, ((void *)0)) == gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId])
                break;
        }
        if (j != i + firstMonId)
            continue;



        for (j = 0; j < i; j++)
        {
            if (chosenMonIndices[j] == monId)
                break;
        }
        if (j != i)
            continue;

        chosenMonIndices[i] = monId;


        CreateMonWithEVSpreadNatureOTID(&gEnemyParty[i + firstMonId],
                                             gFacilityTrainerMons[monId].species,
                                             level,
                                             gFacilityTrainerMons[monId].nature,
                                             fixedIV,
                                             gFacilityTrainerMons[monId].evSpread,
                                             otID);

        friendship = 0xFF;

        for (j = 0; j < 4; j++)
        {
            SetMonMoveSlot(&gEnemyParty[i + firstMonId], gFacilityTrainerMons[monId].moves[j], j);
            if (gFacilityTrainerMons[monId].moves[j] == 218)
                friendship = 0;
        }

        SetMonData(&gEnemyParty[i + firstMonId], 32, &friendship);
        SetMonData(&gEnemyParty[i + firstMonId], 12, &gBattleFrontierHeldItems[gFacilityTrainerMons[monId].itemTableId]);



        i++;
    }
}

u8 FacilityClassToGraphicsId(u8 facilityClass)
{
    u8 trainerObjectGfxId;
    u8 i;


    for (i = 0; i < (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0])); i++)
    {
        if (gTowerMaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerMaleFacilityClasses) / sizeof((gTowerMaleFacilityClasses)[0])))
    {
        trainerObjectGfxId = gTowerMaleTrainerGfxIds[i];
        return trainerObjectGfxId;
    }


    for (i = 0; i < (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])); i++)
    {
        if (gTowerFemaleFacilityClasses[i] == facilityClass)
            break;
    }
    if (i != (size_t)(sizeof(gTowerFemaleFacilityClasses) / sizeof((gTowerFemaleFacilityClasses)[0])))
    {
        trainerObjectGfxId = gTowerFemaleTrainerGfxIds[i];
        return trainerObjectGfxId;
    }
    else
    {
        return 7;
    }
}

bool32 ValidateBattleTowerRecord(u8 recordId)
{
    s32 i;
    u32 *record = (u32*)(&gSaveBlock2Ptr->frontier.towerRecords[recordId]);
    u32 checksum = 0;
    u32 hasData = 0;
    for (i = 0; i < (sizeof(struct EmeraldBattleTowerRecord) - 4) / 4; i++)
    {
        checksum += record[i];
        hasData |= record[i];
    }

    if (checksum == 0 && hasData == 0)
    {
        return 0;
    }
    else if (gSaveBlock2Ptr->frontier.towerRecords[recordId].checksum != checksum)
    {
        ClearBattleTowerRecord(&gSaveBlock2Ptr->frontier.towerRecords[recordId]);
        return 0;
    }
    else
    {
        return 1;
    }
}

void sub_8166188(void)
{
    if (gBattleTypeFlags & ((1 << 1) | (1 << 25)))
    {
        s32 i;
        u8 enemyLevel = SetFacilityPtrsGetLevel();

        for (i = 0; i < 6; i++)
        {
            u32 species = GetMonData(&gEnemyParty[i], 11, ((void *)0));
            if (species)
            {
                SetMonData(&gEnemyParty[i], 25, &gExperienceTables[gBaseStats[species].growthRate][enemyLevel]);
                CalculateMonStats(&gEnemyParty[i]);
            }
        }
    }
}
