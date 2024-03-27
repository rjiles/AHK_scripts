#Requires AutoHotkey v2.0
#SingleInstance Force

STD_OUTPUT_HANDLE := 0xFFFFFFF5     ; -10
ATTACH_PARENT_PROCESS := 0xFFFFFFFF ;  -1

WinActivate "RuneScape"


MouseMove 200, 100
try {
    FileAppend("Hello world!", "*")
} catch {
    
}


Sleep 10000
