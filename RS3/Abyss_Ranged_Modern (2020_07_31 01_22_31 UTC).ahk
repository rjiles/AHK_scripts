toggle = 0
#MaxThreadsPerHotkey 2

Loop{
		Sleep NormalRand(16012, 18320,int=1)
		
        Send {7 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {7 up}
		
		Sleep NormalRand(17364,25014,int=1)
		
		Send {q down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {q up}
		
		Sleep NormalRand(18267, 23140 ,int=1)
		
        Send {w down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {w up}
		
		Sleep NormalRand(3014, 6012 ,int=1)
		
		Send {e down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {e up}
		
		Sleep NormalRand(10321, 15320 ,int=1)
		
		Send {r down}  ; Press down the up-arrow key.
		Sleep NormalRand(16,78,int=1)
		Send {r up}
		
		Sleep NormalRand(16410, 20120 ,int=1)
		
		Send {t down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {t up}
		
		Sleep NormalRand(20641, 25103 ,int=1)
		
		Send {u down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {u up}		
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
