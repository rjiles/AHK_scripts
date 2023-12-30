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

X1 = 0
Y1 = 0
X2 = 1980
Y2 = 1080
Pose = 0
PoseD = 0

Sleep NormalRand(2545,3541,int=1)

Loop{
	Sleep NormalRand(268,581,int=1)
	interfaceCountdown -= 1
	if ( interfaceCountdown < 2 ) {
		interfaceReset()
		Random, interfaceCountdown, 23, 68
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 banker.png
	If (ErrorLevel == 0){
		openBankPriff()
		bankHover = TRUE
	} else {
		bankHover = FALSE
	}
	
	if (bankHover) {
	

	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 bank.png
	If (ErrorLevel == 0){
		bankOpen = 1
	} else {
		openBankPriff()
	}

	Send {Numpad1 down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {Numpad1 up}
	
	Sleep NormalRand(581,984,int=1)
	
	
	
	
	
	Send {Numpad1 down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {Numpad1 up}
	Sleep NormalRand(251,349,int=1)
		
	annoyingScreenFinder()
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 interface.png
	If (ErrorLevel == 0){
	interfaceOpen = 1
	;MsgBox Crane
	} else {
		;MsgBox could not find
		Send {Numpad1 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Numpad1 up}
		Sleep NormalRand(1485,1845,int=1)
	
	}
	interfaceOpen = 0
	
	Send {Space down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {Space up}
	
	Sleep NormalRand(48658,52485,int=1)
	
	}
	
}

annoyingScreenFinder() {
	MouseX := 0
	MouseY := 0
	OutputVarX := 0
	OutputVarY := 0
	X1 := 896
	Y1 := 347
	X2 := 1290
	Y2 := 544
	Sleep NormalRand(150,250,int=1)
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *10 annoyingScreen.png
	If (ErrorLevel == 0){
		timingVariable := NormalRand(748,1048,1)
		stringInput := "T" . timingVariable . " P9-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(1075,1112,1), NormalRand(434,468,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(1485,1845,int=1)
	} else {

	}
}


XButton2::
  Suspend Permit
  Pause Toggle
  Return

openBankPriff() {
	Sleep NormalRand(581,984,int=1)
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P3-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(797,814,1), NormalRand(493,514,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	Sleep NormalRand(1485,1845,int=1)
}

interfaceReset() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P3-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1278,1302,1), NormalRand(38,63,1), stringInput)
	Send {RButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {RButton up}
	
	Sleep NormalRand(514,785,int=1)
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *55 faceSouth.png
	If (ErrorLevel == 0){
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P1-1" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(OutputVarX,OutputVarX + 7,1), NormalRand(OutputVarY,OutputVarY + 7,1), stringInput)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(248,784,int=1)
		Send {Up down}  ; Press down the up-arrow key.
		Sleep NormalRand(485,745,int=1)
		Send {Up up}
		Sleep NormalRand(145,250,int=1)
		Send {WheelDown down}  ; Press down the up-arrow key.
		Sleep NormalRand(278,489,int=1)
		Send {WheelDown up}
		Sleep NormalRand(145,250,int=1)
		var1 := "T"
		timingVariable := NormalRand(748,1048,1)
		var2 := " P2-1"
		stringInput := "T" . timingVariable . " P3-2" 
		MouseGetPos, MouseX, MouseY
		RandomBezier(MouseX, MouseY, NormalRand(956,976,1), NormalRand(582,605,1), stringInput)
	} else {
		MsgBox not found
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

MouseMove_Ellipse(pos_X1, pos_Y1, param_Options="") {
;MouseGetPos, MouseX, MouseY
;RandomBezier( MouseX, MouseY, pos_X1, pos_Y1)

    StringUpper, param_Options, param_Options
	
    MouseGetPos, loc_MouseX, loc_MouseY ; Use mouse coordinates if origin is omitted
    pos_X0 := !RegExMatch(param_Options,"i)OX\d+",loc_Match) ? loc_MouseX : SubStr(loc_Match,3)
    pos_Y0 := !RegExMatch(param_Options,"i)OY\d+",loc_Match) ? loc_MouseY : SubStr(loc_Match,3)

    ; set speed (default is 1)
    loc_Speed := !RegExMatch(param_Options,"i)S\d+\.?\d*",loc_Match) ? 1 : SubStr(loc_Match,2)

    If !RegExMatch(param_Options,"i)I[01]",loc_Match)
        Random, loc_Inv, 0, 1 ; randomly invert by default
    Else
        loc_Inv := SubStr(loc_Match,2)

    If InStr(param_Options,"R") ; support relative movements
        pos_X1 += pos_X0  ,  pos_Y1 += pos_Y0

    If ( loc_Block := InStr(param_Options,"B") ) ; Block any mouse input
        BlockInput, Mouse

    loc_B := Abs(pos_X0-pos_X1) , loc_A := Abs(pos_Y0-pos_Y1) ; B: Width , A: Height

    loc_Temp := loc_Inv ^ (pos_X0<pos_X1) ^ (pos_Y0<pos_Y1)
    loc_H := pos_X%loc_Temp% ; Center point X
    loc_Temp := !loc_Temp
    loc_K := pos_Y%loc_Temp% ; Center point Y

    loc_MDelay := A_MouseDelay ; Save current mouse delay before changing it
    SetMouseDelay, 1

    If ( loc_B > loc_A ) { ; If distance from pos_X0 to pos_X1 is greater then pos_Y0 to pos_Y1
        loc_MultX := ( pos_X0 < pos_X1 ) ? 1 : (-1)
        loc_MultY := loc_MultX * ( loc_Inv ? 1 : (-1) )
        Loop, % ( loc_B / loc_Speed ) {
            loc_X := pos_X0 + ( A_Index * loc_Speed * loc_MultX ) ; Add or subtract loc_Speed from X
            loc_Y := ( loc_MultY * Sqrt(loc_A**2*((loc_X-loc_H)**2/loc_B**2-1)*-1) ) + loc_K ; Formula for Y with a given X
            MouseMove, %loc_X%, %loc_Y%, 0
        }
    } Else { ; If distance from pos_Y0 to pos_Y1 is greater then pos_X0 to pos_X1
        loc_MultY := ( pos_Y0 < pos_Y1 ) ? 1 : (-1)
        loc_MultX := loc_MultY * ( loc_Inv ? (-1) : 1 )
        Loop, % ( loc_A / loc_Speed ) {
            loc_Y := pos_Y0 + ( A_Index * loc_Speed * loc_MultY ) ; Add or subtract loc_Speed from Y
            loc_X := ( loc_MultX * Sqrt(loc_B**2*(1-(loc_Y-loc_K)**2/loc_A**2)) ) + loc_H ; Formula for X with a given Y
            MouseMove, %loc_X%, %loc_Y%, 0 ; Move mouse to new position
        }
    }

    ; Sometimes loop would end with mouse more than "loc_Speed" pixels away from pos_X1,pos_Y1
    MouseMove, %pos_X1%, %pos_Y1%, 0

    If ( loc_Block )
        BlockInput, Off

    SetMouseDelay, %loc_MDelay% ; Restore previous mouse delay

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