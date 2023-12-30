#MaxThreadsPerHotkey 2
resetVariable := 0
antibanVariable := 0
Sleep NormalRand(1584,2514,int=1)
interfaceReset()
Loop{
	Random, resetVariable, 0, 1000
	if (resetVariable >= 980) {
		interfaceReset()
	}
	mineRocks()
	Random, antibanVariable, 0, 1000
	if (antibanVariable >= 750) {
		antibanCheckExp()
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

antibanCheckExp() {
	Sleep NormalRand(568,1548,1)
	var1 := "T"
	timingVariable := NormalRand(459,745,1)
	var2 := " P4-3"
	stringInput := "T" . timingVariable . var2
	Sleep NormalRand(158,265,int=1)
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(172,221,1), NormalRand(562,583,1), stringInput)
	var1 := "T"
	timingVariable := NormalRand(258,478,1)
	var2 := " P3-2"
	stringInput := "T" . timingVariable . var2
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(172,221,1), NormalRand(562,583,1), stringInput)
	var1 := "T"
	timingVariable := NormalRand(135,254,1)
	var2 := " P2-2"
	stringInput := "T" . timingVariable . var2
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(172,221,1), NormalRand(562,583,1), stringInput)
	Sleep NormalRand(5846,10540,1)
}

mineRocks() {
	var1 := "T"
	timingVariable := NormalRand(748,1048,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P3-2" 
	
	Sleep NormalRand(158,265,int=1)
	xOut := 0
	yOut := 0
	xStart := 0
	xStop := 1920
	yStart := 0
	yStop := 1080
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(940,995,1), NormalRand(572,628,1), stringInput)
	ImageSearch, xOut, yOut, xStart, yStart, xStop, yStop, *5 serenStone.png
	If (ErrorLevel == 0){
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(15,84,int=1)
		Send {LButton up}
	} else {
	
	}
	var1 := "T"
	timingVariable := NormalRand(245,487,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P3-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(940,995,1), NormalRand(572,628,1), stringInput)
	var1 := "T"
	timingVariable := NormalRand(145,254,1)
	var2 := " P2-1"
	stringInput := "T" . timingVariable . " P2-2" 
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(940,995,1), NormalRand(572,628,1), stringInput)
	Sleep NormalRand(10945,20145,int=1)
}
interfaceReset() {
	xStart := 0
	xStop := 1980
	yStart := 0
	yStop := 1080
	xOut := 0
	yOut := 0
	var1 := "T"
	timingVariable := NormalRand(758,1254,1)
	var2 := " P4-3"
	stringInput := var1 . timingVariable . var2
	
	;MouseMove_Ellipse( NormalRand(1595,1624,1), NormalRand(39,65,1))
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1595,1624,1), NormalRand(39,65,1), stringInput)
	Sleep NormalRand(145,248,int=1)
	Send {LButton down}  ; Press down the up-arrow key.
	Sleep NormalRand(23,110,int=1)
	Send {LButton up}
	var1 := "T"
	timingVariable := NormalRand(245,495,1)
	var2 := " P3-2"
	stringInput := var1 . timingVariable . var2
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1595,1624,1), NormalRand(39,65,1), stringInput)
	var1 := "T"
	timingVariable := NormalRand(102,201,1)
	var2 := " P2-2"
	stringInput := var1 . timingVariable . var2
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(1595,1624,1), NormalRand(39,65,1), stringInput)
	
	Sleep NormalRand(514,785,int=1)
	var1 := "T"
	timingVariable := NormalRand(865,1254,1)
	var2 := " P4-3"
	stringInput := var1 . timingVariable . var2
	MouseGetPos, MouseX, MouseY
	RandomBezier(MouseX, MouseY, NormalRand(937,998,1), NormalRand(581,623,1), stringInput)
	
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(15,25,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(5,15,int=1)
	Send {WheelDown down}  ; Press down the up-arrow key.
	Sleep NormalRand(12,18,int=1)
	Send {WheelDown up}
	Sleep NormalRand(122,200,int=1)
	Send {Up down}  ; Press down the up-arrow key.
	Sleep NormalRand(485,745,int=1)
	Send {Up up}
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
