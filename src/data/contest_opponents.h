
#include "global.h"
#include "contest.h"

#define CONTEST_OPPONENT_JIMMY 0
#define CONTEST_OPPONENT_EDITH 1
#define CONTEST_OPPONENT_EVAN 2
#define CONTEST_OPPONENT_KELSEY 3
#define CONTEST_OPPONENT_MADISON 4
#define CONTEST_OPPONENT_RAYMOND 5
#define CONTEST_OPPONENT_GRANT 6
#define CONTEST_OPPONENT_PAIGE 7
#define CONTEST_OPPONENT_ALEC 8
#define CONTEST_OPPONENT_SYDNEY 9
#define CONTEST_OPPONENT_MORRIS 10
#define CONTEST_OPPONENT_MARIAH 11
#define CONTEST_OPPONENT_RUSSELL 12
#define CONTEST_OPPONENT_MELANIE 13
#define CONTEST_OPPONENT_CHANCE 14
#define CONTEST_OPPONENT_AGATHA 15
#define CONTEST_OPPONENT_BEAU 16
#define CONTEST_OPPONENT_KAY 17
#define CONTEST_OPPONENT_CALE 18
#define CONTEST_OPPONENT_CAITLIN 19
#define CONTEST_OPPONENT_COLBY 20
#define CONTEST_OPPONENT_KYLIE 21
#define CONTEST_OPPONENT_LIAM 22
#define CONTEST_OPPONENT_MILO 23
#define CONTEST_OPPONENT_KARINA 24
#define CONTEST_OPPONENT_BOBBY 25
#define CONTEST_OPPONENT_CLAIRE 26
#define CONTEST_OPPONENT_WILLIE 27
#define CONTEST_OPPONENT_CASSIDY 28
#define CONTEST_OPPONENT_MORGAN 29
#define CONTEST_OPPONENT_SUMMER 30
#define CONTEST_OPPONENT_MILES 31
#define CONTEST_OPPONENT_AUDREY 32
#define CONTEST_OPPONENT_AVERY 33
#define CONTEST_OPPONENT_ARIANA 34
#define CONTEST_OPPONENT_ASHTON 35
#define CONTEST_OPPONENT_SANDRA 36
#define CONTEST_OPPONENT_CARSON 37
#define CONTEST_OPPONENT_KATRINA 38
#define CONTEST_OPPONENT_LUKE 39
#define CONTEST_OPPONENT_RAUL 40
#define CONTEST_OPPONENT_JADA 41
#define CONTEST_OPPONENT_ZEEK 42
#define CONTEST_OPPONENT_DIEGO 43
#define CONTEST_OPPONENT_ALIYAH 44
#define CONTEST_OPPONENT_NATALIA 45
#define CONTEST_OPPONENT_DEVIN 46
#define CONTEST_OPPONENT_TYLOR 47
#define CONTEST_OPPONENT_RONNIE 48
#define CONTEST_OPPONENT_CLAUDIA 49
#define CONTEST_OPPONENT_ELIAS 50
#define CONTEST_OPPONENT_JADE 51
#define CONTEST_OPPONENT_FRANCIS 52
#define CONTEST_OPPONENT_ALISHA 53
#define CONTEST_OPPONENT_SAUL 54
#define CONTEST_OPPONENT_FELICIA 55
#define CONTEST_OPPONENT_EMILIO 56
#define CONTEST_OPPONENT_KARLA 57
#define CONTEST_OPPONENT_DARRYL 58
#define CONTEST_OPPONENT_SELENA 59
#define CONTEST_OPPONENT_NOEL 60
#define CONTEST_OPPONENT_LACEY 61
#define CONTEST_OPPONENT_CORBIN 62
#define CONTEST_OPPONENT_GRACIE 63
#define CONTEST_OPPONENT_COLTIN 64
#define CONTEST_OPPONENT_ELLIE 65
#define CONTEST_OPPONENT_MARCUS 66
#define CONTEST_OPPONENT_KIARA 67
#define CONTEST_OPPONENT_BRYCE 68
#define CONTEST_OPPONENT_JAMIE 69
#define CONTEST_OPPONENT_JORGE 70
#define CONTEST_OPPONENT_DEVON 71
#define CONTEST_OPPONENT_JUSTINA 72
#define CONTEST_OPPONENT_RALPH 73
#define CONTEST_OPPONENT_ROSA 74
#define CONTEST_OPPONENT_KEATON 75
#define CONTEST_OPPONENT_MAYRA 76
#define CONTEST_OPPONENT_LAMAR 77
#define CONTEST_OPPONENT_AUBREY 78
#define CONTEST_OPPONENT_NIGEL 79
#define CONTEST_OPPONENT_CAMILLE 80
#define CONTEST_OPPONENT_DEON 81
#define CONTEST_OPPONENT_JANELLE 82
#define CONTEST_OPPONENT_HEATH 83
#define CONTEST_OPPONENT_SASHA 84
#define CONTEST_OPPONENT_FRANKIE 85
#define CONTEST_OPPONENT_HELEN 86
#define CONTEST_OPPONENT_CAMILE 87
#define CONTEST_OPPONENT_MARTIN 88
#define CONTEST_OPPONENT_SERGIO 89
#define CONTEST_OPPONENT_KAILEY 90
#define CONTEST_OPPONENT_PERLA 91
#define CONTEST_OPPONENT_CLARA 92
#define CONTEST_OPPONENT_JAKOB 93
#define CONTEST_OPPONENT_TREY 94
#define CONTEST_OPPONENT_LANE 95

// All contest opponents have a common set of AI flags (which contains all of the actually 
// useful AI scripts, as well as some dummys) and a random combination of 2-3 dummy flags. 
// Seems that like the battle AI they had more plans for this than what ended up in the final game
#define CONTEST_AI_SET_1  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_20 | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_2  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_19 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_3  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_18 | CONTEST_AI_DUMMY_23)
#define CONTEST_AI_SET_4  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_17 | CONTEST_AI_DUMMY_23)
#define CONTEST_AI_SET_5  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_16 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_6  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_15 | CONTEST_AI_DUMMY_22)
#define CONTEST_AI_SET_7  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_14 | CONTEST_AI_DUMMY_23)
#define CONTEST_AI_SET_8  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_13 | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_9  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_12 | CONTEST_AI_DUMMY_24)
#define CONTEST_AI_SET_A  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_11 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_B  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_10 | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_C  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_9  | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_D  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_8  | CONTEST_AI_DUMMY_22 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_E  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_7  | CONTEST_AI_DUMMY_24)
#define CONTEST_AI_SET_F  (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_6  | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_10 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_20 | CONTEST_AI_DUMMY_23)
#define CONTEST_AI_SET_11 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_18 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_12 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_17 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_13 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_16 | CONTEST_AI_DUMMY_22)
#define CONTEST_AI_SET_14 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_15 | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_15 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_14 | CONTEST_AI_DUMMY_22)
#define CONTEST_AI_SET_16 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_13 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_17 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_12 | CONTEST_AI_DUMMY_23 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_18 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_10 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_19 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_9  | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_1A (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_8  | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_1B (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_7  | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_1C (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_6  | CONTEST_AI_DUMMY_21)
#define CONTEST_AI_SET_1D (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_20 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_1E (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_15 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_1F (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_14 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_20 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_12 | CONTEST_AI_DUMMY_25)
#define CONTEST_AI_SET_21 (CONTEST_AI_COMMON | CONTEST_AI_DUMMY_7  | CONTEST_AI_DUMMY_25)

const struct ContestWinner gDefaultContestWinners[] =
{
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_PACHIRISU,
        .contestCategory = CONTEST_CATEGORY_CUTE,
        .monName = _("Chu-Chu"),
        .trainerName = _("Anthy"),
        .contestRank = CONTEST_RANK_NORMAL
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_TROPIUS,
        .contestCategory = CONTEST_CATEGORY_COOL,
        .monName = _("Tropie"),
        .trainerName = _("Leonard"),
        .contestRank = CONTEST_RANK_HYPER
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_SERVINE,
        .contestCategory = CONTEST_CATEGORY_BEAUTY,
        .monName = _("Louis XIV"),
        .trainerName = _("Marie"),
        .contestRank = CONTEST_RANK_NORMAL
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_ZERAORA,
        .contestCategory = CONTEST_CATEGORY_TOUGH,
        .monName = _("Punchy"),
        .trainerName = _("Pierce"),
        .contestRank = CONTEST_RANK_MASTER
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_GOTHITA,
        .contestCategory = CONTEST_CATEGORY_SMART,
        .monName = _("Lindsey"),
        .trainerName = _("Gerard"),
        .contestRank = CONTEST_RANK_SUPER
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_ABSOL,
        .contestCategory = CONTEST_CATEGORY_COOL,
        .monName = _("Harbinger"),
        .trainerName = _("Ting"),
        .contestRank = CONTEST_RANK_HYPER
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_DEWGONG,
        .contestCategory = CONTEST_CATEGORY_BEAUTY,
        .monName = _("Stella"),
        .trainerName = _("Ezra"),
        .contestRank = CONTEST_RANK_HYPER
    },
    {
        .personality = 0,
        .trainerId = 0xFFFF,
        .species = SPECIES_STUNFISK,
        .contestCategory = CONTEST_CATEGORY_CUTE,
        .monName = _("Mr. Fisk"),
        .trainerName = _("Sanders"),
        .contestRank = CONTEST_RANK_MASTER
    }
};

const struct ContestPokemon gContestOpponents[] =
{
    [CONTEST_OPPONENT_JIMMY] = {
        .species = SPECIES_LILLIPUP,
        .nickname = _("Snickers"),
        .trainerName = _("Jimbo"),
        .trainerGfxId = OBJ_EVENT_GFX_BOY_1,
        .aiFlags = CONTEST_AI_SET_1,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_ROAR,
            MOVE_BITE,
            MOVE_TAKE_DOWN,
            MOVE_HOWL
        },
        .cool = 10,
        .beauty = 4,
        .cute = 10,
        .smart = 3,
        .tough = 4,
        .sheen = 50,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_EDITH] = {
        .species = SPECIES_GRUBBIN,
        .nickname = _("Grabby"),
        .trainerName = _("Lanie"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_1,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SIGNAL_BEAM,
            MOVE_FACADE,
            MOVE_TACKLE,
            MOVE_COVET
        },
        .cool = 10,
        .beauty = 10,
        .cute = 6,
        .smart = 1,
        .tough = 2,
        .sheen = 60,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_EVAN] = {
        .species = SPECIES_SCYTHER,
        .nickname = _("Scythe"),
        .trainerName = _("Ed"),
        .trainerGfxId = OBJ_EVENT_GFX_LITTLE_BOY,
        .aiFlags = CONTEST_AI_SET_3,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_FURY_CUTTER,
            MOVE_FOCUS_ENERGY,
            MOVE_DOUBLE_TEAM,
            MOVE_WING_ATTACK
        },
        .cool = 2,
        .beauty = 10,
        .cute = 10,
        .smart = 12,
        .tough = 4,
        .sheen = 70,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KELSEY] = {
        .species = SPECIES_LOTAD,
        .nickname = _("Dancer"),
        .trainerName = _("Jezebel"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_1,
        .aiFlags = CONTEST_AI_SET_4,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_BIDE,
            MOVE_SYNTHESIS,
            MOVE_BULLET_SEED,
            MOVE_GROWTH
        },
        .cool = 3,
        .beauty = 3,
        .cute = 5,
        .smart = 2,
        .tough = 7,
        .sheen = 80,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MADISON] = {
        .species = SPECIES_HOOTHOOT,
        .nickname = _("Hooters"),
        .trainerName = _("Amy"),
        .trainerGfxId = OBJ_EVENT_GFX_POKEFAN_F,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_WING_ATTACK,
            MOVE_AGILITY,
            MOVE_AERIAL_ACE,
            MOVE_GROWL
        },
        .cool = 1,
        .beauty = 3,
        .cute = 3,
        .smart = 5,
        .tough = 4,
        .sheen = 90,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_RAYMOND] = {
        .species = SPECIES_SEWADDLE,
        .nickname = _("Lil' Baby"),
        .trainerName = _("Dwight"),
        .trainerGfxId = OBJ_EVENT_GFX_BLACK_BELT,
        .aiFlags = CONTEST_AI_SET_6,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_LEECH_LIFE,
            MOVE_FALSE_SWIPE,
            MOVE_FURY_SWIPES,
            MOVE_MIND_READER
        },
        .cool = 5,
        .beauty = 2,
        .cute = 10,
        .smart = 7,
        .tough = 8,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_GRANT] = {
        .species = SPECIES_SHROOMISH,
        .nickname = _("Smishie"),
        .trainerName = _("Grant"),
        .trainerGfxId = OBJ_EVENT_GFX_YOUNGSTER,
        .aiFlags = CONTEST_AI_SET_7,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_STUN_SPORE,
            MOVE_LEECH_SEED,
            MOVE_MEGA_DRAIN,
            MOVE_ATTRACT
        },
        .cool = 3,
        .beauty = 3,
        .cute = 10,
        .smart = 2,
        .tough = 2,
        .sheen = 50,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_PAIGE] = {
        .species = SPECIES_SEEL,
        .nickname = _("Cutie"),
        .trainerName = _("Paige"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_4,
        .aiFlags = CONTEST_AI_SET_8,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_AURORA_BEAM,
            MOVE_WATER_GUN,
            MOVE_GROWL,
            MOVE_ROCK_TOMB
        },
        .cool = 3,
        .beauty = 5,
        .cute = 1,
        .smart = 10,
        .tough = 10,
        .sheen = 60,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ALEC] = {
        .species = SPECIES_TEDDIURSA,
        .nickname = _("Roosevelt"),
        .trainerName = _("Lincoln"),
        .trainerGfxId = OBJ_EVENT_GFX_CAMPER,
        .aiFlags = CONTEST_AI_SET_9,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_STRENGTH,
            MOVE_COUNTER,
            MOVE_YAWN,
            MOVE_ENCORE
        },
        .cool = 10,
        .beauty = 4,
        .cute = 4,
        .smart = 5,
        .tough = 18,
        .sheen = 70,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SYDNEY] = {
        .species = SPECIES_BIDOOF,
        .nickname = _("Fluffy"),
        .trainerName = _("Bex"),
        .trainerGfxId = OBJ_EVENT_GFX_LASS,
        .aiFlags = CONTEST_AI_SET_A,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_ASTONISH,
            MOVE_SCREECH,
            MOVE_UPROAR,
            MOVE_HYPER_VOICE
        },
        .cool = 2,
        .beauty = 2,
        .cute = 7,
        .smart = 2,
        .tough = 7,
        .sheen = 80,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MORRIS] = {
        .species = SPECIES_MAKUHITA,
        .nickname = _("Hiti"),
        .trainerName = _("Morris"),
        .trainerGfxId = OBJ_EVENT_GFX_SCHOOL_KID_M,
        .aiFlags = CONTEST_AI_SET_B,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SEISMIC_TOSS,
            MOVE_VITAL_THROW,
            MOVE_TACKLE,
            MOVE_REVERSAL
        },
        .cool = 9,
        .beauty = 1,
        .cute = 1,
        .smart = 8,
        .tough = 1,
        .sheen = 90,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MARIAH] = {
        .species = SPECIES_CARBINK,
        .nickname = _("Rocklin"),
        .trainerName = _("Carrie"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_2,
        .aiFlags = CONTEST_AI_SET_C,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_STONE_EDGE,
            MOVE_HARDEN,
            MOVE_FLAIL,
            MOVE_TACKLE
        },
        .cool = 5,
        .beauty = 10,
        .cute = 2,
        .smart = 10,
        .tough = 2,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_RUSSELL] = {
        .species = SPECIES_CROBAT,
        .nickname = _("Batman"),
        .trainerName = _("Dick"),
        .trainerGfxId = OBJ_EVENT_GFX_MAN_3,
        .aiFlags = CONTEST_AI_SET_D,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_HAZE,
            MOVE_MEAN_LOOK,
            MOVE_CONFUSE_RAY,
            MOVE_LEECH_LIFE
        },
        .cool = 4,
        .beauty = 2,
        .cute = 2,
        .smart = 2,
        .tough = 10,
        .sheen = 50,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MELANIE] = {
        .species = SPECIES_GULPIN,
        .nickname = _("Gulin"),
        .trainerName = _("Melanie"),
        .trainerGfxId = OBJ_EVENT_GFX_TWIN,
        .aiFlags = CONTEST_AI_SET_E,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SLUDGE,
            MOVE_AMNESIA,
            MOVE_TOXIC,
            MOVE_YAWN
        },
        .cool = 1,
        .beauty = 10,
        .cute = 1,
        .smart = 10,
        .tough = 5,
        .sheen = 60,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CHANCE] = {
        .species = SPECIES_HELIOPTILE,
        .nickname = _("Tile"),
        .trainerName = _("Logan"),
        .trainerGfxId = OBJ_EVENT_GFX_RICH_BOY,
        .aiFlags = CONTEST_AI_SET_F,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SPARK,
            MOVE_THUNDER_WAVE,
            MOVE_THUNDER,
            MOVE_ROAR
        },
        .cool = 20,
        .beauty = 10,
        .cute = 1,
        .smart = 1,
        .tough = 1,
        .sheen = 70,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_AGATHA] = {
        .species = SPECIES_CHIKORITA,
        .nickname = _("Dino"),
        .trainerName = _("Bertha"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_2,
        .aiFlags = CONTEST_AI_SET_1,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_GROWL,
            MOVE_LEECH_SEED,
            MOVE_TACKLE,
            MOVE_SWEET_SCENT
        },
        .cool = 5,
        .beauty = 3,
        .cute = 10,
        .smart = 10,
        .tough = 4,
        .sheen = 50,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_BEAU] = {
        .species = SPECIES_DUSTOX,
        .nickname = _("Jessie"),
        .trainerName = _("James"),
        .trainerGfxId = OBJ_EVENT_GFX_HEX_MANIAC,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SUPERSONIC,
            MOVE_WHIRLWIND,
            MOVE_SILVER_WIND,
            MOVE_SAFEGUARD
        },
        .cool = 3,
        .beauty = 10,
        .cute = 2,
        .smart = 10,
        .tough = 4,
        .sheen = 60,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KAY] = {
        .species = SPECIES_PIDGEOTTO,
        .nickname = _("Pideot"),
        .trainerName = _("Kay"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_5,
        .aiFlags = CONTEST_AI_SET_3,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_MIRROR_MOVE,
            MOVE_QUICK_ATTACK,
            MOVE_AERIAL_ACE,
            MOVE_FEATHER_DANCE
        },
        .cool = 10,
        .beauty = 8,
        .cute = 4,
        .smart = 2,
        .tough = 3,
        .sheen = 70,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CALE] = {
        .species = SPECIES_DIGLETT_ALOLAN,
        .nickname = _("DIGLE"),
        .trainerName = _("CALE"),
        .trainerGfxId = OBJ_EVENT_GFX_HIKER,
        .aiFlags = CONTEST_AI_SET_4,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_DIG,
            MOVE_EARTHQUAKE,
            MOVE_FISSURE,
            MOVE_MAGNITUDE
        },
        .cool = 4,
        .beauty = 2,
        .cute = 3,
        .smart = 5,
        .tough = 10,
        .sheen = 80,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CAITLIN] = {
        .species = SPECIES_TOTODILE,
        .nickname = _("Chewie"),
        .trainerName = _("Anna"),
        .trainerGfxId = OBJ_EVENT_GFX_TUBER_F,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_HYDRO_PUMP,
            MOVE_RAIN_DANCE,
            MOVE_BODY_SLAM,
            MOVE_ICE_BEAM
        },
        .cool = 2,
        .beauty = 10,
        .cute = 5,
        .smart = 3,
        .tough = 10,
        .sheen = 90,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_COLBY] = {
        .species = SPECIES_SEALEO,
        .nickname = _("Shady"),
        .trainerName = _("Julia"),
        .trainerGfxId = OBJ_EVENT_GFX_NINJA_BOY,
        .aiFlags = CONTEST_AI_SET_6,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_RAGE,
            MOVE_SCREECH,
            MOVE_SURF,
            MOVE_BLIZZARD
        },
        .cool = 6,
        .beauty = 10,
        .cute = 2,
        .smart = 1,
        .tough = 5,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KYLIE] = {
        .species = SPECIES_LEDYBA,
        .nickname = _("Baledy"),
        .trainerName = _("Kylie"),
        .trainerGfxId = OBJ_EVENT_GFX_BEAUTY,
        .aiFlags = CONTEST_AI_SET_7,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_BATON_PASS,
            MOVE_AGILITY,
            MOVE_SWIFT,
            MOVE_ATTRACT
        },
        .cool = 8,
        .beauty = 6,
        .cute = 8,
        .smart = 6,
        .tough = 2,
        .sheen = 90,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_LIAM] = {
        .species = SPECIES_DELIBIRD,
        .nickname = _("Birdly"),
        .trainerName = _("Liam"),
        .trainerGfxId = OBJ_EVENT_GFX_MAN_5,
        .aiFlags = CONTEST_AI_SET_8,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_PRESENT,
            MOVE_FACADE,
            MOVE_FOCUS_PUNCH,
            MOVE_RETURN
        },
        .cool = 4,
        .beauty = 3,
        .cute = 10,
        .smart = 5,
        .tough = 3,
        .sheen = 80,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MILO] = {
        .species = SPECIES_ARCHEN,
        .nickname = _("Polly"),
        .trainerName = _("Otis"),
        .trainerGfxId = OBJ_EVENT_GFX_MANIAC,
        .aiFlags = CONTEST_AI_SET_9,
        .whichRank = CONTEST_RANK_NORMAL,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_THRASH,
            MOVE_TORMENT,
            MOVE_CRUNCH,
            MOVE_DIG
        },
        .cool = 8,
        .beauty = 5,
        .cute = 5,
        .smart = 8,
        .tough = 10,
        .sheen = 70,
        .personality = 0,
        .otId = 0xFFFF
    },
	
	////////////////////////////////////////////////////////SUPER//////////////////////////////////////////////
    [CONTEST_OPPONENT_KARINA] = {
        .species = SPECIES_ROSERADE,
        .nickname = _("Rosario"),
        .trainerName = _("Debrah"),
        .trainerGfxId = OBJ_EVENT_GFX_PICNICKER,
        .aiFlags = CONTEST_AI_SET_10,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_PETAL_DANCE,
            MOVE_MAGICAL_LEAF,
            MOVE_GRASS_WHISTLE,
            MOVE_INGRAIN
        },
        .cool = 50,
        .beauty = 15,
        .cute = 75,
        .smart = 10,
        .tough = 20,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_BOBBY] = {
        .species = SPECIES_DODRIO,
        .nickname = _("Dodo"),
        .trainerName = _("Bobby"),
        .trainerGfxId = OBJ_EVENT_GFX_RUNNING_TRIATHLETE_M,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_PECK,
            MOVE_FURY_ATTACK,
            MOVE_RETURN,
            MOVE_GROWL
        },
        .cool = 15,
        .beauty = 21,
        .cute = 15,
        .smart = 85,
        .tough = 35,
        .sheen = 110,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CLAIRE] = {
        .species = SPECIES_MUDBRAY,
        .nickname = _("Horsey"),
        .trainerName = _("Stef"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_1,
        .aiFlags = CONTEST_AI_SET_11,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_ROCK_SMASH,
            MOVE_COUNTER,
            MOVE_MAGNITUDE,
            MOVE_DOUBLE_KICK
        },
        .cool = 75,
        .beauty = 25,
        .cute = 25,
        .smart = 10,
        .tough = 25,
        .sheen = 120,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_WILLIE] = {
        .species = SPECIES_CACNEA,
        .nickname = _("Nanac"),
        .trainerName = _("Willie"),
        .trainerGfxId = OBJ_EVENT_GFX_LITTLE_BOY,
        .aiFlags = CONTEST_AI_SET_12,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SPIKES,
            MOVE_LEER,
            MOVE_POISON_STING,
            MOVE_SAND_ATTACK
        },
        .cool = 10,
        .beauty = 30,
        .cute = 25,
        .smart = 65,
        .tough = 25,
        .sheen = 130,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CASSIDY] = {
        .species = SPECIES_NINJASK,
        .nickname = _("Ninja"),
        .trainerName = _("Ai"),
        .trainerGfxId = OBJ_EVENT_GFX_POKEFAN_F,
        .aiFlags = CONTEST_AI_SET_13,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SLASH,
            MOVE_AGILITY,
            MOVE_SWIFT,
            MOVE_FURY_SWIPES
        },
        .cool = 30,
        .beauty = 90,
        .cute = 30,
        .smart = 10,
        .tough = 100,
        .sheen = 140,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MORGAN] = {
        .species = SPECIES_HIPPOPOTAS,
        .nickname = _("Hippie"),
        .trainerName = _("John"),
        .trainerGfxId = OBJ_EVENT_GFX_BLACK_BELT,
        .aiFlags = CONTEST_AI_SET_14,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SAND_TOMB,
            MOVE_ROCK_TOMB,
            MOVE_CRUNCH,
            MOVE_YAWN
        },
        .cool = 50,
        .beauty = 40,
        .cute = 10,
        .smart = 35,
        .tough = 35,
        .sheen = 150,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SUMMER] = {
        .species = SPECIES_MEDICHAM,
        .nickname = _("Chamcham"),
        .trainerName = _("Summer"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_4,
        .aiFlags = CONTEST_AI_SET_15,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_REVERSAL,
            MOVE_THUNDER_PUNCH,
            MOVE_FIRE_PUNCH,
            MOVE_ICE_PUNCH
        },
        .cool = 40,
        .beauty = 20,
        .cute = 40,
        .smart = 40,
        .tough = 40,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MILES] = {
        .species = SPECIES_SPINDA,
        .nickname = _("Record"),
        .trainerName = _("Miles"),
        .trainerGfxId = OBJ_EVENT_GFX_CAMPER,
        .aiFlags = CONTEST_AI_SET_16,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_TEETER_DANCE,
            MOVE_PSYCH_UP,
            MOVE_HYPNOSIS,
            MOVE_UPROAR
        },
        .cool = 25,
        .beauty = 75,
        .cute = 25,
        .smart = 10,
        .tough = 25,
        .sheen = 110,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_AUDREY] = {
        .species = SPECIES_FLABEBE,
        .nickname = _("AZ"),
        .trainerName = _("June"),
        .trainerGfxId = OBJ_EVENT_GFX_LASS,
        .aiFlags = CONTEST_AI_SET_17,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_FAIRY_WIND,
            MOVE_WISH,
            MOVE_SAFEGUARD,
            MOVE_MISTY_TERRAIN
        },
        .cool = 30,
        .beauty = 30,
        .cute = 40,
        .smart = 30,
        .tough = 25,
        .sheen = 120,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_AVERY] = {
        .species = SPECIES_HOPPIP,
        .nickname = _("Betty"),
        .trainerName = _("Darius"),
        .trainerGfxId = OBJ_EVENT_GFX_SCHOOL_KID_M,
        .aiFlags = CONTEST_AI_SET_A,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SPLASH,
            MOVE_CONFUSE_RAY,
            MOVE_SYNTHESIS,
            MOVE_REST
        },
        .cool = 40,
        .beauty = 10,
        .cute = 30,
        .smart = 40,
        .tough = 30,
        .sheen = 130,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ARIANA] = {    
        .species = SPECIES_KECLEON,
        .nickname = _("Kecon"),
        .trainerName = _("Ariana"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_2,
        .aiFlags = CONTEST_AI_SET_18,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_THIEF,
            MOVE_SCREECH,
            MOVE_ANCIENT_POWER,
            MOVE_BIND
        },
        .cool = 10,
        .beauty = 10,
        .cute = 40,
        .smart = 75,
        .tough = 35,
        .sheen = 140,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ASHTON] = {
        .species = SPECIES_GOLDEEN,
        .nickname = _("Betty"),
        .trainerName = _("Ford"),
        .trainerGfxId = OBJ_EVENT_GFX_MAN_3,
        .aiFlags = CONTEST_AI_SET_19,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_HORN_ATTACK,
            MOVE_FURY_ATTACK,
            MOVE_HORN_DRILL,
            MOVE_TAIL_WHIP
        },
        .cool = 70,
        .beauty = 30,
        .cute = 5,
        .smart = 30,
        .tough = 25,
        .sheen = 150,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SANDRA] = {
        .species = SPECIES_WOOPER,
        .nickname = _("Woops"),
        .trainerName = _("Nicole"),
        .trainerGfxId = OBJ_EVENT_GFX_TWIN,
        .aiFlags = CONTEST_AI_SET_1A,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_MUD_SPORT,
            MOVE_WATER_SPORT,
            MOVE_EARTHQUAKE,
            MOVE_AMNESIA
        },
        .cool = 45,
        .beauty = 45,
        .cute = 60,
        .smart = 25,
        .tough = 15,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CARSON] = {
        .species = SPECIES_MINCCINO,
        .nickname = _("Snuggles"),
        .trainerName = _("Duke"),
        .trainerGfxId = OBJ_EVENT_GFX_YOUNGSTER,
        .aiFlags = CONTEST_AI_SET_1B,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SWIFT,
            MOVE_DOUBLE_TEAM,
            MOVE_AGILITY,
            MOVE_CUT
        },
        .cool = 40,
        .beauty = 30,
        .cute = 25,
        .smart = 60,
        .tough = 20,
        .sheen = 110,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KATRINA] = {
        .species = SPECIES_CLAUNCHER,
        .nickname = _("Rations"),
        .trainerName = _("Hyatt"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_1,
        .aiFlags = CONTEST_AI_SET_1C,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_VICE_GRIP,
            MOVE_SPLASH,
            MOVE_RAIN_DANCE,
            MOVE_WATER_PULSE
        },
        .cool = 15,
        .beauty = 15,
        .cute = 30,
        .smart = 15,
        .tough = 75,
        .sheen = 120,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_LUKE] = {
        .species = SPECIES_SLOWBRO,
        .nickname = _("Browlo"),
        .trainerName = _("Luke"),
        .trainerGfxId = OBJ_EVENT_GFX_FAT_MAN,
        .aiFlags = CONTEST_AI_SET_1,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_YAWN,
            MOVE_DISABLE,
            MOVE_GROWL,
            MOVE_CONFUSION
        },
        .cool = 20,
        .beauty = 40,
        .cute = 40,
        .smart = 30,
        .tough = 20,
        .sheen = 100,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_RAUL] = {
        .species = SPECIES_DARTRIX,
        .nickname = _("Alfred"),
        .trainerName = _("Bruce"),
        .trainerGfxId = OBJ_EVENT_GFX_MAN_5,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_FACADE,
            MOVE_FURY_ATTACK,
            MOVE_BRAVE_BIRD,
            MOVE_RETURN
        },
        .cool = 40,
        .beauty = 10,
        .cute = 40,
        .smart = 20,
        .tough = 20,
        .sheen = 110,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_JADA] = {
        .species = SPECIES_BERGMITE,
        .nickname = _("Icicle"),
        .trainerName = _("Bambi"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_2,
        .aiFlags = CONTEST_AI_SET_3,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_ATTRACT,
            MOVE_ICE_BEAM,
            MOVE_SAFEGUARD,
            MOVE_GROWL
        },
        .cool = 10,
        .beauty = 30,
        .cute = 40,
        .smart = 20,
        .tough = 20,
        .sheen = 120,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ZEEK] = {
        .species = SPECIES_DROWZEE,
        .nickname = _("Drowzin'"),
        .trainerName = _("Zeek"),
        .trainerGfxId = OBJ_EVENT_GFX_PSYCHIC_M,
        .aiFlags = CONTEST_AI_SET_4,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_DISABLE,
            MOVE_FUTURE_SIGHT,
            MOVE_HIDDEN_POWER,
            MOVE_RETURN
        },
        .cool = 10,
        .beauty = 40,
        .cute = 50,
        .smart = 30,
        .tough = 45,
        .sheen = 130,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_DIEGO] = {
        .species = SPECIES_COMBUSKEN,
        .nickname = _("Chicken"),
        .trainerName = _("Mark"),
        .trainerGfxId = OBJ_EVENT_GFX_EXPERT_M,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SKY_UPPERCUT,
            MOVE_DETECT,
            MOVE_SLASH,
            MOVE_MEGA_PUNCH
        },
        .cool = 45,
        .beauty = 20,
        .cute = 10,
        .smart = 20,
        .tough = 45,
        .sheen = 140,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ALIYAH] = {
        .species = SPECIES_BLISSEY,
        .nickname = _("Bliss"),
        .trainerName = _("Aliyah"),
        .trainerGfxId = OBJ_EVENT_GFX_TEALA,
        .aiFlags = CONTEST_AI_SET_6,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SING,
            MOVE_SOFT_BOILED,
            MOVE_EGG_BOMB,
            MOVE_DOUBLE_EDGE
        },
        .cool = 20,
        .beauty = 35,
        .cute = 40,
        .smart = 20,
        .tough = 20,
        .sheen = 150,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_NATALIA] = {
        .species = SPECIES_EMOLGA,
        .nickname = _("Elesa"),
        .trainerName = _("Nancy"),
        .trainerGfxId = OBJ_EVENT_GFX_POKEFAN_F,
        .aiFlags = CONTEST_AI_SET_7,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SHOCK_WAVE,
            MOVE_QUICK_ATTACK,
            MOVE_SCREECH,
            MOVE_ATTRACT
        },
        .cool = 40,
        .beauty = 10,
        .cute = 40,
        .smart = 25,
        .tough = 25,
        .sheen = 140,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_DEVIN] = {
        .species = SPECIES_SYLVEON,
        .nickname = _("Icon"),
        .trainerName = _("Dillon"),
        .trainerGfxId = OBJ_EVENT_GFX_GENTLEMAN,
        .aiFlags = CONTEST_AI_SET_8,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_PSYCH_UP,
            MOVE_BABY_DOLL_EYES,
            MOVE_TAIL_WHIP,
            MOVE_BITE
        },
        .cool = 20,
        .beauty = 20,
        .cute = 20,
        .smart = 20,
        .tough = 20,
        .sheen = 130,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_TYLOR] = {
        .species = SPECIES_MISMAGIUS,
        .nickname = _("Mage"),
        .trainerName = _("Linde"),
        .trainerGfxId = OBJ_EVENT_GFX_HEX_MANIAC,
        .aiFlags = CONTEST_AI_SET_9,
        .whichRank = CONTEST_RANK_SUPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_PERISH_SONG,
            MOVE_MEAN_LOOK,
            MOVE_CONFUSE_RAY,
            MOVE_PAIN_SPLIT
        },
        .cool = 10,
        .beauty = 35,
        .cute = 10,
        .smart = 45,
        .tough = 20,
        .sheen = 120,
        .personality = 0,
        .otId = 0xFFFF
    },
	
///////////////////////////////////////////HYPER//////////////////////////////////////////////
    [CONTEST_OPPONENT_RONNIE] = {
        .species = SPECIES_LAIRON,
        .nickname = _("Lain"),
        .trainerName = _("Ron"),
        .trainerGfxId = OBJ_EVENT_GFX_HIKER,
        .aiFlags = CONTEST_AI_SET_1D,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_METAL_SOUND,
            MOVE_METAL_CLAW,
            MOVE_HARDEN,
            MOVE_TAKE_DOWN
        },
        .cool = 30,
        .beauty = 50,
        .cute = 35,
        .smart = 100,
        .tough = 90,
        .sheen = 200,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CLAUDIA] = {
        .species = SPECIES_LEAVANNY,
        .nickname = _("Burgh"),
        .trainerName = _("Naomi"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_1,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_GROWTH,
            MOVE_RAZOR_LEAF,
            MOVE_BUG_BUZZ,
            MOVE_SWORDS_DANCE
        },
        .cool = 75,
        .beauty = 75,
        .cute = 65,
        .smart = 35,
        .tough = 70,
        .sheen = 210,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ELIAS] = {
        .species = SPECIES_SHEDINJA,
        .nickname = _("Ant"),
        .trainerName = _("Eli"),
        .trainerGfxId = OBJ_EVENT_GFX_LITTLE_BOY,
        .aiFlags = CONTEST_AI_SET_11,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SCREECH,
            MOVE_FURY_SWIPES,
            MOVE_SAND_ATTACK,
            MOVE_BATON_PASS
        },
        .cool = 30,
        .beauty = 50,
        .cute = 95,
        .smart = 70,
        .tough = 70,
        .sheen = 220,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_JADE] = {
        .species = SPECIES_UNFEZANT,
        .nickname = _("Queen"),
        .trainerName = _("Skyler"),
        .trainerGfxId = OBJ_EVENT_GFX_POKEFAN_F,
        .aiFlags = CONTEST_AI_SET_12,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_AGILITY,
            MOVE_AERIAL_ACE,
            MOVE_WING_ATTACK,
            MOVE_FLY
        },
        .cool = 65,
        .beauty = 85,
        .cute = 35,
        .smart = 75,
        .tough = 40,
        .sheen = 230,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_FRANCIS] = {
        .species = SPECIES_MIGHTYENA,
        .nickname = _("Yeen"),
        .trainerName = _("Francis"),
        .trainerGfxId = OBJ_EVENT_GFX_BLACK_BELT,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_TAUNT,
            MOVE_THIEF,
            MOVE_ODOR_SLEUTH,
            MOVE_TAKE_DOWN
        },
        .cool = 40,
        .beauty = 80,
        .cute = 35,
        .smart = 70,
        .tough = 70,
        .sheen = 240,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ALISHA] = {
        .species = SPECIES_VIVILLON_POLAR,
        .nickname = _("Hunter"),
        .trainerName = _("Chris"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_4,
        .aiFlags = CONTEST_AI_SET_1E,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_MORNING_SUN,
            MOVE_SILVER_WIND,
            MOVE_STUN_SPORE,
            MOVE_SECRET_POWER
        },
        .cool = 40,
        .beauty = 70,
        .cute = 25,
        .smart = 80,
        .tough = 100,
        .sheen = 250,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SAUL] = {
        .species = SPECIES_SEAKING,
        .nickname = _("Monarch"),
        .trainerName = _("Saul"),
        .trainerGfxId = OBJ_EVENT_GFX_CAMPER,
        .aiFlags = CONTEST_AI_SET_1F,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_FLAIL,
            MOVE_SUPERSONIC,
            MOVE_HORN_ATTACK,
            MOVE_FURY_ATTACK
        },
        .cool = 80,
        .beauty = 60,
        .cute = 30,
        .smart = 70,
        .tough = 90,
        .sheen = 200,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_FELICIA] = {
        .species = SPECIES_CASTFORM,
        .nickname = _("Cass"),
        .trainerName = _("Felicia"),
        .trainerGfxId = OBJ_EVENT_GFX_LASS,
        .aiFlags = CONTEST_AI_SET_16,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SUNNY_DAY,
            MOVE_WEATHER_BALL,
            MOVE_SANDSTORM,
            MOVE_RETURN
        },
        .cool = 70,
        .beauty = 80,
        .cute = 80,
        .smart = 50,
        .tough = 65,
        .sheen = 210,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_EMILIO] = {
        .species = SPECIES_GURDURR,
        .nickname = _("Beam"),
        .trainerName = _("Amir"),
        .trainerGfxId = OBJ_EVENT_GFX_SCHOOL_KID_M,
        .aiFlags = CONTEST_AI_SET_20,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SEISMIC_TOSS,
            MOVE_FOCUS_ENERGY,
            MOVE_KARATE_CHOP,
            MOVE_SCARY_FACE
        },
        .cool = 70,
        .beauty = 85,
        .cute = 25,
        .smart = 60,
        .tough = 50,
        .sheen = 220,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KARLA] = {
        .species = SPECIES_LOMBRE,
        .nickname = _("Lombe"),
        .trainerName = _("Karla"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_2,
        .aiFlags = CONTEST_AI_SET_A,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_ATTRACT,
            MOVE_FLASH,
            MOVE_UPROAR,
            MOVE_GROWL
        },
        .cool = 40,
        .beauty = 60,
        .cute = 90,
        .smart = 45,
        .tough = 70,
        .sheen = 230,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_DARRYL] = {
        .species = SPECIES_SALAZZLE,
        .nickname = _("Siren"),
        .trainerName = _("Markus"),
        .trainerGfxId = OBJ_EVENT_GFX_MAN_3,
        .aiFlags = CONTEST_AI_SET_18,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_VENOSHOCK,
            MOVE_SMOG,
            MOVE_DOUBLE_SLAP,
            MOVE_TORMENT
        },
        .cool = 35,
        .beauty = 50,
        .cute = 90,
        .smart = 40,
        .tough = 100,
        .sheen = 240,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SELENA] = {
        .species = SPECIES_LUMINEON,
        .nickname = _("Fishy"),
        .trainerName = _("Juillet"),
        .trainerGfxId = OBJ_EVENT_GFX_EXPERT_F,
        .aiFlags = CONTEST_AI_SET_19,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_WATER_PULSE,
            MOVE_REST,
            MOVE_WATER_SPOUT,
            MOVE_SPLASH
        },
        .cool = 30,
        .beauty = 100,
        .cute = 100,
        .smart = 50,
        .tough = 30,
        .sheen = 250,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_NOEL] = {
        .species = SPECIES_MAGIKARP,
        .nickname = _("Carp"),
        .trainerName = _("Nel"),
        .trainerGfxId = OBJ_EVENT_GFX_YOUNGSTER,
        .aiFlags = CONTEST_AI_SET_1A,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_TACKLE,
            MOVE_SPLASH,
            MOVE_FLAIL,
            MOVE_TACKLE
        },
        .cool = 30,
        .beauty = 30,
        .cute = 160,
        .smart = 50,
        .tough = 160,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_LACEY] = {
        .species = SPECIES_SIGILYPH,
        .nickname = _("Spectre"),
        .trainerName = _("Li Jing"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_1,
        .aiFlags = CONTEST_AI_SET_21,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SKY_ATTACK,
            MOVE_FUTURE_SIGHT,
            MOVE_PSYCHIC,
            MOVE_CONFUSION
        },
        .cool = 50,
        .beauty = 70,
        .cute = 60,
        .smart = 70,
        .tough = 50,
        .sheen = 210,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CORBIN] = {
        .species = SPECIES_ABSOL,
        .nickname = _("Abso"),
        .trainerName = _("Corbin"),
        .trainerGfxId = OBJ_EVENT_GFX_MANIAC,
        .aiFlags = CONTEST_AI_SET_F,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_PERISH_SONG,
            MOVE_HAIL,
            MOVE_HYPER_BEAM,
            MOVE_SLASH
        },
        .cool = 95,
        .beauty = 80,
        .cute = 85,
        .smart = 35,
        .tough = 35,
        .sheen = 220,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_GRACIE] = {
        .species = SPECIES_EXEGGUTOR_ALOLAN,
        .nickname = _("Eggsor"),
        .trainerName = _("Grace"),
        .trainerGfxId = OBJ_EVENT_GFX_PICNICKER,
        .aiFlags = CONTEST_AI_SET_1,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_STOMP,
            MOVE_HYPNOSIS,
            MOVE_EGG_BOMB,
            MOVE_SKILL_SWAP
        },
        .cool = 40,
        .beauty = 50,
        .cute = 60,
        .smart = 100,
        .tough = 80,
        .sheen = 200,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_COLTIN] = {
        .species = SPECIES_MAROWAK_ALOLAN,
        .nickname = _("Clubbin'"),
        .trainerName = _("Coltin"),
        .trainerGfxId = OBJ_EVENT_GFX_MAN_4, 
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_BONE_CLUB,
            MOVE_BONEMERANG,
            MOVE_BONE_RUSH,
            MOVE_GROWL
        },
        .cool = 40,
        .beauty = 35,
        .cute = 85,
        .smart = 35,
        .tough = 100,
        .sheen = 210,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ELLIE] = {
        .species = SPECIES_MUDSDALE,
        .nickname = _("Apples"),
        .trainerName = _("Sarah"),
        .trainerGfxId = OBJ_EVENT_GFX_EXPERT_F,
        .aiFlags = CONTEST_AI_SET_3,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_CLOSE_COMBAT,
            MOVE_PAYBACK,
            MOVE_MUD_SPORT,
            MOVE_MEGA_KICK
        },
        .cool = 85,
        .beauty = 30,
        .cute = 25,
        .smart = 50,
        .tough = 100,
        .sheen = 220,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MARCUS] = {
        .species = SPECIES_SQUIRTLE,
        .nickname = _("Surtle"),
        .trainerName = _("Marik"),
        .trainerGfxId = OBJ_EVENT_GFX_SAILOR,
        .aiFlags = CONTEST_AI_SET_4,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_TAIL_WHIP,
            MOVE_BUBBLE,
            MOVE_FOCUS_PUNCH,
            MOVE_WITHDRAW
        },
        .cool = 30,
        .beauty = 35,
        .cute = 100,
        .smart = 40,
        .tough = 95,
        .sheen = 230,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KIARA] = {
        .species = SPECIES_PASSIMIAN,
        .nickname = _("Monke"),
        .trainerName = _("Jasmine"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_3,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_THRASH,
            MOVE_VITAL_THROW,
            MOVE_FOCUS_PUNCH,
            MOVE_LEER
        },
        .cool = 100,
        .beauty = 50,
        .cute = 30,
        .smart = 50,
        .tough = 100,
        .sheen = 240,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_BRYCE] = {
        .species = SPECIES_FORRETRESS,
        .nickname = _("Tressie"),
        .trainerName = _("Bryce"),
        .trainerGfxId = OBJ_EVENT_GFX_BUG_CATCHER,
        .aiFlags = CONTEST_AI_SET_6,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_EXPLOSION,
            MOVE_SPIKES,
            MOVE_LIGHT_SCREEN,
            MOVE_GIGA_DRAIN
        },
        .cool = 80,
        .beauty = 80,
        .cute = 80,
        .smart = 80,
        .tough = 80,
        .sheen = 250,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_JAMIE] = {
        .species = SPECIES_MUNCHLAX,
        .nickname = _("Munchie"),
        .trainerName = _("May"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_5,
        .aiFlags = CONTEST_AI_SET_7,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SPITE,
            MOVE_YAWN,
            MOVE_DEFENSE_CURL,
            MOVE_TAKE_DOWN
        },
        .cool = 40,
        .beauty = 35,
        .cute = 100,
        .smart = 40,
        .tough = 110,
        .sheen = 240,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_JORGE] = {
        .species = SPECIES_PYROAR,
        .nickname = _("Mufasa"),
        .trainerName = _("Isner"),
        .trainerGfxId = OBJ_EVENT_GFX_GENTLEMAN,
        .aiFlags = CONTEST_AI_SET_8,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_ROAR,
            MOVE_FLAMETHROWER,
            MOVE_FAINT_ATTACK,
            MOVE_SUNNY_DAY
        },
        .cool = 100,
        .beauty = 100,
        .cute = 30,
        .smart = 25,
        .tough = 80,
        .sheen = 230,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_DEVON] = {
        .species = SPECIES_MILTANK,
        .nickname = _("Milkan"),
        .trainerName = _("Devon"),
        .trainerGfxId = OBJ_EVENT_GFX_POKEFAN_M,
        .aiFlags = CONTEST_AI_SET_9,
        .whichRank = CONTEST_RANK_HYPER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_MILK_DRINK,
            MOVE_HEAL_BELL,
            MOVE_DEFENSE_CURL,
            MOVE_BLIZZARD
        },
        .cool = 50,
        .beauty = 110,
        .cute = 100,
        .smart = 35,
        .tough = 40,
        .sheen = 220,
        .personality = 0,
        .otId = 0xFFFF
    },
/////////////////////////////////////////MASTER/////////////////////////////////////////////
    [CONTEST_OPPONENT_JUSTINA] = {
        .species = SPECIES_KINGDRA, 
        .nickname = _("Kingdra"),
        .trainerName = _("Juan"),
        .trainerGfxId = OBJ_EVENT_GFX_JUAN,
        .aiFlags = CONTEST_AI_SET_1D,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_DRAGON_PULSE,
            MOVE_HYDRO_PUMP,
            MOVE_RAIN_DANCE,
            MOVE_BOUNCE
        },
        .cool = 160,
        .beauty = 200,
        .cute = 20,
        .smart = 40,
        .tough = 160,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_RALPH] = {
        .species = SPECIES_EXPLOUD, 
        .nickname = _("LOUD!!!"),
        .trainerName = _("Wallie"),
        .trainerGfxId = OBJ_EVENT_GFX_EXPERT_M,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_HYPER_VOICE,
            MOVE_STOMP,
            MOVE_ROAR,
            MOVE_HOWL
        },
        .cool = 170,
        .beauty = 50,
        .cute = 55,
        .smart = 150,
        .tough = 160,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_ROSA] = {
        .species = SPECIES_SKITTY,
        .nickname = _("Kitty"),
        .trainerName = _("Rosa"),
        .trainerGfxId = OBJ_EVENT_GFX_GIRL_1,
        .aiFlags = CONTEST_AI_SET_11,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_ATTRACT,
            MOVE_ASSIST,
            MOVE_PLAY_ROUGH,
            MOVE_TAIL_WHIP
        },
        .cool = 40,
        .beauty = 200,
        .cute = 150,
        .smart = 185,
        .tough = 60,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KEATON] = {
        .species = SPECIES_SLAKING,
        .nickname = _("Slacking"),
        .trainerName = _("Norman"),
        .trainerGfxId = OBJ_EVENT_GFX_NORMAN,
        .aiFlags = CONTEST_AI_SET_12,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_COVET,
            MOVE_COUNTER,
            MOVE_ENCORE,
            MOVE_SLACK_OFF
        },
        .cool = 85,
        .beauty = 85,
        .cute = 170,
        .smart = 110,
        .tough = 150,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MAYRA] = {
        .species = SPECIES_ALTARIA,
        .nickname = _("Altaria"),
        .trainerName = _("Winona"),
        .trainerGfxId = OBJ_EVENT_GFX_WINONA,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_DRAGON_DANCE,
            MOVE_HYPER_BEAM,
            MOVE_PERISH_SONG,
            MOVE_SAFEGUARD
        },
        .cool = 170,
        .beauty = 150,
        .cute = 30,
        .smart = 30,
        .tough = 90,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_LAMAR] = {
        .species = SPECIES_GALLADE,
        .nickname = _("Knight"),
        .trainerName = _("Authur"),
        .trainerGfxId = OBJ_EVENT_GFX_RICH_BOY,
        .aiFlags = CONTEST_AI_SET_1E,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SHOCK_WAVE,
            MOVE_SHADOW_BALL,
            MOVE_SKILL_SWAP,
            MOVE_RETURN
        },
        .cool = 230,
        .beauty = 60,
        .cute = 60,
        .smart = 230,
        .tough = 80,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_AUBREY] = {
        .species = SPECIES_BELLOSSOM,
        .nickname = _("Blossom"),
        .trainerName = _("Aubrey"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_4,
        .aiFlags = CONTEST_AI_SET_1F,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_PETAL_DANCE,
            MOVE_SWEET_SCENT,
            MOVE_STUN_SPORE,
            MOVE_FLASH
        },
        .cool = 35,
        .beauty = 200,
        .cute = 150,
        .smart = 130,
        .tough = 40,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_NIGEL] = {
        .species = SPECIES_DUSKNOIR,
        .nickname = _("Dusknoir"),
        .trainerName = _("Phoebe"),
        .trainerGfxId = OBJ_EVENT_GFX_PHOEBE,
        .aiFlags = CONTEST_AI_SET_16,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_MEAN_LOOK,
            MOVE_FAINT_ATTACK,
            MOVE_KNOCK_OFF,
            MOVE_CONFUSE_RAY
        },
        .cool = 25,
        .beauty = 35,
        .cute = 230,
        .smart = 150,
        .tough = 160,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CAMILLE] = {
        .species = SPECIES_SOLROCK,
        .nickname = _("Solrock"),
        .trainerName = _("Tate"),
        .trainerGfxId = OBJ_EVENT_GFX_TATE,
        .aiFlags = CONTEST_AI_SET_20,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_SELF_DESTRUCT,
            MOVE_FUTURE_SIGHT,
            MOVE_CONFUSE_RAY,
            MOVE_PSYCHIC
        },
        .cool = 35,
        .beauty = 35,
        .cute = 150,
        .smart = 130,
        .tough = 170,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_DEON] = {
        .species = SPECIES_SHARPEDO,
        .nickname = _("Pedos"),
        .trainerName = _("Deon"),
        .trainerGfxId = OBJ_EVENT_GFX_SCHOOL_KID_M,
        .aiFlags = CONTEST_AI_SET_A,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_AGILITY,
            MOVE_SWAGGER,
            MOVE_TAUNT,
            MOVE_TAKE_DOWN
        },
        .cool = 140,
        .beauty = 70,
        .cute = 140,
        .smart = 75,
        .tough = 100,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_JANELLE] = {
        .species = SPECIES_MILOTIC,
        .nickname = _("Milotic"),
        .trainerName = _("Wallace"),
        .trainerGfxId = OBJ_EVENT_GFX_WALLACE,
        .aiFlags = CONTEST_AI_SET_18,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_RAIN_DANCE,
            MOVE_ATTRACT,
            MOVE_RECOVER,
            MOVE_CHARM
        },
        .cool = 50,
        .beauty = 100,
        .cute = 220,
        .smart = 40,
        .tough = 190,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_HEATH] = {
        .species = SPECIES_HARIYAMA,
        .nickname = _("Hariyama"),
        .trainerName = _("Brawly"),
        .trainerGfxId = OBJ_EVENT_GFX_BRAWLY,
        .aiFlags = CONTEST_AI_SET_19,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_STRENGTH,
            MOVE_ENDURE,
            MOVE_REVERSAL,
            MOVE_ROCK_TOMB
        },
        .cool = 170,
        .beauty = 70,
        .cute = 110,
        .smart = 240,
        .tough = 140,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SASHA] = {
        .species = SPECIES_MANECTRIC, 
        .nickname = _("Manectric"),
        .trainerName = _("Watson"),
        .trainerGfxId = OBJ_EVENT_GFX_WATTSON,
        .aiFlags = CONTEST_AI_SET_1A,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_THUNDER,
            MOVE_FIRE_FANG,
            MOVE_SWIFT,
            MOVE_FLASH
        },
        .cool = 200,
        .beauty = 200,
        .cute = 30,
        .smart = 35,
        .tough = 50,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_FRANKIE] = {
        .species = SPECIES_PICHU,
        .nickname = _("Chupy"),
        .trainerName = _("Frankie"),
        .trainerGfxId = OBJ_EVENT_GFX_YOUNGSTER,
        .aiFlags = CONTEST_AI_SET_21,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_SWEET_KISS,
            MOVE_ATTRACT,
            MOVE_REST,
            MOVE_TAIL_WHIP
        },
        .cool = 25,
        .beauty = 150,
        .cute = 180,
        .smart = 115,
        .tough = 120,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_HELEN] = {
        .species = SPECIES_WYNAUT,
        .nickname = _("Knot"),
        .trainerName = _("Helen"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_1,
        .aiFlags = CONTEST_AI_SET_F,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_COUNTER,
            MOVE_MIRROR_COAT,
            MOVE_SAFEGUARD,
            MOVE_DESTINY_BOND
        },
        .cool = 60,
        .beauty = 230,
        .cute = 50,
        .smart = 220,
        .tough = 210,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CAMILE] = {
        .species = SPECIES_PHANTUMP,
        .nickname = _("GAREN"),
        .trainerName = _("CAMILE"),
        .trainerGfxId = OBJ_EVENT_GFX_HEX_MANIAC,
        .aiFlags = CONTEST_AI_SET_1,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_DESTINY_BOND,
            MOVE_CONFUSE_RAY,
            MOVE_ASTONISH,
            MOVE_NIGHT_SHADE
        },
        .cool = 200,
        .beauty = 100,
        .cute = 50,
        .smart = 80,
        .tough = 180,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_MARTIN] = {
        .species = SPECIES_PORYGON,
        .nickname = _("Gonpor"),
        .trainerName = _("Martin"),
        .trainerGfxId = OBJ_EVENT_GFX_SCIENTIST_1,
        .aiFlags = CONTEST_AI_SET_2,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_CONVERSION_2,
            MOVE_CONVERSION,
            MOVE_RETURN,
            MOVE_RECYCLE
        },
        .cool = 130,
        .beauty = 130,
        .cute = 130,
        .smart = 130,
        .tough = 130,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_SERGIO] = {
        .species = SPECIES_SALAMENCE, //DRAKE
        .nickname = _("Salamence"),
        .trainerName = _("Drake"),
        .trainerGfxId = OBJ_EVENT_GFX_DRAKE,
        .aiFlags = CONTEST_AI_SET_3,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_OUTRAGE,
            MOVE_SLAM,
            MOVE_TWISTER,
            MOVE_EARTHQUAKE
        },
        .cool = 150,
        .beauty = 140,
        .cute = 50,
        .smart = 120,
        .tough = 150,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_KAILEY] = {
        .species = SPECIES_MEOWTH_ALOLAN,
        .nickname = _("Meowy"),
        .trainerName = _("Kailey"),
        .trainerGfxId = OBJ_EVENT_GFX_TWIN,
        .aiFlags = CONTEST_AI_SET_4,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_GROWL,
            MOVE_TAUNT,
            MOVE_PAY_DAY,
            MOVE_BITE
        },
        .cool = 125,
        .beauty = 110,
        .cute = 180,
        .smart = 170,
        .tough = 80,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_PERLA] = {
        .species = SPECIES_JYNX,
        .nickname = _("Nyx"),
        .trainerName = _("Mitsuru"),
        .trainerGfxId = OBJ_EVENT_GFX_BEAUTY,
        .aiFlags = CONTEST_AI_SET_5,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = TRUE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_PERISH_SONG,
            MOVE_MEAN_LOOK,
            MOVE_LOVELY_KISS,
            MOVE_FAKE_TEARS
        },
        .cool = 100,
        .beauty = 150,
        .cute = 100,
        .smart = 150,
        .tough = 120,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_CLARA] = {
        .species = SPECIES_TOGEKISS,
        .nickname = _("Gepita"),
        .trainerName = _("Clara"),
        .trainerGfxId = OBJ_EVENT_GFX_WOMAN_2,
        .aiFlags = CONTEST_AI_SET_6,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_GROWL,
            MOVE_YAWN,
            MOVE_ENCORE,
            MOVE_FOLLOW_ME
        },
        .cool = 80,
        .beauty = 120,
        .cute = 200,
        .smart = 120,
        .tough = 80,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_JAKOB] = {
        .species = SPECIES_LATIAS,
        .nickname = _("Latias"),
        .trainerName = _("Tucker"),
        .trainerGfxId = OBJ_EVENT_GFX_TUCKER,
        .aiFlags = CONTEST_AI_SET_7,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = TRUE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = FALSE,
        .moves =
        {
            MOVE_PSYSHOCK,
            MOVE_DRAGON_PULSE,
            MOVE_THUNDER_WAVE,
            MOVE_MIRROR_COAT
        },
        .cool = 180,
        .beauty = 150,
        .cute = 100,
        .smart = 80,
        .tough = 150,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_TREY] = {
        .species = SPECIES_SLOWKING,
        .nickname = _("Slowgo"),
        .trainerName = _("Trey"),
        .trainerGfxId = OBJ_EVENT_GFX_SAILOR,
        .aiFlags = CONTEST_AI_SET_8,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = FALSE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = TRUE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_FACADE,
            MOVE_CURSE,
            MOVE_YAWN,
            MOVE_FOCUS_PUNCH
        },
        .cool = 100,
        .beauty = 80,
        .cute = 200,
        .smart = 110,
        .tough = 170,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    },
    [CONTEST_OPPONENT_LANE] = {
        .species = SPECIES_URSARING,
        .nickname = _("Ursing"),
        .trainerName = _("Evan"),
        .trainerGfxId = OBJ_EVENT_GFX_BLACK_BELT,
        .aiFlags = CONTEST_AI_SET_9,
        .whichRank = CONTEST_RANK_MASTER,
        .aiPool_Cool = TRUE,
        .aiPool_Beauty = FALSE,
        .aiPool_Cute = FALSE,
        .aiPool_Smart = FALSE,
        .aiPool_Tough = TRUE,
        .moves =
        {
            MOVE_THRASH,
            MOVE_AERIAL_ACE,
            MOVE_FAKE_TEARS,
            MOVE_LEER
        },
        .cool = 180,
        .beauty = 140,
        .cute = 30,
        .smart = 80,
        .tough = 190,
        .sheen = 255,
        .personality = 0,
        .otId = 0xFFFF
    }
};

/////////////////////////////////////////END/////////////////////////////////////////////

const u8 gPostgameContestOpponentFilter[] =
{
    [CONTEST_OPPONENT_JIMMY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_EDITH] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_EVAN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KELSEY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MADISON] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_RAYMOND] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_GRANT] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_PAIGE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ALEC] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SYDNEY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MORRIS] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MARIAH] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_RUSSELL] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MELANIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CHANCE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_AGATHA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_BEAU] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KAY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CALE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CAITLIN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_COLBY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KYLIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_LIAM] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MILO] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KARINA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_BOBBY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CLAIRE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_WILLIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CASSIDY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MORGAN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SUMMER] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MILES] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_AUDREY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_AVERY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ARIANA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ASHTON] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SANDRA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CARSON] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KATRINA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_LUKE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_RAUL] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JADA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ZEEK] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_DIEGO] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ALIYAH] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_NATALIA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_DEVIN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_TYLOR] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_RONNIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CLAUDIA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ELIAS] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JADE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_FRANCIS] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ALISHA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SAUL] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_FELICIA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_EMILIO] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KARLA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_DARRYL] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SELENA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_NOEL] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_LACEY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CORBIN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_GRACIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_COLTIN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ELLIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MARCUS] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KIARA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_BRYCE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JAMIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JORGE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_DEVON] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JUSTINA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_RALPH] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_ROSA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KEATON] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MAYRA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_LAMAR] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_AUBREY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_NIGEL] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CAMILLE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_DEON] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JANELLE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_HEATH] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SASHA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_FRANKIE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_HELEN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CAMILE] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_MARTIN] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_SERGIO] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_KAILEY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_PERLA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_CLARA] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_JAKOB] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_TREY] = CONTEST_FILTER_NONE,
    [CONTEST_OPPONENT_LANE] = CONTEST_FILTER_NONE
};
