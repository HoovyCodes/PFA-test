MauvilleCity_GameCorner_MapScripts:: @ 820FBB8
	.byte 0

    @ Game Corner prices

	.set COINS_PRICE_50,  1
	.set COINS_PRICE_500, 10

MauvilleCity_GameCorner_EventScript_CoinsClerk:: @ 820FBB9
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_ThisIsMauvilleGameCorner, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NeedCoinCase
	message MauvilleCity_GameCorner_Text_WereYouLookingForCoins
	waitmessage
	special ShowBattlePointsWindow
	showcoinsbox 1, 6
	goto MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50

MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50:: @ 820FBE5
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 0, 0
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
	end

@ Unused
MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault500:: @ 820FC0C
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 1, 0
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
	end

MauvilleCity_GameCorner_EventScript_Buy50Coins:: @ 820FC33
	checkcoins VAR_TEMP_1
	compare VAR_TEMP_1, (MAX_COINS + 1 - 50)
	goto_if_ge MauvilleCity_GameCorner_EventScript_NoRoomForCoins
	checkmoney COINS_PRICE_50, 0
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NotEnoughMoney
	addcoins 50
	setvar VAR_0x8004, COINS_PRICE_50
	special TakeFrontierBattlePoints
	special UpdateBattlePointsWindow
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ThankYouHereAreYourCoins, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_Buy500Coins:: @ 820FC75
	checkcoins VAR_TEMP_1
	compare VAR_TEMP_1, (MAX_COINS + 1 - 500)
	goto_if_ge MauvilleCity_GameCorner_EventScript_NoRoomForCoins
	checkmoney COINS_PRICE_500, 0
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NotEnoughMoney
	addcoins 500
	setvar VAR_0x8004, COINS_PRICE_500
	special TakeFrontierBattlePoints
	special UpdateBattlePointsWindow
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ThankYouHereAreYourCoins, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_NeedCoinCase:: @ 820FCB7
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins, MSGBOX_DEFAULT
	giveitem ITEM_COIN_CASE
	setflag FLAG_RECEIVED_COIN_CASE
	release
	end

MauvilleCity_GameCorner_EventScript_NotEnoughMoney:: @ 820FCC1
	msgbox MauvilleCity_GameCorner_Text_DontHaveEnoughMoney, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_CancelBuyCoins:: @ 820FCD1
	msgbox MauvilleCity_GameCorner_Text_DontNeedCoinsThen, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_NoRoomForCoins:: @ 820FCE1
	msgbox MauvilleCity_GameCorner_Text_CoinCaseIsFull, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	hidecoinsbox 0, 5
	release
	end


MauvilleCity_GameCorner_EventScript_PrizeCornerTMs:: @ 820FE9F
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, TRUE
	goto_if_eq MauvilleCity_GameCorner_EventScript_ChooseTMPrizeMessage
	release
	end

MauvilleCity_GameCorner_EventScript_ChooseTMPrizeMessage:: @ 820FEBB
	message MauvilleCity_GameCorner_Text_WhichPrize
	waitmessage
	setvar VAR_TEMP_1, 0
	showcoinsbox 1, 6
	special ShowBattlePointsWindow
	goto MauvilleCity_GameCorner_EventScript_ChooseTMPrize

MauvilleCity_GameCorner_EventScript_ReturnToChooseTMPrize:: @ 820FECE
	message MauvilleCity_GameCorner_Text_WhichPrize
	waitmessage
	goto MauvilleCity_GameCorner_EventScript_ChooseTMPrize

MauvilleCity_GameCorner_EventScript_ChooseTMPrize:: @ 820FED9
	multichoicedefault 15, 0, MULTI_GAME_CORNER_TMS, 0, 0
	
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_BuyTM32
	case 1, MauvilleCity_GameCorner_EventScript_BuyTM29
	case 2, MauvilleCity_GameCorner_EventScript_CancelTMSelect
	hidecoinsbox 0, 5
	special CloseBattlePointsWindow
	end


MauvilleCity_GameCorner_EventScript_BuyTM32:: @ 820FFDD
	checkcoins VAR_TEMP_2
	compare VAR_TEMP_2, 50
	goto_if_lt MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForTM
	setvar VAR_0x8004, 1
	special GiveFrontierBattlePoints
	special UpdateBattlePointsWindow
	removecoins 50
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_HereYouGo, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_BuyTM29:: @ 8210017
	checkcoins VAR_TEMP_2
	compare VAR_TEMP_2, 500
	goto_if_lt MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForTM
	setvar VAR_0x8004, 10
	special GiveFrontierBattlePoints
	special UpdateBattlePointsWindow
	removecoins 500
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_HereYouGo, MSGBOX_DEFAULT
	release
	end


MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForTM:: @ 82100FF
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ReturnToChooseTMPrize
	end

MauvilleCity_GameCorner_EventScript_CancelTMSelect:: @ 8210118
	msgbox MauvilleCity_GameCorner_Text_OhIsThatSo, MSGBOX_DEFAULT
	hidecoinsbox 0, 5
	special CloseBattlePointsWindow
	release
	end

MauvilleCity_GameCorner_EventScript_Woman2:: @ 8210125
	msgbox MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay, MSGBOX_NPC
	end

MauvilleCity_GameCorner_EventScript_Gentleman:: @ 821012E
	msgbox MauvilleCity_GameCorner_Text_RouletteOnlyLuck, MSGBOX_NPC
	end

MauvilleCity_GameCorner_EventScript_Girl:: @ 8210137
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PokefanM:: @ 821021D
	lock
	faceplayer
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, TRUE
	goto_if_eq MauvilleCity_GameCorner_EventScript_TryGive20Coins
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_TryGive20Coins:: @ 821023D
	goto_if_set FLAG_RECEIVED_20_COINS, MauvilleCity_GameCorner_EventScript_PokefanMNormal
	checkcoins VAR_TEMP_1
	compare VAR_TEMP_1, 1  @ Only give 20 coins if player has no coins
	goto_if_ge MauvilleCity_GameCorner_EventScript_PokefanMNormal
	setflag FLAG_RECEIVED_20_COINS
	addcoins 20
	msgbox MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins, MSGBOX_DEFAULT
	playse SE_SHOP
	goto MauvilleCity_GameCorner_EventScript_PokefanMNormal
	end

MauvilleCity_GameCorner_EventScript_PokefanMNormal:: @ 821026B
	msgbox MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_OldMan:: @ 8210279
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_Cook:: @ 8210289
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_Man:: @ 8210299
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_NPCReturnToSlots:: @ 82102A9
	closemessage
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
	waitmovement 0
	release
	end

MauvilleCity_GameCorner_EventScript_Maniac:: @ 82102B6
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_DifficultToStopOn7, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_Woman:: @ 82102C6
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_SlotMachine0:: @ 82102D6
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 0
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine1:: @ 82102F6
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 1
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine2:: @ 8210316
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 2
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine3:: @ 8210336
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 3
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine4:: @ 8210356
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 4
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine5:: @ 8210376
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 5
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine6:: @ 8210396
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 6
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine7:: @ 82103B6
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 7
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine8:: @ 82103D6
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 8
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine9:: @ 82103F6
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 9
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine10:: @ 8210416
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 10
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine11:: @ 8210436
	lockall
	checkitem ITEM_COIN_CASE, 1
	compare VAR_RESULT, FALSE
	goto_if_eq MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 11
	specialvar VAR_RESULT, GetSlotMachineId
	playslotmachine VAR_RESULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_NoCoinCase:: @ 8210456
	msgbox MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase, MSGBOX_DEFAULT
	releaseall
	end
	
MauvilleCity_GameCorner_EventScript_TimeToGo::
	lock
	faceplayer
	msgbox GC_Text_Leaving, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq CH_OutsideWest_EventScript_Leaving
	release
	end
	
GC_OutsideWest_EventScript_Leaving::
	warp MAP_BATTLE_FRONTIER_OUTSIDE_WEST, -1, 19, 67
	release
	end
	
GC_Text_Leaving:
	.string "Would you like to\n"
	.string "return to the Battle Frontier?$"

MauvilleCity_GameCorner_Text_ThisIsMauvilleGameCorner: @ 8210460
	.string "This is the Mauville Game Corner.$"

MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins: @ 821047E
	.string "Okay, you wanted some COINS for\n"
	.string "the games?\p"
	.string "But you don't have a COIN CASE for\n"
	.string "stowing the COINS.\p"
	.string "Ah, allow me to give you one!$"

MauvilleCity_GameCorner_Text_WereYouLookingForCoins: @ 82104DF
	.string "Were you looking for COINS?\p"
	.string "It's 1 BP for 50 Coins.\n"
	.string "Would you like some?$"

MauvilleCity_GameCorner_Text_ThankYouHereAreYourCoins: @ 8210529
	.string "Thank you very much!\n"
	.string "Here are your Coins!$"

MauvilleCity_GameCorner_Text_DontHaveEnoughMoney: @ 8210553
	.string "Um… You don't appear to have\n"
	.string "enough money…$"

MauvilleCity_GameCorner_Text_CoinCaseIsFull: @ 821057E
	.string "Oh?\n"
	.string "Your Coin Case is full.$"

MauvilleCity_GameCorner_Text_DontNeedCoinsThen: @ 821059A
	.string "Oh… You don't need COINS, then?\n"
	.string "Good luck on your adventure!$"

MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes: @ 82105D7
	.string "Welcome.\p"
	.string "You can exchange your Coins for\n"
	.string "Battle Points here.$"

MauvilleCity_GameCorner_Text_WhichPrize: @ 821060D
	.string "Which prize would you like?$"

MauvilleCity_GameCorner_Text_SoYourChoiceIsTheTMX: @ 8210629
	.string "Are you certain\n"
	.string "you're ready to exchange?$"

MauvilleCity_GameCorner_Text_SendToYourHomePC: @ 8210646
	.string "Thank you!\n"
	.string "We'll send it to your PC at home.$"

MauvilleCity_GameCorner_Text_NotEnoughCoins: @ 8210673
	.string "You don't have enough COINS.$"

@ Unused
MauvilleCity_GameCorner_Text_NoRoomForPlacingDecor: @ 8210690
	.string "There isn't any room available for\n"
	.string "placing {STR_VAR_1}.$"

MauvilleCity_GameCorner_Text_OhIsThatSo: @ 82106BF
	.string "Oh, is that so? \n"
	.string "You need to save some Coins before\l"
	.string "coming back here.$"

MauvilleCity_GameCorner_Text_SoYourChoiceIsX: @ 8210705
	.string "So your choice is {STR_VAR_1}?$"

MauvilleCity_GameCorner_Text_HereYouGo: @ 821071B
	.string "Here you go!$"

@ Unused
MauvilleCity_GameCorner_Text_CantCarryAnyMore: @ 8210728
	.string "Oh, you can't carry any more than that.$"

MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne: @ 8210750
	.string "I made a mistake and got two of\n"
	.string "the same DOLLS.$"

MauvilleCity_GameCorner_Text_HereYouGo2: @ 821079C
	.string "Here you go!$"

MauvilleCity_GameCorner_Text_YouWantItButNotNow: @ 82107A9
	.string "Huh?\n"
	.string "You want it, but not right now?$"

MauvilleCity_GameCorner_Text_DontBeNegative: @ 82107CE
	.string "Oh, don't be so negative!\n"
	.string "You can have this!$"

MauvilleCity_GameCorner_Text_CantWinJackpot: @ 82107FB
	.string "There's a prize I want, but I can't win\n"
	.string "the jackpot.$"

MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor: @ 8210830
	.string "Hey, kid, if you want to play here,\n"
	.string "you need a COIN CASE.\p"
	.string "I think the young lady next door\n"
	.string "had one. Go see her!$"

MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins: @ 82108A0
	.string "My luck can only last so long.\n"
	.string "This is too much for me.\l"
	.string "Here, take some COINS!$"

MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone: @ 82108EF
	.string "MAUVILLE has something for\n"
	.string "everyone.\p"
	.string "For me, it's the GAME CORNER.$"

MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates: @ 8210932
	.string "The ROULETTE tables have different\n"
	.string "rates.\p"
	.string "Check your COINS if you're going to\n"
	.string "pick a table.$"

MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime: @ 821098E
	.string "It's easy to lose track of time in here. \n"
	.string "I should get back to work.$"

MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay: @ 82109D3
	.string "COINS are needed to play here\n"
	.string "in the GAME CORNER.$"

MauvilleCity_GameCorner_Text_RouletteOnlyLuck: @ 8210A05
	.string "This ROULETTE thing…\n"
	.string "It's rather demanding.\p"
	.string "Win or lose, it's only by luck.$"

MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed: @ 8210A51
	.string "Up to three COINS can be used to play\n"
	.string "the SLOTS.$"

MauvilleCity_GameCorner_Text_DifficultToStopOn7: @ 8210A82
	.string "It's very difficult to make it stop\n"
	.string "right on “7.”\p"
	.string "If it stops on “7” during the REEL TIME\n"
	.string "bonus game, you'll receive extra COINS.$"

MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo: @ 8210B04
	.string "Here's some information for you\n"
	.string "about the SLOTS.\p"
	.string "The more lightning bolts you stock,\n"
	.string "the more REEL TIME chances you get.\p"
	.string "In a game with the maximum five\n"
	.string "REEL TIME chances…\p"
	.string "It is possible to receive four regular\n"
	.string "bonuses, then a big bonus.\p"
	.string "That would total 660 COINS, but it's\n"
	.string "very difficult to get.$"

MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase: @ 8210C2E
	.string "You can't play if you don't have\n"
	.string "a COIN CASE.$"

