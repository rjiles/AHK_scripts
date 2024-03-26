toggle = 0
#MaxThreadsPerHotkey 2

Loop{
		Sleep NormalRand(1184, 1684,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(2423,2845,int=1)
		
		Send {Numpad1 down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {Numpad1 up}
		
		Sleep NormalRand(2284, 2789 ,int=1)
		
        Send {Numpad1 down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {Numpad1 up}
		
		Sleep NormalRand(2089, 2251 ,int=1)
		
		Send {Space down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {Space up}
		
		Sleep NormalRand(50123, 53413 ,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(2484,2978,int=1)
		
		Send {Numpad1 down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {Numpad1 up}
		
		Sleep NormalRand(2486, 2684 ,int=1)
		
        Send {Numpad1 down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {Numpad1 up}
		
		Sleep NormalRand(2689, 2984 ,int=1)
		
		Send {Space down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {Space up}
		
		Sleep NormalRand(48456, 51484 ,int=1)
	
    }
return

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
