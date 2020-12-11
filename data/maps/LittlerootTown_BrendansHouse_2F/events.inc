@
@ DO NOT MODIFY THIS FILE! It is auto-generated from data/maps/LittlerootTown_BrendansHouse_2F/map.json
@

LittlerootTown_BrendansHouse_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_VAR_0, 0, 0, 0, 0, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_1
	object_event 2, OBJ_EVENT_GFX_VAR_1, 0, 0, 1, 0, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_2
	object_event 3, OBJ_EVENT_GFX_VAR_2, 0, 0, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_3
	object_event 4, OBJ_EVENT_GFX_VAR_3, 0, 0, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_4
	object_event 5, OBJ_EVENT_GFX_VAR_4, 0, 0, 4, 0, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_5
	object_event 6, OBJ_EVENT_GFX_VAR_5, 0, 0, 5, 4, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_6
	object_event 7, OBJ_EVENT_GFX_VAR_6, 0, 1, 0, 0, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_7
	object_event 8, OBJ_EVENT_GFX_VAR_7, 0, 1, 1, 0, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_8
	object_event 9, OBJ_EVENT_GFX_VAR_8, 0, 1, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_9
	object_event 10, OBJ_EVENT_GFX_VAR_9, 0, 1, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_10
	object_event 11, OBJ_EVENT_GFX_VAR_A, 0, 1, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_DECORATION_11

LittlerootTown_BrendansHouse_2F_MapWarps:
	warp_def 7, 1, 0, 2, MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_1F

LittlerootTown_BrendansHouse_2F_MapBGEvents:
	bg_event 0, 1, 0, BG_EVENT_PLAYER_FACING_NORTH, LittlerootTown_BrendansHouse_2F_EventScript_PC
	bg_event 1, 1, 0, BG_EVENT_PLAYER_FACING_ANY, PlayersHouse_2F_EventScript_Notebook
	bg_event 5, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_MaysHouse_2F_EventScript_WallClock
	bg_event 4, 1, 0, BG_EVENT_PLAYER_FACING_ANY, PlayersHouse_2F_EventScript_GameCube

LittlerootTown_BrendansHouse_2F_MapEvents::
	map_events LittlerootTown_BrendansHouse_2F_ObjectEvents, LittlerootTown_BrendansHouse_2F_MapWarps, 0x0, LittlerootTown_BrendansHouse_2F_MapBGEvents

