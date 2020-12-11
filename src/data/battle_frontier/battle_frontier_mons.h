const struct FacilityMon gBattleFrontierMons[NUM_FRONTIER_MONS] =
{
    [FRONTIER_MON_ALTARIA_1] = {
        .species = SPECIES_ALTARIA,
        .moves = {MOVE_FLAMETHROWER, MOVE_COTTON_GUARD, MOVE_DRAGON_PULSE, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_SNOWBALL,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
    },
    [FRONTIER_MON_ALTARIA_2] = {
        .species = SPECIES_ALTARIA,
        .moves = {MOVE_DEFOG, MOVE_TOXIC, MOVE_DRAGON_PULSE, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP,
        .nature = NATURE_CALM,
		.abilityNum = 0
    },
	[FRONTIER_MON_AMPHAROS_1] = {
        .species = SPECIES_AMPHAROS,
        .moves = {MOVE_BRICK_BREAK, MOVE_THUNDER_PUNCH, MOVE_SCREECH, MOVE_ODOR_SLEUTH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUM_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAUGHTY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AMPHAROS_2] = {
        .species = SPECIES_AMPHAROS,
        .moves = {MOVE_THUNDERBOLT, MOVE_FOCUS_BLAST, MOVE_VOLT_SWITCH, MOVE_HEAL_BELL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ARBOK] = {
        .species = SPECIES_ARBOK,
        .moves = {MOVE_COIL, MOVE_GUNK_SHOT, MOVE_EARTHQUAKE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ARIADOS] = {
        .species = SPECIES_ARIADOS,
        .moves = {MOVE_STICKY_WEB, MOVE_TOXIC_SPIKES, MOVE_MEGAHORN, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
    [FRONTIER_MON_ARMALDO_1] = {
        .species = SPECIES_ARMALDO,
        .moves = {MOVE_ROCK_SLIDE, MOVE_EARTHQUAKE, MOVE_X_SCISSOR, MOVE_ROCK_POLISH},
        .itemTableId = BATTLE_FRONTIER_ITEM_RAZOR_FANG,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ARMALDO_2] = {
        .species = SPECIES_ARMALDO,
        .moves = {MOVE_RAPID_SPIN, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AVALUGG] = {
        .species = SPECIES_AVALUGG,
        .moves = {MOVE_RAPID_SPIN, MOVE_AVALANCHE, MOVE_RECOVER, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_BANETTE_1] = {
        .species = SPECIES_BANETTE,
        .moves = {MOVE_SHADOW_CLAW, MOVE_KNOCK_OFF, MOVE_WILL_O_WISP, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BANETTE_2] = {
        .species = SPECIES_BANETTE,
        .moves = {MOVE_SHADOW_CLAW, MOVE_KNOCK_OFF, MOVE_CURSE, MOVE_PURSUIT},
        .itemTableId = BATTLE_FRONTIER_ITEM_MUSCLE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_BASCULIN] = {
        .species = SPECIES_BASCULIN,
        .moves = {MOVE_WATERFALL, MOVE_AQUA_JET, MOVE_ICE_BEAM, MOVE_SUPERPOWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_BASTIODON_1] = {
        .species = SPECIES_BASTIODON,
        .moves = {MOVE_METAL_BURST, MOVE_ROCK_SLIDE, MOVE_WIDE_GUARD, MOVE_CURSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BASTIODON_2] = {
        .species = SPECIES_BASTIODON,
        .moves = {MOVE_STEALTH_ROCK, MOVE_ROCK_SLIDE, MOVE_ROAR, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BEARTIC] = {
        .species = SPECIES_BEARTIC,
        .moves = {MOVE_ICICLE_CRASH, MOVE_SUPERPOWER, MOVE_AQUA_JET, MOVE_SWORDS_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_BEAUTIFLY] = {
        .species = SPECIES_BEAUTIFLY,
        .moves = {MOVE_QUIVER_DANCE, MOVE_BUG_BUZZ, MOVE_ROOST, MOVE_HYPER_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BEEDRILL_1] = {
        .species = SPECIES_BEEDRILL,
        .moves = {MOVE_POISON_JAB, MOVE_PURSUIT, MOVE_TOXIC, MOVE_FELL_STINGER},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_BEEDRILL_2] = {
        .species = SPECIES_BEEDRILL,
        .moves = {MOVE_TOXIC_SPIKES, MOVE_ENDEAVOR, MOVE_TAILWIND, MOVE_X_SCISSOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BEHEEYEM] = {
        .species = SPECIES_BEHEEYEM,
        .moves = {MOVE_TRICK_ROOM, MOVE_PSYCHIC, MOVE_NASTY_PLOT, MOVE_SIGNAL_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_BELLOSSOM] = {
        .species = SPECIES_BELLOSSOM,
        .moves = {MOVE_STRENGTH_SAP, MOVE_QUIVER_DANCE, MOVE_GIGA_DRAIN, MOVE_MOONBLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BIBAREL] = {
        .species = SPECIES_BIBAREL,
        .moves = {MOVE_SWORDS_DANCE, MOVE_QUICK_ATTACK, MOVE_LIQUIDATION, MOVE_FACADE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SILK_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
		[FRONTIER_MON_BOUFFALANT_1] = {
        .species = SPECIES_BOUFFALANT,
        .moves = {MOVE_PAYBACK, MOVE_EARTHQUAKE, MOVE_HEAD_CHARGE, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_BOUFFALANT_2] = {
        .species = SPECIES_BOUFFALANT,
        .moves = {MOVE_SWORDS_DANCE, MOVE_EARTHQUAKE, MOVE_TOXIC, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
		[FRONTIER_MON_BUTTERFREE] = {
        .species = SPECIES_BUTTERFREE,
        .moves = {MOVE_QUIVER_DANCE, MOVE_BUG_BUZZ, MOVE_SUBSTITUTE, MOVE_SLEEP_POWDER},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
		[FRONTIER_MON_CARBINK_1] = {
        .species = SPECIES_CARBINK,
        .moves = {MOVE_EXPLOSION, MOVE_PSYCHIC, MOVE_MOONBLAST, MOVE_POWER_GEM},
        .itemTableId = BATTLE_FRONTIER_ITEM_SCOPE_LENS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_RELAXED,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_CARBINK_2] = {
        .species = SPECIES_CARBINK,
        .moves = {MOVE_EXPLOSION, MOVE_TRICK_ROOM, MOVE_STEALTH_ROCK, MOVE_MAGIC_COAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_MENTAL_HERB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_CACTURNE] = {
        .species = SPECIES_CACTURNE,
        .moves = {MOVE_SPIKES, MOVE_GIGA_DRAIN, MOVE_DARK_PULSE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MILD,
		.abilityNum = 2
		//.ivs = 31
    },
		[FRONTIER_MON_CAMERUPT_1] = {
        .species = SPECIES_CAMERUPT,
        .moves = {MOVE_YAWN, MOVE_FLAMETHROWER, MOVE_EARTHQUAKE, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_PASSHO_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_QUIET,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_CAMERUPT_2] = {
        .species = SPECIES_CAMERUPT,
        .moves = {MOVE_ERUPTION, MOVE_FIRE_BLAST, MOVE_EARTH_POWER, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
		[FRONTIER_MON_CHATOT] = {
        .species = SPECIES_CHATOT,
        .moves = {MOVE_BOOMBURST, MOVE_CHATTER, MOVE_HEAT_WAVE, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
		[FRONTIER_MON_CHIMECHO] = {
        .species = SPECIES_CHIMECHO,
        .moves = {MOVE_HEALING_WISH, MOVE_RECOVER, MOVE_PSYCHIC, MOVE_THUNDER_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 0
		//.ivs = 31
    },
		[FRONTIER_MON_CRADILY_1] = {
        .species = SPECIES_CRADILY,
        .moves = {MOVE_STOCKPILE, MOVE_PROTECT, MOVE_INGRAIN, MOVE_GIGA_DRAIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_BIG_ROOT,
        .evSpread = F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_HP,
        .nature = NATURE_CALM,
		.abilityNum = 0
		//.ivs = 31
    },
		[FRONTIER_MON_CRADILY_2] = {
        .species = SPECIES_CRADILY,
        .moves = {MOVE_GIGA_DRAIN, MOVE_TOXIC, MOVE_STEALTH_ROCK, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
		[FRONTIER_MON_CORSOLA] = {
        .species = SPECIES_CORSOLA,
        .moves = {MOVE_SCALD, MOVE_TOXIC, MOVE_STEALTH_ROCK, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_CRUSTLE] = {
        .species = SPECIES_CRUSTLE,
        .moves = {MOVE_SHELL_SMASH, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DRIFBLIM_1] = {
        .species = SPECIES_DRIFBLIM,
        .moves = {MOVE_SHADOW_BALL, MOVE_THUNDERBOLT, MOVE_HYPNOSIS, MOVE_DESTINY_BOND},
        .itemTableId = BATTLE_FRONTIER_ITEM_CUSTAP_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
		[FRONTIER_MON_DRIFBLIM_2] = {
        .species = SPECIES_DRIFBLIM,
        .moves = {MOVE_SUBSTITUTE, MOVE_ACROBATICS, MOVE_KNOCK_OFF, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
		[FRONTIER_MON_DUGTRIO_1] = {
        .species = SPECIES_DUGTRIO,
        .moves = {MOVE_FISSURE, MOVE_TOXIC, MOVE_SUBSTITUTE, MOVE_SANDSTORM},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
		[FRONTIER_MON_DUGTRIO_2] = {
        .species = SPECIES_DUGTRIO,
        .moves = {MOVE_EARTHQUAKE, MOVE_TOXIC, MOVE_STEALTH_ROCK, MOVE_MEMENTO},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_DUSKNOIR_1] = {
        .species = SPECIES_DUSKNOIR,
        .moves = {MOVE_TRICK_ROOM, MOVE_SHADOW_SNEAK, MOVE_FIRE_PUNCH, MOVE_FLING},
        .itemTableId = BATTLE_FRONTIER_ITEM_IRON_BALL,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DUSKNOIR_2] = {
        .species = SPECIES_DUSKNOIR,
        .moves = {MOVE_TRICK_ROOM, MOVE_WILL_O_WISP, MOVE_BRICK_BREAK, MOVE_MEMENTO},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_RELAXED,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ELECTIVIRE_1] = {
        .species = SPECIES_ELECTIVIRE,
        .moves = {MOVE_THUNDER_WAVE, MOVE_FIRE_PUNCH, MOVE_ROCK_SLIDE, MOVE_FOCUS_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ELECTIVIRE_2] = {
        .species = SPECIES_ELECTIVIRE,
        .moves = {MOVE_VOLT_SWITCH, MOVE_FLAMETHROWER, MOVE_EARTHQUAKE, MOVE_ICE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ELECTRODE_1] = {
        .species = SPECIES_ELECTRODE,
        .moves = {MOVE_THUNDERBOLT, MOVE_MIRROR_COAT, MOVE_THIEF, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ELECTRODE_2] = {
        .species = SPECIES_ELECTRODE,
        .moves = {MOVE_REFLECT, MOVE_LIGHT_SCREEN, MOVE_TAUNT, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIGHT_CLAY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_EXEGGUTOR_1] = {
        .species = SPECIES_EXEGGUTOR,
        .moves = {MOVE_PSYSHOCK, MOVE_GRASS_KNOT, MOVE_LIGHT_SCREEN, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_PETAYA_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_EXEGGUTOR_2] = {
        .species = SPECIES_EXEGGUTOR,
        .moves = {MOVE_LEAF_STORM, MOVE_PSYCHIC, MOVE_GIGA_DRAIN, MOVE_SLEEP_POWDER},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_FLOATZEL] = {
        .species = SPECIES_FLOATZEL,
        .moves = {MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_FOCUS_BLAST, MOVE_AQUA_JET},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_FURFROU] = {
        .species = SPECIES_FURFROU,
        .moves = {MOVE_U_TURN, MOVE_SURF, MOVE_SUCKER_PUNCH, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GLACEON_1] = {
        .species = SPECIES_GLACEON,
        .moves = {MOVE_HAIL, MOVE_MIRROR_COAT, MOVE_BLIZZARD, MOVE_HYPER_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_GLACEON_2] = {
        .species = SPECIES_GLACEON,
        .moves = {MOVE_ICE_BEAM, MOVE_SHADOW_BALL, MOVE_BLIZZARD, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GOLDUCK] = {
        .species = SPECIES_GOLDUCK,
        .moves = {MOVE_ICE_BEAM, MOVE_RAIN_DANCE, MOVE_HYDRO_PUMP, MOVE_SYNCHRONOISE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_GOLEM_1] = {
        .species = SPECIES_GOLEM,
        .moves = {MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_SANDSTORM, MOVE_AUTOTOMIZE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ABSORB_BULB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GOLEM_2] = {
        .species = SPECIES_GOLEM,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_GOLEM_1] = {
        .species = SPECIES_ALOLAN_GOLEM,
        .moves = {MOVE_WILD_CHARGE, MOVE_EARTHQUAKE, MOVE_ROCK_BLAST, MOVE_DOUBLE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_GOLEM_2] = {
        .species = SPECIES_ALOLAN_GOLEM,
        .moves = {MOVE_VOLT_SWITCH, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GRANBULL] = {
        .species = SPECIES_GRANBULL,
        .moves = {MOVE_PLAY_ROUGH, MOVE_EARTHQUAKE, MOVE_CLOSE_COMBAT, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_HUNTAIL] = {
        .species = SPECIES_HUNTAIL,
        .moves = {MOVE_SHELL_SMASH, MOVE_WATERFALL, MOVE_ICE_BEAM, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_JUMPLUFF] = {
        .species = SPECIES_JUMPLUFF,
        .moves = {MOVE_U_TURN, MOVE_ACROBATICS, MOVE_STRENGTH_SAP, MOVE_SLEEP_POWDER},
		.itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_KECLEON] = {
        .species = SPECIES_KECLEON,
        .moves = {MOVE_KNOCK_OFF, MOVE_DRAIN_PUNCH, MOVE_SHADOW_SNEAK, MOVE_FAKE_OUT},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_BRAVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_KOMALA_1] = {
        .species = SPECIES_KOMALA,
        .moves = {MOVE_YAWN, MOVE_ROLLOUT, MOVE_THRASH, MOVE_DEFENSE_CURL},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP,
        .nature = NATURE_IMPISH,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_KOMALA_2] = {
        .species = SPECIES_KOMALA,
        .moves = {MOVE_KNOCK_OFF, MOVE_EARTHQUAKE, MOVE_U_TURN, MOVE_WOOD_HAMMER},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LEAFEON_1] = {
        .species = SPECIES_LEAFEON,
        .moves = {MOVE_SUNNY_DAY, MOVE_SYNTHESIS, MOVE_LEAF_BLADE, MOVE_X_SCISSOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_HEAT_ROCK,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LEAFEON_2] = {
        .species = SPECIES_LEAFEON,
        .moves = {MOVE_CHARM, MOVE_SWORDS_DANCE, MOVE_LEAF_BLADE, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LICKILICKY_1] = {
        .species = SPECIES_LICKILICKY,
        .moves = {MOVE_WISH, MOVE_PROTECT, MOVE_TOXIC, MOVE_SEISMIC_TOSS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_LICKILICKY_2] = {
        .species = SPECIES_LICKILICKY,
        .moves = {MOVE_BLIZZARD, MOVE_MUDDY_WATER, MOVE_FIRE_BLAST, MOVE_THUNDER},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LYCANROC_MIDNIGHT_1] = {
        .species = SPECIES_LYCANROC_MIDNIGHT,
        .moves = {MOVE_COUNTER, MOVE_REVERSAL, MOVE_SUCKER_PUNCH, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LYCANROC_MIDNIGHT_2] = {
        .species = SPECIES_LYCANROC_MIDNIGHT,
        .moves = {MOVE_STONE_EDGE, MOVE_STOMPING_TANTRUM, MOVE_SUCKER_PUNCH, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_MAROWAK_1] = {
        .species = SPECIES_MAROWAK,
        .moves = {MOVE_BONEMERANG, MOVE_STONE_EDGE, MOVE_KNOCK_OFF, MOVE_STEALTH_ROCK},
        .itemTableId = BATTLE_FRONTIER_ITEM_THICK_CLUB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_MAROWAK_2] = {
        .species = SPECIES_MAROWAK,
        .moves = {MOVE_BONE_RUSH, MOVE_DOUBLE_KICK, MOVE_ENDEAVOR, MOVE_SMACK_DOWN},
        .itemTableId = BATTLE_FRONTIER_ITEM_RED_CARD,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MAWILE_1] = {
        .species = SPECIES_MAWILE,
        .moves = {MOVE_PLAY_ROUGH, MOVE_TOXIC, MOVE_KNOCK_OFF, MOVE_STEALTH_ROCK},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MAWILE_2] = {
        .species = SPECIES_MAWILE,
        .moves = {MOVE_CRUNCH, MOVE_SUCKER_PUNCH, MOVE_IRON_HEAD, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MR_MIME] = {
        .species = SPECIES_MR_MIME,
        .moves = {MOVE_NASTY_PLOT, MOVE_DAZZLING_GLEAM, MOVE_PSYCHIC, MOVE_ENCORE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MUK_1] = {
        .species = SPECIES_MUK,
        .moves = {MOVE_REST, MOVE_SLEEP_TALK, MOVE_CURSE, MOVE_POISON_JAB},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MUK_2] = {
        .species = SPECIES_MUK,
        .moves = {MOVE_STOCKPILE, MOVE_SWALLOW, MOVE_MUD_SLAP, MOVE_POISON_JAB},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_NINJASK] = {
        .species = SPECIES_NINJASK,
        .moves = {MOVE_LEECH_LIFE, MOVE_AERIAL_ACE, MOVE_NIGHT_SLASH, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ORICORIO_1] = {
        .species = SPECIES_ORICORIO,
        .moves = {MOVE_CALM_MIND, MOVE_REVELATION_DANCE, MOVE_HURRICANE, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ORICORIO_2] = {
        .species = SPECIES_ORICORIO,
        .moves = {MOVE_AIR_SLASH, MOVE_REVELATION_DANCE, MOVE_HURRICANE, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_PINSIR_1] = {
        .species = SPECIES_PINSIR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_X_SCISSOR, MOVE_EARTHQUAKE, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_PINSIR_2] = {
        .species = SPECIES_PINSIR,
        .moves = {MOVE_GUILLOTINE, MOVE_X_SCISSOR, MOVE_EARTHQUAKE, MOVE_CLOSE_COMBAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_POLIWRATH] = {
        .species = SPECIES_POLIWRATH,
        .moves = {MOVE_SCALD, MOVE_FOCUS_BLAST, MOVE_ICE_BEAM, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_PROBOPASS_1] = {
        .species = SPECIES_PROBOPASS,
        .moves = {MOVE_SMACK_DOWN, MOVE_EARTH_POWER, MOVE_STEALTH_ROCK, MOVE_VOLT_SWITCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_PROBOPASS_2] = {
        .species = SPECIES_PROBOPASS,
        .moves = {MOVE_THUNDER_WAVE, MOVE_DOUBLE_TEAM, MOVE_MAGNET_BOMB, MOVE_REST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHESTO_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_PURUGLY] = {
        .species = SPECIES_PURUGLY,
        .moves = {MOVE_FAKE_OUT, MOVE_KNOCK_OFF, MOVE_U_TURN, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_GLASSES,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_PYUKUMUKU] = {
        .species = SPECIES_PYUKUMUKU,
        .moves = {MOVE_RECOVER, MOVE_SPITE, MOVE_TOXIC, MOVE_BLOCK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_RAICHU_1] = {
        .species = SPECIES_RAICHU,
        .moves = {MOVE_NASTY_PLOT, MOVE_THUNDERBOLT, MOVE_FOCUS_BLAST, MOVE_SIGNAL_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_RAICHU_2] = {
        .species = SPECIES_RAICHU,
        .moves = {MOVE_NUZZLE, MOVE_FOCUS_BLAST, MOVE_SWEET_KISS, MOVE_CHARGE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_SHUCA_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_RAMPARDOS_1] = {
        .species = SPECIES_RAMPARDOS,
        .moves = {MOVE_ROCK_SLIDE, MOVE_FIRE_PUNCH, MOVE_ICE_BEAM, MOVE_ZEN_HEADBUTT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_NAIVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_RAMPARDOS_2] = {
        .species = SPECIES_RAMPARDOS,
        .moves = {MOVE_HEAD_SMASH, MOVE_BRICK_BREAK, MOVE_EARTHQUAKE, MOVE_IRON_HEAD},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_NAIVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_RAPIDASH] = {
        .species = SPECIES_RAPIDASH,
        .moves = {MOVE_FLARE_BLITZ, MOVE_WILD_CHARGE, MOVE_HIGH_HORSEPOWER, MOVE_MORNING_SUN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_RATICATE] = {
        .species = SPECIES_RATICATE,
        .moves = {MOVE_FACADE, MOVE_CRUNCH, MOVE_STOMPING_TANTRUM, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_FLAME_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_RELICANTH] = {
        .species = SPECIES_RELICANTH,
        .moves = {MOVE_HEAD_SMASH, MOVE_WATERFALL, MOVE_EARTHQUAKE, MOVE_ZEN_HEADBUTT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_NAIVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ROTOM_FAN_1] = {
        .species = SPECIES_ROTOM_FAN,
        .moves = {MOVE_VOLT_SWITCH, MOVE_AIR_SLASH, MOVE_WILL_O_WISP, MOVE_DEFOG},
        .itemTableId = BATTLE_FRONTIER_ITEM_WIKI_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_HP,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ROTOM_FAN_2] = {
        .species = SPECIES_ROTOM_FAN,
        .moves = {MOVE_THUNDER, MOVE_AIR_SLASH, MOVE_TRICK, MOVE_DARK_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_HP,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_SANDSLASH_1] = {
        .species = SPECIES_SANDSLASH,
        .moves = {MOVE_RAPID_SPIN, MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_FIGY_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SANDSLASH_2] = {
        .species = SPECIES_SANDSLASH,
        .moves = {MOVE_SANDSTORM, MOVE_X_SCISSOR, MOVE_EARTHQUAKE, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SMOOTH_ROCK,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SAWSBUCK_1] = {
        .species = SPECIES_SAWSBUCK_SUMMER,
        .moves = {MOVE_DOUBLE_EDGE, MOVE_HORN_LEECH, MOVE_JUMP_KICK, MOVE_HEADBUTT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SAWSBUCK_2] = {
        .species = SPECIES_SAWSBUCK_WINTER,
        .moves = {MOVE_DOUBLE_EDGE, MOVE_SWORDS_DANCE, MOVE_HORN_LEECH, MOVE_JUMP_KICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_SHIINOTIC_1] = {
        .species = SPECIES_SHIINOTIC,
        .moves = {MOVE_SPORE, MOVE_STRENGTH_SAP, MOVE_GIGA_DRAIN, MOVE_MOONBLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_SHIINOTIC_2] = {
        .species = SPECIES_SHIINOTIC,
        .moves = {MOVE_GIGA_DRAIN, MOVE_SLUDGE_BOMB, MOVE_CHARGE_BEAM, MOVE_MOONBLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_SHUCKLE_1] = {
        .species = SPECIES_SHUCKLE,
        .moves = {MOVE_STICKY_WEB, MOVE_STEALTH_ROCK, MOVE_ENCORE, MOVE_INFESTATION},
        .itemTableId = BATTLE_FRONTIER_ITEM_MENTAL_HERB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_SHUCKLE_2] = {
        .species = SPECIES_SHUCKLE,
        .moves = {MOVE_GYRO_BALL, MOVE_DOUBLE_TEAM, MOVE_SUBSTITUTE, MOVE_POWER_TRICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_SIMIPOUR] = {
        .species = SPECIES_SIMIPOUR,
        .moves = {MOVE_NASTY_PLOT, MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SIMISAGE] = {
        .species = SPECIES_SIMISAGE,
        .moves = {MOVE_LEAF_STORM, MOVE_KNOCK_OFF, MOVE_SUPERPOWER, MOVE_IRON_TAIL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SIMISEAR] = {
        .species = SPECIES_SIMISEAR,
        .moves = {MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_SUBSTITUTE, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SWANNA] = {
        .species = SPECIES_SWANNA,
        .moves = {MOVE_HURRICANE, MOVE_SCALD, MOVE_DEFOG, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_SWOOBAT] = {
        .species = SPECIES_SWOOBAT,
        .moves = {MOVE_SUBSTITUTE, MOVE_CALM_MIND, MOVE_STORED_POWER, MOVE_HEAT_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SALAC_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_TORTERRA_1] = {
        .species = SPECIES_TORTERRA,
        .moves = {MOVE_STEALTH_ROCK, MOVE_SYNTHESIS, MOVE_WOOD_HAMMER, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_TORTERRA_2] = {
        .species = SPECIES_TORTERRA,
        .moves = {MOVE_SAND_TOMB, MOVE_SYNTHESIS, MOVE_SEED_BOMB, MOVE_CURSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_BINDING_BAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_TOUCANNON_1] = {
        .species = SPECIES_TOUCANNON,
        .moves = {MOVE_BRAVE_BIRD, MOVE_BULLET_SEED, MOVE_KNOCK_OFF, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_TOUCANNON_2] = {
        .species = SPECIES_TOUCANNON,
        .moves = {MOVE_BRAVE_BIRD, MOVE_BULLET_SEED, MOVE_ROCK_BLAST, MOVE_TAILWIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_WISHIWASHI_1] = {
        .species = SPECIES_WISHIWASHI,
        .moves = {MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_U_TURN, MOVE_DOUBLE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_WISHIWASHI_2] = {
        .species = SPECIES_WISHIWASHI,
        .moves = {MOVE_ICE_BEAM, MOVE_HYDRO_PUMP, MOVE_U_TURN, MOVE_ENDEAVOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_RINDO_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ZEBSTRIKA] = {
        .species = SPECIES_ZEBSTRIKA,
        .moves = {MOVE_THUNDERBOLT, MOVE_VOLT_SWITCH, MOVE_GIGA_IMPACT, MOVE_OVERHEAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	//ZUBL
	[FRONTIER_MON_SILVALLY] = {
        .species = SPECIES_SILVALLY,
        .moves = {MOVE_DOUBLE_EDGE, MOVE_U_TURN, MOVE_EXPLOSION, MOVE_SURF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_CRABOMINABLE_1] = {
        .species = SPECIES_CRABOMINABLE,
        .moves = {MOVE_DRAIN_PUNCH, MOVE_ICE_HAMMER, MOVE_EARTHQUAKE, MOVE_THUNDER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_CRABOMINABLE_2] = {
        .species = SPECIES_CRABOMINABLE,
        .moves = {MOVE_REST, MOVE_ICE_HAMMER, MOVE_IRON_DEFENSE, MOVE_DYNAMIC_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHESTO_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_GOREBYSS] = {
        .species = SPECIES_GOREBYSS,
        .moves = {MOVE_SHELL_SMASH, MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_JYNX_1] = {
        .species = SPECIES_JYNX,
        .moves = {MOVE_SUBSTITUTE, MOVE_NASTY_PLOT, MOVE_LOVELY_KISS, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_JYNX_2] = {
        .species = SPECIES_JYNX,
        .moves = {MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_TRICK, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_RATICATE] = {
        .species = SPECIES_ALOLAN_RATICATE,
        .moves = {MOVE_SWORDS_DANCE, MOVE_DOUBLE_EDGE, MOVE_KNOCK_OFF, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_SILK_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_SHIFTRY_1] = {
        .species = SPECIES_SHIFTRY,
        .moves = {MOVE_KNOCK_OFF, MOVE_SUCKER_PUNCH, MOVE_LEAF_STORM, MOVE_LOW_KICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_LONELY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_SHIFTRY_2] = {
        .species = SPECIES_SHIFTRY,
        .moves = {MOVE_SUNNY_DAY, MOVE_SOLAR_BEAM, MOVE_DARK_PULSE, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_HEAT_ROCK,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_LONELY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_THROH_1] = {
        .species = SPECIES_THROH,
        .moves = {MOVE_BULK_UP, MOVE_STORM_THROW, MOVE_KNOCK_OFF, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_THROH_2] = {
        .species = SPECIES_THROH,
        .moves = {MOVE_EARTHQUAKE, MOVE_STORM_THROW, MOVE_PAYBACK, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_TURTONATOR_1] = {
        .species = SPECIES_TURTONATOR,
        .moves = {MOVE_SHELL_SMASH, MOVE_FIRE_BLAST, MOVE_DRACO_METEOR, MOVE_DRAGON_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_TURTONATOR_2] = {
        .species = SPECIES_TURTONATOR,
        .moves = {MOVE_SHELL_TRAP, MOVE_FIRE_SPIN, MOVE_DRAGON_TAIL, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_URSARING_1] = {
        .species = SPECIES_URSARING,
        .moves = {MOVE_SWORDS_DANCE, MOVE_FACADE, MOVE_CRUNCH, MOVE_CLOSE_COMBAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_FLAME_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_BRAVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_URSARING_2] = {
        .species = SPECIES_URSARING,
        .moves = {MOVE_THRASH, MOVE_REST, MOVE_CRUNCH, MOVE_COUNTER},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHESTO_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_BRAVE,
		.abilityNum = 2
		//.ivs = 31
    },
	//PU
	
	
	[FRONTIER_MON_ABOMASNOW_1] = {
        .species = SPECIES_ABOMASNOW,
        .moves = {MOVE_BLIZZARD, MOVE_GIGA_DRAIN, MOVE_EARTHQUAKE, MOVE_ICE_SHARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_HASTY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ABOMASNOW_2] = {
        .species = SPECIES_ABOMASNOW,
        .moves = {MOVE_LEECH_SEED, MOVE_INGRAIN, MOVE_ICY_WIND, MOVE_FROST_BREATH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ABSOL_1] = {
        .species = SPECIES_ABSOL,
        .moves = {MOVE_KNOCK_OFF, MOVE_SUCKER_PUNCH, MOVE_PLAY_ROUGH, MOVE_PURSUIT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ABSOL_2] = {
        .species = SPECIES_ABSOL,
        .moves = {MOVE_PAYBACK, MOVE_DOUBLE_TEAM, MOVE_MEAN_LOOK, MOVE_BATON_PASS},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_AGGRON_1] = {
        .species = SPECIES_AGGRON,
        .moves = {MOVE_HEAD_SMASH, MOVE_HEAVY_SLAM, MOVE_AQUA_TAIL, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_AGGRON_2] = {
        .species = SPECIES_AGGRON,
        .moves = {MOVE_SURF, MOVE_FLASH_CANNON, MOVE_FOCUS_BLAST, MOVE_ROUND},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AUDINO_1] = {
        .species = SPECIES_AUDINO,
        .moves = {MOVE_WISH, MOVE_PROTECT, MOVE_KNOCK_OFF, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_AUDINO_2] = {
        .species = SPECIES_AUDINO,
        .moves = {MOVE_HYPER_VOICE, MOVE_THUNDER, MOVE_BLIZZARD, MOVE_FIRE_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_AURORUS_1] = {
        .species = SPECIES_AURORUS,
        .moves = {MOVE_BLIZZARD, MOVE_FREEZE_DRY, MOVE_EARTH_POWER, MOVE_HYPER_VOICE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AURORUS_2] = {
        .species = SPECIES_AURORUS,
        .moves = {MOVE_ANCIENT_POWER, MOVE_FREEZE_DRY, MOVE_SANDSTORM, MOVE_HAIL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_CARRACOSTA_1] = {
        .species = SPECIES_CARRACOSTA,
        .moves = {MOVE_SHELL_SMASH, MOVE_STONE_EDGE, MOVE_AQUA_JET, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAUGHTY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_CARRACOSTA_2] = {
        .species = SPECIES_CARRACOSTA,
        .moves = {MOVE_WATERFALL, MOVE_ROCK_SLIDE, MOVE_AQUA_JET, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAUGHTY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_CLAYDOL] = {
        .species = SPECIES_CLAYDOL,
        .moves = {MOVE_RAPID_SPIN, MOVE_TOXIC, MOVE_PSYCHIC, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_BOLD,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_CRYOGONAL] = {
        .species = SPECIES_CRYOGONAL,
        .moves = {MOVE_RAPID_SPIN, MOVE_RECOVER, MOVE_FREEZE_DRY, MOVE_DEFOG},
        .itemTableId = BATTLE_FRONTIER_ITEM_METRONOME,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DODRIO] = {
        .species = SPECIES_CLAYDOL,
        .moves = {MOVE_BRAVE_BIRD, MOVE_JUMP_KICK, MOVE_KNOCK_OFF, MOVE_PURSUIT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_DRAMPA_1] = {
        .species = SPECIES_DRAMPA,
        .moves = {MOVE_DRACO_METEOR, MOVE_HYPER_VOICE, MOVE_FLAMETHROWER, MOVE_ENERGY_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_DRAMPA_2] = {
        .species = SPECIES_DRAMPA,
        .moves = {MOVE_FIRE_BLAST, MOVE_HYPER_VOICE, MOVE_DRAGON_PULSE, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_DUGTRIO_1] = {
        .species = SPECIES_ALOLAN_DUGTRIO,
        .moves = {MOVE_EARTHQUAKE, MOVE_IRON_HEAD, MOVE_SUBSTITUTE, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_DUGTRIO_2] = {
        .species = SPECIES_ALOLAN_DUGTRIO,
        .moves = {MOVE_DIG, MOVE_IRON_HEAD, MOVE_ROCK_SLIDE, MOVE_SANDSTORM},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_EELEKTROSS_1] = {
        .species = SPECIES_EELEKTROSS,
        .moves = {MOVE_VOLT_SWITCH, MOVE_GIGA_DRAIN, MOVE_FLAMETHROWER, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_EELEKTROSS_2] = {
        .species = SPECIES_EELEKTROSS,
        .moves = {MOVE_THUNDERBOLT, MOVE_THUNDER_WAVE, MOVE_GASTRO_ACID, MOVE_DISCHARGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_MAGNET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GASTRODON_1] = {
        .species = SPECIES_GASTRODON,
        .moves = {MOVE_SCALD, MOVE_RECOVER, MOVE_TOXIC, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_SASSY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_GASTRODON_2] = {
        .species = SPECIES_GASTRODON_EAST_SEA,
        .moves = {MOVE_WATERFALL, MOVE_AMNESIA, MOVE_CURSE, MOVE_YAWN},
        .itemTableId = BATTLE_FRONTIER_ITEM_RINDO_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_SASSY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GOLURK_1] = {
        .species = SPECIES_GOLURK,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_SHADOW_PUNCH, MOVE_ICE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GOLURK_2] = {
        .species = SPECIES_GOLURK,
        .moves = {MOVE_HAMMER_ARM, MOVE_ROCK_SLIDE, MOVE_CURSE, MOVE_GYRO_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_HITMONCHAN] = {
        .species = SPECIES_HITMONCHAN,
        .moves = {MOVE_DRAIN_PUNCH, MOVE_MACH_PUNCH, MOVE_TOXIC, MOVE_RAPID_SPIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_IAPAPA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CAREFUL,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_JELLICENT_1] = {
        .species = SPECIES_JELLICENT,
        .moves = {MOVE_HEX, MOVE_TAUNT, MOVE_WILL_O_WISP, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_JELLICENT_2] = {
        .species = SPECIES_JELLICENT,
        .moves = {MOVE_RAIN_DANCE, MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_CONFUSE_RAY},
        .itemTableId = BATTLE_FRONTIER_ITEM_DAMP_ROCK,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_KABUTOPS] = {
        .species = SPECIES_JELLICENT,
        .moves = {MOVE_LIQUIDATION, MOVE_STONE_EDGE, MOVE_KNOCK_OFF, MOVE_RAPID_SPIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_KANGASKHAN_1] = {
        .species = SPECIES_KANGASKHAN,
        .moves = {MOVE_FAKE_OUT, MOVE_DOUBLE_EDGE, MOVE_EARTHQUAKE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_FIGY_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_KANGASKHAN_2] = {
        .species = SPECIES_KANGASKHAN,
        .moves = {MOVE_ROCK_SLIDE, MOVE_SUCKER_PUNCH, MOVE_ENDURE, MOVE_REVERSAL},
        .itemTableId = BATTLE_FRONTIER_ITEM_SALAC_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LANTURN_1] = {
        .species = SPECIES_LANTURN,
        .moves = {MOVE_SCALD, MOVE_VOLT_SWITCH, MOVE_ICE_BEAM, MOVE_DIVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LANTURN_2] = {
        .species = SPECIES_LANTURN,
        .moves = {MOVE_STOCKPILE, MOVE_REST, MOVE_CHARGE_BEAM, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHESTO_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LIEPARD_1] = {
        .species = SPECIES_LIEPARD,
        .moves = {MOVE_KNOCK_OFF, MOVE_PURSUIT, MOVE_PLAY_ROUGH, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LIEPARD_2] = {
        .species = SPECIES_LIEPARD,
        .moves = {MOVE_FOUL_PLAY, MOVE_SAND_ATTACK, MOVE_THUNDER_WAVE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_RED_CARD,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LUDICOLO_1] = {
        .species = SPECIES_LUDICOLO,
        .moves = {MOVE_RAIN_DANCE, MOVE_HYDRO_PUMP, MOVE_GIGA_DRAIN, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LUDICOLO_2] = {
        .species = SPECIES_LUDICOLO,
        .moves = {MOVE_FAKE_OUT, MOVE_HYDRO_PUMP, MOVE_GRASS_KNOT, MOVE_LEECH_SEED},
        .itemTableId = BATTLE_FRONTIER_ITEM_KEE_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LURANTIS_1] = {
        .species = SPECIES_LURANTIS,
        .moves = {MOVE_DEFOG, MOVE_LEAF_STORM, MOVE_SUPERPOWER, MOVE_AROMATHERAPY},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LURANTIS_2] = {
        .species = SPECIES_LURANTIS,
        .moves = {MOVE_SOLAR_BLADE, MOVE_POISON_JAB, MOVE_LEECH_LIFE, MOVE_PAYBACK},
        .itemTableId = BATTLE_FRONTIER_ITEM_POWER_HERB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LYCANROC_1] = {
        .species = SPECIES_LYCANROC,
        .moves = {MOVE_SWORDS_DANCE, MOVE_STONE_EDGE, MOVE_BRICK_BREAK, MOVE_ACCELEROCK},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LYCANROC_2] = {
        .species = SPECIES_LYCANROC,
        .moves = {MOVE_QUICK_ATTACK, MOVE_ROCK_SLIDE, MOVE_THUNDER_FANG, MOVE_ACCELEROCK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_MANECTRIC_1] = {
        .species = SPECIES_MANECTRIC,
        .moves = {MOVE_THUNDERBOLT, MOVE_VOLT_SWITCH, MOVE_OVERHEAT, MOVE_SWITCHEROO},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MANECTRIC_2] = {
        .species = SPECIES_MANECTRIC,
        .moves = {MOVE_FLAMETHROWER, MOVE_DISCHARGE, MOVE_OVERHEAT, MOVE_CHARGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MUDSDALE_1] = {
        .species = SPECIES_MUDSDALE,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_TOXIC, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MUDSDALE_2] = {
        .species = SPECIES_MUDSDALE,
        .moves = {MOVE_HEAVY_SLAM, MOVE_EARTHQUAKE, MOVE_CLOSE_COMBAT, MOVE_SANDSTORM},
        .itemTableId = BATTLE_FRONTIER_ITEM_YACHE_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MUSHARNA_1] = {
        .species = SPECIES_MUSHARNA,
        .moves = {MOVE_FUTURE_SIGHT, MOVE_DAZZLING_GLEAM, MOVE_MOONLIGHT, MOVE_HEALING_WISH},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_MUSHARNA_2] = {
        .species = SPECIES_MUSHARNA,
        .moves = {MOVE_SHADOW_BALL, MOVE_ENERGY_BALL, MOVE_PSYCHIC, MOVE_TRICK_ROOM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUM_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_OMASTAR] = {
        .species = SPECIES_OMASTAR,
        .moves = {MOVE_STEALTH_ROCK, MOVE_SPIKES, MOVE_SCALD, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_PERSIAN] = {
        .species = SPECIES_ALOLAN_PERSIAN,
        .moves = {MOVE_NASTY_PLOT, MOVE_DARK_PULSE, MOVE_PARTING_SHOT, MOVE_THUNDERBOLT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_GLASSES,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_PRIMEAPE] = {
        .species = SPECIES_PRIMEAPE,
        .moves = {MOVE_CLOSE_COMBAT, MOVE_U_TURN, MOVE_ICE_PUNCH, MOVE_GUNK_SHOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_QWILFISH_1] = {
        .species = SPECIES_QWILFISH,
        .moves = {MOVE_SPIKES, MOVE_SCALD, MOVE_TAUNT, MOVE_DESTINY_BOND},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_QWILFISH_2] = {
        .species = SPECIES_QWILFISH,
        .moves = {MOVE_SWORDS_DANCE, MOVE_WATERFALL, MOVE_POISON_JAB, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_RAICHU_1] = {
        .species = SPECIES_ALOLAN_RAICHU,
        .moves = {MOVE_NASTY_PLOT, MOVE_THUNDERBOLT, MOVE_PSYSHOCK, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_RAICHU_2] = {
        .species = SPECIES_ALOLAN_RAICHU,
        .moves = {MOVE_NASTY_PLOT, MOVE_THUNDERBOLT, MOVE_PSYCHIC, MOVE_GRASS_KNOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ROTOM_FROST_1] = {
        .species = SPECIES_ROTOM_FROST,
        .moves = {MOVE_BLIZZARD, MOVE_THUNDERBOLT, MOVE_VOLT_SWITCH, MOVE_TRICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ROTOM_FROST_2] = {
        .species = SPECIES_ROTOM_FROST,
        .moves = {MOVE_BLIZZARD, MOVE_DISCHARGE, MOVE_REFLECT, MOVE_LIGHT_SCREEN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIGHT_CLAY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_SABLEYE_1] = {
        .species = SPECIES_SABLEYE,
        .moves = {MOVE_TAUNT, MOVE_WILL_O_WISP, MOVE_RECOVER, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SABLEYE_2] = {
        .species = SPECIES_SABLEYE,
        .moves = {MOVE_KNOCK_OFF, MOVE_CONFUSE_RAY, MOVE_SHADOW_BALL, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_QUIRKY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_SANDSLASH_1] = {
        .species = SPECIES_ALOLAN_SANDSLASH,
        .moves = {MOVE_ICICLE_CRASH, MOVE_IRON_HEAD, MOVE_EARTHQUAKE, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_SANDSLASH_2] = {
        .species = SPECIES_ALOLAN_SANDSLASH,
        .moves = {MOVE_COUNTER, MOVE_DEFENSE_CURL, MOVE_ICE_BALL, MOVE_GYRO_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SKUNTANK] = {
        .species = SPECIES_SKUNTANK,
        .moves = {MOVE_PURSUIT, MOVE_SUCKER_PUNCH, MOVE_POISON_JAB, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_SPRITOMB_1] = {
        .species = SPECIES_SPIRITOMB,
        .moves = {MOVE_PURSUIT, MOVE_SUCKER_PUNCH, MOVE_PSYCHIC, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_GLASSES,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_NAIVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SPRITOMB_2] = {
        .species = SPECIES_SPIRITOMB,
        .moves = {MOVE_PAIN_SPLIT, MOVE_SUCKER_PUNCH, MOVE_SUBSTITUTE, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_CUSTAP_BERRY,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP,
        .nature = NATURE_NAIVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_STOUTLAND] = {
        .species = SPECIES_STOUTLAND,
        .moves = {MOVE_SUPERPOWER, MOVE_PURSUIT, MOVE_FACADE, MOVE_RETURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_VICTREEBEL] = {
        .species = SPECIES_VICTREEBEL,
        .moves = {MOVE_STRENGTH_SAP, MOVE_POWER_WHIP, MOVE_POISON_JAB, MOVE_SWORDS_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ZANGOOSE] = {
        .species = SPECIES_ZANGOOSE,
        .moves = {MOVE_BELLY_DRUM, MOVE_QUICK_ATTACK, MOVE_KNOCK_OFF, MOVE_CLOSE_COMBAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	//PUBL
	[FRONTIER_MON_ARCHEOPS_1] = {
        .species = SPECIES_ARCHEOPS,
        .moves = {MOVE_HEAD_SMASH, MOVE_STEALTH_ROCK, MOVE_ENDEAVOR, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ARCHEOPS_2] = {
        .species = SPECIES_ARCHEOPS,
        .moves = {MOVE_EARTHQUAKE, MOVE_EARTH_POWER, MOVE_ENDEAVOR, MOVE_ANCIENT_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_ENIGMA_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AROMATISSE_1] = {
        .species = SPECIES_AROMATISSE,
        .moves = {MOVE_TRICK_ROOM, MOVE_NASTY_PLOT, MOVE_MOONBLAST, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_AROMATISSE_2] = {
        .species = SPECIES_AROMATISSE,
        .moves = {MOVE_CHARM, MOVE_SWEET_KISS, MOVE_ATTRACT, MOVE_DRAINING_KISS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_CHARIZARD_1] = {
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_DRAGON_CLAW, MOVE_FIRE_FANG, MOVE_BELLY_DRUM, MOVE_SHADOW_CLAW},
        .itemTableId = BATTLE_FRONTIER_ITEM_SALAC_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_CHARIZARD_2] = {
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_SUNNY_DAY, MOVE_SOLAR_BEAM, MOVE_FLAMETHROWER, MOVE_DRAGON_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_HEAT_ROCK,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_CINCCINO] = {
        .species = SPECIES_CINCCINO,
        .moves = {MOVE_TAIL_SLAP, MOVE_ROCK_BLAST, MOVE_BULLET_SEED, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_GALLADE_1] = {
        .species = SPECIES_GALLADE,
        .moves = {MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_PSYCHO_CUT, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_GALLADE_2] = {
        .species = SPECIES_GALLADE,
        .moves = {MOVE_STONE_EDGE, MOVE_STONE_EDGE, MOVE_PSYCHO_CUT, MOVE_X_SCISSOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_SCOPE_LENS,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_HOUNDOOM_1] = {
        .species = SPECIES_HOUNDOOM,
        .moves = {MOVE_FIRE_BLAST, MOVE_DARK_PULSE, MOVE_OVERHEAT, MOVE_DESTINY_BOND},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_HOUNDOOM_2] = {
        .species = SPECIES_HOUNDOOM,
        .moves = {MOVE_FLAMETHROWER, MOVE_SHADOW_BALL, MOVE_SLUDGE_BOMB, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_KINGLER] = {
        .species = SPECIES_KINGLER,
        .moves = {MOVE_AGILITY, MOVE_SWORDS_DANCE, MOVE_LIQUIDATION, MOVE_X_SCISSOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_LILLIGANT_1] = {
        .species = SPECIES_LILLIGANT,
        .moves = {MOVE_QUIVER_DANCE, MOVE_SLEEP_POWDER, MOVE_GIGA_DRAIN, MOVE_HYPER_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_SILK_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_LILLIGANT_2] = {
        .species = SPECIES_LILLIGANT,
        .moves = {MOVE_INGRAIN, MOVE_LEECH_SEED, MOVE_TOXIC, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BIG_ROOT,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_PYROAR_1] = {
        .species = SPECIES_PYROAR,
        .moves = {MOVE_FIRE_BLAST, MOVE_HYPER_VOICE, MOVE_WILL_O_WISP, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_PYROAR_2] = {
        .species = SPECIES_PYROAR,
        .moves = {MOVE_FLAMETHROWER, MOVE_HYPER_VOICE, MOVE_SNARL, MOVE_NOBLE_ROAR},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_SAWK_1] = {
        .species = SPECIES_SAWK,
        .moves = {MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_EARTHQUAKE, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_SAWK_2] = {
        .species = SPECIES_SAWK,
        .moves = {MOVE_PAYBACK, MOVE_ENDURE, MOVE_EARTHQUAKE, MOVE_REVERSAL},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_TAUROS_1] = {
        .species = SPECIES_TAUROS,
        .moves = {MOVE_BODY_SLAM, MOVE_WORK_UP, MOVE_ZEN_HEADBUTT, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_NAIVE,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_TAUROS_2] = {
        .species = SPECIES_TAUROS,
        .moves = {MOVE_SUBSTITUTE, MOVE_ROCK_SLIDE, MOVE_ZEN_HEADBUTT, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIECHI_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_ABOMASNOW_MEGA_1] = {
        .species = SPECIES_ABOMASNOW,
        .moves = {MOVE_BLIZZARD, MOVE_GIGA_DRAIN, MOVE_ICE_SHARD, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ABOMASITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MILD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ABOMASNOW_MEGA_2] = {
        .species = SPECIES_ABOMASNOW,
        .moves = {MOVE_BLIZZARD, MOVE_FOCUS_BLAST, MOVE_ICE_SHARD, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_ABOMASITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MILD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ACCELGOR_1] = {
        .species = SPECIES_ACCELGOR,
        .moves = {MOVE_BUG_BUZZ, MOVE_FOCUS_BLAST, MOVE_ENERGY_BALL, MOVE_SPIKES},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_ACCELGOR_2] = {
        .species = SPECIES_ACCELGOR,
        .moves = {MOVE_BUG_BUZZ, MOVE_SLUDGE_BOMB, MOVE_ENERGY_BALL, MOVE_ENDURE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_AERODACTYL_1] = {
        .species = SPECIES_AERODACTYL,
        .moves = {MOVE_STONE_EDGE, MOVE_AERIAL_ACE, MOVE_EARTHQUAKE, MOVE_PURSUIT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_AERODACTYL_2] = {
        .species = SPECIES_AERODACTYL,
        .moves = {MOVE_ROCK_SLIDE, MOVE_CRUNCH, MOVE_ROOST, MOVE_ICE_FANG},
        .itemTableId = BATTLE_FRONTIER_ITEM_PASSHO_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AMBIPOM_1] = {
        .species = SPECIES_AMBIPOM,
        .moves = {MOVE_FAKE_OUT, MOVE_LOW_KICK, MOVE_PURSUIT, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_AMBIPOM_2] = {
        .species = SPECIES_AMBIPOM,
        .moves = {MOVE_GRASS_KNOT, MOVE_THUNDERBOLT, MOVE_NASTY_PLOT, MOVE_COUNTER},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_AUDINO_MEGA_1] = {
        .species = SPECIES_AUDINO,
        .moves = {MOVE_WISH, MOVE_PROTECT, MOVE_TOXIC, MOVE_DAZZLING_GLEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_AUDINITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_AUDINO_MEGA_2] = {
        .species = SPECIES_AUDINO,
        .moves = {MOVE_HEALING_WISH, MOVE_FLAMETHROWER, MOVE_CALM_MIND, MOVE_DRAINING_KISS},
        .itemTableId = BATTLE_FRONTIER_ITEM_AUDINITE,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_BLASTOISE_1] = {
        .species = SPECIES_BLASTOISE,
        .moves = {MOVE_SCALD, MOVE_TOXIC, MOVE_RAPID_SPIN, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_BLASTOISE_2] = {
        .species = SPECIES_BLASTOISE,
        .moves = {MOVE_AQUA_RING, MOVE_AQUA_TAIL, MOVE_IRON_DEFENSE, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ZOOM_LENS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_BRAVIARY_1] = {
        .species = SPECIES_BRAVIARY,
        .moves = {MOVE_BRAVE_BIRD, MOVE_SUPERPOWER, MOVE_BULK_UP, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_BRAVIARY_2] = {
        .species = SPECIES_BRAVIARY,
        .moves = {MOVE_ROCK_SLIDE, MOVE_AIR_SLASH, MOVE_TAILWIND, MOVE_THRASH},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_CLAWITZER_1] = {
        .species = SPECIES_CLAWITZER,
        .moves = {MOVE_WATER_PULSE, MOVE_ICE_BEAM, MOVE_DARK_PULSE, MOVE_AURA_SPHERE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_CLAWITZER_2] = {
        .species = SPECIES_CLAWITZER,
        .moves = {MOVE_HEAL_PULSE, MOVE_MUDDY_WATER, MOVE_DOUBLE_TEAM, MOVE_CONFIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_COMFEY_1] = {
        .species = SPECIES_COMFEY,
        .moves = {MOVE_DRAINING_KISS, MOVE_GIGA_DRAIN, MOVE_CALM_MIND, MOVE_ROUND},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_COMFEY_2] = {
        .species = SPECIES_COMFEY,
        .moves = {MOVE_DAZZLING_GLEAM, MOVE_ENERGY_BALL, MOVE_FLOWER_SHIELD, MOVE_ENDURE},
        .itemTableId = BATTLE_FRONTIER_ITEM_PETAYA_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP,
        .nature = NATURE_MODEST,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_DECIDUEYE_1] = {
        .species = SPECIES_DECIDUEYE,
        .moves = {MOVE_NASTY_PLOT, MOVE_SHADOW_BALL, MOVE_LEAF_STORM, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DECIDUEYE_2] = {
        .species = SPECIES_DECIDUEYE,
        .moves = {MOVE_CURSE, MOVE_CONFUSE_RAY, MOVE_ENERGY_BALL, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DELPHOX_1] = {
        .species = SPECIES_DELPHOX,
        .moves = {MOVE_CALM_MIND, MOVE_FIRE_BLAST, MOVE_PSYCHIC, MOVE_GRASS_KNOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DELPHOX_2] = {
        .species = SPECIES_DELPHOX,
        .moves = {MOVE_ROLE_PLAY, MOVE_SWITCHEROO, MOVE_MYSTICAL_FIRE, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_FLAME_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DHELMISE_1] = {
        .species = SPECIES_DHELMISE,
        .moves = {MOVE_POWER_WHIP, MOVE_ANCHOR_SHOT, MOVE_RAPID_SPIN, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DHELMISE_2] = {
        .species = SPECIES_DHELMISE,
        .moves = {MOVE_GYRO_BALL, MOVE_ROCK_SLIDE, MOVE_PHANTOM_FORCE, MOVE_BRICK_BREAK},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_DRUDDIGON_1] = {
        .species = SPECIES_DRUDDIGON,
        .moves = {MOVE_STEALTH_ROCK, MOVE_GLARE, MOVE_EARTHQUAKE, MOVE_DRAGON_TAIL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_DRUDDIGON_2] = {
        .species = SPECIES_DRUDDIGON,
        .moves = {MOVE_CRUNCH, MOVE_DRAGON_CLAW, MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_EXEGGUTOR_1] = {
        .species = SPECIES_ALOLAN_EXEGGUTOR,
        .moves = {MOVE_DRACO_METEOR, MOVE_LEAF_STORM, MOVE_FLAMETHROWER, MOVE_GIGA_DRAIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_ALOLAN_EXEGGUTOR_2] = {
        .species = SPECIES_ALOLAN_EXEGGUTOR,
        .moves = {MOVE_DRAGON_HAMMER, MOVE_EARTHQUAKE, MOVE_BRICK_BREAK, MOVE_WOOD_HAMMER},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_GARBODOR] = {
        .species = SPECIES_GARBODOR,
        .moves = {MOVE_GUNK_SHOT, MOVE_SPIKES, MOVE_TOXIC_SPIKES, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_GLALIE_MEGA_1] = {
        .species = SPECIES_GLALIE,
        .moves = {MOVE_SPIKES, MOVE_DOUBLE_EDGE, MOVE_EARTHQUAKE, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_GLALITITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_GLALIE_MEGA_2] = {
        .species = SPECIES_GLALIE,
        .moves = {MOVE_PROTECT, MOVE_FREEZE_DRY, MOVE_EARTHQUAKE, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_GLALITITE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_HARIYAMA_1] = {
        .species = SPECIES_HARIYAMA,
        .moves = {MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_HEAVY_SLAM, MOVE_ICE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_HARIYAMA_2] = {
        .species = SPECIES_HARIYAMA,
        .moves = {MOVE_REVERSAL, MOVE_BULLET_PUNCH, MOVE_PROTECT, MOVE_BELLY_DRUM},
        .itemTableId = BATTLE_FRONTIER_ITEM_CUSTAP_BERRY,
        .evSpread = F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
		.abilityNum = 1
		//.ivs = 31
    },
	[FRONTIER_MON_HELIOLISK] = {
        .species = SPECIES_HELIOLISK,
        .moves = {MOVE_VOLT_SWITCH, MOVE_HYPER_VOICE, MOVE_THUNDERBOLT, MOVE_SURF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_HITMONLEE] = {
        .species = SPECIES_HITMONLEE,
        .moves = {MOVE_CURSE, MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_HITMONTOP] = {
        .species = SPECIES_HITMONTOP,
        .moves = {MOVE_RAPID_SPIN, MOVE_FORESIGHT, MOVE_CLOSE_COMBAT, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_INCINEROAR_1] = {
        .species = SPECIES_INCINEROAR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_KNOCK_OFF, MOVE_EARTHQUAKE, MOVE_FLARE_BLITZ},
        .itemTableId = BATTLE_FRONTIER_ITEM_FIGY_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_INCINEROAR_2] = {
        .species = SPECIES_INCINEROAR,
        .moves = {MOVE_BRUTAL_SWING, MOVE_FIRE_FANG, MOVE_BULK_UP, MOVE_LICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_RAZOR_FANG,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_KLINKLANG_1] = {
        .species = SPECIES_KLINKLANG,
        .moves = {MOVE_SHIFT_GEAR, MOVE_GEAR_GRIND, MOVE_WILD_CHARGE, MOVE_MAGNET_RISE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SHUCA_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_KLINKLANG_2] = {
        .species = SPECIES_KLINKLANG,
        .moves = {MOVE_FLASH_CANNON, MOVE_THUNDERBOLT, MOVE_PROTECT, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_MAGMORTAR_1] = {
        .species = SPECIES_MAGMORTAR,
        .moves = {MOVE_FIRE_BLAST, MOVE_THUNDERBOLT, MOVE_FOCUS_BLAST, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_MAGMORTAR_2] = {
        .species = SPECIES_MAGMORTAR,
        .moves = {MOVE_FLARE_BLITZ, MOVE_FLAME_CHARGE, MOVE_CROSS_CHOP, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 2
		//.ivs = 31
    },
	[FRONTIER_MON_MALAMAR_1] = {
        .species = SPECIES_MALAMAR,
        .moves = {MOVE_SUPERPOWER, MOVE_KNOCK_OFF, MOVE_REST, MOVE_SLEEP_TALK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_HP,
        .nature = NATURE_CAREFUL,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MALAMAR_2] = {
        .species = SPECIES_MALAMAR,
        .moves = {MOVE_THUNDERBOLT, MOVE_DARK_PULSE, MOVE_FLAMETHROWER, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MEDICHAM_1] = {
        .species = SPECIES_MEDICHAM,
        .moves = {MOVE_HI_JUMP_KICK, MOVE_ZEN_HEADBUTT, MOVE_THUNDER_PUNCH, MOVE_BULLET_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MEDICHAM_2] = {
        .species = SPECIES_MEDICHAM,
        .moves = {MOVE_HI_JUMP_KICK, MOVE_FAKE_OUT, MOVE_BULK_UP, MOVE_FEINT},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MILTANK] = {
        .species = SPECIES_MILTANK,
        .moves = {MOVE_STEALTH_ROCK, MOVE_SEISMIC_TOSS, MOVE_MILK_DRINK, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_CALM,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MINIOR_1] = {
        .species = SPECIES_MINIOR,
        .moves = {MOVE_SHELL_SMASH, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_ACROBATICS},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MINIOR_2] = {
        .species = SPECIES_MINIOR,
        .moves = {MOVE_U_TURN, MOVE_ROCK_TOMB, MOVE_LIGHT_SCREEN, MOVE_REFLECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIGHT_CLAY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MISMAGIUS_1] = {
        .species = SPECIES_MISMAGIUS,
        .moves = {MOVE_NASTY_PLOT, MOVE_SHADOW_BALL, MOVE_POWER_GEM, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_MISMAGIUS_2] = {
        .species = SPECIES_MISMAGIUS,
        .moves = {MOVE_TAUNT, MOVE_IMPRISON, MOVE_SHADOW_BALL, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
		.abilityNum = 0
		//.ivs = 31
    },
	[FRONTIER_MON_PALOSSAND_1] = {
        .species = SPECIES_PALOSSAND,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTH_POWER, MOVE_SHADOW_BALL, MOVE_SHORE_UP},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_PALOSSAND_2] = {
        .species = SPECIES_PALOSSAND,
        .moves = {MOVE_EARTH_POWER, MOVE_DESTINY_BOND, MOVE_SHADOW_BALL, MOVE_GIGA_DRAIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_SP_ATTACK| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_PANGORO_1] = {
        .species = SPECIES_PANGORO,
        .moves = {MOVE_SWORDS_DANCE, MOVE_KNOCK_OFF, MOVE_DRAIN_PUNCH, MOVE_BULLET_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOPLE_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK| F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_PASSIMIAN_1] = {
        .species = SPECIES_PASSIMIAN,
        .moves = {MOVE_CLOSE_COMBAT, MOVE_U_TURN, MOVE_KNOCK_OFF, MOVE_GUNK_SHOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_PASSIMIAN_2] = {
        .species = SPECIES_PASSIMIAN,
        .moves = {MOVE_CLOSE_COMBAT, MOVE_ROCK_SLIDE, MOVE_IRON_HEAD, MOVE_FEINT},
        .itemTableId = BATTLE_FRONTIER_ITEM_COBA_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_ROTOM] = {
        .species = SPECIES_ROTOM,
        .moves = {MOVE_DEFOG, MOVE_VOLT_SWITCH, MOVE_WILL_O_WISP, MOVE_HEX},
        .itemTableId = BATTLE_FRONTIER_ITEM_COLBUR_BERRY,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_SAMUROTT_1] = {
        .species = SPECIES_SAMUROTT,
        .moves = {MOVE_HYDRO_PUMP, MOVE_GRASS_KNOT, MOVE_ICE_BEAM, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED| F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_SAMUROTT_2] = {
        .species = SPECIES_SAMUROTT,
        .moves = {MOVE_BLIZZARD, MOVE_GIGA_IMPACT, MOVE_DETECT, MOVE_HYDRO_PUMP},
        .itemTableId = BATTLE_FRONTIER_ITEM_ZOOM_LENS,
        .evSpread = F_EV_SPREAD_SPEED| F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_SCEPTILE_1] = {
        .species = SPECIES_SCEPTILE,
        .moves = {MOVE_LEAF_STORM, MOVE_GIGA_DRAIN, MOVE_FOCUS_BLAST, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_DEFENSE| F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_SCEPTILE_2] = {
        .species = SPECIES_SCEPTILE,
        .moves = {MOVE_LEAF_STORM, MOVE_ENERGY_BALL, MOVE_FOCUS_BLAST, MOVE_DETECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_SP_ATTACK| F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_SCRAFTY_1] = {
        .species = SPECIES_SCRAFTY,
        .moves = {MOVE_BULK_UP, MOVE_KNOCK_OFF, MOVE_DRAIN_PUNCH, MOVE_REST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_ATTACK,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_SCRAFTY_2] = {
        .species = SPECIES_SCRAFTY,
        .moves = {MOVE_FAKE_OUT, MOVE_BULK_UP, MOVE_FOCUS_PUNCH, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIECHI_BERRY,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_SEISMITOAD] = {
        .species = SPECIES_SEISMITOAD,
        .moves = {MOVE_STEALTH_ROCK, MOVE_SCALD, MOVE_REFRESH, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_SIGILYPH] = {
        .species = SPECIES_SIGILYPH,
        .moves = {MOVE_AIR_SLASH, MOVE_HEAT_WAVE, MOVE_ENERGY_BALL, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED| F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
	[FRONTIER_MON_SLOWKING_1] = {
        .species = SPECIES_SLOWKING,
        .moves = {MOVE_SCALD, MOVE_FUTURE_SIGHT, MOVE_FIRE_BLAST, MOVE_DRAGON_TAIL},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_SLOWKING_2] = {
        .species = SPECIES_SLOWKING,
        .moves = {MOVE_PSYCHIC, MOVE_SHADOW_BALL, MOVE_SCALD, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SP_ATTACK| F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_STEELIX_1] = {
        .species = SPECIES_STEELIX,
        .moves = {MOVE_STEALTH_ROCK, MOVE_HEAVY_SLAM, MOVE_EARTHQUAKE, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_ATTACK,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
	[FRONTIER_MON_STEELIX_2] = {
        .species = SPECIES_STEELIX,
        .moves = {MOVE_CRUNCH, MOVE_CURSE, MOVE_GYRO_BALL, MOVE_SCREECH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ENIGMA_BERRY,
        .evSpread = F_EV_SPREAD_HP| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_TOGEDEMARU_1] = {
        .species = SPECIES_TOGEDEMARU,
        .moves = {MOVE_U_TURN, MOVE_ZING_ZAP, MOVE_IRON_HEAD, MOVE_NUZZLE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK| F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
	[FRONTIER_MON_TOGEDEMARU_2] = {
        .species = SPECIES_TOGEDEMARU,
        .moves = {MOVE_NUZZLE, MOVE_ZING_ZAP, MOVE_FELL_STINGER, MOVE_POISON_JAB},
        .itemTableId = BATTLE_FRONTIER_ITEM_RED_CARD,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_TYPHLOSION_1] = {
        .species = SPECIES_TYPHLOSION,
        .moves = {MOVE_ERUPTION, MOVE_FLAMETHROWER, MOVE_FOCUS_BLAST, MOVE_FIRE_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED| F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_TYPHLOSION_2] = {
        .species = SPECIES_TYPHLOSION,
        .moves = {MOVE_EXTRASENSORY, MOVE_LAVA_PLUME, MOVE_BULLDOZE, MOVE_SOLAR_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_POWER_HERB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_VAPOREON_1] = {
        .species = SPECIES_VAPOREON,
        .moves = {MOVE_SCALD, MOVE_TOXIC, MOVE_WISH, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
	[FRONTIER_MON_VAPOREON_2] = {
        .species = SPECIES_VAPOREON,
        .moves = {MOVE_SURF, MOVE_ICE_BEAM, MOVE_SHADOW_BALL, MOVE_BABY_DOLL_EYES},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_VIKAVOLT_1] = {
        .species = SPECIES_VIKAVOLT,
        .moves = {MOVE_BUG_BUZZ, MOVE_VOLT_SWITCH, MOVE_ENERGY_BALL, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_VIKAVOLT_2] = {
        .species = SPECIES_VIKAVOLT,
        .moves = {MOVE_CHARGE_BEAM, MOVE_MUD_SLAP, MOVE_ENERGY_BALL, MOVE_CHARGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_VIVILLON] = {
        .species = SPECIES_VIVILLON,
        .moves = {MOVE_QUIVER_DANCE, MOVE_HURRICANE, MOVE_ENERGY_BALL, MOVE_SLEEP_POWDER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_WEEZING_1] = {
        .species = SPECIES_WEEZING,
        .moves = {MOVE_SLUDGE_BOMB, MOVE_WILL_O_WISP, MOVE_PAIN_SPLIT, MOVE_TOXIC_SPIKES},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_WEEZING_2] = {
        .species = SPECIES_WEEZING,
        .moves = {MOVE_TOXIC, MOVE_WILL_O_WISP, MOVE_STOCKPILE, MOVE_REST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHESTO_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_WHIMSICOTT_1] = {
        .species = SPECIES_WHIMSICOTT,
        .moves = {MOVE_MOONBLAST, MOVE_ENERGY_BALL, MOVE_PSYCHIC, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
	[FRONTIER_MON_WHIMSICOTT_2] = {
        .species = SPECIES_WHIMSICOTT,
        .moves = {MOVE_MOONBLAST, MOVE_LEECH_SEED, MOVE_SUBSTITUTE, MOVE_COTTON_GUARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_XATU] = {
        .species = SPECIES_XATU,
        .moves = {MOVE_NIGHT_SHADE, MOVE_ROOST, MOVE_U_TURN, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
        .abilityNum = 2
        //.ivs = 31
    },
//NUBL/////////////////////////////////
[FRONTIER_MON_BARBARACLE_1] = {
        .species = SPECIES_BARBARACLE,
        .moves = {MOVE_SHELL_SMASH, MOVE_STONE_EDGE, MOVE_LIQUIDATION, MOVE_GRASS_KNOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
        .abilityNum = 0
        //.ivs = 31
    },
	[FRONTIER_MON_BARBARACLE_2] = {
        .species = SPECIES_BARBARACLE,
        .moves = {MOVE_SHELL_SMASH, MOVE_DOUBLE_TEAM, MOVE_RAZOR_SHELL, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_BRUXISH_1] = {
        .species = SPECIES_BRUXISH,
        .moves = {MOVE_SWORDS_DANCE, MOVE_PSYCHIC_FANGS, MOVE_AQUA_JET, MOVE_CRUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_WACAN_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_BRUXISH_2] = {
        .species = SPECIES_BRUXISH,
        .moves = {MOVE_PSYCHIC, MOVE_SCALD, MOVE_BLIZZARD, MOVE_DISABLE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WACAN_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CAMERUPT_MEGA_1] = {
        .species = SPECIES_CAMERUPT,
        .moves = {MOVE_FIRE_BLAST, MOVE_EARTH_POWER, MOVE_REST, MOVE_SLEEP_TALK},
        .itemTableId = BATTLE_FRONTIER_ITEM_CAMERUPTITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_CAMERUPT_MEGA_2] = {
        .species = SPECIES_CAMERUPT,
        .moves = {MOVE_HEAT_WAVE, MOVE_EARTH_POWER, MOVE_FLASH_CANNON, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CAMERUPTITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_COFAGRIGUS_1] = {
        .species = SPECIES_COFAGRIGUS,
        .moves = {MOVE_SHADOW_BALL, MOVE_DESTINY_BOND, MOVE_TRICK_ROOM, MOVE_NASTY_PLOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIET,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_COFAGRIGUS_2] = {
        .species = SPECIES_COFAGRIGUS,
        .moves = {MOVE_HEX, MOVE_TOXIC, MOVE_CALM_MIND, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_EMBOAR_1] = {
        .species = SPECIES_EMBOAR,
        .moves = {MOVE_FLARE_BLITZ, MOVE_SUPERPOWER, MOVE_WILD_CHARGE, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_EMBOAR_2] = {
        .species = SPECIES_EMBOAR,
        .moves = {MOVE_FLAMETHROWER, MOVE_FOCUS_BLAST, MOVE_SCALD, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SALAC_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_EXPLOUD] = {
        .species = SPECIES_EXPLOUD,
        .moves = {MOVE_BOOMBURST, MOVE_FOCUS_BLAST, MOVE_FIRE_BLAST, MOVE_SURF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_KINGDRA_1] = {
        .species = SPECIES_KINGDRA,
        .moves = {MOVE_HYDRO_PUMP, MOVE_SURF, MOVE_DRACO_METEOR, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KINGDRA_2] = {
        .species = SPECIES_KINGDRA,
        .moves = {MOVE_HYDRO_PUMP, MOVE_RAIN_DANCE, MOVE_DRAGON_PULSE, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_MARANGA_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SLURPUFF] = {
        .species = SPECIES_SLURPUFF,
        .moves = {MOVE_BELLY_DRUM, MOVE_PLAY_ROUGH, MOVE_RETURN, MOVE_DRAIN_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_VANILLUXE_1] = {
        .species = SPECIES_VANILLUXE,
        .moves = {MOVE_BLIZZARD, MOVE_FREEZE_DRY, MOVE_ICE_SHARD, MOVE_FLASH_CANNON},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_HASTY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_VANILLUXE_2] = {
        .species = SPECIES_VANILLUXE,
        .moves = {MOVE_TAUNT, MOVE_ACID_ARMOR, MOVE_ICE_BEAM, MOVE_MIRROR_COAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_MARANGA_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_HASTY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_VILEPLUME_1] = {
        .species = SPECIES_VILEPLUME,
        .moves = {MOVE_GIGA_DRAIN, MOVE_SLUDGE_BOMB, MOVE_STRENGTH_SAP, MOVE_SLEEP_POWDER},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
/////RU//////
[FRONTIER_MON_AMPHAROS_MEGA_1] = {
        .species = SPECIES_AMPHAROS,
        .moves = {MOVE_VOLT_SWITCH, MOVE_DRAGON_PULSE, MOVE_FOCUS_BLAST, MOVE_THUNDERBOLT},
        .itemTableId = BATTLE_FRONTIER_ITEM_AMPHAROSITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_AMPHAROS_MEGA_2] = {
        .species = SPECIES_AMPHAROS,
        .moves = {MOVE_THUNDER, MOVE_DRAGON_PULSE, MOVE_FOCUS_BLAST, MOVE_CONFUSE_RAY},
        .itemTableId = BATTLE_FRONTIER_ITEM_AMPHAROSITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ARAQUANID_1] = {
        .species = SPECIES_ARAQUANID,
        .moves = {MOVE_STICKY_WEB, MOVE_LIQUIDATION, MOVE_MAGIC_COAT, MOVE_MIRROR_COAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ARAQUANID_2] = {
        .species = SPECIES_ARAQUANID,
        .moves = {MOVE_DOUBLE_TEAM, MOVE_STOCKPILE, MOVE_AQUA_RING, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ARCANINE_1] = {
        .species = SPECIES_ARCANINE,
        .moves = {MOVE_FLARE_BLITZ, MOVE_WILD_CHARGE, MOVE_EXTREME_SPEED, MOVE_MORNING_SUN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_ARCANINE_2] = {
        .species = SPECIES_ARCANINE,
        .moves = {MOVE_OVERHEAT, MOVE_SUNNY_DAY, MOVE_EXTREME_SPEED, MOVE_SOLAR_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BANETTE_MEGA_1] = {
        .species = SPECIES_BANETTE,
        .moves = {MOVE_DESTINY_BOND, MOVE_SHADOW_CLAW, MOVE_GUNK_SHOT, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BANETTITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_BANETTE_MEGA_2] = {
        .species = SPECIES_BANETTE,
        .moves = {MOVE_SUCKER_PUNCH, MOVE_SHADOW_CLAW, MOVE_WILL_O_WISP, MOVE_GUNK_SHOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BANETTITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BEWEAR_1] = {
        .species = SPECIES_BEWEAR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_DOUBLE_EDGE, MOVE_SUPERPOWER, MOVE_SHADOW_CLAW},
        .itemTableId = BATTLE_FRONTIER_ITEM_SILK_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BEWEAR_2] = {
        .species = SPECIES_BEWEAR,
        .moves = {MOVE_HAMMER_ARM, MOVE_ICE_PUNCH, MOVE_THUNDER_PUNCH, MOVE_SWORDS_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BLASTOISE_MEGA_1] = {
        .species = SPECIES_BLASTOISE,
        .moves = {MOVE_RAPID_SPIN, MOVE_DARK_PULSE, MOVE_AURA_SPHERE, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLASTOISINITE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_BLASTOISE_MEGA_2] = {
        .species = SPECIES_BLASTOISE,
        .moves = {MOVE_WATER_PULSE, MOVE_DARK_PULSE, MOVE_AURA_SPHERE, MOVE_DRAGON_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLASTOISINITE,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_BRONZONG_1] = {
        .species = SPECIES_BRONZONG,
        .moves = {MOVE_STEALTH_ROCK, MOVE_TOXIC, MOVE_PSYWAVE, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BRONZONG_2] = {
        .species = SPECIES_BRONZONG,
        .moves = {MOVE_RAIN_DANCE, MOVE_LIGHT_SCREEN, MOVE_CHARGE_BEAM, MOVE_GRASS_KNOT},
        .itemTableId = BATTLE_FRONTIER_ITEM_DAMP_ROCK,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_CLOYSTER_1] = {
        .species = SPECIES_CLOYSTER,
        .moves = {MOVE_SHELL_SMASH, MOVE_ICICLE_SPEAR, MOVE_SPIKES, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_DONPHAN_1] = {
        .species = SPECIES_DONPHAN,
        .moves = {MOVE_RAPID_SPIN, MOVE_EARTHQUAKE, MOVE_KNOCK_OFF, MOVE_ICE_SHARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_DRAGALGE_1] = {
        .species = SPECIES_DRAGALGE,
        .moves = {MOVE_DRACO_METEOR, MOVE_SLUDGE_BOMB, MOVE_FOCUS_BLAST, MOVE_TOXIC_SPIKES},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_DRAPION_1] = {
        .species = SPECIES_DRAPION,
        .moves = {MOVE_KNOCK_OFF, MOVE_POISON_JAB, MOVE_PURSUIT, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_DRAPION_2] = {
        .species = SPECIES_DRAPION,
        .moves = {MOVE_CROSS_POISON, MOVE_NIGHT_SLASH, MOVE_EARTHQUAKE, MOVE_SWORDS_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_RAZOR_CLAW,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ESCAVALIER_1] = {
        .species = SPECIES_ESCAVALIER,
        .moves = {MOVE_MEGAHORN, MOVE_IRON_HEAD, MOVE_PROTECT, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ESCAVALIER_2] = {
        .species = SPECIES_ESCAVALIER,
        .moves = {MOVE_MEGAHORN, MOVE_SWORDS_DANCE, MOVE_REVERSAL, MOVE_QUICK_GUARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIECHI_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ESPEON_1] = {
        .species = SPECIES_ESPEON,
        .moves = {MOVE_CALM_MIND, MOVE_PSYCHIC, MOVE_SHADOW_BALL, MOVE_MORNING_SUN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ESPEON_2] = {
        .species = SPECIES_ESPEON,
        .moves = {MOVE_PSYSHOCK, MOVE_GRASS_KNOT, MOVE_DAZZLING_GLEAM, MOVE_CHARM},
        .itemTableId = BATTLE_FRONTIER_ITEM_KASIB_BERRY,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_FLORGES_1] = {
        .species = SPECIES_FLORGES,
        .moves = {MOVE_MOONBLAST, MOVE_SYNTHESIS, MOVE_AROMATHERAPY, MOVE_WISH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_FLORGES_2] = {
        .species = SPECIES_FLORGES,
        .moves = {MOVE_MOONBLAST, MOVE_PSYCHIC, MOVE_GRASS_KNOT, MOVE_CALM_MIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_KEBIA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_FLYGON_1] = {
        .species = SPECIES_FLYGON,
        .moves = {MOVE_U_TURN, MOVE_EARTHQUAKE, MOVE_OUTRAGE, MOVE_AERIAL_ACE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_FLYGON_2] = {
        .species = SPECIES_FLYGON,
        .moves = {MOVE_FIRE_BLAST, MOVE_EARTHQUAKE, MOVE_DRAGON_CLAW, MOVE_ENDURE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_FORRETRESS_1] = {
        .species = SPECIES_FORRETRESS,
        .moves = {MOVE_GYRO_BALL, MOVE_SPIKES, MOVE_VOLT_SWITCH, MOVE_RAPID_SPIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GARDEVOIR_1] = {
        .species = SPECIES_GARDEVOIR,
        .moves = {MOVE_PSYSHOCK, MOVE_MOONBLAST, MOVE_TRICK, MOVE_HEALING_WISH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_GARDEVOIR_2] = {
        .species = SPECIES_GARDEVOIR,
        .moves = {MOVE_PSYCHIC, MOVE_ENERGY_BALL, MOVE_DAZZLING_GLEAM, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUM_BERRY,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GIGALITH_1] = {
        .species = SPECIES_GIGALITH,
        .moves = {MOVE_STEALTH_ROCK, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_GIGALITH_2] = {
        .species = SPECIES_GIGALITH,
        .moves = {MOVE_IRON_DEFENSE, MOVE_ROCK_BLAST, MOVE_LOCK_ON, MOVE_SANDSTORM},
        .itemTableId = BATTLE_FRONTIER_ITEM_HARD_STONE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_GOLISOPOD_1] = {
        .species = SPECIES_GOLISOPOD,
        .moves = {MOVE_FIRST_IMPRESSION, MOVE_LIQUIDATION, MOVE_LEECH_LIFE, MOVE_AQUA_JET},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GOLISOPOD_2] = {
        .species = SPECIES_GOLISOPOD,
        .moves = {MOVE_SWORDS_DANCE, MOVE_RAZOR_SHELL, MOVE_LEECH_LIFE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GOODRA_1] = {
        .species = SPECIES_GOODRA,
        .moves = {MOVE_DRACO_METEOR, MOVE_THUNDERBOLT, MOVE_FIRE_BLAST, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GOODRA_2] = {
        .species = SPECIES_GOODRA,
        .moves = {MOVE_SUBSTITUTE, MOVE_MUDDY_WATER, MOVE_DRAGON_PULSE, MOVE_SLUDGE_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_HONCHKROW_1] = {
        .species = SPECIES_HONCHKROW,
        .moves = {MOVE_BRAVE_BIRD, MOVE_SUCKER_PUNCH, MOVE_SUPERPOWER, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_GLASSES,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_HONCHKROW_2] = {
        .species = SPECIES_HONCHKROW,
        .moves = {MOVE_PSYCHIC, MOVE_PROTECT, MOVE_NASTY_PLOT, MOVE_DARK_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_KEE_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_JOLTEON_1] = {
        .species = SPECIES_JOLTEON,
        .moves = {MOVE_YAWN, MOVE_VOLT_SWITCH, MOVE_THUNDERBOLT, MOVE_SIGNAL_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_JOLTEON_2] = {
        .species = SPECIES_JOLTEON,
        .moves = {MOVE_YAWN, MOVE_THUNDER, MOVE_RAIN_DANCE, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LYCANROC_DUSK_1] = {
        .species = SPECIES_LYCANROC_DUSK,
        .moves = {MOVE_SWORDS_DANCE, MOVE_STONE_EDGE, MOVE_FIRE_FANG, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MACHAMP_1] = {
        .species = SPECIES_MACHAMP,
        .moves = {MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_FACADE, MOVE_BULLET_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_FLAME_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MACHAMP_2] = {
        .species = SPECIES_MACHAMP,
        .moves = {MOVE_DYNAMIC_PUNCH, MOVE_PAYBACK, MOVE_FORESIGHT, MOVE_WIDE_GUARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_RAWST_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MANDIBUZZ_1] = {
        .species = SPECIES_MANDIBUZZ,
        .moves = {MOVE_TAUNT, MOVE_TOXIC, MOVE_ROOST, MOVE_FOUL_PLAY},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MANDIBUZZ_2] = {
        .species = SPECIES_MANDIBUZZ,
        .moves = {MOVE_NASTY_PLOT, MOVE_DARK_PULSE, MOVE_AIR_SLASH, MOVE_TAILWIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MANTINE_1] = {
        .species = SPECIES_MANTINE,
        .moves = {MOVE_ROOST, MOVE_DEFOG, MOVE_SCALD, MOVE_AIR_SLASH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CALM,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_ALOLAN_MAROWAK_1] = {
        .species = SPECIES_ALOLAN_MAROWAK,
        .moves = {MOVE_FLARE_BLITZ, MOVE_SHADOW_BONE, MOVE_SWORDS_DANCE, MOVE_LOW_KICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_THICK_CLUB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ALOLAN_MAROWAK_2] = {
        .species = SPECIES_ALOLAN_MAROWAK,
        .moves = {MOVE_WILL_O_WISP, MOVE_HEX, MOVE_THUNDER, MOVE_RAIN_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_METAGROSS_1] = {
        .species = SPECIES_METAGROSS,
        .moves = {MOVE_STEALTH_ROCK, MOVE_METEOR_MASH, MOVE_EARTHQUAKE, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_SHUCA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_METAGROSS_2] = {
        .species = SPECIES_METAGROSS,
        .moves = {MOVE_PSYCHIC, MOVE_METEOR_MASH, MOVE_MAGNET_RISE, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_OCCA_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_ATTACK,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MILOTIC_1] = {
        .species = SPECIES_MILOTIC,
        .moves = {MOVE_SCALD, MOVE_RECOVER, MOVE_TOXIC, MOVE_REFRESH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MILOTIC_2] = {
        .species = SPECIES_MILOTIC,
        .moves = {MOVE_HYDRO_PUMP, MOVE_RECOVER, MOVE_MIRROR_COAT, MOVE_BLIZZARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_WIDE_LENS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NIDOQUEEN_1] = {
        .species = SPECIES_NIDOQUEEN,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTH_POWER, MOVE_SLUDGE_WAVE, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NIDOQUEEN_2] = {
        .species = SPECIES_NIDOQUEEN,
        .moves = {MOVE_THUNDERBOLT, MOVE_COUNTER, MOVE_HYPER_BEAM, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_ABSORB_BULB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_NINETALES_1] = {
        .species = SPECIES_NINETALES,
        .moves = {MOVE_OVERHEAT, MOVE_FIRE_BLAST, MOVE_SOLAR_BEAM, MOVE_FLAMETHROWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NINETALES_2] = {
        .species = SPECIES_NINETALES,
        .moves = {MOVE_WILL_O_WISP, MOVE_FLAME_BURST, MOVE_HEX, MOVE_CONFUSE_RAY},
        .itemTableId = BATTLE_FRONTIER_ITEM_PASSHO_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NOIVERN_1] = {
        .species = SPECIES_NOIVERN,
        .moves = {MOVE_HURRICANE, MOVE_TAUNT, MOVE_ROOST, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NOIVERN_2] = {
        .species = SPECIES_NOIVERN,
        .moves = {MOVE_DRAGON_CLAW, MOVE_WILD_CHARGE, MOVE_X_SCISSOR, MOVE_ACROBATICS},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROSELI_BERRY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_RHYPERIOR_1] = {
        .species = SPECIES_RHYPERIOR,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_MEGAHORN, MOVE_SWORDS_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_RHYPERIOR_2] = {
        .species = SPECIES_RHYPERIOR,
        .moves = {MOVE_ROCK_WRECKER, MOVE_EARTHQUAKE, MOVE_ICE_PUNCH, MOVE_ROCK_POLISH},
        .itemTableId = BATTLE_FRONTIER_ITEM_HARD_STONE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_RIBOMBEE_1] = {
        .species = SPECIES_RIBOMBEE,
        .moves = {MOVE_MOONBLAST, MOVE_BUG_BUZZ, MOVE_U_TURN, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_RIBOMBEE_2] = {
        .species = SPECIES_RIBOMBEE,
        .moves = {MOVE_STUN_SPORE, MOVE_LEECH_LIFE, MOVE_DRAINING_KISS, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_BIG_ROOT,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_QUIRKY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_ROSERADE_1] = {
        .species = SPECIES_ROSERADE,
        .moves = {MOVE_SPIKES, MOVE_LEAF_STORM, MOVE_SLUDGE_BOMB, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SALAZZLE_1] = {
        .species = SPECIES_SALAZZLE,
        .moves = {MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_SLUDGE_WAVE, MOVE_DRAGON_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SALAZZLE_2] = {
        .species = SPECIES_SALAZZLE,
        .moves = {MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_FAKE_OUT, MOVE_SLUDGE_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SCEPTILE_MEGA_1] = {
        .species = SPECIES_SCEPTILE,
        .moves = {MOVE_LEAF_STORM, MOVE_DRAGON_PULSE, MOVE_PROTECT, MOVE_LEECH_SEED},
        .itemTableId = BATTLE_FRONTIER_ITEM_SCEPTILITE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SCEPTILE_MEGA_2] = {
        .species = SPECIES_SCEPTILE,
        .moves = {MOVE_LEAF_BLADE, MOVE_DUAL_CHOP, MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SCEPTILITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SHAYMIN_1] = {
        .species = SPECIES_SHAYMIN,
        .moves = {MOVE_SEED_FLARE, MOVE_EARTH_POWER, MOVE_PSYCHIC, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SLOWBRO_1] = {
        .species = SPECIES_SLOWBRO,
        .moves = {MOVE_SCALD, MOVE_PSYSHOCK, MOVE_SLACK_OFF, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SLOWBRO_2] = {
        .species = SPECIES_SLOWBRO,
        .moves = {MOVE_FLAMETHROWER, MOVE_ICE_BEAM, MOVE_SLACK_OFF, MOVE_WATER_PULSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_QUICK_CLAW,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SNORLAX_1] = {
        .species = SPECIES_SNORLAX,
        .moves = {MOVE_CURSE, MOVE_FRUSTRATION, MOVE_REST, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SNORLAX_2] = {
        .species = SPECIES_SNORLAX,
        .moves = {MOVE_BODY_SLAM, MOVE_FISSURE, MOVE_CRUNCH, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SWELLOW_1] = {
        .species = SPECIES_SWELLOW,
        .moves = {MOVE_BOOMBURST, MOVE_U_TURN, MOVE_HEAT_WAVE, MOVE_AIR_SLASH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TOXICROAK_1] = {
        .species = SPECIES_TOXICROAK,
        .moves = {MOVE_SWORDS_DANCE, MOVE_GUNK_SHOT, MOVE_DRAIN_PUNCH, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_TOXICROAK_2] = {
        .species = SPECIES_TOXICROAK,
        .moves = {MOVE_FOCUS_BLAST, MOVE_SLUDGE_BOMB, MOVE_SUBSTITUTE, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_PETAYA_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TSAREENA_1] = {
        .species = SPECIES_TSAREENA,
        .moves = {MOVE_RAPID_SPIN, MOVE_POWER_WHIP, MOVE_KNOCK_OFF, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_TSAREENA_2] = {
        .species = SPECIES_TSAREENA,
        .moves = {MOVE_HI_JUMP_KICK, MOVE_TROP_KICK, MOVE_U_TURN, MOVE_PLAY_ROUGH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TYRANTRUM_1] = {
        .species = SPECIES_TYRANTRUM,
        .moves = {MOVE_HEAD_SMASH, MOVE_OUTRAGE, MOVE_EARTHQUAKE, MOVE_DRAGON_CLAW},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TYRANTRUM_2] = {
        .species = SPECIES_TYRANTRUM,
        .moves = {MOVE_HEAD_SMASH, MOVE_DRAGON_CLAW, MOVE_EARTHQUAKE, MOVE_CRUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_UMBREON_1] = {
        .species = SPECIES_UMBREON,
        .moves = {MOVE_WISH, MOVE_PROTECT, MOVE_HEAL_BELL, MOVE_FOUL_PLAY},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_UMBREON_2] = {
        .species = SPECIES_UMBREON,
        .moves = {MOVE_CURSE, MOVE_TRUMP_CARD, MOVE_PAYBACK, MOVE_REST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHESTO_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_VENUSAUR_1] = {
        .species = SPECIES_VENUSAUR,
        .moves = {MOVE_GROWTH, MOVE_SLUDGE_BOMB, MOVE_GIGA_DRAIN, MOVE_HYPER_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_VENUSAUR_2] = {
        .species = SPECIES_VENUSAUR,
        .moves = {MOVE_GRASS_KNOT, MOVE_SLUDGE_BOMB, MOVE_PROTECT, MOVE_ENERGY_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_SALAC_BERRY,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_YANMEGA_1] = {
        .species = SPECIES_YANMEGA,
        .moves = {MOVE_BUG_BUZZ, MOVE_AIR_SLASH, MOVE_U_TURN, MOVE_GIGA_DRAIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_YANMEGA_2] = {
        .species = SPECIES_YANMEGA,
        .moves = {MOVE_BUG_BUZZ, MOVE_AIR_SLASH, MOVE_DETECT, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ABSOL_MEGA_1] = {
        .species = SPECIES_ABSOL,
        .moves = {MOVE_KNOCK_OFF, MOVE_PURSUIT, MOVE_FIRE_BLAST, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ABSOLITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ABSOL_MEGA_2] = {
        .species = SPECIES_ABSOL,
        .moves = {MOVE_PLAY_ROUGH, MOVE_MEGAHORN, MOVE_STONE_EDGE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ABSOLITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_DARMANITAN_1] = {
        .species = SPECIES_DARMANITAN,
        .moves = {MOVE_FLARE_BLITZ, MOVE_U_TURN, MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_DARMANITAN_2] = {
        .species = SPECIES_DARMANITAN,
        .moves = {MOVE_PSYCHIC, MOVE_ROUND, MOVE_FLAMETHROWER, MOVE_CONFIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUMINOUS_MOSS,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_DURANT_1] = {
        .species = SPECIES_DURANT,
        .moves = {MOVE_HONE_CLAWS, MOVE_IRON_HEAD, MOVE_SUPERPOWER, MOVE_CRUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_DURANT_2] = {
        .species = SPECIES_DURANT,
        .moves = {MOVE_ROCK_SLIDE, MOVE_IRON_HEAD, MOVE_SHADOW_CLAW, MOVE_X_SCISSOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_OCCA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HOUNDOOM_MEGA_1] = {
        .species = SPECIES_HOUNDOOM,
        .moves = {MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_DARK_PULSE, MOVE_SLUDGE_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_HOUNDOOMINITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_HOUNDOOM_MEGA_2] = {
        .species = SPECIES_HOUNDOOM,
        .moves = {MOVE_SOLAR_BEAM, MOVE_FIRE_BLAST, MOVE_DARK_PULSE, MOVE_SUNNY_DAY},
        .itemTableId = BATTLE_FRONTIER_ITEM_HOUNDOOMINITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LINOONE_1] = {
        .species = SPECIES_LINOONE,
        .moves = {MOVE_BELLY_DRUM, MOVE_EXTREME_SPEED, MOVE_STOMPING_TANTRUM, MOVE_SEED_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_FIGY_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MIENSHAO_1] = {
        .species = SPECIES_MIENSHAO,
        .moves = {MOVE_HI_JUMP_KICK, MOVE_KNOCK_OFF, MOVE_U_TURN, MOVE_FAKE_OUT},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MIENSHAO_2] = {
        .species = SPECIES_MIENSHAO,
        .moves = {MOVE_HI_JUMP_KICK, MOVE_FLING, MOVE_ACROBATICS, MOVE_FAKE_OUT},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_REUNICLUS_1] = {
        .species = SPECIES_REUNICLUS,
        .moves = {MOVE_CALM_MIND, MOVE_PSYSHOCK, MOVE_FOCUS_BLAST, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_REUNICLUS_2] = {
        .species = SPECIES_REUNICLUS,
        .moves = {MOVE_TRICK, MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_TOXIC_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SHARPEDO_1] = {
        .species = SPECIES_SHARPEDO,
        .moves = {MOVE_CRUNCH, MOVE_ICE_FANG, MOVE_EARTHQUAKE, MOVE_PSYCHIC_FANGS},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SHARPEDO_2] = {
        .species = SPECIES_SHARPEDO,
        .moves = {MOVE_AQUA_JET, MOVE_ICE_FANG, MOVE_BULLDOZE, MOVE_CRUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_MUSCLE_BAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SLOWBRO_MEGA_1] = {
        .species = SPECIES_SLOWBRO,
        .moves = {MOVE_SCALD, MOVE_FLAMETHROWER, MOVE_SLACK_OFF, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_SLOWBRONITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SLOWBRO_MEGA_2] = {
        .species = SPECIES_SLOWBRO,
        .moves = {MOVE_PSYCHIC, MOVE_SURF, MOVE_TRICK_ROOM, MOVE_BLIZZARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_SLOWBRONITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TALONFLAME_1] = {
        .species = SPECIES_TALONFLAME,
        .moves = {MOVE_SWORDS_DANCE, MOVE_BRAVE_BIRD, MOVE_FLARE_BLITZ, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TALONFLAME_2] = {
        .species = SPECIES_TALONFLAME,
        .moves = {MOVE_ROUND, MOVE_ME_FIRST, MOVE_WILL_O_WISP, MOVE_FLAMETHROWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARTI_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_VENOMOTH_1] = {
        .species = SPECIES_VENOMOTH,
        .moves = {MOVE_QUIVER_DANCE, MOVE_SLEEP_POWDER, MOVE_BUG_BUZZ, MOVE_SLUDGE_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_ZOROARK_1] = {
        .species = SPECIES_ZOROARK,
        .moves = {MOVE_NASTY_PLOT, MOVE_DARK_PULSE, MOVE_FOCUS_BLAST, MOVE_SLUDGE_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ZOROARK_2] = {
        .species = SPECIES_ZOROARK,
        .moves = {MOVE_TAUNT, MOVE_SHADOW_CLAW, MOVE_NIGHT_SLASH, MOVE_COUNTER},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
////////UU//////////////////
[FRONTIER_MON_AERODACTYL_MEGA_1] = {
        .species = SPECIES_AERODACTYL,
        .moves = {MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_ICE_FANG, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_AERODACTYLITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_AERODACTYL_MEGA_2] = {
        .species = SPECIES_AERODACTYL,
        .moves = {MOVE_ROCK_SLIDE, MOVE_IRON_HEAD, MOVE_EARTHQUAKE, MOVE_ICE_FANG},
        .itemTableId = BATTLE_FRONTIER_ITEM_AERODACTYLITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_AGGRON_MEGA_1] = {
        .species = SPECIES_AGGRON,
        .moves = {MOVE_STEALTH_ROCK, MOVE_HEAVY_SLAM, MOVE_EARTHQUAKE, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_AGGRONITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_AGGRON_MEGA_2] = {
        .species = SPECIES_AGGRON,
        .moves = {MOVE_DRAGON_RUSH, MOVE_HEAVY_SLAM, MOVE_THUNDER_WAVE, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_AGGRONITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_ALOMOMOLA_1] = {
        .species = SPECIES_ALOMOMOLA,
        .moves = {MOVE_WISH, MOVE_PROTECT, MOVE_TOXIC, MOVE_SCALD},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ALTARIA_MEGA_1] = {
        .species = SPECIES_ALTARIA,
        .moves = {MOVE_DRAGON_DANCE, MOVE_FACADE, MOVE_REFRESH, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_ALTARIANITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ALTARIA_MEGA_2] = {
        .species = SPECIES_ALTARIA,
        .moves = {MOVE_DRAGON_DANCE, MOVE_GIGA_IMPACT, MOVE_EARTHQUAKE, MOVE_DRAGON_RUSH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ALTARIANITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_AMOONGUSS_1] = {
        .species = SPECIES_AMOONGUSS,
        .moves = {MOVE_SPORE, MOVE_GIGA_DRAIN, MOVE_SLUDGE_BOMB, MOVE_CLEAR_SMOG},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_AMOONGUSS_2] = {
        .species = SPECIES_AMOONGUSS,
        .moves = {MOVE_SPORE, MOVE_GIGA_DRAIN, MOVE_SYNTHESIS, MOVE_CLEAR_SMOG},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BEEDRILL_MEGA_1] = {
        .species = SPECIES_BEEDRILL,
        .moves = {MOVE_U_TURN, MOVE_POISON_JAB, MOVE_DRILL_RUN, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_BEEDRILLITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BEEDRILL_MEGA_2] = {
        .species = SPECIES_BEEDRILL,
        .moves = {MOVE_PIN_MISSILE, MOVE_POISON_JAB, MOVE_PROTECT, MOVE_BRICK_BREAK},
        .itemTableId = BATTLE_FRONTIER_ITEM_BEEDRILLITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_BISHARP_1] = {
        .species = SPECIES_BISHARP,
        .moves = {MOVE_SWORDS_DANCE, MOVE_KNOCK_OFF, MOVE_IRON_HEAD, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BISHARP_2] = {
        .species = SPECIES_BISHARP,
        .moves = {MOVE_IRON_HEAD, MOVE_LOW_SWEEP, MOVE_NIGHT_SLASH, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOPLE_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_BLISSEY_1] = {
        .species = SPECIES_BLISSEY,
        .moves = {MOVE_SEISMIC_TOSS, MOVE_TOXIC, MOVE_SOFT_BOILED, MOVE_HEAL_BELL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_BLISSEY_2] = {
        .species = SPECIES_BLISSEY,
        .moves = {MOVE_CHARGE_BEAM, MOVE_SHADOW_BALL, MOVE_GRASS_KNOT, MOVE_THUNDER_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CUSTAP_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_CHANDELURE_1] = {
        .species = SPECIES_CHANDELURE,
        .moves = {MOVE_SUBSTITUTE, MOVE_CALM_MIND, MOVE_SHADOW_BALL, MOVE_FLAMETHROWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_CHANDELURE_2] = {
        .species = SPECIES_CHANDELURE,
        .moves = {MOVE_OVERHEAT, MOVE_PROTECT, MOVE_SHADOW_BALL, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_WHITE_HERB,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CHESNAUGHT_1] = {
        .species = SPECIES_CHESNAUGHT,
        .moves = {MOVE_SPIKES, MOVE_WOOD_HAMMER, MOVE_DRAIN_PUNCH, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_CHESNAUGHT_2] = {
        .species = SPECIES_CHESNAUGHT,
        .moves = {MOVE_DRAGON_CLAW, MOVE_SEED_BOMB, MOVE_EARTHQUAKE, MOVE_BRICK_BREAK},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CRAWDAUNT_1] = {
        .species = SPECIES_CRAWDAUNT,
        .moves = {MOVE_SWORDS_DANCE, MOVE_CRABHAMMER, MOVE_KNOCK_OFF, MOVE_AQUA_JET},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_CROBAT_1] = {
        .species = SPECIES_CROBAT,
        .moves = {MOVE_BRAVE_BIRD, MOVE_SUPER_FANG, MOVE_TAUNT, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_CROBAT_2] = {
        .species = SPECIES_CROBAT,
        .moves = {MOVE_BRAVE_BIRD, MOVE_CROSS_POISON, MOVE_ZEN_HEADBUTT, MOVE_X_SCISSOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_RAZOR_CLAW,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_EMPOLEON_1] = {
        .species = SPECIES_EMPOLEON,
        .moves = {MOVE_SCALD, MOVE_STEALTH_ROCK, MOVE_TOXIC, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_EMPOLEON_2] = {
        .species = SPECIES_EMPOLEON,
        .moves = {MOVE_SURF, MOVE_SUBSTITUTE, MOVE_BLIZZARD, MOVE_WHIRLPOOL},
        .itemTableId = BATTLE_FRONTIER_ITEM_PETAYA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_FERALIGATR_1] = {
        .species = SPECIES_FERALIGATR,
        .moves = {MOVE_DRAGON_DANCE, MOVE_LIQUIDATION, MOVE_ICE_PUNCH, MOVE_CRUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_FERALIGATR_2] = {
        .species = SPECIES_FERALIGATR,
        .moves = {MOVE_DRAGON_DANCE, MOVE_AQUA_TAIL, MOVE_ICE_FANG, MOVE_DRAGON_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIECHI_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_FROSLASS_1] = {
        .species = SPECIES_FROSLASS,
        .moves = {MOVE_SPIKES, MOVE_TAUNT, MOVE_ICY_WIND, MOVE_DESTINY_BOND},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_FROSLASS_2] = {
        .species = SPECIES_FROSLASS,
        .moves = {MOVE_ICE_SHARD, MOVE_THUNDER_WAVE, MOVE_HEX, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_KASIB_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GENGAR_1] = {
        .species = SPECIES_GENGAR,
        .moves = {MOVE_SUBSTITUTE, MOVE_SHADOW_BALL, MOVE_SLUDGE_WAVE, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GENGAR_2] = {
        .species = SPECIES_GENGAR,
        .moves = {MOVE_NIGHTMARE, MOVE_DREAM_EATER, MOVE_HYPNOSIS, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HAXORUS_1] = {
        .species = SPECIES_HAXORUS,
        .moves = {MOVE_SWORDS_DANCE, MOVE_OUTRAGE, MOVE_EARTHQUAKE, MOVE_POISON_JAB},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUM_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_HAXORUS_2] = {
        .species = SPECIES_HAXORUS,
        .moves = {MOVE_DUAL_CHOP, MOVE_ROAR, MOVE_EARTHQUAKE, MOVE_TAUNT},
        .itemTableId = BATTLE_FRONTIER_ITEM_HABAN_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HIPPOWDON_1] = {
        .species = SPECIES_HIPPOWDON,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_SLACK_OFF, MOVE_WHIRLWIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HIPPOWDON_2] = {
        .species = SPECIES_HIPPOWDON,
        .moves = {MOVE_CRUNCH, MOVE_EARTHQUAKE, MOVE_YAWN, MOVE_WHIRLWIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_SOFT_SAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_HYDREIGON_1] = {
        .species = SPECIES_HYDREIGON,
        .moves = {MOVE_DRACO_METEOR, MOVE_DARK_PULSE, MOVE_U_TURN, MOVE_FIRE_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HYDREIGON_2] = {
        .species = SPECIES_HYDREIGON,
        .moves = {MOVE_FOCUS_BLAST, MOVE_FIRE_BLAST, MOVE_WORK_UP, MOVE_DRAGON_RUSH},
        .itemTableId = BATTLE_FRONTIER_ITEM_WIDE_LENS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_INFERNAPE_1] = {
        .species = SPECIES_INFERNAPE,
        .moves = {MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_FOCUS_BLAST, MOVE_VACUUM_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_INFERNAPE_2] = {
        .species = SPECIES_INFERNAPE,
        .moves = {MOVE_FAKE_OUT, MOVE_FLARE_BLITZ, MOVE_ENCORE, MOVE_CLOSE_COMBAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KLEFKI_1] = {
        .species = SPECIES_KLEFKI,
        .moves = {MOVE_SPIKES, MOVE_THUNDER_WAVE, MOVE_TOXIC, MOVE_PLAY_ROUGH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KROOKODILE_1] = {
        .species = SPECIES_KROOKODILE,
        .moves = {MOVE_KNOCK_OFF, MOVE_EARTHQUAKE, MOVE_PURSUIT, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LUCARIO_1] = {
        .species = SPECIES_LUCARIO,
        .moves = {MOVE_NASTY_PLOT, MOVE_AURA_SPHERE, MOVE_FLASH_CANNON, MOVE_VACUUM_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_LUCARIO_2] = {
        .species = SPECIES_LUCARIO,
        .moves = {MOVE_DRAGON_PULSE, MOVE_AURA_SPHERE, MOVE_EXTREME_SPEED, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WEAKNESS_POLICY,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MAMOSWINE_1] = {
        .species = SPECIES_MAMOSWINE,
        .moves = {MOVE_ICE_SHARD, MOVE_EARTHQUAKE, MOVE_ICICLE_CRASH, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_MAMOSWINE_2] = {
        .species = SPECIES_MAMOSWINE,
        .moves = {MOVE_HAIL, MOVE_EARTHQUAKE, MOVE_AVALANCHE, MOVE_FISSURE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MANECTRIC_MEGA_1] = {
        .species = SPECIES_MANECTRIC,
        .moves = {MOVE_VOLT_SWITCH, MOVE_OVERHEAT, MOVE_THUNDERBOLT, MOVE_SIGNAL_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_MANECTITE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MANECTRIC_MEGA_2] = {
        .species = SPECIES_MANECTRIC,
        .moves = {MOVE_SNARL, MOVE_OVERHEAT, MOVE_THUNDERBOLT, MOVE_QUICK_ATTACK},
        .itemTableId = BATTLE_FRONTIER_ITEM_MANECTITE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_QUIRKY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MIMIKYU_1] = {
        .species = SPECIES_MIMIKYU,
        .moves = {MOVE_SWORDS_DANCE, MOVE_SHADOW_CLAW, MOVE_PLAY_ROUGH, MOVE_SHADOW_SNEAK},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MIMIKYU_2] = {
        .species = SPECIES_MIMIKYU,
        .moves = {MOVE_CURSE, MOVE_ASTONISH, MOVE_PROTECT, MOVE_BABY_DOLL_EYES},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ALOLAN_MUK_1] = {
        .species = SPECIES_ALOLAN_MUK,
        .moves = {MOVE_PURSUIT, MOVE_GUNK_SHOT, MOVE_KNOCK_OFF, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ALOLAN_MUK_2] = {
        .species = SPECIES_ALOLAN_MUK,
        .moves = {MOVE_MINIMIZE, MOVE_SNARL, MOVE_ACID_SPRAY, MOVE_REST},
        .itemTableId = BATTLE_FRONTIER_ITEM_AIR_BALLOON,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NIDOKING_1] = {
        .species = SPECIES_NIDOKING,
        .moves = {MOVE_SLUDGE_WAVE, MOVE_EARTH_POWER, MOVE_ICE_BEAM, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_NIDOKING_2] = {
        .species = SPECIES_NIDOKING,
        .moves = {MOVE_BULLDOZE, MOVE_MEGAHORN, MOVE_ROCK_SLIDE, MOVE_SUCKER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PIDGEOT_MEGA_1] = {
        .species = SPECIES_PIDGEOT,
        .moves = {MOVE_HURRICANE, MOVE_HEAT_WAVE, MOVE_U_TURN, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_PIDGEOTITE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_PIDGEOT_MEGA_2] = {
        .species = SPECIES_PIDGEOT,
        .moves = {MOVE_HURRICANE, MOVE_HYPER_BEAM, MOVE_TAILWIND, MOVE_QUICK_ATTACK},
        .itemTableId = BATTLE_FRONTIER_ITEM_PIDGEOTITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PRIMARINA_1] = {
        .species = SPECIES_PRIMARINA,
        .moves = {MOVE_HYDRO_PUMP, MOVE_MOONBLAST, MOVE_SPARKLING_ARIA, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PRIMARINA_2] = {
        .species = SPECIES_PRIMARINA,
        .moves = {MOVE_HYDRO_PUMP, MOVE_MOONBLAST, MOVE_BABY_DOLL_EYES, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_KEBIA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_QUAGSIRE_1] = {
        .species = SPECIES_QUAGSIRE,
        .moves = {MOVE_SCALD, MOVE_EARTHQUAKE, MOVE_RECOVER, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ROTOM_HEAT_1] = {
        .species = SPECIES_ROTOM_HEAT,
        .moves = {MOVE_DEFOG, MOVE_VOLT_SWITCH, MOVE_OVERHEAT, MOVE_WILL_O_WISP},
        .itemTableId = BATTLE_FRONTIER_ITEM_IAPAPA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ROTOM_HEAT_2] = {
        .species = SPECIES_ROTOM_HEAT,
        .moves = {MOVE_WILL_O_WISP, MOVE_CHARGE_BEAM, MOVE_CONFUSE_RAY, MOVE_HEX},
        .itemTableId = BATTLE_FRONTIER_ITEM_BRIGHT_POWDER,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SCIZOR_1] = {
        .species = SPECIES_SCIZOR,
        .moves = {MOVE_BULLET_PUNCH, MOVE_U_TURN, MOVE_SUPERPOWER, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SCIZOR_2] = {
        .species = SPECIES_SCIZOR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_BULLET_PUNCH, MOVE_U_TURN, MOVE_REVERSAL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SHARPEDO_MEGA_1] = {
        .species = SPECIES_SHARPEDO,
        .moves = {MOVE_CRUNCH, MOVE_ICE_FANG, MOVE_EARTHQUAKE, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_SHARPEDONITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SHARPEDO_MEGA_2] = {
        .species = SPECIES_SHARPEDO,
        .moves = {MOVE_CRUNCH, MOVE_ICE_FANG, MOVE_AQUA_JET, MOVE_POISON_JAB},
        .itemTableId = BATTLE_FRONTIER_ITEM_SHARPEDONITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_STARMIE_1] = {
        .species = SPECIES_STARMIE,
        .moves = {MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_PSYSHOCK, MOVE_THUNDERBOLT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_STARMIE_2] = {
        .species = SPECIES_STARMIE,
        .moves = {MOVE_SURF, MOVE_ICE_BEAM, MOVE_PSYCHIC, MOVE_THUNDERBOLT},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_STEELIX_MEGA_1] = {
        .species = SPECIES_STEELIX,
        .moves = {MOVE_STEALTH_ROCK, MOVE_GYRO_BALL, MOVE_EARTHQUAKE, MOVE_CURSE},
        .itemTableId = BATTLE_FRONTIER_ITEM_STEELIXITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_BRAVE,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_STEELIX_MEGA_2] = {
        .species = SPECIES_STEELIX,
        .moves = {MOVE_STONE_EDGE, MOVE_GYRO_BALL, MOVE_EARTHQUAKE, MOVE_SANDSTORM},
        .itemTableId = BATTLE_FRONTIER_ITEM_STEELIXITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_BRAVE,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SWAMPERT_1] = {
        .species = SPECIES_SWAMPERT,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_SCALD, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SWAMPERT_2] = {
        .species = SPECIES_SWAMPERT,
        .moves = {MOVE_MIRROR_COAT, MOVE_EARTHQUAKE, MOVE_COUNTER, MOVE_ROAR},
        .itemTableId = BATTLE_FRONTIER_ITEM_JABOCA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_RELAXED,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TENTACRUEL_1] = {
        .species = SPECIES_TENTACRUEL,
        .moves = {MOVE_SCALD, MOVE_RAPID_SPIN, MOVE_HAZE, MOVE_SLUDGE_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TENTACRUEL_2] = {
        .species = SPECIES_TENTACRUEL,
        .moves = {MOVE_SURF, MOVE_TOXIC, MOVE_VENOSHOCK, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_MODEST,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_TOGEKISS_1] = {
        .species = SPECIES_TOGEKISS,
        .moves = {MOVE_NASTY_PLOT, MOVE_HEAL_BELL, MOVE_AIR_SLASH, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_TOGEKISS_2] = {
        .species = SPECIES_TOGEKISS,
        .moves = {MOVE_AURA_SPHERE, MOVE_AIR_SLASH, MOVE_GRASS_KNOT, MOVE_DAZZLING_GLEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_ZERAORA_1] = {
        .species = SPECIES_ZERAORA,
        .moves = {MOVE_PLASMA_FISTS, MOVE_CLOSE_COMBAT, MOVE_GRASS_KNOT, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
        .abilityNum = 0
        //.ivs = 31
    },
///UUBL/////
[FRONTIER_MON_ALAKAZAM_1] = {
        .species = SPECIES_ALAKAZAM,
        .moves = {MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_SHADOW_BALL, MOVE_RECOVER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ALAKAZAM_2] = {
        .species = SPECIES_ALAKAZAM,
        .moves = {MOVE_PSYCHIC, MOVE_GUARD_SPLIT, MOVE_ENERGY_BALL, MOVE_TELEKINESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_TWISTED_SPOON,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_BRELOOM_1] = {
        .species = SPECIES_BRELOOM,
        .moves = {MOVE_SUBSTITUTE, MOVE_SPORE, MOVE_LEECH_SEED, MOVE_FOCUS_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_TOXIC_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_BRELOOM_2] = {
        .species = SPECIES_BRELOOM,
        .moves = {MOVE_FOCUS_PUNCH, MOVE_SPORE, MOVE_ROCK_SLIDE, MOVE_SEED_BOMB},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CONKELDURR_1] = {
        .species = SPECIES_CONKELDURR,
        .moves = {MOVE_DRAIN_PUNCH, MOVE_MACH_PUNCH, MOVE_KNOCK_OFF, MOVE_FACADE},
        .itemTableId = BATTLE_FRONTIER_ITEM_FLAME_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CONKELDURR_2] = {
        .species = SPECIES_CONKELDURR,
        .moves = {MOVE_ROCK_SLIDE, MOVE_SMELLING_SALT, MOVE_FORCE_PALM, MOVE_FORCE_PALM},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_DIGGERSBY_1] = {
        .species = SPECIES_DIGGERSBY,
        .moves = {MOVE_EARTHQUAKE, MOVE_RETURN, MOVE_QUICK_ATTACK, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_DRAGONITE_1] = {
        .species = SPECIES_DRAGONITE,
        .moves = {MOVE_DRAGON_DANCE, MOVE_FLY, MOVE_EARTHQUAKE, MOVE_EXTREME_SPEED},
        .itemTableId = BATTLE_FRONTIER_ITEM_YACHE_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_DRAGONITE_2] = {
        .species = SPECIES_DRAGONITE,
        .moves = {MOVE_DRAGON_RUSH, MOVE_IRON_TAIL, MOVE_EXTREME_SPEED, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_SNOWBALL,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_CALM,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GALLADE_MEGA_1] = {
        .species = SPECIES_GALLADE,
        .moves = {MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_ZEN_HEADBUTT, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_GALLADITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GALLADE_MEGA_2] = {
        .species = SPECIES_GALLADE,
        .moves = {MOVE_PSYCHO_CUT, MOVE_CLOSE_COMBAT, MOVE_ROCK_SLIDE, MOVE_DESTINY_BOND},
        .itemTableId = BATTLE_FRONTIER_ITEM_GALLADITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GARDEVOIR_MEGA_1] = {
        .species = SPECIES_GARDEVOIR,
        .moves = {MOVE_WILL_O_WISP, MOVE_PSYSHOCK, MOVE_HYPER_VOICE, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_GARDEVOIRITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_GARDEVOIR_MEGA_2] = {
        .species = SPECIES_GARDEVOIR,
        .moves = {MOVE_PSYCHIC, MOVE_HYPER_BEAM, MOVE_SHADOW_BALL, MOVE_FOCUS_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_GARDEVOIRITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GYARADOS_1] = {
        .species = SPECIES_GYARADOS,
        .moves = {MOVE_DRAGON_DANCE, MOVE_BOUNCE, MOVE_WATERFALL, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_WACAN_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GYARADOS_2] = {
        .species = SPECIES_GYARADOS,
        .moves = {MOVE_ICE_FANG, MOVE_DRAGON_DANCE, MOVE_AQUA_TAIL, MOVE_THUNDER_WAVE},
        .itemTableId = BATTLE_FRONTIER_ITEM_MUSCLE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HERACROSS_MEGA_1] = {
        .species = SPECIES_HERACROSS,
        .moves = {MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_ROCK_BLAST, MOVE_PIN_MISSILE},
        .itemTableId = BATTLE_FRONTIER_ITEM_HERACRONITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_HERACROSS_MEGA_2] = {
        .species = SPECIES_HERACROSS,
        .moves = {MOVE_PIN_MISSILE, MOVE_CLOSE_COMBAT, MOVE_BULLET_SEED, MOVE_ROCK_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_HERACRONITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ALOLAN_NINETALES_1] = {
        .species = SPECIES_ALOLAN_NINETALES,
        .moves = {MOVE_AURORA_VEIL, MOVE_FREEZE_DRY, MOVE_HYPNOSIS, MOVE_HAIL},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIGHT_CLAY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ALOLAN_NINETALES_2] = {
        .species = SPECIES_ALOLAN_NINETALES,
        .moves = {MOVE_FREEZE_DRY, MOVE_DAZZLING_GLEAM, MOVE_EXTRASENSORY, MOVE_ICE_SHARD},
        .itemTableId = BATTLE_FRONTIER_ITEM_WIDE_LENS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PINSIR_MEGA_1] = {
        .species = SPECIES_PINSIR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_RETURN, MOVE_QUICK_ATTACK, MOVE_CLOSE_COMBAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_PINSIRITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PINSIR_MEGA_2] = {
        .species = SPECIES_PINSIR,
        .moves = {MOVE_X_SCISSOR, MOVE_SUPERPOWER, MOVE_STONE_EDGE, MOVE_THRASH},
        .itemTableId = BATTLE_FRONTIER_ITEM_PINSIRITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_PORYGON_Z_1] = {
        .species = SPECIES_PORYGON_Z,
        .moves = {MOVE_THUNDERBOLT, MOVE_ICE_BEAM, MOVE_AGILITY, MOVE_TRI_ATTACK},
        .itemTableId = BATTLE_FRONTIER_ITEM_SILK_SCARF,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PORYGON_Z_2] = {
        .species = SPECIES_PORYGON_Z,
        .moves = {MOVE_THUNDERBOLT, MOVE_ICE_BEAM, MOVE_HYPER_BEAM, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SALAMENCE_1] = {
        .species = SPECIES_SALAMENCE,
        .moves = {MOVE_DRAGON_DANCE, MOVE_FLY, MOVE_EARTHQUAKE, MOVE_FIRE_FANG},
        .itemTableId = BATTLE_FRONTIER_ITEM_YACHE_BERRY,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SALAMENCE_2] = {
        .species = SPECIES_SALAMENCE,
        .moves = {MOVE_DRAGON_DANCE, MOVE_DRAGON_CLAW, MOVE_ROCK_SLIDE, MOVE_ZEN_HEADBUTT},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SCOLIPEDE_1] = {
        .species = SPECIES_SCOLIPEDE,
        .moves = {MOVE_SWORDS_DANCE, MOVE_MEGAHORN, MOVE_AQUA_TAIL, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_STARAPTOR_1] = {
        .species = SPECIES_STARAPTOR,
        .moves = {MOVE_BRAVE_BIRD, MOVE_DOUBLE_EDGE, MOVE_U_TURN, MOVE_CLOSE_COMBAT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_STARAPTOR_2] = {
        .species = SPECIES_STARAPTOR,
        .moves = {MOVE_FEATHER_DANCE, MOVE_QUICK_ATTACK, MOVE_U_TURN, MOVE_ENDEAVOR},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_VENUSAUR_MEGA_1] = {
        .species = SPECIES_VENUSAUR,
        .moves = {MOVE_LEECH_SEED, MOVE_SLUDGE_BOMB, MOVE_SUNNY_DAY, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_VENUSAURITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_VENUSAUR_MEGA_2] = {
        .species = SPECIES_VENUSAUR,
        .moves = {MOVE_SUBSTITUTE, MOVE_SLUDGE_BOMB, MOVE_GIGA_DRAIN, MOVE_SYNTHESIS},
        .itemTableId = BATTLE_FRONTIER_ITEM_VENUSAURITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_WEAVILE_1] = {
        .species = SPECIES_WEAVILE,
        .moves = {MOVE_KNOCK_OFF, MOVE_ICICLE_CRASH, MOVE_ICE_SHARD, MOVE_PURSUIT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_WEAVILE_2] = {
        .species = SPECIES_WEAVILE,
        .moves = {MOVE_TAUNT, MOVE_ICE_PUNCH, MOVE_NIGHT_SLASH, MOVE_FAKE_OUT},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
////OU/////
[FRONTIER_MON_ALAKAZAM_MEGA_1] = {
        .species = SPECIES_ALAKAZAM,
        .moves = {MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_RECOVER, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_ALAKAZITE,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_ALAKAZAM_MEGA_2] = {
        .species = SPECIES_ALAKAZAM,
        .moves = {MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_GRASS_KNOT, MOVE_SHADOW_BALL},
        .itemTableId = BATTLE_FRONTIER_ITEM_ALAKAZITE,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_AZUMARILL_1] = {
        .species = SPECIES_AZUMARILL,
        .moves = {MOVE_BELLY_DRUM, MOVE_AQUA_JET, MOVE_PLAY_ROUGH, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_EXPERT_BELT,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_BLACEPHALON_1] = {
        .species = SPECIES_BLACEPHALON,
        .moves = {MOVE_FIRE_BLAST, MOVE_SHADOW_BALL, MOVE_DARK_PULSE, MOVE_TRICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CELESTEELA_1] = {
        .species = SPECIES_CELESTEELA,
        .moves = {MOVE_LEECH_SEED, MOVE_PROTECT, MOVE_HEAVY_SLAM, MOVE_FLAMETHROWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_SASSY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CHANSEY_1] = {
        .species = SPECIES_CHANSEY,
        .moves = {MOVE_SEISMIC_TOSS, MOVE_TOXIC, MOVE_STEALTH_ROCK, MOVE_SOFT_BOILED},
        .itemTableId = BATTLE_FRONTIER_ITEM_EVIOLITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CHARIZARD_MEGAX_1] = {
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_DRAGON_DANCE, MOVE_FLARE_BLITZ, MOVE_EARTHQUAKE, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARIZARDITE_X,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CHARIZARD_MEGAX_2] = {
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_DRAGON_DANCE, MOVE_FLARE_BLITZ, MOVE_DRAGON_RUSH, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARIZARDITE_X,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_CHARIZARD_MEGAY_1] = {
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_FLAMETHROWER, MOVE_FOCUS_BLAST, MOVE_SOLAR_BEAM, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARIZARDITE_Y,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CHARIZARD_MEGAY_2] = {
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_HEAT_WAVE, MOVE_FOCUS_BLAST, MOVE_SOLAR_BEAM, MOVE_AIR_SLASH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARIZARDITE_Y,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_CLEFABLE_1] = {
        .species = SPECIES_CLEFABLE,
        .moves = {MOVE_STEALTH_ROCK, MOVE_MOONBLAST, MOVE_SOFT_BOILED, MOVE_CALM_MIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_DIANCIE_MEGA_1] = {
        .species = SPECIES_DIANCIE,
        .moves = {MOVE_STEALTH_ROCK, MOVE_MOONBLAST, MOVE_DIAMOND_STORM, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_DIANCITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_HASTY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_EXCADRILL_1] = {
        .species = SPECIES_EXCADRILL,
        .moves = {MOVE_SWORDS_DANCE, MOVE_EARTHQUAKE, MOVE_IRON_HEAD, MOVE_RAPID_SPIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_EXCADRILL_2] = {
        .species = SPECIES_EXCADRILL,
        .moves = {MOVE_HONE_CLAWS, MOVE_IRON_DEFENSE, MOVE_DRILL_RUN, MOVE_ROCK_SLIDE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SOFT_SAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_FERROTHORN_1] = {
        .species = SPECIES_FERROTHORN,
        .moves = {MOVE_SPIKES, MOVE_LEECH_SEED, MOVE_GYRO_BALL, MOVE_POWER_WHIP},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_SASSY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_FERROTHORN_2] = {
        .species = SPECIES_FERROTHORN,
        .moves = {MOVE_PAYBACK, MOVE_EXPLOSION, MOVE_GYRO_BALL, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_CUSTAP_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_SASSY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_GARCHOMP_MEGA_1] = {
        .species = SPECIES_GARCHOMP,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_DRACO_METEOR, MOVE_FIRE_BLAST},
        .itemTableId = BATTLE_FRONTIER_ITEM_GARCHOMPITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MILD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GARCHOMP_MEGA_2] = {
        .species = SPECIES_GARCHOMP,
        .moves = {MOVE_FIRE_BLAST, MOVE_DRAGON_BREATH, MOVE_SURF, MOVE_SANDSTORM},
        .itemTableId = BATTLE_FRONTIER_ITEM_GARCHOMPITE,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GARCHOMP_1] = {
        .species = SPECIES_GARCHOMP,
        .moves = {MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_SWORDS_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GLISCOR_1] = {
        .species = SPECIES_GLISCOR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_ROOST, MOVE_EARTHQUAKE, MOVE_FACADE},
        .itemTableId = BATTLE_FRONTIER_ITEM_TOXIC_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GLISCOR_2] = {
        .species = SPECIES_GLISCOR,
        .moves = {MOVE_EARTHQUAKE, MOVE_ACROBATICS, MOVE_U_TURN, MOVE_COUNTER},
        .itemTableId = BATTLE_FRONTIER_ITEM_FOCUS_SASH,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GRENINJA_1] = {
        .species = SPECIES_GRENINJA,
        .moves = {MOVE_DIG, MOVE_ICE_BEAM, MOVE_GUNK_SHOT, MOVE_U_TURN},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_HASTY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_GRENINJA_2] = {
        .species = SPECIES_GRENINJA,
        .moves = {MOVE_RAIN_DANCE, MOVE_ICE_BEAM, MOVE_SURF, MOVE_ROUND},
        .itemTableId = BATTLE_FRONTIER_ITEM_DAMP_ROCK,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_HASTY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GYARADOS_MEGA_1] = {
        .species = SPECIES_GYARADOS,
        .moves = {MOVE_DRAGON_DANCE, MOVE_CRUNCH, MOVE_EARTHQUAKE, MOVE_SUBSTITUTE},
        .itemTableId = BATTLE_FRONTIER_ITEM_GYARADOSITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_GYARADOS_MEGA_2] = {
        .species = SPECIES_GYARADOS,
        .moves = {MOVE_DRAGON_DANCE, MOVE_CRUNCH, MOVE_WATERFALL, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_GYARADOSITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_HAWLUCHA_1] = {
        .species = SPECIES_HAWLUCHA,
        .moves = {MOVE_ACROBATICS, MOVE_SWORDS_DANCE, MOVE_HI_JUMP_KICK, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_HAWLUCHA_2] = {
        .species = SPECIES_HAWLUCHA,
        .moves = {MOVE_FLYING_PRESS, MOVE_SKY_ATTACK, MOVE_STONE_EDGE, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_POWER_HERB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HEATRAN_1] = {
        .species = SPECIES_HEATRAN,
        .moves = {MOVE_LAVA_PLUME, MOVE_TOXIC, MOVE_PROTECT, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_HEATRAN_2] = {
        .species = SPECIES_HEATRAN,
        .moves = {MOVE_MAGMA_STORM, MOVE_DARK_PULSE, MOVE_EARTH_POWER, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_JIRACHI_1] = {
        .species = SPECIES_JIRACHI,
        .moves = {MOVE_IRON_HEAD, MOVE_U_TURN, MOVE_HEALING_WISH, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KARTANA_1] = {
        .species = SPECIES_KARTANA,
        .moves = {MOVE_LEAF_BLADE, MOVE_SACRED_SWORD, MOVE_SMART_STRIKE, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KELDEO_1] = {
        .species = SPECIES_KELDEO,
        .moves = {MOVE_HYDRO_PUMP, MOVE_SECRET_SWORD, MOVE_SCALD, MOVE_ICY_WIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KOMMO_O_1] = {
        .species = SPECIES_KOMMO_O,
        .moves = {MOVE_STEALTH_ROCK, MOVE_TOXIC, MOVE_PROTECT, MOVE_DRAIN_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_CAREFUL,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_KOMMO_O_2] = {
        .species = SPECIES_KOMMO_O,
        .moves = {MOVE_CLANGING_SCALES, MOVE_FOCUS_BLAST, MOVE_AUTOTOMIZE, MOVE_FLASH_CANNON},
        .itemTableId = BATTLE_FRONTIER_ITEM_SITRUS_BERRY,
        .evSpread = F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_MODEST,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_KYUREM_BLACK_1] = {
        .species = SPECIES_KYUREM_BLACK,
        .moves = {MOVE_FREEZE_SHOCK, MOVE_FUSION_BOLT, MOVE_ICE_BEAM, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_NAIVE,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LANDORUS_THERIAN_1] = {
        .species = SPECIES_LANDORUS_THERIAN,
        .moves = {MOVE_EARTHQUAKE, MOVE_U_TURN, MOVE_STONE_EDGE, MOVE_EXPLOSION},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LATIAS_MEGA_1] = {
        .species = SPECIES_LATIAS,
        .moves = {MOVE_CALM_MIND, MOVE_ROOST, MOVE_STORED_POWER, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_LATIASITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LATIAS_MEGA_2] = {
        .species = SPECIES_LATIAS,
        .moves = {MOVE_DRAGON_PULSE, MOVE_ROOST, MOVE_THUNDER_WAVE, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LATIASITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_LOPUNNY_MEGA_1] = {
        .species = SPECIES_LOPUNNY,
        .moves = {MOVE_RETURN, MOVE_HI_JUMP_KICK, MOVE_FAKE_OUT, MOVE_ICE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LOPUNNITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_LOPUNNY_MEGA_2] = {
        .species = SPECIES_LOPUNNY,
        .moves = {MOVE_DOUBLE_HIT, MOVE_HI_JUMP_KICK, MOVE_QUICK_ATTACK, MOVE_ICE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_LOPUNNITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MAGNEZONE_2] = {
        .species = SPECIES_MAGNEZONE,
        .moves = {MOVE_THUNDER_WAVE, MOVE_THUNDER, MOVE_FLASH_CANNON, MOVE_MAGNET_RISE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LAX_INCENSE,
        .evSpread = F_EV_SPREAD_DEFENSE | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_MODEST,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MANAPHY_1] = {
        .species = SPECIES_MANAPHY,
        .moves = {MOVE_TAIL_GLOW, MOVE_SURF, MOVE_ICE_BEAM, MOVE_PSYCHIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_MAWILE_MEGA_1] = {
        .species = SPECIES_MAWILE,
        .moves = {MOVE_SWORDS_DANCE, MOVE_PLAY_ROUGH, MOVE_SUCKER_PUNCH, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_MAWILITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_MAWILE_MEGA_2] = {
        .species = SPECIES_MAWILE,
        .moves = {MOVE_FIRE_PUNCH, MOVE_PLAY_ROUGH, MOVE_SUCKER_PUNCH, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_MAWILITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_PELIPPER_1] = {
        .species = SPECIES_PELIPPER,
        .moves = {MOVE_SCALD, MOVE_U_TURN, MOVE_ROOST, MOVE_DEFOG},
        .itemTableId = BATTLE_FRONTIER_ITEM_DAMP_ROCK,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_PELIPPER_2] = {
        .species = SPECIES_PELIPPER,
        .moves = {MOVE_STOCKPILE, MOVE_TOXIC, MOVE_ROOST, MOVE_SURF},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SABLEYE_MEGA_1] = {
        .species = SPECIES_SABLEYE,
        .moves = {MOVE_KNOCK_OFF, MOVE_WILL_O_WISP, MOVE_RECOVER, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_SABLENITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SABLEYE_MEGA_2] = {
        .species = SPECIES_SABLEYE,
        .moves = {MOVE_FOUL_PLAY, MOVE_WILL_O_WISP, MOVE_RECOVER, MOVE_SNARL},
        .itemTableId = BATTLE_FRONTIER_ITEM_SABLENITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CAREFUL,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SCIZOR_MEGA_1] = {
        .species = SPECIES_SCIZOR,
        .moves = {MOVE_SWORDS_DANCE, MOVE_BULLET_PUNCH, MOVE_ROOST, MOVE_KNOCK_OFF},
        .itemTableId = BATTLE_FRONTIER_ITEM_SCIZORITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_SPEED,
        .nature = NATURE_IMPISH,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SCIZOR_MEGA_2] = {
        .species = SPECIES_SCIZOR,
        .moves = {MOVE_X_SCISSOR, MOVE_BULLET_PUNCH, MOVE_AERIAL_ACE, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_SCIZORITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_IMPISH,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SERPERIOR_1] = {
        .species = SPECIES_SERPERIOR,
        .moves = {MOVE_LEAF_STORM, MOVE_KNOCK_OFF, MOVE_SUBSTITUTE, MOVE_GLARE},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SERPERIOR_2] = {
        .species = SPECIES_SERPERIOR,
        .moves = {MOVE_DRAGON_TAIL, MOVE_GASTRO_ACID, MOVE_ATTRACT, MOVE_LEAF_TORNADO},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUM_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SPEED,
        .nature = NATURE_TIMID,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SKARMORY_1] = {
        .species = SPECIES_SKARMORY,
        .moves = {MOVE_ROOST, MOVE_SPIKES, MOVE_WHIRLWIND, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_SKARMORY_2] = {
        .species = SPECIES_SKARMORY,
        .moves = {MOVE_ROAR, MOVE_BRAVE_BIRD, MOVE_SWORDS_DANCE, MOVE_STEEL_WING},
        .itemTableId = BATTLE_FRONTIER_ITEM_CELL_BATTERY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_SWAMPERT_MEGA_1] = {
        .species = SPECIES_SWAMPERT,
        .moves = {MOVE_WATERFALL, MOVE_EARTHQUAKE, MOVE_ICE_PUNCH, MOVE_SUPERPOWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_SWAMPERTITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_SWAMPERT_MEGA_2] = {
        .species = SPECIES_SWAMPERT,
        .moves = {MOVE_WATERFALL, MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE, MOVE_RAIN_DANCE},
        .itemTableId = BATTLE_FRONTIER_ITEM_SWAMPERTITE,
        .evSpread = F_EV_SPREAD_ATTACK | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TANGROWTH_1] = {
        .species = SPECIES_TANGROWTH,
        .moves = {MOVE_GIGA_DRAIN, MOVE_KNOCK_OFF, MOVE_SLUDGE_BOMB, MOVE_EARTHQUAKE},
        .itemTableId = BATTLE_FRONTIER_ITEM_ASSAULT_VEST,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_SASSY,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TANGROWTH_2] = {
        .species = SPECIES_TANGROWTH,
        .moves = {MOVE_GIGA_DRAIN, MOVE_TOXIC, MOVE_LEECH_SEED, MOVE_INGRAIN},
        .itemTableId = BATTLE_FRONTIER_ITEM_BIG_ROOT,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_SASSY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TAPU_BULU_1] = {
        .species = SPECIES_TAPU_BULU,
        .moves = {MOVE_WOOD_HAMMER, MOVE_HORN_LEECH, MOVE_SUPERPOWER, MOVE_STONE_EDGE},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_BAND,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TAPU_FINI_1] = {
        .species = SPECIES_TAPU_FINI,
        .moves = {MOVE_DEFOG, MOVE_MOONBLAST, MOVE_SCALD, MOVE_NATURES_MADNESS},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TAPU_KOKO_1] = {
        .species = SPECIES_TAPU_KOKO,
        .moves = {MOVE_THUNDERBOLT, MOVE_DAZZLING_GLEAM, MOVE_VOLT_SWITCH, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SPECS,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TAPU_LELE_1] = {
        .species = SPECIES_TAPU_LELE,
        .moves = {MOVE_PSYCHIC, MOVE_MOONBLAST, MOVE_FOCUS_BLAST, MOVE_CALM_MIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TORNADUS_THERIAN_1] = {
        .species = SPECIES_TORNADUS_THERIAN,
        .moves = {MOVE_HURRICANE, MOVE_KNOCK_OFF, MOVE_U_TURN, MOVE_DEFOG},
        .itemTableId = BATTLE_FRONTIER_ITEM_ROCKY_HELMET,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TOXAPEX_1] = {
        .species = SPECIES_TOXAPEX,
        .moves = {MOVE_SCALD, MOVE_BANEFUL_BUNKER, MOVE_RECOVER, MOVE_TOXIC},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TOXAPEX_2] = {
        .species = SPECIES_TOXAPEX,
        .moves = {MOVE_SURF, MOVE_BANEFUL_BUNKER, MOVE_ICE_BEAM, MOVE_VENOSHOCK},
        .itemTableId = BATTLE_FRONTIER_ITEM_RED_CARD,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_CALM,
        .abilityNum = 2
        //.ivs = 31
    },
[FRONTIER_MON_TYRANITAR_1] = {
        .species = SPECIES_TYRANITAR,
        .moves = {MOVE_STEALTH_ROCK, MOVE_STONE_EDGE, MOVE_PURSUIT, MOVE_FIRE_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_TYRANITARITE,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_TYRANITAR_2] = {
        .species = SPECIES_TYRANITAR,
        .moves = {MOVE_CRUNCH, MOVE_ROCK_SLIDE, MOVE_DRAGON_DANCE, MOVE_ICE_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_KINGS_ROCK,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_ADAMANT,
        .abilityNum = 1
        //.ivs = 31
    },
[FRONTIER_MON_VICTINI_1] = {
        .species = SPECIES_VICTINI,
        .moves = {MOVE_V_CREATE, MOVE_U_TURN, MOVE_FINAL_GAMBIT, MOVE_TRICK},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHOICE_SCARF,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_ATTACK,
        .nature = NATURE_JOLLY,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_VOLCARONA_1] = {
        .species = SPECIES_VOLCARONA,
        .moves = {MOVE_QUIVER_DANCE, MOVE_FLAMETHROWER, MOVE_BUG_BUZZ, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_VOLCARONA_2] = {
        .species = SPECIES_VOLCARONA,
        .moves = {MOVE_BUG_BUZZ, MOVE_FLAMETHROWER, MOVE_PROTECT, MOVE_CALM_MIND},
        .itemTableId = BATTLE_FRONTIER_ITEM_LUM_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_TIMID,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ZAPDOS_1] = {
        .species = SPECIES_ZAPDOS,
        .moves = {MOVE_DISCHARGE, MOVE_HEAT_WAVE, MOVE_SIGNAL_BEAM, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 0
        //.ivs = 31
    },
[FRONTIER_MON_ZAPDOS_2] = {
        .species = SPECIES_ZAPDOS,
        .moves = {MOVE_THUNDER, MOVE_RAIN_DANCE, MOVE_DRILL_PECK, MOVE_LIGHT_SCREEN},
        .itemTableId = BATTLE_FRONTIER_ITEM_PETAYA_BERRY,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_DEFENSE,
        .nature = NATURE_BOLD,
        .abilityNum = 1
        //.ivs = 31
    },
};
