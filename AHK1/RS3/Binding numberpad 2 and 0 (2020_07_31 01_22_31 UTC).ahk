CBallsNotification:
SoundPlay, cballs_done.mp3
return

Numpad8::
SetTimer, CBallsNotification, -15000
return

;Numpad6::MouseMove 735,  0, 1, R
;Numpad4::MouseMove -735,  0, 1, R
  
Numpad6::MouseMove 400,  0, 1, R
Numpad4::MouseMove -400,  0, 1, R

Numpad5::LButton
Numpad0::Space

