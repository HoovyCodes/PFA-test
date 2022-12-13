BattleFrontier_Mart_MapScripts::
	.byte 0
BattleFrontier_Mart_EventScript_Clerk::
	setrespawn HEAL_LOCATION_BATTLE_FRONTIER_OUTSIDE_EAST
	lock
	faceplayer
	goto_if_set TRAINER_ALBERTO+TRAINER_FLAGS_START, YAC 
	goto_if_unset FLAG_UNUSED_0x1DE, BattleFrontier_Mkol_Welcome
	msgbox BattleFrontier_Mkol_HaveSymbols, MSGBOX_DEFAULT
	compare VAR_FORTREE_CITY_STATE, 14
	goto_if_lt Furniture_check
	special CountSymbols
	compare VAR_RESULT, 14
	goto_if_ge BattleFrontier_Mkol_Fight
	goto BattleFrontier_Mkol_NoBattle
	release
	end

Furniture_check::
	special CountSymbols
	compare VAR_RESULT, VAR_FORTREE_CITY_STATE
	goto_if_gt BattleFrontier_Mkol_GiveFurniture
	goto BattleFrontier_Mkol_NoBattle
	release
	end
	
BattleFrontier_Mkol_Fight::
	trainerbattle_single TRAINER_ALBERTO, BF_FS, BF_FE, YAC
	release
	end

BattleFrontier_Mkol_Welcome::
	setvar VAR_FORTREE_CITY_STATE, 0
	msgbox BattleFrontier_Mkol_WelcomeText, MSGBOX_DEFAULT
	adddecoration DECOR_BALL_POSTER
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_ReceptionGate_Text_ObtainedFurniture
	waitfanfare
	waitmessage
	msgbox BattleFrontier_ReceptionGate_Text_FurnitureSent, MSGBOX_DEFAULT
	setflag FLAG_UNUSED_0x1DE
	release
	end
	
BattleFrontier_Mkol_GiveFurniture::
	msgbox BattleFrontier_Mkol_FurnitureText, MSGBOX_DEFAULT	
	addvar VAR_FORTREE_CITY_STATE, 1
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_ReceptionGate_Text_ObtainedFurniture
	waitfanfare
	waitmessage
	msgbox BattleFrontier_ReceptionGate_Text_FurnitureSent, MSGBOX_DEFAULT
	switch VAR_FORTREE_CITY_STATE
	case 1,	BattleFrontier_Mkol_OF1
	case 2,	BattleFrontier_Mkol_OF2
	case 3,	BattleFrontier_Mkol_OF3
	case 4,	BattleFrontier_Mkol_OF4
	case 5,	BattleFrontier_Mkol_OF5
	case 6,	BattleFrontier_Mkol_OF6
	case 7,	BattleFrontier_Mkol_OF7
	case 8	BattleFrontier_Mkol_OF8
	case 9,	BattleFrontier_Mkol_OF9
	case 10, BattleFrontier_Mkol_OF10
	case 11, BattleFrontier_Mkol_OF11
	case 12, BattleFrontier_Mkol_OF12
	case 13, BattleFrontier_Mkol_OF13
	release
	end

BattleFrontier_Mkol_OF1::
	adddecoration DECOR_PRETTY_FLOWERS
	adddecoration DECOR_PIKACHU_DOLL
	adddecoration DECOR_KECLEON_DOLL
	adddecoration DECOR_SPIN_CUSHION
	adddecoration DECOR_SPIKES_MAT
	adddecoration DECOR_CUTE_POSTER
	adddecoration DECOR_HARD_DESK
	adddecoration DECOR_TV
	adddecoration DECOR_SMALL_CHAIR
	adddecoration DECOR_LAPRAS_DOLL
	release
	end
BattleFrontier_Mkol_OF2::
	adddecoration DECOR_MARILL_DOLL
	adddecoration DECOR_TOGEPI_DOLL
	adddecoration DECOR_RHYDON_DOLL
	adddecoration DECOR_ROUND_CUSHION
	adddecoration DECOR_JUMP_MAT
	adddecoration DECOR_SEA_POSTER
	adddecoration DECOR_SKY_POSTER
	adddecoration DECOR_PRETTY_DESK
	adddecoration DECOR_TIRE
	adddecoration DECOR_COMFORT_CHAIR
	adddecoration DECOR_FENCE_LENGTH
	adddecoration DECOR_FENCE_WIDTH
	release
	end
BattleFrontier_Mkol_OF3::
	adddecoration DECOR_CYNDAQUIL_DOLL
	adddecoration DECOR_TOTODILE_DOLL
	adddecoration DECOR_CHIKORITA_DOLL
	adddecoration DECOR_SMOOCHUM_DOLL
	adddecoration DECOR_HARD_CHAIR
	adddecoration DECOR_TROPICAL_PLANT
	adddecoration DECOR_GRASS_CUSHION
	release
	end
BattleFrontier_Mkol_OF4::
	adddecoration DECOR_GULPIN_DOLL
	adddecoration DECOR_LOTAD_DOLL
	adddecoration DECOR_SEEDOT_DOLL
	adddecoration DECOR_FIRE_CUSHION
	adddecoration DECOR_COMFORT_DESK
	adddecoration DECOR_FIRE_BLAST_MAT
	adddecoration DECOR_RED_POSTER
	adddecoration DECOR_RED_BRICK
	adddecoration DECOR_RED_TENT
	adddecoration DECOR_HARD_CHAIR
	adddecoration DECOR_RED_PLANT
	release
	end
BattleFrontier_Mkol_OF5::
	adddecoration DECOR_BLUE_BRICK
	adddecoration DECOR_RED_BALLOON
	adddecoration DECOR_BLUE_BALLOON
	adddecoration DECOR_YELLOW_BALLOON
	adddecoration DECOR_BREAKABLE_DOOR
	adddecoration DECOR_THUNDER_MAT
	adddecoration DECOR_PICHU_DOLL
	adddecoration DECOR_SMALL_DESK 
	adddecoration DECOR_BALL_CUSHION
	release
	end
BattleFrontier_Mkol_OF6::
	adddecoration DECOR_SKITTY_DOLL
	adddecoration DECOR_SWABLU_DOLL
	adddecoration DECOR_C_LOW_NOTE_MAT
	adddecoration DECOR_D_NOTE_MAT
	adddecoration DECOR_E_NOTE_MAT
	adddecoration DECOR_F_NOTE_MAT
	adddecoration DECOR_G_NOTE_MAT
	adddecoration DECOR_A_NOTE_MAT
	adddecoration DECOR_B_NOTE_MAT
	adddecoration DECOR_C_HIGH_NOTE_MAT
	adddecoration DECOR_YELLOW_BRICK
	adddecoration DECOR_POKEMON_CHAIR
	adddecoration DECOR_POKEMON_DESK
	adddecoration DECOR_FENCE_LENGTH
	adddecoration DECOR_FENCE_WIDTH
	release
	end
BattleFrontier_Mkol_OF7::
	adddecoration DECOR_GREEN_POSTER
	adddecoration DECOR_CLEFAIRY_DOLL
	adddecoration DECOR_DITTO_DOLL
	adddecoration DECOR_ROUND_TV
	adddecoration DECOR_BIG_PLANT
	adddecoration DECOR_KISS_CUSHION
	adddecoration DECOR_CAMP_DESK
	adddecoration DECOR_ATTRACT_MAT
	adddecoration DECOR_RAGGED_CHAIR
	release
	end
BattleFrontier_Mkol_OF8::
	adddecoration DECOR_PRETTY_CHAIR
	adddecoration DECOR_JIGGLYPUFF_DOLL
	adddecoration DECOR_MEOWTH_DOLL
	adddecoration DECOR_ZIGZAG_CUSHION
	adddecoration DECOR_RAGGED_DESK
	adddecoration DECOR_DIAMOND_CUSHION
	adddecoration DECOR_GLITTER_MAT
	adddecoration DECOR_KISS_POSTER
	release
	end
BattleFrontier_Mkol_OF9::
	adddecoration DECOR_WATER_CUSHION
	adddecoration DECOR_SURF_MAT
	adddecoration DECOR_BLUE_POSTER
	adddecoration DECOR_BLUE_TENT
	adddecoration DECOR_BLUE_BRICK
	adddecoration DECOR_AZURILL_DOLL
	adddecoration DECOR_WAILMER_DOLL
	adddecoration DECOR_FENCE_LENGTH
	adddecoration DECOR_FENCE_WIDTH
	adddecoration DECOR_CAMP_CHAIR
	release
	end
BattleFrontier_Mkol_OF10::
	adddecoration DECOR_PIKA_POSTER
	adddecoration DECOR_VENUSAUR_DOLL
	adddecoration DECOR_CHARIZARD_DOLL
	adddecoration DECOR_BLASTOISE_DOLL
	adddecoration DECOR_COLORFUL_PLANT
	adddecoration DECOR_MUD_BALL
	adddecoration DECOR_SAND_ORNAMENT
	adddecoration DECOR_HEAVY_CHAIR
	release
	end
BattleFrontier_Mkol_OF11::
	adddecoration DECOR_PIKA_CUSHION
	adddecoration DECOR_TREECKO_DOLL
	adddecoration DECOR_MUDKIP_DOLL
	adddecoration DECOR_TORCHIC_DOLL
	adddecoration DECOR_HEAVY_DESK
	adddecoration DECOR_POWDER_SNOW_MAT
	adddecoration DECOR_LONG_POSTER
	release
	end
BattleFrontier_Mkol_OF12::
	adddecoration DECOR_DUSKULL_DOLL
	adddecoration DECOR_WYNAUT_DOLL
	adddecoration DECOR_BALTOY_DOLL
	adddecoration DECOR_GORGEOUS_PLANT
	adddecoration DECOR_FISSURE_MAT
	adddecoration DECOR_HEAVY_DESK
	adddecoration DECOR_CUTE_TV
	adddecoration DECOR_SPIN_MAT
	adddecoration DECOR_BRICK_CHAIR
	release
	end
BattleFrontier_Mkol_OF13::
	adddecoration DECOR_REGIROCK_DOLL
	adddecoration DECOR_REGICE_DOLL
	adddecoration DECOR_REGISTEEL_DOLL
	addvar VAR_FORTREE_CITY_STATE, 1
	release
	end

	
BattleFrontier_Mkol_NoBattle::
    msgbox BattleFrontier_Mkol_NoBText, MSGBOX_DEFAULT
	release
	end
	
YAC::
	lock
	faceplayer
	msgbox PLAYER_WON, MSGBOX_DEFAULT
	release
	end
BattleFrontier_Mkol_WelcomeText:
	.string "Hi there!\n"
	.string "I'm the creator of this ROMhack.\p"
	.string "It's great to finally meet you;\n"
	.string "I hope you're enjoying yourself.\p"
	.string "I put a lot of hard work into this \n"
	.string "thing, and I'm happy to see it realized.\p"
	.string "Come find me once\n"
	.string "you earn a Symbol.\p"
	.string "I'll have a surprise for you.\p"
	.string "Oh, and here's a gift\n"
	.string "just for talking to me:\l"
	.string "a Pokéball poster!$"

BattleFrontier_Mkol_HaveSymbols:
	.string "Hi there!\n"
	.string "Have you gotten a Symbol?$"

BattleFrontier_Mkol_NoBText:
	.string "Doesn't look like it.\n"
	.string "Come back when you do.$"
PLAYER_WON:
	.string "If you've beaten me,\n"
	.string "there must not be much left to do.\p"
	.string "Or rather, there's still\n"
	.string "so much to do.\p"
	.string "Getting all 14 Symbols\n"
	.string "nets you a star on your Trainer Card.\p"
	.string "To earn the other three,\n"
	.string "you need to do these things:\p"
	.string "become a master coordinator,\n"
	.string "beat every famous trainer,\l"
	.string "and get a streak of 100 Tower wins.\p"
	.string "If you do all this, you'll\n"
	.string "be a true master.\p"
	.string "This is all if you want, of course.\n"
	.string "No matter what,\l"
	.string "I'm happy you've played so much.$"
BF_FS:
	.string "Wow, all 14 symbols!\n"
	.string "You're truly talented.\p"
	.string "I don't have any\n"
	.string "furniture for you,\l"
	.string "but I have something better.\p"
	.string "What is it?\p"
	.string "A battle with me, of course!\p"
	.string "Come, prove\n"
	.string "you're a true master!$"
BF_FE:
	.string "Well done, truly!\n"
	.string "I'm proud of you!\l"
	.string "You deserve all those Symbols.$"
	
BattleFrontier_Mkol_FurnitureText:
	.string "Ah, you have? Excellent!\n"
	.string "I have some furniture for you!\p"
	.string "Come on, don't be shy.\n"
	.string "Take it!$"
	
BattleFrontier_ReceptionGate_Text_ObtainedFurniture:
	.string "{PLAYER} obtained\n"
	.string "some furniture.$"

BattleFrontier_ReceptionGate_Text_FurnitureSent: @ 8266695
	.string "Furniture was sent\n"
	.string "to {PLAYER}'s PC.$"
