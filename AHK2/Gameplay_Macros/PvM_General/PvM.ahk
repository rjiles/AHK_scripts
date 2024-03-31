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

; ultimate ability ring of vigour (1st slot in action bar)
#HotIf WinActive("RuneScape")
$1::
{
    Send "{alt down}{u down}{u up}{alt up}" ; equping ring of vigour
    Sleep 50
    Send "{1 down}{1 up}" ; equping ring of vigour
    Sleep 750
    Send "{alt down}{y down}{y up}{alt up}" ; equping ring of vigour
}

; HOTKEY SECTION end

; FUNCTION SECTION start

log(text)
{
    try {
        FileAppend(text, "*")
    } catch {
        
    }
}

; FUNCTION SECTION end
