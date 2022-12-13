.set LOCALID_RIVAL, 1

LittlerootTown_BrendansHouse_2F_MapScripts:: @ 81F83E3
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_BrendansHouse_2F_OnTransition
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_BrendansHouse_2F_OnWarp
	.byte 0

LittlerootTown_BrendansHouse_2F_OnTransition: @ 81F83EE
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F
	call SecretBase_EventScript_SetDecorationFlags
	setvar VAR_SECRET_BASE_INITIALIZED, 0
	end
	
LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos:: @ 81F841A
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
	compare VAR_BIRCH_LAB_STATE, 2
	goto_if_ge LittlerootTown_BrendansHouse_2F_EventScript_Ret
	goto LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos

LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos:: @ 81F8433
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq LittlerootTown_BrendansHouse_2F_EventScript_Ret
	compare VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2
	goto_if_ge LittlerootTown_MaysHouse_2F_EventScript_Ret  @ Odd that the MaysHouse equivalent was used here instead
	setobjectxyperm LOCALID_RIVAL, 0, 2
	setobjectmovementtype LOCALID_RIVAL, MOVEMENT_TYPE_FACE_UP
	return

LittlerootTown_BrendansHouse_2F_EventScript_Ret:: @ 81F8456
	return

LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan:: @ 81F8457
	checkplayergender
	compare VAR_RESULT, FEMALE
	goto_if_eq LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan
	return

LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan:: @ 81F8464
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
	return

LittlerootTown_BrendansHouse_2F_OnWarp: @ 81F846A
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor
	.2byte 0

LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor:: @ 81F8474
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq SecretBase_EventScript_InitDecorations
	end

LittlerootTown_BrendansHouse_2F_EventScript_RivalsPokeBall:: @ 81F8481
	lockall
	compare VAR_LITTLEROOT_RIVAL_STATE, 2
	goto_if_eq LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan:: @ 81F8497
	delay 10
	addobject LOCALID_RIVAL
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters
	waitmovement 0
	playse SE_PIN
	applymovement LOCALID_RIVAL, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement LOCALID_RIVAL, Common_Movement_Delay48
	waitmovement 0
	delay 10
	playbgm MUS_ENCOUNTER_BRENDAN, 1
	compare VAR_FACING, DIR_NORTH
	call_if_eq LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth
	compare VAR_FACING, DIR_SOUTH
	call_if_eq LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth
	compare VAR_FACING, DIR_WEST
	call_if_eq LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest
	compare VAR_FACING, DIR_EAST
	call_if_eq LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
	savebgm MUS_DUMMY
	fadedefaultbgm
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth:: @ 81F8507
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth:: @ 81F8536
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest:: @ 81F8565
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast:: @ 81F8594
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestUp
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters: @ 81F85BC
	walk_down
	walk_down
	walk_in_place_fastest_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth: @ 81F85C0
	walk_left
	walk_left
	walk_down
	walk_down
	walk_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth: @ 81F85C6
	walk_up
	walk_up
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_fastest_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth: @ 81F85CF
	delay_16
	walk_in_place_fastest_up
	delay_16
	delay_16
	delay_16
	delay_16
	walk_in_place_fastest_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth: @ 81F85D7
	walk_left
	walk_left
	walk_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth: @ 81F85DB
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_fastest_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth: @ 81F85E2
	delay_16
	walk_in_place_fastest_up
	delay_16
	delay_16
	walk_in_place_fastest_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest: @ 81F85E8
	walk_left
	walk_left
	walk_down
	walk_in_place_fastest_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest: @ 81F85ED
	walk_up
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_fastest_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest: @ 81F85F6
	delay_8
	delay_16
	walk_in_place_fastest_up
	delay_16
	delay_16
	walk_in_place_fastest_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast: @ 81F85FD
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_fastest_down
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast: @ 81F8604
	walk_up
	walk_left
	walk_left
	walk_in_place_fastest_up
	step_end

@ Unused, the player is already facing this direction so its unneeded
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanEast: @ 81F8609
	delay_16
	delay_16
	walk_in_place_fastest_left
	step_end

LittlerootTown_BrendansHouse_2F_EventScript_PC:: @ 81F860D
	lockall
	goto LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC
	end

LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC:: @ 81F8626
	setvar VAR_0x8004, 1
	special DoPCTurnOnEffect
	playse SE_PC_ON
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
	special BedroomPC
	waitstate
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_TurnOffPlayerPC:: @ 81F863F
	setvar VAR_0x8004, 1
	playse SE_PC_OFF
	special DoPCTurnOffEffect
	releaseall
	end
LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC:: @ 81F864C
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
	releaseall
	end

PlayersHouse_2F_EventScript_Notebook:: @ 81F8656
	msgbox PlayersHouse_2F_Text_Notebook, MSGBOX_SIGN
	end

PlayersHouse_2F_EventScript_GameCube::
	lock
	msgbox TTV_Q, MSGBOX_DEFAULT
	scrollingmultichoice 12, 2, 3, 3, TRUE
	switch VAR_RESULT
	case 0, PH_Fight
	case 1, PH_Record
	case MULTI_B_PRESSED, PH_QUIT
	release
	end

PH_Fight::
special HealPlayerParty
special SavePlayerParty
playbgm MUS_ENCOUNTER_INTERVIEWER, 1
msgbox TTV_ChooseFighter, MSGBOX_DEFAULT
scrollingmultichoice 13, 2, 2, 5, TRUE
switch VAR_RESULT
	case 0, FightRed
    case 1, FightBlue
	case 2, FightLance
    case 3, FightSteven
	case 4, FightWallace
    case 5, FightCynthia
	case 6, FightAlder
	case 7, FightIris
	case 8, FightDiantha
	case 9, FightHau
	case 10, FightKukui
	case MULTI_B_PRESSED, PH_QUIT
	savebgm MUS_DUMMY
	fadedefaultbgm
	release
	special HealPlayerParty
	end

PH_Record::
	msgbox TTV_Recordintro, MSGBOX_DEFAULT
	call_if_set TRAINER_SAWYER_1+TRAINER_FLAGS_START, RedD
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_1+TRAINER_FLAGS_START, BlueD
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_2+TRAINER_FLAGS_START, LanceD
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_3+TRAINER_FLAGS_START, StevenD
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_4+TRAINER_FLAGS_START, WallaceD
	call_if_set TRAINER_GRUNT_SEAFLOOR_CAVERN_1+TRAINER_FLAGS_START, CynthiaD
	call_if_set TRAINER_GRUNT_SEAFLOOR_CAVERN_2+TRAINER_FLAGS_START, AlderD
	call_if_set TRAINER_MARCEL+TRAINER_FLAGS_START, IrisD
	call_if_set TRAINER_GRUNT_SEAFLOOR_CAVERN_3+TRAINER_FLAGS_START, DianthaD
	call_if_set TRAINER_GABRIELLE_1+TRAINER_FLAGS_START, HauD
	call_if_set TRAINER_GRUNT_PETALBURG_WOODS+TRAINER_FLAGS_START, KukuiD
	msgbox TTV_RecordOutro, MSGBOX_DEFAULT
	scrollingmultichoice 12, 2, 3, 3, TRUE
	switch VAR_RESULT
	case 0, PH_Fight
	case 1, PH_Record
	case MULTI_B_PRESSED, PH_QUIT
	release
	end

RedD::
	msgbox Defeated_Red, MSGBOX_DEFAULT
	return
BlueD::
	msgbox Defeated_Blue, MSGBOX_DEFAULT
	return
LanceD::
	msgbox Defeated_Lance, MSGBOX_DEFAULT
	return
StevenD::
	msgbox Defeated_Steven, MSGBOX_DEFAULT
	return
WallaceD::
	msgbox Defeated_Wallace, MSGBOX_DEFAULT
	return
CynthiaD::
	msgbox Defeated_Cynthia, MSGBOX_DEFAULT
	return
AlderD::
	msgbox Defeated_Alder, MSGBOX_DEFAULT
	return
IrisD::
	msgbox Defeated_Iris, MSGBOX_DEFAULT
	return
DianthaD::
	msgbox Defeated_Diantha, MSGBOX_DEFAULT
	return
HauD::
	msgbox Defeated_Hau, MSGBOX_DEFAULT
	return
KukuiD::
	msgbox Defeated_Kukui, MSGBOX_DEFAULT
	return

PH_QUIT::
	savebgm MUS_DUMMY
	fadedefaultbgm
	release
	end

FightRed::
	call_if_set TRAINER_SAWYER_1+TRAINER_FLAGS_START, ResetFlags0
	trainerbattle_single TRAINER_SAWYER_1, FIGHT_START, FIGHT_END, FightRed
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightBlue::
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_1+TRAINER_FLAGS_START, ResetFlags1
	trainerbattle_single TRAINER_GRUNT_AQUA_HIDEOUT_1, FIGHT_START, FIGHT_END, FightBlue
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightLance::
	setvar VAR_0x8004, TRAINER_GRUNT_AQUA_HIDEOUT_2+TRAINER_FLAGS_START
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_2+TRAINER_FLAGS_START, ResetFlags2
	trainerbattle_single TRAINER_GRUNT_AQUA_HIDEOUT_2, FIGHT_START, FIGHT_END, FightLance
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightSteven::
	setvar VAR_0x8004, TRAINER_GRUNT_AQUA_HIDEOUT_3+TRAINER_FLAGS_START
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_3+TRAINER_FLAGS_START, ResetFlags3
	trainerbattle_single TRAINER_GRUNT_AQUA_HIDEOUT_3, FIGHT_START, FIGHT_END, FightSteven
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightWallace::
	setvar VAR_0x8004, TRAINER_GRUNT_AQUA_HIDEOUT_4+TRAINER_FLAGS_START
	call_if_set TRAINER_GRUNT_AQUA_HIDEOUT_4+TRAINER_FLAGS_START, ResetFlags4
	trainerbattle_single TRAINER_GRUNT_AQUA_HIDEOUT_4, FIGHT_START, FIGHT_END, FightWallace
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightCynthia::
	setvar VAR_0x8004, TRAINER_GRUNT_SEAFLOOR_CAVERN_1+TRAINER_FLAGS_START
	call_if_set TRAINER_GRUNT_SEAFLOOR_CAVERN_1+TRAINER_FLAGS_START, ResetFlags5
	trainerbattle_single TRAINER_GRUNT_SEAFLOOR_CAVERN_1, FIGHT_START, FIGHT_END, FightCynthia
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightAlder::
	setvar VAR_0x8004, TRAINER_GRUNT_SEAFLOOR_CAVERN_2+TRAINER_FLAGS_START
	call_if_set TRAINER_GRUNT_SEAFLOOR_CAVERN_2+TRAINER_FLAGS_START, ResetFlags6
	trainerbattle_single TRAINER_GRUNT_SEAFLOOR_CAVERN_2, FIGHT_START, FIGHT_END, FightAlder
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightDiantha::
	setvar VAR_0x8004, TRAINER_GRUNT_SEAFLOOR_CAVERN_3+TRAINER_FLAGS_START
	call_if_set TRAINER_GRUNT_SEAFLOOR_CAVERN_3+TRAINER_FLAGS_START, ResetFlags8
	trainerbattle_single TRAINER_GRUNT_SEAFLOOR_CAVERN_3, FIGHT_START, FIGHT_END, FightDiantha
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightHau::
	call_if_set TRAINER_GABRIELLE_1+TRAINER_FLAGS_START, ResetFlags9
	trainerbattle_single TRAINER_GABRIELLE_1, FIGHT_START, FIGHT_END, FightHau
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightKukui::
	call_if_set TRAINER_GRUNT_PETALBURG_WOODS+TRAINER_FLAGS_START, ResetFlags10
	trainerbattle_single TRAINER_GRUNT_PETALBURG_WOODS, FIGHT_START, FIGHT_END, FightKukui
	release
	special HealPlayerParty
	special LoadPlayerParty
	end
FightIris::
	call_if_set TRAINER_MARCEL+TRAINER_FLAGS_START, ResetFlags7
	trainerbattle_single TRAINER_MARCEL, FIGHT_START, FIGHT_END, FightIris
	release
	special HealPlayerParty
	special LoadPlayerParty
	end

ResetFlags0::
	clearflag TRAINER_SAWYER_1+TRAINER_FLAGS_START
	return
ResetFlags1::
	clearflag TRAINER_GRUNT_AQUA_HIDEOUT_1+TRAINER_FLAGS_START
	return
ResetFlags2::
	clearflag TRAINER_GRUNT_AQUA_HIDEOUT_2+TRAINER_FLAGS_START
	return
ResetFlags3::
	clearflag TRAINER_GRUNT_AQUA_HIDEOUT_3+TRAINER_FLAGS_START
	return
ResetFlags4::
	clearflag TRAINER_GRUNT_AQUA_HIDEOUT_4+TRAINER_FLAGS_START
	return
ResetFlags5::
	clearflag TRAINER_GRUNT_SEAFLOOR_CAVERN_1+TRAINER_FLAGS_START
	return
ResetFlags6::
	clearflag TRAINER_GRUNT_SEAFLOOR_CAVERN_2+TRAINER_FLAGS_START
	return
ResetFlags7::
	clearflag TRAINER_MARCEL+TRAINER_FLAGS_START
	return
ResetFlags8::
	clearflag TRAINER_GRUNT_SEAFLOOR_CAVERN_3+TRAINER_FLAGS_START
	return
ResetFlags9::
	clearflag TRAINER_GABRIELLE_1+TRAINER_FLAGS_START
	return
ResetFlags10::
	clearflag TRAINER_GRUNT_PETALBURG_WOODS+TRAINER_FLAGS_START
	return

TTV_Q:
	.string "The Famous Trainers\n"
	.string "Channel is on right now.\p"
	.string "Would you like to\n"
	.string "challege a famous trainer?$"

TTV_ChooseFighter:
	.string "“We have a caller,\n"
	.string "ladies and gentleman!\p"
	.string "Let's see who they'll challenge.”$"

FIGHT_START:
	.string "“Let's hope they\n"
	.string "show us a great battle!”$"

FIGHT_END:
	.string "“A spectacular finish!”$"

TTV_Recordintro:
	.string "So far, you have defeated the following:$"

Defeated_Red:
	.string "You have defeated Red.$"
Defeated_Blue:
	.string "You have defeated Blue.$"
Defeated_Lance:
	.string "You have defeated Lance.$"
Defeated_Steven:
	.string "You have defeated Steven.$"
Defeated_Wallace:
	.string "You have defeated Wallace.$"
Defeated_Cynthia:
	.string "You have defeated Cynthia.$"
Defeated_Alder:
	.string "You have defeated Alder.$"
Defeated_Iris:
	.string "You have defeated Iris.$"
Defeated_Diantha:
	.string "You have defeated Diantha.$"
Defeated_Hau:
	.string "You have defeated Hau.$"
Defeated_Kukui:
	.string "You have defeated Kukui.$"

TTV_RecordOutro:
	.string "That concludes the read-out.\n"
	.string "What would you like to do?$"

PlayersHouse_2F_Text_ClockIsStopped: @ 81F8668
	.string "The clock is stopped…\p"
	.string "Better set it and start it!$"

PlayersHouse_2F_Text_HowDoYouLikeYourRoom: @ 81F869A
	.string "MOM: {PLAYER}, how do you like your\n"
	.string "new room?\p"
	.string "Good! Everything's put away neatly!\p"
	.string "They finished moving everything in\n"
	.string "downstairs, too.\p"
	.string "POKéMON movers are so convenient!\p"
	.string "Oh, you should make sure that\n"
	.string "everything's all there on your desk.$"

PlayersHouse_2F_Text_Notebook: @ 81F877F
	.string "{PLAYER} flipped open the notebook.\p"
	.string "Adventure Rule No. 1\n"
	.string "Open the Menu with Start.\p"
	.string "Adventure Rule No. 2\n"
	.string "Record your progress with Save.\p"
	.string "The remaining pages are blank…$"

Common_Text_LookCloserAtMap: @ 81F8820
	.string "{PLAYER} took a closer look at the\n"
	.string "Hoenn region map.$"

PlayersHouse_2F_Text_ItsAGameCube: @ 81F884F
	.string "It's a Nintendo GameCube.\p"
	.string "A Game Boy Advance is connected to\n"
	.string "serve as the Controller.$"
