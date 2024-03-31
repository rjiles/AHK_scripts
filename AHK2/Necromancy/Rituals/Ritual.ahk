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
    startRitual()
    Sleep 53000
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
    waitingLoot := true
    StartTime := A_TickCount
    while waitingLoot
        {
            EndTime := A_TickCount
            ElapsedSeconds := (EndTime - StartTime)/1000.0

            if ImageSearch(&OutputVarX, &OutputVarY, 1737, 603, 1911, 636, "*TransBlack *50 .\images\lootall.png")
            {
                log("Loot found!")
                waitingLoot := false
                Send "{Space down}{Space up}"
                Send "{Esc down}{Esc up}"
            } else if ImageSearch(&OutputVarX, &OutputVarY, 198, 941, 399, 1007, "*TransBlack *50 .\images\noloottrans.png")
            {
                log("Not enough loot for area loot.")
                waitingLoot := false
            } else if ElapsedSeconds >= 2
                {
                    waitingLoot := false
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

startRitual()
{
    Sleep 1000
    x := rand_gaussian(5, mean:=766)
    y := rand_gaussian(5, mean:=673)
    HumanMouseMove(x,y,Speed:=0.5)
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
                HumanMouseMove(OutputVarX+20,OutputVarY+5,Speed:=2)
                log("Starting ritual!")
                waiting := false
                Send "{LButton down}"
                Sleep rand_gaussian(5, mean:=25)
                Send "{LButton up}"
                Sleep rand_gaussian(200, mean:=2010)

            } else if ElapsedSeconds >= 5
                {
                    waitingLoot := false
                    log("Its been 5 seconds and we haven't found the 'start ritual' icon. Exiting.")
                }
        }
}

repairRitual()
{
    x := rand_gaussian(5, mean:=780)
    y := rand_gaussian(5, mean:=277)
    HumanMouseMove(x,y,Speed:=2)
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
                HumanMouseMove(OutputVarX+20,OutputVarY+5,Speed:=2)
                log("Repairing!")
                waiting := false
                Send "{LButton down}"
                Sleep rand_gaussian(5, mean:=25)
                Send "{LButton up}"
                Sleep rand_gaussian(200, mean:=2010)

            } else if ElapsedSeconds >= 5
                {
                    waitingLoot := false
                    log("Its been 5 seconds and we haven't the repair icon. Exiting.")
                }
        }
}

HumanMouseMove(x,y,Speed:=200)
{
    
	MouseGetPos &x0, &y0
	r := Random(-2., 2.)
	xd := x-x0, yd := y-y0
	z := Sqrt(xd*xd+yd*yd)/Speed
	xd := xd/z, yd := yd/z
	x2 := -yd*r/z, y2 := xd*r/z
	x3 := yd*r/2, y3 := -xd*r/2, z--
	Loop z
        {
            MouseMove x0+=xd+x3+=x2, y0+=yd+y3+=y2, 1
        }
		
	MouseMove x, y, 1
}
log(text)
{
    try {
        FileAppend(text, "*")
    } catch {
        
    }
}

; FUNCTION SECTION end
