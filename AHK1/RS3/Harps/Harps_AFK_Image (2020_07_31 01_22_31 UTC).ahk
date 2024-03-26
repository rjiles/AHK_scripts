#MaxThreadsPerHotkey 2
interfaceCountdown = 2;

Loop {
	Sleep NormalRand(268,581,int=1)
	interfaceCountdown -= 1
	if ( interfaceCountdown < 2 ) {
		interfaceReset()
		Random, interfaceCountdown, 23, 68
	}
	Sleep NormalRand(33045,45814,int=1)
	tuneOrRepairHarp()

}


tuneOrRepairHarp() {
	tune := 1
	X1 := 0
	Y1 := 0
	X2 := 1980
	Y2 := 1080
	OutputVarX := 0
	OutputVarY := 0
	timingVariable := NormalRand(748,1048,1)
	stringInput := "T" . timingVariable . " P9-8" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(881,917,1), NormalRand(523,539,1), stringInput)
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *25 tune.png		
	If (ErrorLevel == 0) {
		Sleep NormalRand(301,423, int=1)
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		Sleep NormalRand(3345,7847,int=1)
	} else {
		tune := 0
	}
	If (tune == 0) {
		ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *25 play.png		
		If (ErrorLevel == 0) {
			Sleep NormalRand(201, 299, int=1)
			Send {LButton down}  ; Press down the up-arrow key.
			Sleep NormalRand(23,110,int=1)
			Send {LButton up}
			Sleep NormalRand(3345,7847,int=1)
		} else {
			
		}
	}
}

interfaceReset() {
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
		MsgBox not found
	}
}

XButton2::
  Suspend Permit
  Pause Toggle
  Return


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
