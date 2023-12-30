toggle = 0
#MaxThreadsPerHotkey 2
repaired = 1
MouseX = 0
MouseY = 0

BoxX = 0
BoxY = 0
bankOpen = 0
interfaceOpen = 0
interfaceCountdown = 2;
goldCoinsCountdown = 10;
prayerPotionCountdown = 10;
OutputVarX = 0
OutputVarY = 0
bankHover = FALSE
X1 := 0
Y1 := 0
X2 := 1980
Y2 := 1080
prayerPotion := 11
lootSide := 0

Sleep NormalRand(1524,1758,int=1)

Loop{
	Sleep NormalRand(268,581,int=1)
	checkRetaliateOn()
	interfaceCountdown -= 1
	if ( interfaceCountdown < 2 ) {
		interfaceResetNorth()
		Random, interfaceCountdown, 23, 68
	}
	; checkAggressionFlask()
	
	checkPrayerPoints()
	checkHolyOverload()
	checkWeaponPoison()
	checkTurmoil()
	checkSoulSplit()
	checkRetaliateOn()
	Sleep NormalRand(3148,5147,int=1)
	if (lootSide == 0) {
		lootRight()
		lootSide := 1
	} else {
	 	lootLeft()
		lootSide := 0
	}
	checkRetaliateOn()
	Sleep NormalRand(3148,5147,int=1)
	clearInventory()
	checkRetaliateOn()
	checkEscape()
	checkContract(1)
	checkRetaliateOn()
	checkEscape()
	bankRoutine()
	checkRetaliateOn()

}

bankRoutine() {
	checkAggressionFlask()
	checkRubyInventory()
}

checkAggressionFlask() {
	
	color := 0
	PixelGetColor, color, 900, 913
	;MsgBox, Value Is: %color%
	if (color == 0x0C1B1E) {
		teleportMaxGuild()
	} else {
		;MsgBox we have some!
	}
	if (color == 0x0D1C1F) {
		teleportMaxGuild()
	} else {
		;MsgBox we have some!
	}
	if (color == 0x0D1B1F) {
		teleportMaxGuild()
	} else {
		;MsgBox we have some!
	}
	PixelGetColor, color, 900, 912
	; MsgBox, Value Is: %color%
	if (color == 0x0C1B1F) {
		teleportMaxGuild()
	} else {
		;MsgBox we have some!
	}
	
}

checkRubyInventory() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 ruby.png
	if (ErrorLevel == 0) {
		; MsgBox rubies abort mission
		teleportMaxGuild()
	} else {
		
	}
}

teleportMaxGuild() {
	Sleep NormalRand(1041,1214,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1799,1801,1), NormalRand(379,381,1), stringInput)
	Sleep NormalRand(514,654,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(514,654,int=1)
	
	X1 := 1700
	Y1 := 300
	X2 := 1980
	Y2 := 600
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 maxGuild.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(514,654,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1114,1654,int=1)
		interfaceResetSouth()
		Sleep NormalRand(514,654,int=1)
		Sleep NormalRand(230,310,int=1)
		checkSoulSplitOff()
		Sleep NormalRand(230,310,int=1)
		checkTurmoilOff()
		Sleep NormalRand(230,310,int=1)
		openGuildDoor()
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(200,250,1), NormalRand(200,250,1), stringInput)
		teleportMaxGuild()
	}
}

openGuildDoor() {
	Sleep NormalRand(1041,1214,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(950,1016,1), NormalRand(147,216,1), stringInput)
	Sleep NormalRand(514,654,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(514,654,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 enterTowerEntrance.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(514,654,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(5014,6054,int=1)
		openBank()
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(200,250,1), NormalRand(200,250,1), stringInput)
		openGuildDoor()
	}
	
	
}

openBank() {
	Sleep NormalRand(1041,1214,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(980,980,1), NormalRand(381,381,1), stringInput)
	Sleep NormalRand(514,654,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(514,654,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 bankBanker.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(514,654,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(5014,6054,int=1)
		emptyGemBag()
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(200,250,1), NormalRand(200,250,1), stringInput)
		openBank()
	}
}

openBankAfterYak() {
	Sleep NormalRand(1041,1214,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(971,971,1), NormalRand(453,453,1), stringInput)
	Sleep NormalRand(514,654,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(514,654,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 bankBanker.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(514,654,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(5014,6054,int=1)
		emptyGemBag()
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(200,250,1), NormalRand(200,250,1), stringInput)
		openBank()
	}
}

emptyGemBag() {
	X1 := 0
	Y1 := 0
	X2 := 1740
	Y2 := 500
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 gemBag.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(514,654,int=1)
		Send {RButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {RButton up}
		Sleep NormalRand(514,754,int=1)
		
			X1 := 0
			Y1 := 0
			X2 := 1740
			Y2 := 500
			OutputVarX := 0
			OutputVarY := 0
			ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 emptyGemBag.png
			if (ErrorLevel == 0) {
				var1 := "T"
				timingVariable := NormalRand(748,1048,1)
				var2 := " P2-1"
				stringInput := "T" . timingVariable . " P2-1" 
				MouseGetPos, MouseX, MouseY
				RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
				Sleep NormalRand(514,654,int=1)
				Send {LButton down}  ; Press down the up-arrow key.
				Sleep NormalRand(23,110,int=1)
				Send {LButton up}
				Sleep NormalRand(514,754,int=1)
				Send {1 down}  ; Press down the up-arrow key.
				Sleep NormalRand(23,110,int=1)
				Send {1 up}
				renewFamiliar()
			} else {
				var1 := "T"
				timingVariable := NormalRand(748,1048,1)
				var2 := " P2-1"
				stringInput := "T" . timingVariable . " P2-1" 
				MouseGetPos, MouseX, MouseY
				RandomBezier(MouseX, MouseY, NormalRand(200,250,1), NormalRand(200,250,1), stringInput)
				emptyGemBag()
			}
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(200,250,1), NormalRand(200,250,1), stringInput)
		emptyGemBag()
	}
}

renewFamiliar() {
	Sleep NormalRand(1041,1214,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1752,1767,1), NormalRand(888,901,1), stringInput)
	Sleep NormalRand(514,654,int=1)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	Sleep NormalRand(514,654,int=1)
	
	Sleep NormalRand(1041,1214,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P1-1" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1537,1552,1), NormalRand(985,997,1), stringInput)
	Sleep NormalRand(514,654,int=1)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	Sleep NormalRand(514,654,int=1)
	checkFamiliar()
	teleportSlayerTowerAfterBank()

}

checkFamiliar() {
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 checkFamiliar.png
	if (ErrorLevel == 0) {
		
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1753,1770,1), NormalRand(850,863,1), stringInput)
		Sleep NormalRand(514,654,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		openBankAfterYak()
	}
}

checkContract(execution_count) {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1743,1744,1), NormalRand(684,684,1), stringInput)
	execution_count_internal := execution_count
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		
		X1 := 1732
		Y1 := 762
		X2 := 1923
		Y2 := 1021
		OutputVarX := 0
		OutputVarY := 0
		ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerContractComplete.png
		if (ErrorLevel == 0) {
			;MsgBox, teleporting
			teleportSlayerTower()
		} else {
			var1 := "T"
			timingVariable := NormalRand(748,1048,1)
			var2 := " P2-1"
			stringInput := "T" . timingVariable . " P5-2" 
			MouseGetPos, MouseX, MouseY
			RandomBezier(MouseX, MouseY, NormalRand(1743,1744,1), NormalRand(684,684,1), stringInput)
		}
		
	} else {
		; MsgBox, contract not found
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1743,1744,1), NormalRand(684,684,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		execution_count_internal += 1
		if (execution_count_internal >= 10) {	
			execution_count_internal = 1
			teleportSlayerTowerNoContract()
		}
		; MsgBox, Value Is: %execution_count_internal%
		checkContract(execution_count_internal)
	}
	
}

teleportSlayerTowerNoContract() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerRing.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1650,1760,int=1)
	} else {
		
	}
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1894,1911,1), NormalRand(495,512,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(1650,1760,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerTower.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+30,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(5147,6145,int=1)
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 LuckOfTheDwarves.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(230,310,int=1)
	checkSoulSplitOff()
	Sleep NormalRand(230,310,int=1)
	checkTurmoilOff()
	Sleep NormalRand(230,310,int=1)
	interfaceResetSouth()
	checkRetaliateOff()
	Sleep NormalRand(541,654,int=1)
	contractRoutineNoContract()
}

teleportSlayerTower() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerRing.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1650,1760,int=1)
	} else {
		
	}
	
	
	
	X1 := 1865
	Y1 := 471
	X2 := 1933
	Y2 := 551
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerRingWorn.png
	if (ErrorLevel == 0) {

	} else {
		teleportSlayerTower()
	}
	Sleep NormalRand(1000,1100,int=1)
	
	
	
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1894,1911,1), NormalRand(495,512,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(1650,1760,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerTower.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+30,1), NormalRand(OutputVarY,OutputVarY+3,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	
	Sleep NormalRand(5147,6145,int=1)
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 LuckOfTheDwarves.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(230,310,int=1)
	checkSoulSplitOff()
	Sleep NormalRand(230,310,int=1)
	checkTurmoilOff()
	Sleep NormalRand(230,310,int=1)
	interfaceResetSouth()
	checkRetaliateOff()
	Sleep NormalRand(541,654,int=1)
	contractRoutine()
}

teleportSlayerTowerFailedCoins() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerRing.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(650,760,int=1)
	} else {
		
	}
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1894,1911,1), NormalRand(495,512,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(650,760,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerTower.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+30,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(5147,6145,int=1)
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 LuckOfTheDwarves.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(230,310,int=1)
	checkSoulSplitOff()
	Sleep NormalRand(230,310,int=1)
	checkTurmoilOff()
	Sleep NormalRand(230,310,int=1)
	interfaceResetSouth()
	checkRetaliateOff()
	Sleep NormalRand(541,654,int=1)
}

teleportSlayerTowerAfterBank() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerRing.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(650,760,int=1)
	} else {
		
	}
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1894,1911,1), NormalRand(495,512,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(650,760,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerTower.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+30,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(5147,6145,int=1)
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 LuckOfTheDwarves.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		
	}
	Sleep NormalRand(230,310,int=1)
	interfaceResetSouth()
	checkRetaliateOff()
	Sleep NormalRand(541,654,int=1)
	findMarkus12NoCoins(1)
	Sleep NormalRand(541,654,int=1)
	interfaceResetNorth()
	Sleep NormalRand(541,654,int=1)
	goUpStairs()
	
}

contractRoutine() {
	findMarkus12(1)
	renewContract()
	Sleep NormalRand(541,654,int=1)
	interfaceResetNorth()
	Sleep NormalRand(541,654,int=1)
	goUpStairs()
}

contractRoutineNoContract() {
	findMarkus12NoCoins(1)
	renewContractNoContract()
	Sleep NormalRand(541,654,int=1)
	interfaceResetNorth()
	Sleep NormalRand(541,654,int=1)
	goUpStairs()
}

goUpStairs() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1747,1747,1), NormalRand(36,36,1), stringInput)
	Sleep NormalRand(250,500,int=1)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	Sleep NormalRand(18041,18214,int=1)
	findStairs()
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1766,1766,1), NormalRand(203,203,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	
	Sleep NormalRand(3564,3947,int=1)
	
	crossPlank()
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(778,836,1), NormalRand(576,632,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	
	Sleep NormalRand(3145,3315,int=1)
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1737,1737,1), NormalRand(139,139,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	
	checkRetaliateOn()
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-1" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(0,50,1), NormalRand(0,50,1), stringInput)
	Sleep NormalRand(1041,1214,int=1)
	
}

crossPlank() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(960,982,1), NormalRand(628,654,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 crossPlank.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(5041,6214,int=1)
	} else {
		var1 := "T"
		timingVariable := NormalRand(251,314,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P7-6" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(400,200,1), NormalRand(500,300,1), stringInput)
		crossPlank()
	}
	
	
}

findStairs(){
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(763,871,1), NormalRand(531,595,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 climbTopFloor.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+25,1), NormalRand(OutputVarY,OutputVarY+4,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2041,3214,int=1)
	} else {
		var1 := "T"
		timingVariable := NormalRand(251,314,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P7-6" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(400,200,1), NormalRand(500,300,1), stringInput)
		findStairsGlitch()
	}
}

findStairsGlitch(){
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1129,1131,1), NormalRand(567,567,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 climbTopFloor.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+25,1), NormalRand(OutputVarY,OutputVarY+4,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(10000,11000,int=1)
	} else {
		var1 := "T"
		timingVariable := NormalRand(251,314,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P7-6" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(400,200,1), NormalRand(500,300,1), stringInput)
		findStairs()
	}
}


findMarkus() {
	FileRead, FileContents, F:\markus_coordinates.txt
	FoundPos := RegExMatch(FileContents,"(\d+), \d+, \d+, \d+",SubPat)
	;MsgBox %SubPat1%
	Y1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, (\d+), \d+, \d+",SubPat)
	Y2 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, (\d+), \d+",SubPat)
	X1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, \d+, (\d+)",SubPat)
	X2 := SubPat1
	
	OutputVarX := ((X1 + X2)/2) + 8 + 805 + 15 - 20 + 7
	OutputVarY := ((Y1 + Y2)/2) - 22 + 448 + 20 - 7
	
	;MsgBox, Value is %OutputVarX%
	
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(OutputVarX-20,OutputVarX+20,1), NormalRand(OutputVarY-20,OutputVarY+25,1), stringInput)
	Sleep NormalRand(1041,1214,int=1)
	
	Sleep NormalRand(1041,1214,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(250,360,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(4041,6214,int=1)
		clickCoins()
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(100,150,1), NormalRand(100,150,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		findMarkus2()
	}

}

findMarkus12(i_location) {
	array_loc := i_location
	var1 := "T"
	timingVariable := NormalRand(200,250,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, 400, 400, stringInput)
	
	xcoordMarkus := [1070, 966, 966, 1028, 1022, 1023, 1019, 966, 1082, 1089, 1025, 905]
	ycoordMarkus := [541, 580, 629, 675, 583, 626, 540, 675, 625, 675, 622, 676]
	
	
	
	var1 := "T"
	timingVariable := NormalRand(200,250,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, xcoordMarkus[array_loc], ycoordMarkus[array_loc], stringInput)
	timingVariable := NormalRand(200,250,1)
	
	Sleep NormalRand(200,250,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(200,250,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(4041,6214,int=1)
		clickCoins()
	} else {
		array_loc := array_loc + 1
		if (array_loc >= 13) {
			array_loc := 1
		}
		findMarkus12(array_loc)
	}

}

findMarkus2() {
	Sleep NormalRand(1041,1214,int=1)
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(966,966,1), NormalRand(550,550,1), stringInput)
	Sleep NormalRand(1041,1214,int=1)
	
	Sleep NormalRand(1041,1214,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(250,360,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(4041,6214,int=1)
		clickCoins()
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(100,150,1), NormalRand(100,150,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		findMarkus()
	}

}

findMarkusNoCoins() {
	FileRead, FileContents, F:\markus_coordinates.txt
	FoundPos := RegExMatch(FileContents,"(\d+), \d+, \d+, \d+",SubPat)
	;MsgBox %SubPat1%
	Y1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, (\d+), \d+, \d+",SubPat)
	Y2 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, (\d+), \d+",SubPat)
	X1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, \d+, (\d+)",SubPat)
	X2 := SubPat1
	
	OutputVarX := ((X1 + X2)/2) + 8 + 805 + 15 - 20 + 7
	OutputVarY := ((Y1 + Y2)/2) - 22 + 448 + 20 - 7
	
	;MsgBox, Value is %OutputVarX%
	
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(OutputVarX-20,OutputVarX+20,1), NormalRand(OutputVarY-20,OutputVarY+25,1), stringInput)
	Sleep NormalRand(1041,1214,int=1)
	
	Sleep NormalRand(1041,1214,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(250,360,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(4041,6214,int=1)
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(100,150,1), NormalRand(100,150,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		findMarkusNoCoins2()
	}

}
findMarkus12NoCoins(i_location) {
	array_loc := i_location
	var1 := "T"
	timingVariable := NormalRand(200,250,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, 400, 400, stringInput)
	
	xcoordMarkus := [1070, 966, 966, 1028, 1022, 1023, 1019, 966, 1082, 1089, 1025, 905]
	ycoordMarkus := [541, 580, 629, 675, 583, 626, 540, 675, 625, 675, 622, 676]
	
	
	
	var1 := "T"
	timingVariable := NormalRand(200,250,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, xcoordMarkus[array_loc], ycoordMarkus[array_loc], stringInput)
	timingVariable := NormalRand(200,250,1)
	
	Sleep NormalRand(200,250,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(200,250,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(4041,6214,int=1)
	} else {
		array_loc := array_loc + 1
		if (array_loc >= 13) {
			array_loc := 1
		}
		findMarkus12NoCoins(array_loc)
	}

}

findMarkusNoCoins2() {
	Sleep NormalRand(1041,1214,int=1)
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(966,966,1), NormalRand(550,550,1), stringInput)
	Sleep NormalRand(1041,1214,int=1)
	
	Sleep NormalRand(1041,1214,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(250,360,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(4041,6214,int=1)
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(100,150,1), NormalRand(100,150,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		findMarkusNoCoins()
	}

}



clickCoins() {
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 clickCoins.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2041,3214,int=1)
		goldCoinsCountdown = 10
	} else {
		goldCoinsCountdown -= 1
		if ( goldCoinsCountdown < 2 ) {
			Suspend Permit
			Pause Toggle
		}
		clickCoins()
	}
}

renewContractNoContract() {
	;FileRead, FileContents, C:\tensorflow1\models\research\object_detection\markus_coordinates.txt
	;FoundPos := RegExMatch(FileContents,"(\d+), \d+, \d+, \d+",SubPat)
	;MsgBox %SubPat1%
	;Y1 := SubPat1
	;FoundPos := RegExMatch(FileContents,"\d+, (\d+), \d+, \d+",SubPat)
	;Y2 := SubPat1
	;FoundPos := RegExMatch(FileContents,"\d+, \d+, (\d+), \d+",SubPat)
	;X1 := SubPat1
	;FoundPos := RegExMatch(FileContents,"\d+, \d+, \d+, (\d+)",SubPat)
	;X2 := SubPat1
	
	;OutputVarX := ((X1 + X2)/2) + 8 + 805
	;OutputVarY := ((Y1 + Y2)/2) - 22 + 448
	
	;MsgBox, Value is %OutputVarX%
		
		
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-1" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1109,1255,1), NormalRand(518,564,1), stringInput)
	
	
	Sleep NormalRand(2041,3214,int=1)
	Loop, 20 {
		Sleep NormalRand(45,58,int=1)
		Send {WheelDown down}  ; Press down the up-arrow key.
		Sleep NormalRand(25,38,int=1)
		Send {WheelDown up}
	}
	
	Sleep NormalRand(501,1041,int=1)
	
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	
	Sleep NormalRand(1047,1547,int=1)
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-1" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1026,1149,1), NormalRand(507,518,1), stringInput)
	
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	
	Sleep NormalRand(1047,1547,int=1)
		
}

renewContract() {
	;FileRead, FileContents, C:\tensorflow1\models\research\object_detection\markus_coordinates.txt
	;FoundPos := RegExMatch(FileContents,"(\d+), \d+, \d+, \d+",SubPat)
	;MsgBox %SubPat1%
	;Y1 := SubPat1
	;FoundPos := RegExMatch(FileContents,"\d+, (\d+), \d+, \d+",SubPat)
	;Y2 := SubPat1
	;FoundPos := RegExMatch(FileContents,"\d+, \d+, (\d+), \d+",SubPat)
	;X1 := SubPat1
	;FoundPos := RegExMatch(FileContents,"\d+, \d+, \d+, (\d+)",SubPat)
	;X2 := SubPat1
	
	;OutputVarX := ((X1 + X2)/2) + 8 + 805
	;OutputVarY := ((Y1 + Y2)/2) - 22 + 448
	
	;MsgBox, Value is %OutputVarX%
	
	Sleep NormalRand(1041,1214,int=1)
	
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(966,966,1), NormalRand(550,550,1), stringInput)
	Sleep NormalRand(1041,1214,int=1)
	
	Sleep NormalRand(1041,1214,int=1)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(250,360,int=1)
	
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 markusContract.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1109,1255,1), NormalRand(518,564,1), stringInput)
		
		
		Sleep NormalRand(2041,3214,int=1)
		Loop, 20 {
			Sleep NormalRand(45,58,int=1)
			Send {WheelDown down}  ; Press down the up-arrow key.
			Sleep NormalRand(25,38,int=1)
			Send {WheelDown up}
		}
		
		Sleep NormalRand(501,1041,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(1047,1547,int=1)
		
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1026,1149,1), NormalRand(507,518,1), stringInput)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(1047,1547,int=1)
		
		
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(100,150,1), NormalRand(100,150,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		renewContract()
	}

}

clearInventory() {
	checkRetaliateOn()
	Sleep NormalRand(3148,5147,int=1)
	checkHolyOverload()
	alchItems()
	checkHolyOverload()
	storeItems()
	checkHolyOverload()
	;dropItems()
	checkRetaliateOn()
	eatSharks()
	accursedAshes()
	checkRetaliateOn()
	infernalAshes()
	checkRetaliateOn()
}

alchItems() {
	;alchRuneDagger()
	;alchOffhandRuneDagger()
	;alchAdamantBattleaxe()
	;alchOffhandAdamantBattleaxe()
	;alchRuneHelm()
	;alchRuneChain()
	;alchRunePlate()
	;alchRuneGauntlets()
	alchMediumAdamantSalvage()
	alchTinyRuneSalvage()
	alchTinySpikeyRuneSalvage()
	alchLargeRuneSalvage()
	alchHugeRuneSalvage()
	alchMediumMithrilSalvage()
}

storeItems() {
	;storeSteel2hSword()
	;storeOffhandSteelBattleaxe()
	;storeSteelHatchet()
	storeSpiritRuby()
	storeCactusSeed() 
	;storeMithrilKiteshield()
	;storeSteelBattleaxe()
	storeDragonHelm()
	storeToothHalf()
	storeLoopHalf()
	storeDragonLongsword()
	storeOffhandDragonLongsword()
	storeToadflaxSeed() 
	storeWhip()
	storeAbyssalHead()
	storeCrystalKey()
	storeBellaSeed()
	storeDragonSpear()
	storeRocktail()
	storeCavefish()
}

accursedAshes() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 accursedAshes.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		accursedAshes()
	} else {
		
	}
}

infernalAshes() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *25 infernalAshes.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		infernalAshes()
	} else {
		
	}
}

storeCavefish() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 cavefish.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeCavefish()
	} else {
		
	}
}

storeRocktail() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 rocktail.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeRocktail()
	} else {
		
	}
}

storeDragonSpear() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 dragonSpear.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeDragonSpear()
	} else {
		
	}
}

storeCrystalKey() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 crystalKey.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeCrystalKey()
	} else {
		
	}
}

storeBellaSeed() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 bellaSeed.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeBellaSeed()
	} else {
		
	}
}

storeAbyssalHead() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 abyssalHead.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeAbyssalHead()
	} else {
		
	}
}

storeWhip() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 whip.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeWhip() 
	} else {
		
	}
}

storeToadflaxSeed() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 toadflaxSeed.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeToadflaxSeed() 
	} else {
		
	}
}

storeDragonLongsword() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 dragonLongsword.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeDragonLongsword()
	} else {
		
	}
}

storeOffhandDragonLongsword() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 offhandDragonLongsword.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeOffhandDragonLongsword()
	} else {
		
	}
}

storeSteel2hSword() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 steel2hSword.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeSteel2hSword()
	} else {
		
	}
}

storeLoopHalf() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 loopHalf.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+10,1), NormalRand(OutputVarY,OutputVarY+15,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeLoopHalf()
	} else {
		
	}
}

storeToothHalf() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 toothHalf.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeToothHalf()
	} else {
		
	}
}

storeSteelBattleaxe() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 steelBattleaxe.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeSteelBattleaxe()
	} else {
		
	}
}

storeMithrilKiteshield() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 mithrilKiteshield.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeMithrilKiteshield()
	} else {
		
	}
}

storeDragonHelm() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 dragonHelm.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeDragonHelm()
	} else {
		
	}
}

storeCactusSeed() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 cactusSeed.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeCactusSeed() 
	} else {
		
	}
}

storeSpiritRuby() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 spiritRuby.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeSpiritRuby()
	} else {
		
	}
}

storeSteelHatchet() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 steelHatchet.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeSteelHatchet()
	} else {
		
	}
}

storeOffhandSteelBattleaxe() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 offhandSteelBattleaxe.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1611,1629,1), NormalRand(983,1000,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1041,1214,int=1)
		storeOffhandSteelBattleaxe()
	} else {
		
	}
}

alchTinyRuneSalvage() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 tinyRuneSalvage.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchTinyRuneSalvage()
	} else {
		
	}
}

alchTinySpikeyRuneSalvage() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 tinySpikeyRuneSalvage.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchTinySpikeyRuneSalvage()
	} else {
		
	}
}

alchLargeRuneSalvage() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 largeRuneSalvage.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchLargeRuneSalvage()
	} else {
		
	}
}

alchHugeRuneSalvage() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 hugeRuneSalvage.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchHugeRuneSalvage()
	} else {
		
	}
}

alchMediumAdamantSalvage() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 mediumAdamantSalvage.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchMediumAdamantSalvage()
	} else {
		
	}
}

alchMediumMithrilSalvage() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 mediumMithrilSalvage.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchMediumMithrilSalvage()
	} else {
		
	}
}

alchRuneGauntlets() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 runeGauntlets.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchRuneGauntlets()
	} else {
		
	}
}

alchRuneDagger() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 runeDagger.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchRuneDagger()
	} else {
		
	}
}



alchAdamantBattleaxe() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 adamantBattleaxe.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchAdamantBattleaxe()
	} else {
		
	}
}

alchOffhandAdamantBattleaxe() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 offhandAdamantBattleaxe.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchOffhandAdamantBattleaxe()
	} else {
		
	}
}

alchRuneHelm() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 runeHelm.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchRuneHelm()
	} else {
		
	}
}

alchRuneChain() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 runeChain.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchRuneChain()
	} else {
		
	}
}

alchRunePlate() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 runePlate.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchRunePlate()
	} else {
		
	}
}

alchOffhandRuneDagger() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 offhandRuneDagger.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {0 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {0 up}
		Sleep NormalRand(541,645,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		alchOffhandRuneDagger()
	} else {
		
	}
}

eatSharks() {
	X1 := 1732
	Y1 := 762
	X2 := 1923
	Y2 := 1021
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 shark.png
	if (ErrorLevel == 0) {
		;Sleep NormalRand(514,714,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2141,3451,int=1)
		eatSharks()
	} else {
		
	}
}




lootRight() {
	Sleep NormalRand(514,714,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(972,995,1), NormalRand(441,452,1), stringInput)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1015,1020,1), NormalRand(560,566,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(784,1047,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 Take.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2014,2314,int=1)
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Space down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Space up}
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Escape down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Escape up}
		Sleep NormalRand(23,110,int=1)
		checkEscape()
	} else {
		attack()
		lootLeft()
	}
}
	
lootLeft() {
	Sleep NormalRand(514,714,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(972,995,1), NormalRand(441,452,1), stringInput)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P5-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(915,922,1), NormalRand(557,564,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	Sleep NormalRand(784,1047,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 Take.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2014,2314,int=1)
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Space down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Space up}
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Escape down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Escape up}
		Sleep NormalRand(23,110,int=1)
		checkEscape()
	} else {
		attack()
		lootRight()
	}
}

attack() {
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 attack.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+40,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2014,2314,int=1)
	} else {
		
	}
}

checkPrayerPoints() {
	;X1 := 0
	;Y1 := 0
	;X2 := 1980
	;Y2 := 1080
	;OutputVarX := 0
	;OutputVarY := 0
	;ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 PrayerPotionInventory.png
	;if (ErrorLevel == 0) {
	;	
	;} else {
	;	
	;}
	;ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 PrayerPotionInventory1.png
	;if (ErrorLevel == 0) {
	;	getPrayerPotion()
	;	Sleep NormalRand(450,511,int=1)
	;	checkPrayerPoints()
	;} else {
	;	
	;}
	; MsgBox, about to check color
	color := 0
	PixelGetColor, color, 863, 913
	;MsgBox, Value Is: %color%
	if (color == 0x0D1C20) {
		; MsgBox, here check prayer points, about to call
		getPrayerPotion(1)
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	if (color == 0x0D1D20) {
		; MsgBox, here check prayer points, about to call
		getPrayerPotion(1)
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	if (color == 0x0E1D21) {
		; MsgBox, here check prayer points, about to call
		getPrayerPotion(1)
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	if (color == 0x0E1D20) {
		; MsgBox, here check prayer points, about to call
		getPrayerPotion(1)
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	if (color == 0x0D1C1F) {
		; MsgBox, here check prayer points, about to call
		getPrayerPotion(1)
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	
	color := 0
	PixelGetColor, color, 1146, 1004
	;MsgBox, Value Is: %color%
	if (color == 0x2C2923) {
		; MsgBox, drinking pot
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {3 down}
		Sleep NormalRand(23,110,int=1)
		Send {3 up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	if (color == 0x221F19) {
		; MsgBox, drinking pot
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {3 down}
		Sleep NormalRand(23,110,int=1)
		Send {3 up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	; MsgBox, Value Is: %color%
}

getPrayerPotion(execution_count) {
	execution_count_internal := execution_count
	; MsgBox, made it to get prayer potion
	X1 := 1381
	Y1 := 762
	X2 := 1726
	Y2 := 950
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 PrayerPotion.png
	if (ErrorLevel == 0) {
		; MsgBox, found prayer pot
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P4-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+5,1), NormalRand(OutputVarY,OutputVarY+5,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(346,654,int=1)
		prayerPotionCountdown = 10;
	} else {
		; MsgBox, did not find prayer pot
		if (execution_count_internal >= 10 ) {
			execution_count_internal = 1
			teleportMaxGuild()
		}
		execution_count_internal += 1
		getPrayerPotion(execution_count_internal)
	}
	; MsgBox, skipped image search???
	; MsgBox, skipped image search???
}

checkHolyOverload() {
	X1 := 740
	Y1 := 829
	X2 := 1098
	Y2 := 9918
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 HolyOverload.png
	if (ErrorLevel == 0) {
		
	} else {
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {2 down}
		Sleep NormalRand(23,110,int=1)
		Send {2 up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}
		Sleep NormalRand(1245,1314,int=1)
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {4 down}
		Sleep NormalRand(23,110,int=1)
		Send {4 up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}
		
		Sleep NormalRand(450,511,int=1)
		checkHolyOverload()
	}
}

checkWeaponPoison() {
	X1 := 740
	Y1 := 829
	X2 := 1098
	Y2 := 9918
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 weaponpoison.png
	if (ErrorLevel == 0) {
		
	} else {
		Sleep NormalRand(450,511,int=1)
		Send {Shift down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {1 down}
		Sleep NormalRand(23,110,int=1)
		Send {1 up}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Shift up}
		Sleep NormalRand(1245,1314,int=1)
		
		Sleep NormalRand(450,511,int=1)
		
	}
}

checkTurmoil() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 Turmoil.png
	if (ErrorLevel == 0) {
		
	} else {
		Send {f down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {f up}
		Sleep NormalRand(2384,2754,int=1)
		checkTurmoil()
	}
}

checkTurmoilOff() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 Turmoil.png
	if (ErrorLevel == 0) {
		Send {f down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {f up}
		Sleep NormalRand(2384,2754,int=1)
		checkTurmoilOff()
	} else {
		
	}
}

checkEscape() {
	Sleep NormalRand(450,512,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1920
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 escape.png
	if (ErrorLevel == 0) {
		Sleep NormalRand(3514,3614,int=1)
		Send {Escape down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Escape up}
		Sleep NormalRand(123,150,int=1)
		Sleep NormalRand(450,512,int=1)
		checkEscape()
	} else {
		
	}
	
}

checkRetaliateOff() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 retaliateOff.png
	if (ErrorLevel == 0) {
		
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(951,963,1), NormalRand(993,1005,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(123,145,int=1)
		checkRetaliateOff()
	}
}

checkRetaliateOn() {
	X1 := 926
	Y1 := 926
	X2 := 1000
	Y2 := 1036
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *100 retaliateOn.png
	if (ErrorLevel == 0) {
		
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(951,963,1), NormalRand(993,1005,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(123,145,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P5-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(400,400,1), NormalRand(400,400,1), stringInput)
		checkRetaliateOn()
	}
}

checkSoulSplit() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 SoulSplit.png
	if (ErrorLevel == 0) {
		
	} else {
		Send {g down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {g up}
		Sleep NormalRand(2384,2754,int=1)
		checkSoulSplit()
	}
}

checkSoulSplitOff() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 SoulSplit.png
	if (ErrorLevel == 0) {
		Send {g down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {g up}
		Sleep NormalRand(2384,2754,int=1)
		checkSoulSplitOff()
	} else {
		
	}
}

clickTree() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P4-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(920,1006,1), NormalRand(422,480,1), stringInput)
	
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 chopTree.png
	if (ErrorLevel == 0) {
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(025,50,int=1)
	} else {
		clickTree()
	}
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P4-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(865,906,1), NormalRand(355,412,1), stringInput)
}

clickTreeCrystalize() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P4-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(920,1006,1), NormalRand(422,480,1), stringInput)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 crystalize.png
	if (ErrorLevel == 0) {
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(25,30,int=1)
	} else {
		clickTree()
	}
}
		
	


XButton2::
  Suspend Permit
  Pause Toggle
  Return

openBankPriff() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P4-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(691,726,1), NormalRand(519,541,1), stringInput)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 banker.png
	if (ErrorLevel == 0) {
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2581,3518,int=1)
	} else {
		openBankPriff()
	}	
}

mouseCampfire() {
	Sleep NormalRand(581,984,int=1)
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1204,1302,1), NormalRand(683,749,1), stringInput)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 cookAt.png
	if (ErrorLevel == 0) {
		Sleep NormalRand(250,984,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
	} else {
		mouseCampfire()
	}
}

interfaceResetNorth() {
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P9-8" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1595,1624,1), NormalRand(39,65,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	Loop, 10 {
		Sleep NormalRand(45,58,int=1)
		Send {WheelDown down}  ; Press down the up-arrow key.
		Sleep NormalRand(25,38,int=1)
		Send {WheelDown up}
	}
}

interfaceResetSouth() {
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P9-8" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1595,1624,1), NormalRand(39,65,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	
	Sleep NormalRand(514,785,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *55 faceSouth.png
	If (ErrorLevel == 0){
		timingVariable := NormalRand(748,1048,1)
		stringInput := "T" . timingVariable . " P1-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX + 7,1), NormalRand(OutputVarY,OutputVarY + 7,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(145,250,int=1)
		Loop 50 {
			Send {WheelDown down}  ; Press down the up-arrow key.
			Sleep NormalRand(16,25,int=1)
			Send {WheelDown up}
		}
		Sleep NormalRand(145,250,int=1)
		timingVariable := NormalRand(748,1048,1)
		stringInput := "T" . timingVariable . " P6-3" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(691,726,1), NormalRand(519,541,1), stringInput)
	} else {
		; MsgBox not found
	}
}

mouseBank() {
	Sleep NormalRand(145,250,int=1)
	MouseX := 0
	MouseY := 0
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-3" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(691,726,1), NormalRand(519,541,1), stringInput)
	Sleep NormalRand(298,350,int=1)
}


NormalRand(x,y,int=1) { ;x lower y upper int for integer return
Loop 12
 {
 Random, var,0.0,1
 Num+=var
 }
norm := (int) ? Round((y+x)/2+((Num-6)*(y-x))/6) : (y+x)/2+((Num-6)*(y-x))/6
Return norm < x ? x : norm > y ? y : norm
}

RandomBezier( X0, Y0, Xf, Yf, O="" ) {
    Time := RegExMatch(O,"i)T(\d+)",M)&&(M1>0)? M1: 200
    RO := InStr(O,"RO",0) , RD := InStr(O,"RD",0)
    N:=!RegExMatch(O,"i)P(\d+)(-(\d+))?",M)||(M1<2)? 2: (M1>19)? 19: M1
    If ((M:=(M3!="")? ((M3<2)? 2: ((M3>19)? 19: M3)): ((M1=="")? 5: ""))!="")
        Random, N, %N%, %M%
    OfT:=RegExMatch(O,"i)OT(-?\d+)",M)? M1: 100, OfB:=RegExMatch(O,"i)OB(-?\d+)",M)? M1: 100
    OfL:=RegExMatch(O,"i)OL(-?\d+)",M)? M1: 100, OfR:=RegExMatch(O,"i)OR(-?\d+)",M)? M1: 100
    MouseGetPos, XM, YM
    If ( RO )
        X0 += XM, Y0 += YM
    If ( RD )
        Xf += XM, Yf += YM
    If ( X0 < Xf )
        sX := X0-OfL, bX := Xf+OfR
    Else
        sX := Xf-OfL, bX := X0+OfR
    If ( Y0 < Yf )
        sY := Y0-OfT, bY := Yf+OfB
    Else
        sY := Yf-OfT, bY := Y0+OfB
    Loop, % (--N)-1 {
        Random, X%A_Index%, %sX%, %bX%
        Random, Y%A_Index%, %sY%, %bY%
    }
    X%N% := Xf, Y%N% := Yf, E := ( I := A_TickCount ) + Time
    While ( A_TickCount < E ) {
        U := 1 - (T := (A_TickCount-I)/Time)
        Loop, % N + 1 + (X := Y := 0) {
            Loop, % Idx := A_Index - (F1 := F2 := F3 := 1)
                F2 *= A_Index, F1 *= A_Index
            Loop, % D := N-Idx
                F3 *= A_Index, F1 *= A_Index+Idx
            M:=(F1/(F2*F3))*((T+0.000001)**Idx)*((U-0.000001)**D), X+=M*X%Idx%, Y+=M*Y%Idx%
        }
        MouseMove, %X%, %Y%, 0
        Sleep, 1
    }
    MouseMove, X%N%, Y%N%, 0
    Return N+1
}