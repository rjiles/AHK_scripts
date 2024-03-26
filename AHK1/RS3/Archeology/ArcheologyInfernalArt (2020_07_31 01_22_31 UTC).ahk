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

Sleep NormalRand(1524,1758,int=1)

Loop{
	Sleep NormalRand(268,581,int=1)

	interfaceResetSouth()

	
	clickArcheologyPile()

	Send {I down}  ; Press down the up-arrow key.
	Sleep NormalRand(5000,10000,int=1)
	Send {I up}
	
	clickArcheologyPile()
	
	Sleep NormalRand(20000,30000,int=1)
	
	Send {I down}  ; Press down the up-arrow key.
	Sleep NormalRand(5000,10000,int=1)
	Send {I up}
	
	clickArcheologyPile()
	
	Sleep NormalRand(20000,30000,int=1)
	
	Send {I down}  ; Press down the up-arrow key.
	Sleep NormalRand(5000,10000,int=1)
	Send {I up}
	
	clickArcheologyPile()
	
	Sleep NormalRand(20000,30000,int=1)
	
	Send {I down}  ; Press down the up-arrow key.
	Sleep NormalRand(5000,10000,int=1)
	Send {I up}
	
	clickArcheologyPile()
	
	Sleep NormalRand(20000,30000,int=1)
	
	Send {I down}  ; Press down the up-arrow key.
	Sleep NormalRand(5000,10000,int=1)
	Send {I up}
	
	clickArcheologyPile()
	
	Sleep NormalRand(20000,30000,int=1)
	
	Send {I down}  ; Press down the up-arrow key.
	Sleep NormalRand(5000,10000,int=1)
	Send {I up}
	
	clickArcheologyPile()
	
	Sleep NormalRand(20000,30000,int=1)
	
	Deposit()
	

	Sleep NormalRand(10000,11000,int=1)
	
	interfaceReset()
	
	clickArcheologyPileAfterDeposit()
	
	Sleep NormalRand(5000,8000,int=1)
	

}


XButton2::
  Suspend Permit
  Pause Toggle
  Return

clickArcheologyPile() {


	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(859,860,1), NormalRand(466,467,1), stringInput)
	
	Sleep NormalRand(250,984,int=1)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	
	
	Sleep NormalRand(514,785,int=1)

}

clickArcheologyPileAfterDeposit() {


	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(177,178,1), NormalRand(317,318,1), stringInput)
	
	Sleep NormalRand(250,984,int=1)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}

}

Deposit() {


	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(145,146,1), NormalRand(281,282,1), stringInput)
	
	Sleep NormalRand(250,984,int=1)
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
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *55 deposit.png
	If (ErrorLevel == 0){
		timingVariable := NormalRand(748,1048,1)
		stringInput := "T" . timingVariable . " P1-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX + 7,1), NormalRand(OutputVarY,OutputVarY + 7,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(145,250,int=1)
	} else {
		Deposit()
	}
}

mouseCampfire0() {
	Sleep NormalRand(581,984,int=1)
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(683,684,1), NormalRand(530,531,1), stringInput)

		Sleep NormalRand(250,984,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
}
mouseCampfire1() {
	Sleep NormalRand(581,984,int=1)
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(950,952,1), NormalRand(327,328,1), stringInput)

		Sleep NormalRand(250,984,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
}
mouseCampfire2() {
	Sleep NormalRand(581,984,int=1)
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(974,975,1), NormalRand(804,805,1), stringInput)

		Sleep NormalRand(250,984,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
}
mouseCampfire3() {
	Sleep NormalRand(581,984,int=1)
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(936,940,1), NormalRand(467,470,1), stringInput)

		Sleep NormalRand(250,984,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
}

interfaceReset() {
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P9-8" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1424,1425,1), NormalRand(55,56,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P9-8" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(500,501,1), NormalRand(39,65,1), stringInput)
	Loop, 50 {
		Sleep NormalRand(45,58,int=1)
		Send {WheelDown down}  ; Press down the up-arrow key.
		Sleep NormalRand(25,38,int=1)
		Send {WheelDown up}
	}
	Sleep NormalRand(45,58,int=1)

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

interfaceResetSouth() {
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P9-8" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1424,1425,1), NormalRand(55,56,1), stringInput)
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