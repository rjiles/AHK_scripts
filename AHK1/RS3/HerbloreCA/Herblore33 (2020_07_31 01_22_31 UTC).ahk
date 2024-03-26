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
	interfaceCountdown -= 1
	if ( interfaceCountdown < 2 ) {
		interfaceReset()
		Random, interfaceCountdown, 23, 68
	}
	
	openBankPriff()

	Send {Numpad1 down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {Numpad1 up}
	
	Sleep NormalRand(581,984,int=1)
	
	mouseCampfire2()
	Sleep NormalRand(2514,3015,int=1)
	
	Send {Space down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {Space up}
	Sleep NormalRand(33500,34000,int=1)
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
	RandomBezier(MouseX, MouseY, NormalRand(1254,1255,1), NormalRand(532,535,1), stringInput)
		Sleep NormalRand(143,200,int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(2581,3518,int=1)

}

mouseCampfire0() {
	Sleep NormalRand(581,984,int=1)
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P5-4" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(773,775,1), NormalRand(525,527,1), stringInput)

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
	RandomBezier(MouseX, MouseY, NormalRand(1595,1624,1), NormalRand(39,65,1), stringInput)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	Loop, 10 {
		Sleep NormalRand(45,58,int=1)
		Send {WheelUp down}  ; Press down the up-arrow key.
		Sleep NormalRand(25,38,int=1)
		Send {WheelUp up}
	}
	Sleep NormalRand(45,58,int=1)
	Send {Up down}  ; Press down the up-arrow key.
	Sleep NormalRand(700,800,int=1)
	Send {Up up}
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