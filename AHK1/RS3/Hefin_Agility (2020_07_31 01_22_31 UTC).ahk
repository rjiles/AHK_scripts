toggle = 0
#MaxThreadsPerHotkey 2

Loop{
		Sleep NormalRand(9512, 12564,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(10489,13694,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {LButton up}
		
		Sleep NormalRand(11684, 14894 ,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {LButton up}
		
		Sleep NormalRand(10123, 12097 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {LButton up}
		
		Sleep NormalRand(11452, 14784 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {LButton up}
		
		Sleep NormalRand(10654, 12879 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(50,200,int=1)
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
