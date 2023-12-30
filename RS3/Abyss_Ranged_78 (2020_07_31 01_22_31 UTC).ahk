toggle = 0
#MaxThreadsPerHotkey 2

Loop{
		Sleep NormalRand(3128, 10829,int=1)
		
        Send {Numpad7 down}  ; Press down the up-arrow key.
		Sleep NormalRand(23,110,int=1)
		Send {Numpad7 up}
		
		Sleep NormalRand(4897,21030,int=1)
		
		Send {Numpad8 down}  ; Press down the up-arrow key.
		Sleep NormalRand(54,100,int=1)
		Send {Numpad8 up}
		
		Sleep NormalRand(7945, 18650 ,int=1)
		
        Send {Numpad7 down}  ; Press down the up-arrow key.
		Sleep NormalRand(46,120,int=1)
		Send {Numpad7 up}
		
		Sleep NormalRand(7945, 18650 ,int=1)
		
		Send {Numpad7 down}  ; Press down the up-arrow key.
		Sleep NormalRand(10,93,int=1)
		Send {Numpad7 up}
		
		Sleep NormalRand(6041, 14650 ,int=1)
		
		Send {Numpad8 down}  ; Press down the up-arrow key.
		Sleep NormalRand(16,78,int=1)
		Send {Numpad8 up}
		
		Sleep NormalRand(9456, 15123 ,int=1)
		
		Send {Numpad7 down}  ; Press down the up-arrow key.
		Sleep NormalRand(32,84,int=1)
		Send {Numpad7 up}
		
		Sleep NormalRand(8415, 15123 ,int=1)
		
		Send {Numpad8 down}  ; Press down the up-arrow key.
		Sleep NormalRand(50,200,int=1)
		Send {Numpad8 up}
		
		Sleep NormalRand(4032, 5013 ,int=1)
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
