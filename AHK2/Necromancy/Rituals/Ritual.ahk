#Requires AutoHotkey v2.0
#SingleInstance Force

STD_OUTPUT_HANDLE := 0xFFFFFFF5     ; -10
ATTACH_PARENT_PROCESS := 0xFFFFFFFF ;  -1

WinActivate "RuneScape"


MouseMove 200, 100
try {
    FileAppend("Starting PvM macro script! Have fun! :)", "*")
} catch {
    
}

Loop
{
    WindowChecker()
    ; emergencyQuit()   
    ; RandomBezier( 0, 0, 500, 500, O:="T600 P3-6" )
    ; Sleep 2500
    startRitual()
    Sleep 72000
    repairRitual()
}


; HOTKEY SECTION begin

#SuspendExempt
Pause::
{
    Pause -1
    Suspend
    Return
}
#SuspendExempt False


; fast area loot
#HotIf WinActive("RuneScape")
l::
{
    Send "{; down}{; up}"
    waiting := true
    StartTime := A_TickCount
    while waiting
        {
            EndTime := A_TickCount
            ElapsedSeconds := (EndTime - StartTime)/1000.0

            if ImageSearch(&OutputVarX, &OutputVarY, 1737, 603, 1911, 636, "*TransBlack *50 .\images\lootall.png")
            {
                log("Loot found!")
                waiting := false
                Send "{Space down}{Space up}"
                Send "{Esc down}{Esc up}"
            } else if ImageSearch(&OutputVarX, &OutputVarY, 198, 941, 399, 1007, "*TransBlack *50 .\images\noloottrans.png")
            {
                log("Not enough loot for area loot.")
                waiting := false
            } else if ElapsedSeconds >= 2
                {
                    waiting := false
                    log("Its been 2 seconds and we haven't detected loot or no loot popups. Exiting.")
                }
        }
    Return
}

; HOTKEY SECTION end

; FUNCTION SECTION start
ImageSize(file) {
	imgGui := Gui()
	img := imgGui.Add("Picture",, file)
	imgGui.Show("Hide")
	ControlGetPos(,, &w, &h, img.hwnd)
	imgGui.Destroy()
	return [w, h]
}

rand_gaussian(standard_deviation, mean:=0)
{
	max_random := 10000000
	r1 := Random(1, max_random) ; 1 to prevent inf error
	r2 := Random(1, max_random)
	Return mean + standard_deviation * Sqrt(-2 * Ln(r1 / max_random)) * Cos(2 * 3.14159265 * (r2 / max_random))
}

startRitual(retries:=0)
{
    WindowChecker()
    if retries == 6
        {
            log("made 6 attempts at startRitual, quiting rs3 and killing script")
            emergencyQuit()
        }
    Sleep 1000
    x := rand_gaussian(5, mean:=766)
    y := rand_gaussian(5, mean:=673)
    ; HumanMouseMove(x,y,Speed:=0.5)
    MouseGetPos &MouseX, &MouseY
    timingVariable := rand_gaussian(124, mean:=524)
	stringInput := "T" . timingVariable . " P5-9"
    RandomBezier( 0, 0, x, y, O:=stringInput )
    Send "{RButton down}"
    Sleep rand_gaussian(5, mean:=20)
    Send "{RButton up}"
    Sleep rand_gaussian(57, mean:=497)
    waiting := true
    StartTime := A_TickCount
    while waiting
        {
            EndTime := A_TickCount
            ElapsedSeconds := (EndTime - StartTime)/1000.0

            if ImageSearch(&OutputVarX, &OutputVarY, 0, 0, 985, 825, "*TransBlack *50 .\images\startRitual.png")
            {
                Sleep rand_gaussian(57, mean:=497)
                MouseGetPos &MouseX, &MouseY
                ; HumanMouseMove(OutputVarX+20,OutputVarY+5,Speed:=2)
                timingVariable := rand_gaussian(124, mean:=524)
	            stringInput := "T" . timingVariable . " P1-2"
                RandomBezier( MouseX, MouseY, OutputVarX+20, OutputVarY+5, O:=stringInput )
                log("Starting ritual!")
                waiting := false
                Send "{LButton down}"
                Sleep rand_gaussian(5, mean:=25)
                Send "{LButton up}"
                Sleep rand_gaussian(200, mean:=2010)

            } else if ElapsedSeconds >= 5
                {
                    waiting := false
                    log("Its been 5 seconds and we haven't found the 'start ritual' icon. Exiting.")
                    retries++
                    startRitual(retries)
                }
        }
}

repairRitual(retries:=0)
{
    WindowChecker()
    if retries == 6
        {
            log("made 6 attempts at repairRitual, quiting rs3 and killing script")
            emergencyQuit()
        }
    x := rand_gaussian(5, mean:=780)
    y := rand_gaussian(5, mean:=277)
    ; HumanMouseMove(x,y,Speed:=2)
    MouseGetPos &MouseX, &MouseY
    timingVariable := rand_gaussian(124, mean:=524)
	stringInput := "T" . timingVariable . " P5-9"
    RandomBezier( 0, 0, x, y, O:=stringInput )
    Send "{RButton down}"
    Sleep rand_gaussian(5, mean:=20)
    Send "{RButton up}"
    waiting := true
    StartTime := A_TickCount
    while waiting
        {
            EndTime := A_TickCount
            ElapsedSeconds := (EndTime - StartTime)/1000.0

            if ImageSearch(&OutputVarX, &OutputVarY, 512, 181, 958, 433, "*TransBlack *50 .\images\repairAll.png")
            {
                Sleep rand_gaussian(57, mean:=497)
                ; HumanMouseMove(OutputVarX+20,OutputVarY+5,Speed:=2)
                MouseGetPos &MouseX, &MouseY
                timingVariable := rand_gaussian(101, mean:=454)
	            stringInput := "T" . timingVariable . " P1-2"
                RandomBezier( MouseX, MouseY, OutputVarX+20, OutputVarY+5, O:=stringInput )
                log("Repairing!")
                waiting := false
                Send "{LButton down}"
                Sleep rand_gaussian(5, mean:=25)
                Send "{LButton up}"
                Sleep rand_gaussian(200, mean:=2010)

            } else if ElapsedSeconds >= 5
                {
                    waiting := false
                    log("Its been 5 seconds and we haven't the repair icon. Exiting loop and retrying.")
                    retries++
                    repairRitual(retries)
                }
        }
}

RandomBezier(XO, YO, XD, YD, O := "" ) {
    Time := RegExMatch(O, "i)T(\d+)", &M) && (M[1] > 0) ? M[1] : 200
    RO := InStr(O, "RO")
    RD := InStr(O, "RD")
    If !RegExMatch(O, "i)P(\d+)(-(\d+))?", &M)
       N := 2
    Else {
       N := (M[1] < 2) ? 2 : (M[1] > 19) ? 19 : M[1]
       If (M.Count = 3) {
          M := (M[3] < 2) ? 2 : (M[3] > 19) ? 19 : M[3]
          N := Random(N, M)
       }
    }
    OfT := RegExMatch(O, "i)OT(-?\d+)", &M) ? M[1] : 100
    OfB := RegExMatch(O, "i)OB(-?\d+)", &M) ? M[1] : 100
    OfL := RegExMatch(O, "i)OL(-?\d+)", &M) ? M[1] : 100
    OfR := RegExMatch(O, "i)OR(-?\d+)", &M) ? M[1] : 100
    MouseGetPos(&XM, &YM)
    If (RO) {
       XO += XM
       YO += YM
    }
    If (RD) {
       XD += XM
       YD += YM
    }
    If (XO < XD) {
       sX := XO - OfL
       bX := XD + OfR
    }
    Else {
       sX := XD - OfL
       bX := XO + OfR
    }
    If (YO < YD) {
       sY := YO - OfT
       bY := YD + OfB
    }
    Else {
       sY := YD - OfT
       bY := YO + OfB
    }
    MX := Map()
    MX[0] := XO
    MY := Map()
    MY[0] := YO
    Loop (--N) - 1 {
       MX[A_Index] := Random(sX, bX)
       MY[A_Index] := Random(sY, bY)
    }
    MX[N] := XD
    MY[N] := YD
    I := A_TickCount
    E := I + Time
    While (A_TickCount < E) {
       T := (A_TickCount - I) / Time
       U := 1 - T
       X := Y := 0
       Loop (N + 1) {
          F1 := F2 := F3 := 1
          Idx := A_Index - 1
          Loop Idx {
             F2 *= A_Index
             F1 *= A_Index
          }
          D := N - Idx
          Loop D {
             F3 *= A_Index
             F1 *= A_Index + Idx
          }
          M := (F1 / (F2 * F3)) * ((T + 0.000001) ** Idx)*((U - 0.000001) ** D)
          X += M * MX[Idx]
          Y += M * MY[Idx]
       }
       MouseMove(X, Y, 0)
       Sleep(1)
     }
    MouseMove(MX[N], MY[N], 0)
    Return (N + 1)
 }  


WindowChecker()
{
    if not WinExist("A") == "RuneScape"
        {
            WinActivate "RuneScape"
        }
}

emergencyQuit()
{
    Send "{Esc down}"
    Sleep rand_gaussian(5, mean:=25)
    Send "{Esc up}"
    Sleep rand_gaussian(50, mean:=200)
    waiting := true
    StartTime := A_TickCount
    while waiting
        {
            EndTime := A_TickCount
            ElapsedSeconds := (EndTime - StartTime)/1000.0

            if ImageSearch(&OutputVarX, &OutputVarY, 932, 600, 1220, 670, "*TransBlack *50 .\images\logout.png")
            {
                Sleep rand_gaussian(57, mean:=497)
                ; HumanMouseMove(OutputVarX+20,OutputVarY+5,Speed:=2)
                MouseGetPos &MouseX, &MouseY
                timingVariable := rand_gaussian(254, mean:=656)
	            stringInput := "T" . timingVariable . " P6-9"
                RandomBezier( MouseX, MouseY, OutputVarX+20, OutputVarY+5, O:=stringInput )
                log("Repairing!")
                waiting := false
                Send "{LButton down}"
                Sleep rand_gaussian(5, mean:=25)
                Send "{LButton up}"
                Sleep rand_gaussian(200, mean:=2010)

            } else if ElapsedSeconds >= 5
                {
                    waiting := false
                    log("Its been 5 seconds and we haven't the logout icon. Exiting.")
                }
        }
    ; Sleep rand_gaussian(2, mean:=200)
    log("Closing RuneScape.")
    WinClose "RuneScape"
    ExitApp
    Return
}
 
log(text)
{
    try {
        FileAppend(text, "*")
    } catch {
        
    }
}

; FUNCTION SECTION end
