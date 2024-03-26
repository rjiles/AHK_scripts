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
	;findMartin()
	;renewContract()
	goUpStairs()
	

	
	
	Sleep NormalRand(24147,25645,int=1)
	
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
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+50,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
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
		findStairs()
	}
}


findMartin() {
	FileRead, FileContents, C:\tensorflow1\models\research\object_detection\markus_coordinates.txt
	FoundPos := RegExMatch(FileContents,"(\d+), \d+, \d+, \d+",SubPat)
	;MsgBox %SubPat1%
	Y1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, (\d+), \d+, \d+",SubPat)
	Y2 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, (\d+), \d+",SubPat)
	X1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, \d+, (\d+)",SubPat)
	X2 := SubPat1
	
	OutputVarX := ((X1 + X2)/2) + 8 + 805
	OutputVarY := ((Y1 + Y2)/2) - 22 + 448
	
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
		Sleep NormalRand(4041,5214,int=1)
		Send {2 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {2 up}
	} else {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P2-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(0,50,1), NormalRand(0,50,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		findMartin()
	}

}

renewContract() {
	FileRead, FileContents, C:\tensorflow1\models\research\object_detection\markus_coordinates.txt
	FoundPos := RegExMatch(FileContents,"(\d+), \d+, \d+, \d+",SubPat)
	;MsgBox %SubPat1%
	Y1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, (\d+), \d+, \d+",SubPat)
	Y2 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, (\d+), \d+",SubPat)
	X1 := SubPat1
	FoundPos := RegExMatch(FileContents,"\d+, \d+, \d+, (\d+)",SubPat)
	X2 := SubPat1
	
	OutputVarX := ((X1 + X2)/2) + 8 + 805
	OutputVarY := ((Y1 + Y2)/2) - 22 + 448
	
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
		RandomBezier(MouseX, MouseY, NormalRand(0,50,1), NormalRand(0,50,1), stringInput)
		Sleep NormalRand(1041,1214,int=1)
		renewContract()
	}

}

checkContract() {
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
	} else {
		
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *50 slayerContractComplete.png
	if (ErrorLevel == 0) {
		teleportSlayerTower()
	} else {
		
	}
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
		Sleep NormalRand(250,360,int=1)
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
	Sleep NormalRand(250,360,int=1)
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
}

clearInventory() {
	Sleep NormalRand(3148,5147,int=1)
	checkHolyOverload()
	alchItems()
	checkHolyOverload()
	storeItems()
	checkHolyOverload()
	;dropItems()
	eatSharks()
	accursedAshes()
	infernalAshes()
}

alchItems() {
	alchRuneDagger()
	alchOffhandRuneDagger()
	alchAdamantBattleaxe()
	alchOffhandAdamantBattleaxe()
	alchRuneHelm()
	alchRuneChain()
	alchRunePlate()
	alchRuneGauntlets()
}

storeItems() {
	storeSteel2hSword()
	storeOffhandSteelBattleaxe()
	storeSteelHatchet()
	storeSpiritRuby()
	storeCactusSeed() 
	storeMithrilKiteshield()
	storeSteelBattleaxe()
	storeDragonHelm()
	storeToothHalf()
	storeDragonLongsword()
	storeToadflaxSeed() 
	storeWhip()
	storeAbyssalHead()
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
		storewhip() 
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
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+30,1), NormalRand(OutputVarY,OutputVarY+7,1), stringInput)
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
	} else {
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
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX-7,1), NormalRand(OutputVarY,OutputVarY-7,1), stringInput)
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
	} else {
		lootRight()
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
	
	color := 0
	PixelGetColor, color, 863, 913
	;MsgBox, Value Is: %color%
	if (color == 0x0D1C20) {
		getPrayerPotion()
		Sleep NormalRand(450,511,int=1)
		checkPrayerPoints()
	}
	
	color := 0
	PixelGetColor, color, 1146, 1004
	if (color == 0x2C2923) {
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
	;MsgBox, Value Is: %color%
}

getPrayerPotion() {
	X1 := 1381
	Y1 := 762
	X2 := 1726
	Y2 := 950
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *75 PrayerPotion.png
	if (ErrorLevel == 0) {
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P4-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX+20,1), NormalRand(OutputVarY,OutputVarY+25,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(346,654,int=1)
	} else {
		;MsgBox did not find prayer potion
		getPrayerPotion()
	}
	
}

checkHolyOverload() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 902
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 HolyOverload.png
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

checkTurmoil() {
	X1 := 771
	Y1 := 817
	X2 := 1294
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 Turmoil.png
	if (ErrorLevel == 0) {
		
	} else {
		Send {f down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {f up}
		Sleep NormalRand(2084,2254,int=1)
		checkTurmoil()
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
		Sleep NormalRand(2084,2254,int=1)
		checkSoulSplit()
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