BattleFrontier_ExchangeServiceCorner_MapScripts:: @ 825F070
	.byte 0

BattleFrontier_ExchangeServiceCorner_EventScript_ClerkWelcome:: @ 825F071
	msgbox BattleFrontier_ExchangeServiceCorner_Text_WelcomePleaseChoosePrize, MSGBOX_DEFAULT
	special ShowBattlePointsWindow
	return 
BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye:: @ 825F07D
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ThankYouVisitWithPoints, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	release
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize:: @ 825F08A
	specialvar VAR_TEMP_1, GetFrontierBattlePoints
	compare VAR_TEMP_1, VAR_0x8008
	goto_if_ge BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePrize
	msgbox BattleFrontier_ExchangeServiceCorner_Text_DontHaveEnoughPoints, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR2_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	compare VAR_TEMP_2, EXCHANGE_CORNER_VITAMIN_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePrize:: @ 825F0C9
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_TryGiveBundles
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR2_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_TryGiveBundles
	compare VAR_TEMP_2, EXCHANGE_CORNER_VITAMIN_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePkmn
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryGiveItem
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TryGiveBundles::
	compare VAR_0x8009, 0
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveStatusBerries
	compare VAR_0x8009, 1
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveSEBerries
	compare VAR_0x8009, 2
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveStatRaiseBerries
	compare VAR_0x8009, 3
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GivePokeblockBerries
	compare VAR_0x8009, 4
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveContest
	compare VAR_0x8009, 5
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveTM
	compare VAR_0x8009, 6
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaC
	compare VAR_0x8009, 7
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaB
	compare VAR_0x8009, 8
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaA
	goto BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaS
	end

BattleFrontier_ExchangeServiceCorner_EventScript_GiveStatusBerries::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_CHERI_BERRY, 5
	additem ITEM_CHESTO_BERRY, 5
	additem ITEM_PECHA_BERRY, 5
	additem ITEM_RAWST_BERRY, 5
	additem ITEM_ASPEAR_BERRY, 5
	additem ITEM_LEPPA_BERRY, 5
	additem ITEM_ORAN_BERRY, 5
	additem ITEM_PERSIM_BERRY, 5
	additem ITEM_LUM_BERRY, 5
	additem ITEM_SITRUS_BERRY, 5
	additem ITEM_FIGY_BERRY, 5
	additem ITEM_WIKI_BERRY, 5
	additem ITEM_MAGO_BERRY, 5
	additem ITEM_AGUAV_BERRY, 5
	additem ITEM_IAPAPA_BERRY, 5
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end

BattleFrontier_ExchangeServiceCorner_EventScript_GiveSEBerries::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_OCCA_BERRY, 5
	additem ITEM_PASSHO_BERRY, 5
	additem ITEM_WACAN_BERRY, 5
	additem ITEM_RINDO_BERRY, 5
	additem ITEM_YACHE_BERRY, 5
	additem ITEM_CHOPLE_BERRY, 5
	additem ITEM_KEBIA_BERRY, 5
	additem ITEM_SHUCA_BERRY, 5
	additem ITEM_COBA_BERRY, 5
	additem ITEM_PAYAPA_BERRY, 5
	additem ITEM_TANGA_BERRY, 5
	additem ITEM_CHARTI_BERRY, 5
	additem ITEM_KASIB_BERRY, 5
	additem ITEM_HABAN_BERRY, 5
	additem ITEM_COLBUR_BERRY, 5
	additem ITEM_BABIRI_BERRY, 5
	additem ITEM_CHILAN_BERRY, 5
	additem ITEM_ROSELI_BERRY, 5
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_GiveStatRaiseBerries::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_LIECHI_BERRY, 5
	additem ITEM_GANLON_BERRY, 5
	additem ITEM_SALAC_BERRY, 5
	additem ITEM_PETAYA_BERRY, 5
	additem ITEM_APICOT_BERRY, 5
	additem ITEM_LANSAT_BERRY, 5
	additem ITEM_STARF_BERRY, 5
	additem ITEM_ENIGMA_BERRY, 5
	additem ITEM_MICLE_BERRY, 5
	additem ITEM_CUSTAP_BERRY, 5
	additem ITEM_KEE_BERRY, 5
	additem ITEM_MARANGA_BERRY, 5
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_GivePokeblockBerries::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_BLUK_BERRY, 5
	additem ITEM_WEPEAR_BERRY, 5
	additem ITEM_CORNN_BERRY, 5
	additem ITEM_MAGOST_BERRY, 5
	additem ITEM_RABUTA_BERRY, 5
	additem ITEM_NOMEL_BERRY, 5
	additem ITEM_SPELON_BERRY, 5
	additem ITEM_PAMTRE_BERRY, 5
	additem ITEM_WATMEL_BERRY, 5
	additem ITEM_DURIN_BERRY, 5
	additem ITEM_BELUE_BERRY, 5
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end

	BattleFrontier_ExchangeServiceCorner_EventScript_GiveContest::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_RED_SCARF
	additem ITEM_BLUE_SCARF
	additem ITEM_PINK_SCARF
	additem ITEM_GREEN_SCARF
	additem ITEM_YELLOW_SCARF
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end

	BattleFrontier_ExchangeServiceCorner_EventScript_GiveTM::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_TM01
    additem ITEM_TM02
    additem ITEM_TM03
    additem ITEM_TM04
    additem ITEM_TM05
    additem ITEM_TM06
    additem ITEM_TM07
    additem ITEM_TM08
    additem ITEM_TM09
    additem ITEM_TM10
    additem ITEM_TM11
    additem ITEM_TM12
    additem ITEM_TM13
    additem ITEM_TM14
    additem ITEM_TM15
    additem ITEM_TM16
    additem ITEM_TM17
    additem ITEM_TM18
    additem ITEM_TM19
    additem ITEM_TM20
    additem ITEM_TM21
    additem ITEM_TM22
    additem ITEM_TM23
    additem ITEM_TM24
    additem ITEM_TM25
    additem ITEM_TM26
    additem ITEM_TM27
    additem ITEM_TM28
    additem ITEM_TM29
    additem ITEM_TM30
    additem ITEM_TM31
    additem ITEM_TM32
    additem ITEM_TM33
    additem ITEM_TM34
    additem ITEM_TM35
    additem ITEM_TM36
    additem ITEM_TM37
    additem ITEM_TM38
    additem ITEM_TM39
    additem ITEM_TM40
    additem ITEM_TM41
    additem ITEM_TM42
    additem ITEM_TM43
    additem ITEM_TM44
    additem ITEM_TM45
    additem ITEM_TM46
    additem ITEM_TM47
    additem ITEM_TM48
    additem ITEM_TM49
    additem ITEM_TM50
    additem ITEM_HM01
    additem ITEM_HM02
    additem ITEM_HM03
    additem ITEM_HM04
    additem ITEM_HM05
    additem ITEM_HM06
    additem ITEM_HM07
    additem ITEM_HM08
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end
	
	BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaC:: 
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_ABOMASITE
	additem ITEM_AUDINITE
	additem ITEM_GLALITITE
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end
	
	BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaB::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_AMPHAROSITE
	additem ITEM_BANETTITE
	additem ITEM_BLASTOISINITE
	additem ITEM_SCEPTILITE
	additem ITEM_ABSOLITE
	additem ITEM_HERACRONITE
	additem ITEM_HOUNDOOMINITE
	additem ITEM_SLOWBRONITE
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaA::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_AERODACTYLITE
	additem ITEM_AGGRONITE
	additem ITEM_ALTARIANITE
	additem ITEM_BEEDRILLITE
	additem ITEM_MANECTITE
	additem ITEM_LATIOSITE
	additem ITEM_PIDGEOTITE
	additem ITEM_SHARPEDONITE
	additem ITEM_STEELIXITE
	additem ITEM_GALLADITE
	additem ITEM_GARDEVOIRITE
	additem ITEM_VENUSAURITE
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_GiveMegaS::
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem ITEM_ALAKAZITE
	additem ITEM_CHARIZARDITE_X
	additem ITEM_CHARIZARDITE_Y
	additem ITEM_DIANCITE
	additem ITEM_GARCHOMPITE
	additem ITEM_GYARADOSITE
	additem ITEM_LATIASITE
	additem ITEM_LOPUNNITE
	additem ITEM_MAWILITE
	additem ITEM_SABLENITE
	additem ITEM_MEDICHAMITE
	additem ITEM_SCIZORITE
	additem ITEM_SWAMPERTITE
	additem ITEM_TYRANITARITE
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end

BattleFrontier_ExchangeServiceCorner_EventScript_NoRoomForDecor:: @ 825F11D
	msgbox BattleFrontier_ExchangeServiceCorner_Text_PCIsFull, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	release
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePkmn::
	hidemonpic
	getpartysize
	compare VAR_RESULT, PARTY_SIZE
	goto_if_eq BattleFrontier_Exchange_Service_Corner_GIVEPKMNPC
	compare VAR_0x8009, 1
	goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
	compare VAR_0x8009, 2
	goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
	compare VAR_0x8009, 3
	goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
	goto  BattleFrontier_Exchange_Service_Corner_Text_GiveOU
	end
	
BattleFrontier_Exchange_Service_Corner_GIVEPKMNPC::
	hidemonpic
	msgbox BattleFrontier_ExchangeServiceCorner_Text_GotoPC, MSGBOX_DEFAULT
	compare VAR_0x8009, 1
	goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
	compare VAR_0x8009, 2
	goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
	compare VAR_0x8009, 3
	goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
	goto  BattleFrontier_Exchange_Service_Corner_Text_GiveOU
	

BattleFrontier_Exchange_Service_Corner_Text_GiveNU::
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmHPUp, MSGBOX_DEFAULT
	hidemonpic
	scrollingmultichoice 3, 13, 0, 6, TRUE
	switch VAR_RESULT
	case 0, GiveNU1
	case 1, GiveNU2
	case 2, GiveNU3
	case 3, GiveNU4
	case 4, GiveNU5
	case 5, GiveNU6
	case 6, GiveNU7
	case 7, GiveNU8
	case 8, GiveNU9
	case 9, GiveNU10
	case 10, GiveNU11
	case 11, GiveNU12
	case 12, GiveNU13
	case 13, GiveNU14
	case 14, GiveNU15
	case 15, GiveNU16
	case 16, GiveNU17
	case 17, GiveNU18
	case 18, GiveNU19
	case 19, GiveNU20
	case 20, GiveNU21
	case 21, GiveNU22
	case 22, GiveNU23
	case 23, GiveNU24
	case 24, GiveNU25
	case 25, GiveNU26
	case 26, GiveNU27
	case 27, GiveNU28
	case 28, GiveNU29
	case 29, GiveNU30
	case 30, GiveNU31
	case 31, GiveNU32
	case 32, GiveNU33
	case 33, GiveNU34
	case 34, GiveNU35
	case 35, GiveNU36
	case 36, GiveNU37
	case 37, GiveNU38
	case 38, GiveNU39
	case 39, GiveNU40
	case 40, GiveNU41
	case 41, GiveNU42
	case 42, GiveNU43
	case 43, GiveNU44
	case 44, GiveNU45
	case 45, GiveNU46
	case 46, GiveNU47
	case 47, GiveNU48
	case 48, GiveNU49
	case 49, GiveNU50
	case 50, GiveNU51
	case 51, GiveNU52
	case 52, GiveNU53
	case 53, GiveNU54
	case 54, GiveNU55
	case 55, GiveNU56
	case 56, GiveNU57
	case 57, GiveNU58
	case 58, GiveNU59
	case 59, GiveNU60
	case 60, GiveNU61
	case 61, GiveNU62
	case 62, GiveNU63
	case 63, GiveNU64
	case 64, GiveNU65
	case 65, GiveNU66
	case 66, GiveNU67
	case 67, GiveNU68
	case 68, GiveNU69
	case 69, GiveNU70
	case 70, GiveNU71
	case 71, GiveNU72
	case 72, GiveNU73
	case 73, GiveNU74
  case 74, GiveNU75
  case 99, GiveNUR
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	end
	
GiveNUR::
	random 74
	switch VAR_RESULT
	case 0, GiveNU1
	case 1, GiveNU2
	case 2, GiveNU3
	case 3, GiveNU4
	case 4, GiveNU5
	case 5, GiveNU6
	case 6, GiveNU7
	case 7, GiveNU8
	case 8, GiveNU9
	case 9, GiveNU10
	case 10, GiveNU11
	case 11, GiveNU12
	case 0, GiveNU1
	case 1, GiveNU2
	case 2, GiveNU3
	case 3, GiveNU4
	case 4, GiveNU5
	case 5, GiveNU6
	case 6, GiveNU7
	case 7, GiveNU8
	case 8, GiveNU9
	case 9, GiveNU10
	case 10, GiveNU11
	case 11, GiveNU12
	case 12, GiveNU13
	case 13, GiveNU14
	case 14, GiveNU15
	case 15, GiveNU16
	case 16, GiveNU17
	case 17, GiveNU18
	case 18, GiveNU19
	case 19, GiveNU20
	case 20, GiveNU21
	case 21, GiveNU22
	case 22, GiveNU23
	case 23, GiveNU24
	case 24, GiveNU25
	case 25, GiveNU26
	case 26, GiveNU27
	case 27, GiveNU28
	case 28, GiveNU29
	case 29, GiveNU30
	case 30, GiveNU31
	case 31, GiveNU32
	case 32, GiveNU33
	case 33, GiveNU34
	case 34, GiveNU35
	case 35, GiveNU36
	case 36, GiveNU37
	case 37, GiveNU38
	case 38, GiveNU39
	case 39, GiveNU40
	case 40, GiveNU41
	case 41, GiveNU42
	case 42, GiveNU43
	case 43, GiveNU44
	case 44, GiveNU45
	case 45, GiveNU46
	case 46, GiveNU47
	case 47, GiveNU48
	case 48, GiveNU49
	case 49, GiveNU50
	case 50, GiveNU51
	case 51, GiveNU52
	case 52, GiveNU53
	case 53, GiveNU54
	case 54, GiveNU55
	case 55, GiveNU56
	case 56, GiveNU57
	case 57, GiveNU58
	case 58, GiveNU59
	case 59, GiveNU60
	case 60, GiveNU61
	case 61, GiveNU62
	case 62, GiveNU63
	case 63, GiveNU64
	case 64, GiveNU65
	case 65, GiveNU66
	case 66, GiveNU67
	case 67, GiveNU68
	case 68, GiveNU69
	case 69, GiveNU70
	case 70, GiveNU71
	case 71, GiveNU72
	case 72, GiveNU73
	case 73, GiveNU74
  case 74, GiveNU75
  end

	GiveNU1::
		setvar VAR_0x8004, SPECIES_ABOMASNOW
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ABOMASNOW, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_BLIZZARD, MOVE_GIGA_DRAIN, MOVE_FOCUS_BLAST, MOVE_SUBSTITUTE, 0
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU2::
		setvar VAR_0x8004, SPECIES_ACCELGOR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ACCELGOR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_BUG_BUZZ, MOVE_FOCUS_BLAST, MOVE_ENERGY_BALL, MOVE_SPIKES, 0
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU3::
		setvar VAR_0x8004, SPECIES_AERODACTYL
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AERODACTYL, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STONE_EDGE, MOVE_AERIAL_ACE, MOVE_EARTHQUAKE, MOVE_PURSUIT, 0
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU4::
		setvar VAR_0x8004 SPECIES_AMBIPOM
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AMBIPOM, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_FAKE_OUT, MOVE_RETURN, MOVE_LOW_KICK, MOVE_U_TURN, 0
		setvar VAR_0x8004, SPECIES_AMBIPOM
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU5::
		setvar VAR_0x8004 SPECIES_AUDINO
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AUDINO, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CALM, 1, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_WISH, MOVE_PROTECT, MOVE_HEAL_BELL, MOVE_KNOCK_OFF, 0
		setvar VAR_0x8004, SPECIES_AUDINO
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU6::
		setvar VAR_0x8004 SPECIES_BLASTOISE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BLASTOISE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_RAPID_SPIN, MOVE_DARK_PULSE, MOVE_AURA_SPHERE, MOVE_ICE_BEAM, 0
		setvar VAR_0x8004, SPECIES_BLASTOISE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU7::
		setvar VAR_0x8004 SPECIES_BRAVIARY
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BRAVIARY, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BRAVE_BIRD, MOVE_SUPERPOWER, MOVE_BULK_UP, MOVE_ROOST, 0
		setvar VAR_0x8004, SPECIES_BRAVIARY
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU8::
		setvar VAR_0x8004 SPECIES_CLAWITZER
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CLAWITZER, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 1, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_WATER_PULSE, MOVE_ICE_BEAM, MOVE_DARK_PULSE, MOVE_AURA_SPHERE, 0
		setvar VAR_0x8004, SPECIES_CLAWITZER
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU9::
		setvar VAR_0x8004 SPECIES_COMFEY
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_COMFEY, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 1, 236, 0, 0, 20, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_DRAINING_KISS, MOVE_GIGA_DRAIN, MOVE_CALM_MIND, MOVE_ROUND, 0
		setvar VAR_0x8004, SPECIES_COMFEY
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU10::
		setvar VAR_0x8004 SPECIES_DECIDUEYE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DECIDUEYE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 4, 0, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_SHADOW_BALL, MOVE_LEAF_STORM, MOVE_ROOST, 0
		setvar VAR_0x8004, SPECIES_DECIDUEYE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU11::
		setvar VAR_0x8004 SPECIES_DELPHOX
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DELPHOX, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_FIRE_BLAST, MOVE_PSYCHIC, MOVE_GRASS_KNOT, 0
		setvar VAR_0x8004, SPECIES_DELPHOX
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU12::
		setvar VAR_0x8004 SPECIES_DHELMISE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DHELMISE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 0, 52, 252, 0, 204, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_POWER_WHIP, MOVE_ANCHOR_SHOT, MOVE_RAPID_SPIN, MOVE_SYNTHESIS, 0
		setvar VAR_0x8004, SPECIES_DHELMISE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU13::
		setvar VAR_0x8004 SPECIES_DRUDDIGON
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DRUDDIGON, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CAREFUL, 2, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_TOXIC, MOVE_EARTHQUAKE, MOVE_DRAGON_TAIL, 0
		setvar VAR_0x8004, SPECIES_DRUDDIGON
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU14::
		setvar VAR_0x8004 SPECIES_EXEGGUTOR_ALOLAN
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_EXEGGUTOR_ALOLAN, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_DRACO_METEOR, MOVE_LEAF_STORM, MOVE_FLAMETHROWER, MOVE_GIGA_DRAIN, 0
		setvar VAR_0x8004, SPECIES_EXEGGUTOR_ALOLAN
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU15::
		setvar VAR_0x8004 SPECIES_GARBODOR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GARBODOR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_GUNK_SHOT, MOVE_SPIKES, MOVE_SEED_BOMB, MOVE_EXPLOSION, 0
		setvar VAR_0x8004, SPECIES_GARBODOR
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU16::
		setvar VAR_0x8004 SPECIES_GLALIE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GLALIE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_DOUBLE_EDGE, MOVE_EARTHQUAKE, MOVE_EXPLOSION, 0
		setvar VAR_0x8004, SPECIES_GLALIE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU17::
		setvar VAR_0x8004 SPECIES_HARIYAMA
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HARIYAMA, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_HEAVY_SLAM, MOVE_STONE_EDGE, 0
		setvar VAR_0x8004, SPECIES_HARIYAMA
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU18::
		setvar VAR_0x8004 SPECIES_HELIOLISK
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HELIOLISK, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_VOLT_SWITCH, MOVE_HYPER_VOICE, MOVE_THUNDERBOLT, MOVE_SURF, 0
		setvar VAR_0x8004, SPECIES_HELIOLISK
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU19::
		setvar VAR_0x8004 SPECIES_HITMONLEE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HITMONLEE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CURSE, MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_STONE_EDGE, 0
		setvar VAR_0x8004, SPECIES_HITMONLEE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU20::
		setvar VAR_0x8004 SPECIES_HITMONTOP
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HITMONTOP, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_IMPISH, 0, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_RAPID_SPIN, MOVE_FORESIGHT, MOVE_CLOSE_COMBAT, MOVE_TOXIC, 0
		setvar VAR_0x8004, SPECIES_HITMONTOP
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU21::
		setvar VAR_0x8004 SPECIES_INCINEROAR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_INCINEROAR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_KNOCK_OFF, MOVE_EARTHQUAKE, MOVE_FLARE_BLITZ, 0
		setvar VAR_0x8004, SPECIES_INCINEROAR
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU22::
		setvar VAR_0x8004 SPECIES_KLINKLANG
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KLINKLANG, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 2, 68, 252, 0, 188, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SHIFT_GEAR, MOVE_GEAR_GRIND, MOVE_WILD_CHARGE, MOVE_MAGNET_RISE, 0
		setvar VAR_0x8004, SPECIES_KLINKLANG
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU23::
		setvar VAR_0x8004 SPECIES_MAGMORTAR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MAGMORTAR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_FIRE_BLAST, MOVE_FOCUS_BLAST, MOVE_THUNDERBOLT, MOVE_TAUNT, 0
		setvar VAR_0x8004, SPECIES_MAGMORTAR
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU24::
		setvar VAR_0x8004 SPECIES_MALAMAR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MALAMAR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CAREFUL, 0, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_SUPERPOWER, MOVE_KNOCK_OFF, MOVE_REST, MOVE_SLEEP_TALK, 0
		setvar VAR_0x8004, SPECIES_MALAMAR
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU25::
		setvar VAR_0x8004 SPECIES_MEDICHAM
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MEDICHAM, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 0, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_HI_JUMP_KICK, MOVE_ZEN_HEADBUTT, MOVE_THUNDER_PUNCH, MOVE_BULLET_PUNCH, 0
		setvar VAR_0x8004, SPECIES_MEDICHAM
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU26::
		setvar VAR_0x8004 SPECIES_CHARIZARD
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CHARIZARD, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 255, 0, 255, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_WILL_O_WISP, MOVE_DRAGON_CLAW, MOVE_ROOST, MOVE_DRAGON_DANCE, 0
		setvar VAR_0x8004, SPECIES_CHARIZARD
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU27::
		setvar VAR_0x8004 SPECIES_MILTANK
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MILTANK, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CALM, 0, 252, 0, 0, 20, 0, 236, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_SEISMIC_TOSS, MOVE_MILK_DRINK, MOVE_TOXIC, 0
		setvar VAR_0x8004, SPECIES_MILTANK
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU28::
		setvar VAR_0x8004 SPECIES_MINIOR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MINIOR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_NAUGHTY, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SHELL_SMASH, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_ACROBATICS, 0
		setvar VAR_0x8004, SPECIES_MINIOR
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU29::
		setvar VAR_0x8004 SPECIES_MISMAGIUS
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MISMAGIUS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_SHADOW_BALL, MOVE_POWER_GEM, MOVE_PROTECT, 0
		setvar VAR_0x8004, SPECIES_MISMAGIUS
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU30::
		setvar VAR_0x8004 SPECIES_PALOSSAND
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PALOSSAND, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 0, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_EARTH_POWER, MOVE_SHADOW_BALL, MOVE_SHORE_UP, 0
		setvar VAR_0x8004, SPECIES_PALOSSAND
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU31::
		setvar VAR_0x8004 SPECIES_PANGORO
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PANGORO, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_KNOCK_OFF, MOVE_DRAIN_PUNCH, MOVE_BULLET_PUNCH, 0
		setvar VAR_0x8004, SPECIES_PANGORO
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU32::
		setvar VAR_0x8004 SPECIES_PASSIMIAN
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PASSIMIAN, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CLOSE_COMBAT, MOVE_U_TURN, MOVE_KNOCK_OFF, MOVE_GUNK_SHOT, 0
		setvar VAR_0x8004, SPECIES_PASSIMIAN
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU33::
		setvar VAR_0x8004 SPECIES_ROTOM
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ROTOM, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_DEFOG, MOVE_THUNDER, MOVE_SHADOW_BALL, MOVE_VOLT_SWITCH, 0
		setvar VAR_0x8004, SPECIES_ROTOM
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU34::
		setvar VAR_0x8004 SPECIES_SAMUROTT
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SAMUROTT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_HYDRO_PUMP, MOVE_GRASS_KNOT, MOVE_ICE_BEAM, MOVE_TAUNT, 0
		setvar VAR_0x8004, SPECIES_SAMUROTT
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU35::
		setvar VAR_0x8004 SPECIES_SCEPTILE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SCEPTILE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_LEAF_STORM, MOVE_GIGA_DRAIN, MOVE_FOCUS_BLAST, MOVE_EARTHQUAKE, 0
		setvar VAR_0x8004, SPECIES_SCEPTILE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU36::
		setvar VAR_0x8004 SPECIES_SCRAFTY
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SCRAFTY, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CAREFUL, 0, 252, 4, 0, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_BULK_UP, MOVE_KNOCK_OFF, MOVE_DRAIN_PUNCH, MOVE_REST, 0
		setvar VAR_0x8004, SPECIES_SCRAFTY
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU37::
		setvar VAR_0x8004 SPECIES_SEISMITOAD
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SEISMITOAD, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 2, 252, 0, 112, 144, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_SCALD, MOVE_REFRESH, MOVE_EARTHQUAKE, 0
		setvar VAR_0x8004, SPECIES_SEISMITOAD
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU38::
		setvar VAR_0x8004 SPECIES_SIGILYPH
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SIGILYPH, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_AIR_SLASH, MOVE_HEAT_WAVE, MOVE_ENERGY_BALL, MOVE_ROOST, 0
		setvar VAR_0x8004, SPECIES_SIGILYPH
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU39::
		setvar VAR_0x8004 SPECIES_SLOWKING
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SLOWKING, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 2, 212, 0, 0, 44, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_FUTURE_SIGHT, MOVE_FIRE_BLAST, MOVE_DRAGON_TAIL, 0
		setvar VAR_0x8004, SPECIES_SLOWKING
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU40::
		setvar VAR_0x8004 SPECIES_STEELIX
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_STEELIX, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CAREFUL, 1, 252, 4, 0, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_HEAVY_SLAM, MOVE_EARTHQUAKE, MOVE_TOXIC, 0
		setvar VAR_0x8004, SPECIES_STEELIX
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU41::
		setvar VAR_0x8004 SPECIES_TOGEDEMARU
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TOGEDEMARU, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 1, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_U_TURN, MOVE_ZING_ZAP, MOVE_IRON_HEAD, MOVE_NUZZLE, 0
		setvar VAR_0x8004, SPECIES_TOGEDEMARU
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU42::
		setvar VAR_0x8004 SPECIES_TYPHLOSION
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TYPHLOSION, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_ERUPTION, MOVE_FLAMETHROWER, MOVE_FOCUS_BLAST, MOVE_DYNAMIC_PUNCH, 0
		setvar VAR_0x8004, SPECIES_TYPHLOSION
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU43::
		setvar VAR_0x8004 SPECIES_VAPOREON
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VAPOREON, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 0, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_TOXIC, MOVE_WISH, MOVE_PROTECT, 0
		setvar VAR_0x8004, SPECIES_VAPOREON
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU44::
		setvar VAR_0x8004 SPECIES_VIKAVOLT
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VIKAVOLT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 0, 104, 0, 0, 152, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_BUG_BUZZ, MOVE_VOLT_SWITCH, MOVE_ENERGY_BALL, MOVE_ROOST, 0
		setvar VAR_0x8004, SPECIES_VIKAVOLT
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU45::
		setvar VAR_0x8004 SPECIES_VIVILLON_FANCY
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VIVILLON_FANCY, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_QUIVER_DANCE, MOVE_HURRICANE, MOVE_ENERGY_BALL, MOVE_SLEEP_POWDER, 0
		setvar VAR_0x8004, SPECIES_VIVILLON
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU46::
		setvar VAR_0x8004 SPECIES_WEEZING
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_WEEZING, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 0, 252, 0, 152, 16, 0, 88, 31, 31, 31, 31, 31, 31, MOVE_SLUDGE_BOMB, MOVE_WILL_O_WISP, MOVE_PAIN_SPLIT, MOVE_TOXIC_SPIKES, 0
		setvar VAR_0x8004, SPECIES_WEEZING
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU47::
		setvar VAR_0x8004 SPECIES_WHIMSICOTT
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_WHIMSICOTT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_MOONBLAST, MOVE_ENERGY_BALL, MOVE_PSYCHIC, MOVE_U_TURN, 0
		setvar VAR_0x8004, SPECIES_WHIMSICOTT
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU48::
		setvar VAR_0x8004 SPECIES_XATU
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_XATU, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_IMPISH, 2, 252, 0, 196, 60, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_NIGHT_SHADE, MOVE_ROOST, MOVE_U_TURN, MOVE_TOXIC, 0
		setvar VAR_0x8004, SPECIES_XATU
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU49::
		setvar VAR_0x8004 SPECIES_BARBARACLE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BARBARACLE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_NAIVE, 0, 0, 252, 0, 252, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_SHELL_SMASH, MOVE_STONE_EDGE, MOVE_LIQUIDATION, MOVE_GRASS_KNOT, 0
		setvar VAR_0x8004, SPECIES_BARBARACLE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU50::
		setvar VAR_0x8004 SPECIES_BRUXISH
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BRUXISH, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 1, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_PSYCHIC_FANGS, MOVE_AQUA_JET, MOVE_CRUNCH, 0
		setvar VAR_0x8004, SPECIES_BRUXISH
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU51::
		setvar VAR_0x8004 SPECIES_CAMERUPT
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CAMERUPT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_CALM, 1, 252, 0, 0, 84, 0, 172, 31, 31, 31, 31, 31, 31, MOVE_FIRE_BLAST, MOVE_EARTH_POWER, MOVE_REST, MOVE_SLEEP_TALK, 0
		setvar VAR_0x8004, SPECIES_CAMERUPT
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU52::
		setvar VAR_0x8004 SPECIES_COFAGRIGUS
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_COFAGRIGUS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 0, 252, 0, 252, 0, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_WILL_O_WISP, MOVE_SHADOW_BALL, MOVE_PAIN_SPLIT, MOVE_HAZE, 0
		setvar VAR_0x8004, SPECIES_COFAGRIGUS
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU53::
		setvar VAR_0x8004 SPECIES_EMBOAR
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_EMBOAR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_FLARE_BLITZ, MOVE_SUPERPOWER, MOVE_WILD_CHARGE, MOVE_EARTHQUAKE, 0
		setvar VAR_0x8004, SPECIES_EMBOAR
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU54::
		setvar VAR_0x8004 SPECIES_EXPLOUD
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_EXPLOUD, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_BOOMBURST, MOVE_FOCUS_BLAST, MOVE_FIRE_BLAST, MOVE_SURF, 0
		setvar VAR_0x8004, SPECIES_EXPLOUD
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU55::
		setvar VAR_0x8004 SPECIES_KINGDRA
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KINGDRA, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 0, 4, 0, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_HYDRO_PUMP, MOVE_SURF, MOVE_DRACO_METEOR, MOVE_ICE_BEAM, 0
		setvar VAR_0x8004, SPECIES_KINGDRA
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU56::
		setvar VAR_0x8004 SPECIES_SLURPUFF
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SLURPUFF, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BELLY_DRUM, MOVE_PLAY_ROUGH, MOVE_RETURN, MOVE_DRAIN_PUNCH, 0
		setvar VAR_0x8004, SPECIES_SLURPUFF
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU57::
		setvar VAR_0x8004 SPECIES_VANILLUXE
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VANILLUXE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_HASTY, 1, 0, 4, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_BLIZZARD, MOVE_FREEZE_DRY, MOVE_ICE_SHARD, MOVE_TAUNT, 0
		setvar VAR_0x8004, SPECIES_VANILLUXE
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end
	GiveNU58::
		setvar VAR_0x8004 SPECIES_VILEPLUME
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VILEPLUME, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 2, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_GIGA_DRAIN, MOVE_SLUDGE_BOMB, MOVE_STRENGTH_SAP, MOVE_SLEEP_POWDER, 0
		setvar VAR_0x8004, SPECIES_VILEPLUME
		goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
		end	
	GiveNU59::
        setvar VAR_0x8004, SPECIES_ARCHEOPS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ARCHEOPS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_NAIVE, 0, 0, 252, 0, 252, 0, 0, 0, 31, 0, 31, 31, 0, MOVE_HEAD_SMASH, MOVE_STEALTH_ROCK, MOVE_ENDEAVOR, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
	GiveNU60::
		setvar VAR_0x8004, SPECIES_ABSOL,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ABSOL, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_NAIVE, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_PURSUIT, MOVE_FIRE_BLAST, MOVE_SUCKER_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
	GiveNU61::
        setvar VAR_0x8004, SPECIES_AROMATISSE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AROMATISSE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_QUIET, 2, 248, 0, 0, 0, 252, 8, 31, 0, 31, 0, 31, 31, MOVE_TRICK_ROOM, MOVE_NASTY_PLOT, MOVE_MOONBLAST, MOVE_PSYCHIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU62::
        setvar VAR_0x8004, SPECIES_AURORUS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AURORUS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_BLIZZARD, MOVE_FREEZE_DRY, MOVE_STEALTH_ROCK, MOVE_EARTH_POWER, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU63::
        setvar VAR_0x8004, SPECIES_CINCCINO
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CINCCINO, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_TAIL_SLAP, MOVE_ROCK_BLAST, MOVE_BULLET_SEED, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU64::
        setvar VAR_0x8004, SPECIES_GALLADE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GALLADE, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_PSYCHO_CUT, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU65::
        setvar VAR_0x8004, SPECIES_GUZZLORD
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GUZZLORD, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_MODEST, 0, 0, 0, 76, 180, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_DRACO_METEOR, MOVE_DARK_PULSE, MOVE_FIRE_BLAST, MOVE_SLUDGE_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU66::
        setvar VAR_0x8004, SPECIES_KINGLER
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KINGLER, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_ADAMANT, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_AGILITY, MOVE_SWORDS_DANCE, MOVE_LIQUIDATION, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU67::
        setvar VAR_0x8004, SPECIES_LILLIGANT
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LILLIGANT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_QUIVER_DANCE, MOVE_SLEEP_POWDER, MOVE_GIGA_DRAIN, MOVE_HYPER_BEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU68::
        setvar VAR_0x8004, SPECIES_PYROAR
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PYROAR, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_FIRE_BLAST, MOVE_HYPER_VOICE, MOVE_SOLAR_BEAM, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU69::
        setvar VAR_0x8004, SPECIES_PYUKUMUKU
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PYUKUMUKU, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_BOLD, 2, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_RECOVER, MOVE_REST, MOVE_BLOCK, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU70::
        setvar VAR_0x8004, SPECIES_REGIROCK
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_REGIROCK, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_IMPISH, 2, 248, 96, 16, 0, 0, 148, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU71::
        setvar VAR_0x8004, SPECIES_SAWK
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SAWK, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_ICE_PUNCH, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU72::
        setvar VAR_0x8004, SPECIES_TAUROS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TAUROS, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_NAIVE, 2, 0, 252, 0, 252, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_BODY_SLAM, MOVE_FIRE_BLAST, MOVE_WORK_UP, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveNU73::
        setvar VAR_0x8004, SPECIES_SILVALLY
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SILVALLY, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_JOLLY, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_DOUBLE_EDGE, MOVE_PARTING_SHOT, MOVE_SHADOW_CLAW, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
	GiveNU74::
        setvar VAR_0x8004, SPECIES_MESPRIT
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MESPRIT, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_PSYCHIC, MOVE_THUNDERBOLT, MOVE_ENERGY_BALL, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
  GiveNU75:: 
        setvar VAR_0x8004, SPECIES_BELLOSSOM
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveNU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BELLOSSOM, 100, ITEM_NONE, ITEM_POKE_BALL, NATURE_TIMID, 0, 248, 0, 8, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STRENGTH_SAP, MOVE_QUIVER_DANCE, MOVE_GIGA_DRAIN, MOVE_MOONBLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end

  

  


BattleFrontier_Exchange_Service_Corner_Text_GiveRU::
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmHPUp, MSGBOX_DEFAULT
	hidemonpic
	scrollingmultichoice 4, 12, 0, 6, TRUE
    switch VAR_RESULT
    case 0, GiveRU1
    case 1, GiveRU2
    case 2, GiveRU3
    case 3, GiveRU4
    case 4, GiveRU5
    case 5, GiveRU6
    case 6, GiveRU7
    case 7, GiveRU8
    case 8, GiveRU9
    case 9, GiveRU10
    case 10, GiveRU11
    case 11, GiveRU12
    case 12, GiveRU13
    case 13, GiveRU14
    case 14, GiveRU15
    case 15, GiveRU16
    case 16, GiveRU17
    case 17, GiveRU18
    case 18, GiveRU19
    case 19, GiveRU20
    case 20, GiveRU21
    case 21, GiveRU22
    case 22, GiveRU23
    case 23, GiveRU24
    case 24, GiveRU25
    case 25, GiveRU26
    case 26, GiveRU27
    case 27, GiveRU28
    case 28, GiveRU29
    case 29, GiveRU30
    case 30, GiveRU31
    case 31, GiveRU32
    case 32, GiveRU33
    case 33, GiveRU34
    case 34, GiveRU35
    case 35, GiveRU36
    case 36, GiveRU37
    case 37, GiveRU38
    case 38, GiveRU39
    case 39, GiveRU40
    case 40, GiveRU41
    case 41, GiveRU42
    case 42, GiveRU43
    case 43, GiveRU44
    case 44, GiveRU45
    case 45, GiveRU46
    case 46, GiveRU47
    case 47, GiveRU48
    case 48, GiveRU49
    case 49, GiveRU50
    case 50, GiveRU51
    case 51, GiveRU52
    case 52, GiveRU53
    case 53, GiveRU54
    case 54, GiveRU55
    case 55, GiveRU56
    case 56, GiveRU57
    case 57, GiveRU58
    case 58, GiveRU59
    case 59, GiveRU60
	case 60, GiveRU61
    case 61, GiveRU62
    case 62, GiveRU63
    case 63, GiveRU64
    case 64, GiveRU65
    case 65, GiveRU66
    case 66, GiveRU67
    case 67, GiveRU68
    case 68, GiveRU69
    case 69, GiveRU70
    case 70, GiveRU71
    case 71, GiveRU72
    case 72, GiveRU73
    case 73, GiveRU74
    case 74, GiveRU75
	case 99, GiveRUR
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	end
	
GiveRUR::
	random 75
	switch VAR_RESULT
    case 0, GiveRU1
    case 1, GiveRU2
    case 2, GiveRU3
    case 3, GiveRU4
    case 4, GiveRU5
    case 5, GiveRU6
    case 6, GiveRU7
    case 7, GiveRU8
    case 8, GiveRU9
    case 9, GiveRU10
    case 10, GiveRU11
    case 11, GiveRU12
    case 12, GiveRU13
    case 13, GiveRU14
    case 14, GiveRU15
    case 15, GiveRU16
    case 16, GiveRU17
    case 17, GiveRU18
    case 18, GiveRU19
    case 19, GiveRU20
    case 20, GiveRU21
    case 21, GiveRU22
    case 22, GiveRU23
    case 23, GiveRU24
    case 24, GiveRU25
    case 25, GiveRU26
    case 26, GiveRU27
    case 27, GiveRU28
    case 28, GiveRU29
    case 29, GiveRU30
    case 30, GiveRU31
    case 31, GiveRU32
    case 32, GiveRU33
    case 33, GiveRU34
    case 34, GiveRU35
    case 35, GiveRU36
    case 36, GiveRU37
    case 37, GiveRU38
    case 38, GiveRU39
    case 39, GiveRU40
    case 40, GiveRU41
    case 41, GiveRU42
    case 42, GiveRU43
    case 43, GiveRU44
    case 44, GiveRU45
    case 45, GiveRU46
    case 46, GiveRU47
    case 47, GiveRU48
    case 48, GiveRU49
    case 49, GiveRU50
    case 50, GiveRU51
    case 51, GiveRU52
    case 52, GiveRU53
    case 53, GiveRU54
    case 54, GiveRU55
    case 55, GiveRU56
    case 56, GiveRU57
    case 57, GiveRU58
    case 58, GiveRU59
    case 59, GiveRU60
	case 60, GiveRU61
    case 61, GiveRU62
    case 62, GiveRU63
    case 63, GiveRU64
    case 64, GiveRU65
    case 65, GiveRU66
    case 66, GiveRU67
    case 67, GiveRU68
    case 68, GiveRU69
    case 69, GiveRU70
    case 70, GiveRU71
    case 71, GiveRU72
    case 72, GiveRU73
    case 73, GiveRU74
    case 74, GiveRU75
	case 99, GiveRUR
end

    GiveRU1::
		setvar VAR_0x8004, SPECIES_AMPHAROS,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AMPHAROS, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_MODEST, 0, 4, 0, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_VOLT_SWITCH, MOVE_DRAGON_PULSE, MOVE_FOCUS_BLAST, MOVE_THUNDERBOLT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU2::
		setvar VAR_0x8004, SPECIES_ARAQUANID,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ARAQUANID, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STICKY_WEB, MOVE_LIQUIDATION, MOVE_MAGIC_COAT, MOVE_MIRROR_COAT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU3::
		setvar VAR_0x8004, SPECIES_ARCANINE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ARCANINE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_FLARE_BLITZ, MOVE_WILD_CHARGE, MOVE_EXTREME_SPEED, MOVE_MORNING_SUN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU4::
		setvar VAR_0x8004, SPECIES_BANETTE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BANETTE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 1, 40, 252, 0, 216, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_DESTINY_BOND, MOVE_SHADOW_CLAW, MOVE_GUNK_SHOT, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU5::
		setvar VAR_0x8004, SPECIES_BEWEAR,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BEWEAR, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_DOUBLE_EDGE, MOVE_SUPERPOWER, MOVE_SHADOW_CLAW, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU6::
		setvar VAR_0x8004, SPECIES_BRONZONG,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BRONZONG, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CALM, 0, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_TOXIC, MOVE_PSYWAVE, MOVE_PROTECT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU7::
		setvar VAR_0x8004, SPECIES_CLOYSTER,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CLOYSTER, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SHELL_SMASH, MOVE_ICICLE_SPEAR, MOVE_SPIKES, MOVE_EXPLOSION, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU8::
		setvar VAR_0x8004, SPECIES_DONPHAN,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DONPHAN, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 252, 252, 4, 0, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_RAPID_SPIN, MOVE_EARTHQUAKE, MOVE_KNOCK_OFF, MOVE_ICE_SHARD, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU9::
		setvar VAR_0x8004, SPECIES_DRAGALGE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DRAGALGE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_MODEST, 2, 204, 0, 0, 52, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_DRACO_METEOR, MOVE_SLUDGE_BOMB, MOVE_FOCUS_BLAST, MOVE_TOXIC_SPIKES, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU10::
		setvar VAR_0x8004, SPECIES_DRAPION,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DRAPION, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_POISON_JAB, MOVE_PURSUIT, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU11::
		setvar VAR_0x8004, SPECIES_ESCAVALIER,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ESCAVALIER, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 2, 252, 52, 0, 0, 0, 204, 31, 31, 31, 31, 31, 31, MOVE_MEGAHORN, MOVE_IRON_HEAD, MOVE_PROTECT, MOVE_PURSUIT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU12::
		setvar VAR_0x8004, SPECIES_ESPEON,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ESPEON, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_PSYCHIC, MOVE_SHADOW_BALL, MOVE_MORNING_SUN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU13::
		setvar VAR_0x8004, SPECIES_FLORGES_YELLOW_FLOWER,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_FLORGES, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 252, 0, 120, 136, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_MOONBLAST, MOVE_SYNTHESIS, MOVE_AROMATHERAPY, MOVE_WISH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU14::
		setvar VAR_0x8004, SPECIES_FLYGON,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_FLYGON, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_U_TURN, MOVE_EARTHQUAKE, MOVE_OUTRAGE, MOVE_AERIAL_ACE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU15::
		setvar VAR_0x8004, SPECIES_FORRETRESS,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_FORRETRESS, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_RELAXED, 2, 252, 0, 252, 0, 0, 4, 31, 31, 31, 0, 31, 31, MOVE_GYRO_BALL, MOVE_SPIKES, MOVE_VOLT_SWITCH, MOVE_RAPID_SPIN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU16::
		setvar VAR_0x8004, SPECIES_GALVANTULA,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GALVANTULA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_STICKY_WEB, MOVE_THUNDER, MOVE_BUG_BUZZ, MOVE_VOLT_SWITCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU17::
		setvar VAR_0x8004, SPECIES_SHAYMIN,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SHAYMIN, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SEED_FLARE, MOVE_EARTH_POWER, MOVE_PSYCHIC, MOVE_SYNTHESIS, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU18::
		setvar VAR_0x8004, SPECIES_GIGALITH,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GIGALITH, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CAREFUL, 1, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU19::
		setvar VAR_0x8004, SPECIES_GOLISOPOD,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GOLISOPOD, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 168, 252, 0, 88, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_FIRST_IMPRESSION, MOVE_LIQUIDATION, MOVE_LEECH_LIFE, MOVE_AQUA_JET, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU20::
		setvar VAR_0x8004, SPECIES_GOODRA,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GOODRA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 4, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_DRACO_METEOR, MOVE_THUNDERBOLT, MOVE_FIRE_BLAST, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU21::
		setvar VAR_0x8004, SPECIES_HONCHKROW,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HONCHKROW, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BRAVE_BIRD, MOVE_SUCKER_PUNCH, MOVE_SUPERPOWER, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU22::
		setvar VAR_0x8004, SPECIES_JOLTEON,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_JOLTEON, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_YAWN, MOVE_VOLT_SWITCH, MOVE_THUNDERBOLT, MOVE_HYPER_VOICE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU23::
		setvar VAR_0x8004, SPECIES_LYCANROC_DUSK,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LYCANROC_DUSK, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_STONE_EDGE, MOVE_FIRE_FANG, MOVE_SUCKER_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU24::
		setvar VAR_0x8004, SPECIES_MACHAMP,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MACHAMP, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_FACADE, MOVE_BULLET_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU25::
		setvar VAR_0x8004, SPECIES_MANDIBUZZ,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MANDIBUZZ, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_IMPISH, 1, 248, 0, 76, 184, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_TAUNT, MOVE_TOXIC, MOVE_ROOST, MOVE_FOUL_PLAY, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU26::
		setvar VAR_0x8004, SPECIES_MANTINE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MANTINE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CALM, 1, 252, 0, 0, 136, 0, 120, 31, 31, 31, 31, 31, 31, MOVE_ROOST, MOVE_DEFOG, MOVE_SCALD, MOVE_AIR_SLASH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU27::
		setvar VAR_0x8004, SPECIES_MAROWAK_ALOLAN,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MAROWAK_ALOLAN, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 2, 212, 252, 0, 44, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_FLARE_BLITZ, MOVE_SHADOW_BONE, MOVE_SWORDS_DANCE, MOVE_LOW_KICK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU28::
		setvar VAR_0x8004, SPECIES_METAGROSS,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_METAGROSS, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 76, 252, 0, 180, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_METEOR_MASH, MOVE_EARTHQUAKE, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU29::
		setvar VAR_0x8004, SPECIES_MILOTIC,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MILOTIC, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CALM, 0, 252, 0, 108, 0, 0, 148, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_RECOVER, MOVE_TOXIC, MOVE_REFRESH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU30::
		setvar VAR_0x8004, SPECIES_NIDOQUEEN,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NIDOQUEEN, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_EARTH_POWER, MOVE_SLUDGE_WAVE, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU31::
		setvar VAR_0x8004, SPECIES_NINETALES,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NINETALES, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_OVERHEAT, MOVE_FIRE_BLAST, MOVE_SOLAR_BEAM, MOVE_DARK_PULSE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU32::
		setvar VAR_0x8004, SPECIES_NOIVERN,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NOIVERN, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_HURRICANE, MOVE_TAUNT, MOVE_ROOST, MOVE_U_TURN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU33::
		setvar VAR_0x8004, SPECIES_RHYPERIOR,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_RHYPERIOR, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 1, 248, 16, 0, 0, 0, 244, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_MEGAHORN, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU34::
		setvar VAR_0x8004, SPECIES_RIBOMBEE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_RIBOMBEE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_MOONBLAST, MOVE_BUG_BUZZ, MOVE_U_TURN, MOVE_STICKY_WEB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU35::
		setvar VAR_0x8004, SPECIES_ROSERADE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ROSERADE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_LEAF_STORM, MOVE_SLUDGE_BOMB, MOVE_SYNTHESIS, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU36::
		setvar VAR_0x8004, SPECIES_ROTOM_MOW,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ROTOM_MOW, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_DEFOG, MOVE_LEAF_STORM, MOVE_VOLT_SWITCH, MOVE_WILL_O_WISP, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU37::
		setvar VAR_0x8004, SPECIES_SALAZZLE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SALAZZLE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 8, 0, 0, 252, 248, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_SLUDGE_WAVE, MOVE_DRAGON_PULSE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU38::
		setvar VAR_0x8004, SPECIES_SCEPTILE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SCEPTILE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_LEAF_STORM, MOVE_DRAGON_PULSE, MOVE_PROTECT, MOVE_LEECH_SEED, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU39::
		setvar VAR_0x8004, SPECIES_SLOWBRO,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SLOWBRO, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_BOLD, 2, 252, 0, 252, 0, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_PSYSHOCK, MOVE_SLACK_OFF, MOVE_ICE_BEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU40::
		setvar VAR_0x8004, SPECIES_SNORLAX,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SNORLAX, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CAREFUL, 1, 188, 0, 128, 0, 0, 192, 31, 31, 31, 31, 31, 31, MOVE_CURSE, MOVE_BODY_SLAM, MOVE_REST, MOVE_SLEEP_TALK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU41::
		setvar VAR_0x8004, SPECIES_SWELLOW,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SWELLOW, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_BOOMBURST, MOVE_U_TURN, MOVE_HEAT_WAVE, MOVE_AIR_SLASH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU42::
		setvar VAR_0x8004, SPECIES_TOXICROAK,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TOXICROAK, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_GUNK_SHOT, MOVE_DRAIN_PUNCH, MOVE_SUCKER_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU43::
		setvar VAR_0x8004, SPECIES_TSAREENA,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TSAREENA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_RAPID_SPIN, MOVE_POWER_WHIP, MOVE_KNOCK_OFF, MOVE_SYNTHESIS, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU44::
		setvar VAR_0x8004, SPECIES_TYRANTRUM,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TYRANTRUM, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 0, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_HEAD_SMASH, MOVE_OUTRAGE, MOVE_EARTHQUAKE, MOVE_DRAGON_CLAW, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU45::
		setvar VAR_0x8004, SPECIES_UMBREON,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_UMBREON, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CALM, 0, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_WISH, MOVE_PROTECT, MOVE_HEAL_BELL, MOVE_FOUL_PLAY, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU46::
		setvar VAR_0x8004, SPECIES_VENUSAUR,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VENUSAUR, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_MODEST, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_GROWTH, MOVE_SLUDGE_BOMB, MOVE_GIGA_DRAIN, MOVE_ROAR, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU47::
		setvar VAR_0x8004, SPECIES_YANMEGA,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_YANMEGA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_BUG_BUZZ, MOVE_AIR_SLASH, MOVE_U_TURN, MOVE_GIGA_DRAIN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
	GiveRU48::
		setvar VAR_0x8004, SPECIES_TORTERRA,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TORTERRA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_IMPISH, 0, 248, 0, 252, 0, 0, 8, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_WOOD_HAMMER, MOVE_EARTHQUAKE, MOVE_SYNTHESIS, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU49::
		setvar VAR_0x8004, SPECIES_ABSOL,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ABSOL, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_NAIVE, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_PURSUIT, MOVE_FIRE_BLAST, MOVE_SUCKER_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU50::
		setvar VAR_0x8004, SPECIES_DARMANITAN,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DARMANITAN, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_FLARE_BLITZ, MOVE_U_TURN, MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU51::
		setvar VAR_0x8004, SPECIES_DURANT,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DURANT, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_HONE_CLAWS, MOVE_IRON_HEAD, MOVE_SUPERPOWER, MOVE_CRUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU52::
		setvar VAR_0x8004, SPECIES_HERACROSS,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HERACROSS, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_KNOCK_OFF, MOVE_FACADE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU53::
		setvar VAR_0x8004, SPECIES_HOUNDOOM,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HOUNDOOM, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_FIRE_BLAST, MOVE_DARK_PULSE, MOVE_SLUDGE_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU54::
		setvar VAR_0x8004, SPECIES_LINOONE,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LINOONE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 1, 148, 248, 8, 16, 0, 88, 31, 31, 31, 31, 31, 31, MOVE_BELLY_DRUM, MOVE_EXTREME_SPEED, MOVE_STOMPING_TANTRUM, MOVE_SEED_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU55::
		setvar VAR_0x8004, SPECIES_MIENSHAO,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MIENSHAO, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 1, 100, 0, 0, 252, 0, 156, 31, 31, 31, 31, 31, 31, MOVE_HI_JUMP_KICK, MOVE_KNOCK_OFF, MOVE_U_TURN, MOVE_FAKE_OUT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU56::
		setvar VAR_0x8004, SPECIES_REUNICLUS,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_REUNICLUS, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_BOLD, 1, 252, 0, 212, 44, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_PSYSHOCK, MOVE_FOCUS_BLAST, MOVE_RECOVER, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU57::
		setvar VAR_0x8004, SPECIES_SHARPEDO,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SHARPEDO, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CRUNCH, MOVE_ICE_FANG, MOVE_EARTHQUAKE, MOVE_PROTECT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU58::
		setvar VAR_0x8004, SPECIES_TALONFLAME,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TALONFLAME, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_BRAVE_BIRD, MOVE_FLARE_BLITZ, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU59::
		setvar VAR_0x8004, SPECIES_VENOMOTH,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VENOMOTH, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_QUIVER_DANCE, MOVE_SLEEP_POWDER, MOVE_BUG_BUZZ, MOVE_SLUDGE_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU60::
		setvar VAR_0x8004, SPECIES_ZOROARK,
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ZOROARK, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_DARK_PULSE, MOVE_FOCUS_BLAST, MOVE_SLUDGE_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
	GiveRU61::
        setvar VAR_0x8004, SPECIES_CRESSELIA
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CRESSELIA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_BOLD, 0, 252, 0, 112, 144, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_MOONLIGHT, MOVE_PSYSHOCK, MOVE_MOONBLAST, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU62::
        setvar VAR_0x8004, SPECIES_DIANCIE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DIANCIE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CALM, 0, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_MOONBLAST, MOVE_EARTH_POWER, MOVE_HEAL_BELL, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU63::
        setvar VAR_0x8004, SPECIES_GARDEVOIR
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GARDEVOIR, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 1, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_PSYSHOCK, MOVE_MOONBLAST, MOVE_WILL_O_WISP, MOVE_HEALING_WISH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU64::
        setvar VAR_0x8004, SPECIES_HOOPA
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HOOPA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 248, 8, 31, 31, 31, 31, 31, 31, MOVE_SHADOW_BALL, MOVE_FOCUS_BLAST, MOVE_THUNDERBOLT, MOVE_NASTY_PLOT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU65::
        setvar VAR_0x8004, SPECIES_NECROZMA
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NECROZMA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_PSYCHIC, MOVE_HEAT_WAVE, MOVE_CALM_MIND, MOVE_MOONLIGHT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU66::
        setvar VAR_0x8004, SPECIES_RAIKOU
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_RAIKOU, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_CALM_MIND, MOVE_THUNDERBOLT, MOVE_AURA_SPHERE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU67::
        setvar VAR_0x8004, SPECIES_REGISTEEL
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_REGISTEEL, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_CALM, 0, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_SEISMIC_TOSS, MOVE_TOXIC, MOVE_STEALTH_ROCK, MOVE_PROTECT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU68::
        setvar VAR_0x8004, SPECIES_UXIE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_UXIE, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 252, 0, 40, 216, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_PSYSHOCK, MOVE_YAWN, MOVE_MEMENTO, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU69::
        setvar VAR_0x8004, SPECIES_VIRIZION
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VIRIZION, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_LEAF_BLADE, MOVE_SYNTHESIS, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU70::
        setvar VAR_0x8004, SPECIES_ZYGARDE_10
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ZYGARDE_10, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_DRAGON_DANCE, MOVE_THOUSAND_ARROWS, MOVE_OUTRAGE, MOVE_EXTREME_SPEED, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU71::
        setvar VAR_0x8004, SPECIES_KYUREM
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KYUREM, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 56, 0, 0, 252, 196, 4, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_ICE_BEAM, MOVE_EARTH_POWER, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU72::
        setvar VAR_0x8004, SPECIES_MELOETTA
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MELOETTA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SHADOW_BALL, MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_HYPER_VOICE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU73::
        setvar VAR_0x8004, SPECIES_STAKATAKA
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_STAKATAKA, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_LONELY, 0, 252, 252, 0, 0, 0, 4, 31, 31, 31, 0, 31, 31, MOVE_TRICK_ROOM, MOVE_GYRO_BALL, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU74::
        setvar VAR_0x8004, SPECIES_TORNADUS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TORNADUS, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_HASTY, 2, 0, 4, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_HURRICANE, MOVE_HEAT_WAVE, MOVE_SUPERPOWER, MOVE_GRASS_KNOT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveRU75::
        setvar VAR_0x8004, SPECIES_ENTEI
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveRU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ENTEI, 100, ITEM_NONE, ITEM_GREAT_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SACRED_FIRE, MOVE_EXTREME_SPEED, MOVE_STONE_EDGE, MOVE_FLARE_BLITZ, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end

BattleFrontier_Exchange_Service_Corner_Text_GiveUU::
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmHPUp, MSGBOX_DEFAULT
	hidemonpic
	scrollingmultichoice 5, 12, 0, 6, TRUE
    switch VAR_RESULT
    case 0, GiveUU1
    case 1, GiveUU2
    case 2, GiveUU3
    case 3, GiveUU4
    case 4, GiveUU5
    case 5, GiveUU6
    case 6, GiveUU7
    case 7, GiveUU8
    case 8, GiveUU9
    case 9, GiveUU10
    case 10, GiveUU11
    case 11, GiveUU12
    case 12, GiveUU13
    case 13, GiveUU14
    case 14, GiveUU15
    case 15, GiveUU16
    case 16, GiveUU17
    case 17, GiveUU18
    case 18, GiveUU19
    case 19, GiveUU20
    case 20, GiveUU21
    case 21, GiveUU22
    case 22, GiveUU23
    case 23, GiveUU24
    case 24, GiveUU25
    case 25, GiveUU26
    case 26, GiveUU27
    case 27, GiveUU28
    case 28, GiveUU29
    case 29, GiveUU30
    case 30, GiveUU31
    case 31, GiveUU32
    case 32, GiveUU33
    case 33, GiveUU34
    case 34, GiveUU35
    case 35, GiveUU36
    case 36, GiveUU37
	case 37, GiveUU38
    case 38, GiveUU39
    case 39, GiveUU40
    case 40, GiveUU41
    case 41, GiveUU42
    case 42, GiveUU43
    case 43, GiveUU44
    case 44, GiveUU45
    case 45, GiveUU46
    case 46, GiveUU47
    case 47, GiveUU48
    case 48, GiveUU49
    case 49, GiveUU50
    case 50, GiveUU51
    case 51, GiveUU52
	case 52, GiveUU53
    case 53, GiveUU54
    case 54, GiveUU55
    case 55, GiveUU56
    case 56, GiveUU57
	case 57, GiveUU58
    case 58, GiveUU59
    case 59, GiveUU60
    case 60, GiveUU61
    case 61, GiveUU62
    case 62, GiveUU63
    case 63, GiveUU64
    case 64, GiveUU65
    case 65, GiveUU66
    case 66, GiveUU67
    case 67, GiveUU68
    case 68, GiveUU69
	case 99, GiveUUR
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	end
	
GiveUUR::
	random 69
	switch VAR_RESULT
	case 0, GiveUU1
    case 1, GiveUU2
    case 2, GiveUU3
    case 3, GiveUU4
    case 4, GiveUU5
    case 5, GiveUU6
    case 6, GiveUU7
    case 7, GiveUU8
    case 8, GiveUU9
    case 9, GiveUU10
    case 10, GiveUU11
    case 11, GiveUU12
    case 12, GiveUU13
    case 13, GiveUU14
    case 14, GiveUU15
    case 15, GiveUU16
    case 16, GiveUU17
    case 17, GiveUU18
    case 18, GiveUU19
    case 19, GiveUU20
    case 20, GiveUU21
    case 21, GiveUU22
    case 22, GiveUU23
    case 23, GiveUU24
    case 24, GiveUU25
    case 25, GiveUU26
    case 26, GiveUU27
    case 27, GiveUU28
    case 28, GiveUU29
    case 29, GiveUU30
    case 30, GiveUU31
    case 31, GiveUU32
    case 32, GiveUU33
    case 33, GiveUU34
    case 34, GiveUU35
    case 35, GiveUU36
    case 36, GiveUU37
	case 37, GiveUU38
    case 38, GiveUU39
    case 39, GiveUU40
    case 40, GiveUU41
    case 41, GiveUU42
    case 42, GiveUU43
    case 43, GiveUU44
    case 44, GiveUU45
    case 45, GiveUU46
    case 46, GiveUU47
    case 47, GiveUU48
    case 48, GiveUU49
    case 49, GiveUU50
    case 50, GiveUU51
    case 51, GiveUU52
	case 52, GiveUU53
    case 53, GiveUU54
    case 54, GiveUU55
    case 55, GiveUU56
    case 56, GiveUU57
	case 57, GiveUU58
    case 58, GiveUU59
    case 59, GiveUU60
    case 60, GiveUU61
    case 61, GiveUU62
    case 62, GiveUU63
    case 63, GiveUU64
    case 64, GiveUU65
    case 65, GiveUU66
    case 66, GiveUU67
    case 67, GiveUU68
    case 68, GiveUU69
	end


    GiveUU1::
		setvar VAR_0x8004, SPECIES_AGGRON
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AGGRON, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_CAREFUL, 0, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_HEAVY_SLAM, MOVE_EARTHQUAKE, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU2::
		setvar VAR_0x8004, SPECIES_ALOMOMOLA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ALOMOMOLA, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_BOLD, 2, 40, 0, 252, 0, 0, 216, 31, 31, 31, 31, 31, 31, MOVE_WISH, MOVE_PROTECT, MOVE_TOXIC, MOVE_SCALD, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU3::
		setvar VAR_0x8004, SPECIES_ALTARIA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ALTARIA, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 0, 64, 252, 0, 192, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_DRAGON_DANCE, MOVE_FACADE, MOVE_REFRESH, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU4::
		setvar VAR_0x8004, SPECIES_AMOONGUSS
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AMOONGUSS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_BOLD, 2, 252, 0, 176, 0, 0, 80, 31, 31, 31, 31, 31, 31, MOVE_SPORE, MOVE_GIGA_DRAIN, MOVE_SLUDGE_BOMB, MOVE_CLEAR_SMOG, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU5::
		setvar VAR_0x8004, SPECIES_BEEDRILL
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BEEDRILL, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_U_TURN, MOVE_POISON_JAB, MOVE_DRILL_RUN, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU6::
		setvar VAR_0x8004, SPECIES_BISHARP
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BISHARP, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_KNOCK_OFF, MOVE_IRON_HEAD, MOVE_SUCKER_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU7::
		setvar VAR_0x8004, SPECIES_BLISSEY
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BLISSEY, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_BOLD, 0, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SEISMIC_TOSS, MOVE_TOXIC, MOVE_SOFT_BOILED, MOVE_HEAL_BELL, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU8::
		setvar VAR_0x8004, SPECIES_CHANDELURE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CHANDELURE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 1, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_CALM_MIND, MOVE_SHADOW_BALL, MOVE_FLAMETHROWER, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU9::
		setvar VAR_0x8004, SPECIES_CHESNAUGHT
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CHESNAUGHT, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_IMPISH, 2, 244, 0, 252, 12, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_WOOD_HAMMER, MOVE_DRAIN_PUNCH, MOVE_SYNTHESIS, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU10::
		setvar VAR_0x8004, SPECIES_CRAWDAUNT
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CRAWDAUNT, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_CRABHAMMER, MOVE_KNOCK_OFF, MOVE_AQUA_JET, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU11::
		setvar VAR_0x8004, SPECIES_CROBAT
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CROBAT, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BRAVE_BIRD, MOVE_SUPER_FANG, MOVE_TAUNT, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU12::
		setvar VAR_0x8004, SPECIES_EMPOLEON
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_EMPOLEON, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_CALM, 0, 252, 0, 76, 0, 0, 180, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_STEALTH_ROCK, MOVE_TOXIC, MOVE_PROTECT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU13::
		setvar VAR_0x8004, SPECIES_FERALIGATR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_FERALIGATR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_DRAGON_DANCE, MOVE_LIQUIDATION, MOVE_ICE_PUNCH, MOVE_CRUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU14::
		setvar VAR_0x8004, SPECIES_FROSLASS
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_FROSLASS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 4, 0, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_TAUNT, MOVE_ICY_WIND, MOVE_DESTINY_BOND, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU15::
		setvar VAR_0x8004, SPECIES_GENGAR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GENGAR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_SHADOW_BALL, MOVE_SLUDGE_WAVE, MOVE_FOCUS_BLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU16::
		setvar VAR_0x8004, SPECIES_HAXORUS
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HAXORUS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_OUTRAGE, MOVE_EARTHQUAKE, MOVE_POISON_JAB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU17::
		setvar VAR_0x8004, SPECIES_HIPPOWDON
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HIPPOWDON, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_IMPISH, 0, 252, 0, 80, 0, 0, 176, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_SLACK_OFF, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU18::
		setvar VAR_0x8004, SPECIES_HYDREIGON
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HYDREIGON, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_DRACO_METEOR, MOVE_DARK_PULSE, MOVE_U_TURN, MOVE_FIRE_BLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU19::
		setvar VAR_0x8004, SPECIES_KLEFKI
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KLEFKI, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_CAREFUL, 0, 248, 0, 0, 8, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_THUNDER_WAVE, MOVE_MAGNET_RISE, MOVE_PLAY_ROUGH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU20::
		setvar VAR_0x8004, SPECIES_KROOKODILE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KROOKODILE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_EARTHQUAKE, MOVE_PURSUIT, MOVE_STONE_EDGE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU21::
		setvar VAR_0x8004, SPECIES_LUCARIO
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LUCARIO, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 1, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_AURA_SPHERE, MOVE_FLASH_CANNON, MOVE_VACUUM_WAVE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU22::
		setvar VAR_0x8004, SPECIES_MAMOSWINE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MAMOSWINE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_ICE_SHARD, MOVE_EARTHQUAKE, MOVE_ICICLE_CRASH, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU23::
		setvar VAR_0x8004, SPECIES_MANECTRIC
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MANECTRIC, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 1, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_VOLT_SWITCH, MOVE_OVERHEAT, MOVE_THUNDERBOLT, MOVE_SIGNAL_BEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU24::
		setvar VAR_0x8004, SPECIES_MIMIKYU
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MIMIKYU, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_SHADOW_CLAW, MOVE_PLAY_ROUGH, MOVE_SHADOW_SNEAK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU25::
		setvar VAR_0x8004, SPECIES_MUK_ALOLAN
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MUK_ALOLAN, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 0, 4, 252, 0, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_PURSUIT, MOVE_GUNK_SHOT, MOVE_KNOCK_OFF, MOVE_FIRE_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU26::
		setvar VAR_0x8004, SPECIES_NIDOKING
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NIDOKING, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SLUDGE_WAVE, MOVE_EARTH_POWER, MOVE_ICE_BEAM, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU27::
		setvar VAR_0x8004, SPECIES_PIDGEOT
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PIDGEOT, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_HURRICANE, MOVE_HEAT_WAVE, MOVE_U_TURN, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU28::
		setvar VAR_0x8004, SPECIES_PRIMARINA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PRIMARINA, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_MODEST, 0, 40, 0, 0, 216, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_HYDRO_PUMP, MOVE_MOONBLAST, MOVE_SPARKLING_ARIA, MOVE_PSYCHIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU29::
		setvar VAR_0x8004, SPECIES_QUAGSIRE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_QUAGSIRE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_RELAXED, 2, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_EARTHQUAKE, MOVE_RECOVER, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU30::
		setvar VAR_0x8004, SPECIES_ROTOM_HEAT
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ROTOM_HEAT, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 236, 0, 0, 252, 20, 0, 31, 31, 31, 31, 31, 31, MOVE_DEFOG, MOVE_VOLT_SWITCH, MOVE_OVERHEAT, MOVE_WILL_O_WISP, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU31::
		setvar VAR_0x8004, SPECIES_SCIZOR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SCIZOR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 1, 164, 252, 0, 92, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BULLET_PUNCH, MOVE_U_TURN, MOVE_SUPERPOWER, MOVE_PURSUIT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU32::
		setvar VAR_0x8004, SPECIES_SHARPEDO
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SHARPEDO, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 2, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CRUNCH, MOVE_ICE_FANG, MOVE_PSYCHIC_FANGS, MOVE_PROTECT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU33::
		setvar VAR_0x8004, SPECIES_STARMIE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_STARMIE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_HYDRO_PUMP, MOVE_ICE_BEAM, MOVE_PSYSHOCK, MOVE_RAPID_SPIN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU34::
		setvar VAR_0x8004, SPECIES_SWAMPERT
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SWAMPERT, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_WATERFALL, MOVE_EARTHQUAKE, MOVE_ICE_PUNCH, MOVE_STEALTH_ROCK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU35::
		setvar VAR_0x8004, SPECIES_SYLVEON
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SYLVEON, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_BOLD, 2, 252, 0, 252, 0, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_HYPER_VOICE, MOVE_WISH, MOVE_PROTECT, MOVE_HEAL_BELL, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU36::
		setvar VAR_0x8004, SPECIES_TENTACRUEL
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TENTACRUEL, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 252, 0, 112, 144, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_RAPID_SPIN, MOVE_HAZE, MOVE_SLUDGE_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU37::
		setvar VAR_0x8004, SPECIES_TOGEKISS
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TOGEKISS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 1, 252, 0, 0, 252, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_HEAL_BELL, MOVE_AIR_SLASH, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
	GiveUU38::
		setvar VAR_0x8004, SPECIES_ALAKAZAM
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ALAKAZAM, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_CALM_MIND, MOVE_SHADOW_BALL, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU39::
		setvar VAR_0x8004, SPECIES_BRELOOM
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BRELOOM, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_CAREFUL, 1, 236, 0, 0, 96, 0, 176, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_SPORE, MOVE_LEECH_SEED, MOVE_FOCUS_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU40::
		setvar VAR_0x8004, SPECIES_CONKELDURR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CONKELDURR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 0, 104, 252, 0, 152, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_DRAIN_PUNCH, MOVE_MACH_PUNCH, MOVE_KNOCK_OFF, MOVE_FACADE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU41::
		setvar VAR_0x8004, SPECIES_DIGGERSBY
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DIGGERSBY, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_ADAMANT, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_EARTHQUAKE, MOVE_RETURN, MOVE_QUICK_ATTACK, MOVE_FIRE_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU42::
		setvar VAR_0x8004, SPECIES_DRAGONITE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DRAGONITE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_DRAGON_DANCE, MOVE_FLY, MOVE_EARTHQUAKE, MOVE_EXTREME_SPEED, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU43::
		setvar VAR_0x8004, SPECIES_GALLADE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GALLADE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_CLOSE_COMBAT, MOVE_ZEN_HEADBUTT, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU44::
		setvar VAR_0x8004, SPECIES_GARDEVOIR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GARDEVOIR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 1, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_PSYSHOCK, MOVE_MOONBLAST, MOVE_WILL_O_WISP, MOVE_HEALING_WISH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU45::
		setvar VAR_0x8004, SPECIES_GYARADOS
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GYARADOS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_DRAGON_DANCE, MOVE_BOUNCE, MOVE_WATERFALL, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU46::
		setvar VAR_0x8004, SPECIES_NINETALES_ALOLAN
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NINETALES_ALOLAN, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 248, 0, 0, 252, 8, 0, 31, 31, 31, 31, 31, 31, MOVE_AURORA_VEIL, MOVE_FREEZE_DRY, MOVE_HYPNOSIS, MOVE_HAIL, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU47::
		setvar VAR_0x8004, SPECIES_PINSIR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PINSIR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 1, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_RETURN, MOVE_QUICK_ATTACK, MOVE_CLOSE_COMBAT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU48::
		setvar VAR_0x8004, SPECIES_PORYGON_Z
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PORYGON_Z, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_THUNDERBOLT, MOVE_ICE_BEAM, MOVE_RECOVER, MOVE_CONVERSION, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU49::
		setvar VAR_0x8004, SPECIES_SALAMENCE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SALAMENCE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_DRAGON_DANCE, MOVE_FLY, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU50::
		setvar VAR_0x8004, SPECIES_SCOLIPEDE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SCOLIPEDE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_MEGAHORN, MOVE_AQUA_TAIL, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU51::
		setvar VAR_0x8004, SPECIES_STARAPTOR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_STARAPTOR, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BRAVE_BIRD, MOVE_DOUBLE_EDGE, MOVE_U_TURN, MOVE_CLOSE_COMBAT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU52::
		setvar VAR_0x8004, SPECIES_WEAVILE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_WEAVILE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 2, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_ICICLE_CRASH, MOVE_ICE_SHARD, MOVE_PURSUIT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU53::
        setvar VAR_0x8004, SPECIES_AZELF
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AZELF, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_PSYSHOCK, MOVE_FLAMETHROWER, MOVE_DAZZLING_GLEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU54::
        setvar VAR_0x8004, SPECIES_CELEBI
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CELEBI, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_PSYCHIC, MOVE_GIGA_DRAIN, MOVE_DAZZLING_GLEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU55::
        setvar VAR_0x8004, SPECIES_COBALION
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_COBALION, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_IRON_HEAD, MOVE_CLOSE_COMBAT, MOVE_STEALTH_ROCK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU56::
        setvar VAR_0x8004, SPECIES_LATIAS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LATIAS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 252, 0, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_ROOST, MOVE_STORED_POWER, MOVE_ICE_BEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU57::
        setvar VAR_0x8004, SPECIES_MEW
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MEW, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 0, 252, 0, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SEISMIC_TOSS, MOVE_TAUNT, MOVE_WILL_O_WISP, MOVE_SOFT_BOILED, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU58::
        setvar VAR_0x8004, SPECIES_MOLTRES
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MOLTRES, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 2, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_HURRICANE, MOVE_FIRE_BLAST, MOVE_ROOST, MOVE_U_TURN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU59::
        setvar VAR_0x8004, SPECIES_NIHILEGO
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_NIHILEGO, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SLUDGE_WAVE, MOVE_THUNDERBOLT, MOVE_GRASS_KNOT, MOVE_TOXIC_SPIKES, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU60::
        setvar VAR_0x8004, SPECIES_SUICUNE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SUICUNE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 252, 0, 0, 216, 0, 40, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_PROTECT, MOVE_SCALD, MOVE_SUBSTITUTE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU61::
        setvar VAR_0x8004, SPECIES_TERRAKION
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TERRAKION, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 0, 0, 252, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_STONE_EDGE, MOVE_CLOSE_COMBAT, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU62::
        setvar VAR_0x8004, SPECIES_VOLCANION
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VOLCANION, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_MODEST, 2, 40, 0, 0, 216, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_DEFOG, MOVE_STEAM_ERUPTION, MOVE_FLAMETHROWER, MOVE_SLUDGE_BOMB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU63::
        setvar VAR_0x8004, SPECIES_ZERAORA
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ZERAORA, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_NAIVE, 0, 0, 252, 0, 252, 4, 0, 31, 31, 31, 31, 31, 31, MOVE_PLASMA_FISTS, MOVE_CLOSE_COMBAT, MOVE_GRASS_KNOT, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU64::
        setvar VAR_0x8004, SPECIES_BUZZWOLE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BUZZWOLE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_IMPISH, 0, 248, 0, 184, 0, 0, 76, 31, 31, 31, 31, 31, 31, MOVE_HAMMER_ARM, MOVE_TOXIC, MOVE_ROOST, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU65::
        setvar VAR_0x8004, SPECIES_HOOPA_UNBOUND
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HOOPA_UNBOUND, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_JOLLY, 0, 32, 224, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_GUNK_SHOT, MOVE_FIRE_PUNCH, MOVE_DRAIN_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU66::
        setvar VAR_0x8004, SPECIES_LATIOS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LATIOS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_NAIVE, 0, 0, 4, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_PSYCHIC, MOVE_EARTHQUAKE, MOVE_ICE_BEAM, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU67::
        setvar VAR_0x8004, SPECIES_THUNDURUS
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_THUNDURUS, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_THUNDERBOLT, MOVE_GRASS_KNOT, MOVE_FOCUS_BLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU68::
        setvar VAR_0x8004, SPECIES_THUNDURUS_THERIAN
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_THUNDURUS_THERIAN, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_TIMID, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_NASTY_PLOT, MOVE_THUNDERBOLT, MOVE_SLUDGE_WAVE, MOVE_FOCUS_BLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveUU69::
        setvar VAR_0x8004, SPECIES_XURKITREE
        showmonpic VAR_0x8004, 9, 3
        msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
        compare VAR_RESULT, NO
        goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveUU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_XURKITREE, 100, ITEM_NONE, ITEM_ULTRA_BALL, NATURE_MODEST, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_THUNDERBOLT, MOVE_DAZZLING_GLEAM, MOVE_ENERGY_BALL, MOVE_TAIL_GLOW, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end

BattleFrontier_Exchange_Service_Corner_Text_GiveOU::
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmHPUp, MSGBOX_DEFAULT
	hidemonpic
	scrollingmultichoice 6, 12, 0, 6, TRUE
    switch VAR_RESULT
    case 0, GiveOU1
    case 1, GiveOU2
    case 2, GiveOU3
    case 3, GiveOU4
    case 4, GiveOU5
    case 5, GiveOU6
    case 6, GiveOU7
    case 7, GiveOU8
    case 8, GiveOU9
    case 9, GiveOU10
    case 10, GiveOU11
    case 11, GiveOU12
    case 12, GiveOU13
    case 13, GiveOU14
    case 14, GiveOU15
    case 15, GiveOU16
    case 16, GiveOU17
    case 17, GiveOU18
    case 18, GiveOU19
    case 19, GiveOU20
    case 20, GiveOU21
    case 21, GiveOU22
    case 22, GiveOU23
    case 23, GiveOU24
    case 24, GiveOU25
    case 25, GiveOU26
    case 26, GiveOU27
    case 27, GiveOU28
    case 28, GiveOU29
    case 29, GiveOU30
    case 30, GiveOU31
    case 31, GiveOU32
    case 32, GiveOU33
    case 33, GiveOU34
    case 34, GiveOU35
    case 35, GiveOU36
    case 36, GiveOU37
    case 37, GiveOU38
    case 38, GiveOU39
	case 99, GiveOUR
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	end
	
GiveOUR::
	random 39
	switch VAR_RESULT
    case 0, GiveOU1
    case 1, GiveOU2
    case 2, GiveOU3
    case 3, GiveOU4
    case 4, GiveOU5
    case 5, GiveOU6
    case 6, GiveOU7
    case 7, GiveOU8
    case 8, GiveOU9
    case 9, GiveOU10
    case 10, GiveOU11
    case 11, GiveOU12
    case 12, GiveOU13
    case 13, GiveOU14
    case 14, GiveOU15
    case 15, GiveOU16
    case 16, GiveOU17
    case 17, GiveOU18
    case 18, GiveOU19
    case 19, GiveOU20
    case 20, GiveOU21
    case 21, GiveOU22
    case 22, GiveOU23
    case 23, GiveOU24
    case 24, GiveOU25
    case 25, GiveOU26
    case 26, GiveOU27
    case 27, GiveOU28
    case 28, GiveOU29
    case 29, GiveOU30
    case 30, GiveOU31
    case 31, GiveOU32
    case 32, GiveOU33
    case 33, GiveOU34
    case 34, GiveOU35
    case 35, GiveOU36
    case 36, GiveOU37
    case 37, GiveOU38
    case 38, GiveOU39
end

    GiveOU1::
		setvar VAR_0x8004, SPECIES_AZUMARILL
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_AZUMARILL, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_ADAMANT, 1, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_BELLY_DRUM, MOVE_AQUA_JET, MOVE_PLAY_ROUGH, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU2::
		setvar VAR_0x8004, SPECIES_CLEFABLE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CLEFABLE, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_BOLD, 1, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_MOONBLAST, MOVE_SOFT_BOILED, MOVE_CALM_MIND, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU3::
		setvar VAR_0x8004, SPECIES_EXCADRILL
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_EXCADRILL, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 0, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_EARTHQUAKE, MOVE_IRON_HEAD, MOVE_RAPID_SPIN, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU4::
		setvar VAR_0x8004, SPECIES_FERROTHORN
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_FERROTHORN, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_SASSY, 0, 252, 0, 24, 0, 0, 232, 31, 31, 31, 31, 31, 31, MOVE_SPIKES, MOVE_LEECH_SEED, MOVE_GYRO_BALL, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU5::
		setvar VAR_0x8004, SPECIES_GARCHOMP
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GARCHOMP, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_SWORDS_DANCE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU6::
		setvar VAR_0x8004, SPECIES_GLISCOR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_GLISCOR, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 2, 244, 0, 0, 20, 0, 244, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_ROOST, MOVE_EARTHQUAKE, MOVE_FACADE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU7::
		setvar VAR_0x8004, SPECIES_HAWLUCHA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HAWLUCHA, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_ADAMANT, 1, 96, 252, 0, 124, 0, 36, 31, 31, 31, 31, 31, 31, MOVE_ACROBATICS, MOVE_SWORDS_DANCE, MOVE_HI_JUMP_KICK, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU8::
		setvar VAR_0x8004, SPECIES_KOMMO_O
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KOMMO_O, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_HASTY, 0, 4, 252, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_CLANGING_SCALES, MOVE_CLOSE_COMBAT, MOVE_POISON_JAB, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU9::
		setvar VAR_0x8004, SPECIES_BLACEPHALON
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_BLACEPHALON, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 232, 0, 4, 252, 20, 0, 31, 31, 31, 31, 31, 31, MOVE_FLAMETHROWER, MOVE_SHADOW_BALL, MOVE_SUBSTITUTE, MOVE_CALM_MIND, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU10::
		setvar VAR_0x8004, SPECIES_CELESTEELA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_CELESTEELA, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_SASSY, 0, 248, 0, 28, 0, 0, 232, 31, 31, 31, 31, 31, 31, MOVE_LEECH_SEED, MOVE_PROTECT, MOVE_HEAVY_SLAM, MOVE_FLAMETHROWER, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU11::
		setvar VAR_0x8004, SPECIES_DIANCIE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_DIANCIE, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_HASTY, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_STEALTH_ROCK, MOVE_MOONBLAST, MOVE_DIAMOND_STORM, MOVE_EARTH_POWER, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU12::
		setvar VAR_0x8004, SPECIES_HEATRAN
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_HEATRAN, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_CALM, 0, 252, 0, 0, 80, 0, 176, 31, 31, 31, 31, 31, 31, MOVE_LAVA_PLUME, MOVE_TOXIC, MOVE_PROTECT, MOVE_STEALTH_ROCK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU13::
		setvar VAR_0x8004, SPECIES_JIRACHI
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_JIRACHI, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_IRON_HEAD, MOVE_U_TURN, MOVE_HEALING_WISH, MOVE_FIRE_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU14::
		setvar VAR_0x8004, SPECIES_KARTANA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KARTANA, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 0, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_LEAF_BLADE, MOVE_SACRED_SWORD, MOVE_GIGA_IMPACT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU15::
		setvar VAR_0x8004, SPECIES_KELDEO
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KELDEO, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_SCALD, MOVE_SECRET_SWORD, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU16::
		setvar VAR_0x8004, SPECIES_KYUREM_BLACK
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_KYUREM_BLACK, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_NAIVE, 0, 0, 4, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_ICE_BEAM, MOVE_FUSION_BOLT, MOVE_EARTH_POWER, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU17::
		setvar VAR_0x8004, SPECIES_LANDORUS_THERIAN
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LANDORUS_THERIAN, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 0, 0, 232, 68, 208, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_EARTHQUAKE, MOVE_U_TURN, MOVE_STONE_EDGE, MOVE_DEFOG, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU18::
		setvar VAR_0x8004, SPECIES_LATIAS
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LATIAS, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 252, 0, 4, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_CALM_MIND, MOVE_ROOST, MOVE_STORED_POWER, MOVE_ICE_BEAM, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU19::
		setvar VAR_0x8004, SPECIES_LOPUNNY
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_LOPUNNY, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 2, 0, 252, 0, 252, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_QUICK_ATTACK, MOVE_HI_JUMP_KICK, MOVE_FAKE_OUT, MOVE_ICE_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU20::
		setvar VAR_0x8004, SPECIES_MAGEARNA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MAGEARNA, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_SHIFT_GEAR, MOVE_THUNDERBOLT, MOVE_ICE_BEAM, MOVE_FOCUS_BLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU21::
		setvar VAR_0x8004, SPECIES_MAGNEZONE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MAGNEZONE, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_MODEST, 0, 0, 0, 4, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_SUBSTITUTE, MOVE_THUNDERBOLT, MOVE_FLASH_CANNON, MOVE_EXPLOSION, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU22::
		setvar VAR_0x8004, SPECIES_MANAPHY
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MANAPHY, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_MODEST, 0, 248, 0, 0, 20, 240, 0, 31, 31, 31, 31, 31, 31, MOVE_TAIL_GLOW, MOVE_REST, MOVE_SURF, MOVE_PSYCHIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU23::
		setvar VAR_0x8004, SPECIES_MAWILE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_MAWILE, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_ADAMANT, 1, 92, 252, 0, 164, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SWORDS_DANCE, MOVE_PLAY_ROUGH, MOVE_SUCKER_PUNCH, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU24::
		setvar VAR_0x8004, SPECIES_PELIPPER
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_PELIPPER, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_BOLD, 2, 248, 0, 36, 0, 0, 224, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_U_TURN, MOVE_ROOST, MOVE_HURRICANE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU25::
		setvar VAR_0x8004, SPECIES_ROTOM_WASH
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ROTOM_WASH, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 108, 0, 0, 216, 184, 0, 31, 31, 31, 31, 31, 31, MOVE_HYDRO_PUMP, MOVE_VOLT_SWITCH, MOVE_THUNDER, MOVE_PAIN_SPLIT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU26::
		setvar VAR_0x8004, SPECIES_SABLEYE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SABLEYE, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_CAREFUL, 2, 248, 0, 8, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_KNOCK_OFF, MOVE_WILL_O_WISP, MOVE_RECOVER, MOVE_PROTECT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU27::
		setvar VAR_0x8004, SPECIES_SERPERIOR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SERPERIOR, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 2, 56, 0, 0, 252, 200, 0, 31, 31, 31, 31, 31, 31, MOVE_LEAF_STORM, MOVE_DRAGON_PULSE, MOVE_SUBSTITUTE, MOVE_KNOCK_OFF, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU28::
		setvar VAR_0x8004, SPECIES_SKARMORY
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_SKARMORY, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_BOLD, 1, 252, 0, 252, 0, 0, 4, 31, 31, 31, 31, 31, 31, MOVE_ROOST, MOVE_SPIKES, MOVE_WHIRLWIND, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU29::
		setvar VAR_0x8004, SPECIES_TANGROWTH
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TANGROWTH, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_SASSY, 2, 252, 0, 12, 0, 0, 244, 31, 31, 31, 31, 31, 31, MOVE_GIGA_DRAIN, MOVE_KNOCK_OFF, MOVE_SLUDGE_BOMB, MOVE_EARTHQUAKE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU30::
		setvar VAR_0x8004, SPECIES_TAPU_BULU
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TAPU_BULU, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_ADAMANT, 0, 84, 248, 0, 176, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_WOOD_HAMMER, MOVE_HORN_LEECH, MOVE_SUPERPOWER, MOVE_STONE_EDGE, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU31::
		setvar VAR_0x8004, SPECIES_TAPU_FINI
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TAPU_FINI, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_CALM, 0, 248, 0, 16, 192, 12, 40, 31, 31, 31, 31, 31, 31, MOVE_DEFOG, MOVE_MOONBLAST, MOVE_SCALD, MOVE_TAUNT, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU32::
		setvar VAR_0x8004, SPECIES_TAPU_KOKO
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TAPU_KOKO, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_THUNDERBOLT, MOVE_DAZZLING_GLEAM, MOVE_VOLT_SWITCH, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU33::
		setvar VAR_0x8004, SPECIES_TAPU_LELE
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TAPU_LELE, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 0, 0, 0, 252, 252, 4, 31, 31, 31, 31, 31, 31, MOVE_PSYCHIC, MOVE_MOONBLAST, MOVE_PSYSHOCK, MOVE_FOCUS_BLAST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU34::
		setvar VAR_0x8004, SPECIES_TORNADUS_THERIAN
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TORNADUS_THERIAN, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 4, 0, 0, 252, 252, 0, 31, 31, 31, 31, 31, 31, MOVE_HURRICANE, MOVE_KNOCK_OFF, MOVE_U_TURN, MOVE_DEFOG, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU35::
		setvar VAR_0x8004, SPECIES_TOXAPEX
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TOXAPEX, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_CALM, 2, 252, 0, 4, 0, 0, 252, 31, 31, 31, 31, 31, 31, MOVE_SCALD, MOVE_HAZE, MOVE_RECOVER, MOVE_TOXIC, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU36::
		setvar VAR_0x8004, SPECIES_TYRANITAR
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_TYRANITAR, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_ADAMANT, 0, 132, 252, 0, 124, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_PURSUIT, MOVE_FIRE_PUNCH, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU37::
		setvar VAR_0x8004, SPECIES_VICTINI
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VICTINI, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_JOLLY, 0, 252, 4, 0, 252, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_V_CREATE, MOVE_U_TURN, MOVE_FINAL_GAMBIT, MOVE_TRICK, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU38::
		setvar VAR_0x8004, SPECIES_VOLCARONA
        showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
		specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_VOLCARONA, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_TIMID, 0, 248, 0, 112, 148, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_QUIVER_DANCE, MOVE_FLAMETHROWER, MOVE_BUG_BUZZ, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end
    GiveOU39::
		setvar VAR_0x8004, SPECIES_ZAPDOS
		showmonpic VAR_0x8004, 9, 3
		msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
		compare VAR_RESULT, NO
		goto_if_eq BattleFrontier_Exchange_Service_Corner_Text_GiveOU
        specialvar VAR_TEMP_1, GetFrontierBattlePoints
		compare VAR_TEMP_1, VAR_0x800A
		goto_if_lt BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney
		givecustommon SPECIES_ZAPDOS, 100, ITEM_NONE, ITEM_MASTER_BALL, NATURE_BOLD, 0, 252, 0, 184, 72, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_DISCHARGE, MOVE_HEAT_WAVE, MOVE_OMINOUS_WIND, MOVE_ROOST, 0
        goto BattleFrontier_Exchange_Service_Corner_Text_PokeLeave
    end

BattleFrontier_Exchange_Service_Corner_Text_PokeLeave::
	bufferspeciesname 0, VAR_0x8004
	playmoncry VAR_0x8004, 0
	copyvar VAR_0x8004, VAR_0x800A
	special TakeFrontierBattlePoints
	special UpdateBattlePointsWindow
	msgbox BattleFrontier_ExchangeServiceCorner_Text_Thanks, MSGBOX_DEFAULT
	waitmoncry
	hidemonpic
	special CloseBattlePointsWindow
	release
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_NoMoney::
	hidemonpic
	msgbox BattleFrontier_ExchangeServiceCorner_Text_DontHaveEnoughPoints MSGBOX_DEFAULT
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	end


BattleFrontier_ExchangeServiceCorner_EventScript_TryGiveItem:: @ 825F12A
	checkitemspace VAR_0x8009, 1
	compare VAR_RESULT, FALSE
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_BagFull
	copyvar VAR_0x8004, VAR_0x8008
	special TakeFrontierBattlePoints
	additem VAR_0x8009
	special UpdateBattlePointsWindow
	playse SE_SHOP
	msgbox BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize, MSGBOX_DEFAULT
	compare VAR_TEMP_2, EXCHANGE_CORNER_VITAMIN_CLERK
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	end

BattleFrontier_ExchangeServiceCorner_EventScript_BagFull:: @ 825F166
	msgbox BattleFrontier_ExchangeServiceCorner_Text_DontHaveSpaceToHoldIt, MSGBOX_DEFAULT
	special CloseBattlePointsWindow
	release
	end

BattleFrontier_ExchangeServiceCorner_EventScript_DecorClerk1:: @ 825F173
	lock
	faceplayer
	setvar VAR_TEMP_2, EXCHANGE_CORNER_DECOR1_CLERK
	call BattleFrontier_ExchangeServiceCorner_EventScript_ClerkWelcome
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1:: @ 825F185
	setvar VAR_0x8004, SCROLL_MULTI_BF_EXCHANGE_CORNER_DECOR_VENDOR_1
	special ShowFrontierExchangeCornerItemIconWindow
	special ShowScrollableMultichoice
	waitstate
	special CloseFrontierExchangeCornerItemIconWindow
	switch VAR_RESULT
	case 0, BattleFrontier_ExchangeServiceCorner_EventScript_KissPoster
	case 1, BattleFrontier_ExchangeServiceCorner_EventScript_KissCushion
	case 2, BattleFrontier_ExchangeServiceCorner_EventScript_SmoochumDoll
	case 3, BattleFrontier_ExchangeServiceCorner_EventScript_TogepiDoll
	case 4, BattleFrontier_ExchangeServiceCorner_EventScript_MeowthDoll
	case 5, BattleFrontier_ExchangeServiceCorner_EventScript_ClefairyDoll
	case 6, BattleFrontier_ExchangeServiceCorner_EventScript_DittoDoll
	case 7, BattleFrontier_ExchangeServiceCorner_EventScript_CyndaquilDoll
	case 8, BattleFrontier_ExchangeServiceCorner_EventScript_ChikoritaDoll
	case 9, BattleFrontier_ExchangeServiceCorner_EventScript_TotodileDoll
	case 10, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	end

BattleFrontier_ExchangeServiceCorner_EventScript_KissPoster:: @ 825F21E
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmKissPoster, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 16
	setvar VAR_0x8009, DECOR_KISS_POSTER
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_KissCushion:: @ 825F241
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmKissCushion, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 32
	setvar VAR_0x8009, DECOR_KISS_CUSHION
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_SmoochumDoll:: @ 825F264
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmSmoochumDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 32
	setvar VAR_0x8009, DECOR_SMOOCHUM_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TogepiDoll:: @ 825F287
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmTogepiDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 48
	setvar VAR_0x8009, DECOR_TOGEPI_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_MeowthDoll:: @ 825F2AA
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmMeowthDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 48
	setvar VAR_0x8009, DECOR_MEOWTH_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ClefairyDoll:: @ 825F2CD
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmClefairyDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 48
	setvar VAR_0x8009, DECOR_CLEFAIRY_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_DittoDoll:: @ 825F2F0
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmDittoDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 48
	setvar VAR_0x8009, DECOR_DITTO_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_CyndaquilDoll:: @ 825F313
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmCyndaquilDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 80
	setvar VAR_0x8009, DECOR_CYNDAQUIL_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChikoritaDoll:: @ 825F336
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmChikoritaDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 80
	setvar VAR_0x8009, DECOR_CHIKORITA_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TotodileDoll:: @ 825F359
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmTotodileDoll, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor1
	setvar VAR_0x8008, 80
	setvar VAR_0x8009, DECOR_TOTODILE_DOLL
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_DecorClerk2:: @ 825F37C
	lock
	faceplayer
	setvar VAR_TEMP_2, EXCHANGE_CORNER_DECOR2_CLERK
	call BattleFrontier_ExchangeServiceCorner_EventScript_ClerkWelcome
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2:: @ 825F38E
	setvar VAR_0x8004, SCROLL_MULTI_BF_EXCHANGE_CORNER_DECOR_VENDOR_2
	special ShowFrontierExchangeCornerItemIconWindow
	special ShowScrollableMultichoice
	waitstate
	special CloseFrontierExchangeCornerItemIconWindow
	switch VAR_RESULT
	case 0, BattleFrontier_ExchangeServiceCorner_EventScript_Doll
	case 1, BattleFrontier_ExchangeServiceCorner_EventScript_MatDesk
	case 2, BattleFrontier_ExchangeServiceCorner_EventScript_OrnaPost
	case 3, BattleFrontier_ExchangeServiceCorner_EventScript_ChairPlant
	case 4, BattleFrontier_ExchangeServiceCorner_EventScript_Contest
	case 5, BattleFrontier_ExchangeServiceCorner_EventScript_TM
	case 6, BattleFrontier_ExchangeServiceCorner_EventScript_MegaC
	case 7, BattleFrontier_ExchangeServiceCorner_EventScript_MegaB
	case 8, BattleFrontier_ExchangeServiceCorner_EventScript_MegaA
	case 9, BattleFrontier_ExchangeServiceCorner_EventScript_MegaS
	case 10, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	end

BattleFrontier_ExchangeServiceCorner_EventScript_Doll:: @ 825F3F0
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 2
	setvar VAR_0x8009, 0
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_MatDesk:: @ 825F3F0
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 2
	setvar VAR_0x8009, 1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_OrnaPost:: @ 825F3F0
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 2
	setvar VAR_0x8009, 2
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChairPlant:: @ 825F3F0
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 2
	setvar VAR_0x8009, 3
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_Contest:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 3
	setvar VAR_0x8009, 4
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_TM:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 10
	setvar VAR_0x8009, 5
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_MegaC:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaC, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 3
	setvar VAR_0x8009, 6
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end


BattleFrontier_ExchangeServiceCorner_EventScript_MegaB:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaB, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 7
	setvar VAR_0x8009, 7
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_MegaA::
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaA, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 11
	setvar VAR_0x8009, 8
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_MegaS:: @ 825F459
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaS, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseDecor2
	setvar VAR_0x8008, 15
	setvar VAR_0x8009, 9
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_VitaminClerk:: @ 825F49F
	lock
	faceplayer
	setvar VAR_TEMP_2, EXCHANGE_CORNER_VITAMIN_CLERK
	call BattleFrontier_ExchangeServiceCorner_EventScript_ClerkWelcome
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChooseVitamin:: @ 825F4B1
	setvar VAR_0x8004, SCROLL_MULTI_BF_EXCHANGE_CORNER_VITAMIN_VENDOR
	special ShowFrontierExchangeCornerItemIconWindow
	special ShowScrollableMultichoice
	waitstate
	special CloseFrontierExchangeCornerItemIconWindow
	switch VAR_RESULT
	case 0, BattleFrontier_ExchangeServiceCorner_EventScript_NU
	case 1, BattleFrontier_ExchangeServiceCorner_EventScript_RU
	case 2, BattleFrontier_ExchangeServiceCorner_EventScript_UU
	case 3, BattleFrontier_ExchangeServiceCorner_EventScript_OU
	case 4, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	end

BattleFrontier_ExchangeServiceCorner_EventScript_NU:: @ 825F51E
	setvar VAR_0x800A, 5
	setvar VAR_0x8009, 1
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePkmn
	end

BattleFrontier_ExchangeServiceCorner_EventScript_RU:: @ 825F541
	setvar VAR_0x800A, 10
	setvar VAR_0x8009, 2
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePkmn
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_UU:: @ 825F564
	setvar VAR_0x800A, 15
	setvar VAR_0x8009, 3
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePkmn
	end

BattleFrontier_ExchangeServiceCorner_EventScript_OU:: @ 825F587
	setvar VAR_0x800A, 20
	setvar VAR_0x8009, 4
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryGivePkmn
	end

BattleFrontier_ExchangeServiceCorner_EventScript_HoldItemClerk:: @ 825F5F0
	lock
	faceplayer
	setvar VAR_TEMP_2, EXCHANGE_CORNER_HOLD_ITEM_CLERK
	call BattleFrontier_ExchangeServiceCorner_EventScript_ClerkWelcome
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem:: @ 825F602
	setvar VAR_0x8004, SCROLL_MULTI_BF_EXCHANGE_CORNER_HOLD_ITEM_VENDOR
	special ShowFrontierExchangeCornerItemIconWindow
	special ShowScrollableMultichoice
	waitstate
	special CloseFrontierExchangeCornerItemIconWindow
	switch VAR_RESULT
	case 0, BattleFrontier_ExchangeServiceCorner_EventScript_WhiteHerb
	case 1, BattleFrontier_ExchangeServiceCorner_EventScript_PowerHerb
	case 2, BattleFrontier_ExchangeServiceCorner_EventScript_ScopeLens
	case 3, BattleFrontier_ExchangeServiceCorner_EventScript_WideLens
	case 4, BattleFrontier_ExchangeServiceCorner_EventScript_QuickClaw
	case 5, BattleFrontier_ExchangeServiceCorner_EventScript_LifeOrb
	case 6, BattleFrontier_ExchangeServiceCorner_EventScript_ChoiceBand
	case 7, BattleFrontier_ExchangeServiceCorner_EventScript_ChoiceSpecs
	case 8, BattleFrontier_ExchangeServiceCorner_EventScript_ChoiceScarf
	case 9, BattleFrontier_ExchangeServiceCorner_EventScript_RockyHelmet
	case 10, BattleFrontier_ExchangeServiceCorner_EventScript_WeaknessPolicy
	case 11, BattleFrontier_ExchangeServiceCorner_EventScript_AssaultVest
	case 12, BattleFrontier_ExchangeServiceCorner_EventScript_FocusSash
	case 13, BattleFrontier_ExchangeServiceCorner_EventScript_KingsRock
	case 14, BattleFrontier_ExchangeServiceCorner_EventScript_Leftovers
	case 15, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	case MULTI_B_PRESSED, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	end

BattleFrontier_ExchangeServiceCorner_EventScript_WhiteHerb:: @ 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 2
	setvar VAR_0x8009, ITEM_WHITE_HERB
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_PowerHerb:: @
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 2
	setvar VAR_0x8009, ITEM_WHITE_HERB
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_ScopeLens:: @ 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 4
	setvar VAR_0x8009, ITEM_SCOPE_LENS
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_WideLens:: @ 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 4
	setvar VAR_0x8009, ITEM_WIDE_LENS
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_QuickClaw:: @ 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 4
	setvar VAR_0x8009, ITEM_QUICK_CLAW
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
	
BattleFrontier_ExchangeServiceCorner_EventScript_LifeOrb:: @ 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 6
	setvar VAR_0x8009, ITEM_LIFE_ORB
	additem ITEM_FLAME_ORB
	additem ITEM_TOXIC_ORB
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_ChoiceBand:: @ 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 6
	setvar VAR_0x8009, ITEM_CHOICE_BAND
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_ChoiceSpecs:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 6
	setvar VAR_0x8009, ITEM_CHOICE_SPECS
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end

BattleFrontier_ExchangeServiceCorner_EventScript_ChoiceScarf:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 6
	setvar VAR_0x8009, ITEM_CHOICE_SCARF
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_RockyHelmet:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 8
	setvar VAR_0x8009, ITEM_ROCKY_HELMET
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_WeaknessPolicy:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 8
	setvar VAR_0x8009, ITEM_WEAKNESS_POLICY
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_AssaultVest:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 8
	setvar VAR_0x8009, ITEM_ASSAULT_VEST
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_FocusSash:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 8
	setvar VAR_0x8009, ITEM_FOCUS_SASH
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_KingsRock:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 8
	setvar VAR_0x8009, ITEM_KINGS_ROCK
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end
	
BattleFrontier_ExchangeServiceCorner_EventScript_Leftovers:: 
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ChooseHoldItem
	setvar VAR_0x8008, 12
	setvar VAR_0x8009, ITEM_LEFTOVERS
	goto BattleFrontier_ExchangeServiceCorner_EventScript_TryPurchasePrize
	end



BattleFrontier_ExchangeServiceCorner_EventScript_Man:: @ 825F7CB
	msgbox BattleFrontier_ExchangeServiceCorner_Text_GoGetYourOwnDoll, MSGBOX_NPC
	end

BattleFrontier_ExchangeServiceCorner_EventScript_Sailor:: @ 825F7D4
	msgbox BattleFrontier_ExchangeServiceCorner_Text_ItemsWillGetMonTougher, MSGBOX_NPC
	end

BattleFrontier_ExchangeServiceCorner_EventScript_PokefanF:: @ 825F7DD
	lock
	msgbox BattleFrontier_ExchangeServiceCorner_Text_GetYouAnythingYouWant, MSGBOX_DEFAULT
	release
	end

BattleFrontier_ExchangeServiceCorner_EventScript_RichBoy:: @ 825F7E8
	msgbox BattleFrontier_ExchangeServiceCorner_Text_WishIHadAllDolls, MSGBOX_NPC
	end

BattleFrontier_ExchangeServiceCorner_EventScript_Girl:: @ 825F7F1
	msgbox BattleFrontier_ExchangeServiceCorner_Text_MoreBattlePointsForRecord, MSGBOX_NPC
	end
	
	
BattleFrontier_ExchangeServiceCorner_EventScript_MoveTutor::
	special ShowBattlePointsWindow
	msgbox BF_TeachPokeText, MSGBOX_DEFAULT
	specialvar VAR_TEMP_1, GetFrontierBattlePoints
	compare VAR_TEMP_1, 3
	goto_if_ge BattleFrontier_ExchangeServiceCorner_EventScript_TeachPoke
	msgbox BattleFrontier_ExchangeServiceCorner_Text_DontHaveEnoughPoints, MSGBOX_DEFAULT
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	end
	
	
BattleFrontier_ExchangeServiceCorner_EventScript_TeachPoke::
	msgbox BF_TeachPokeText2, MSGBOX_YESNO
	switch VAR_RESULT
	case NO, BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	goto ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMon
	
ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMon:: @ 82013D6
	msgbox ExchangeServiceCorner_MoveRelearnersHouse_Text_TutorWhichMon, MSGBOX_DEFAULT
	special ChooseMonForMoveRelearner
	waitstate
	compare VAR_0x8004, 255
	goto_if_eq BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	special IsSelectedMonEgg
	compare VAR_RESULT, TRUE
	goto_if_eq ExchangeServiceCorner_MoveRelearnersHouse_EventScript_CantTeachEgg
	compare VAR_0x8005, 0
	goto_if_eq ExchangeServiceCorner_MoveRelearnersHouse_EventScript_NoMoveToTeachMon
	goto ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMove
	end

ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMove:: @ 820140C
	msgbox ExchangeServiceCorner_MoveRelearnersHouse_Text_TeachWhichMove, MSGBOX_DEFAULT
	special TeachMoveRelearnerMove
	waitstate
	compare VAR_0x8004, 0
	goto_if_eq ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMon
	special ShowBattlePointsWindow
	msgbox ExchangeServiceCorner_MoveRelearnersHouse_Text_HandedOverHeartScale, MSGBOX_DEFAULT
	setvar VAR_0x8004, 3
	special TakeFrontierBattlePoints
	special UpdateBattlePointsWindow
	goto BattleFrontier_ExchangeServiceCorner_EventScript_ClerkGoodbye
	end

ExchangeServiceCorner_MoveRelearnersHouse_EventScript_NoMoveToTeachMon:: @ 8201436
	msgbox ExchangeServiceCorner_MoveRelearnersHouse_Text_DontHaveMoveToTeachPokemon, MSGBOX_DEFAULT
	goto ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMon
	end

ExchangeServiceCorner_MoveRelearnersHouse_EventScript_CantTeachEgg:: @ 8201444
	msgbox ExchangeServiceCorner_MoveRelearnersHouse_Text_CantTeachEgg, MSGBOX_DEFAULT
	goto ExchangeServiceCorner_MoveRelearnersHouse_EventScript_ChooseMon
	end
	
	
BattleFrontier_ExchangeServiceCorner_Text_GotoPC:
	.string "Keep in mind that I'll be\n"
	.string "sending this Pokémon to your PC.$"
	
BF_TeachPokeText:
	.string "Welcome to the\n"
	.string "Battle Frontier Move Releaner.$"
	
BF_TeachPokeText2:
	.string "Would you like me to\n"
	.string "teach your Pokémon an old move?$"
	
ExchangeServiceCorner_MoveRelearnersHouse_Text_TutorWhichMon: 
	.string "Which Pokémon needs tutoring?$"
	
BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaC:
	.string "This purchase\n"
	.string "includes the following:\p"
	.string "Abomasite, Audinite, Glalite.\p"
	.string "You're certain\n"
	.string "you're ready to buy?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaB:
	.string "This purchase\n"
	.string "includes the following:\p"
	.string "Absolite, Ampharosite,\n"
	.string "Banettite, Blastoisinite\l"
	.string "Heraconite, Houndoomite,\l"
	.string "Sceptilite, Slowbronite.\p"
	.string "You're certain\n"
	.string "you're ready to buy?$"

	BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaA:
	.string "This purchase\n"
	.string "includes the following:\p"
	.string "Aerodactylite, Aggronite, Altarianite\n"
	.string "Beedrillite, Galladite,\l"
	.string "Gardevoirite, Latiosite,\l"
	.string "Manectite, Pidgeotite,\l"
	.string "Sharpedonite, Steelixite,\l"
	.string "Venusaurite.\p"
	.string "You're certain\n"
	.string "you're ready to buy?$"

	BattleFrontier_ExchangeServiceCorner_Text_ConfirmMegaS:
	.string "This purchase\n"
	.string "includes the following:\p"
	.string "Alakazite, Charizardite X and Y,\n"
	.string "Diancite, Garchompite, Gyaradosite,\l"
	.string "Latiasite, Lopunnite, Mawilite,\n"
	.string "Sablenite, Medichamite, Scizorite,\l"
	.string "Swampertite, Tyranitarite.\p"
	.string "You're certain\n"
	.string "you're ready to buy?$"

ExchangeServiceCorner_MoveRelearnersHouse_Text_TeachWhichMove: 
	.string "Which move should I teach?$"

ExchangeServiceCorner_MoveRelearnersHouse_Text_DontHaveMoveToTeachPokemon: 
	.string "Sorry…\p"
	.string "It doesn't appear as if I have any move\n"
	.string "I can teach that Pokémon.$"

ExchangeServiceCorner_MoveRelearnersHouse_Text_HandedOverHeartScale:
	.string "{PLAYER} handed over 3 BP\n"
	.string "in exchange.$"

ExchangeServiceCorner_MoveRelearnersHouse_Text_ComeBackWithHeartScale: 
	.string "If your Pokémon need to learn a move,\n"
	.string "come back with 3 BP.$"

ExchangeServiceCorner_MoveRelearnersHouse_Text_CantTeachEgg: 
	.string "Hunh? There isn't a single move that\n"
	.string "I can teach an egg.$"

BattleFrontier_ExchangeServiceCorner_Text_WelcomePleaseChoosePrize: @ 825F7FA
	.string "Hello, this is the Exchange Service\n"
	.string "Corner.\p"
	.string "We exchange the Battle Points you\n"
	.string "have collected for lovely prizes.\p"
	.string "Please choose a prize from this list.$"

@ Unused
BattleFrontier_ExchangeServiceCorner_Text_PleaseChoosePrize: @ 825F890
	.string "Please choose a prize from this list.$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmKissPoster: @ 825F8B6
	.string "You've chosen the KISS POSTER.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmKissCushion: @ 825F8E6
	.string "You've chosen the KISS CUSHION.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmSmoochumDoll: @ 825F917
	.string "You've chosen the SMOOCHUM DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmTogepiDoll: @ 825F949
	.string "You've chosen the TOGEPI DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmMeowthDoll: @ 825F979
	.string "You've chosen the MEOWTH DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmClefairyDoll: @ 825F9A9
	.string "You've chosen the CLEFAIRY DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmDittoDoll: @ 825F9DB
	.string "You've chosen the DITTO DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmCyndaquilDoll: @ 825FA0A
	.string "You've chosen the CYNDAQUIL DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmChikoritaDoll: @ 825FA3D
	.string "You've chosen the CHIKORITA DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmTotodileDoll: @ 825FA70
	.string "You've chosen the TOTODILE DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmLaprasDoll: @ 825FAA2
	.string "You've chosen the LAPRAS DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmSnorlaxDoll: @ 825FAD2
	.string "You've chosen the SNORLAX DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmVenusaurDoll: @ 825FB03
	.string "You've chosen the VENUSAUR DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmCharizardDoll: @ 825FB35
	.string "You've chosen the CHARIZARD DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmBlastoiseDoll: @ 825FB68
	.string "You've chosen the BLASTOISE DOLL.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmProtein: @ 825FB9B
	.string "You've chosen the PROTEIN.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmCalcium: @ 825FBC7
	.string "You've chosen the CALCIUM.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmIron: @ 825FBF3
	.string "You've chosen the IRON.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmZinc: @ 825FC1C
	.string "You've chosen the ZINC.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmCarbos: @ 825FC45
	.string "You've chosen the CARBOS.\n"
	.string "Is that correct?$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmHPUp: @ 825FC70
	.string "Please select which\n"
	.string "Pokémon you want to buy.$"

BattleFrontier_ExchangeServiceCorner_Text_ConfirmLeftovers: @ 825FE17
	.string "You're certain\n"
	.string "you're ready to buy?$"

BattleFrontier_ExchangeServiceCorner_Text_WellSendItToPC: @ 825FE45
	.string "Thank you!\n"
	.string "We'll send it to your PC.$"

BattleFrontier_ExchangeServiceCorner_Text_HereIsYourPrize: @ 825FE72
	.string "Here is your prize!$"

BattleFrontier_ExchangeServiceCorner_Text_DontHaveEnoughPoints: @ 825FE86
	.string "I'm so sorry…\n"
	.string "You don't have enough Battle Points…$"

BattleFrontier_ExchangeServiceCorner_Text_PCIsFull: @ 825FEB9
	.string "I'm so sorry…\n"
	.string "Your PC appears to be full…$"

BattleFrontier_ExchangeServiceCorner_Text_DontHaveSpaceToHoldIt: @ 825FEE3
	.string "I'm so sorry…\n"
	.string "You don't have space to hold it…$"
	
BattleFrontier_ExchangeServiceCorner_Text_Thanks::
	.string "Enjoy your new {STR_VAR_1}!$"
	
BattleFrontier_ExchangeServiceCorner_Text_ThankYouVisitWithPoints: @ 825FF12
	.string "Thank you very much.\p"
	.string "Please visit us when you have\n"
	.string "saved up Battle Points.$"

BattleFrontier_ExchangeServiceCorner_Text_WishIHadAllDolls: @ 825FF5D
	.string "Oh, they're so nice!\n"
	.string "I wish I could own every Pokémon!$"

BattleFrontier_ExchangeServiceCorner_Text_GetYouAnythingYouWant: @ 825FFD0
	.string "Leave it to your mommy!\p"
	.string "If it's anything you want, I'll go\n"
	.string "through anything to get it, honey!$"

BattleFrontier_ExchangeServiceCorner_Text_ItemsWillGetMonTougher: @ 826002E
	.string "If I can get hold of the items here,\n"
	.string "my Pokémon will get tougher.\p"
	.string "You bet they will!\n"
	.string "No question about it!$"

BattleFrontier_ExchangeServiceCorner_Text_GoGetYourOwnDoll: @ 8260099
	.string "Hah?\n"
	.string "What are you gawking at?\p"
	.string "Get your own Pokémon!$"

BattleFrontier_ExchangeServiceCorner_Text_MoreBattlePointsForRecord: @ 826012D
	.string "Did you know?\p"
	.string "If you stretch your record at any of\n"
	.string "the Battle facilities, they start\l"
	.string "giving you more and more Battle Points.$"

BattleFrontier_ExchangeServiceCorner_Text_KissPosterDesc:: @ 82601AA
	.string "A large poster with a Smoochum print.$"

BattleFrontier_ExchangeServiceCorner_Text_KissCushionDesc:: @ 82601D0
	.string "A SMOOCHUM cushion.\n"
	.string "Place it on a mat desk.$"

BattleFrontier_ExchangeServiceCorner_Text_SmoochumDollDesc:: @ 8260201
	.string "A SMOOCHUM DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_TogepiDollDesc:: @ 826022F
	.string "A TOGEPI DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_MeowthDollDesc:: @ 826025B
	.string "A MEOWTH DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_ClefairyDollDesc:: @ 8260287
	.string "A CLEFAIRY DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_DittoDollDesc:: @ 82602B5
	.string "A DITTO DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_CyndaquilDollDesc:: @ 82602E0
	.string "A CYNDAQUIL DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_ChikoritaDollDesc:: @ 826030F
	.string "A CHIKORITA DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_TotodileDollDesc:: @ 826033E
	.string "A TOTODILE DOLL.\n"
	.string "Place it on a mat or a desk.$"

BattleFrontier_ExchangeServiceCorner_Text_Doll::
	.string "Berries which heal\n"
	.string "cure statuses (5x).$"
	
BattleFrontier_ExchangeServiceCorner_Text_MatDesk::
	.string "Berries which reduce\n"
	.string "damange from type attacks (5x).$"
	
BattleFrontier_ExchangeServiceCorner_Text_OrnaPost::
	.string "Berries which raise \n"
	.string "stats when in dire straits (5x).$"
	
BattleFrontier_ExchangeServiceCorner_Text_ChairPlant::
	.string "Berries which make for\n"
	.string "excellent {POKEBLOCK}s (5x).$"
	
BattleFrontier_ExchangeServiceCorner_Text_TM::
	.string "All available Technical Machines.\n"
	.string "Infinite Use.$"
	
BattleFrontier_ExchangeServiceCorner_Text_Contest::
	.string "All available scarves.\n"
	.string "Equip them to help in contests.$"
	
BattleFrontier_ExchangeServiceCorner_Text_MegaC::
	.string "Gives the stones for\n"
	.string "all C-Level Megas.$"

BattleFrontier_ExchangeServiceCorner_Text_MegaB::
	.string "Gives the stones for\n"
	.string "all B-Level Megas.$"
	
BattleFrontier_ExchangeServiceCorner_Text_MegaA::
	.string "Gives the stones for\n"
	.string "all A-Level Megas.$"
	
BattleFrontier_ExchangeServiceCorner_Text_MegaS::
	.string "Gives the stones for\n"
	.string "all S-Level Megas.$"

BattleFrontier_ExchangeServiceCorner_Text_ProteinDesc:: @ 8260397
	.string "Provides you with one\n"
	.string "C-Rank Pokémon.$"

BattleFrontier_ExchangeServiceCorner_Text_CalciumDesc:: @ 82603BE
	.string "Provides you with one\n"
	.string "B-Rank Pokémon.$"

BattleFrontier_ExchangeServiceCorner_Text_IronDesc:: @ 82603E6
	.string "Provides you with one\n"
	.string "A-Rank Pokémon.$"

BattleFrontier_ExchangeServiceCorner_Text_ZincDesc:: @ 826040E
	.string "Provides you with one\n"
	.string "S-Rank Pokémon.$"
	

		
BattleFrontier_ExchangeServiceCorner_Text_WhiteHerbDesc:: @ 82604AC
	.string "A hold item that restores any\n"
	.string "lowered stat.$"
	
BattleFrontier_ExchangeServiceCorner_Text_PowerHerbDesc:: @ 82604AC
	.string "A hold item that allows\n"
	.string "immediate use of a charge move.$"
	
BattleFrontier_ExchangeServiceCorner_Text_ScopeLensDesc:: @ 8260613
	.string "A hold item that raises the\n"
	.string "critical-hit rate.$"
	
BattleFrontier_ExchangeServiceCorner_Text_WideLensDesc:: @ 8260613
	.string "A hold item that boosts\n"
	.string "the accuracy of moves.$"
	
BattleFrontier_ExchangeServiceCorner_Text_QuickClawDesc:: @ 82604D8
	.string "A hold item that occasionally allows\n"
	.string "the first strike.$"

BattleFrontier_ExchangeServiceCorner_Text_LifeOrbDesc:: @ 8260575
	.string "Life Orb: Boosts Atk. for HP.\n"
	.string "Flame/Toxic Orb: Inflicts Burn/Toxic.$"

BattleFrontier_ExchangeServiceCorner_Text_ChoiceBandDesc:: @ 8260575
	.string "Raises a move's physical power\n"
	.string "but permits only that move.$"
	
BattleFrontier_ExchangeServiceCorner_Text_ChoiceSpecsDesc:: @ 8260575
	.string "Raises a move's special power\n"
	.string "but permits only that move.$"
	
BattleFrontier_ExchangeServiceCorner_Text_ChoiceScarfDesc:: @ 8260575
	.string "Raises a Pokémon speed\n"
	.string "but permits only one move.$"
	
BattleFrontier_ExchangeServiceCorner_Text_RockyHelmetDesc:: @ 8260575
	.string "A hold item that hurts foes\n"
	.string "if they use physical attacks.$"
	
BattleFrontier_ExchangeServiceCorner_Text_WeaknessPolicyDesc:: @ 82605E2
	.string "A hold item that raises Atk.\n"
	.string "and Sp. Atk. when hit by S. Effective move.$"
	
BattleFrontier_ExchangeServiceCorner_Text_AssaultVestDesc:: @ 82605E2
	.string "A hold item that raises\n"
	.string "Sp. Def, but disallows status moves.$"
	
BattleFrontier_ExchangeServiceCorner_Text_FocusSashDesc:: @ 82605E2
	.string "A hold item that\n"
	.string "prevents 1-hit KOs.$"
	
BattleFrontier_ExchangeServiceCorner_Text_KingsRockDesc:: @ 82605A8
	.string "A hold item that may cause flinching\n"
	.string "when the foe is hit.$"

BattleFrontier_ExchangeServiceCorner_Text_LeftoversDesc:: @ 826047A
	.string "A hold item that gradually restores\n"
  .string "HP in battle.$"
