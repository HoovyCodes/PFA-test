.set LOCALID_SUDOWOODO, 14

BattleFrontier_OutsideEast_MapScripts:: @ 8242C04
	map_script MAP_SCRIPT_ON_RESUME, BattleFrontier_OutsideEast_OnResume
	map_script MAP_SCRIPT_ON_TRANSITION, BattleFrontier_OutsideEast_OnTransition
	.byte 0

BattleFrontier_OutsideEast_OnResume: @ 8242C0F
	call BFEAST_EventScript_SetWeather
	end

BattleFrontier_OutsideEast_OnTransition: @ 8242C2D
	setvar VAR_BRAVO_TRAINER_BATTLE_TOWER_ON, 0
	setflag FLAG_HIDE_BATTLE_TOWER_REPORTER
	call BFEAST_EventScript_SetWeather
	call_if_unset FLAG_DEFEATED_SUDOWOODO, BattleFrontier_OutsideEast_EventScript_ShowSudowoodo
	end

BattleFrontier_OutsideEast_EventScript_ShowSudowoodo:: @ 8242C3F
	clearflag FLAG_HIDE_BATTLE_FRONTIER_SUDOWOODO
	return

BattleFrontier_OutsideEast_EventScript_BattleTowerSign:: @ 8242C43
	msgbox BattleFrontier_OutsideEast_Text_BattleTowerSign, MSGBOX_SIGN
	end

BattleFrontier_OutsideEast_EventScript_BattlePalaceSign:: @ 8242C4C
	msgbox BattleFrontier_OutsideEast_Text_BattlePalaceSign, MSGBOX_SIGN
	end

BattleFrontier_OutsideEast_EventScript_BattleArenaSign:: @ 8242C55
	msgbox BattleFrontier_OutsideEast_Text_BattleArenaSign, MSGBOX_SIGN
	end

BattleFrontier_OutsideEast_EventScript_BattlePyramidSign:: @ 8242C5E
	msgbox BattleFrontier_OutsideEast_Text_BattlePyramidSign, MSGBOX_SIGN
	end

BattleFrontier_OutsideEast_EventScript_NinjaBoy:: @ 8242C67
	msgbox BattleFrontier_OutsideEast_Text_BattleTowerFeelsSpecial, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Man1:: @ 8242C70
	msgbox BattleFrontier_OutsideEast_Text_ConquerLeagueAndFrontier, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Hiker:: @ 8242C79
	msgbox BattleFrontier_OutsideEast_Text_PyramidTooHarsh, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_HexManiac:: @ 8242C82
	msgbox BattleFrontier_OutsideEast_Text_ThriveInDarkness, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_BlackBelt1:: @ 8242C8B
	msgbox BattleFrontier_OutsideEast_Text_PutTogetherUltimateTeam, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Cook:: @ 8242C94
	lock
	msgbox BattleFrontier_OutsideEast_Text_BelieveInYouBuddy, MSGBOX_DEFAULT
	release
	end

BattleFrontier_OutsideEast_EventScript_Zigzagoon:: @ 8242C9F
	lock
	faceplayer
	waitse
	playmoncry SPECIES_ZIGZAGOON, 0
	msgbox BattleFrontier_OutsideEast_Text_ZigzagoonLooksVacant, MSGBOX_DEFAULT
	waitmoncry
	release
	end

BattleFrontier_OutsideEast_EventScript_RichBoy:: @ 8242CB2
	msgbox BattleFrontier_OutsideEast_Text_PeopleCallMeBusybody, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_ExpertF:: @ 8242CBB
	msgbox BattleFrontier_OutsideEast_Text_OnceBeatGymLeader, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_TriathleteF:: @ 8242CC4
	msgbox BattleFrontier_OutsideEast_Text_FastOnBikeAndBattles, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Twin:: @ 8242CCD
	msgbox BattleFrontier_OutsideEast_Text_BetterThanDaddyAtPokemon, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Man2:: @ 8242CD6
	lock
	msgbox BattleFrontier_OutsideEast_Text_GoRackUpSomeWinsForDaddy, MSGBOX_DEFAULT
	release
	end

BattleFrontier_OutsideEast_EventScript_TriathleteM:: @ 8242CE1
	msgbox BattleFrontier_OutsideEast_Text_DidScottBringYouHere, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Sudowoodo:: @ 8242CEA
	lock
	faceplayer
	waitse
	playse SE_SUDOWOODO_SHAKE
	applymovement LOCALID_SUDOWOODO, BattleFrontier_OutsideEast_Movement_SudowoodoShake
	waitmovement 0
	release
	end

BattleFrontier_OutsideEast_EventScript_WaterSudowoodo:: @ 8242CFC
	lock
	faceplayer
	special DoWateringBerryTreeAnim
	waitstate
	waitse
	playse SE_SUDOWOODO_SHAKE
	applymovement LOCALID_SUDOWOODO, BattleFrontier_OutsideEast_Movement_SudowoodoShake
	waitmovement 0
	msgbox gText_Sudowoodo_Attacked, MSGBOX_DEFAULT
	closemessage
	waitse
	playmoncry SPECIES_SUDOWOODO, 2
	delay 40
	waitmoncry
	setvar VAR_LAST_TALKED, LOCALID_SUDOWOODO
	setwildbattle SPECIES_SUDOWOODO, 40, ITEM_NONE
	setflag FLAG_SYS_CTRL_OBJ_DELETE
	dowildbattle
	clearflag FLAG_SYS_CTRL_OBJ_DELETE
	specialvar VAR_RESULT, GetBattleOutcome
	compare VAR_RESULT, B_OUTCOME_WON
	goto_if_eq BattleFrontier_OutsideEast_EventScript_DefeatedSudowoodo
	compare VAR_RESULT, B_OUTCOME_RAN
	goto_if_eq BattleFrontier_OutsideEast_EventScript_DefeatedSudowoodo
	compare VAR_RESULT, B_OUTCOME_PLAYER_TELEPORTED
	goto_if_eq BattleFrontier_OutsideEast_EventScript_DefeatedSudowoodo
	setflag FLAG_DEFEATED_SUDOWOODO
	release
	end

BattleFrontier_OutsideEast_EventScript_DefeatedSudowoodo:: @ 8242D60
	setflag FLAG_DEFEATED_SUDOWOODO
	goto Common_EventScript_RemoveStaticPokemon
	end

BattleFrontier_OutsideEast_Movement_SudowoodoShake: @ 8242D69
	face_right
	delay_8
	face_down
	delay_8
	face_left
	delay_8
	face_down
	delay_8
	face_right
	delay_8
	face_down
	delay_8
	face_left
	delay_8
	face_down
	step_end

BattleFrontier_OutsideEast_EventScript_Maniac1:: @ 8242D79
	msgbox BattleFrontier_OutsideEast_Text_HeardPrettyGirlAtBattleArena, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Girl:: @ 8242D82
	msgbox BattleFrontier_OutsideEast_Text_SometimesImportantOldManInThere, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_PsychicM:: @ 8242D8B
	msgbox BattleFrontier_OutsideEast_Text_LegendOfBattlePyramid, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Man3:: @ 8242D94
	msgbox BattleFrontier_OutsideEast_Text_GotWipedOut, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Woman1:: @ 8242D9D
	msgbox BattleFrontier_OutsideEast_Text_ToughTrainerInBattleTower, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Woman2:: @ 8242DA6
	msgbox BattleFrontier_OutsideEast_Text_EnoughBattlePointsForDoll, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_BlackBelt2:: @ 8242DAF
	msgbox BattleFrontier_OutsideEast_Text_LikeToHaveNameRecordedHere, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_Maniac2:: @ 8242DB8
	lock
	msgbox BattleFrontier_OutsideEast_Text_CanDoAnythingWithYou, MSGBOX_DEFAULT
	release
	end

BattleFrontier_OutsideEast_EventScript_Woman3:: @ 8242DC3
	lock
	msgbox BattleFrontier_OutsideEast_Text_PowerOfOurLoveWillOvercome, MSGBOX_DEFAULT
	release
	end

BattleFrontier_OutsideEast_EventScript_RankingHallSign:: @ 8242DCE
	msgbox BattleFrontier_OutsideEast_Text_RankingHallSign, MSGBOX_SIGN
	end

BattleFrontier_OutsideEast_EventScript_ExchangeCornerSign:: @ 8242DD7
	msgbox BattleFrontier_OutsideEast_Text_ExchangeCornerSign, MSGBOX_SIGN
	end

BattleFrontier_OutsideEast_EventScript_Gentleman:: @ 8242DE0
	msgbox BattleFrontier_OutsideEast_Text_FrontierNotExclusivelyForToughTrainers, MSGBOX_NPC
	end

BattleFrontier_OutsideEast_EventScript_OldWoman:: @ 8242DE9
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_SUDOWOODO, BattleFrontier_OutsideEast_EventScript_OldWomanSudowoodoGone
	msgbox BattleFrontier_OutsideEast_Text_OddTreeHereSeemsToWiggle, MSGBOX_DEFAULT
	release
	end

BattleFrontier_OutsideEast_EventScript_OldWomanSudowoodoGone:: @ 8242DFE
	msgbox BattleFrontier_OutsideEast_Text_OnceAnOddTreePastHere, MSGBOX_DEFAULT
	release
	end

BattleFrontier_OutsideEast_EventScript_Camper:: @ 8242E08
	msgbox BattleFrontier_OutsideEast_Text_StickyMonWithLongTail, MSGBOX_NPC
	end

BFEAST_EventScript_SetWeather:
	dotimebasedevents
	goto_if_set FLAG_UNUSED_0x923, MWA2
	random 100
	switch VAR_RESULT
	case 0, setregular2
    case 1, setregular2
    case 2, setregular2
    case 3, setregular2
    case 4, setregular2
    case 5, setregular2
    case 6, setregular2
    case 7, setregular2
    case 8, setregular2
    case 9, setregular2
    case 10, setregular2
    case 11, setregular2
    case 12, setregular2
    case 13, setregular2
    case 14, setregular2
    case 15, setregular2
    case 16, setregular2
    case 17, setregular2
    case 18, setregular2
    case 19, setregular2
    case 20, setregular2
    case 21, setregular2
    case 22, setregular2
    case 23, setregular2
    case 24, setregular2
    case 25, setregular2
    case 26, setregular2
    case 27, setregular2
    case 28, setregular2
    case 29, setregular2
    case 30, setregular2
    case 31, setregular2
    case 32, setregular2
    case 33, setregular2
    case 34, setregular2
    case 35, setregular2
    case 36, setregular2
    case 37, setregular2
    case 38, setregular2
    case 39, setregular2
    case 40, setregular2
    case 41, setregular2
    case 42, setregular2
    case 43, setregular2
    case 44, setregular2
    case 45, setregular2
    case 46, setregular2
    case 47, setregular2
    case 48, setregular2
    case 49, setregular2
    case 50, setregular2
    case 51, setregular2
    case 52, setregular2
    case 53, setregular2
    case 54, setregular2
    case 55, setregular2
    case 56, setregular2
    case 57, setregular2
    case 58, setregular2
    case 59, setregular2
    case 60, setregular2
    case 61, setregular2
    case 62, setregular2
    case 63, setregular2
    case 64, setregular2
    case 65, setregular2
    case 66, setregular2
    case 67, setregular2
    case 68, setregular2
    case 69, setregular2
    case 70, setrain2
    case 71, setrain2
    case 72, setrain2
    case 73, setrain2
    case 74, setrain2
    case 75, setrain2
    case 76, setrain2
    case 77, setrain2
    case 78, setrain2
    case 79, setrain2
    case 80, setrain2
    case 81, setrain2
    case 82, setrain2
    case 83, setrain2
    case 84, setrain2
    case 85, setthunderstorm2
    case 86, setthunderstorm2
    case 87, setthunderstorm2
    case 88, setthunderstorm2
    case 89, setthunderstorm2
    case 90, setsnow2
    case 91, setsnow2
    case 92, setsnow2
    case 93, setsnow2
    case 94, setsnow2
    case 95, setsnow2
    case 96, setsnow2
    case 97, setsnow2
    case 98, setsnow2
    case 99, setsnow2
	end

setsnow2::
	setvar VAR_UNUSED_0x40F7, 0
	setflag FLAG_UNUSED_0x923
	call MWA2
	end

setrain2::
	setvar VAR_UNUSED_0x40F7, 1
	setflag FLAG_UNUSED_0x923
	call MWA2
	end

setthunderstorm2::
	setvar VAR_UNUSED_0x40F7, 2
	setflag FLAG_UNUSED_0x923
	call MWA2
	end

setregular2::
	setvar VAR_UNUSED_0x40F7, 3
	setflag FLAG_UNUSED_0x923
	call MWA2
	end

MWA2::
	compare VAR_UNUSED_0x40F7, 0
	goto_if_eq makesnow2
	compare VAR_UNUSED_0x40F7, 1
	goto_if_eq makerain2
	compare VAR_UNUSED_0x40F7, 2
	goto_if_eq makethunderstorm2
	goto makeregular2
	end

makesnow2:
	setweather WEATHER_SNOW
	doweather
	end

makerain2:
	setweather WEATHER_RAIN
	doweather
	end

makethunderstorm2:
	setweather WEATHER_RAIN_THUNDERSTORM
	doweather
	end

makeregular2:
	setweather WEATHER_SUNNY
	doweather
	end

BattleFrontier_OutsideEast_Text_BattleTowerSign: @ 8242E11
	.string "This is the Battle Tower!\n"
	.string "Keep the win streak as the toughest\l"
	.string "Trainer!$"

BattleFrontier_OutsideEast_Text_BattlePalaceSign: @ 8242E58
	.string "This is the Battle Palace!\n"
	.string "Keep your eyes on Pokémon battles!$"

BattleFrontier_OutsideEast_Text_BattleArenaSign: @ 8242E96
	.string "This is the Battle Arena!\n"
	.string "Let the toughest teams gather!$"

BattleFrontier_OutsideEast_Text_BattlePyramidSign: @ 8242ECF
	.string "This is the Battle Pyramid!\n"
	.string "Advance through the Battle Quest!$"

BattleFrontier_OutsideEast_Text_RankingHallSign: @ 8242F0D
	.string "Battle Frontier Ranking Hall:\n"
	.string "Set your sights on new records!$"

BattleFrontier_OutsideEast_Text_ExchangeCornerSign: @ 8242F4A
	.string "Battle Point Exchange Corner:\n"
	.string "Exchange your Battle Points!$"

BattleFrontier_OutsideEast_Text_BattleTowerFeelsSpecial: @ 8242F8C
	.string "Wow!\n"
	.string "It's huge!\p"
	.string "The Battle Tower feels special.\n"
	.string "It's different from the others.$"

BattleFrontier_OutsideEast_Text_ConquerLeagueAndFrontier: @ 8242FDC
	.string "My grand ambition is to conquer both\n"
	.string "the Battle Frontier and the Pokémon\l"
	.string "League.\p"
	.string "And if my dream comes true…\p"
	.string "I… I'm going to ask Mimi next door\n"
	.string "if she will be friends with me!$"

BattleFrontier_OutsideEast_Text_PyramidTooHarsh: @ 824308C
	.string "The Battle Pyramid's too harsh!\n"
	.string "I just can't make it to the top!\p"
	.string "Since I'm out of options, maybe I can\n"
	.string "climb the outside…$"

BattleFrontier_OutsideEast_Text_ThriveInDarkness: @ 8243106
	.string "I thrive in darkness…\n"
	.string "Yes… What is worthy of me?\l"
	.string "None other than the Battle Pyramid…\p"
	.string "What say you to wandering in darkness\n"
	.string "and in utter and total desperation?$"

BattleFrontier_OutsideEast_Text_PutTogetherUltimateTeam: @ 82431A5
	.string "I didn't sleep for a week, but then\n"
	.string "I put together the ultimate team!\p"
	.string "I can't see myself losing, no joke.\n"
	.string "We're storming the Battle Arena.$"

BattleFrontier_OutsideEast_Text_DidScottBringYouHere: @ 8243230
	.string "Did Scott bring you here, too?\n"
	.string "What is it with that guy?\p"
	.string "It sounds like he really does know\n"
	.string "how to spot talented Trainers, but…\p"
	.string "I've never seen him battling in person\n"
	.string "ever.$"

BattleFrontier_OutsideEast_Text_BelieveInYouBuddy: @ 82432DD
	.string "Zigg!\n"
	.string "I believe in you, little buddy!\p"
	.string "I'll make my little Zigg any favorite\n"
	.string "tasty treats you like if you win!$"

BattleFrontier_OutsideEast_Text_ZigzagoonLooksVacant: @ 824334B
	.string "Zigzagoon looks vacant…$"

BattleFrontier_OutsideEast_Text_PeopleCallMeBusybody: @ 8243363
	.string "People call me a busybody,\n"
	.string "but I can't help it.\p"
	.string "Your hat's on crooked!\n"
	.string "Oh, no, trash on the ground!\l"
	.string "Oops, it's almost dinnertime!\p"
	.string "I don't know if I can stand to just\n"
	.string "watch at the Battle Palace…$"

BattleFrontier_OutsideEast_Text_OnceBeatGymLeader: @ 8243425
	.string "I may not look that impressive now,\n"
	.string "but I once beat a Gym Leader.\p"
	.string "Who knows, maybe I should give it\n"
	.string "another shot at glory.$"

BattleFrontier_OutsideEast_Text_FastOnBikeAndBattles: @ 82434A0
	.string "I'm fast on my Bike, and that goes for\n"
	.string "the way I battle, too.\p"
	.string "I win matches in the blink of\n"
	.string "an eye!$"

BattleFrontier_OutsideEast_Text_BetterThanDaddyAtPokemon: @ 8243504
	.string "I'm better than my daddy\n"
	.string "at Pokémon.$"

BattleFrontier_OutsideEast_Text_GoRackUpSomeWinsForDaddy: @ 8243529
	.string "Go on, my baby sweetie!\n"
	.string "Go rack up some wins for Daddy!\p"
	.string "You're just like your mother,\n"
	.string "so you'll be dominating!$"

BattleFrontier_OutsideEast_Text_HeardPrettyGirlAtBattleArena: @ 8243598
	.string "It wasn't easy getting here,\n"
	.string "but I'd heard about this knockout\l"
	.string "pretty girl at the Battle Arena.\p"
	.string "Instead of her, do you know what\n"
	.string "I found?\p"
	.string "A whole teeming mob of sweaty,\n"
	.string "stinky, and primitive martial artists!$"

BattleFrontier_OutsideEast_Text_SometimesImportantOldManInThere: @ 8243668
	.string "I sometimes see this really important-\n"
	.string "looking old man going in there.\p"
	.string "He has these really awesome Pokémon.\n"
	.string "He seems really nice, though.$"

BattleFrontier_OutsideEast_Text_LegendOfBattlePyramid: @ 82436F2
	.string "Do you know it?\n"
	.string "The legend of the Battle Pyramid?\p"
	.string "When there comes a confident Trainer\n"
	.string "reaching for the golden pinnacle,\l"
	.string "there shall appear a man among men.\p"
	.string "Don't know that legend?\n"
	.string "Well, of course not!\l"
	.string "I just made it up!\p"
	.string "What's it supposed to mean?\n"
	.string "That, my friend, I can't say!$"

BattleFrontier_OutsideEast_Text_GotWipedOut: @ 8243809
	.string "Man! Oh man!\n"
	.string "I've never lost once before!\p"
	.string "But I got wiped out with no saving\n"
	.string "grace at all!\p"
	.string "And then I'm told I don't have any\n"
	.string "talent?! Man!$"

BattleFrontier_OutsideEast_Text_ToughTrainerInBattleTower: @ 8243895
	.string "This guy ran into a horribly tough\n"
	.string "Trainer while he was on the Battle\l"
	.string "Tower challenge.\p"
	.string "Now look at him…\p"
	.string "You need to be cautious if you ever\n"
	.string "decide to go to the Battle Tower.$"

BattleFrontier_OutsideEast_Text_EnoughBattlePointsForDoll: @ 8243943
	.string "Yes!\n"
	.string "I've finally got enough Battle Points!\p"
	.string "I guess I'll trade for more\n"
	.string "{POKEBLOCK} ingredients!$"

BattleFrontier_OutsideEast_Text_LikeToHaveNameRecordedHere: @ 82439A0
	.string "Oh, yeah, okay!\n"
	.string "So this is the Ranking Hall!\p"
	.string "I'd like to go down in history as\n"
	.string "a super champ and have my name\l"
	.string "recorded here for posterity.$"

BattleFrontier_OutsideEast_Text_CanDoAnythingWithYou: @ 8243A2B
	.string "With you by my side, I can do anything.$"

BattleFrontier_OutsideEast_Text_PowerOfOurLoveWillOvercome: @ 8243A53
	.string "Ooh, darling, you are so wonderful!\p"
	.string "Ooh, I just can't wait anymore!\p"
	.string "Let's go to a Multi Battle Room\n"
	.string "right this instant!\p"
	.string "If we get together in the Battle Salon,\n"
	.string "the power of our love will overcome\l"
	.string "everyone we meet.\p"
	.string "Why, before us, darling, everything\n"
	.string "will topple like dominoes!$"

BattleFrontier_OutsideEast_Text_FrontierNotExclusivelyForToughTrainers: @ 8243B68
	.string "The Battle Trainers isn't exclusively\n"
	.string "for tough Trainers.\p"
	.string "Many people with special abilities\n"
	.string "have been invited, it seems.\p"
	.string "That man Scott…\p"
	.string "He may have built this place to serve\n"
	.string "a bigger objective…$"

BattleFrontier_OutsideEast_Text_OddTreeHereSeemsToWiggle: @ 8243C2C
	.string "Did you know, young trainer?\n"
	.string "There are Secret Bases here!\p"
	.string "You don't even need Secret\n"
	.string "Power to access them.\p"
	.string "I would claim it, but the\n"
	.string "one nearby is open concept.\l"
	.string "I'm not a fan of that.$"

BattleFrontier_OutsideEast_Text_OnceAnOddTreePastHere: @ 8243CA3
	.string "Did you know, young trainer?\n"
	.string "There are Secret Bases here!\p"
	.string "You don't even need Secret\n"
	.string "Power to access them.\p"
	.string "I would claim it, but the\n"
	.string "one nearby is open concept.\l"
	.string "I'm not a fan of that.$"

BattleFrontier_OutsideEast_Text_StickyMonWithLongTail: @ 8243D0B
	.string "Hey, did you know?\n"
	.string "There are Secret Bases here!\p"
	.string "You don't even need Secret\n"
	.string "Power to access them.\p"
	.string "I'd take the one nearby,\n"
	.string "but I don't like rooms.\l"
	.string "Open concept all the way, baby!$"
