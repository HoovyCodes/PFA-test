@
@ DO NOT MODIFY THIS FILE! It is auto-generated from data/maps/LittlerootTown_BrendansHouse_1F/map.json
@

LittlerootTown_BrendansHouse_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MOM, 0, 2, 6, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PlayersHouse_1F_EventScript_Mom, FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
	object_event 2, OBJ_EVENT_GFX_BEAUTY, 0, 8, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, BH_EventScript_TimeToGo, 0

LittlerootTown_BrendansHouse_1F_MapWarps:
	warp_def 13, 10, 0, 1, MAP_LITTLEROOT_TOWN
	warp_def 8, 11, 0, 1, MAP_LITTLEROOT_TOWN
	warp_def 8, 2, 0, 0, MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F

LittlerootTown_BrendansHouse_1F_MapEvents::
	map_events LittlerootTown_BrendansHouse_1F_ObjectEvents, LittlerootTown_BrendansHouse_1F_MapWarps, 0x0, 0x0

