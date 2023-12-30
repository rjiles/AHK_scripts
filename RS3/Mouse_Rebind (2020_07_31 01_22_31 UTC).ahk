toggle = 0
#MaxThreadsPerHotkey 2

#InstallMouseHook

LButton:: ; The asterisk makes the remapping more complete on XP/2k/NT.

MouseClick, right,,,,, D
KeyWait, LButton
MouseClick, right,,,,, U
KeyWait, LButton ,D
MouseClick, left,,,,, D
KeyWait, LButton
MouseClick, left,,,,, U


return



;NumpadAdd
Numpad0::

  Suspend Toggle
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
