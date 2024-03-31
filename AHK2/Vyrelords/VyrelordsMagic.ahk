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
    auraHandler()
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

auraHandler()
{
    waitingAura := true
    StartTime := A_TickCount

    while waitingAura
    {
        EndTime := A_TickCount
        ElapsedSeconds := (EndTime - StartTime)/1000.0

        if ImageSearch(&OutputVarX, &OutputVarY, 1777, 725, 1814, 760, "*TransBlack *50 .\images\emptyAura.png")
        {
            data := ImageSize(".\images\emptyAura.png")
            log(data[1] "," data[2])
            log("We don't have an active aura. Attempting to activate an aura.")
            MouseMove OutputVarX, OutputVarY
        } else if ElapsedSeconds >= 2
        {
            waitingAura := false
            log("Its been 2 seconds and we can't detect aura images. Exiting.")
        } else 
        {
            log("Our aura is active.")
            waitingAura := false
        }
    }
    
}
log(text)
{
    try {
        FileAppend(text, "*")
    } catch {
        
    }
}

; FUNCTION SECTION end
