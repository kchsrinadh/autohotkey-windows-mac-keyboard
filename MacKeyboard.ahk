; Block LWin + L (Left Command + L)
#HotIf GetKeyState("LWin", "P")
l::return
#HotIf

; Allow RWin + L to lock (do nothing = pass through)
; No remap needed for RWin

; Remap LWin (Left Command) to Ctrl only
LWin::Ctrl
