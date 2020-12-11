.set LOCALID_GREETER, 1
.set LOCALID_GUIDE, 2
.set LOCALID_SCOTT, 4

BattleFrontier_ReceptionGate_MapScripts:: @ 82661DA
	map_script MAP_SCRIPT_ON_FRAME_TABLE, BattleFrontier_ReceptionGate_OnFrame
	map_script MAP_SCRIPT_ON_TRANSITION, BattleFrontier_ReceptionGate_OnTransition
	.byte 0

BattleFrontier_ReceptionGate_OnTransition: @ 82661E5
	setflag FLAG_LANDMARK_BATTLE_FRONTIER
	end

BattleFrontier_ReceptionGate_OnFrame: @ 82661E9
	map_script_2 VAR_HAS_ENTERED_BATTLE_FRONTIER, 0, BattleFrontier_ReceptionGate_EventScript_FirstTimeEntering
	.2byte 0

BattleFrontier_ReceptionGate_EventScript_FirstTimeEntering:: @ 82661F3
	lockall
	setvar VAR_HAS_ENTERED_BATTLE_FRONTIER, 1
	playse SE_PIN
	applymovement LOCALID_GREETER, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement LOCALID_GREETER, Common_Movement_Delay48
	waitmovement 0
	msgbox BattleFrontier_ReceptionGate_Text_FirstTimeHereThisWay, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, BattleFrontier_ReceptionGate_Movement_PlayerApproachCounter
	waitmovement 0
	goto BattleFrontier_ReceptionGate_EventScript_ScottScene
	end

BattleFrontier_ReceptionGate_EventScript_ScottScene:: @ 8266229
	msgbox BattleFrontier_ReceptionGate_Text_WelcomeToBattleFrontier, MSGBOX_DEFAULT
	msgbox BattleFrontier_ReceptionGate_Text_IssueFrontierPass, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_ReceptionGate_Text_ObtainedFrontierPass
	waitfanfare
	waitmessage
	msgbox BattleFrontier_ReceptionGate_Text_PlacedTrainerCardInFrontierPass, MSGBOX_DEFAULT
	setflag FLAG_SYS_FRONTIER_PASS
	setflag FLAG_SYS_POKEMON_GET
	giveitem ITEM_ACRO_BIKE, 1
	giveitem ITEM_MEGA_BRACELET, 1
	setvar VAR_0x8004, 5
	special GiveFrontierBattlePoints
	msgbox BattleFrontier_ReceptionGate_Text_Apology, MSGBOX_DEFAULT
	msgbox BattleFrontier_ReceptionGate_Text_IfItIsntPlayerYouCame, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_GREETER, Common_Movement_WalkInPlaceFastestUp
	applymovement LOCALID_GUIDE, Common_Movement_WalkInPlaceFastestUp
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestUp
	waitmovement 0
	playse SE_PIN
	applymovement LOCALID_GREETER, Common_Movement_ExclamationMark
	applymovement LOCALID_GUIDE, Common_Movement_ExclamationMark
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement LOCALID_GREETER, BattleFrontier_ReceptionGate_Movement_GreeterFaceScott
	applymovement LOCALID_GUIDE, BattleFrontier_ReceptionGate_Movement_FacilityGuideFaceScott
	applymovement OBJ_EVENT_ID_PLAYER, BattleFrontier_ReceptionGate_Movement_PlayerFaceScott
	applymovement LOCALID_SCOTT, BattleFrontier_ReceptionGate_Movement_ScottEnter
	waitmovement 0
	msgbox BattleFrontier_ReceptionGate_Text_ScottGreatToSeeYouHere, MSGBOX_DEFAULT
	setvar VAR_0x8004, FEMALE
	fadescreen FADE_TO_BLACK
	special StartWallClock
	waitstate
	setflag FLAG_SET_WALL_CLOCK
	delay 30
	msgbox BattleFrontier_ReceptionGate_Text_Thanks, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_SCOTT, BattleFrontier_ReceptionGate_Movement_ScottExit
	waitmovement 0
	removeobject LOCALID_SCOTT
	releaseall
	random 5
	switch VAR_RESULT
	case 0, Pkmn_1_1
	case 1, Pkmn_1_2
	case 2, Pkmn_1_3
	case 3, Pkmn_1_4
	case 4, Pkmn_1_5
	end

BattleFrontier_ReceptionGate_Movement_PlayerApproachCounter: @ 82662D2
	walk_up
	walk_up
	walk_left
	walk_left
	step_end

BattleFrontier_ReceptionGate_Movement_PlayerFaceScott: @ 82662D7
	delay_16
	delay_16
	delay_16
	delay_8
	walk_in_place_fastest_right
	step_end

@ Unused
BattleFrontier_ReceptionGate_Movement_WalkDown: @ 82662DD
	walk_down
	walk_down
	step_end

BattleFrontier_ReceptionGate_Movement_ScottEnter: @ 82662E0
	walk_down
	walk_down
	walk_down
	walk_down
	walk_down
	walk_down
	walk_left
	step_end

BattleFrontier_ReceptionGate_Movement_ScottExit: @ 82662E8
	walk_right
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	step_end

BattleFrontier_ReceptionGate_Movement_GreeterFaceScott: @ 82662F0
	delay_16
	delay_16
	delay_16
	delay_8
	walk_in_place_fastest_right
	step_end

BattleFrontier_ReceptionGate_Movement_FacilityGuideFaceScott: @ 82662F6
	delay_16
	delay_16
	delay_16
	delay_8
	walk_in_place_fastest_left
	step_end

BattleFrontier_ReceptionGate_EventScript_Greeter:: @ 82662FC
	lock
	faceplayer
	msgbox BattleFrontier_ReceptionGate_Text_WelcomeToBattleFrontier, MSGBOX_DEFAULT
	msgbox BattleFrontier_ReceptionGate_Text_EnjoyBattleFrontier, MSGBOX_DEFAULT
	release
	end

BattleFrontier_ReceptionGate_EventScript_FacilityGuide:: @ 8266310
	lock
	faceplayer
	msgbox BattleFrontier_ReceptionGate_Text_YourGuideToFacilities, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout:: @ 8266320
	message BattleFrontier_ReceptionGate_Text_LearnAboutWhich2
	waitmessage
	setvar VAR_0x8004, SCROLL_MULTI_BF_RECEPTIONIST
	special ShowScrollableMultichoice
	waitstate
	switch VAR_RESULT
	case 0, BattleFrontier_ReceptionGate_EventScript_BattleTower
	case 1, BattleFrontier_ReceptionGate_EventScript_BattleDome
	case 2, BattleFrontier_ReceptionGate_EventScript_BattlePalace
	case 3, BattleFrontier_ReceptionGate_EventScript_BattleArena
	case 4, BattleFrontier_ReceptionGate_EventScript_BattleFactory
	case 5, BattleFrontier_ReceptionGate_EventScript_BattlePike
	case 6, BattleFrontier_ReceptionGate_EventScript_BattlePyramid
	case 7, BattleFrontier_ReceptionGate_EventScript_RankingHall
	case 8, BattleFrontier_ReceptionGate_EventScript_ExchangeCorner
	case 9, BattleFrontier_ReceptionGate_EventScript_ExitFacilityGuide
	case MULTI_B_PRESSED, BattleFrontier_ReceptionGate_EventScript_ExitFacilityGuide
	end

BattleFrontier_ReceptionGate_EventScript_BattleTower:: @ 82663AE
	msgbox BattleFrontier_ReceptionGate_Text_BattleTowerInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattleDome:: @ 82663BC
	msgbox BattleFrontier_ReceptionGate_Text_BattleDomeInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattlePalace:: @ 82663CA
	msgbox BattleFrontier_ReceptionGate_Text_BattlePalaceInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattleArena:: @ 82663D8
	msgbox BattleFrontier_ReceptionGate_Text_BattleArenaInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattleFactory:: @ 82663E6
	msgbox BattleFrontier_ReceptionGate_Text_BattleFactoryInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattlePike:: @ 82663F4
	msgbox BattleFrontier_ReceptionGate_Text_BattlePikeInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattlePyramid:: @ 8266402
	msgbox BattleFrontier_ReceptionGate_Text_BattlePyramidInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_RankingHall:: @ 8266410
	msgbox BattleFrontier_ReceptionGate_Text_RankingHallInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ExchangeCorner:: @ 826641E
	msgbox BattleFrontier_ReceptionGate_Text_ExchangeCornerInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFacilityToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ExitFacilityGuide:: @ 826642C
	msgbox BattleFrontier_ReceptionGate_Text_EnjoyBattleFrontier, MSGBOX_DEFAULT
	release
	end

BattleFrontier_ReceptionGate_EventScript_RulesGuide:: @ 8266436
	lock
	faceplayer
	msgbox BattleFrontier_ReceptionGate_Text_YourGuideToRules, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout:: @ 8266446
	message BattleFrontier_ReceptionGate_Text_LearnAboutWhat
	waitmessage
	multichoice 15, 0, MULTI_FRONTIER_RULES, 0
	switch VAR_RESULT
	case 0, BattleFrontier_ReceptionGate_EventScript_LevelMode
	case 1, BattleFrontier_ReceptionGate_EventScript_Level50
	case 2, BattleFrontier_ReceptionGate_EventScript_OpenLevel
	case 3, BattleFrontier_ReceptionGate_EventScript_MonEntry
	case 4, BattleFrontier_ReceptionGate_EventScript_HoldItems
	case 5, BattleFrontier_ReceptionGate_EventScript_ExitRulesGuide
	case MULTI_B_PRESSED, BattleFrontier_ReceptionGate_EventScript_ExitRulesGuide
	end

BattleFrontier_ReceptionGate_EventScript_LevelMode:: @ 82664A4
	msgbox BattleFrontier_ReceptionGate_Text_LevelModeInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_Level50:: @ 82664B2
	msgbox BattleFrontier_ReceptionGate_Text_Level50Info, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_OpenLevel:: @ 82664C0
	msgbox BattleFrontier_ReceptionGate_Text_OpenLevelInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_MonEntry:: @ 82664CE
	msgbox BattleFrontier_ReceptionGate_Text_MonEntryInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_HoldItems:: @ 82664DC
	msgbox BattleFrontier_ReceptionGate_Text_HoldItemsInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseRuleToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ExitRulesGuide:: @ 82664EA
	msgbox BattleFrontier_ReceptionGate_Text_EnjoyBattleFrontier, MSGBOX_DEFAULT
	release
	end

BattleFrontier_ReceptionGate_EventScript_FrontierPassGuide:: @ 82664F4
	lock
	faceplayer
	msgbox BattleFrontier_ReceptionGate_Text_YourGuideToFrontierPass, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFrontierPassInfoToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ChooseFrontierPassInfoToLearnAbout:: @ 8266504
	message BattleFrontier_ReceptionGate_Text_LearnAboutWhich1
	waitmessage
	multichoice 16, 4, MULTI_FRONTIER_PASS_INFO, 0
	switch VAR_RESULT
	case 0, BattleFrontier_ReceptionGate_EventScript_Symbols
	case 1, BattleFrontier_ReceptionGate_EventScript_RecordBattle
	case 2, BattleFrontier_ReceptionGate_EventScript_BattlePoints
	case 3, BattleFrontier_ReceptionGate_EventScript_ExitFrontierPassGuide
	case MULTI_B_PRESSED, BattleFrontier_ReceptionGate_EventScript_ExitFrontierPassGuide
	end

BattleFrontier_ReceptionGate_EventScript_Symbols:: @ 826654C
	msgbox BattleFrontier_ReceptionGate_Text_SymbolsInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFrontierPassInfoToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_RecordBattle:: @ 826655A
	msgbox BattleFrontier_ReceptionGate_Text_RecordedBattleInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFrontierPassInfoToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_BattlePoints:: @ 8266568
	msgbox BattleFrontier_ReceptionGate_Text_BattlePointsInfo, MSGBOX_DEFAULT
	goto BattleFrontier_ReceptionGate_EventScript_ChooseFrontierPassInfoToLearnAbout
	end

BattleFrontier_ReceptionGate_EventScript_ExitFrontierPassGuide:: @ 8266576
	msgbox BattleFrontier_ReceptionGate_Text_EnjoyBattleFrontier, MSGBOX_DEFAULT
	release
	end

BattleFrontier_ReceptionGate_Text_FirstTimeHereThisWay: @ 8266580
	.string "Is it your first time here?\n"
	.string "Please step this way!$"

BattleFrontier_ReceptionGate_Text_WelcomeToBattleFrontier: @ 82665B2
	.string "The front lines of Pokémon battling!\n"
	.string "Welcome to the Battle Frontier!$"

BattleFrontier_ReceptionGate_Text_IssueFrontierPass: @ 82665F7
	.string "Oh, it's you!\n"
	.string "We've been expecting you.\p"
	.string "Professor Birch is running a\n"
	.string "a little late, but he said not to wait.\p"
	.string "First off, let me hand\n"
	.string "you your supplies.\p"
	.string "There's a decent amount,\n"
	.string "but let me draw your attention to a few.\p"
	.string "The Frontier Pass contains\n"
	.string "a map and allows you to store symbols.\p"
	.string "Enjoy the free 5 BP on the house.\p"
	.string "The Gear Bike is perfect for\n"
	.string "getting around more easily.\p"
	.string "You can use the R-button\n"
	.string "to shift gears.\p"
	.string "Finally, the Mega Bracelet will\n"
	.string "allow you to wield Mega Evolution.\p"
	.string "Simply press start\n"
	.string "when selecting a move.\p"
	.string "You'll have to buy\n"
	.string "the Mega Stones yourself, though.\p"
	.string "Here you are. Use them well!$"

BattleFrontier_ReceptionGate_Text_ObtainedFrontierPass: @ 8266676
	.string "{PLAYER} obtained\n"
	.string "the Frontier Pass.$"

BattleFrontier_ReceptionGate_Text_PlacedTrainerCardInFrontierPass: @ 8266695
	.string "{PLAYER} placed their Trainer Card\n"
	.string "in the Frontier Pass.$"
	
BattleFrontier_ReceptionGate_Text_Apology::
	.string "I'm sorry about the wait...\p"
	.string "Mr. Birch has a habit of\n"
	.string "getting too wrapped up in his work.$"

BattleFrontier_ReceptionGate_Text_EnjoyBattleFrontier: @ 82666C6
	.string "We hope you enjoy all that the BATTLE\n"
	.string "FRONTIER has to offer!$"
	.string "I'm sorry about the wait...\p"
	.string "Mr. Birch has a habit of\n"
	.string "getting too wrapped up in his work.$"

BattleFrontier_ReceptionGate_Text_IfItIsntPlayerYouCame: @ 8266703
	.string "???: Sorry, sorry!$"

BattleFrontier_ReceptionGate_Text_ScottGreatToSeeYouHere: @ 8266764
	.string "Birch: {PLAYER}{KUN}!\n"
	.string "Great to see you!\p"
	.string "I just came by to welcome you\n"
	.string "and to drop off some Pokémon.\p"
	.string "To be honest, I just grabbed\n"
	.string "the first four I could find!\p"
	.string "...\p"
	.string "Anyway, here you are.\p"
	.string "You can check their IVS, EVS and stats\n"
	.string "by pressing L, R, and Start.\p"
	.string "Additionally, you can use\n"
	.string "the menu to give them nicknames.\p"
	.string "Anyway, like I said earlier,\n"
	.string "your object is to get gold symbols.\p"
	.string "Seven of them, to be exact.\n"
	.string "One from each Frontier Brain.\p"
	.string "It will be quite difficult,\n"
	.string "but I believe in you.\p"
	.string "Use the points from each\n"
	.string "match to purchase new items and Pokémon.\p"
	.string "However, remember that\n"
	.string "there is more to life than battling.\p"
	.string "If you choose to leave\n"
	.string "the island, use the boat.\p"
	.string "We've arranged for it to\n"
	.string "to travel to three places:\p"
	.string "The Contest Hall, the\n"
	.string "Game Corner, and your home.\p"
	.string "If you can, try to become a\n"
	.string "successful coordinator as well.\p"
	.string "I've left you something helpful\n"
	.string "in your PC to get started with that.\p"
	.string "However, as long as you complete\n"
	.string "your mission, I'll be satisfied.\p"
	.string "If you have any other questions,\n"
	.string "ask someone here at the reception gate.\p"
	.string "Anyway... This is a bit awkward\n"
	.string "but do you have the time?$"

BattleFrontier_ReceptionGate_Text_Thanks::
	.string "Thanks! I'll be seeing\n" 
	.string "you around, then.$"

BattleFrontier_ReceptionGate_Text_YourGuideToFacilities: @ 8266857
	.string "I'm your guide to the various facilities\n"
	.string "here in the BATTLE FRONTIER.$"

BattleFrontier_ReceptionGate_Text_LearnAboutWhich2: @ 826689D
	.string "Which would you like to learn about?$"

BattleFrontier_ReceptionGate_Text_BattleTowerInfo: @ 82668C2
	.string "It is the gigantic tower considered\n"
	.string "to be the BATTLE FRONTIER's symbol.\p"
	.string "There are four kinds of BATTLE ROOMS\n"
	.string "in the tower for SINGLE, DOUBLE, MULTI,\l"
	.string "and LINK MULTI BATTLES.$"

BattleFrontier_ReceptionGate_Text_BattleDomeInfo: @ 826696F
	.string "The BATTLE DOME is the large building\n"
	.string "shaped like a huge egg.\p"
	.string "Events named Battle Tourneys are held\n"
	.string "in this facility.\p"
	.string "The Battle Tourneys are offered in\n"
	.string "two courses--for SINGLE and DOUBLE\l"
	.string "BATTLES.$"

BattleFrontier_ReceptionGate_Text_BattlePalaceInfo: @ 8266A34
	.string "The BATTLE PALACE is the red building\n"
	.string "on the right of the BATTLE FRONTIER.\p"
	.string "There are two kinds of BATTLE HALLS\n"
	.string "for SINGLE and DOUBLE BATTLES.$"

BattleFrontier_ReceptionGate_Text_BattleArenaInfo: @ 8266AC2
	.string "The BATTLE ARENA is the dojo-like\n"
	.string "building at the center-right of\l"
	.string "the BATTLE FRONTIER.\p"
	.string "An event called the Set KO Tourney\n"
	.string "takes place at the BATTLE ARENA.$"

BattleFrontier_ReceptionGate_Text_BattleFactoryInfo: @ 8266B5D
	.string "The BATTLE FACTORY is the large\n"
	.string "building that is the closest to us.\p"
	.string "An event called the Battle Swap\n"
	.string "is conducted there.\p"
	.string "The Battle Swap event is offered in\n"
	.string "two courses for SINGLE and DOUBLE\l"
	.string "BATTLES.$"

BattleFrontier_ReceptionGate_Text_BattlePikeInfo: @ 8266C24
	.string "The BATTLE PIKE is the building shaped\n"
	.string "like a POKéMON at the center-left of\l"
	.string "the BATTLE FRONTIER.\p"
	.string "An event called the Battle Choice\n"
	.string "is conducted there.$"

BattleFrontier_ReceptionGate_Text_BattlePyramidInfo: @ 8266CBB
	.string "The BATTLE PYRAMID is the enormous\n"
	.string "pyramid.\p"
	.string "An event called the Battle Quest\n"
	.string "is conducted there.$"

BattleFrontier_ReceptionGate_Text_RankingHallInfo: @ 8266D1C
	.string "The RANKING HALL is located near\n"
	.string "the BATTLE TOWER.\p"
	.string "There, you may see the most fantastic\n"
	.string "records left by the TRAINERS that\l"
	.string "took on the many challenges of\l"
	.string "the BATTLE FRONTIER.$"

BattleFrontier_ReceptionGate_Text_ExchangeCornerInfo: @ 8266DCB
	.string "The EXCHANGE SERVICE CORNER is near\n"
	.string "the BATTLE TOWER.\p"
	.string "The Battle Points you have earned in\n"
	.string "the BATTLE FRONTIER may be exchanged\l"
	.string "for fabulous prizes there.$"

BattleFrontier_ReceptionGate_Text_YourGuideToRules: @ 8266E66
	.string "I'm your guide to the basic rules that\n"
	.string "are common to all the challenges\l"
	.string "offered by the facilities in the BATTLE\l"
	.string "FRONTIER.$"

BattleFrontier_ReceptionGate_Text_LearnAboutWhat: @ 8266EE0
	.string "What would you like to learn about?$"

BattleFrontier_ReceptionGate_Text_LevelModeInfo: @ 8266F04
	.string "All the challenges at the BATTLE\n"
	.string "FRONTIER's facilities come in\l"
	.string "two courses--Level 50 and Open Level.$"

BattleFrontier_ReceptionGate_Text_Level50Info: @ 8266F69
	.string "The Level 50 course is open to POKéMON\n"
	.string "up to and including Level 50.\p"
	.string "Please keep in mind, however, that\n"
	.string "no TRAINER you face will have any\l"
	.string "POKéMON below Level 50.\p"
	.string "This course is the entry level for\n"
	.string "battles at the BATTLE FRONTIER.\p"
	.string "To begin, we hope you will challenge\n"
	.string "this course.$"

BattleFrontier_ReceptionGate_Text_OpenLevelInfo: @ 8267080
	.string "The Open Level course places no limit\n"
	.string "on the levels of POKéMON entering\l"
	.string "challenges.\p"
	.string "The levels of your opponents will\n"
	.string "be adjusted to match the levels of\l"
	.string "your POKéMON.\p"
	.string "However, no TRAINER you face will\n"
	.string "have any POKéMON below Level 60.$"

BattleFrontier_ReceptionGate_Text_MonEntryInfo: @ 826716A
	.string "Virtually any kind of POKéMON may take\n"
	.string "on the challenges at all facilities.\p"
	.string "EGGS and certain kinds of POKéMON,\n"
	.string "however, are not permitted.\p"
	.string "The numbers of POKéMON required for\n"
	.string "challenges will depend on the facility.\p"
	.string "At all facilities, however, two or more\n"
	.string "of the same kind of POKéMON are not\l"
	.string "permitted.$"

BattleFrontier_ReceptionGate_Text_HoldItemsInfo: @ 8267298
	.string "When entering a challenge at a BATTLE\n"
	.string "FRONTIER facility, POKéMON may not\l"
	.string "be holding the same kind of item.\p"
	.string "Please make sure that all POKéMON\n"
	.string "entering a challenge are holding\l"
	.string "different items.$"

BattleFrontier_ReceptionGate_Text_YourGuideToFrontierPass: @ 8267357
	.string "I'm your guide to the FRONTIER PASS.$"

BattleFrontier_ReceptionGate_Text_LearnAboutWhich1: @ 826737C
	.string "Which would you like to learn about?$"

BattleFrontier_ReceptionGate_Text_SymbolsInfo: @ 82673A1
	.string "There are seven facilities at\n"
	.string "the BATTLE FRONTIER.\p"
	.string "TRAINERS who gain recognition for\n"
	.string "their abilities may be rewarded with\l"
	.string "symbols from each of the facilities.\p"
	.string "To earn a symbol, TRAINERS may need\n"
	.string "to defeat other TRAINERS in a row,\l"
	.string "and may need to win events repeatedly.\p"
	.string "It's certainly not easy to win symbols.\n"
	.string "I wish you the best of luck!$"

BattleFrontier_ReceptionGate_Text_RecordedBattleInfo: @ 82674F3
	.string "It is possible to record one battle\n"
	.string "on your FRONTIER PASS.\p"
	.string "You may record a battle you had with\n"
	.string "a friend or friends.\p"
	.string "Or you may record a battle conducted\n"
	.string "at the BATTLE FRONTIER excluding\l"
	.string "matches at the BATTLE PIKE or\l"
	.string "the BATTLE PYRAMID.\p"
	.string "You may choose to record your match\n"
	.string "at the end of a battle.$"

BattleFrontier_ReceptionGate_Text_BattlePointsInfo: @ 826761C
	.string "Battle Points are rewards given to\n"
	.string "TRAINERS who battled outstandingly\l"
	.string "at the BATTLE FRONTIER.\p"
	.string "You may trade in your Battle Points\n"
	.string "for prizes at the EXCHANGE SERVICE\l"
	.string "CORNER.$"
	
	//givecustommon species:req, level:req, item, ball, nature, abilityNum, hpEv, atkEv, defEv, speedEv, spAtkEv, spDefEv, hpIv, atkIv, defIv, speedIv, spAtkIv, spDefIv, move1, move2, move3, move4, isShiny
Pkmn_1_1::
	givecustommon SPECIES_ARCHEOPS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_NAIVE, 0, 0, 252, 0, 252, 0, 0, 0, 31, 0, 31, 31, 0, MOVE_HEAD_SMASH, MOVE_ENDEAVOR, MOVE_STEALTH_ROCK, MOVE_TAUNT, 0
	givecustommon SPECIES_MILOTIC, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CALM, 0, 252, 0, 108, 0, 0, 148, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_RECOVER, MOVE_TOXIC, MOVE_REFRESH, 0
	random 5
	switch VAR_RESULT
	case 0, Pkmn_2_1
	case 1, Pkmn_2_2
	case 2, Pkmn_2_3
	case 3, Pkmn_2_4
	case 4, Pkmn_2_5
end
Pkmn_1_2::
	givecustommon SPECIES_YANMEGA, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_BUG_BUZZ, MOVE_AIR_SLASH, MOVE_U_TURN, MOVE_PSYCHIC, 0
	givecustommon SPECIES_GIGALITH, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CALM, 1, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_TOXIC, 0
	random 5
	switch VAR_RESULT
	case 0, Pkmn_2_1
	case 1, Pkmn_2_2
	case 2, Pkmn_2_3
	case 3, Pkmn_2_4
	case 4, Pkmn_2_5
end
Pkmn_1_3::
	givecustommon SPECIES_ARCANINE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 1, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_FLARE_BLITZ, MOVE_WILD_CHARGE, MOVE_MORNING_SUN, MOVE_EXTREME_SPEED, 0
	givecustommon SPECIES_SLOWBRO, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 2, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_PSYSHOCK, MOVE_SLACK_OFF, MOVE_ICE_BEAM, 0
	random 5
	switch VAR_RESULT
	case 0, Pkmn_2_1
	case 1, Pkmn_2_2
	case 2, Pkmn_2_3
	case 3, Pkmn_2_4
	case 4, Pkmn_2_5
end
Pkmn_1_4::
	givecustommon SPECIES_SALAZZLE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 2, 8, 0, 0, 252, 248, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_SLUDGE_WAVE, MOVE_DRAGON_PULSE, 0
	givecustommon SPECIES_ESPEON, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_PSYCHIC, MOVE_SHADOW_BALL, MOVE_MORNING_SUN, 0
	random 5
	switch VAR_RESULT
	case 0, Pkmn_2_1
	case 1, Pkmn_2_2
	case 2, Pkmn_2_3
	case 3, Pkmn_2_4
	case 4, Pkmn_2_5
end
Pkmn_1_5::
	givecustommon SPECIES_METAGROSS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 0, 76, 252, 0, 180, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_METEOR_MASH, MOVE_EARTHQUAKE, MOVE_EXPLOSION, 0
	givecustommon SPECIES_SNORLAX, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CAREFUL, 1, 188, 0, 128, 0, 0, 192, 31, 31, 31, 31, 31, 31, MOVE_CURSE, MOVE_BODY_SLAM, MOVE_REST, MOVE_SLEEP_TALK, 0
	random 5
	switch VAR_RESULT
	case 0, Pkmn_2_1
	case 1, Pkmn_2_2
	case 2, Pkmn_2_3
	case 3, Pkmn_2_4
	case 4, Pkmn_2_5
end



Pkmn_2_1::
	givecustommon SPECIES_CHANDELURE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_CALM_MIND, MOVE_SHADOW_BALL, MOVE_FLAMETHROWER, 0
	givecustommon SPECIES_HIPPOWDON, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_IMPISH, 0, 252, 0, 80, 0, 0, 176, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_SLACK_OFF, MOVE_TOXIC, 0
end
Pkmn_2_2::
	givecustommon SPECIES_CRAWDAUNT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_CRABHAMMER, MOVE_KNOCK_OFF, MOVE_AQUA_JET, 0
	givecustommon SPECIES_SYLVEON, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 2, 252, 0, 252, 0, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_HYPER_VOICE, MOVE_WISH, MOVE_PROTECT, MOVE_HEAL_BELL, 0
end
Pkmn_2_3::
	givecustommon SPECIES_TOGEKISS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 1, 252, 0, 0, 4, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_THUNDER_WAVE, MOVE_AIR_SLASH, MOVE_ROOST, 0
	givecustommon SPECIES_FROSLASS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 2, 4, 0, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_TAUNT, MOVE_ICY_WIND, MOVE_DESTINY_BOND, 0
end
Pkmn_2_4::
	givecustommon SPECIES_HAXORUS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_OUTRAGE, MOVE_EARTHQUAKE, MOVE_POISON_JAB, 0
	givecustommon SPECIES_TENTACRUEL, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 252, 0, 112, 114, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_RAPID_SPIN, MOVE_HAZE, MOVE_TOXIC_SPIKES, 0
end
Pkmn_2_5::
	givecustommon SPECIES_SCIZOR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 1, 164, 252, 0, 92, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BULLET_PUNCH, MOVE_U_TURN, MOVE_SUPERPOWER, MOVE_KNOCK_OFF, 0
	givecustommon SPECIES_CHESNAUGHT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_IMPISH, 2, 244, 0, 252, 12, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_WOOD_HAMMER, MOVE_DRAIN_PUNCH, MOVE_SYNTHESIS, 0
end

