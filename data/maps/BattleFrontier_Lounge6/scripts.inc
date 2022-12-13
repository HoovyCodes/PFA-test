BattleFrontier_Lounge6_MapScripts:: @ 8264FEC
	.byte 0
	
BattleFrontier_Lounge6_EventScript_Trader:: @ 8264FED
	lock
	faceplayer
	msgbox BattleFrontier_Lounge6_Text_WouldYouLikeToTrade, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_Lounge6_EventScript_DeclineTrade
	msgbox BattleFrontier_Lounge6_Text_PromiseIllBeGoodToIt, MSGBOX_DEFAULT
	special ChoosePartyMon
	waitstate
	copyvar VAR_0x800B, VAR_0x8004
	compare VAR_0x8004, 255
	goto_if_ne BattleFrontier_Lounge6_EventScript_EV
	goto BattleFrontier_Lounge6_EventScript_DeclineTrade
	end 

BattleFrontier_Lounge6_EventScript_EV::
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
	compare VAR_RESULT, SPECIES_EGG
	goto_if_eq BattleFrontier_Lounge6_Text_WellThatsFineToo
	special swapAbility
	scrollingmultichoice 14, 2, 3, 3, FALSE
	special swapAbility2
	msgbox BattleFrontier_Lounge6_Text_DontTradeForAnythingButMon, MSGBOX_DEFAULT
	release
	end

BattleFrontier_Lounge6_EventScript_DeclineTrade:: @ 826506B
	msgbox BattleFrontier_Lounge6_Text_WellThatsFineToo, MSGBOX_DEFAULT
	release
	end

Lounge_NameRater_EventScript_NameRater:: @ 8209AA5
	lock
	faceplayer
	msgbox Lounge_NameRater_Text_PleasedToRateMonNickname, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq Lounge_NameRater_EventScript_ChooseMonToRate
	compare VAR_RESULT, NO
	goto_if_eq Lounge_NameRater_EventScript_DeclineNameRate
	end

Lounge_NameRater_EventScript_ChooseMonToRate:: @ 8209AC6
	msgbox Lounge_NameRater_Text_CritiqueWhichMonNickname, MSGBOX_DEFAULT
	special ChoosePartyMon
	waitstate
	compare VAR_0x8004, 255
	goto_if_ne Lounge_NameRater_EventScript_RateMonNickname
	compare VAR_0x8004, 255
	goto_if_eq Lounge_NameRater_EventScript_DeclineNameRate
	end

Lounge_NameRater_EventScript_DeclineNameRate:: @ 8209AE9
	msgbox Lounge_NameRater_Text_DoVisitAgain, MSGBOX_DEFAULT
	release
	end

Lounge_NameRater_EventScript_RateMonNickname:: @ 8209AF3
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
	compare VAR_RESULT, SPECIES_EGG
	goto_if_eq Lounge_NameRater_EventScript_CantRateEgg
	special BufferMonNickname
	special IsMonOTIDNotPlayers
	compare VAR_RESULT, TRUE
	goto_if_eq Lounge_NameRater_EventScript_PlayerNotMonsOT
	specialvar VAR_RESULT, MonOTNameNotPlayer
	special BufferMonNickname
	compare VAR_RESULT, TRUE
	goto_if_eq Lounge_NameRater_EventScript_PlayerNotMonsOT
	msgbox Lounge_NameRater_Text_FineNameSuggestBetterOne, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq Lounge_NameRater_EventScript_ChangeNickname
	compare VAR_RESULT, NO
	goto_if_eq Lounge_NameRater_EventScript_DeclineNameRate
	end

Lounge_NameRater_EventScript_CantRateEgg:: @ 8209B46
	msgbox Lounge_NameRater_Text_ThatIsMerelyAnEgg, MSGBOX_DEFAULT
	release
	end

Lounge_NameRater_EventScript_PlayerNotMonsOT:: @ 8209B50
	msgbox Lounge_NameRater_Text_MagnificentName, MSGBOX_DEFAULT
	release
	end

Lounge_NameRater_EventScript_ChangeNickname:: @ 8209B5A
	msgbox Lounge_NameRater_Text_WhatShallNewNameBe, MSGBOX_DEFAULT
	call Common_EventScript_NameReceivedPartyMon
	specialvar VAR_RESULT, TryPutNameRaterShowOnTheAir
	special BufferMonNickname
	compare VAR_RESULT, TRUE
	goto_if_eq Lounge_NameRater_EventScript_NewNameDifferent
	msgbox Lounge_NameRater_Text_NameNoDifferentYetSuperior, MSGBOX_DEFAULT
	release
	end

Lounge_NameRater_EventScript_NewNameDifferent:: @ 8209B84
	msgbox Lounge_NameRater_Text_MonShallBeKnownAsName, MSGBOX_DEFAULT
	release
	end

Lounge_NameRater_Text_PleasedToRateMonNickname: @ 8209B8E
	.string "Hi, hi! I'm the Name Rater!\n"
	.string "I'm the fortune-teller of names!\p"
	.string "I shall be pleased to rate your\n"
	.string "Pokémon's nickname.$"

Lounge_NameRater_Text_CritiqueWhichMonNickname: @ 8209BFF
	.string "Which Pokémon's nickname should\n"
	.string "I critique?$"

Lounge_NameRater_Text_FineNameSuggestBetterOne: @ 8209C2B
	.string "Hmmm… {STR_VAR_1}, is it? That is\n"
	.string "quite a fine name you bestowed.\p"
	.string "But! What say you, if I were to\n"
	.string "suggest a slightly better name?$"

Lounge_NameRater_Text_WhatShallNewNameBe: @ 8209CA4
	.string "Ah, good. Then, what shall the new\n"
	.string "nickname be?$"

Lounge_NameRater_Text_MonShallBeKnownAsName: @ 8209CD4
	.string "Done! From now on, this Pokémon\n"
	.string "shall be known as {STR_VAR_1}!\p"
	.string "It is a better name than before!\n"
	.string "How fortunate for you!$"

Lounge_NameRater_Text_DoVisitAgain: @ 8209D42
	.string "I see.\n"
	.string "Do come visit again.$"

Lounge_NameRater_Text_NameNoDifferentYetSuperior: @ 8209D5E
	.string "Done! From now on, this Pokémon\n"
	.string "shall be known as {STR_VAR_1}!\p"
	.string "It looks no different from before,\n"
	.string "and yet, this is vastly superior!\p"
	.string "How fortunate for you!$"

Lounge_NameRater_Text_MagnificentName: @ 8209DF0
	.string "Hmmm… {STR_VAR_1} it is!\p"
	.string "This is a magnificent nickname!\n"
	.string "It is impeccably beyond reproach!\p"
	.string "You'll do well to cherish your\n"
	.string "{STR_VAR_1} now and beyond.$"

Lounge_NameRater_Text_ThatIsMerelyAnEgg: @ 8209E74
	.string "Now, now.\n"
	.string "That is merely an Egg!$"

BattleFrontier_Lounge6_Text_WouldYouLikeToTrade: @ 826508D
	.string "Sometimes, Pokémon have\n"
	.string "totally lame abilities!\p"
	.string "In fact, some Pokémon\n"
	.string "have up to 3 inside them,\l"
	.string "but you can only see the one they have.\p"
	.string "Want me to give 'em a new ability?$"

BattleFrontier_Lounge6_Text_PromiseIllBeGoodToIt: @ 8265128
	.string "Which Pokémon should I fix?$"

BattleFrontier_Lounge6_Text_DontTradeForAnythingButMon: @ 826518D
	.string "And... And...\p"
	.string "Done!\p"
	.string "Awesome! I love\n"
	.string "fixing Pokémon!\p"
	.string "Come back if you\n"
	.string "want me to do it again.$"

BattleFrontier_Lounge6_Text_WellThatsFineToo: @ 82651CB
	.string "You don't want to?\n"
	.string "Fine, then...$"

