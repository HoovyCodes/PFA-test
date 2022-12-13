BattleFrontier_Lounge7_MapScripts:: @ 8265254
	.byte 0

BattleFrontier_Lounge7_EventScript_OneMoveTutor:: @ 8265255
	lock
	faceplayer
	setvar VAR_TEMP_C, 1
	goto_if_set FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR, BattleFrontier_Lounge7_EventScript_AlreadyMetLeftTutor
	msgbox BattleFrontier_Lounge7_Text_LeftTutorIntro, MSGBOX_DEFAULT
	setflag FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR
	goto BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove
	end

BattleFrontier_Lounge7_EventScript_TwoMoveTutor:: @ 8265255
	lock
	faceplayer
	setvar VAR_TEMP_C, 2
	goto_if_set FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR, BattleFrontier_Lounge7_EventScript_AlreadyMetLeftTutor
	msgbox BattleFrontier_Lounge7_Text_LeftTutorIntro, MSGBOX_DEFAULT
	setflag FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR
	goto BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove
	end

BattleFrontier_Lounge7_EventScript_ThreeMoveTutor:: @ 8265255
	lock
	faceplayer
	setvar VAR_TEMP_C, 3
	goto_if_set FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR, BattleFrontier_Lounge7_EventScript_AlreadyMetLeftTutor
	msgbox BattleFrontier_Lounge7_Text_LeftTutorIntro, MSGBOX_DEFAULT
	setflag FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR
	goto BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove
	end

BattleFrontier_Lounge7_EventScript_FourMoveTutor:: @ 8265255
	lock
	faceplayer
	setvar VAR_TEMP_C, 4
	goto_if_set FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR, BattleFrontier_Lounge7_EventScript_AlreadyMetLeftTutor
	msgbox BattleFrontier_Lounge7_Text_LeftTutorIntro, MSGBOX_DEFAULT
	setflag FLAG_MET_FRONTIER_BEAUTY_MOVE_TUTOR
	goto BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove
	end

BattleFrontier_Lounge7_EventScript_AlreadyMetLeftTutor:: @ 8265276
	msgbox BattleFrontier_Lounge7_Text_LeftTutorWelcomeBack, MSGBOX_DEFAULT
	goto BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove
	end

BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove:: @ 8265284
	message BattleFrontier_Lounge7_Text_TeachWhichMove
	waitmessage
	compare VAR_TEMP_C,1 
	goto_if_eq BattleFrontier_Lounge7_EventScript_ChooseOneTutorMove
	compare VAR_TEMP_C,2
	goto_if_eq BattleFrontier_Lounge7_EventScript_ChooseTwoTutorMove
	compare VAR_TEMP_C,3
	goto_if_eq BattleFrontier_Lounge7_EventScript_ChooseThreeTutorMove
	goto BattleFrontier_Lounge7_EventScript_ChooseFourTutorMove
	end

BattleFrontier_Lounge7_EventScript_ChooseOneTutorMove::
	scrollingmultichoice 7, 12, 0, 6, TRUE
	goto LoungeInterpret
	end

BattleFrontier_Lounge7_EventScript_ChooseTwoTutorMove::
	scrollingmultichoice 8, 12, 0, 6, TRUE
	goto LoungeInterpret
	end

BattleFrontier_Lounge7_EventScript_ChooseThreeTutorMove::
	scrollingmultichoice 9, 12, 0, 6, TRUE
	goto LoungeInterpret
	end

BattleFrontier_Lounge7_EventScript_ChooseFourTutorMove::
	scrollingmultichoice 10, 12, 0, 6, TRUE
	goto LoungeInterpret
	end

BattleFrontier_Lounge7_EventScript_CancelChooseMon:: @ 8265645
	msgbox BattleFrontier_Lounge7_Text_YouDontWantTo, MSGBOX_DEFAULT
	release
	end

LoungeInterpret::
	compare VAR_RESULT, MULTI_B_PRESSED
	goto_if_eq BattleFrontier_Lounge7_EventScript_ExitTutorMoveSelect
	goto BattleFrontier_Lounge7_EventScript_ConfirmMoveSelection
	end

BattleFrontier_Lounge7_EventScript_ConfirmMoveSelection:: @ 826564F
	setvar VAR_0x800A, 2
	copyvar VAR_0x8005, VAR_RESULT
	msgbox BattleFrontier_Lounge7_Text_MoveWillBeXBattlePoints, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_Lounge7_EventScript_ChooseNewMove
	specialvar VAR_TEMP_1, GetFrontierBattlePoints
	compare VAR_TEMP_1, VAR_0x800A
	goto_if_ge BattleFrontier_Lounge7_EventScript_TeachTutorMove
	msgbox BattleFrontier_Lounge7_Text_HaventGotEnoughPoints, MSGBOX_DEFAULT
	goto BattleFrontier_Lounge7_EventScript_ChooseNewMove
	end

BattleFrontier_Lounge7_EventScript_TeachTutorMove:: @ 8265696
	msgbox BattleFrontier_Lounge7_Text_TeachMoveToWhichMon, MSGBOX_DEFAULT
	fadescreen FADE_TO_BLACK
	special CloseBattlePointsWindow
	special CloseBattleFrontierTutorWindow
	special ChooseMonForMoveTutor
	waitstate
	compare VAR_RESULT, FALSE
	goto_if_eq BattleFrontier_Lounge7_EventScript_CancelChooseMon
	msgbox BattleFrontier_Lounge7_Text_IllTakeBattlePoints, MSGBOX_DEFAULT
	copyvar VAR_0x8004, VAR_0x800A
	special TakeFrontierBattlePoints
	release
	end

BattleFrontier_Lounge7_EventScript_ExitTutorMoveSelect:: @ 8265635
	msgbox BattleFrontier_Lounge7_Text_YouDontWantTo, MSGBOX_DEFAULT
	release
	end

BattleFrontier_Lounge7_EventScript_ChooseNewMove:: @ 82656CA
	goto BattleFrontier_Lounge7_EventScript_ChooseLeftTutorMove
	end

BattleFrontier_Lounge7_EventScript_Sailor:: @ 82656DB
	msgbox BattleFrontier_Lounge7_Text_ThinkLadiesDontGetAlong, MSGBOX_NPC
	end

BattleFrontier_Lounge7_EventScript_Gentleman:: @ 82656E4
	msgbox BattleFrontier_Lounge7_Text_LadiesWereStrongAndBeautiful, MSGBOX_NPC
	end

BattleFrontier_Lounge7_Text_LeftTutorIntro: @ 82656ED
	.string "Buhahaha!\p"
	.string "You couldn't tell it from looking now,\n"
	.string "but we used to be tough trainers.\p"
	.string "Us four sisters were known as the\n"
	.string "toughest beauties around, I tell you!\p"
	.string "… … … … … …\p"
	.string "What is it now?\n"
	.string "You don't believe us?\l"
	.string "Let us prove it to you.\p"
	.string "We can teach your Pokémon special and\n"
	.string "yet cute moves.\p"
	.string "But our lessons don't come free.\n"
	.string "How about paying for the moves we\l"
	.string "teach with a measly 2 Battle Points?$"

BattleFrontier_Lounge7_Text_LeftTutorWelcomeBack: @ 82658AB
	.string "Buhahaha!\p"
	.string "Are you back to learn special and\n"
	.string "yet cute Pokémon moves?$"

BattleFrontier_Lounge7_Text_TeachWhichMove: @ 82658EF
	.string "Look here!\n"
	.string "Which move should I teach?$"

BattleFrontier_Lounge7_Text_MoveWillBeXBattlePoints: @ 8265921
	.string "That will be 2 Battle Points, okay?$"

BattleFrontier_Lounge7_Text_TeachMoveToWhichMon: @ 826595A
	.string "Fine, fine, now pick the Pokémon\n"
	.string "I should teach the move to.$"

BattleFrontier_Lounge7_Text_HaventGotEnoughPoints: @ 8265997
	.string "What the…\n"
	.string "You haven't got enough Battle Points!$"

BattleFrontier_Lounge7_Text_IllTakeBattlePoints: @ 82659C7
	.string "Do you see how skilled I am now?\n"
	.string "I'll take your Battle Points, thanks!$"

BattleFrontier_Lounge7_Text_YouDontWantTo: @ 8265A0E
	.string "What's that?\n"
	.string "You don't want to…\p"
	.string "If you want to see how skilled I am,\n"
	.string "you come see me anytime!$"

BattleFrontier_Lounge7_Text_ThinkLadiesDontGetAlong: @ 8265C6F
	.string "Those four sisters used\n"
	.string "to be so powerful, and now…\p"
	.string "I'm glad they have each other.$"

BattleFrontier_Lounge7_Text_LadiesWereStrongAndBeautiful: @ 8265D17
	.string "When I was just a wee youngster,\n"
	.string "those ladies were strong and beautiful.\p"
	.string "They were idols among us trainers.\p"
	.string "Even now, age hasn't dulled their\n"
	.string "abilities.\p"
	.string "In fact, their Pokémon moves have\n"
	.string "grown even more polished.\p"
	.string "But… For some reason, I can't help\n"
	.string "but feel this…\p"
	.string "Time is so cruel…$"

BattleFrontier_Lounge7_Text_SoftboiledDesc:: @ 8265E30
	.string "Recovers up to\n"
	.string "half the user's\n"
	.string "maximum HP.$"

BattleFrontier_Lounge7_Text_SeismicTossDesc:: @ 8265E5B
	.string "Inflicts damage\n"
	.string "identical to the\n"
	.string "user's level.$"

BattleFrontier_Lounge7_Text_DreamEaterDesc:: @ 8265E8A
	.string "Recovers half the\n"
	.string "damage inflicted\n"
	.string "on a sleeping foe.$"

BattleFrontier_Lounge7_Text_MegaPunchDesc:: @ 8265EC0
	.string "A strong punch\n"
	.string "thrown with\n"
	.string "incredible power.$"

BattleFrontier_Lounge7_Text_MegaKickDesc:: @ 8265EED
	.string "An extremely\n"
	.string "powerful kick with\n"
	.string "intense force.$"

BattleFrontier_Lounge7_Text_BodySlamDesc:: @ 8265F1C
	.string "A full-body slam\n"
	.string "that may cause\n"
	.string "paralysis.$"

BattleFrontier_Lounge7_Text_RockSlideDesc:: @ 8265F47
	.string "Large boulders\n"
	.string "are hurled. May\n"
	.string "cause flinching.$"

BattleFrontier_Lounge7_Text_CounterDesc:: @ 8265F77
	.string "Retaliates any\n"
	.string "physical hit with\n"
	.string "double the power.$"

BattleFrontier_Lounge7_Text_ThunderWaveDesc:: @ 8265FAA
	.string "A weak jolt of\n"
	.string "electricity that\n"
	.string "paralyzes the foe.$"

BattleFrontier_Lounge7_Text_SwordsDanceDesc:: @ 8265FDD
	.string "A fighting dance\n"
	.string "that sharply\n"
	.string "raises ATTACK.$"

BattleFrontier_Lounge7_Text_DefenseCurlDesc:: @ 826600A
	.string "Curls up to con-\n"
	.string "ceal weak spots\n"
	.string "and raise DEFENSE.$"

BattleFrontier_Lounge7_Text_SnoreDesc:: @ 826603E
	.string "A loud attack\n"
	.string "that can be used\n"
	.string "only while asleep.$"

BattleFrontier_Lounge7_Text_MudSlapDesc:: @ 8266070
	.string "Hurls mud in the\n"
	.string "foe's face to re-\n"
	.string "duce its accuracy.$"

BattleFrontier_Lounge7_Text_SwiftDesc:: @ 82660A6
	.string "Sprays star-\n"
	.string "shaped rays\n"
	.string "that never miss.$"

BattleFrontier_Lounge7_Text_IcyWindDesc:: @ 82660D0
	.string "A chilling attack\n"
	.string "that lowers the\n"
	.string "foe's SPEED.$"

BattleFrontier_Lounge7_Text_EndureDesc:: @ 82660FF
	.string "Endures any at-\n"
	.string "tack for 1 turn,\n"
	.string "leaving 1HP.$"

BattleFrontier_Lounge7_Text_PsychUpDesc:: @ 826612D
	.string "Copies the foe's\n"
	.string "effect(s) and\n"
	.string "gives to the user.$"

BattleFrontier_Lounge7_Text_IcePunchDesc:: @ 826615F
	.string "An icy punch\n"
	.string "that may\n"
	.string "freeze the foe.$"

BattleFrontier_Lounge7_Text_ThunderPunchDesc:: @ 8266185
	.string "An electrified\n"
	.string "punch that may\n"
	.string "paralyze the foe.$"

BattleFrontier_Lounge7_Text_FirePunchDesc:: @ 82661B5
	.string "A fiery punch\n"
	.string "that may burn\n"
	.string "the foe.$"
