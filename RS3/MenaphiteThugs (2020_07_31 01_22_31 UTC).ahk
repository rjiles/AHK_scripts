toggle = 0
#MaxThreadsPerHotkey 2
Sleep NormalRand(1541, 2014,int=1)

Loop{
		Sleep NormalRand(54, 90,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(50,125,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {LButton up}
		
		Sleep NormalRand(40, 100 ,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {LButton up}
		
		Sleep NormalRand(68, 100 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {LButton up}
	
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
