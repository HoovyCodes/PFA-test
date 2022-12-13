.set LOCALID_NURSE, 1

BattleFrontier_PokemonCenter_1F_MapScripts:: @ 82678F9
	map_script MAP_SCRIPT_ON_TRANSITION, BattleFrontier_PokemonCenter_1F_OnTransition
	.byte 0

BattleFrontier_PokemonCenter_1F_OnTransition: @ 8267904
	setrespawn HEAL_LOCATION_BATTLE_FRONTIER_OUTSIDE_EAST
	end

BattleFrontier_PokemonCenter_1F_EventScript_Nurse:: @ 8267908
	setvar VAR_0x800B, LOCALID_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

BattleFrontier_PokemonCenter_1F_EventScript_SchoolKid:: @ 8267916
	msgbox BattleFrontier_PokemonCenter_1F_Text_NeverSeenPokemon, MSGBOX_NPC
	end

BattleFrontier_PokemonCenter_1F_EventScript_Man:: @ 826791F
	lock 
	faceplayer
	msgbox BattleFrontier_PokemonCenter_1F_Text_NextStopBattleArena, MSGBOX_YESNO
	compare VAR_RESULT, 0
	goto_if_eq Script_PlayerAnsweredNo
	specialvar VAR_TEMP_1, GetFrontierBattlePoints
	compare VAR_TEMP_1, 2
	goto_if_lt Script_NotEnoughPoints
	msgbox BattleFrontier_PokemonCenter_1F_Text_saidyes, MSGBOX_DEFAULT
	special ChoosePartyMon
	waitstate
	copyvar VAR_0x800B, VAR_0x8004
	compare VAR_0x8004, 255
	goto_if_ne BattleFrontier_Lounge1_EventScript_EV
	goto Script_PlayerAnsweredNo
	end 

BattleFrontier_Lounge1_EventScript_EV::
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
	compare VAR_RESULT, SPECIES_EGG
	goto_if_eq Script_PlayerAnsweredNo
	special ClearEv
	scrollingmultichoice 0, 2, 3, 6, FALSE
	special SetEv
	scrollingmultichoice 0, 2, 3, 6, FALSE
	special SetEv
	scrollingmultichoice 1, 2, 3, 5, TRUE
	special SetNature
	setvar VAR_0x8004, 2
	playse SE_SHOP
	special TakeFrontierBattlePoints
	msgbox BattleFrontier_PokemonCenter_1F_Text_EVDONE, MSGBOX_DEFAULT
	release
	end

Script_PlayerAnsweredNo::
	msgbox BattleFrontier_PokemonCenter_1F_Text_saidno, MSGBOX_NPC
	release
	end

Script_NotEnoughPoints::
	msgbox BattleFrontier_PokemonCenter_1F_Text_nopoints, MSGBOX_NPC
	release
	end

BattleFrontier_PokemonCenter_1F_EventScript_Picnicker:: @ 8267928
	msgbox BattleFrontier_PokemonCenter_1F_Text_GoingThroughEveryChallenge, MSGBOX_NPC
	end

BattleFrontier_PokemonCenter_1F_EventScript_Woman::
	lock 
	faceplayer
	msgbox BattleFrontier_PokemonCenter_1F_Text_IVCHANGE, MSGBOX_YESNO
	compare VAR_RESULT, 0
	goto_if_eq Script_PlayerAnsweredNo
	specialvar VAR_TEMP_1, GetFrontierBattlePoints
	compare VAR_TEMP_1, 1
	goto_if_lt Script_NotEnoughPoints
	msgbox BattleFrontier_PokemonCenter_1F_Text_saidyes_girl, MSGBOX_DEFAULT
	special ChoosePartyMon
	waitstate
	copyvar VAR_0x800B, VAR_0x8004
	compare VAR_0x8004, 255
	goto_if_ne BattleFrontier_Lounge1_EventScript_IV
	goto Script_PlayerAnsweredNo
	end 

BattleFrontier_Lounge1_EventScript_IV::
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
	compare VAR_RESULT, SPECIES_EGG
	goto_if_eq Script_PlayerAnsweredNo
	scrollingmultichoice 0, 2, 3, 6, FALSE
	special SetIV
	setvar VAR_0x8004, 1
	playse SE_SHOP
	special TakeFrontierBattlePoints
	msgbox BattleFrontier_PokemonCenter_1F_Text_EVDONE, MSGBOX_DEFAULT
	release
	end

BattleFrontier_PokemonCenter_1F_EventScript_Skitty:: @ 8267931
	lock
	faceplayer
	waitse
	playmoncry SPECIES_SKITTY, 0
	msgbox BattleFrontier_PokemonCenter_1F_Text_Skitty, MSGBOX_DEFAULT
	waitmoncry
	release
	end
BattleFrontier_PokemonCenter_1F_EventScript_MysteryGift::
	lock
	faceplayer
	compare VAR_ROUTE111_STATE, 4
	goto_if_eq BattleFrontier_PokemonCenter_1F_EventScript_NoMoreGifts
	goto_if_unset FLAG_RECEIVED_CASTFORM, BattleFrontier_PokemonCenter_1F_GiftIntro
	msgbox BattleFrontier_PokemonCenter_1F_Text_GiftText, MSGBOX_DEFAULT
	compare VAR_ROUTE111_STATE, 0
	goto_if_eq BattleFrontier_PokemonCenter_1F_EventScript_Gift1
	compare VAR_ROUTE111_STATE, 1
	goto_if_eq BattleFrontier_PokemonCenter_1F_EventScript_Gift2
	compare VAR_ROUTE111_STATE, 2
	goto_if_eq BattleFrontier_PokemonCenter_1F_EventScript_Gift3
	compare VAR_ROUTE111_STATE, 3
	goto_if_eq BattleFrontier_PokemonCenter_1F_EventScript_Gift4
	goto BattleFrontier_PokemonCenter_1F_EventScript_NoGift
	release
	end
BattleFrontier_PokemonCenter_1F_GiftIntro::
	setvar VAR_ROUTE111_STATE, 0
	msgbox BattleFrontier_PokemonCenter_1F_Text_GiftIntro, MSGBOX_DEFAULT
	additem ITEM_BRIGHT_POWDER
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_PokemonCenter_1F_ObtainedGift
	waitfanfare
	waitmessage
	msgbox BattleFrontier_PokemonCenter_1F_GiftPlacedinBag, MSGBOX_DEFAULT
	msgbox BattleFrontier_PokemonCenter_1F_ComeAgain, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_CASTFORM
	release
	end

BattleFrontier_PokemonCenter_1F_EventScript_Gift1::
	special GetMysteryGifts
	compare VAR_RESULT, 5
	goto_if_lt BattleFrontier_PokemonCenter_1F_EventScript_NoGift
	msgbox BattleFrontier_PokemonCenter_1F_Text_GiftReceive1, MSGBOX_DEFAULT
	additem ITEM_RAZOR_FANG
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_PokemonCenter_1F_ObtainedGift
	waitfanfare
	waitmessage
	msgbox BattleFrontier_PokemonCenter_1F_GiftPlacedinBag, MSGBOX_DEFAULT
	msgbox BattleFrontier_PokemonCenter_1F_ComeAgain, MSGBOX_DEFAULT
	addvar VAR_ROUTE111_STATE, 1
	release
	end
BattleFrontier_PokemonCenter_1F_EventScript_Gift2::
	special GetMysteryGifts
	compare VAR_RESULT, 10
	goto_if_lt BattleFrontier_PokemonCenter_1F_EventScript_NoGift
	msgbox BattleFrontier_PokemonCenter_1F_Text_GiftReceive2, MSGBOX_DEFAULT
	additem ITEM_RED_CARD
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_PokemonCenter_1F_ObtainedGift
	waitfanfare
	waitmessage
	msgbox BattleFrontier_PokemonCenter_1F_GiftPlacedinBag, MSGBOX_DEFAULT
	msgbox BattleFrontier_PokemonCenter_1F_ComeAgain, MSGBOX_DEFAULT
	addvar VAR_ROUTE111_STATE, 1
	release
	end
BattleFrontier_PokemonCenter_1F_EventScript_Gift3::
	special GetMysteryGifts
	compare VAR_RESULT, 25
	goto_if_lt BattleFrontier_PokemonCenter_1F_EventScript_NoGift
	msgbox BattleFrontier_PokemonCenter_1F_Text_GiftReceive3, MSGBOX_DEFAULT
	setvar VAR_0x8004, 20
	special GiveFrontierBattlePoints
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_PokemonCenter_1F_ObtainedGift
	waitfanfare
	waitmessage
	msgbox BattleFrontier_PokemonCenter_1F_GiftPlacedinBag, MSGBOX_DEFAULT
	msgbox BattleFrontier_PokemonCenter_1F_ComeAgain, MSGBOX_DEFAULT
	addvar VAR_ROUTE111_STATE, 1
	release
	end

BattleFrontier_PokemonCenter_1F_EventScript_Gift4::
	special GetMysteryGifts
	compare VAR_RESULT, 5
	goto_if_lt BattleFrontier_PokemonCenter_1F_EventScript_NoGift
	msgbox BattleFrontier_PokemonCenter_1F_Text_GiftReceive4, MSGBOX_DEFAULT
	givecustommon SPECIES_WEAVILE, 100, ITEM_BLACK_GLASSES, ITEM_DUSK_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_ICICLE_CRASH, MOVE_BRICK_BREAK, MOVE_ICE_SHARD, MOVE_FAINT_ATTACK, 1
	playfanfare MUS_OBTAIN_ITEM
	message BattleFrontier_PokemonCenter_1F_ObtainedGift
	waitfanfare
	waitmessage
	msgbox BattleFrontier_PokemonCenter_1F_GiftPlacedinBag, MSGBOX_DEFAULT
	msgbox BattleFrontier_PokemonCenter_1F_ComeAgain, MSGBOX_DEFAULT
	addvar VAR_ROUTE111_STATE, 1
	release
	end
BattleFrontier_PokemonCenter_1F_EventScript_NoMoreGifts::
	msgbox BattleFrontier_PokemonCenter_1F_Text_NoMoreGifts, MSGBOX_DEFAULT
	release
	end
BattleFrontier_PokemonCenter_1F_EventScript_NoGift::
	msgbox BattleFrontier_PokemonCenter_1F_Text_NoGifts, MSGBOX_DEFAULT
	release
	end
BattleFrontier_PokemonCenter_1F_Text_NoGifts:
	.string "There are currenty no gifts\n"
	.string "for you. Please come back later.$"
BattleFrontier_PokemonCenter_1F_Text_NoMoreGifts:
	.string "I'm sorry. I'm all out of gifts.\n"
	.string "Please enjoy the rest of your stay here.$"
BattleFrontier_PokemonCenter_1F_Text_GiftText:
	.string "Hello, there. Let me see\n"
	.string "if I have a gift for you.$"
BattleFrontier_PokemonCenter_1F_Text_GiftReceive1:
	.string "Ah, I do!\n"
	.string "Please, take this Razor Fang.$"
BattleFrontier_PokemonCenter_1F_Text_GiftReceive2:
	.string "Ah, I do!\n"
	.string "Please, take this Red Card.$"
BattleFrontier_PokemonCenter_1F_Text_GiftReceive3:
	.string "Ah, I do!\n"
	.string "Please, take these 20 BP.$"
BattleFrontier_PokemonCenter_1F_Text_GiftReceive4:
	.string "Ah, I do!\n"
	.string "Please, take this Weavile.$"
	
BattleFrontier_PokemonCenter_1F_Text_GiftIntro:
	.string "Hello, trainer. I've been tasked\n"
	.string "supporting your Frontier journey.\p"
	.string "As time goes by, I will have\n"
	.string "various gifts for you to enjoy.\p"
	.string "Please, take this Bright Powder,\n" 
	.string "and find me once some time has gone by.$"
	
BattleFrontier_PokemonCenter_1F_ComeAgain:
	.string "Please enjoy, and come back soon.$"

BattleFrontier_PokemonCenter_1F_ObtainedGift:
	.string "{PLAYER} obtained the gift.$"
BattleFrontier_PokemonCenter_1F_GiftPlacedinBag:
	.string "{PLAYER} placed the gift in their bag.$"

BattleFrontier_PokemonCenter_1F_Text_NeverSeenPokemon: @ 8267944
	.string "There was someone here using a \n"
	.string "Pokémon I've never seen before.\p"
	.string "I never learned about it at\n"
	.string "Trainer's School at least.\p"
	.string "I wonder where you can catch Pokémon\n"
	.string "like that.$"

BattleFrontier_PokemonCenter_1F_Text_NextStopBattleArena: @ 82679EB
	.string "Hey, are you unhappy\n"
	.string "with your Pokémon's EVs?\p"
	.string "I can change them for 2 BP.\n"
	.string "I'll even change the nature for free.\l"
	.string "Want me to?$"

BattleFrontier_PokemonCenter_1F_Text_IVCHANGE: @ 82679EB
	.string "Hey, are you unhappy\n"
	.string "with your Pokémon's IVs?\p"
	.string "I can change them for 1 BP.\n"
	.string "Want me to?$"

BattleFrontier_PokemonCenter_1F_Text_saidno:
	.string "Fine then!\n"
	.string "If you don't want my help, that's fine!$"

BattleFrontier_PokemonCenter_1F_Text_nopoints:
	.string "Hey, you don't even\n"
	.string "have enough points! What the heck!$"

BattleFrontier_PokemonCenter_1F_Text_EVDONE:
	.string "Pleasure doing business.$"

BattleFrontier_PokemonCenter_1F_Text_saidyes:
	.string "Perfect! Pick a Pokémon,\n"
	.string "then pick two EVs to max out.\p"
	.string "After that, pick your nature.$"

BattleFrontier_PokemonCenter_1F_Text_saidyes_girl:
	.string "Awesome! Pick a Pokémon,\n"
	.string "then pick an IV to maximize or minimize.$"

BattleFrontier_PokemonCenter_1F_Text_GoingThroughEveryChallenge: @ 8267A4B
	.string "Giggle… I'm going to go through every\n"
	.string "challenge with just this baby!$"

BattleFrontier_PokemonCenter_1F_Text_Skitty: @ 8267A90
	.string "Skitty: Mya myaaah!$"
