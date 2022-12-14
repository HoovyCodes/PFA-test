# 0 "src/item.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/item.c"
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
# 2 "src/item.c" 2
# 1 "include/item.h" 1



# 1 "include/constants/item.h" 1
# 5 "include/item.h" 2
# 1 "include/constants/item_config.h" 1
# 6 "include/item.h" 2

typedef void (*ItemUseFunc)(u8);

struct Item
{
    u8 name[14];
    u16 itemId;
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    const u8 *description;
    u8 importance;
    u8 unk19;
    u8 pocket;
    u8 type;
    ItemUseFunc fieldUseFunc;
    u8 battleUsage;
    ItemUseFunc battleUseFunc;
    u8 secondaryId;
};

struct BagPocket
{
    struct ItemSlot *itemSlots;
    u8 capacity;
};

extern struct BagPocket gBagPockets[];

void ApplyNewEncryptionKeyToBagItems(u32 newKey);
void ApplyNewEncryptionKeyToBagItems_(u32 newKey);
void SetBagItemsPointers(void);
void CopyItemName(u16 itemId, u8 *dst);
void CopyItemNameHandlePlural(u16 itemId, u8 *dst, u32 quantity);
void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity);
bool8 IsBagPocketNonEmpty(u8 pocket);
bool8 CheckBagHasItem(u16 itemId, u16 count);
bool8 HasAtLeastOneBerry(void);
bool8 CheckBagHasSpace(u16 itemId, u16 count);
bool8 AddBagItem(u16 itemId, u16 count);
bool8 RemoveBagItem(u16 itemId, u16 count);
u8 GetPocketByItemId(u16 itemId);
void ClearItemSlots(struct ItemSlot *itemSlots, u8 itemCount);
u8 CountUsedPCItemSlots(void);
bool8 CheckPCHasItem(u16 itemId, u16 count);
bool8 AddPCItem(u16 itemId, u16 count);
void RemovePCItem(u8 index, u16 count);
void CompactPCItems(void);
void SwapRegisteredBike(void);
u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 pocketPos);
u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 pocketPos);
void CompactItemsInBagPocket(struct BagPocket *bagPocket);
void SortBerriesOrTMHMs(struct BagPocket *bagPocket);
void MoveItemSlotInList(struct ItemSlot* itemSlots_, u32 from, u32 to_);
void ClearBag(void);
u16 CountTotalItemQuantityInBag(u16 itemId);
bool8 AddPyramidBagItem(u16 itemId, u16 count);
bool8 RemovePyramidBagItem(u16 itemId, u16 count);
const u8 *ItemId_GetName(u16 itemId);
u16 ItemId_GetId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
u8 ItemId_GetHoldEffect(u16 itemId);
u8 ItemId_GetHoldEffectParam(u16 itemId);
const u8 *ItemId_GetDescription(u16 itemId);
u8 ItemId_GetImportance(u16 itemId);
u8 ItemId_GetUnknownValue(u16 itemId);
u8 ItemId_GetPocket(u16 itemId);
u8 ItemId_GetType(u16 itemId);
ItemUseFunc ItemId_GetFieldFunc(u16 itemId);
u8 ItemId_GetBattleUsage(u16 itemId);
ItemUseFunc ItemId_GetBattleFunc(u16 itemId);
u8 ItemId_GetSecondaryId(u16 itemId);
# 3 "src/item.c" 2
# 1 "include/berry.h" 1



void ClearEnigmaBerries(void);
void SetEnigmaBerry(u8 *src);
bool32 IsEnigmaBerryValid(void);
const struct Berry *GetBerryInfo(u8 berry);
struct BerryTree *GetBerryTreeInfo(u8 id);
bool32 ObjectEventInteractionWaterBerryTree(void);
bool8 IsPlayerFacingEmptyBerryTreePatch(void);
bool8 TryToWaterBerryTree(void);
void ClearBerryTrees(void);
void BerryTreeTimeUpdate(s32 minutes);
void PlantBerryTree(u8 id, u8 berry, u8 stage, bool8 sparkle);
void RemoveBerryTree(u8 id);
u8 GetBerryTypeByBerryTreeId(u8 id);
u8 GetStageByBerryTreeId(u8);
u8 ItemIdToBerryType(u16 item);
void GetBerryNameByBerryType(u8 berry, u8 *string);
void ResetBerryTreeSparkleFlag(u8 id);
void Bag_ChooseBerry(void);
void ObjectEventInteractionGetBerryTreeData(void);
void ObjectEventInteractionPlantBerryTree(void);
void ObjectEventInteractionPickBerryTree(void);
void ObjectEventInteractionRemoveBerryTree(void);
bool8 PlayerHasBerries(void);
void ResetBerryTreeSparkleFlags(void);

extern const struct Berry gBerries[];

struct UnkStruct_0858AB24 {
    u8 unk0;
    u16 unk1;
};

extern const struct UnkStruct_0858AB24 gUnknown_0858AB24[];
# 4 "src/item.c" 2
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
# 5 "src/item.c" 2
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
# 6 "src/item.c" 2
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
# 7 "src/item.c" 2
# 1 "gflib/malloc.h" 1
# 15 "gflib/malloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 8 "src/item.c" 2
# 1 "include/secret_base.h" 1



void HideSecretBaseDecorationSprites(void);
void CopyCurSecretBaseOwnerName_StrVar1(void);
void ClearJapaneseSecretBases(struct SecretBase *dest);
void SetPlayerSecretBaseParty(void);
u8 *GetSecretBaseMapName(u8 *dest);
const u8 *GetSecretBaseTrainerLoseText(void);
void SetOccupiedSecretBaseEntranceMetatiles(struct MapEvents const *events);
void InitSecretBaseAppearance(bool8 hidePC);
bool8 CurMapIsSecretBase(void);
void SecretBasePerStepCallback(u8 taskId);
bool8 TrySetCurSecretBase(void);
void CheckInteractedWithFriendsPosterDecor(void);
void CheckInteractedWithFriendsFurnitureBottom(void);
void CheckInteractedWithFriendsFurnitureMiddle(void);
void CheckInteractedWithFriendsFurnitureTop(void);
void WarpIntoSecretBase(const struct MapPosition *position, const struct MapEvents *events);
bool8 SecretBaseMapPopupEnabled(void);
void CheckLeftFriendsSecretBase(void);
void ClearSecretBases(void);
void SetCurSecretBaseIdFromPosition(const struct MapPosition *position, const struct MapEvents *events);
void TrySetCurSecretBaseIndex(void);
void CheckPlayerHasSecretBase(void);
void ToggleSecretBaseEntranceMetatile(void);
void EnableBothScriptContexts(void);
void ReceiveSecretBasesData(void *records, size_t recordSize, u8 linkIdx);
# 9 "src/item.c" 2
# 1 "include/item_menu.h" 1



# 1 "include/item.h" 1
# 5 "include/item_menu.h" 2
# 1 "include/menu_helpers.h" 1



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
# 5 "include/menu_helpers.h" 2
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
# 6 "include/menu_helpers.h" 2






struct YesNoFuncTable
{
    TaskFunc yesFunc;
    TaskFunc noFunc;
};




void ResetVramOamAndBgCntRegs(void);
void ResetAllBgsCoordinates(void);
void SetVBlankHBlankCallbacksToNull(void);
void DisplayMessageAndContinueTask(u8 taskId, u8 windowId, u16 arg2, u8 arg3, u8 fontId, u8 textSpeed, const u8 *string, void *taskFunc);
bool16 RunTextPrintersRetIsActive(u8 textPrinterId);
void DoYesNoFuncWithChoice(u8 taskId, const struct YesNoFuncTable *data);
void CreateYesNoMenuWithCallbacks(u8 taskId, const struct WindowTemplate *template, u8 arg2, u8 arg3, u8 arg4, u16 tileStart, u8 palette, const struct YesNoFuncTable *yesNo);
bool8 AdjustQuantityAccordingToDPadInput(s16 *arg0, u16 arg1);
u8 GetLRKeysPressed(void);
u8 GetLRKeysPressedAndHeld(void);
bool8 sub_8122148(u16 itemId);
bool8 itemid_80BF6D8_mail_related(u16 itemId);
bool8 MenuHelpers_LinkSomething(void);
bool8 MenuHelpers_CallLinkSomething(void);
void sub_812220C(struct ItemSlot *slots, u8 count, u8 *arg2, u8 *usedSlotsCount, u8 maxUsedSlotsCount);
void sub_812225C(u16 *scrollOffset, u16 *cursorPos, u8 maxShownItems, u8 numItems);
void sub_8122298(u16 *arg0, u16 *arg1, u8 arg2, u8 arg3, u8 arg4);
void LoadListMenuArrowsGfx(void);
void sub_8122344(u8 *spriteIds, u8 count);
void sub_81223B0(u8 *spriteIds, u8 count);
void sub_81223FC(u8 *spriteIds, u8 count, bool8 invisible);
void sub_8122448(u8 *spriteIds, u8 count, s16 x, u16 y);
# 6 "include/item_menu.h" 2
# 38 "include/item_menu.h"
struct BagStruct
{
    void (*bagCallback)(void);
    u8 location;
    u8 pocket;
    u16 unk6;
    u16 cursorPosition[5];
    u16 scrollPosition[5];
};

extern struct BagStruct gBagPositionStruct;

struct BagMenuStruct
{
    void (*exitCallback)(void);
    u8 tilemapBuffer[0x800];
    u8 spriteId[12];
    u8 windowPointers[10];
    u8 itemOriginalLocation;
    u8 pocketSwitchDisabled:4;
    u8 itemIconSlot:2;
    u8 inhibitItemDescriptionPrint:1;
    u8 hideCloseBagText:1;
    u8 filler3[2];
    u8 pocketScrollArrowsTask;
    u8 pocketSwitchArrowsTask;
    const u8* contextMenuItemsPtr;
    u8 contextMenuItemsBuffer[4];
    u8 contextMenuNumItems;
    u8 numItemStacks[5];
    u8 numShownItems[6];
    s16 graphicsLoadState;
    u8 filler4[0xE];
    u8 pocketNameBuffer[32][32];
    u8 filler2[4];
};

extern struct BagMenuStruct *gBagMenu;



extern u16 gSpecialVar_ItemId;


void CB2_GoToItemDepositMenu(void);
void FavorLadyOpenBagMenu(void);
void QuizLadyOpenBagMenu(void);
void ApprenticeOpenBagMenu(void);
void CB2_BagMenuFromBattle(void);
void SetInitialScrollAndCursorPositions(u8 pocketId);
void CB2_ReturnToBagMenuPocket(void);
void CB2_BagMenuFromStartMenu(void);
u8 GetItemListPosition(u8 pocketId);
bool8 UseRegisteredKeyItemOnField(void);
void CB2_GoToSellMenu(void);
void GoToBagMenu(u8 bagMenuType, u8 pocketId, void ( *postExitMenuMainCallback2)());
void DoWallyTutorialBagMenu(void);
void ResetBagScrollPositions(void);
void ChooseBerryForMachine(void (*exitCallback)(void));
void CB2_ChooseBerry(void);
void Task_FadeAndCloseBagMenu(u8 taskId);
void BagMenu_YesNo(u8, u8, const struct YesNoFuncTable*);
void BagMenu_InitListsMenu(u8 taskId);
void UpdatePocketItemList(u8 pocketId);
void DisplayItemMessage(u8 taskId, u8 fontId, const u8 *str, void ( *callback)(u8 taskId));
void DisplayItemMessageOnField(u8 taskId, const u8 *src, TaskFunc callback);
# 10 "src/item.c" 2
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
# 11 "src/item.c" 2
# 1 "include/load_save.h" 1



extern struct SaveBlock1 gSaveblock1;
extern struct SaveBlock2 gSaveblock2;
extern struct PokemonStorage gPokemonStorage;

extern bool32 gFlashMemoryPresent;
extern struct SaveBlock1 *gSaveBlock1Ptr;
extern struct SaveBlock2 *gSaveBlock2Ptr;
extern struct PokemonStorage *gPokemonStoragePtr;

void CheckForFlashMemory(void);
void ClearSav2(void);
void ClearSav1(void);
void SetSaveBlocksPointers(u16 offset);
void MoveSaveBlocks_ResetHeap(void);
u32 UseContinueGameWarp(void);
void ClearContinueGameWarpStatus(void);
void SetContinueGameWarpStatus(void);
void SetContinueGameWarpStatusToDynamicWarp(void);
void ClearContinueGameWarpStatus2(void);
void SavePlayerParty(void);
void LoadPlayerParty(void);
void SaveObjectEvents(void);
void LoadObjectEvents(void);
void SaveSerializedGame(void);
void LoadSerializedGame(void);
void LoadPlayerBag(void);
void SavePlayerBag(void);
void ApplyNewEncryptionKeyToHword(u16 *hWord, u32 newKey);
void ApplyNewEncryptionKeyToWord(u32 *word, u32 newKey);
# 12 "src/item.c" 2
# 1 "include/item_use.h" 1



void ItemUseOutOfBattle_Mail(u8);
void ItemUseOutOfBattle_Bike(u8);
void ItemUseOutOfBattle_Rod(u8);
void ItemUseOutOfBattle_Itemfinder(u8);
void ItemUseOutOfBattle_PokeblockCase(u8);
void ItemUseOutOfBattle_CoinCase(u8);
void ItemUseOutOfBattle_PowderJar(u8);
void ItemUseOutOfBattle_SSTicket(u8);
void ItemUseOutOfBattle_WailmerPail(u8);
void ItemUseOutOfBattle_Medicine(u8);
void ItemUseOutOfBattle_AbilityCapsule(u8);
void ItemUseOutOfBattle_ReduceEV(u8);
void ItemUseOutOfBattle_SacredAsh(u8);
void ItemUseOutOfBattle_PPRecovery(u8);
void ItemUseOutOfBattle_PPUp(u8);
void ItemUseOutOfBattle_RareCandy(u8);
void ItemUseOutOfBattle_TMHM(u8);
void ItemUseOutOfBattle_Repel(u8);
void ItemUseOutOfBattle_EscapeRope(u8);
void ItemUseOutOfBattle_BlackWhiteFlute(u8);
void ItemUseOutOfBattle_EvolutionStone(u8);
void ItemUseOutOfBattle_Berry(u8);
void ItemUseOutOfBattle_EnigmaBerry(u8);
void ItemUseOutOfBattle_CannotUse(u8);
void ItemUseInBattle_PokeBall(u8);
void ItemUseInBattle_StatIncrease(u8);
void ItemUseInBattle_Medicine(u8);
void ItemUseInBattle_PPRecovery(u8);
void ItemUseInBattle_Escape(u8);
void ItemUseInBattle_EnigmaBerry(u8);
void Task_UseDigEscapeRopeOnField(u8 taskId);
u8 CanUseDigOrEscapeRopeOnCurMap(void);
u8 CheckIfItemIsTMHMOrEvolutionStone(u16 itemId);
# 13 "src/item.c" 2
# 1 "include/battle_pyramid.h" 1



void CallBattlePyramidFunction(void);
u16 LocalIdToPyramidTrainerId(u8 localId);
bool8 GetBattlePyramidTrainerFlag(u8 eventId);
void MarkApproachingPyramidTrainersAsBattled(void);
void GenerateBattlePyramidWildMon(void);
u8 GetPyramidRunMultiplier(void);
u8 InBattlePyramid(void);
bool8 InBattlePyramid_(void);
void PausePyramidChallenge(void);
void SoftResetInBattlePyramid(void);
void CopyPyramidTrainerSpeechBefore(u16 trainerId);
void CopyPyramidTrainerWinSpeech(u16 trainerId);
void CopyPyramidTrainerLoseSpeech(u16 trainerId);
u8 GetBattlePyramindTrainerEncounterMusicId(u16 trainerId);
void GenerateBattlePyramidFloorLayout(u16 *mapArg, bool8 setPlayerPosition);
void LoadBattlePyramidObjectEventTemplates(void);
void LoadBattlePyramidFloorObjectEventScripts(void);
u8 GetNumBattlePyramidObjectEvents(void);
u16 GetBattlePyramidPickupItemId(void);
# 14 "src/item.c" 2
# 1 "include/battle_pyramid_bag.h" 1



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
# 5 "include/battle_pyramid_bag.h" 2

struct PyramidBagResources
{
    void (*callback2)(void);
    u8 tilemapBuffer[0x800];
    u8 itemsSpriteIds[10 + 1];
    u8 windowIds[5];
    u8 unk814;
    u8 unk815;
    u8 scrollIndicatorsTaskId;
    const u8 *menuActionIds;
    u8 filler81C[0x820 - 0x81C];
    u8 menuActionsCount;
    u8 listMenuCount;
    u8 listMenuMaxShown;
    struct ListMenuItem bagListItems[10 + 1];
    u8 itemStrings[10 + 1][14 + 10];
    s16 state;
    u8 filler986[0x98C - 0x986];
};

struct PyramidBagCursorData
{
    void (*callback)(void);
    u8 unk4;
    u16 cursorPosition;
    u16 scrollPosition;
};

extern struct PyramidBagResources *gPyramidBagResources;
extern struct PyramidBagCursorData gPyramidBagCursorData;

void InitBattlePyramidBagCursorPosition(void);
void CB2_PyramidBagMenuFromStartMenu(void);
void CB2_ReturnToPyramidBagMenu(void);
void sub_81C5924(void);
void sub_81C59BC(void);
void sub_81C4EFC(void);
void GoToBattlePyramidBagMenu(u8 a0, void (*callback)(void));
void Task_CloseBattlePyramidBagMessage(u8 taskId);
void TryStoreHeldItemsInPyramidBag(void);
void ChooseItemsToTossFromPyramidBag(void);
void CloseBattlePyramidBagAndSetCallback(u8 taskId);
void DisplayItemMessageInBattlePyramid(u8 taskId, const u8 *str, void (*callback)(u8 taskId));
# 15 "src/item.c" 2
# 1 "include/constants/items.h" 1
# 16 "src/item.c" 2
# 1 "include/constants/hold_effects.h" 1
# 17 "src/item.c" 2
# 1 "include/constants/tv.h" 1
# 18 "src/item.c" 2

extern u16 gUnknown_0203CF30[];





static bool8 CheckPyramidBagHasItem(u16 itemId, u16 count);
static bool8 CheckPyramidBagHasSpace(u16 itemId, u16 count);


__attribute__((section("ewram_data"))) struct BagPocket gBagPockets[5] = {0};


# 1 "src/data/text/item_descriptions.h" 1
static const u8 sDummyDesc[] = _(
    "?????");


static const u8 sMasterBallDesc[] = _(
    "The best BALL that\n"
    "catches a Pok??mon\n"
    "without fail.");

static const u8 sUltraBallDesc[] = _(
    "A better BALL with\n"
    "a higher catch rate\n"
    "than a GREAT BALL.");

static const u8 sGreatBallDesc[] = _(
    "A good BALL with a\n"
    "higher catch rate\n"
    "than a POK?? BALL.");

static const u8 sPokeBallDesc[] = _(
    "A tool used for\n"
    "catching wild\n"
    "Pok??mon.");

static const u8 sSafariBallDesc[] = _(
    "A special BALL that\n"
    "is used only in the\n"
    "SAFARI ZONE.");

static const u8 sNetBallDesc[] = _(
    "A BALL that works\n"
    "well on WATER- and\n"
    "BUG-type Pok??mon.");

static const u8 sDiveBallDesc[] = _(
    "A BALL that works\n"
    "better on Pok??mon\n"
    "on the ocean floor.");

static const u8 sNestBallDesc[] = _(
    "A BALL that works\n"
    "better on weaker\n"
    "Pok??mon.");

static const u8 sRepeatBallDesc[] = _(
    "A BALL that works\n"
    "better on Pok??mon\n"
    "caught before.");

static const u8 sTimerBallDesc[] = _(
    "A BALL that gains\n"
    "power in battles\n"
    "taking many turns.");

static const u8 sLuxuryBallDesc[] = _(
    "A cozy BALL that\n"
    "makes Pok??mon\n"
    "more friendly.");

static const u8 sPremierBallDesc[] = _(
    "A rare BALL made\n"
    "in commemoration\n"
    "of some event.");

static const u8 sLevelBallDesc[] = _(
    "A Ball that works\n"
    "well on lower\n"
    "level Pok??mon.");

static const u8 sLureBallDesc[] = _(
    "A Ball that works\n"
    "well on fished\n"
    "up Pok??mon.");

static const u8 sMoonBallDesc[] = _(
    "A Ball that works\n"
    "well on Moon\n"
    "Stone users.");

static const u8 sFriendBallDesc[] = _(
    "A Ball that makes\n"
    "a Pok??mon friendly\n"
    "when caught.");

static const u8 sLoveBallDesc[] = _(
    "Works well on\n"
    "Pok??mon of the\n"
    "opposite gender.");

static const u8 sHeavyBallDesc[] = _(
    "Works well on\n"
    "very heavy\n"
    "Pok??mon.");

static const u8 sFastBallDesc[] = _(
    "Works well on\n"
    "very fast\n"
    "Pok??mon.");

static const u8 sHealBallDesc[] = _(
    "A remedial Ball\n"
    "that restores\n"
    "caught Pok??mon.");

static const u8 sQuickBallDesc[] = _(
    "Works well if\n"
    "used on the\n"
    "first turn.");

static const u8 sDuskBallDesc[] = _(
    "Works well if\n"
    "used in a\n"
    "dark place.");

static const u8 sCherishBallDesc[] = _(
    "A rare Ball made\n"
    "in commemoration\n"
    "of some event.");

static const u8 sSportBallDesc[] = _(
    "A special Ball used\n"
    "in the Bug-Catching\n"
    "Contest.");

static const u8 sParkBallDesc[] = _(
    "A special Ball for\n"
    "the Pal Park.");

static const u8 sDreamBallDesc[] = _(
    "A Pok?? Ball used in\n"
    "the Entree Forest.\n"
    "It doesn't fail.");

static const u8 sBeastBallDesc[] = _(
    "A Ball designed to\n"
    "catch Ultra Beasts.");


static const u8 sPotionDesc[] = _(
    "Restores the HP of\n"
    "a Pok??mon by\n"
    "20 points.");

static const u8 sAntidoteDesc[] = _(
    "Heals a poisoned\n"
    "Pok??mon.");

static const u8 sBurnHealDesc[] = _(
    "Heals Pok??mon\n"
    "of a burn.");

static const u8 sIceHealDesc[] = _(
    "Defrosts a frozen\n"
    "Pok??mon.");

static const u8 sAwakeningDesc[] = _(
    "Awakens a sleeping\n"
    "Pok??mon.");

static const u8 sParalyzeHealDesc[] = _(
    "Heals a paralyzed\n"
    "Pok??mon.");

static const u8 sFullRestoreDesc[] = _(
    "Fully restores the\n"
    "HP and status of a\n"
    "Pok??mon.");

static const u8 sMaxPotionDesc[] = _(
    "Fully restores the\n"
    "HP of a Pok??mon.");

static const u8 sHyperPotionDesc[] = _(
    "Restores the HP of\n"
    "a Pok??mon by\n"
    "200 points.");

static const u8 sSuperPotionDesc[] = _(
    "Restores the HP of\n"
    "a Pok??mon by\n"
    "50 points.");

static const u8 sFullHealDesc[] = _(
    "Heals all the\n"
    "status problems of\n"
    "one Pok??mon.");

static const u8 sReviveDesc[] = _(
    "Revives a fainted\n"
    "Pok??mon with half\n"
    "its HP.");

static const u8 sMaxReviveDesc[] = _(
    "Revives a fainted\n"
    "Pok??mon with all\n"
    "its HP.");

static const u8 sFreshWaterDesc[] = _(
    "A mineral water\n"
    "that restores HP\n"
    "by 50 points.");

static const u8 sSodaPopDesc[] = _(
    "A fizzy soda drink\n"
    "that restores HP\n"
    "by 60 points.");

static const u8 sLemonadeDesc[] = _(
    "A very sweet drink\n"
    "that restores HP\n"
    "by 80 points.");

static const u8 sMoomooMilkDesc[] = _(
    "A nutritious milk\n"
    "that restores HP\n"
    "by 100 points.");

static const u8 sEnergyPowderDesc[] = _(
    "A bitter powder\n"
    "that restores HP\n"
    "by 50 points.");

static const u8 sEnergyRootDesc[] = _(
    "A bitter root\n"
    "that restores HP\n"
    "by 200 points.");

static const u8 sHealPowderDesc[] = _(
    "A bitter powder\n"
    "that heals all\n"
    "status problems.");

static const u8 sRevivalHerbDesc[] = _(
    "A very bitter herb\n"
    "that revives a\n"
    "fainted Pok??mon.");

static const u8 sEtherDesc[] = _(
    "Restores the PP\n"
    "of a selected move\n"
    "by 10.");

static const u8 sMaxEtherDesc[] = _(
    "Fully restores the\n"
    "PP of a selected\n"
    "move.");

static const u8 sElixirDesc[] = _(
    "Restores the PP\n"
    "of all moves by 10.");

static const u8 sMaxElixirDesc[] = _(
    "Fully restores the\n"
    "PP of a Pok??mon's\n"
    "moves.");

static const u8 sLavaCookieDesc[] = _(
    "A local specialty\n"
    "that heals all\n"
    "status problems.");

static const u8 sBlueFluteDesc[] = _(
    "A glass flute that\n"
    "awakens sleeping\n"
    "Pok??mon.");

static const u8 sYellowFluteDesc[] = _(
    "A glass flute that\n"
    "snaps Pok??mon\n"
    "out of confusion.");

static const u8 sRedFluteDesc[] = _(
    "A glass flute that\n"
    "snaps Pok??mon\n"
    "out of attraction.");

static const u8 sBlackFluteDesc[] = _(
    "A glass flute that\n"
    "keeps away wild\n"
    "Pok??mon.");

static const u8 sWhiteFluteDesc[] = _(
    "A glass flute that\n"
    "lures wild Pok??mon.");

static const u8 sBerryJuiceDesc[] = _(
    "A 100% pure juice\n"
    "that restores HP\n"
    "by 20 points.");

static const u8 sSweetHeartDesc[] = _(
    "A sweet chocolate\n"
    "that restores HP\n"
    "by 20 points.");

static const u8 sBigMalasadaDesc[] = _(
    "Heals all the\n"
    "status problems of\n"
    "one Pok??mon.");

static const u8 sOldGateauDesc[] = _(
    "Heals all the\n"
    "status problems of\n"
    "one Pok??mon.");

static const u8 sSacredAshDesc[] = _(
    "Fully revives and\n"
    "restores all\n"
    "fainted Pok??mon.");


static const u8 sShoalSaltDesc[] = _(
    "Salt obtained from\n"
    "deep inside the\n"
    "SHOAL CAVE.");

static const u8 sShoalShellDesc[] = _(
    "A seashell found\n"
    "deep inside the\n"
    "SHOAL CAVE.");

static const u8 sRedShardDesc[] = _(
    "A shard from an\n"
    "ancient item. Can\n"
    "be sold cheaply.");

static const u8 sBlueShardDesc[] = _(
    "A shard from an\n"
    "ancient item. Can\n"
    "be sold cheaply.");

static const u8 sYellowShardDesc[] = _(
    "A shard from an\n"
    "ancient item. Can\n"
    "be sold cheaply.");

static const u8 sGreenShardDesc[] = _(
    "A shard from an\n"
    "ancient item. Can\n"
    "be sold cheaply.");


static const u8 sHPUpDesc[] = _(
    "Raises the base HP\n"
    "of one Pok??mon.");

static const u8 sProteinDesc[] = _(
    "Raises the base\n"
    "ATTACK stat of one\n"
    "Pok??mon.");

static const u8 sIronDesc[] = _(
    "Raises the base\n"
    "DEFENSE stat of\n"
    "one Pok??mon.");

static const u8 sCarbosDesc[] = _(
    "Raises the base\n"
    "SPEED stat of one\n"
    "Pok??mon.");

static const u8 sCalciumDesc[] = _(
    "Raises the base\n"
    "SP. ATK stat of one\n"
    "Pok??mon.");

static const u8 sRareCandyDesc[] = _(
    "Raises the level\n"
    "of a Pok??mon by\n"
    "one.");

static const u8 sPPUpDesc[] = _(
    "Raises the maximum\n"
    "PP of a selected\n"
    "move.");

static const u8 sZincDesc[] = _(
    "Raises the base\n"
    "SP. DEF stat of one\n"
    "Pok??mon.");

static const u8 sPPMaxDesc[] = _(
    "Raises the PP of a\n"
    "move to its maximum\n"
    "points.");


static const u8 sGuardSpecDesc[] = _(
    "Prevents stat\n"
    "reduction when\n"
    "used in battle.");

static const u8 sDireHitDesc[] = _(
    "Raises the\n"
    "critical-hit ratio\n"
    "during one battle.");

static const u8 sXAttackDesc[] = _(
    "Raises the stat\n"
    "ATTACK during one\n"
    "battle.");

static const u8 sXDefendDesc[] = _(
    "Raises the stat\n"
    "DEFENSE during one\n"
    "battle.");

static const u8 sXSpeedDesc[] = _(
    "Raises the stat\n"
    "SPEED during one\n"
    "battle.");

static const u8 sXAccuracyDesc[] = _(
    "Raises accuracy\n"
    "of attack moves\n"
    "during one battle.");

static const u8 sXSpecialAttackDesc[] = _(
    "Raises the stat\n"
    "SP. ATK during one\n"
    "battle.");

static const u8 sXSpecialDefenseDesc[] = _(
    "Raises the stat\n"
    "SP. DEF during one\n"
    "battle.");

static const u8 sPokeDollDesc[] = _(
    "Use to flee from\n"
    "any battle with\n"
    "a wild Pok??mon.");

static const u8 sFluffyTailDesc[] = _(
    "Use to flee from\n"
    "any battle with\n"
    "a wild Pok??mon.");


static const u8 sSuperRepelDesc[] = _(
    "Repels weak wild\n"
    "Pok??mon for 200\n"
    "steps.");

static const u8 sMaxRepelDesc[] = _(
    "Repels weak wild\n"
    "Pok??mon for 250\n"
    "steps.");

static const u8 sAbilityCapsuleDesc[] = _(
    "Switches a POK??-\n"
    "MON's ability.");

static const u8 sEscapeRopeDesc[] = _(
    "Use to escape\n"
    "instantly from a\n"
    "cave or a dungeon.");

static const u8 sRepelDesc[] = _(
    "Repels weak wild\n"
    "Pok??mon for 100\n"
    "steps.");


static const u8 sSunStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sMoonStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sFireStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sThunderStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sWaterStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sLeafStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sDawnStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sDuskStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sShinyStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");

static const u8 sIceStoneDesc[] = _(
    "Makes certain\n"
    "species of Pok??mon\n"
    "evolve.");



static const u8 sRedApricornDesc[] = _(
    "A red apricorn.\n"
    "It assails your\n"
    "nostrils.");

static const u8 sBlueApricornDesc[] = _(
    "A blue apricorn.\n"
    "It smells a bit\n"
    "like grass.");

static const u8 sYellowApricornDesc[] = _(
    "A yellow apricorn.\n"
    "It has an invigor-\n"
    "ating scent.");

static const u8 sGreenApricornDesc[] = _(
    "A green apricorn.\n"
    "It has a strange,\n"
    "aromatic scent.");

static const u8 sPinkApricornDesc[] = _(
    "A pink apricorn.\n"
    "It has a nice,\n"
    "sweet scent.");

static const u8 sWhiteApricornDesc[] = _(
    "A white apricorn.\n"
    "It doesn't smell\n"
    "like anything.");

static const u8 sBlackApricornDesc[] = _(
    "A black apricorn.\n"
    "It has an inde-\n"
    "scribable scent.");

static const u8 sTinyMushroomDesc[] = _(
    "A plain mushroom\n"
    "that would sell\n"
    "at a cheap price.");

static const u8 sBigMushroomDesc[] = _(
    "A rare mushroom\n"
    "that would sell at a\n"
    "high price.");

static const u8 sPearlDesc[] = _(
    "A pretty pearl\n"
    "that would sell at a\n"
    "cheap price.");

static const u8 sBigPearlDesc[] = _(
    "A lovely large pearl\n"
    "that would sell at a\n"
    "high price.");

static const u8 sStardustDesc[] = _(
    "Beautiful red sand.\n"
    "Can be sold at a\n"
    "high price.");

static const u8 sStarPieceDesc[] = _(
    "A red gem shard.\n"
    "It would sell for a\n"
    "very high price.");

static const u8 sNuggetDesc[] = _(
    "A nugget of pure\n"
    "gold. Can be sold at\n"
    "a high price.");

static const u8 sHeartScaleDesc[] = _(
    "A lovely scale.\n"
    "It is coveted by\n"
    "collectors.");

static const u8 sRedNectarDesc[] = _(
    "Flower nectar that\n"
    "changes the form\n"
    "of certain Pok??mon.");

static const u8 sYellowNectarDesc[] = _(
    "Flower nectar that\n"
    "changes the form\n"
    "of certain Pok??mon.");

static const u8 sPinkNectarDesc[] = _(
    "Flower nectar that\n"
    "changes the form\n"
    "of certain Pok??mon.");

static const u8 sPurpleNectarDesc[] = _(
    "Flower nectar that\n"
    "changes the form\n"
    "of certain Pok??mon.");

static const u8 sRareBoneDesc[] = _(
    "A very rare bone.\n"
    "It can be sold at\n"
    "a high price.");


static const u8 sOrangeMailDesc[] = _(
    "A ZIGZAGOON-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sHarborMailDesc[] = _(
    "A WINGULL-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sGlitterMailDesc[] = _(
    "A PIKACHU-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sMechMailDesc[] = _(
    "A MAGNEMITE-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sWoodMailDesc[] = _(
    "A SLAKOTH-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sWaveMailDesc[] = _(
    "A WAILMER-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sBeadMailDesc[] = _(
    "MAIL featuring a\n"
    "sketch of the\n"
    "holding Pok??mon.");

static const u8 sShadowMailDesc[] = _(
    "A DUSKULL-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sTropicMailDesc[] = _(
    "A BELLOSSOM-print\n"
    "MAIL to be held by\n"
    "a Pok??mon.");

static const u8 sDreamMailDesc[] = _(
    "MAIL featuring a\n"
    "sketch of the\n"
    "holding Pok??mon.");

static const u8 sFabMailDesc[] = _(
    "A gorgeous-print\n"
    "MAIL to be held\n"
    "by a Pok??mon.");

static const u8 sRetroMailDesc[] = _(
    "MAIL featuring the\n"
    "drawings of three\n"
    "Pok??mon.");


static const u8 sCheriBerryDesc[] = _(
    "A hold item that\n"
    "heals paralysis\n"
    "in battle.");

static const u8 sChestoBerryDesc[] = _(
    "A hold item that\n"
    "awakens Pok??mon\n"
    "in battle.");

static const u8 sPechaBerryDesc[] = _(
    "A hold item that\n"
    "heals poisoning\n"
    "in battle.");

static const u8 sRawstBerryDesc[] = _(
    "A hold item that\n"
    "heals a burn in\n"
    "battle.");

static const u8 sAspearBerryDesc[] = _(
    "A hold item that\n"
    "defrosts Pok??mon\n"
    "in battle.");

static const u8 sLeppaBerryDesc[] = _(
    "A hold item that\n"
    "restores 10 PP in\n"
    "battle.");

static const u8 sOranBerryDesc[] = _(
    "A hold item that\n"
    "restores 10 HP in\n"
    "battle.");

static const u8 sPersimBerryDesc[] = _(
    "A hold item that\n"
    "heals confusion\n"
    "in battle.");

static const u8 sLumBerryDesc[] = _(
    "A hold item that\n"
    "heals any status\n"
    "problem in battle.");

static const u8 sSitrusBerryDesc[] = _(
    "A hold item that\n"
    "restores 1/4 of HP\n"
    "in battle.");

static const u8 sFigyBerryDesc[] = _(
    "A hold item that\n"
    "restores HP but\n"
    "may be too spicy.");

static const u8 sWikiBerryDesc[] = _(
    "A hold item that\n"
    "restores HP but\n"
    "may be too dry.");

static const u8 sMagoBerryDesc[] = _(
    "A hold item that\n"
    "restores HP but\n"
    "may be too sweet.");

static const u8 sAguavBerryDesc[] = _(
    "A hold item that\n"
    "restores HP but\n"
    "may be too bitter.");

static const u8 sIapapaBerryDesc[] = _(
    "A hold item that\n"
    "restores HP but\n"
    "may be too sour.");

static const u8 sRazzBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sBlukBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sNanabBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sWepearBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sPinapBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sPomegBerryDesc[] = _(
    "Makes a Pok??mon\n"
    "friendly but lowers\n"
    "base HP.");

static const u8 sKelpsyBerryDesc[] = _(
    "Makes a Pok??mon\n"
    "friendly but lowers\n"
    "base ATTACK.");

static const u8 sQualotBerryDesc[] = _(
    "Makes a Pok??mon\n"
    "friendly but lowers\n"
    "base DEFENSE.");

static const u8 sHondewBerryDesc[] = _(
    "Makes a Pok??mon\n"
    "friendly but lowers\n"
    "base SP. ATK.");

static const u8 sGrepaBerryDesc[] = _(
    "Makes a Pok??mon\n"
    "friendly but lowers\n"
    "base SP. DEF.");

static const u8 sTamatoBerryDesc[] = _(
    "Makes a Pok??mon\n"
    "friendly but lowers\n"
    "base SPEED.");

static const u8 sCornnBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sMagostBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sRabutaBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sNomelBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sSpelonBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sPamtreBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sWatmelBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sDurinBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sBelueBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sLiechiBerryDesc[] = _(
    "A hold item that\n"
    "raises Attack in\n"
    "a pinch.");

static const u8 sGanlonBerryDesc[] = _(
    "A hold item that\n"
    "raises Defense in\n"
    "a pinch.");

static const u8 sSalacBerryDesc[] = _(
    "A hold item that\n"
    "raises Speed in\n"
    "a pinch.");

static const u8 sPetayaBerryDesc[] = _(
    "A hold item that\n"
    "raises Sp. Atk in\n"
    "a pinch.");

static const u8 sApicotBerryDesc[] = _(
    "A hold item that\n"
    "raises Sp. Def in\n"
    "a pinch.");

static const u8 sLansatBerryDesc[] = _(
    "A hold item that\n"
    "ups the critical-\n"
    "hit rate in a pinch.");

static const u8 sStarfBerryDesc[] = _(
    "A hold item that\n"
    "sharply boosts a\n"
    "stat in a pinch.");

static const u8 sMicleBerryDesc[] = _(
    "When held, it ups\n"
    "the Accuracy of a\n"
    "move in a pinch.");

static const u8 sEnigmaBerryDesc[] = _(
    "{POKEBLOCK} ingredient.");

static const u8 sOccaBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Fire\n"
    "move if weak to it.");

static const u8 sPasshoBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Water\n"
    "move if weak to it.");

static const u8 sWacanBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Electric\n"
    "move if weak to it.");

static const u8 sRindoBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Grass\n"
    "move if weak to it.");

static const u8 sYacheBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Ice\n"
    "move if weak to it.");

static const u8 sChopleBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Fighting\n"
    "move if weak to it.");

static const u8 sKebiaBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Poison\n"
    "move if weak to it.");

static const u8 sShucaBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Ground\n"
    "move if weak to it.");

static const u8 sCobaBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Flying\n"
    "move if weak to it.");

static const u8 sPayapaBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Psychic\n"
    "move if weak to it.");

static const u8 sTangaBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Bug\n"
    "move if weak to it.");

static const u8 sChartiBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Rock\n"
    "move if weak to it.");

static const u8 sKasibBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Ghost\n"
    "move if weak to it.");

static const u8 sHabanBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Dragon\n"
    "move if weak to it.");

static const u8 sColburBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Dark\n"
    "move if weak to it.");

static const u8 sBabiriBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Steel\n"
    "move if weak to it.");

static const u8 sChilanBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Normal\n"
    "move.");

static const u8 sRoseliBerryDesc[] = _(
    "A hold item that\n"
    "weakens a Fairy\n"
    "move if weak to it.");

static const u8 sCustapBerryDesc[] = _(
    "It allows a Pok??mon\n"
    "in a pinch to move\n"
    "first just once.");

static const u8 sJabocaBerryDesc[] = _(
    "If hit by a physical\n"
    "move, it will hurt\n"
    "the attacker a bit.");

static const u8 sRowapBerryDesc[] = _(
    "If hit by a special\n"
    "move, it will hurt\n"
    "the attacker a bit.");

static const u8 sKeeBerryDesc[] = _(
    "If hit by a physical\n"
    "move, it raises the\n"
    "DEFENSE a bit.");

static const u8 sMarangaBerryDesc[] = _(
    "If hit by a special\n"
    "move, it raises the\n"
    "SP. DEF. a bit.");


static const u8 sBrightPowderDesc[] = _(
    "A hold item that\n"
    "casts a glare to\n"
    "reduce accuracy.");

static const u8 sWhiteHerbDesc[] = _(
    "A hold item that\n"
    "restores any\n"
    "lowered stat.");

static const u8 sMachoBraceDesc[] = _(
    "A hold item that\n"
    "promotes growth,\n"
    "but reduces SPEED.");

static const u8 sExpShareDesc[] = _(
    "A hold item that\n"
    "gets EXP. points\n"
    "from battles.");

static const u8 sQuickClawDesc[] = _(
    "A hold item that\n"
    "occasionally allows\n"
    "the first strike.");

static const u8 sSootheBellDesc[] = _(
    "A hold item that\n"
    "calms spirits and\n"
    "fosters friendship.");

static const u8 sMentalHerbDesc[] = _(
    "A hold item that\n"
    "snaps Pok??mon out\n"
    "of infatuation.");

static const u8 sChoiceBandDesc[] = _(
    "Raises a move's\n"
    "power, but permits\n"
    "only that move.");

static const u8 sKingsRockDesc[] = _(
    "A hold item that\n"
    "may cause flinching\n"
    "when the foe is hit.");

static const u8 sSilverPowderDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "BUG-type moves.");

static const u8 sAmuletCoinDesc[] = _(
    "Doubles money in\n"
    "battle if the\n"
    "holder takes part.");

static const u8 sCleanseTagDesc[] = _(
    "A hold item that\n"
    "helps repel wild\n"
    "Pok??mon.");

static const u8 sSoulDewDesc[] = _(
    "Hold item: raises\n"
    "SP. ATK & SP. DEF of\n"
    "LATIOS & LATIAS.");

static const u8 sDeepSeaToothDesc[] = _(
    "A hold item that\n"
    "raises the SP. ATK\n"
    "of CLAMPERL.");

static const u8 sDeepSeaScaleDesc[] = _(
    "A hold item that\n"
    "raises the SP. DEF\n"
    "of CLAMPERL.");

static const u8 sSmokeBallDesc[] = _(
    "A hold item that\n"
    "assures fleeing\n"
    "from wild Pok??mon.");

static const u8 sEverstoneDesc[] = _(
    "A wondrous hold\n"
    "item that prevents\n"
    "evolution.");

static const u8 sFocusBandDesc[] = _(
    "A hold item that\n"
    "occasionally\n"
    "prevents fainting.");

static const u8 sLuckyEggDesc[] = _(
    "A hold item that\n"
    "boosts EXP. points\n"
    "earned in battle.");

static const u8 sScopeLensDesc[] = _(
    "A hold item that\n"
    "improves the\n"
    "critical-hit rate.");

static const u8 sMetalCoatDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "STEEL-type moves.");

static const u8 sLeftoversDesc[] = _(
    "A hold item that\n"
    "gradually restores\n"
    "HP in battle.");

static const u8 sDragonScaleDesc[] = _(
    "A strange scale\n"
    "held by DRAGON-\n"
    "type Pok??mon.");

static const u8 sOvalStoneDesc[] = _(
    "Helps a certain\n"
    "Pok??mon to evolve.\n"
    "Looks like an egg.");

static const u8 sProtectorDesc[] = _(
    "A certain Pok??mon\n"
    "loves it. It's quite\n"
    "heavy.");

static const u8 sElectirizerDesc[] = _(
    "A certain Pok??mon\n"
    "loves it. It's full\n"
    "of electricity.");

static const u8 sMagmarizerDesc[] = _(
    "A certain Pok??mon\n"
    "loves it. It's full\n"
    "of magma energy.");

static const u8 sDubiousDiscDesc[] = _(
    "A certain Pok??mon\n"
    "loves it. It's over-\n"
    "flowing with data.");

static const u8 sReaperClothDesc[] = _(
    "Loved by a certain\n"
    "Pok??mon. Imbued\n"
    "with strong energy.");

static const u8 sRazorClawDesc[] = _(
    "Helps a certain\n"
    "Pok??mon to evolve.\n"
    "It's a sharp claw.");

static const u8 sRazorFangDesc[] = _(
    "Helps a certain\n"
    "Pok??mon to evolve.\n"
    "It's a sharp fang.");

static const u8 sPrismScaleDesc[] = _(
    "A mysterious scale.\n"
    "It helps a certain\n"
    "Pok??mon to evolve.");

static const u8 sWhippedDreamDesc[] = _(
    "A soft and sweet\n"
    "treat loved by some\n"
    "Pok??mon.");

static const u8 sSachetDesc[] = _(
    "A sachet filled with\n"
    "perfumes loved by\n"
    "some Pok??mon.");

static const u8 sLightBallDesc[] = _(
    "A hold item that\n"
    "raises the SP. ATK\n"
    "of PIKACHU.");

static const u8 sSoftSandDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "GROUND-type moves.");

static const u8 sHardStoneDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "ROCK-type moves.");

static const u8 sMiracleSeedDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "GRASS-type moves.");

static const u8 sBlackGlassesDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "DARK-type moves.");

static const u8 sBlackBeltDesc[] = _(
    "A hold item that\n"
    "boosts FIGHTING-\n"
    "type moves.");

static const u8 sMagnetDesc[] = _(
    "A hold item that\n"
    "boosts ELECTRIC-\n"
    "type moves.");

static const u8 sMysticWaterDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "WATER-type moves.");

static const u8 sSharpBeakDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "FLYING-type moves.");

static const u8 sPoisonBarbDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "POISON-type moves.");

static const u8 sNeverMeltIceDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "ICE-type moves.");

static const u8 sSpellTagDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "GHOST-type moves.");

static const u8 sTwistedSpoonDesc[] = _(
    "A hold item that\n"
    "boosts PSYCHIC-\n"
    "type moves.");

static const u8 sCharcoalDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "FIRE-type moves.");

static const u8 sDragonFangDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "DRAGON-type moves.");

static const u8 sSilkScarfDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "NORMAL-type moves.");

static const u8 sUpGradeDesc[] = _(
    "A peculiar box made\n"
    "by SILPH CO.");

static const u8 sShellBellDesc[] = _(
    "A hold item that\n"
    "restores HP upon\n"
    "striking the foe.");

static const u8 sPowerBracerDesc[] = _(
    "A hold item that\n"
    "promotes ATK gain,\n"
    "but reduces SPEED.");

static const u8 sPowerBeltDesc[] = _(
    "A hold item that\n"
    "promotes DEF gain,\n"
    "but reduces SPEED.");

static const u8 sPowerLensDesc[] = _(
    "Hold item that pro-\n"
    "motes SP. ATK gain,\n"
    "but reduces SPEED.");

static const u8 sPowerBandDesc[] = _(
    "Hold item that pro-\n"
    "motes SP. DEF gain,\n"
    "but reduces SPEED.");

static const u8 sPowerAnkletDesc[] = _(
    "A hold item that\n"
    "promotes SPD gain,\n"
    "but reduces SPEED.");

static const u8 sPowerWeightDesc[] = _(
    "A hold item that\n"
    "promotes HP gain,\n"
    "but reduces SPEED.");

static const u8 sSeaIncenseDesc[] = _(
    "A hold item that\n"
    "slightly boosts\n"
    "WATER-type moves.");

static const u8 sLaxIncenseDesc[] = _(
    "A hold item that\n"
    "slightly lowers the\n"
    "foe's accuracy.");

static const u8 sOddIncenseDesc[] = _(
    "A hold item that\n"
    "boosts PSYCHIC-\n"
    "type moves.");

static const u8 sRockIncenseDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "ROCK-type moves.");

static const u8 sFullIncenseDesc[] = _(
    "A held item that\n"
    "makes the holder\n"
    "move slower.");

static const u8 sWaveIncenseDesc[] = _(
    "A hold item that\n"
    "slightly boosts\n"
    "WATER-type moves.");

static const u8 sRoseIncenseDesc[] = _(
    "A hold item that\n"
    "raises the power of\n"
    "GRASS-type moves.");

static const u8 sLuckIncenseDesc[] = _(
    "Doubles money in\n"
    "battle if the\n"
    "holder takes part.");

static const u8 sPureIncenseDesc[] = _(
    "A hold item that\n"
    "helps repel wild\n"
    "Pok??mon.");

static const u8 sLuckyPunchDesc[] = _(
    "A hold item that\n"
    "raises CHANSEY's\n"
    "critical-hit rate.");

static const u8 sMetalPowderDesc[] = _(
    "A hold item that\n"
    "raises DITTO's\n"
    "DEFENSE.");

static const u8 sThickClubDesc[] = _(
    "A hold item that \n"
    "raises Cubone or\n"
    "Marowak's Attack.");

static const u8 sStickDesc[] = _(
    "A hold item that\n"
    "raises FARFETCH'D's\n"
    "critical-hit ratio.");

static const u8 sRedScarfDesc[] = _(
    "A hold item that\n"
    "raises Coolness in\n"
    "Contests.");

static const u8 sBlueScarfDesc[] = _(
    "A hold item that\n"
    "raises Beauty in\n"
    "Contests.");

static const u8 sPinkScarfDesc[] = _(
    "A hold item that\n"
    "raises Cuteness in\n"
    "Contests.");

static const u8 sGreenScarfDesc[] = _(
    "A hold item that\n"
    "raises Smartness in\n"
    "Contests.");

static const u8 sYellowScarfDesc[] = _(
    "A hold item that\n"
    "raises Tough in\n"
    "Contests.");


static const u8 sMachBikeDesc[] = _(
    "A folding bicycle\n"
    "that doubles your\n"
    "speed or better.");

static const u8 sCoinCaseDesc[] = _(
    "A case that holds\n"
    "up to 9,999 Coins.");

static const u8 sItemfinderDesc[] = _(
    "A device that\n"
    "signals an invisible\n"
    "item by sound.");

static const u8 sOldRodDesc[] = _(
    "Use by any body of\n"
    "water to fish for\n"
    "wild Pok??mon.");

static const u8 sGoodRodDesc[] = _(
    "A decent fishing\n"
    "rod for catching\n"
    "wild Pok??mon.");

static const u8 sSuperRodDesc[] = _(
    "The best fishing\n"
    "rod for catching\n"
    "wild Pok??mon.");

static const u8 sSSTicketDesc[] = _(
    "The ticket required\n"
    "for sailing on a\n"
    "ferry.");

static const u8 sContestPassDesc[] = _(
    "The pass required\n"
    "for entering\n"
    "Pok??mon CONTESTS.");

static const u8 sWailmerPailDesc[] = _(
    "A tool used for\n"
    "watering BERRIES\n"
    "and plants.");

static const u8 sDevonGoodsDesc[] = _(
    "A package that\n"
    "contains DEVON's\n"
    "machine parts.");

static const u8 sSootSackDesc[] = _(
    "A sack used to\n"
    "gather and hold\n"
    "volcanic ash.");

static const u8 sBasementKeyDesc[] = _(
    "The key for NEW\n"
    "MAUVILLE beneath\n"
    "MAUVILLE CITY.");

static const u8 sAcroBikeDesc[] = _(
    "A 2-gear bike.\n"
 "Press the R-button\n"
 "to shift gears.");

static const u8 sPokeblockCaseDesc[] = _(
    "A case for holding\n"
    "{POKEBLOCK}S made with\n"
    "a BERRY BLENDER.");

static const u8 sLetterDesc[] = _(
    "A letter to STEVEN\n"
    "from the PRESIDENT\n"
    "of the DEVON CORP.");

static const u8 sEonTicketDesc[] = _(
    "The ticket for a\n"
    "ferry to a distant\n"
    "southern island.");

static const u8 sRedOrbDesc[] = _(
    "A red, glowing orb\n"
    "said to contain an\n"
    "ancient power.");

static const u8 sBlueOrbDesc[] = _(
    "A blue, glowing orb\n"
    "said to contain an\n"
    "ancient power.");

static const u8 sScannerDesc[] = _(
    "A device found\n"
    "inside the\n"
    "ABANDONED SHIP.");

static const u8 sGoGogglesDesc[] = _(
    "Nifty goggles that\n"
    "protect eyes from\n"
    "desert sandstorms.");

static const u8 sMeteoriteDesc[] = _(
    "A meteorite found\n"
    "at METEOR FALLS.");

static const u8 sRoom1KeyDesc[] = _(
    "A key that opens a\n"
    "door inside the\n"
    "ABANDONED SHIP.");

static const u8 sRoom2KeyDesc[] = _(
    "A key that opens a\n"
    "door inside the\n"
    "ABANDONED SHIP.");

static const u8 sRoom4KeyDesc[] = _(
    "A key that opens a\n"
    "door inside the\n"
    "ABANDONED SHIP.");

static const u8 sRoom6KeyDesc[] = _(
    "A key that opens a\n"
    "door inside the\n"
    "ABANDONED SHIP.");

static const u8 sStorageKeyDesc[] = _(
    "The key to the\n"
    "storage inside the\n"
    "ABANDONED SHIP.");

static const u8 sRootFossilDesc[] = _(
    "A fossil of an\n"
    "ancient, seafloor-\n"
    "dwelling Pok??mon.");

static const u8 sClawFossilDesc[] = _(
    "A fossil of an\n"
    "ancient, seafloor-\n"
    "dwelling Pok??mon.");

static const u8 sDevonScopeDesc[] = _(
    "A device by DEVON\n"
    "that signals any\n"
    "unseeable Pok??mon.");


static const u8 sTM01Desc[] = _(
    "Powerful, but makes\n"
    "the user flinch if\n"
    "hit by the foe.");

static const u8 sTM02Desc[] = _(
    "Hooks and slashes\n"
    "the foe with long,\n"
    "sharp claws.");

static const u8 sTM03Desc[] = _(
    "Generates an\n"
    "ultrasonic wave\n"
    "that may confuse.");

static const u8 sTM04Desc[] = _(
    "Raises SP. ATK and\n"
    "SP. DEF by focusing\n"
    "the mind.");

static const u8 sTM05Desc[] = _(
    "A savage roar that\n"
    "makes the foe flee \n"
    "to end the battle.");

static const u8 sTM06Desc[] = _(
    "Poisons the foe\n"
    "with a toxin that\n"
    "gradually worsens.");

static const u8 sTM07Desc[] = _(
    "Creates a hailstorm\n"
    "that damages all\n"
    "types except ICE.");

static const u8 sTM08Desc[] = _(
    "Bulks up the body\n"
    "to boost both\n"
    "ATTACK & DEFENSE.");

static const u8 sTM09Desc[] = _(
    "Shoots 2 to 5 seeds\n"
    "in a row to strike\n"
    "the foe.");

static const u8 sTM10Desc[] = _(
    "The attack power\n"
    "varies among\n"
    "different Pok??mon.");

static const u8 sTM11Desc[] = _(
    "Raises the power of\n"
    "FIRE-type moves\n"
    "for 5 turns.");

static const u8 sTM12Desc[] = _(
    "Enrages the foe so\n"
    "it can only use\n"
    "attack moves.");

static const u8 sTM13Desc[] = _(
    "Fires an icy cold\n"
    "beam that may\n"
    "freeze the foe.");

static const u8 sTM14Desc[] = _(
    "A brutal snow-and-\n"
    "wind attack that\n"
    "may freeze the foe.");

static const u8 sTM15Desc[] = _(
    "Powerful, but needs\n"
    "recharging the\n"
    "next turn.");

static const u8 sTM16Desc[] = _(
    "Creates a wall of\n"
    "light that lowers\n"
    "SP. ATK damage.");

static const u8 sTM17Desc[] = _(
    "Negates all damage,\n"
    "but may fail if used\n"
    "in succession.");

static const u8 sTM18Desc[] = _(
    "Raises the power of\n"
    "WATER-type moves\n"
    "for 5 turns.");

static const u8 sTM19Desc[] = _(
    "Recovers half the\n"
    "HP of the damage \n"
    "this move inflicts.");

static const u8 sTM20Desc[] = _(
    "Prevents status\n"
    "abnormality with a\n"
    "mystical power.");

static const u8 sTM21Desc[] = _(
    "The less the user\n"
    "likes you, the more\n"
    "powerful this move.");

static const u8 sTM22Desc[] = _(
    "Absorbs sunlight in\n"
    "the 1st turn, then\n"
    "attacks next turn.");

static const u8 sTM23Desc[] = _(
    "Slams the foe with\n"
    "a hard tail. It may\n"
    "lower DEFENSE.");

static const u8 sTM24Desc[] = _(
    "A powerful electric\n"
    "attack that may\n"
    "cause paralysis.");

static const u8 sTM25Desc[] = _(
    "Strikes the foe\n"
    "with a thunderbolt.\n"
    "It may paralyze.");

static const u8 sTM26Desc[] = _(
    "Causes a quake\n"
    "that has no effect\n"
    "on flying foes.");

static const u8 sTM27Desc[] = _(
    "The more the user\n"
    "likes you, the more\n"
    "powerful this move.");

static const u8 sTM28Desc[] = _(
    "Digs underground\n"
    "the 1st turn, then\n"
    "strikes next turn.");

static const u8 sTM29Desc[] = _(
    "A powerful psychic\n"
    "attack that may\n"
    "lower SP. DEF.");

static const u8 sTM30Desc[] = _(
    "Hurls a dark lump\n"
    "at the foe. It may\n"
    "lower SP. DEF.");

static const u8 sTM31Desc[] = _(
    "Destroys barriers\n"
    "like LIGHT SCREEN\n"
    "and causes damage.");

static const u8 sTM32Desc[] = _(
    "Creates illusory\n"
    "copies to enhance\n"
    "elusiveness.");

static const u8 sTM33Desc[] = _(
    "Creates a wall of\n"
    "light that weakens\n"
    "physical attacks.");

static const u8 sTM34Desc[] = _(
    "Zaps the foe with a\n"
    "jolt of electricity\n"
    "that never misses.");

static const u8 sTM35Desc[] = _(
    "Looses a stream of\n"
    "fire that may burn\n"
    "the foe.");

static const u8 sTM36Desc[] = _(
    "Hurls sludge at the\n"
    "foe. It may poison\n"
    "the foe.");

static const u8 sTM37Desc[] = _(
    "Causes a sandstorm\n"
    "that hits the foe\n"
    "over several turns.");

static const u8 sTM38Desc[] = _(
    "A powerful fire\n"
    "attack that may\n"
    "burn the foe.");

static const u8 sTM39Desc[] = _(
    "Stops the foe from\n"
    "moving with rocks.\n"
    "May lower SPEED.");

static const u8 sTM40Desc[] = _(
    "An extremely fast\n"
    "attack that can't\n"
    "be avoided.");

static const u8 sTM41Desc[] = _(
    "Prevents the foe\n"
    "from using the same\n"
    "move in a row.");

static const u8 sTM42Desc[] = _(
    "Raises ATTACK when\n"
    "poisoned, burned,\n"
    "or paralyzed.");

static const u8 sTM43Desc[] = _(
    "Adds an effect to\n"
    "attack depending\n"
    "on the location.");

static const u8 sTM44Desc[] = _(
    "The user sleeps for\n"
    "2 turns to restore\n"
    "health and status.");

static const u8 sTM45Desc[] = _(
    "Makes it tough to\n"
    "attack a foe of the\n"
    "opposite gender.");

static const u8 sTM46Desc[] = _(
    "While attacking,\n"
    "it may steal the\n"
    "foe's held item.");

static const u8 sTM47Desc[] = _(
    "Spreads hard-\n"
    "edged wings and\n"
    "slams into the foe.");

static const u8 sTM48Desc[] = _(
    "Switches abilities\n"
    "with the foe on the\n"
    "turn this is used.");

static const u8 sTM49Desc[] = _(
    "Steals the effects\n"
    "of the move the foe\n"
    "is trying to use.");

static const u8 sTM50Desc[] = _(
    "Enables full-power\n"
    "attack, but sharply\n"
    "lowers SP. ATK.");


static const u8 sHM01Desc[] = _(
    "Attacks the foe\n"
    "with sharp blades\n"
    "or claws.");

static const u8 sHM02Desc[] = _(
    "Flies up on the\n"
    "first turn, then\n"
    "attacks next turn.");

static const u8 sHM03Desc[] = _(
    "Creates a huge\n"
    "wave, then crashes\n"
    "it down on the foe.");

static const u8 sHM04Desc[] = _(
    "Builds enormous\n"
    "power, then slams\n"
    "the foe.");

static const u8 sHM05Desc[] = _(
    "Looses a powerful\n"
    "blast of light that\n"
    "reduces accuracy.");

static const u8 sHM06Desc[] = _(
    "A rock-crushingly\n"
    "tough attack that\n"
    "may lower DEFENSE.");

static const u8 sHM07Desc[] = _(
    "Attacks the foe\n"
    "with enough power\n"
    "to climb waterfalls.");

static const u8 sHM08Desc[] = _(
    "Dives underwater\n"
    "the 1st turn, then\n"
    "attacks next turn.");


static const u8 sOaksParcelDesc[] = _(
    "A parcel for PROF.\n"
    "OAK from a Pok??mon\n"
    "MART's clerk.");

static const u8 sPokeFluteDesc[] = _(
    "A sweet-sounding\n"
    "flute that awakens\n"
    "Pok??mon.");

static const u8 sSecretKeyDesc[] = _(
    "The key to the\n"
    "CINNABAR ISLAND\n"
    "GYM's entrance.");

static const u8 sBikeVoucherDesc[] = _(
    "A voucher for\n"
    "obtaining a bicycle\n"
    "from the BIKE SHOP.");

static const u8 sGoldTeethDesc[] = _(
    "Gold dentures lost\n"
    "by the SAFARI\n"
    "ZONE's WARDEN.");

static const u8 sOldAmberDesc[] = _(
    "A stone containing\n"
    "the genes of an\n"
    "ancient Pok??mon.");

static const u8 sCardKeyDesc[] = _(
    "A card-type door\n"
    "key used in SILPH\n"
    "CO's office.");

static const u8 sLiftKeyDesc[] = _(
    "An elevator key\n"
    "used in TEAM\n"
    "ROCKET's HIDEOUT.");

static const u8 sArmorFossilDesc[] = _(
    "A piece of a\n"
    "prehistoric POK??-\n"
    "MON's head.");

static const u8 sSkullFossilDesc[] = _(
    "A piece of a\n"
    "prehistoric POK??-\n"
    "MON's head.");

static const u8 sHelixFossilDesc[] = _(
    "A piece of an\n"
    "ancient marine\n"
    "Pok??mon's seashell.");

static const u8 sDomeFossilDesc[] = _(
    "A piece of an\n"
    "ancient marine\n"
    "Pok??mon's shell.");

static const u8 sCoverFossilDesc[] = _(
    "A piece of a\n"
    "prehistoric POK??-\n"
    "MON's back.");

static const u8 sPlumeFossilDesc[] = _(
    "A piece of a\n"
    "prehistoric POK??-\n"
    "MON's wing.");

static const u8 sJawFossilDesc[] = _(
    "A piece of a prehis-\n"
    "toric Pok??mon's\n"
    "large jaw.");

static const u8 sSailFossilDesc[] = _(
    "A piece of a prehis-\n"
    "toric Pok??mon's\n"
    "skin sail.");

static const u8 sSilphScopeDesc[] = _(
    "SILPH CO's scope\n"
    "makes unseeable\n"
    "Pok??mon visible.");

static const u8 sBicycleDesc[] = _(
    "A folding bicycle\n"
    "that is faster than\n"
    "the RUNNING SHOES.");

static const u8 sTownMapDesc[] = _(
    "Can be viewed\n"
    "anytime. Shows your\n"
    "present location.");

static const u8 sVSSeekerDesc[] = _(
    "A rechargeable unit\n"
    "that flags battle-\n"
    "ready TRAINERS.");

static const u8 sFameCheckerDesc[] = _(
    "Stores information\n"
    "on famous people\n"
    "for instant recall.");

static const u8 sTMCaseDesc[] = _(
    "A convenient case \n"
    "that holds TMs and\n"
    "HMs.");

static const u8 sBerryPouchDesc[] = _(
    "A convenient\n"
    "container that\n"
    "holds BERRIES.");

static const u8 sTeachyTVDesc[] = _(
    "A TV set tuned to\n"
    "an advice program\n"
    "for TRAINERS.");

static const u8 sTriPassDesc[] = _(
    "A pass for ferries\n"
    "between ONE, TWO,\n"
    "and THREE ISLAND.");

static const u8 sRainbowPassDesc[] = _(
    "For ferries serving\n"
    "VERMILION and the\n"
    "SEVII ISLANDS.");

static const u8 sTeaDesc[] = _(
    "A thirst-quenching\n"
    "tea prepared by an\n"
    "old lady.");

static const u8 sMysticTicketDesc[] = _(
    "A ticket required\n"
    "to board the ship\n"
    "to NAVEL ROCK.");

static const u8 sAuroraTicketDesc[] = _(
    "A ticket required\n"
    "to board the ship\n"
    "to BIRTH ISLAND.");

static const u8 sPowderJarDesc[] = _(
    "Stores BERRY\n"
    "POWDER made using\n"
    "a BERRY CRUSHER.");

static const u8 sRubyDesc[] = _(
    "An exquisite, red-\n"
    "glowing gem that\n"
    "symbolizes passion.");

static const u8 sSapphireDesc[] = _(
    "A brilliant blue gem\n"
    "that symbolizes\n"
    "honesty.");


static const u8 sMagmaEmblemDesc[] = _(
    "A medal-like item in\n"
    "the same shape as\n"
    "TEAM MAGMA's mark.");

static const u8 sOldSeaMapDesc[] = _(
    "A faded sea chart\n"
    "that shows the way\n"
    "to a certain island.");


static const u8 sWideLensDesc[] = _(
    "A magnifying lens\n"
    "that boosts the\n"
    "accuracy of moves.");

static const u8 sMuscleBandDesc[] = _(
    "A headband that\n"
    "boosts the power of\n"
    "physical moves.");

static const u8 sWiseGlassesDesc[] = _(
    "A pair of glasses\n"
    "that ups the power\n"
    "of special moves.");

static const u8 sExpertBeltDesc[] = _(
    "A belt that boosts\n"
    "the power of super\n"
    "effective moves.");

static const u8 sLightClayDesc[] = _(
    "Extends the length\n"
    "of barrier moves\n"
    "used by the holder.");

static const u8 sLifeOrbDesc[] = _(
    "Boosts the power of\n"
    "moves at the cost\n"
    "of some HP per turn.");

static const u8 sPowerHerbDesc[] = _(
    "Allows immediate\n"
    "use of a move that\n"
    "charges first.");

static const u8 sToxicOrbDesc[] = _(
    "A bizarre orb that\n"
    "badly poisons the\n"
    "holder in battle.");

static const u8 sFlameOrbDesc[] = _(
    "A bizarre orb that\n"
    "inflicts a burn on\n"
    "holder in battle.");

static const u8 sQuickPowderDesc[] = _(
    "An item to be held\n"
    "by Ditto. This odd\n"
    "powder boosts Speed.");

static const u8 sFocusSashDesc[] = _(
    "If the holder has\n"
    "full HP, it endures\n"
    "KO hits with 1 HP.");

static const u8 sZoomLensDesc[] = _(
    "If the holder moves\n"
    "after the foe, it'll\n"
    "boost accuracy.");

static const u8 sMetronomeDesc[] = _(
    "A held item that\n"
    "boosts a move used\n"
    "consecutively.");

static const u8 sIronBallDesc[] = _(
    "Cuts Speed and lets\n"
    "Flying-types be hit\n"
    "by Ground moves.");

static const u8 sLaggingTailDesc[] = _(
    "A held item that\n"
    "makes the holder\n"
    "move slower.");

static const u8 sDestinyKnotDesc[] = _(
    "If the holder falls\n"
    "in love, the foe\n"
    "does too.");

static const u8 sBlackSludgeDesc[] = _(
    "Gradually restores\n"
    "HP of Poison-types.\n"
    "Damages others.");

static const u8 sIcyRockDesc[] = _(
    "Extends the length\n"
    "of the move Hail\n"
    "used by the holder.");

static const u8 sSmoothRockDesc[] = _(
    "Extends the length\n"
    "of Sandstorm if\n"
    "used by the holder.");

static const u8 sHeatRockDesc[] = _(
    "Extends the length\n"
    "of Sunny Day if\n"
    "used by the holder.");

static const u8 sDampRockDesc[] = _(
    "Extends the length\n"
    "of Rain Dance if\n"
    "used by the holder.");

static const u8 sGripClawDesc[] = _(
    "Makes binding moves\n"
    "used by the holder\n"
    "go on for 7 turns.");

static const u8 sChoiceScarfDesc[] = _(
    "Boosts Speed, but\n"
    "allows the use of\n"
    "only one move.");

static const u8 sStickyBarbDesc[] = _(
    "Damages the holder\n"
    "each turn. May latch\n"
    "on to foes.");

static const u8 sShedShellDesc[] = _(
    "Enables the holder\n"
    "to switch out of\n"
    "battle without fail.");

static const u8 sBigRootDesc[] = _(
    "A held item that\n"
    "boosts the power of\n"
    "HP-stealing moves.");

static const u8 sChoiceSpecsDesc[] = _(
    "Boosts Sp. Atk, but\n"
    "allows the use of\n"
    "only one move.");

static const u8 sOddKeystoneDesc[] = _(
    "Voices can be heard\n"
    "from this odd stone\n"
    "occasionally.");

static const u8 sAdamantOrbDesc[] = _(
    "Boosts the power of\n"
    "Dialga's Dragon and\n"
    "Steel-type moves.");

static const u8 sLustrousOrbDesc[] = _(
    "Boosts the power of\n"
    "Palkia's Dragon and\n"
    "Water-type moves.");

static const u8 sGriseousOrbDesc[] = _(
    "Powers up Giratina's\n"
    "Dragon and Ghost-\n"
    "type moves.");

static const u8 sGracideaDesc[] = _(
    "Bouquets made with\n"
    "it are offered as a\n"
    "token of gratitude.");

static const u8 sBugMemoryDesc[] = _(
    "A disc with Bug\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sDarkMemoryDesc[] = _(
    "A disc with Dark\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sDragonMemoryDesc[] = _(
    "A disc with Dragon\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sElectricMemoryDesc[] = _(
    "A disc with Electric\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sFairyMemoryDesc[] = _(
    "A disc with Fairy\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sFightingMemoryDesc[] = _(
    "A disc with Fighting\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sFireMemoryDesc[] = _(
    "A disc with Fire\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sFlyingMemoryDesc[] = _(
    "A disc with Flying\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sGhostMemoryDesc[] = _(
    "A disc with Ghost\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sGrassMemoryDesc[] = _(
    "A disc with Grass\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sGroundMemoryDesc[] = _(
    "A disc with Ground\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sIceMemoryDesc[] = _(
    "A disc with Ice\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sPoisonMemoryDesc[] = _(
    "A disc with Poison\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sPsychicMemoryDesc[] = _(
    "A disc with Psychic\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sRockMemoryDesc[] = _(
    "A disc with Rock\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sSteelMemoryDesc[] = _(
    "A disc with Steel\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sWaterMemoryDesc[] = _(
    "A disc with Water\n"
    "type data. It swaps\n"
    "Silvally's type.");

static const u8 sFlamePlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Fire-type moves.");

static const u8 sSplashPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Water-type moves.");

static const u8 sZapPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of Elec-\n"
    "tric-type moves.");

static const u8 sMeadowPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Grass-type moves.");

static const u8 sIciclePlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Ice-type moves.");

static const u8 sFistPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of Fight-\n"
    "ing-type moves.");

static const u8 sToxicPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Poison-type moves.");

static const u8 sEarthPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Ground-type moves.");

static const u8 sSkyPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Flying-type moves.");

static const u8 sMindPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of Psy\n"
    "chic-type moves.");

static const u8 sInsectPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Bug-type moves.");

static const u8 sStonePlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Rock-type moves.");

static const u8 sSpookyPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Ghost-type moves.");

static const u8 sDracoPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Dragon-type moves.");

static const u8 sDreadPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Dark-type moves.");

static const u8 sIronPlateDesc[] = _(
    "A tablet that ups\n"
    "the power of\n"
    "Steel-type moves.");

static const u8 sEvioliteDesc[] = _(
    "Raises the Def and\n"
    "Sp. Def of Pok??mon\n"
    "that can evolve.");

static const u8 sFloatStoneDesc[] = _(
    "It's so light that\n"
    "when held, it halves\n"
    "a Pok??mon's weight.");

static const u8 sRockyHelmetDesc[] = _(
    "Hurts the foe if\n"
    "they touch its\n"
    "holder.");

static const u8 sAirBalloonDesc[] = _(
    "Elevates the holder\n"
    "in the air. If hit,\n"
    "this item will burst.");

static const u8 sRedCardDesc[] = _(
    "Switches out the\n"
    "foe if they hit the\n"
    "holder.");

static const u8 sRingTargetDesc[] = _(
    "Moves that wouldn't\n"
    "have effect will\n"
    "land on its holder.");

static const u8 sBindingBandDesc[] = _(
    "Increases the\n"
    "power of binding\n"
    "moves when held.");

static const u8 sEjectButtonDesc[] = _(
    "Switches out the\n"
    "user if they're hit\n"
    "by the foe.");

static const u8 sAbsorbBulbDesc[] = _(
    "Raises SP. ATK if\n"
    "the holder is hit by\n"
    "a Water-type move.");

static const u8 sCellBatteryDesc[] = _(
    "Raises ATK if the\n"
    "holder is hit by an\n"
    "Electric-type move.");

static const u8 sLuminousMossDesc[] = _(
    "Raises SP. DEF if\n"
    "the holder is hit by\n"
    "a Water-type move.");

static const u8 sSnowballDesc[] = _(
    "Raises ATK if its\n"
    "holder is hit by an\n"
    "Ice-type move.");

static const u8 sWeaknessPolicyDesc[] = _(
    "If hit by a Super\n"
    "Effective move, ups\n"
    "ATK and SP. ATK.");

static const u8 sDouseDriveDesc[] = _(
    "Changes Genesect's\n"
    "Techno Blast to\n"
    "Water-type.");

static const u8 sShockDriveDesc[] = _(
    "Changes Genesect's\n"
    "Techno Blast to\n"
    "Electric-type.");

static const u8 sBurnDriveDesc[] = _(
    "Changes Genesect's\n"
    "Techno Blast to\n"
    "Fire-type.");

static const u8 sChillDriveDesc[] = _(
    "Changes Genesect's\n"
    "Techno Blast to\n"
    "Ice-type.");

static const u8 sFireGemDesc[] = _(
    "Increases the\n"
    "power of Fire\n"
    "Type moves.");

static const u8 sWaterGemDesc[] = _(
    "Increases the\n"
    "power of Water\n"
    "Type moves.");

static const u8 sElectricGemDesc[] = _(
    "Increases the\n"
    "power of Electric\n"
    "Type moves.");

static const u8 sGrassGemDesc[] = _(
    "Increases the\n"
    "power of Grass\n"
    "Type moves.");

static const u8 sIceGemDesc[] = _(
    "Increases the\n"
    "power of Ice\n"
    "Type moves.");

static const u8 sFightingGemDesc[] = _(
    "Increases the\n"
    "power of Fighting\n"
    "Type moves.");

static const u8 sPoisonGemDesc[] = _(
    "Increases the\n"
    "power of Poison\n"
    "Type moves.");

static const u8 sGroundGemDesc[] = _(
    "Increases the\n"
    "power of Ground\n"
    "Type moves.");

static const u8 sFlyingGemDesc[] = _(
    "Increases the\n"
    "power of Flying\n"
    "Type moves.");

static const u8 sPsychicGemDesc[] = _(
    "Increases the\n"
    "power of Psychic\n"
    "Type moves.");

static const u8 sBugGemDesc[] = _(
    "Increases the\n"
    "power of Bug\n"
    "Type moves.");

static const u8 sRockGemDesc[] = _(
    "Increases the\n"
    "power of Rock\n"
    "Type moves.");

static const u8 sGhostGemDesc[] = _(
    "Increases the\n"
    "power of Ghost\n"
    "Type moves.");

static const u8 sDragonGemDesc[] = _(
    "Increases the\n"
    "power of Dragon\n"
    "Type moves.");

static const u8 sDarkGemDesc[] = _(
    "Increases the\n"
    "power of Dark\n"
    "Type moves.");

static const u8 sSteelGemDesc[] = _(
    "Increases the\n"
    "power of Steel\n"
    "Type moves.");

static const u8 sNormalGemDesc[] = _(
    "Increases the\n"
    "power of Normal\n"
    "Type moves.");

static const u8 sFairyGemDesc[] = _(
    "Increases the\n"
    "power of Fairy\n"
    "Type moves.");

static const u8 sAssaultVestDesc[] = _(
    "Raises Sp. Def but\n"
    "prevents the use\n"
    "of status moves.");

static const u8 sPixiePlateDesc[] = _(
    "A stone tablet that\n"
    "boosts the power of\n"
    "Fairy-type moves.");

static const u8 sSafetyGogglesDesc[] = _(
    "Protect from\n"
    "weather damage and\n"
    "powder moves.");

static const u8 sGengariteDesc[] = _(
    "This stone enables\n"
    "Gengar to Mega\n"
    "Evolve in battle.");

static const u8 sGardevoiriteDesc[] = _(
    "This stone enables\n"
    "Gardevoir to Mega\n"
    "Evolve in battle.");

static const u8 sAmpharositeDesc[] = _(
    "This stone enables\n"
    "Ampharos to Mega\n"
    "Evolve in battle.");

static const u8 sVenusauriteDesc[] = _(
    "This stone enables\n"
    "Venusaur to Mega\n"
    "Evolve in battle.");

static const u8 sCharizarditeDesc[] = _(
    "This stone enables\n"
    "Charizard to Mega\n"
    "Evolve in battle.");

static const u8 sBlastoisiniteDesc[] = _(
    "This stone enables\n"
    "Blastoise to Mega\n"
    "Evolve in battle.");

static const u8 sMewtwoniteDesc[] = _(
    "This stone enables\n"
    "Mewtwo to Mega\n"
    "Evolve in battle.");

static const u8 sBlazikeniteDesc[] = _(
    "This stone enables\n"
    "Blaziken to Mega\n"
    "Evolve in battle.");

static const u8 sMedichamiteDesc[] = _(
    "This stone enables\n"
    "Medicham to Mega\n"
    "Evolve in battle.");

static const u8 sHoundoominiteDesc[] = _(
    "This stone enables\n"
    "Houndoom to Mega\n"
    "Evolve in battle.");

static const u8 sAggroniteDesc[] = _(
    "This stone enables\n"
    "Aggron to Mega\n"
    "Evolve in battle.");

static const u8 sBanettiteDesc[] = _(
    "This stone enables\n"
    "Banette to Mega\n"
    "Evolve in battle.");

static const u8 sTyranitariteDesc[] = _(
    "This stone enables\n"
    "Tyranitar to Mega\n"
    "Evolve in battle.");

static const u8 sScizoriteDesc[] = _(
    "This stone enables\n"
    "Scizor to Mega\n"
    "Evolve in battle.");

static const u8 sPinsiriteDesc[] = _(
    "This stone enables\n"
    "Pinsir to Mega\n"
    "Evolve in battle.");

static const u8 sAerodactyliteDesc[] = _(
    "This stone enables\n"
    "Aerodactyl to Mega\n"
    "Evolve in battle.");

static const u8 sLucarioniteDesc[] = _(
    "This stone enables\n"
    "Lucario to Mega\n"
    "Evolve in battle.");

static const u8 sAbomasiteDesc[] = _(
    "This stone enables\n"
    "Abomasnow to Mega\n"
    "Evolve in battle.");

static const u8 sKangaskhaniteDesc[] = _(
    "This stone enables\n"
    "Kangaskhan to Mega\n"
    "Evolve in battle.");

static const u8 sGyaradositeDesc[] = _(
    "This stone enables\n"
    "Gyarados to Mega\n"
    "Evolve in battle.");

static const u8 sAbsoliteDesc[] = _(
    "This stone enables\n"
    "Absol to Mega\n"
    "Evolve in battle.");

static const u8 sAlakaziteDesc[] = _(
    "This stone enables\n"
    "Alakazam to Mega\n"
    "Evolve in battle.");

static const u8 sHeracroniteDesc[] = _(
    "This stone enables\n"
    "Heracross to Mega\n"
    "Evolve in battle.");

static const u8 sMawiliteDesc[] = _(
    "This stone enables\n"
    "Mawile to Mega\n"
    "Evolve in battle.");

static const u8 sManectiteDesc[] = _(
    "This stone enables\n"
    "Manectric to Mega\n"
    "Evolve in battle.");

static const u8 sGarchompiteDesc[] = _(
    "This stone enables\n"
    "Garchomp to Mega\n"
    "Evolve in battle.");

static const u8 sLatiasiteDesc[] = _(
    "This stone enables\n"
    "Latias to Mega\n"
    "Evolve in battle.");

static const u8 sLatiositeDesc[] = _(
    "This stone enables\n"
    "Latios to Mega\n"
    "Evolve in battle.");

static const u8 sSwampertiteDesc[] = _(
    "This stone enables\n"
    "Swampert to Mega\n"
    "Evolve in battle.");

static const u8 sSceptiliteDesc[] = _(
    "This stone enables\n"
    "Sceptile to Mega\n"
    "Evolve in battle.");

static const u8 sSableniteDesc[] = _(
    "This stone enables\n"
    "Sableye to Mega\n"
    "Evolve in battle.");

static const u8 sAltarianiteDesc[] = _(
    "This stone enables\n"
    "Altaria to Mega\n"
    "Evolve in battle.");

static const u8 sGalladiteDesc[] = _(
    "This stone enables\n"
    "Gallade to Mega\n"
    "Evolve in battle.");

static const u8 sAudiniteDesc[] = _(
    "This stone enables\n"
    "Audino to Mega\n"
    "Evolve in battle.");

static const u8 sMetagrossiteDesc[] = _(
    "This stone enables\n"
    "Metagross to Mega\n"
    "Evolve in battle.");

static const u8 sSharpedoniteDesc[] = _(
    "This stone enables\n"
    "Sharpedo to Mega\n"
    "Evolve in battle.");

static const u8 sSlowbroniteDesc[] = _(
    "This stone enables\n"
    "Slowbro to Mega\n"
    "Evolve in battle.");

static const u8 sSteelixiteDesc[] = _(
    "This stone enables\n"
    "Steelix to Mega\n"
    "Evolve in battle.");

static const u8 sPidgeotiteDesc[] = _(
    "This stone enables\n"
    "Pidgeot to Mega\n"
    "Evolve in battle.");

static const u8 sGlalititeDesc[] = _(
    "This stone enables\n"
    "Glalie to Mega\n"
    "Evolve in battle.");

static const u8 sDianciteDesc[] = _(
    "This stone enables\n"
    "Diancie to Mega\n"
    "Evolve in battle.");

static const u8 sCameruptiteDesc[] = _(
    "This stone enables\n"
    "Camerupt to Mega\n"
    "Evolve in battle.");

static const u8 sLopunniteDesc[] = _(
    "This stone enables\n"
    "Lopunny to Mega\n"
    "Evolve in battle.");

static const u8 sSalamenciteDesc[] = _(
    "This stone enables\n"
    "Salamence to Mega\n"
    "Evolve in battle.");

static const u8 sBeedrilliteDesc[] = _(
    "This stone enables\n"
    "Beedrill to Mega\n"
    "Evolve in battle.");

static const u8 sMegaBraceletDesc[] = _(
    "Enables {PKMN} holding\n"
    "their Mega Stone to\n"
    "Mega Evolve.");

static const u8 sProtectPadsDesc[] = _(
    "Guard the holder\n"
    "from contact move\n"
    "effects.");

static const u8 sTerrainExtenderDesc[] = _(
    "Extends the length\n"
    "of the active\n"
    "battle terrain.");

static const u8 sElectricSeedDesc[] = _(
    "Boosts Defense on\n"
    "Electric Terrain,\n"
    "but only one time.");

static const u8 sGrassySeedDesc[] = _(
    "Boosts Defense on\n"
    "Grassy Terrain,\n"
    "but only one time.");

static const u8 sMistySeedDesc[] = _(
    "Boosts Sp. Def. on\n"
    "Misty Terrain,\n"
    "but only one time.");

static const u8 sPsychicSeedDesc[] = _(
    "Boosts Sp. Def. on\n"
    "Psychic Terrain,\n"
    "but only one time.");

static const u8 sAdrenalineOrbDesc[] = _(
    "Boosts Speed if the\n"
    "user is intimidated,\n"
    "but only one time.");

static const u8 sHoneyDesc[] = _(
    "Sweet honey that\n"
    "attracts wild\n"
    "Pok??mon when used.");

static const u8 sHealthWingDesc[] = _(
    "An item that raises\n"
    "the base HP of\n"
    "a Pok??mon.");

static const u8 sMuscleWingDesc[] = _(
    "An item that raises\n"
    "the base ATTACK of\n"
    "a Pok??mon.");

static const u8 sResistWingDesc[] = _(
    "An item that raises\n"
    "the base DEFENSE\n"
    "of a Pok??mon.");

static const u8 sGeniusWingDesc[] = _(
    "An item that raises\n"
    "the base SP. ATK.\n"
    "of a Pok??mon.");

static const u8 sCleverWingDesc[] = _(
    "An item that raises\n"
    "the base SP. DEF.\n"
    "of a Pok??mon.");

static const u8 sSwiftWingDesc[] = _(
    "An item that raises\n"
    "the base SPEED of\n"
    "a Pok??mon.");

static const u8 sPrettyWingDesc[] = _(
    "A beautiful yet\n"
    "plain feather that\n"
    "does nothing.");

static const u8 sShinyCharmDesc[] = _(
 "A charm that will\n"
    "raise the chance\n"
    "of Shiny Pok??mon.");

static const u8 sOvalCharmDesc[] = _(
    "Raises the chance\n"
    "of finding eggs\n"
    "at the daycare.");
# 33 "src/item.c" 2
# 1 "src/data/items.h" 1
const struct Item gItems[] =
{
    [0] =
    {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .description = sDummyDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [1] =
    {
        .name = _("Master Ball"),
        .itemId = 1,
        .price = 0,
        .description = sMasterBallDesc,
        .pocket = 2,
        .type = 0,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 0,
    },

    [2] =
    {
        .name = _("Ultra Ball"),
        .itemId = 2,
        .price = 1200,
        .description = sUltraBallDesc,
        .pocket = 2,
        .type = 1,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 1,
    },

    [3] =
    {
        .name = _("Great Ball"),
        .itemId = 3,
        .price = 600,
        .description = sGreatBallDesc,
        .pocket = 2,
        .type = 2,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 2,
    },

    [4] =
    {
        .name = _("Pok?? Ball"),
        .itemId = 4,
        .price = 200,
        .description = sPokeBallDesc,
        .pocket = 2,
        .type = 3,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 3,
    },

    [5] =
    {
        .name = _("Safari Ball"),
        .itemId = 5,
        .price = 0,
        .description = sSafariBallDesc,
        .pocket = 2,
        .type = 4,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 4,
    },

    [6] =
    {
        .name = _("Net Ball"),
        .itemId = 6,
        .price = 1000,
        .description = sNetBallDesc,
        .pocket = 2,
        .type = 5,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 5,
    },

    [7] =
    {
        .name = _("Dive Ball"),
        .itemId = 7,
        .price = 1000,
        .description = sDiveBallDesc,
        .pocket = 2,
        .type = 6,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 6,
    },

    [8] =
    {
        .name = _("Nest Ball"),
        .itemId = 8,
        .price = 1000,
        .description = sNestBallDesc,
        .pocket = 2,
        .type = 7,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 7,
    },

    [9] =
    {
        .name = _("Repeat Ball"),
        .itemId = 9,
        .price = 1000,
        .description = sRepeatBallDesc,
        .pocket = 2,
        .type = 8,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 8,
    },

    [10] =
    {
        .name = _("Timer Ball"),
        .itemId = 10,
        .price = 1000,
        .description = sTimerBallDesc,
        .pocket = 2,
        .type = 9,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 9,
    },

    [11] =
    {
        .name = _("Luxury Ball"),
        .itemId = 11,
        .price = 1000,
        .description = sLuxuryBallDesc,
        .pocket = 2,
        .type = 10,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 10,
    },

    [27] =
    {
        .name = _("Premier Ball"),
        .itemId = 27,
        .price = 200,
        .description = sPremierBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 11,
    },

    [17] =
    {
        .name = _("Level Ball"),
        .itemId = 17,
        .price = 2000,
        .description = sLevelBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 12,
    },

    [18] =
    {
        .name = _("Lure Ball"),
        .itemId = 18,
        .price = 2000,
        .description = sLureBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 13,
    },

    [22] =
    {
        .name = _("Moon Ball"),
        .itemId = 22,
        .price = 2000,
        .description = sMoonBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 14,
    },

    [21] =
    {
        .name = _("Friend Ball"),
        .itemId = 21,
        .price = 2000,
        .description = sFriendBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 15,
    },

    [20] =
    {
        .name = _("Love Ball"),
        .itemId = 20,
        .price = 2000,
        .description = sLoveBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 16,
    },

    [19] =
    {
        .name = _("Heavy Ball"),
        .itemId = 19,
        .price = 2000,
        .description = sHeavyBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 17,
    },

    [16] =
    {
        .name = _("Fast Ball"),
        .itemId = 16,
        .price = 2000,
        .description = sFastBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 18,
    },

    [13] =
    {
        .name = _("Heal Ball"),
        .itemId = 13,
        .price = 300,
        .description = sHealBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 19,
    },

    [14] =
    {
        .name = _("Quick Ball"),
        .itemId = 14,
        .price = 3000,
        .description = sQuickBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 20,
    },

    [12] =
    {
        .name = _("Dusk Ball"),
        .itemId = 12,
        .price = 3000,
        .description = sDuskBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 21,
    },

    [15] =
    {
        .name = _("Cherish Ball"),
        .itemId = 15,
        .price = 10,
        .description = sCherishBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 22,
    },

    [23] =
    {
        .name = _("Sport Ball"),
        .itemId = 23,
        .price = 10,
        .description = sSportBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 23,
    },

    [24] =
    {
        .name = _("Park Ball"),
        .itemId = 24,
        .price = 10,
        .description = sParkBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 24,
    },

    [25] =
    {
        .name = _("Dream Ball"),
        .itemId = 25,
        .price = 10,
        .description = sDreamBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 25,
    },

    [26] =
    {
        .name = _("Beast Ball"),
        .itemId = 26,
        .price = 10,
        .description = sBeastBallDesc,
        .pocket = 2,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_PokeBall,
        .secondaryId = 26,
    },



    [28] =
    {
        .name = _("Potion"),
        .itemId = 28,
        .price = 300,
        .holdEffectParam = 20,
        .description = sPotionDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [29] =
    {
        .name = _("Antidote"),
        .itemId = 29,
        .price = 100,
        .description = sAntidoteDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [30] =
    {
        .name = _("Burn Heal"),
        .itemId = 30,
        .price = 250,
        .description = sBurnHealDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [31] =
    {
        .name = _("Ice Heal"),
        .itemId = 31,
        .price = 250,
        .description = sIceHealDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [32] =
    {
        .name = _("Awakening"),
        .itemId = 32,
        .price = 250,
        .description = sAwakeningDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [33] =
    {
        .name = _("Parlyz Heal"),
        .itemId = 33,
        .price = 200,
        .description = sParalyzeHealDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [34] =
    {
        .name = _("Full Restore"),
        .itemId = 34,
        .price = 3000,
        .holdEffectParam = 255,
        .description = sFullRestoreDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [35] =
    {
        .name = _("Max Potion"),
        .itemId = 35,
        .price = 2500,
        .holdEffectParam = 255,
        .description = sMaxPotionDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [36] =
    {
        .name = _("Hyper Potion"),
        .itemId = 36,
        .price = 1200,
        .holdEffectParam = 200,
        .description = sHyperPotionDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [37] =
    {
        .name = _("Super Potion"),
        .itemId = 37,
        .price = 700,
        .holdEffectParam = 50,
        .description = sSuperPotionDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [38] =
    {
        .name = _("Full Heal"),
        .itemId = 38,
        .price = 600,
        .description = sFullHealDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [39] =
    {
        .name = _("Revive"),
        .itemId = 39,
        .price = 1500,
        .description = sReviveDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [40] =
    {
        .name = _("Max Revive"),
        .itemId = 40,
        .price = 4000,
        .description = sMaxReviveDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [41] =
    {
        .name = _("Fresh Water"),
        .itemId = 41,
        .price = 200,
        .holdEffectParam = 50,
        .description = sFreshWaterDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [42] =
    {
        .name = _("Soda Pop"),
        .itemId = 42,
        .price = 300,
        .holdEffectParam = 60,
        .description = sSodaPopDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [43] =
    {
        .name = _("Lemonade"),
        .itemId = 43,
        .price = 350,
        .holdEffectParam = 80,
        .description = sLemonadeDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [44] =
    {
        .name = _("Moomoo Milk"),
        .itemId = 44,
        .price = 500,
        .holdEffectParam = 100,
        .description = sMoomooMilkDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [45] =
    {
        .name = _("Energypowder"),
        .itemId = 45,
        .price = 500,
        .description = sEnergyPowderDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [46] =
    {
        .name = _("Energy Root"),
        .itemId = 46,
        .price = 800,
        .description = sEnergyRootDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [47] =
    {
        .name = _("Heal Powder"),
        .itemId = 47,
        .price = 450,
        .description = sHealPowderDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [48] =
    {
        .name = _("Revival Herb"),
        .itemId = 48,
        .price = 2800,
        .description = sRevivalHerbDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [49] =
    {
        .name = _("Ether"),
        .itemId = 49,
        .price = 1200,
        .holdEffectParam = 10,
        .description = sEtherDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPRecovery,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_PPRecovery,
        .secondaryId = 0,
    },

    [50] =
    {
        .name = _("Max Ether"),
        .itemId = 50,
        .price = 2000,
        .holdEffectParam = 255,
        .description = sMaxEtherDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPRecovery,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_PPRecovery,
        .secondaryId = 0,
    },

    [51] =
    {
        .name = _("Elixir"),
        .itemId = 51,
        .price = 3000,
        .holdEffectParam = 10,
        .description = sElixirDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPRecovery,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_PPRecovery,
        .secondaryId = 0,
    },

    [52] =
    {
        .name = _("Max Elixir"),
        .itemId = 52,
        .price = 4500,
        .holdEffectParam = 255,
        .description = sMaxElixirDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPRecovery,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_PPRecovery,
        .secondaryId = 0,
    },

    [53] =
    {
        .name = _("Lava Cookie"),
        .itemId = 53,
        .price = 200,
        .description = sLavaCookieDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [54] =
    {
        .name = _("Blue Flute"),
        .itemId = 54,
        .price = 100,
        .description = sBlueFluteDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [55] =
    {
        .name = _("Yellow Flute"),
        .itemId = 55,
        .price = 200,
        .description = sYellowFluteDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [56] =
    {
        .name = _("Red Flute"),
        .itemId = 56,
        .price = 300,
        .description = sRedFluteDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [57] =
    {
        .name = _("Black Flute"),
        .itemId = 57,
        .price = 400,
        .holdEffectParam = 50,
        .description = sBlackFluteDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_BlackWhiteFlute,
        .secondaryId = 0,
    },

    [58] =
    {
        .name = _("White Flute"),
        .itemId = 58,
        .price = 500,
        .holdEffectParam = 150,
        .description = sWhiteFluteDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_BlackWhiteFlute,
        .secondaryId = 0,
    },

    [59] =
    {
        .name = _("Berry Juice"),
        .itemId = 59,
        .price = 100,
        .holdEffect = 1,
        .holdEffectParam = 20,
        .description = sBerryJuiceDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [60] =
    {
        .name = _("Sweet Heart"),
        .itemId = 60,
        .price = 3000,
        .holdEffectParam = 20,
        .description = sSweetHeartDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [61] =
    {
        .name = _("Big Malasada"),
        .itemId = 61,
        .price = 350,
        .description = sBigMalasadaDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [62] =
    {
        .name = _("Old Gateau"),
        .itemId = 62,
        .price = 350,
        .description = sOldGateauDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [63] =
    {
        .name = _("Sacred Ash"),
        .itemId = 63,
        .price = 200,
        .description = sSacredAshDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_SacredAsh,
        .secondaryId = 0,
    },



    [64] =
    {
        .name = _("Shoal Salt"),
        .itemId = 64,
        .price = 20,
        .description = sShoalSaltDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [65] =
    {
        .name = _("Shoal Shell"),
        .itemId = 65,
        .price = 20,
        .description = sShoalShellDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [66] =
    {
        .name = _("Red Shard"),
        .itemId = 66,
        .price = 200,
        .description = sRedShardDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [67] =
    {
        .name = _("Blue Shard"),
        .itemId = 67,
        .price = 200,
        .description = sBlueShardDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [68] =
    {
        .name = _("Yellow Shard"),
        .itemId = 68,
        .price = 200,
        .description = sYellowShardDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [69] =
    {
        .name = _("Green Shard"),
        .itemId = 69,
        .price = 200,
        .description = sGreenShardDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [70] =
    {
        .name = _("HP Up"),
        .itemId = 70,
        .price = 9800,
        .description = sHPUpDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .secondaryId = 0,
    },

    [71] =
    {
        .name = _("Protein"),
        .itemId = 71,
        .price = 9800,
        .description = sProteinDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .secondaryId = 0,
    },

    [72] =
    {
        .name = _("Iron"),
        .itemId = 72,
        .price = 9800,
        .description = sIronDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .secondaryId = 0,
    },

    [73] =
    {
        .name = _("Carbos"),
        .itemId = 73,
        .price = 9800,
        .description = sCarbosDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .secondaryId = 0,
    },

    [74] =
    {
        .name = _("Calcium"),
        .itemId = 74,
        .price = 9800,
        .description = sCalciumDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .secondaryId = 0,
    },

    [75] =
    {
        .name = _("Rare Candy"),
        .itemId = 75,
        .price = 4800,
        .description = sRareCandyDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_RareCandy,
        .secondaryId = 0,
    },

    [76] =
    {
        .name = _("PP Up"),
        .itemId = 76,
        .price = 9800,
        .description = sPPUpDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPUp,
        .secondaryId = 0,
    },

    [77] =
    {
        .name = _("Zinc"),
        .itemId = 77,
        .price = 9800,
        .description = sZincDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .secondaryId = 0,
    },

    [78] =
    {
        .name = _("PP Max"),
        .itemId = 78,
        .price = 9800,
        .description = sPPMaxDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPUp,
        .secondaryId = 0,
    },



    [79] =
    {
        .name = _("Guard Spec."),
        .itemId = 79,
        .price = 700,
        .description = sGuardSpecDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [80] =
    {
        .name = _("Dire Hit"),
        .itemId = 80,
        .price = 650,
        .description = sDireHitDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [81] =
    {
        .name = _("X Attack"),
        .itemId = 81,
        .price = 1000,
        .description = sXAttackDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [82] =
    {
        .name = _("X Defend"),
        .itemId = 82,
        .price = 2000,
        .description = sXDefendDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [83] =
    {
        .name = _("X Speed"),
        .itemId = 83,
        .price = 1000,
        .description = sXSpeedDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [84] =
    {
        .name = _("X Accuracy"),
        .itemId = 84,
        .price = 1000,
        .description = sXAccuracyDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [85] =
    {
        .name = _("X Sp. Atk."),
        .itemId = 85,
        .price = 1000,
        .description = sXSpecialAttackDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [86] =
    {
        .name = _("X Sp. Def."),
        .itemId = 86,
        .price = 2000,
        .description = sXSpecialDefenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_StatIncrease,
        .secondaryId = 0,
    },

    [87] =
    {
        .name = _("Pok?? Doll"),
        .itemId = 87,
        .price = 1000,
        .description = sPokeDollDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_Escape,
        .secondaryId = 0,
    },

    [88] =
    {
        .name = _("Fluffy Tail"),
        .itemId = 88,
        .price = 1000,
        .description = sFluffyTailDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 2,
        .battleUseFunc = ItemUseInBattle_Escape,
        .secondaryId = 0,
    },



    [91] =
    {
        .name = _("Super Repel"),
        .itemId = 91,
        .price = 500,
        .holdEffectParam = 200,
        .description = sSuperRepelDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_Repel,
        .secondaryId = 0,
    },

    [92] =
    {
        .name = _("Max Repel"),
        .itemId = 92,
        .price = 700,
        .holdEffectParam = 250,
        .description = sMaxRepelDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_Repel,
        .secondaryId = 0,
    },

    [93] =
    {
        .name = _("Ab. Capsule"),
        .itemId = 93,
        .price = 10000,
        .holdEffectParam = 0,
        .description = sAbilityCapsuleDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_AbilityCapsule,
        .secondaryId = 0,
    },

    [89] =
    {
        .name = _("Escape Rope"),
        .itemId = 89,
        .description = sEscapeRopeDesc,





        .price = 550,
        .importance = 0,
        .pocket = 1,

        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_EscapeRope,
        .secondaryId = 0,
    },

    [90] =
    {
        .name = _("Repel"),
        .itemId = 90,
        .price = 350,
        .holdEffectParam = 100,
        .description = sRepelDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_Repel,
        .secondaryId = 0,
    },



    [101] =
    {
        .name = _("Sun Stone"),
        .itemId = 101,
        .price = 2100,
        .description = sSunStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [102] =
    {
        .name = _("Moon Stone"),
        .itemId = 102,
        .price = 0,
        .description = sMoonStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [103] =
    {
        .name = _("Fire Stone"),
        .itemId = 103,
        .price = 2100,
        .description = sFireStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [104] =
    {
        .name = _("ThunderStone"),
        .itemId = 104,
        .price = 2100,
        .description = sThunderStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [105] =
    {
        .name = _("Water Stone"),
        .itemId = 105,
        .price = 2100,
        .description = sWaterStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [106] =
    {
        .name = _("Leaf Stone"),
        .itemId = 106,
        .price = 2100,
        .description = sLeafStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [107] =
    {
        .name = _("Dawn Stone"),
        .itemId = 107,
        .price = 2100,
        .description = sDawnStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [108] =
    {
        .name = _("Dusk Stone"),
        .itemId = 108,
        .price = 2100,
        .description = sDuskStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [109] =
    {
        .name = _("Shiny Stone"),
        .itemId = 109,
        .price = 2100,
        .description = sShinyStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },

    [110] =
    {
        .name = _("Ice Stone"),
        .itemId = 110,
        .price = 2100,
        .description = sIceStoneDesc,
        .pocket = 1,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_EvolutionStone,
        .secondaryId = 0,
    },



    [111] =
    {
        .name = _("Red Apricorn"),
        .itemId = 111,
        .price = 200,
        .description = sRedApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [112] =
    {
        .name = _("Blu Apricorn"),
        .itemId = 112,
        .price = 200,
        .description = sBlueApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [113] =
    {
        .name = _("Ylw Apricorn"),
        .itemId = 113,
        .price = 200,
        .description = sYellowApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [114] =
    {
        .name = _("Grn Apricorn"),
        .itemId = 114,
        .price = 200,
        .description = sGreenApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [115] =
    {
        .name = _("Pnk Apricorn"),
        .itemId = 115,
        .price = 200,
        .description = sPinkApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [116] =
    {
        .name = _("Wht Apricorn"),
        .itemId = 116,
        .price = 200,
        .description = sWhiteApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [117] =
    {
        .name = _("Blk Apricorn"),
        .itemId = 117,
        .price = 200,
        .description = sBlackApricornDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [118] =
    {
        .name = _("TinyMushroom"),
        .itemId = 118,
        .price = 500,
        .description = sTinyMushroomDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [119] =
    {
        .name = _("Big Mushroom"),
        .itemId = 119,
        .price = 5000,
        .description = sBigMushroomDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [120] =
    {
        .name = _("Pearl"),
        .itemId = 120,
        .price = 1400,
        .description = sPearlDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [121] =
    {
        .name = _("Big Pearl"),
        .itemId = 121,
        .price = 7500,
        .description = sBigPearlDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [122] =
    {
        .name = _("Stardust"),
        .itemId = 122,
        .price = 2000,
        .description = sStardustDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [123] =
    {
        .name = _("Star Piece"),
        .itemId = 123,
        .price = 9800,
        .description = sStarPieceDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [124] =
    {
        .name = _("Nugget"),
        .itemId = 124,
        .price = 10000,
        .description = sNuggetDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [125] =
    {
        .name = _("Heart Scale"),
        .itemId = 125,
        .price = 100,
        .description = sHeartScaleDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [126] =
    {
        .name = _("Red Nectar"),
        .itemId = 126,
        .price = 300,
        .holdEffectParam = 0,
        .description = sRedNectarDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [127] =
    {
        .name = _("Yellow Nectar"),
        .itemId = 127,
        .price = 300,
        .holdEffectParam = 0,
        .description = sYellowNectarDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [128] =
    {
        .name = _("Pink Nectar"),
        .itemId = 128,
        .price = 300,
        .holdEffectParam = 0,
        .description = sPinkNectarDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [129] =
    {
        .name = _("Purple Nectar"),
        .itemId = 129,
        .price = 300,
        .holdEffectParam = 0,
        .description = sPurpleNectarDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [131] =
    {
        .name = _("Rare Bone"),
        .itemId = 131,
        .price = 5000,
        .description = sRareBoneDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },


    [132] =
    {
        .name = _("Orange Mail"),
        .itemId = 132,
        .price = 50,
        .description = sOrangeMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 0,
    },

    [133] =
    {
        .name = _("Harbor Mail"),
        .itemId = 133,
        .price = 50,
        .description = sHarborMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 1,
    },

    [134] =
    {
        .name = _("Glitter Mail"),
        .itemId = 134,
        .price = 50,
        .description = sGlitterMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 2,
    },

    [135] =
    {
        .name = _("Mech Mail"),
        .itemId = 135,
        .price = 50,
        .description = sMechMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 3,
    },

    [136] =
    {
        .name = _("Wood Mail"),
        .itemId = 136,
        .price = 50,
        .description = sWoodMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 4,
    },

    [137] =
    {
        .name = _("Wave Mail"),
        .itemId = 137,
        .price = 50,
        .description = sWaveMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 5,
    },

    [138] =
    {
        .name = _("Bead Mail"),
        .itemId = 138,
        .price = 50,
        .description = sBeadMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 6,
    },

    [139] =
    {
        .name = _("Shadow Mail"),
        .itemId = 139,
        .price = 50,
        .description = sShadowMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 7,
    },

    [140] =
    {
        .name = _("Tropic Mail"),
        .itemId = 140,
        .price = 50,
        .description = sTropicMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 8,
    },

    [141] =
    {
        .name = _("Dream Mail"),
        .itemId = 141,
        .price = 50,
        .description = sDreamMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 9,
    },

    [142] =
    {
        .name = _("Fab Mail"),
        .itemId = 142,
        .price = 50,
        .description = sFabMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 10,
    },

    [143] =
    {
        .name = _("Retro Mail"),
        .itemId = 143,
        .price = 0,
        .description = sRetroMailDesc,
        .pocket = 1,
        .type = 0,
        .fieldUseFunc = ItemUseOutOfBattle_Mail,
        .secondaryId = 11,
    },



    [144] =
    {
        .name = _("Cheri Berry"),
        .itemId = 144,
        .price = 20,
        .holdEffect = 2,
        .description = sCheriBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [145] =
    {
        .name = _("Chesto Berry"),
        .itemId = 145,
        .price = 20,
        .holdEffect = 3,
        .description = sChestoBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [146] =
    {
        .name = _("Pecha Berry"),
        .itemId = 146,
        .price = 20,
        .holdEffect = 4,
        .description = sPechaBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [147] =
    {
        .name = _("Rawst Berry"),
        .itemId = 147,
        .price = 20,
        .holdEffect = 5,
        .description = sRawstBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [148] =
    {
        .name = _("Aspear Berry"),
        .itemId = 148,
        .price = 20,
        .holdEffect = 6,
        .description = sAspearBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [149] =
    {
        .name = _("Leppa Berry"),
        .itemId = 149,
        .price = 20,
        .holdEffect = 7,
        .holdEffectParam = 10,
        .description = sLeppaBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_PPRecovery,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_PPRecovery,
        .secondaryId = 0,
    },

    [150] =
    {
        .name = _("Oran Berry"),
        .itemId = 150,
        .price = 20,
        .holdEffect = 1,
        .holdEffectParam = 10,
        .description = sOranBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [151] =
    {
        .name = _("Persim Berry"),
        .itemId = 151,
        .price = 20,
        .holdEffect = 8,
        .description = sPersimBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [152] =
    {
        .name = _("Lum Berry"),
        .itemId = 152,
        .price = 20,
        .holdEffect = 9,
        .description = sLumBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [153] =
    {
        .name = _("Sitrus Berry"),
        .itemId = 153,
        .price = 20,
        .holdEffect = 100,
        .holdEffectParam = 25,
        .description = sSitrusBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_Medicine,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_Medicine,
        .secondaryId = 0,
    },

    [154] =
    {
        .name = _("Figy Berry"),
        .itemId = 154,
        .price = 20,
        .holdEffect = 10,
        .holdEffectParam = 8,
        .description = sFigyBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [155] =
    {
        .name = _("Wiki Berry"),
        .itemId = 155,
        .price = 20,
        .holdEffect = 11,
        .holdEffectParam = 8,
        .description = sWikiBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [156] =
    {
        .name = _("Mago Berry"),
        .itemId = 156,
        .price = 20,
        .holdEffect = 12,
        .holdEffectParam = 8,
        .description = sMagoBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [157] =
    {
        .name = _("Aguav Berry"),
        .itemId = 157,
        .price = 20,
        .holdEffect = 13,
        .holdEffectParam = 8,
        .description = sAguavBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [158] =
    {
        .name = _("Iapapa Berry"),
        .itemId = 158,
        .price = 20,
        .holdEffect = 14,
        .holdEffectParam = 8,
        .description = sIapapaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [159] =
    {
        .name = _("Razz Berry"),
        .itemId = 159,
        .price = 20,
        .description = sRazzBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [160] =
    {
        .name = _("Bluk Berry"),
        .itemId = 160,
        .price = 20,
        .description = sBlukBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [161] =
    {
        .name = _("Nanab Berry"),
        .itemId = 161,
        .price = 20,
        .description = sNanabBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [162] =
    {
        .name = _("Wepear Berry"),
        .itemId = 162,
        .price = 20,
        .description = sWepearBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [163] =
    {
        .name = _("Pinap Berry"),
        .itemId = 163,
        .price = 20,
        .description = sPinapBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [164] =
    {
        .name = _("Pomeg Berry"),
        .itemId = 164,
        .price = 20,
        .description = sPomegBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_ReduceEV,
        .secondaryId = 0,
    },

    [165] =
    {
        .name = _("Kelpsy Berry"),
        .itemId = 165,
        .price = 20,
        .description = sKelpsyBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_ReduceEV,
        .secondaryId = 0,
    },

    [166] =
    {
        .name = _("Qualot Berry"),
        .itemId = 166,
        .price = 20,
        .description = sQualotBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_ReduceEV,
        .secondaryId = 0,
    },

    [167] =
    {
        .name = _("Hondew Berry"),
        .itemId = 167,
        .price = 20,
        .description = sHondewBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_ReduceEV,
        .secondaryId = 0,
    },

    [168] =
    {
        .name = _("Grepa Berry"),
        .itemId = 168,
        .price = 20,
        .description = sGrepaBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_ReduceEV,
        .secondaryId = 0,
    },

    [169] =
    {
        .name = _("Tamato Berry"),
        .itemId = 169,
        .price = 20,
        .description = sTamatoBerryDesc,
        .pocket = 4,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_ReduceEV,
        .secondaryId = 0,
    },

    [170] =
    {
        .name = _("Cornn Berry"),
        .itemId = 170,
        .price = 20,
        .description = sCornnBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [171] =
    {
        .name = _("Magost Berry"),
        .itemId = 171,
        .price = 20,
        .description = sMagostBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [172] =
    {
        .name = _("Rabuta Berry"),
        .itemId = 172,
        .price = 20,
        .description = sRabutaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [173] =
    {
        .name = _("Nomel Berry"),
        .itemId = 173,
        .price = 20,
        .description = sNomelBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [174] =
    {
        .name = _("Spelon Berry"),
        .itemId = 174,
        .price = 20,
        .description = sSpelonBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [175] =
    {
        .name = _("Pamtre Berry"),
        .itemId = 175,
        .price = 20,
        .description = sPamtreBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [176] =
    {
        .name = _("Watmel Berry"),
        .itemId = 176,
        .price = 20,
        .description = sWatmelBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [177] =
    {
        .name = _("Durin Berry"),
        .itemId = 177,
        .price = 20,
        .description = sDurinBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [178] =
    {
        .name = _("Belue Berry"),
        .itemId = 178,
        .price = 20,
        .description = sBelueBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [197] =
    {
        .name = _("Liechi Berry"),
        .itemId = 197,
        .price = 20,
        .holdEffect = 15,
        .holdEffectParam = 4,
        .description = sLiechiBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [198] =
    {
        .name = _("Ganlon Berry"),
        .itemId = 198,
        .price = 20,
        .holdEffect = 16,
        .holdEffectParam = 4,
        .description = sGanlonBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [199] =
    {
        .name = _("Salac Berry"),
        .itemId = 199,
        .price = 20,
        .holdEffect = 17,
        .holdEffectParam = 4,
        .description = sSalacBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [200] =
    {
        .name = _("Petaya Berry"),
        .itemId = 200,
        .price = 20,
        .holdEffect = 18,
        .holdEffectParam = 4,
        .description = sPetayaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [201] =
    {
        .name = _("Apicot Berry"),
        .itemId = 201,
        .price = 20,
        .holdEffect = 19,
        .holdEffectParam = 4,
        .description = sApicotBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [202] =
    {
        .name = _("Lansat Berry"),
        .itemId = 202,
        .price = 20,
        .holdEffect = 20,
        .holdEffectParam = 4,
        .description = sLansatBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [203] =
    {
        .name = _("Starf Berry"),
        .itemId = 203,
        .price = 20,
        .holdEffect = 21,
        .holdEffectParam = 4,
        .description = sStarfBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [204] =
    {
        .name = _("Micle Berry"),
        .itemId = 204,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sMicleBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [205] =
    {
        .name = _("Enigma Berry"),
        .itemId = 205,
        .price = 20,
        .description = sEnigmaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_EnigmaBerry,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_EnigmaBerry,
        .secondaryId = 0,
    },

    [179] =
    {
        .name = _("Occa Berry"),
        .itemId = 179,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 10,
        .description = sOccaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [180] =
    {
        .name = _("Passho Berry"),
        .itemId = 180,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 11,
        .description = sPasshoBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [181] =
    {
        .name = _("Wacan Berry"),
        .itemId = 181,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 13,
        .description = sWacanBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [182] =
    {
        .name = _("Rindo Berry"),
        .itemId = 182,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 12,
        .description = sRindoBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [183] =
    {
        .name = _("Yache Berry"),
        .itemId = 183,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 15,
        .description = sYacheBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [184] =
    {
        .name = _("Chople Berry"),
        .itemId = 184,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 1,
        .description = sChopleBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [185] =
    {
        .name = _("Kebia Berry"),
        .itemId = 185,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 3,
        .description = sKebiaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [186] =
    {
        .name = _("Shuca Berry"),
        .itemId = 186,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 4,
        .description = sShucaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [187] =
    {
        .name = _("Coba Berry"),
        .itemId = 187,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 1,
        .description = sCobaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [188] =
    {
        .name = _("Payapa Berry"),
        .itemId = 188,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 14,
        .description = sPayapaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [189] =
    {
        .name = _("Tanga Berry"),
        .itemId = 189,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 6,
        .description = sTangaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [190] =
    {
        .name = _("Charti Berry"),
        .itemId = 190,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 5,
        .description = sChartiBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [191] =
    {
        .name = _("Kasib Berry"),
        .itemId = 191,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 7,
        .description = sKasibBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [192] =
    {
        .name = _("Haban Berry"),
        .itemId = 192,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 16,
        .description = sHabanBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [193] =
    {
        .name = _("Colbur Berry"),
        .itemId = 193,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 17,
        .description = sColburBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [194] =
    {
        .name = _("Babiri Berry"),
        .itemId = 194,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 8,
        .description = sBabiriBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [195] =
    {
        .name = _("Chilan Berry"),
        .itemId = 195,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 0,
        .description = sChilanBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [196] =
    {
        .name = _("Roseli Berry"),
        .itemId = 196,
        .price = 20,
        .holdEffect = 98,
        .holdEffectParam = 18,
        .description = sRoseliBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [206] =
    {
        .name = _("Custap Berry"),
        .itemId = 206,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 18,
        .description = sCustapBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [207] =
    {
        .name = _("Jaboca Berry"),
        .itemId = 207,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 18,
        .description = sJabocaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [208] =
    {
        .name = _("Rowap Berry"),
        .itemId = 208,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 18,
        .description = sRowapBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [209] =
    {
        .name = _("Kee Berry"),
        .itemId = 209,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 18,
        .description = sKeeBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [210] =
    {
        .name = _("Maranga Berry"),
        .itemId = 210,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 18,
        .description = sMarangaBerryDesc,
        .pocket = 4,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [211] =
    {
        .name = _("BrightPowder"),
        .itemId = 211,
        .price = 10,
        .holdEffect = 22,
        .holdEffectParam = 10,
        .description = sBrightPowderDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [212] =
    {
        .name = _("White Herb"),
        .itemId = 212,
        .price = 100,
        .holdEffect = 23,
        .description = sWhiteHerbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [213] =
    {
        .name = _("Macho Brace"),
        .itemId = 213,
        .price = 3000,
        .holdEffect = 24,
        .description = sMachoBraceDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [214] =
    {
        .name = _("Exp. Share"),
        .itemId = 214,
        .price = 3000,
        .holdEffect = 25,
        .description = sExpShareDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [215] =
    {
        .name = _("Quick Claw"),
        .itemId = 215,
        .price = 100,
        .holdEffect = 26,
        .holdEffectParam = 20,
        .description = sQuickClawDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [216] =
    {
        .name = _("Soothe Bell"),
        .itemId = 216,
        .price = 100,
        .holdEffect = 27,
        .description = sSootheBellDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [217] =
    {
        .name = _("Mental Herb"),
        .itemId = 217,
        .price = 100,
        .holdEffect = 28,
        .description = sMentalHerbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [218] =
    {
        .name = _("Choice Band"),
        .itemId = 218,
        .price = 100,
        .holdEffect = 29,
        .description = sChoiceBandDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [219] =
    {
        .name = _("King's Rock"),
        .itemId = 219,
        .price = 100,
        .holdEffect = 30,
        .holdEffectParam = 10,
        .description = sKingsRockDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [220] =
    {
        .name = _("SilverPowder"),
        .itemId = 220,
        .price = 100,
        .holdEffect = 31,
        .holdEffectParam = 10,
        .description = sSilverPowderDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [221] =
    {
        .name = _("Amulet Coin"),
        .itemId = 221,
        .price = 100,
        .holdEffect = 32,
        .holdEffectParam = 10,
        .description = sAmuletCoinDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [222] =
    {
        .name = _("Cleanse Tag"),
        .itemId = 222,
        .price = 200,
        .holdEffect = 33,
        .description = sCleanseTagDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [357] =
    {
        .name = _("Soul Dew"),
        .itemId = 357,
        .price = 200,
        .holdEffect = 34,
        .description = sSoulDewDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [358] =
    {
        .name = _("DeepSeaTooth"),
        .itemId = 358,
        .price = 200,
        .holdEffect = 35,
        .description = sDeepSeaToothDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [359] =
    {
        .name = _("DeepSeaScale"),
        .itemId = 359,
        .price = 200,
        .holdEffect = 36,
        .description = sDeepSeaScaleDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [223] =
    {
        .name = _("Smoke Ball"),
        .itemId = 223,
        .price = 200,
        .holdEffect = 37,
        .description = sSmokeBallDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [224] =
    {
        .name = _("Everstone"),
        .itemId = 224,
        .price = 200,
        .holdEffect = 38,
        .description = sEverstoneDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [225] =
    {
        .name = _("Focus Band"),
        .itemId = 225,
        .price = 200,
        .holdEffect = 39,
        .holdEffectParam = 10,
        .description = sFocusBandDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [226] =
    {
        .name = _("Lucky Egg"),
        .itemId = 226,
        .price = 200,
        .holdEffect = 40,
        .description = sLuckyEggDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [227] =
    {
        .name = _("Scope Lens"),
        .itemId = 227,
        .price = 200,
        .holdEffect = 41,
        .description = sScopeLensDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [228] =
    {
        .name = _("Metal Coat"),
        .itemId = 228,
        .price = 100,
        .holdEffect = 42,
        .holdEffectParam = 10,
        .description = sMetalCoatDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [229] =
    {
        .name = _("Leftovers"),
        .itemId = 229,
        .price = 200,
        .holdEffect = 43,
        .holdEffectParam = 10,
        .description = sLeftoversDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [230] =
    {
        .name = _("Dragon Scale"),
        .itemId = 230,
        .price = 2100,
        .holdEffect = 44,
        .holdEffectParam = 10,
        .description = sDragonScaleDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [231] =
    {
        .name = _("Oval Stone"),
        .itemId = 231,
        .price = 2000,
        .description = sOvalStoneDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [232] =
    {
        .name = _("Protector"),
        .itemId = 232,
        .price = 2000,
        .description = sProtectorDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [233] =
    {
        .name = _("Electirizer"),
        .itemId = 233,
        .price = 2000,
        .description = sElectirizerDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [234] =
    {
        .name = _("Magmarizer"),
        .itemId = 234,
        .price = 2000,
        .description = sMagmarizerDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [235] =
    {
        .name = _("Dubious Disc"),
        .itemId = 235,
        .price = 2000,
        .description = sDubiousDiscDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [236] =
    {
        .name = _("Reaper Cloth"),
        .itemId = 236,
        .price = 2000,
        .description = sReaperClothDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [237] =
    {
        .name = _("Razor Claw"),
        .itemId = 237,
        .price = 2000,
        .holdEffect = 0,
        .description = sRazorClawDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [238] =
    {
        .name = _("Razor Fang"),
        .itemId = 238,
        .price = 2000,
        .holdEffect = 30,
        .holdEffectParam = 10,
        .description = sRazorFangDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [239] =
    {
        .name = _("Prism Scale"),
        .itemId = 239,
        .price = 2000,
        .description = sPrismScaleDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [240] =
    {
        .name = _("WhippedDream"),
        .itemId = 240,
        .price = 2000,
        .description = sWhippedDreamDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [241] =
    {
        .name = _("Sachet"),
        .itemId = 241,
        .price = 2000,
        .description = sSachetDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [364] =
    {
        .name = _("Light Ball"),
        .itemId = 364,
        .price = 100,
        .holdEffect = 45,
        .description = sLightBallDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [242] =
    {
        .name = _("Soft Sand"),
        .itemId = 242,
        .price = 100,
        .holdEffect = 46,
        .holdEffectParam = 10,
        .description = sSoftSandDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [243] =
    {
        .name = _("Hard Stone"),
        .itemId = 243,
        .price = 100,
        .holdEffect = 47,
        .holdEffectParam = 10,
        .description = sHardStoneDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [244] =
    {
        .name = _("Miracle Seed"),
        .itemId = 244,
        .price = 100,
        .holdEffect = 48,
        .holdEffectParam = 10,
        .description = sMiracleSeedDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [245] =
    {
        .name = _("BlackGlasses"),
        .itemId = 245,
        .price = 100,
        .holdEffect = 49,
        .holdEffectParam = 10,
        .description = sBlackGlassesDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [246] =
    {
        .name = _("Black Belt"),
        .itemId = 246,
        .price = 100,
        .holdEffect = 50,
        .holdEffectParam = 10,
        .description = sBlackBeltDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [247] =
    {
        .name = _("Magnet"),
        .itemId = 247,
        .price = 100,
        .holdEffect = 51,
        .holdEffectParam = 10,
        .description = sMagnetDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [248] =
    {
        .name = _("Mystic Water"),
        .itemId = 248,
        .price = 100,
        .holdEffect = 52,
        .holdEffectParam = 10,
        .description = sMysticWaterDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [249] =
    {
        .name = _("Sharp Beak"),
        .itemId = 249,
        .price = 100,
        .holdEffect = 53,
        .holdEffectParam = 10,
        .description = sSharpBeakDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [250] =
    {
        .name = _("Poison Barb"),
        .itemId = 250,
        .price = 100,
        .holdEffect = 54,
        .holdEffectParam = 10,
        .description = sPoisonBarbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [251] =
    {
        .name = _("NeverMeltIce"),
        .itemId = 251,
        .price = 100,
        .holdEffect = 55,
        .holdEffectParam = 10,
        .description = sNeverMeltIceDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [252] =
    {
        .name = _("Spell Tag"),
        .itemId = 252,
        .price = 100,
        .holdEffect = 56,
        .holdEffectParam = 10,
        .description = sSpellTagDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [253] =
    {
        .name = _("Twistedspoon"),
        .itemId = 253,
        .price = 100,
        .holdEffect = 57,
        .holdEffectParam = 10,
        .description = sTwistedSpoonDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [254] =
    {
        .name = _("Charcoal"),
        .itemId = 254,
        .price = 9800,
        .holdEffect = 58,
        .holdEffectParam = 10,
        .description = sCharcoalDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [255] =
    {
        .name = _("Dragon Fang"),
        .itemId = 255,
        .price = 100,
        .holdEffect = 59,
        .holdEffectParam = 10,
        .description = sDragonFangDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [256] =
    {
        .name = _("Silk Scarf"),
        .itemId = 256,
        .price = 100,
        .holdEffect = 60,
        .holdEffectParam = 10,
        .description = sSilkScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [257] =
    {
        .name = _("Up-Grade"),
        .itemId = 257,
        .price = 2100,
        .holdEffect = 61,
        .description = sUpGradeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [258] =
    {
        .name = _("Shell Bell"),
        .itemId = 258,
        .price = 200,
        .holdEffect = 62,
        .holdEffectParam = 8,
        .description = sShellBellDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [259] =
    {
        .name = _("Power Bracer"),
        .itemId = 259,
        .price = 3000,
        .holdEffect = 99,
        .holdEffectParam = 4,
        .description = sPowerBracerDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 1,
    },

    [260] =
    {
        .name = _("Power Belt"),
        .itemId = 260,
        .price = 3000,
        .holdEffect = 99,
        .holdEffectParam = 4,
        .description = sPowerBeltDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 2,
    },

    [261] =
    {
        .name = _("Power Lens"),
        .itemId = 261,
        .price = 3000,
        .holdEffect = 99,
        .holdEffectParam = 4,
        .description = sPowerLensDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 4,
    },

    [262] =
    {
        .name = _("Power Band"),
        .itemId = 262,
        .price = 3000,
        .holdEffect = 99,
        .holdEffectParam = 4,
        .description = sPowerBandDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 5,
    },

    [263] =
    {
        .name = _("Power Anklet"),
        .itemId = 263,
        .price = 3000,
        .holdEffect = 99,
        .holdEffectParam = 4,
        .description = sPowerAnkletDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 3,
    },

    [264] =
    {
        .name = _("Power Weight"),
        .itemId = 264,
        .price = 3000,
        .holdEffect = 99,
        .holdEffectParam = 4,
        .description = sPowerWeightDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [313] =
    {
        .name = _("Sea Incense"),
        .itemId = 313,
        .price = 2000,
        .holdEffect = 52,
        .holdEffectParam = 20,
        .description = sSeaIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [314] =
    {
        .name = _("Lax Incense"),
        .itemId = 314,
        .price = 5000,
        .holdEffect = 22,
        .holdEffectParam = 10,
        .description = sLaxIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [315] =
    {
        .name = _("Odd Incense"),
        .itemId = 315,
        .price = 2000,
        .holdEffect = 57,
        .holdEffectParam = 20,
        .description = sOddIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [316] =
    {
        .name = _("Rock Incense"),
        .itemId = 316,
        .price = 2000,
        .holdEffect = 47,
        .holdEffectParam = 20,
        .description = sRockIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [317] =
    {
        .name = _("Full Incense"),
        .itemId = 317,
        .price = 5000,
        .holdEffect = 84,
        .holdEffectParam = 5,
        .description = sFullIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [318] =
    {
        .name = _("Wave Incense"),
        .itemId = 318,
        .price = 2000,
        .holdEffect = 52,
        .holdEffectParam = 20,
        .description = sWaveIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [319] =
    {
        .name = _("Rose Incense"),
        .itemId = 319,
        .price = 2000,
        .holdEffect = 48,
        .holdEffectParam = 20,
        .description = sRoseIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [320] =
    {
        .name = _("Luck Incense"),
        .itemId = 320,
        .price = 11000,
        .holdEffect = 32,
        .holdEffectParam = 10,
        .description = sLuckIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [321] =
    {
        .name = _("Pure Incense"),
        .itemId = 321,
        .price = 6000,
        .holdEffect = 33,
        .description = sPureIncenseDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [360] =
    {
        .name = _("Lucky Punch"),
        .itemId = 360,
        .price = 10,
        .holdEffect = 63,
        .description = sLuckyPunchDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [361] =
    {
        .name = _("Metal Powder"),
        .itemId = 361,
        .price = 10,
        .holdEffect = 64,
        .description = sMetalPowderDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [362] =
    {
        .name = _("Thick Club"),
        .itemId = 362,
        .price = 500,
        .holdEffect = 65,
        .description = sThickClubDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [363] =
    {
        .name = _("Stick"),
        .itemId = 363,
        .price = 200,
        .holdEffect = 66,
        .description = sStickDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [392] =
    {
        .name = _("Red Scarf"),
        .itemId = 392,
        .price = 100,
        .description = sRedScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [393] =
    {
        .name = _("Blue Scarf"),
        .itemId = 393,
        .price = 100,
        .description = sBlueScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [394] =
    {
        .name = _("Pink Scarf"),
        .itemId = 394,
        .price = 100,
        .description = sPinkScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [395] =
    {
        .name = _("Green Scarf"),
        .itemId = 395,
        .price = 100,
        .description = sGreenScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [396] =
    {
        .name = _("Yellow Scarf"),
        .itemId = 396,
        .price = 100,
        .description = sYellowScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [455] =
    {
        .name = _("Mach Bike"),
        .itemId = 455,
        .price = 0,
        .description = sMachBikeDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_Bike,
        .secondaryId = 0,
    },

    [456] =
    {
        .name = _("Coin Case"),
        .itemId = 456,
        .price = 0,
        .description = sCoinCaseDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CoinCase,
        .secondaryId = 0,
    },

    [457] =
    {
        .name = _("Itemfinder"),
        .itemId = 457,
        .price = 0,
        .description = sItemfinderDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_Itemfinder,
        .secondaryId = 0,
    },

    [458] =
    {
        .name = _("Old Rod"),
        .itemId = 458,
        .price = 0,
        .description = sOldRodDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_Rod,
        .secondaryId = 0,
    },

    [459] =
    {
        .name = _("Good Rod"),
        .itemId = 459,
        .price = 0,
        .description = sGoodRodDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_Rod,
        .secondaryId = 1,
    },

    [460] =
    {
        .name = _("Super Rod"),
        .itemId = 460,
        .price = 0,
        .description = sSuperRodDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_Rod,
        .secondaryId = 2,
    },

    [461] =
    {
        .name = _("S.S. Ticket"),
        .itemId = 461,
        .price = 0,
        .description = sSSTicketDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [462] =
    {
        .name = _("Contest Pass"),
        .itemId = 462,
        .price = 0,
        .description = sContestPassDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [463] =
    {
        .name = _("Wailmer Pail"),
        .itemId = 463,
        .price = 0,
        .description = sWailmerPailDesc,
        .importance = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_WailmerPail,
        .secondaryId = 0,
    },

    [464] =
    {
        .name = _("Devon Goods"),
        .itemId = 464,
        .price = 0,
        .description = sDevonGoodsDesc,
        .importance = 2,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [465] =
    {
        .name = _("Soot Sack"),
        .itemId = 465,
        .price = 0,
        .description = sSootSackDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [466] =
    {
        .name = _("Basement Key"),
        .itemId = 466,
        .price = 0,
        .description = sBasementKeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [467] =
    {
        .name = _("Gear Bike"),
        .itemId = 467,
        .price = 0,
        .description = sAcroBikeDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_Bike,
        .secondaryId = 1,
    },

    [468] =
    {
        .name = _("{POKEBLOCK} Case"),
        .itemId = 468,
        .price = 0,
        .description = sPokeblockCaseDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 3,
        .fieldUseFunc = ItemUseOutOfBattle_PokeblockCase,
        .secondaryId = 0,
    },

    [469] =
    {
        .name = _("Letter"),
        .itemId = 469,
        .price = 0,
        .description = sLetterDesc,
        .importance = 2,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [470] =
    {
        .name = _("Eon Ticket"),
        .itemId = 470,
        .price = 0,
        .description = sEonTicketDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 1,
    },

    [471] =
    {
        .name = _("Red Orb"),
        .itemId = 471,
        .price = 0,
        .description = sRedOrbDesc,
        .importance = 2,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [472] =
    {
        .name = _("Blue Orb"),
        .itemId = 472,
        .price = 0,
        .description = sBlueOrbDesc,
        .importance = 2,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [473] =
    {
        .name = _("Scanner"),
        .itemId = 473,
        .price = 0,
        .description = sScannerDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [474] =
    {
        .name = _("Go-Goggles"),
        .itemId = 474,
        .price = 0,
        .description = sGoGogglesDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [475] =
    {
        .name = _("Meteorite"),
        .itemId = 475,
        .price = 0,
        .description = sMeteoriteDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [476] =
    {
        .name = _("Rm. 1 Key"),
        .itemId = 476,
        .price = 0,
        .description = sRoom1KeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [477] =
    {
        .name = _("Rm. 2 Key"),
        .itemId = 477,
        .price = 0,
        .description = sRoom2KeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [478] =
    {
        .name = _("Rm. 4 Key"),
        .itemId = 478,
        .price = 0,
        .description = sRoom4KeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [479] =
    {
        .name = _("Rm. 6 Key"),
        .itemId = 479,
        .price = 0,
        .description = sRoom6KeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [480] =
    {
        .name = _("Storage Key"),
        .itemId = 480,
        .price = 0,
        .description = sStorageKeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [481] =
    {
        .name = _("Devon Scope"),
        .itemId = 481,
        .price = 0,
        .description = sDevonScopeDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [482] =
    {
        .name = _("TM01"),
        .itemId = 482,
        .price = 3000,
        .description = sTM01Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [483] =
    {
        .name = _("TM02"),
        .itemId = 483,
        .price = 3000,
        .description = sTM02Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [484] =
    {
        .name = _("TM03"),
        .itemId = 484,
        .price = 3000,
        .description = sTM03Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [485] =
    {
        .name = _("TM04"),
        .itemId = 485,
        .price = 3000,
        .description = sTM04Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [486] =
    {
        .name = _("TM05"),
        .itemId = 486,
        .price = 1000,
        .description = sTM05Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [487] =
    {
        .name = _("TM06"),
        .itemId = 487,
        .price = 3000,
        .description = sTM06Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [488] =
    {
        .name = _("TM07"),
        .itemId = 488,
        .price = 3000,
        .description = sTM07Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [489] =
    {
        .name = _("TM08"),
        .itemId = 489,
        .price = 3000,
        .description = sTM08Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [490] =
    {
        .name = _("TM09"),
        .itemId = 490,
        .price = 3000,
        .description = sTM09Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [491] =
    {
        .name = _("TM10"),
        .itemId = 491,
        .price = 3000,
        .description = sTM10Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [492] =
    {
        .name = _("TM11"),
        .itemId = 492,
        .price = 2000,
        .description = sTM11Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [493] =
    {
        .name = _("TM12"),
        .itemId = 493,
        .price = 3000,
        .description = sTM12Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [494] =
    {
        .name = _("TM13"),
        .itemId = 494,
        .price = 3000,
        .description = sTM13Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [495] =
    {
        .name = _("TM14"),
        .itemId = 495,
        .price = 5500,
        .description = sTM14Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [496] =
    {
        .name = _("TM15"),
        .itemId = 496,
        .price = 7500,
        .description = sTM15Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [497] =
    {
        .name = _("TM16"),
        .itemId = 497,
        .price = 3000,
        .description = sTM16Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [498] =
    {
        .name = _("TM17"),
        .itemId = 498,
        .price = 3000,
        .description = sTM17Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [499] =
    {
        .name = _("TM18"),
        .itemId = 499,
        .price = 2000,
        .description = sTM18Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [500] =
    {
        .name = _("TM19"),
        .itemId = 500,
        .price = 3000,
        .description = sTM19Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [501] =
    {
        .name = _("TM20"),
        .itemId = 501,
        .price = 3000,
        .description = sTM20Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [502] =
    {
        .name = _("TM21"),
        .itemId = 502,
        .price = 1000,
        .description = sTM21Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [503] =
    {
        .name = _("TM22"),
        .itemId = 503,
        .price = 3000,
        .description = sTM22Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [504] =
    {
        .name = _("TM23"),
        .itemId = 504,
        .price = 3000,
        .description = sTM23Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [505] =
    {
        .name = _("TM24"),
        .itemId = 505,
        .price = 3000,
        .description = sTM24Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [506] =
    {
        .name = _("TM25"),
        .itemId = 506,
        .price = 5500,
        .description = sTM25Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [507] =
    {
        .name = _("TM26"),
        .itemId = 507,
        .price = 3000,
        .description = sTM26Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [508] =
    {
        .name = _("TM27"),
        .itemId = 508,
        .price = 1000,
        .description = sTM27Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [509] =
    {
        .name = _("TM28"),
        .itemId = 509,
        .price = 2000,
        .description = sTM28Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [510] =
    {
        .name = _("TM29"),
        .itemId = 510,
        .price = 2000,
        .description = sTM29Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [511] =
    {
        .name = _("TM30"),
        .itemId = 511,
        .price = 3000,
        .description = sTM30Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [512] =
    {
        .name = _("TM31"),
        .itemId = 512,
        .price = 3000,
        .description = sTM31Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [513] =
    {
        .name = _("TM32"),
        .itemId = 513,
        .price = 2000,
        .description = sTM32Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [514] =
    {
        .name = _("TM33"),
        .itemId = 514,
        .price = 3000,
        .description = sTM33Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [515] =
    {
        .name = _("TM34"),
        .itemId = 515,
        .price = 3000,
        .description = sTM34Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [516] =
    {
        .name = _("TM35"),
        .itemId = 516,
        .price = 3000,
        .description = sTM35Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [517] =
    {
        .name = _("TM36"),
        .itemId = 517,
        .price = 1000,
        .description = sTM36Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [518] =
    {
        .name = _("TM37"),
        .itemId = 518,
        .price = 2000,
        .description = sTM37Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [519] =
    {
        .name = _("TM38"),
        .itemId = 519,
        .price = 5500,
        .description = sTM38Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [520] =
    {
        .name = _("TM39"),
        .itemId = 520,
        .price = 3000,
        .description = sTM39Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [521] =
    {
        .name = _("TM40"),
        .itemId = 521,
        .price = 3000,
        .description = sTM40Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [522] =
    {
        .name = _("TM41"),
        .itemId = 522,
        .price = 3000,
        .description = sTM41Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [523] =
    {
        .name = _("TM42"),
        .itemId = 523,
        .price = 3000,
        .description = sTM42Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [524] =
    {
        .name = _("TM43"),
        .itemId = 524,
        .price = 3000,
        .description = sTM43Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [525] =
    {
        .name = _("TM44"),
        .itemId = 525,
        .price = 3000,
        .description = sTM44Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [526] =
    {
        .name = _("TM45"),
        .itemId = 526,
        .price = 3000,
        .description = sTM45Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [527] =
    {
        .name = _("TM46"),
        .itemId = 527,
        .price = 3000,
        .description = sTM46Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [528] =
    {
        .name = _("TM47"),
        .itemId = 528,
        .price = 3000,
        .description = sTM47Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [529] =
    {
        .name = _("TM48"),
        .itemId = 529,
        .price = 3000,
        .description = sTM48Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [530] =
    {
        .name = _("TM49"),
        .itemId = 530,
        .price = 3000,
        .description = sTM49Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [531] =
    {
        .name = _("TM50"),
        .itemId = 531,
        .price = 3000,
        .description = sTM50Desc,
  .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [532] =
    {
        .name = _("HM01"),
        .itemId = 532,
        .price = 0,
        .description = sHM01Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [533] =
    {
        .name = _("HM02"),
        .itemId = 533,
        .price = 0,
        .description = sHM02Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [534] =
    {
        .name = _("HM03"),
        .itemId = 534,
        .price = 0,
        .description = sHM03Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [535] =
    {
        .name = _("HM04"),
        .itemId = 535,
        .price = 0,
        .description = sHM04Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [536] =
    {
        .name = _("HM05"),
        .itemId = 536,
        .price = 0,
        .description = sHM05Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [537] =
    {
        .name = _("HM06"),
        .itemId = 537,
        .price = 0,
        .description = sHM06Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [538] =
    {
        .name = _("HM07"),
        .itemId = 538,
        .price = 0,
        .description = sHM07Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },

    [539] =
    {
        .name = _("HM08"),
        .itemId = 539,
        .price = 0,
        .description = sHM08Desc,
        .importance = 1,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ItemUseOutOfBattle_TMHM,
        .secondaryId = 0,
    },



    [540] =
    {
        .name = _("Oak's Parcel"),
        .itemId = 540,
        .price = 0,
        .description = sOaksParcelDesc,
        .importance = 2,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [541] =
    {
        .name = _("Pok?? Flute"),
        .itemId = 541,
        .price = 0,
        .description = sPokeFluteDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [542] =
    {
        .name = _("Secret Key"),
        .itemId = 542,
        .price = 0,
        .description = sSecretKeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [543] =
    {
        .name = _("Bike Voucher"),
        .itemId = 543,
        .price = 0,
        .description = sBikeVoucherDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [544] =
    {
        .name = _("Gold Teeth"),
        .itemId = 544,
        .price = 0,
        .description = sGoldTeethDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [545] =
    {
        .name = _("Old Amber"),
        .itemId = 545,
        .price = 0,
        .description = sOldAmberDesc,

            .importance = 0,
            .pocket = 1,




        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [546] =
    {
        .name = _("Card Key"),
        .itemId = 546,
        .price = 0,
        .description = sCardKeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [547] =
    {
        .name = _("Lift Key"),
        .itemId = 547,
        .price = 0,
        .description = sLiftKeyDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [445] =
    {
        .name = _("Armor Fossil"),
        .itemId = 445,
        .price = 0,
        .description = sArmorFossilDesc,
        .importance = 0,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [446] =
    {
        .name = _("Skull Fossil"),
        .itemId = 446,
        .price = 0,
        .description = sSkullFossilDesc,
        .importance = 0,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [447] =
    {
        .name = _("Helix Fossil"),
        .itemId = 447,
        .price = 0,
        .description = sHelixFossilDesc,

            .importance = 0,
            .pocket = 1,




        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [448] =
    {
        .name = _("Dome Fossil"),
        .itemId = 448,
        .price = 0,
        .description = sDomeFossilDesc,

            .importance = 0,
            .pocket = 1,




        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [453] =
    {
        .name = _("Root Fossil"),
        .itemId = 453,
        .price = 0,
        .description = sRootFossilDesc,

            .importance = 0,
            .pocket = 1,




        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [454] =
    {
        .name = _("Claw Fossil"),
        .itemId = 454,
        .price = 0,
        .description = sClawFossilDesc,

            .importance = 0,
            .pocket = 1,




        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [449] =
    {
        .name = _("Cover Fossil"),
        .itemId = 449,
        .price = 0,
        .description = sCoverFossilDesc,
        .importance = 0,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [450] =
    {
        .name = _("Plume Fossil"),
        .itemId = 450,
        .price = 0,
        .description = sPlumeFossilDesc,
        .importance = 0,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [451] =
    {
        .name = _("Jaw Fossil"),
        .itemId = 451,
        .price = 0,
        .description = sJawFossilDesc,
        .importance = 0,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [452] =
    {
        .name = _("Sail Fossil"),
        .itemId = 452,
        .price = 0,
        .description = sSailFossilDesc,
        .importance = 0,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [548] =
    {
        .name = _("Silph Scope"),
        .itemId = 548,
        .price = 0,
        .description = sSilphScopeDesc,
        .importance = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [549] =
    {
        .name = _("Bicycle"),
        .itemId = 549,
        .price = 0,
        .description = sBicycleDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [550] =
    {
        .name = _("Town Map"),
        .itemId = 550,
        .price = 0,
        .description = sTownMapDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [551] =
    {
        .name = _("Vs Seeker"),
        .itemId = 551,
        .price = 0,
        .description = sVSSeekerDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [552] =
    {
        .name = _("Fame Checker"),
        .itemId = 552,
        .price = 0,
        .description = sFameCheckerDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [553] =
    {
        .name = _("TM Case"),
        .itemId = 553,
        .price = 0,
        .description = sTMCaseDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [554] =
    {
        .name = _("Berry Pouch"),
        .itemId = 554,
        .price = 0,
        .description = sBerryPouchDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [555] =
    {
        .name = _("Teachy TV"),
        .itemId = 555,
        .price = 0,
        .description = sTeachyTVDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 2,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [556] =
    {
        .name = _("Tri-Pass"),
        .itemId = 556,
        .price = 0,
        .description = sTriPassDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [557] =
    {
        .name = _("Rainbow Pass"),
        .itemId = 557,
        .price = 0,
        .description = sRainbowPassDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [558] =
    {
        .name = _("Tea"),
        .itemId = 558,
        .price = 0,
        .description = sTeaDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [559] =
    {
        .name = _("MysticTicket"),
        .itemId = 559,
        .price = 0,
        .description = sMysticTicketDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [560] =
    {
        .name = _("AuroraTicket"),
        .itemId = 560,
        .price = 0,
        .description = sAuroraTicketDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [561] =
    {
        .name = _("Powder Jar"),
        .itemId = 561,
        .price = 0,
        .description = sPowderJarDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_PowderJar,
        .secondaryId = 0,
    },

    [562] =
    {
        .name = _("Ruby"),
        .itemId = 562,
        .price = 0,
        .description = sRubyDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [563] =
    {
        .name = _("Sapphire"),
        .itemId = 563,
        .price = 0,
        .description = sSapphireDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [564] =
    {
        .name = _("Magma Emblem"),
        .itemId = 564,
        .price = 0,
        .description = sMagmaEmblemDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [565] =
    {
        .name = _("Old Sea Map"),
        .itemId = 565,
        .price = 0,
        .description = sOldSeaMapDesc,
        .importance = 1,
        .unk19 = 1,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },



    [269] =
    {
        .name = _("Wide Lens"),
        .itemId = 269,
        .price = 200,
        .holdEffect = 81,
        .holdEffectParam = 10,
        .description = sWideLensDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [272] =
    {
        .name = _("Muscle Band"),
        .itemId = 272,
        .price = 200,
        .holdEffect = 80,
        .holdEffectParam = 10,
        .description = sMuscleBandDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [273] =
    {
        .name = _("Wise Glasses"),
        .itemId = 273,
        .price = 200,
        .holdEffect = 82,
        .holdEffectParam = 10,
        .description = sWiseGlassesDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [274] =
    {
        .name = _("Expert Belt"),
        .itemId = 274,
        .price = 200,
        .holdEffect = 77,
        .holdEffectParam = 20,
        .description = sExpertBeltDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [275] =
    {
        .name = _("Light Clay"),
        .itemId = 275,
        .price = 200,
        .holdEffect = 73,
        .description = sLightClayDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [282] =
    {
        .name = _("Life Orb"),
        .itemId = 282,
        .price = 200,
        .holdEffect = 78,
        .description = sLifeOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [265] =
    {
        .name = _("Power Herb"),
        .itemId = 265,
        .price = 200,
        .holdEffect = 75,
        .description = sPowerHerbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [283] =
    {
        .name = _("Toxic Orb"),
        .itemId = 283,
        .price = 200,
        .holdEffect = 87,
        .description = sToxicOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [284] =
    {
        .name = _("Flame Orb"),
        .itemId = 284,
        .price = 200,
        .holdEffect = 86,
        .description = sFlameOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [365] =
    {
        .name = _("Quick Powder"),
        .itemId = 365,
        .price = 200,
        .holdEffect = 93,
        .description = sQuickPowderDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [268] =
    {
        .name = _("Focus Sash"),
        .itemId = 268,
        .price = 200,
        .holdEffect = 85,
        .description = sFocusSashDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [270] =
    {
        .name = _("Zoom Lens"),
        .itemId = 270,
        .price = 200,
        .holdEffect = 83,
        .holdEffectParam = 20,
        .description = sZoomLensDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [271] =
    {
        .name = _("Metronome"),
        .itemId = 271,
        .price = 200,
        .holdEffect = 79,
        .holdEffectParam = 20,
        .description = sMetronomeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [287] =
    {
        .name = _("Iron Ball"),
        .itemId = 287,
        .price = 200,
        .holdEffect = 89,
        .description = sIronBallDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [288] =
    {
        .name = _("Lagging Tail"),
        .itemId = 288,
        .price = 200,
        .holdEffect = 84,
        .description = sLaggingTailDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [280] =
    {
        .name = _("Destiny Knot"),
        .itemId = 280,
        .price = 200,
        .holdEffect = 91,
        .description = sDestinyKnotDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [286] =
    {
        .name = _("Black Sludge"),
        .itemId = 286,
        .price = 200,
        .holdEffect = 90,
        .description = sBlackSludgeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [276] =
    {
        .name = _("Icy Rock"),
        .itemId = 276,
        .price = 200,
        .holdEffect = 72,
        .description = sIcyRockDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [277] =
    {
        .name = _("Smooth Rock"),
        .itemId = 277,
        .price = 200,
        .holdEffect = 74,
        .description = sSmoothRockDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [278] =
    {
        .name = _("Heat Rock"),
        .itemId = 278,
        .price = 200,
        .holdEffect = 71,
        .description = sHeatRockDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [279] =
    {
        .name = _("Damp Rock"),
        .itemId = 279,
        .price = 200,
        .holdEffect = 69,
        .description = sDampRockDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [281] =
    {
        .name = _("Grip Claw"),
        .itemId = 281,
        .price = 200,
        .holdEffect = 70,
        .description = sGripClawDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [266] =
    {
        .name = _("Choice Scarf"),
        .itemId = 266,
        .price = 200,
        .holdEffect = 67,
        .description = sChoiceScarfDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [285] =
    {
        .name = _("Sticky Barb"),
        .itemId = 285,
        .price = 200,
        .holdEffect = 88,
        .description = sStickyBarbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [289] =
    {
        .name = _("Shed Shell"),
        .itemId = 289,
        .price = 200,
        .holdEffect = 92,
        .description = sShedShellDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [290] =
    {
        .name = _("Big Root"),
        .itemId = 290,
        .price = 200,
        .holdEffect = 76,
        .holdEffectParam = 30,
        .description = sBigRootDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [267] =
    {
        .name = _("Choice Specs"),
        .itemId = 267,
        .price = 200,
        .holdEffect = 68,
        .description = sChoiceSpecsDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [366] =
    {
        .name = _("Odd Keystone"),
        .itemId = 366,
        .price = 2100,
        .description = sOddKeystoneDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [367] =
    {
        .name = _("Adamant Orb"),
        .itemId = 367,
        .price = 200,
        .holdEffect = 94,
        .description = sAdamantOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [368] =
    {
        .name = _("Lustrous Orb"),
        .itemId = 368,
        .price = 200,
        .holdEffect = 95,
        .description = sLustrousOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [369] =
    {
        .name = _("Griseous Orb"),
        .itemId = 369,
        .price = 200,
        .holdEffect = 96,
        .description = sGriseousOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [370] =
    {
        .name = _("Gracidea"),
        .itemId = 370,
        .price = 200,
        .holdEffect = 97,
        .description = sGracideaDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [371] =
    {
        .name = _("Bug Memory"),
        .itemId = 371,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sBugMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 6,
    },

    [372] =
    {
        .name = _("Dark Memory"),
        .itemId = 372,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sDarkMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 17,
    },

    [373] =
    {
        .name = _("Dragon Memory"),
        .itemId = 373,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sDragonMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 16,
    },

    [374] =
    {
        .name = _("Elec. Memory"),
        .itemId = 374,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sElectricMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 13,
    },

    [375] =
    {
        .name = _("Fairy Memory"),
        .itemId = 375,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sFairyMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 18,
    },

    [376] =
    {
        .name = _("Fight Memory"),
        .itemId = 376,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sFightingMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 1,
    },

    [377] =
    {
        .name = _("Fire Memory"),
        .itemId = 377,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sFireMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 10,
    },

    [378] =
    {
        .name = _("Flying Memory"),
        .itemId = 378,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sFlyingMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 2,
    },

    [379] =
    {
        .name = _("Ghost Memory"),
        .itemId = 379,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sGhostMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 7,
    },

    [380] =
    {
        .name = _("Grass Memory"),
        .itemId = 380,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sGrassMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 12,
    },

    [381] =
    {
        .name = _("Ground Memory"),
        .itemId = 381,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sGroundMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 4,
    },

    [382] =
    {
        .name = _("Ice Memory"),
        .itemId = 382,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sIceMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 15,
    },

    [383] =
    {
        .name = _("Poison Memory"),
        .itemId = 383,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sPoisonMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 3,
    },

    [384] =
    {
        .name = _("PsychicMemory"),
        .itemId = 384,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sPsychicMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 14,
    },

    [385] =
    {
        .name = _("Rock Memory"),
        .itemId = 385,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sRockMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 5,
    },

    [386] =
    {
        .name = _("Steel Memory"),
        .itemId = 386,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sSteelMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 8,
    },

    [387] =
    {
        .name = _("Water Memory"),
        .itemId = 387,
        .price = 1000,
        .holdEffect = 153,
        .holdEffectParam = 0,
        .description = sWaterMemoryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 11,
    },

    [328] =
    {
        .name = _("Flame Plate"),
        .itemId = 328,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sFlamePlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 10,
    },

    [338] =
    {
        .name = _("Splash Plate"),
        .itemId = 338,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sSplashPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 11,
    },

    [325] =
    {
        .name = _("Zap Plate"),
        .itemId = 325,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sZapPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 13,
    },

    [331] =
    {
        .name = _("Meadow Plate"),
        .itemId = 331,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sMeadowPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 12,
    },

    [333] =
    {
        .name = _("Icicle Plate"),
        .itemId = 333,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sIciclePlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 15,
    },

    [327] =
    {
        .name = _("Fist Plate"),
        .itemId = 327,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sFistPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 1,
    },

    [334] =
    {
        .name = _("Toxic Plate"),
        .itemId = 334,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sToxicPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 3,
    },

    [332] =
    {
        .name = _("Earth Plate"),
        .itemId = 332,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sEarthPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 4,
    },

    [329] =
    {
        .name = _("Sky Plate"),
        .itemId = 329,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sSkyPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 2,
    },

    [335] =
    {
        .name = _("Mind Plate"),
        .itemId = 335,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sMindPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 14,
    },

    [322] =
    {
        .name = _("Insect Plate"),
        .itemId = 322,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sInsectPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 6,
    },

    [336] =
    {
        .name = _("Stone Plate"),
        .itemId = 336,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sStonePlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 5,
    },

    [330] =
    {
        .name = _("Spooky Plate"),
        .itemId = 330,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sSpookyPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 7,
    },

    [324] =
    {
        .name = _("Draco Plate"),
        .itemId = 324,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sDracoPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 16,
    },

    [323] =
    {
        .name = _("Dread Plate"),
        .itemId = 323,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sDreadPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 17,
    },

    [337] =
    {
        .name = _("Iron Plate"),
        .itemId = 337,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sIronPlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 8,
    },

    [291] =
    {
        .name = _("Eviolite"),
        .itemId = 291,
        .price = 200,
        .holdEffect = 116,
        .holdEffectParam = 50,
        .description = sEvioliteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [292] =
    {
        .name = _("Float Stone"),
        .itemId = 292,
        .price = 200,
        .holdEffect = 115,
        .description = sFloatStoneDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [293] =
    {
        .name = _("Rocky Helmet"),
        .itemId = 293,
        .price = 2000,
        .holdEffect = 120,
        .holdEffectParam = 0,
        .description = sRockyHelmetDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [294] =
    {
        .name = _("Air Balloon"),
        .itemId = 294,
        .price = 2000,
        .holdEffect = 121,
        .holdEffectParam = 0,
        .description = sAirBalloonDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [295] =
    {
        .name = _("Red Card"),
        .itemId = 295,
        .price = 2000,
        .holdEffect = 122,
        .holdEffectParam = 0,
        .description = sRedCardDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [296] =
    {
        .name = _("Ring Target"),
        .itemId = 296,
        .price = 2000,
        .holdEffect = 123,
        .holdEffectParam = 0,
        .description = sRingTargetDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [297] =
    {
        .name = _("Binding Band"),
        .itemId = 297,
        .price = 2000,
        .holdEffect = 124,
        .description = sBindingBandDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [298] =
    {
        .name = _("Eject Button"),
        .itemId = 298,
        .price = 2000,
        .holdEffect = 125,
        .holdEffectParam = 0,
        .description = sEjectButtonDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [299] =
    {
        .name = _("Absorb Bulb"),
        .itemId = 299,
        .price = 2000,
        .holdEffect = 126,
        .holdEffectParam = 0,
        .description = sAbsorbBulbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [300] =
    {
        .name = _("Cell Battery"),
        .itemId = 300,
        .price = 2000,
        .holdEffect = 127,
        .holdEffectParam = 0,
        .description = sCellBatteryDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [301] =
    {
        .name = _("LuminousMoss"),
        .itemId = 301,
        .price = 2000,
        .holdEffect = 132,
        .holdEffectParam = 0,
        .description = sLuminousMossDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [302] =
    {
        .name = _("Snowball"),
        .itemId = 302,
        .price = 2000,
        .holdEffect = 133,
        .holdEffectParam = 0,
        .description = sSnowballDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [303] =
    {
        .name = _("Weak. Policy"),
        .itemId = 303,
        .price = 1000,
        .holdEffect = 134,
        .holdEffectParam = 0,
        .description = sWeaknessPolicyDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [388] =
    {
        .name = _("Douse Drive"),
        .itemId = 388,
        .price = 200,
        .holdEffect = 118,
        .description = sDouseDriveDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 11,
    },

    [389] =
    {
        .name = _("Shock Drive"),
        .itemId = 389,
        .price = 200,
        .holdEffect = 118,
        .description = sShockDriveDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 13,
    },

    [390] =
    {
        .name = _("Burn Drive"),
        .itemId = 390,
        .price = 200,
        .holdEffect = 118,
        .description = sBurnDriveDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 10,
    },

    [391] =
    {
        .name = _("Chill Drive"),
        .itemId = 391,
        .price = 200,
        .holdEffect = 118,
        .description = sChillDriveDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 15,
    },

    [345] =
    {
        .name = _("Fire Gem"),
        .itemId = 345,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sFireGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 10,
    },

    [356] =
    {
        .name = _("Water Gem"),
        .itemId = 356,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sWaterGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 11,
    },

    [342] =
    {
        .name = _("Electric Gem"),
        .itemId = 342,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sElectricGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 13,
    },

    [348] =
    {
        .name = _("Grass Gem"),
        .itemId = 348,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sGrassGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 12,
    },

    [350] =
    {
        .name = _("Ice Gem"),
        .itemId = 350,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sIceGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 15,
    },

    [344] =
    {
        .name = _("Fighting Gem"),
        .itemId = 344,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sFightingGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 1,
    },

    [352] =
    {
        .name = _("Poison Gem"),
        .itemId = 352,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sPoisonGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 3,
    },

    [349] =
    {
        .name = _("Ground Gem"),
        .itemId = 349,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sGroundGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 4,
    },

    [346] =
    {
        .name = _("Flying Gem"),
        .itemId = 346,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sFlyingGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 2,
    },

    [353] =
    {
        .name = _("Psychic Gem"),
        .itemId = 353,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sPsychicGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 14,
    },

    [339] =
    {
        .name = _("Bug Gem"),
        .itemId = 339,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sBugGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 6,
    },

    [354] =
    {
        .name = _("Rock Gem"),
        .itemId = 354,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sRockGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 5,
    },

    [347] =
    {
        .name = _("Ghost Gem"),
        .itemId = 347,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sGhostGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 7,
    },

    [341] =
    {
        .name = _("Dragon Gem"),
        .itemId = 341,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sDragonGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 16,
    },

    [340] =
    {
        .name = _("Dark Gem"),
        .itemId = 340,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sDarkGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 17,
    },

    [355] =
    {
        .name = _("Steel Gem"),
        .itemId = 355,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sSteelGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 8,
    },

    [351] =
    {
        .name = _("Normal Gem"),
        .itemId = 351,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sNormalGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [343] =
    {
        .name = _("Fairy Gem"),
        .itemId = 343,
        .price = 200,
        .holdEffect = 119,
        .holdEffectParam = 30,
        .description = sFairyGemDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 18,
    },

    [304] =
    {
        .name = _("Assault Vest"),
        .itemId = 304,
        .price = 200,
        .holdEffect = 117,
        .holdEffectParam = 50,
        .description = sAssaultVestDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [326] =
    {
        .name = _("Pixie Plate"),
        .itemId = 326,
        .price = 200,
        .holdEffect = 154,
        .holdEffectParam = 20,
        .description = sPixiePlateDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 18,
    },

    [305] =
    {
        .name = _("SafetyGoggles"),
        .itemId = 305,
        .price = 4000,
        .holdEffect = 131,
        .description = sSafetyGogglesDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [416] =
    {
        .name = _("Gengarite"),
        .itemId = 416,
        .price = 200,
        .holdEffect = 130,
        .description = sGengariteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [415] =
    {
        .name = _("Gardevoirite"),
        .itemId = 415,
        .price = 200,
        .holdEffect = 130,
        .description = sGardevoiriteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [403] =
    {
        .name = _("Ampharosite"),
        .itemId = 403,
        .price = 200,
        .holdEffect = 130,
        .description = sAmpharositeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [443] =
    {
        .name = _("Venusaurite"),
        .itemId = 443,
        .price = 200,
        .holdEffect = 130,
        .description = sVenusauriteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [410] =
    {
        .name = _("CharizarditeX"),
        .itemId = 410,
        .price = 200,
        .holdEffect = 130,
        .description = sCharizarditeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [407] =
    {
        .name = _("Blastoisinite"),
        .itemId = 407,
        .price = 200,
        .holdEffect = 130,
        .description = sBlastoisiniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [430] =
    {
        .name = _("Mewtwonite X"),
        .itemId = 430,
        .price = 200,
        .holdEffect = 130,
        .description = sMewtwoniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [431] =
    {
        .name = _("Mewtwonite Y"),
        .itemId = 431,
        .price = 200,
        .holdEffect = 130,
        .description = sMewtwoniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [408] =
    {
        .name = _("Blazikenite"),
        .itemId = 408,
        .price = 200,
        .holdEffect = 130,
        .description = sBlazikeniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [428] =
    {
        .name = _("Medichamite"),
        .itemId = 428,
        .price = 200,
        .holdEffect = 130,
        .description = sMedichamiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [420] =
    {
        .name = _("Houndoominite"),
        .itemId = 420,
        .price = 200,
        .holdEffect = 130,
        .description = sHoundoominiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [400] =
    {
        .name = _("Aggronite"),
        .itemId = 400,
        .price = 200,
        .holdEffect = 130,
        .description = sAggroniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [405] =
    {
        .name = _("Banettite"),
        .itemId = 405,
        .price = 200,
        .holdEffect = 130,
        .description = sBanettiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [442] =
    {
        .name = _("Tyranitarite"),
        .itemId = 442,
        .price = 200,
        .holdEffect = 130,
        .description = sTyranitariteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [437] =
    {
        .name = _("Scizorite"),
        .itemId = 437,
        .price = 200,
        .holdEffect = 130,
        .description = sScizoriteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [433] =
    {
        .name = _("Pinsirite"),
        .itemId = 433,
        .price = 200,
        .holdEffect = 130,
        .description = sPinsiriteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [399] =
    {
        .name = _("Aerodactylite"),
        .itemId = 399,
        .price = 200,
        .holdEffect = 130,
        .description = sAerodactyliteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [425] =
    {
        .name = _("Lucarionite"),
        .itemId = 425,
        .price = 200,
        .holdEffect = 130,
        .description = sLucarioniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [397] =
    {
        .name = _("Abomasite"),
        .itemId = 397,
        .price = 200,
        .holdEffect = 130,
        .description = sAbomasiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [421] =
    {
        .name = _("Kangaskhanite"),
        .itemId = 421,
        .price = 200,
        .holdEffect = 130,
        .description = sKangaskhaniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [418] =
    {
        .name = _("Gyaradosite"),
        .itemId = 418,
        .price = 200,
        .holdEffect = 130,
        .description = sGyaradositeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [398] =
    {
        .name = _("Absolite"),
        .itemId = 398,
        .price = 200,
        .holdEffect = 130,
        .description = sAbsoliteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [411] =
    {
        .name = _("CharizarditeY"),
        .itemId = 411,
        .price = 200,
        .holdEffect = 130,
        .description = sCharizarditeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [401] =
    {
        .name = _("Alakazite"),
        .itemId = 401,
        .price = 200,
        .holdEffect = 130,
        .description = sAlakaziteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [419] =
    {
        .name = _("Heracronite"),
        .itemId = 419,
        .price = 200,
        .holdEffect = 130,
        .description = sHeracroniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [427] =
    {
        .name = _("Mawilite"),
        .itemId = 427,
        .price = 200,
        .holdEffect = 130,
        .description = sMawiliteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [426] =
    {
        .name = _("Manectite"),
        .itemId = 426,
        .price = 200,
        .holdEffect = 130,
        .description = sManectiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [414] =
    {
        .name = _("Garchompite"),
        .itemId = 414,
        .price = 200,
        .holdEffect = 130,
        .description = sGarchompiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [422] =
    {
        .name = _("Latiasite"),
        .itemId = 422,
        .price = 200,
        .holdEffect = 130,
        .description = sLatiasiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [423] =
    {
        .name = _("Latiosite"),
        .itemId = 423,
        .price = 200,
        .holdEffect = 130,
        .description = sLatiositeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [441] =
    {
        .name = _("Swampertite"),
        .itemId = 441,
        .price = 200,
        .holdEffect = 130,
        .description = sSwampertiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [436] =
    {
        .name = _("Sceptilite"),
        .itemId = 436,
        .price = 200,
        .holdEffect = 130,
        .description = sSceptiliteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [434] =
    {
        .name = _("Sablenite"),
        .itemId = 434,
        .price = 200,
        .holdEffect = 130,
        .description = sSableniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [402] =
    {
        .name = _("Altarianite"),
        .itemId = 402,
        .price = 200,
        .holdEffect = 130,
        .description = sAltarianiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [413] =
    {
        .name = _("Galladite"),
        .itemId = 413,
        .price = 200,
        .holdEffect = 130,
        .description = sGalladiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [404] =
    {
        .name = _("Audinite"),
        .itemId = 404,
        .price = 200,
        .holdEffect = 130,
        .description = sAudiniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [429] =
    {
        .name = _("Metagrossite"),
        .itemId = 429,
        .price = 200,
        .holdEffect = 130,
        .description = sMetagrossiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [438] =
    {
        .name = _("Sharpedonite"),
        .itemId = 438,
        .price = 200,
        .holdEffect = 130,
        .description = sSharpedoniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [439] =
    {
        .name = _("Slowbronite"),
        .itemId = 439,
        .price = 200,
        .holdEffect = 130,
        .description = sSlowbroniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [440] =
    {
        .name = _("Steelixite"),
        .itemId = 440,
        .price = 200,
        .holdEffect = 130,
        .description = sSteelixiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [432] =
    {
        .name = _("Pidgeotite"),
        .itemId = 432,
        .price = 200,
        .holdEffect = 130,
        .description = sPidgeotiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [417] =
    {
        .name = _("Glalitite"),
        .itemId = 417,
        .price = 200,
        .holdEffect = 130,
        .description = sGlalititeDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [412] =
    {
        .name = _("Diancite"),
        .itemId = 412,
        .price = 200,
        .holdEffect = 130,
        .description = sDianciteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [409] =
    {
        .name = _("Cameruptite"),
        .itemId = 409,
        .price = 200,
        .holdEffect = 130,
        .description = sCameruptiteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [424] =
    {
        .name = _("Lopunnite"),
        .itemId = 424,
        .price = 200,
        .holdEffect = 130,
        .description = sLopunniteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [435] =
    {
        .name = _("Salamencite"),
        .itemId = 435,
        .price = 200,
        .holdEffect = 130,
        .description = sSalamenciteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [406] =
    {
        .name = _("Beedrillite"),
        .itemId = 406,
        .price = 200,
        .holdEffect = 130,
        .description = sBeedrilliteDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [444] =
    {
        .name = _("Mega Bracelet"),
        .itemId = 444,
        .price = 200,
        .description = sMegaBraceletDesc,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [308] =
    {
        .name = _("Protect Pads"),
        .itemId = 308,
        .price = 4000,
        .holdEffect = 149,
        .description = sProtectPadsDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [307] =
    {
        .name = _("Terrain Exte."),
        .itemId = 307,
        .price = 4000,
        .holdEffect = 150,
        .description = sTerrainExtenderDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [309] =
    {
        .name = _("Electric Seed"),
        .itemId = 309,
        .price = 4000,
        .holdEffect = 151,
        .description = sElectricSeedDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [312] =
    {
        .name = _("Grassy Seed"),
        .itemId = 312,
        .price = 4000,
        .holdEffect = 151,
        .description = sGrassySeedDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [311] =
    {
        .name = _("Misty Seed"),
        .itemId = 311,
        .price = 4000,
        .holdEffect = 151,
        .description = sMistySeedDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [310] =
    {
        .name = _("Psychic Seed"),
        .itemId = 310,
        .price = 4000,
        .holdEffect = 151,
        .description = sPsychicSeedDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [306] =
    {
        .name = _("AdrenalineOrb"),
        .itemId = 306,
        .price = 300,
        .holdEffect = 152,
        .description = sAdrenalineOrbDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [130] =
    {
        .name = _("Honey"),
        .itemId = 130,
        .price = 100,
        .description = sHoneyDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [94] =
    {
        .name = _("Health Wing"),
        .itemId = 94,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sHealthWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [95] =
    {
        .name = _("Muscle Wing"),
        .itemId = 95,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sMuscleWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 1,
    },

    [96] =
    {
        .name = _("Resist Wing"),
        .itemId = 96,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sResistWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 2,
    },

    [97] =
    {
        .name = _("Genius Wing"),
        .itemId = 97,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sGeniusWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 4,
    },

    [98] =
    {
        .name = _("Clever Wing"),
        .itemId = 98,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sCleverWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 5,
    },

    [99] =
    {
        .name = _("Swift Wing"),
        .itemId = 99,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 4,
        .description = sSwiftWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 3,
    },

    [100] =
    {
        .name = _("Pretty Wing"),
        .itemId = 100,
        .price = 1000,
        .description = sPrettyWingDesc,
        .pocket = 1,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [566] =
    {
        .name = _("Shiny Charm"),
        .itemId = 566,
        .price = 0,
        .description = sShinyCharmDesc,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },

    [567] =
    {
        .name = _("Oval Charm"),
        .itemId = 567,
        .price = 0,
        .importance = 1,
        .description = sOvalCharmDesc,
        .pocket = 5,
        .type = 4,
        .fieldUseFunc = ItemUseOutOfBattle_CannotUse,
        .secondaryId = 0,
    },
};
# 34 "src/item.c" 2


static u16 GetBagItemQuantity(u16 *quantity)
{
    return gSaveBlock2Ptr->encryptionKey ^ *quantity;
}

static void SetBagItemQuantity(u16 *quantity, u16 newValue)
{
    *quantity = newValue ^ gSaveBlock2Ptr->encryptionKey;
}

static u16 GetPCItemQuantity(u16 *quantity)
{
    return *quantity;
}

static void SetPCItemQuantity(u16 *quantity, u16 newValue)
{
    *quantity = newValue;
}

void ApplyNewEncryptionKeyToBagItems(u32 newKey)
{
    u32 pocket, item;
    for (pocket = 0; pocket < 5; pocket++)
    {
        for (item = 0; item < gBagPockets[pocket].capacity; item++)
            ApplyNewEncryptionKeyToHword(&(gBagPockets[pocket].itemSlots[item].quantity), newKey);
    }
}

void ApplyNewEncryptionKeyToBagItems_(u32 newKey)
{
    ApplyNewEncryptionKeyToBagItems(newKey);
}

void SetBagItemsPointers(void)
{
    gBagPockets[0].itemSlots = gSaveBlock1Ptr->bagPocket_Items;
    gBagPockets[0].capacity = 30;

    gBagPockets[4].itemSlots = gSaveBlock1Ptr->bagPocket_KeyItems;
    gBagPockets[4].capacity = 30;

    gBagPockets[1].itemSlots = gSaveBlock1Ptr->bagPocket_PokeBalls;
    gBagPockets[1].capacity = 16;

    gBagPockets[2].itemSlots = gSaveBlock1Ptr->bagPocket_TMHM;
    gBagPockets[2].capacity = 64;

    gBagPockets[3].itemSlots = gSaveBlock1Ptr->bagPocket_Berries;
    gBagPockets[3].capacity = 46;
}

void CopyItemName(u16 itemId, u8 *dst)
{
    StringCopy(dst, ItemId_GetName(itemId));
}

void CopyItemNameHandlePlural(u16 itemId, u8 *dst, u32 quantity)
{
    if (itemId == 4)
    {
        if (quantity < 2)
            StringCopy(dst, ItemId_GetName(4));
        else
            StringCopy(dst, gText_PokeBalls);
    }
    else
    {
        if (itemId >= 144 && itemId <= 205)
            GetBerryCountString(dst, gBerries[itemId - 144].name, quantity);
        else
            StringCopy(dst, ItemId_GetName(itemId));
    }
}

void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity)
{
    const u8 *berryString;
    u8 *txtPtr;

    if (quantity < 2)
        berryString = gText_Berry;
    else
        berryString = gText_Berries;

    txtPtr = StringCopy(dst, berryName);
    *txtPtr = 0x00;
    StringCopy(txtPtr + 1, berryString);
}

bool8 IsBagPocketNonEmpty(u8 pocket)
{
    u8 i;

    for (i = 0; i < gBagPockets[pocket - 1].capacity; i++)
    {
        if (gBagPockets[pocket - 1].itemSlots[i].itemId != 0)
            return 1;
    }
    return 0;
}

bool8 CheckBagHasItem(u16 itemId, u16 count)
{
    u8 i;
    u8 pocket;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;
    if (InBattlePyramid() || FlagGet((0x4000 + 0x4)) == 1)
        return CheckPyramidBagHasItem(itemId, count);
    pocket = ItemId_GetPocket(itemId) - 1;

    for (i = 0; i < gBagPockets[pocket].capacity; i++)
    {
        if (gBagPockets[pocket].itemSlots[i].itemId == itemId)
        {
            u16 quantity;

            quantity = GetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity);
            if (quantity >= count)
                return 1;
            count -= quantity;

            if (count == 0)
                return 1;
        }
    }
    return 0;
}

bool8 HasAtLeastOneBerry(void)
{
    u16 i;

    for (i = 144; i < 211; i++)
    {
        if (CheckBagHasItem(i, 1) == 1)
        {
            gSpecialVar_Result = 1;
            return 1;
        }
    }
    gSpecialVar_Result = 0;
    return 0;
}

bool8 CheckBagHasSpace(u16 itemId, u16 count)
{
    u8 i;
    u8 pocket;
    u16 slotCapacity;
    u16 ownedCount;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;

    if (InBattlePyramid() || FlagGet((0x4000 + 0x4)) == 1)
    {
        return CheckPyramidBagHasSpace(itemId, count);
    }

    pocket = ItemId_GetPocket(itemId) - 1;
    if (pocket != 3)
        slotCapacity = 99;
    else
        slotCapacity = 999;


    for (i = 0; i < gBagPockets[pocket].capacity; i++)
    {
        if (gBagPockets[pocket].itemSlots[i].itemId == itemId)
        {
            ownedCount = GetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity);
            if (ownedCount + count <= slotCapacity)
                return 1;
            if (pocket == 2 || pocket == 3)
                return 0;
            count -= (slotCapacity - ownedCount);
            if (count == 0)
                break;
        }
    }


    if (count > 0)
    {
        for (i = 0; i < gBagPockets[pocket].capacity; i++)
        {
            if (gBagPockets[pocket].itemSlots[i].itemId == 0)
            {
                if (count > slotCapacity)
                {
                    if (pocket == 2 || pocket == 3)
                        return 0;
                    count -= slotCapacity;
                }
                else
                {
                    count = 0;
                    break;
                }
            }
        }
        if (count > 0)
            return 0;
    }

    return 1;
}

bool8 AddBagItem(u16 itemId, u16 count)
{
    u8 i;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;


    if (InBattlePyramid() || FlagGet((0x4000 + 0x4)) == 1)
    {
        return AddPyramidBagItem(itemId, count);
    }
    else
    {
        struct BagPocket *itemPocket;
        struct ItemSlot *newItems;
        u16 slotCapacity;
        u16 ownedCount;
        u8 pocket = ItemId_GetPocket(itemId) - 1;

        itemPocket = &gBagPockets[pocket];
        newItems = AllocZeroed(itemPocket->capacity * sizeof(struct ItemSlot));
        memcpy(newItems, itemPocket->itemSlots, itemPocket->capacity * sizeof(struct ItemSlot));

        if (pocket != 3)
            slotCapacity = 99;
        else
            slotCapacity = 999;

        for (i = 0; i < itemPocket->capacity; i++)
        {
            if (newItems[i].itemId == itemId)
            {
                ownedCount = GetBagItemQuantity(&newItems[i].quantity);

                if (ownedCount + count <= slotCapacity)
                {

                    SetBagItemQuantity(&newItems[i].quantity, ownedCount + count);




                    memcpy(itemPocket->itemSlots, newItems, itemPocket->capacity * sizeof(struct ItemSlot));
                    Free(newItems);
                    return 1;
                }
                else
                {

                    if (pocket == 2 || pocket == 3)
                    {
                        Free(newItems);
                        return 0;
                    }
                    else
                    {
                        count -= slotCapacity - ownedCount;
                        SetBagItemQuantity(&newItems[i].quantity, slotCapacity);

                        if (count == 0)
                        {
                            goto SUCCESS_ADD_ITEM;
                        }
                    }
                }
            }
        }


        if (count > 0)
        {

            for (i = 0; i < itemPocket->capacity; i++)
            {
                if (newItems[i].itemId == 0)
                {
                    newItems[i].itemId = itemId;
                    if (count > slotCapacity)
                    {

                        if (pocket == 2 || pocket == 3)
                        {
                            Free(newItems);
                            return 0;
                        }
                        count -= slotCapacity;
                        SetBagItemQuantity(&newItems[i].quantity, slotCapacity);
                    }
                    else
                    {

                        SetBagItemQuantity(&newItems[i].quantity, count);
                        goto SUCCESS_ADD_ITEM;
                    }
                }
            }

            if (count > 0)
            {
                Free(newItems);
                return 0;
            }
        }

        SUCCESS_ADD_ITEM:
            memcpy(itemPocket->itemSlots, newItems, itemPocket->capacity * sizeof(struct ItemSlot));
            Free(newItems);
            return 1;
    }
}

bool8 RemoveBagItem(u16 itemId, u16 count)
{
    u8 i;
    u16 totalQuantity = 0;

    if (ItemId_GetPocket(itemId) == 0 || itemId == 0)
        return 0;


    if (InBattlePyramid() || FlagGet((0x4000 + 0x4)) == 1)
    {
        return RemovePyramidBagItem(itemId, count);
    }
    else
    {
        u8 pocket;
        u8 var;
        u16 ownedCount;
        struct BagPocket *itemPocket;

        pocket = ItemId_GetPocket(itemId) - 1;
        itemPocket = &gBagPockets[pocket];

        for (i = 0; i < itemPocket->capacity; i++)
        {
            if (itemPocket->itemSlots[i].itemId == itemId)
                totalQuantity += GetBagItemQuantity(&itemPocket->itemSlots[i].quantity);
        }

        if (totalQuantity < count)
            return 0;

        if (CurMapIsSecretBase() == 1)
        {
            VarSet(0x40EE, VarGet(0x40EE) | (1 << 9));
            VarSet(0x40ED, itemId);
        }

        var = GetItemListPosition(pocket);
        if (itemPocket->capacity > var
         && itemPocket->itemSlots[var].itemId == itemId)
        {
            ownedCount = GetBagItemQuantity(&itemPocket->itemSlots[var].quantity);
            if (ownedCount >= count)
            {
                SetBagItemQuantity(&itemPocket->itemSlots[var].quantity, ownedCount - count);
                count = 0;
            }
            else
            {
                count -= ownedCount;
                SetBagItemQuantity(&itemPocket->itemSlots[var].quantity, 0);
            }

            if (GetBagItemQuantity(&itemPocket->itemSlots[var].quantity) == 0)
                itemPocket->itemSlots[var].itemId = 0;

            if (count == 0)
                return 1;
        }

        for (i = 0; i < itemPocket->capacity; i++)
        {
            if (itemPocket->itemSlots[i].itemId == itemId)
            {
                ownedCount = GetBagItemQuantity(&itemPocket->itemSlots[i].quantity);
                if (ownedCount >= count)
                {
                    SetBagItemQuantity(&itemPocket->itemSlots[i].quantity, ownedCount - count);
                    count = 0;
                }
                else
                {
                    count -= ownedCount;
                    SetBagItemQuantity(&itemPocket->itemSlots[i].quantity, 0);
                }

                if (GetBagItemQuantity(&itemPocket->itemSlots[i].quantity) == 0)
                    itemPocket->itemSlots[i].itemId = 0;

                if (count == 0)
                    return 1;
            }
        }
        return 1;
    }
}

u8 GetPocketByItemId(u16 itemId)
{
    return ItemId_GetPocket(itemId);
}

void ClearItemSlots(struct ItemSlot *itemSlots, u8 itemCount)
{
    u16 i;

    for (i = 0; i < itemCount; i++)
    {
        itemSlots[i].itemId = 0;
        SetBagItemQuantity(&itemSlots[i].quantity, 0);
    }
}

static s32 FindFreePCItemSlot(void)
{
    s8 i;

    for (i = 0; i < 50; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId == 0)
            return i;
    }
    return -1;
}

u8 CountUsedPCItemSlots(void)
{
    u8 usedSlots = 0;
    u8 i;

    for (i = 0; i < 50; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId != 0)
            usedSlots++;
    }
    return usedSlots;
}

bool8 CheckPCHasItem(u16 itemId, u16 count)
{
    u8 i;

    for (i = 0; i < 50; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId == itemId && GetPCItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity) >= count)
            return 1;
    }
    return 0;
}

bool8 AddPCItem(u16 itemId, u16 count)
{
    u8 i;
    s8 freeSlot;
    u16 ownedCount;
    struct ItemSlot *newItems;


    newItems = AllocZeroed(sizeof(gSaveBlock1Ptr->pcItems));
    memcpy(newItems, gSaveBlock1Ptr->pcItems, sizeof(gSaveBlock1Ptr->pcItems));


    for (i = 0; i < 50; i++)
    {
        if (newItems[i].itemId == itemId)
        {
            ownedCount = GetPCItemQuantity(&newItems[i].quantity);
            if (ownedCount + count <= 999)
            {
                SetPCItemQuantity(&newItems[i].quantity, ownedCount + count);
                memcpy(gSaveBlock1Ptr->pcItems, newItems, sizeof(gSaveBlock1Ptr->pcItems));
                Free(newItems);
                return 1;
            }
            count += ownedCount - 999;
            SetPCItemQuantity(&newItems[i].quantity, 999);
            if (count == 0)
            {
                memcpy(gSaveBlock1Ptr->pcItems, newItems, sizeof(gSaveBlock1Ptr->pcItems));
                Free(newItems);
                return 1;
            }
        }
    }


    if (count > 0)
    {
        freeSlot = FindFreePCItemSlot();
        if (freeSlot == -1)
        {
            Free(newItems);
            return 0;
        }
        else
        {
            newItems[freeSlot].itemId = itemId;
            SetPCItemQuantity(&newItems[freeSlot].quantity, count);
        }
    }


    memcpy(gSaveBlock1Ptr->pcItems, newItems, sizeof(gSaveBlock1Ptr->pcItems));
    Free(newItems);
    return 1;
}

void RemovePCItem(u8 index, u16 count)
{

    gSaveBlock1Ptr->pcItems[index].quantity -= count;
    if (gSaveBlock1Ptr->pcItems[index].quantity == 0)
    {
        gSaveBlock1Ptr->pcItems[index].itemId = 0;
        CompactPCItems();
    }
}

void CompactPCItems(void)
{
    u16 i;
    u16 j;

    for (i = 0; i < 50 - 1; i++)
    {
        for (j = i + 1; j < 50; j++)
        {
            if (gSaveBlock1Ptr->pcItems[i].itemId == 0)
            {
                struct ItemSlot temp = gSaveBlock1Ptr->pcItems[i];
                gSaveBlock1Ptr->pcItems[i] = gSaveBlock1Ptr->pcItems[j];
                gSaveBlock1Ptr->pcItems[j] = temp;
            }
        }
    }
}

void SwapRegisteredBike(void)
{
    switch (gSaveBlock1Ptr->registeredItem)
    {
    case 455:
        gSaveBlock1Ptr->registeredItem = 467;
        break;
    case 467:
        gSaveBlock1Ptr->registeredItem = 455;
        break;
    }
}

u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 pocketPos)
{
    return gBagPockets[pocketId - 1].itemSlots[pocketPos].itemId;
}

u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 pocketPos)
{
    return GetBagItemQuantity(&gBagPockets[pocketId - 1].itemSlots[pocketPos].quantity);
}

static void SwapItemSlots(struct ItemSlot *a, struct ItemSlot *b)
{
    struct ItemSlot temp;
    { temp = *a; *a = *b; *b = temp; };
}

void CompactItemsInBagPocket(struct BagPocket *bagPocket)
{
    u16 i, j;

    for (i = 0; i < bagPocket->capacity - 1; i++)
    {
        for (j = i + 1; j < bagPocket->capacity; j++)
        {
            if (GetBagItemQuantity(&bagPocket->itemSlots[i].quantity) == 0)
                SwapItemSlots(&bagPocket->itemSlots[i], &bagPocket->itemSlots[j]);
        }
    }
}

void SortBerriesOrTMHMs(struct BagPocket *bagPocket)
{
    u16 i, j;

    for (i = 0; i < bagPocket->capacity - 1; i++)
    {
        for (j = i + 1; j < bagPocket->capacity; j++)
        {
            if (GetBagItemQuantity(&bagPocket->itemSlots[i].quantity) != 0)
            {
                if (GetBagItemQuantity(&bagPocket->itemSlots[j].quantity) == 0)
                    continue;
                if (bagPocket->itemSlots[i].itemId <= bagPocket->itemSlots[j].itemId)
                    continue;
            }
            SwapItemSlots(&bagPocket->itemSlots[i], &bagPocket->itemSlots[j]);
        }
    }
}

void MoveItemSlotInList(struct ItemSlot* itemSlots_, u32 from, u32 to_)
{

    struct ItemSlot *itemSlots = itemSlots_;
    u32 to = to_;

    if (from != to)
    {
        s16 i, count;
        struct ItemSlot firstSlot = itemSlots[from];

        if (to > from)
        {
            to--;
            for (i = from, count = to; i < count; i++)
                itemSlots[i] = itemSlots[i + 1];
        }
        else
        {
            for (i = from, count = to; i > count; i--)
                itemSlots[i] = itemSlots[i - 1];
        }
        itemSlots[to] = firstSlot;
    }
}

void ClearBag(void)
{
    u16 i;

    for (i = 0; i < 5; i++)
    {
        ClearItemSlots(gBagPockets[i].itemSlots, gBagPockets[i].capacity);
    }
}

u16 CountTotalItemQuantityInBag(u16 itemId)
{
    u16 i;
    u16 ownedCount = 0;
    struct BagPocket *bagPocket = &gBagPockets[ItemId_GetPocket(itemId) - 1];

    for (i = 0; i < bagPocket->capacity; i++)
    {
        if (bagPocket->itemSlots[i].itemId == itemId)
            ownedCount += GetBagItemQuantity(&bagPocket->itemSlots[i].quantity);
    }

    return ownedCount;
}

static bool8 CheckPyramidBagHasItem(u16 itemId, u16 count)
{
    u8 i;
    u16 *items = gSaveBlock2Ptr->frontier.pyramidBag.itemId[gSaveBlock2Ptr->frontier.lvlMode];
    u8 *quantities = gSaveBlock2Ptr->frontier.pyramidBag.quantity[gSaveBlock2Ptr->frontier.lvlMode];

    for (i = 0; i < 10; i++)
    {
        if (items[i] == itemId)
        {
            if (quantities[i] >= count)
                return 1;

            count -= quantities[i];
            if (count == 0)
                return 1;
        }
    }

    return 0;
}

static bool8 CheckPyramidBagHasSpace(u16 itemId, u16 count)
{
    u8 i;
    u16 *items = gSaveBlock2Ptr->frontier.pyramidBag.itemId[gSaveBlock2Ptr->frontier.lvlMode];
    u8 *quantities = gSaveBlock2Ptr->frontier.pyramidBag.quantity[gSaveBlock2Ptr->frontier.lvlMode];

    for (i = 0; i < 10; i++)
    {
        if (items[i] == itemId || items[i] == 0)
        {
            if (quantities[i] + count <= 99)
                return 1;

            count = (quantities[i] + count) - 99;
            if (count == 0)
                return 1;
        }
    }

    return 0;
}

bool8 AddPyramidBagItem(u16 itemId, u16 count)
{
    u16 i;

    u16 *items = gSaveBlock2Ptr->frontier.pyramidBag.itemId[gSaveBlock2Ptr->frontier.lvlMode];
    u8 *quantities = gSaveBlock2Ptr->frontier.pyramidBag.quantity[gSaveBlock2Ptr->frontier.lvlMode];

    u16 *newItems = Alloc(10 * sizeof(u16));
    u8 *newQuantities = Alloc(10 * sizeof(u8));

    memcpy(newItems, items, 10 * sizeof(u16));
    memcpy(newQuantities, quantities, 10 * sizeof(u8));

    for (i = 0; i < 10; i++)
    {
        if (newItems[i] == itemId && newQuantities[i] < 99)
        {
            newQuantities[i] += count;
            if (newQuantities[i] > 99)
            {
                count = newQuantities[i] - 99;
                newQuantities[i] = 99;
            }
            else
            {
                count = 0;
            }

            if (count == 0)
                break;
        }
    }

    if (count > 0)
    {
        for (i = 0; i < 10; i++)
        {
            if (newItems[i] == 0)
            {
                newItems[i] = itemId;
                newQuantities[i] = count;
                if (newQuantities[i] > 99)
                {
                    count = newQuantities[i] - 99;
                    newQuantities[i] = 99;
                }
                else
                {
                    count = 0;
                }

                if (count == 0)
                    break;
            }
        }
    }

    if (count == 0)
    {
        memcpy(items, newItems, 10 * sizeof(u16));
        memcpy(quantities, newQuantities, 10 * sizeof(u8));
        Free(newItems);
        Free(newQuantities);
        return 1;
    }
    else
    {
        Free(newItems);
        Free(newQuantities);
        return 0;
    }
}

bool8 RemovePyramidBagItem(u16 itemId, u16 count)
{
    u16 i;

    u16 *items = gSaveBlock2Ptr->frontier.pyramidBag.itemId[gSaveBlock2Ptr->frontier.lvlMode];
    u8 *quantities = gSaveBlock2Ptr->frontier.pyramidBag.quantity[gSaveBlock2Ptr->frontier.lvlMode];

    i = gPyramidBagCursorData.cursorPosition + gPyramidBagCursorData.scrollPosition;
    if (items[i] == itemId && quantities[i] >= count)
    {
        quantities[i] -= count;
        if (quantities[i] == 0)
            items[i] = 0;
        return 1;
    }
    else
    {
        u16 *newItems = Alloc(10 * sizeof(u16));
        u8 *newQuantities = Alloc(10 * sizeof(u8));

        memcpy(newItems, items, 10 * sizeof(u16));
        memcpy(newQuantities, quantities, 10 * sizeof(u8));

        for (i = 0; i < 10; i++)
        {
            if (newItems[i] == itemId)
            {
                if (newQuantities[i] >= count)
                {
                    newQuantities[i] -= count;
                    count = 0;
                    if (newQuantities[i] == 0)
                        newItems[i] = 0;
                }
                else
                {
                    count -= newQuantities[i];
                    newQuantities[i] = 0;
                    newItems[i] = 0;
                }

                if (count == 0)
                    break;
            }
        }

        if (count == 0)
        {
            memcpy(items, newItems, 10 * sizeof(u16));
            memcpy(quantities, newQuantities, 10 * sizeof(u8));
            Free(newItems);
            Free(newQuantities);
            return 1;
        }
        else
        {
            Free(newItems);
            Free(newQuantities);
            return 0;
        }
    }
}

static u16 SanitizeItemId(u16 itemId)
{
    if (itemId >= 568)
        return 0;
    else
        return itemId;
}

const u8 *ItemId_GetName(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].name;
}

u16 ItemId_GetId(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].itemId;
}

u16 ItemId_GetPrice(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].price;
}

u8 ItemId_GetHoldEffect(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].holdEffect;
}

u8 ItemId_GetHoldEffectParam(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].holdEffectParam;
}

const u8 *ItemId_GetDescription(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].description;
}

u8 ItemId_GetImportance(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].importance;
}


u8 ItemId_GetUnknownValue(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].unk19;
}

u8 ItemId_GetPocket(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].pocket;
}

u8 ItemId_GetType(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].type;
}

ItemUseFunc ItemId_GetFieldFunc(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].fieldUseFunc;
}

u8 ItemId_GetBattleUsage(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].battleUsage;
}

ItemUseFunc ItemId_GetBattleFunc(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].battleUseFunc;
}

u8 ItemId_GetSecondaryId(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].secondaryId;
}
