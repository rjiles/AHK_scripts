toggle = 0
#MaxThreadsPerHotkey 2
repaired = 1
X1 = 0
Y1 = 0
X2 = 1980
Y2 = 1080
Pose = 0
PoseD = 0

Loop{

;This portion of the code checks the instructor

	
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 helm.PNG
	If (ErrorLevel == 0){
	Pose = 1
	;MsgBox Crane
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 chestplate.PNG
	If (ErrorLevel == 0){
	Pose = 2
	;MsgBox Bow
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 gauntlets.PNG
	If (ErrorLevel == 0){
	Pose = 3
	;MsgBox Lotus
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 boots.PNG
	If (ErrorLevel == 0){
	Pose = 4
	;MsgBox Ward
	}
	
;This portion of the code checks what you are doing

	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 helmDisplayed.PNG
	If (ErrorLevel == 0){
	PoseD = 1
	;MsgBox Here
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 chestplateDisplayed.PNG
	If (ErrorLevel == 0){
	PoseD = 2
	;MsgBox Here
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 gauntletsDisplayed.PNG
	If (ErrorLevel == 0){
	PoseD = 3
	;MsgBox Here
	}
	ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, *5 bootsDisplayed.PNG
	If (ErrorLevel == 0){
	PoseD = 4
	;MsgBox Here
	}
	

	
	Sleep NormalRand(248,458,int=1)
	
	
	If (PoseD != Pose){
		If (Pose == 1 && PoseD != Pose){
			Send {Numpad1 down}  ; Press down the up-arrow key.
			Sleep NormalRand(23,110,int=1)
			Send {Numpad1 up}
		} Else If (Pose == 2 && PoseD != Pose){
			Send {Numpad2 down}  ; Press down the up-arrow key.
			Sleep NormalRand(23,110,int=1)
			Send {Numpad2 up}
		} Else If (Pose == 3 && PoseD != Pose){
			Send {Numpad3 down}  ; Press down the up-arrow key.
			Sleep NormalRand(23,110,int=1)
			Send {Numpad3 up}
		} Else If (Pose == 4 && PoseD != Pose){
			Send {Numpad4 down}  ; Press down the up-arrow key.
			Sleep NormalRand(23,110,int=1)
			Send {Numpad4 up}
		}
		Sleep NormalRand(513,764,int=1)
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
