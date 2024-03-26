toggle = 0
#MaxThreadsPerHotkey 2
Number := 0000
sleep 5000
loop 99999 {
	c := 100000 - a_index - 1000
	sleep 50
	while (strlen(c) < 5)
		c := "0" c
	send % c
	sleep 5000
	MouseMove,290,297
	sleep 100
	Click
	sleep 100
	loop 10 {
		send {enter}
		sleep 50
	}
	sleep 50
	MouseMove,237,200
	sleep 50
	Click
	sleep 50
	loop 5 {
		send {backspace}
		sleep 50
	}
}
sleep 30
send {backspace}
sleep 30
return

XButton2::
  Suspend Permit
  Pause Toggle
  Return
