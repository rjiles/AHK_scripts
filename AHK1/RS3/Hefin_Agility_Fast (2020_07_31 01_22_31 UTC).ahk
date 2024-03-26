toggle = 0
#MaxThreadsPerHotkey 2

Loop{
		Sleep NormalRand(332, 634,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(235,549,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {LButton up}
		
		Sleep NormalRand(395, 450 ,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {LButton up}
		
		Sleep NormalRand(154, 652 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {LButton up}
		
		Sleep NormalRand(498, 643 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {LButton up}
		
		Sleep NormalRand(432, 723 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(50,200,int=1)
		Send {LButton up}
		
		
		
		Sleep NormalRand(584, 634,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(235,432,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {LButton up}
		
		Sleep NormalRand(764, 792 ,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {LButton up}
		
		Sleep NormalRand(354, 543 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {LButton up}
		
		Sleep NormalRand(369, 592 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {LButton up}
		
		Sleep NormalRand(783, 943 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(50,200,int=1)
		Send {LButton up}
		
		
		
		
		Sleep NormalRand(1543, 2432,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {LButton up}
		
		Sleep NormalRand(439,543,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {LButton up}
		
		Sleep NormalRand(532, 673 ,int=1)
		
        Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {LButton up}
		
		Sleep NormalRand(438, 743 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {LButton up}
		
		Sleep NormalRand(465, 592 ,int=1)
		
		Send {LButton down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {LButton up}
		
		Sleep NormalRand(643, 764 ,int=1)
		
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
