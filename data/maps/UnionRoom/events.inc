@
@ DO NOT MODIFY THIS FILE! It is auto-generated from data/maps/UnionRoom/map.json
@

UnionRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_UNION_ROOM_NURSE, 0, 3, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_VAR_3, 0, 1, 8, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player4, FLAG_HIDE_UNION_ROOM_PLAYER_4
	object_event 3, OBJ_EVENT_GFX_VAR_7, 0, 7, 8, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player8, FLAG_HIDE_UNION_ROOM_PLAYER_8
	object_event 4, OBJ_EVENT_GFX_VAR_6, 0, 1, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player7, FLAG_HIDE_UNION_ROOM_PLAYER_7
	object_event 5, OBJ_EVENT_GFX_VAR_5, 0, 7, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player6, FLAG_HIDE_UNION_ROOM_PLAYER_6
	object_event 6, OBJ_EVENT_GFX_VAR_4, 0, 13, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player5, FLAG_HIDE_UNION_ROOM_PLAYER_5
	object_event 7, OBJ_EVENT_GFX_VAR_2, 0, 10, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player3, FLAG_HIDE_UNION_ROOM_PLAYER_3
	object_event 8, OBJ_EVENT_GFX_VAR_1, 0, 13, 8, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player2, FLAG_HIDE_UNION_ROOM_PLAYER_2
	object_event 9, OBJ_EVENT_GFX_VAR_0, 0, 4, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, UnionRoom_EventScript_Player1, FLAG_HIDE_UNION_ROOM_PLAYER_1

UnionRoom_MapWarps:
	warp_def 7, 11, 3, 127, MAP_NONE
	warp_def 8, 11, 3, 127, MAP_NONE

UnionRoom_MapEvents::
	map_events UnionRoom_ObjectEvents, UnionRoom_MapWarps, 0x0, 0x0

