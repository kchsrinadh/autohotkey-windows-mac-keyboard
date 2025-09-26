#Requires AutoHotkey v2.0
;-----------------------------------------
; Mac keyboard to Windows Key Mappings (AHK v2)
;=========================================
; NOTES
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
#InstallKeybdHook
#SingleInstance Force
SetTitleMatchMode(2)
SendMode Input      ; ← This is correct WITHOUT quotes in v2
; --------------------------------------------------------------
; Mac-like screenshots in Windows (Win = CMD on Mac kb)
; --------------------------------------------------------------
; CMD/WIN + SHIFT + 3 -> entire screen
#+3::
{
    Send("#{PrintScreen}")
}
; CMD/WIN + SHIFT + 4 -> snip & sketch region
#+4::
{
    Send("#{s}")
}
; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------
RAlt & F7:: Send("{Media_Prev}")
RAlt & F8:: Send("{Media_Play_Pause}")
RAlt & F9:: Send("{Media_Next}")
F10::       Send("{Volume_Mute}")
F11::       Send("{Volume_Down}")
F12::       Send("{Volume_Up}")
; swap left command/windows key with left alt
; Uncomment if you want to swap:
; LWin::LAlt
; LAlt::LWin
; Remap Windows + Left/Right to Alt+Left/Right (browser back/forward)
; Use only if you swapped LWin<->LAlt above
; LWin & Left::  Send("!{Left}")
; LWin & Right:: Send("!{Right}")
; F13-15 standard mappings
F13:: Send("{PrintScreen}")
F14:: Send("{ScrollLock}")
F15:: Send("{Pause}")
; F16-19 custom app launchers
F16:: Run("http://twitter.com")
F17:: Run("http://tumblr.com")
F18:: Run("http://www.reddit.com")
F19:: Run("https://facebook.com")
; --------------------------------------------------------------
; macOS-like system shortcuts
; --------------------------------------------------------------
#s:: Send("^s")     ; Save
#a:: Send("^a")     ; Select all
#c:: Send("^c")     ; Copy
#v:: Send("^v")     ; Paste
#x:: Send("^x")     ; Cut
#o:: Send("^o")     ; Open
#f:: Send("^f")     ; Find
#z:: Send("^z")     ; Undo
#y:: Send("^y")     ; Redo
#t:: Send("^t")     ; New tab
#w:: Send("^w")     ; Close tab
#q:: Send("!{F4}")  ; Close window (Alt+F4)
; Remap Windows+Tab to Alt+Tab
LWin & Tab::
{
    Send("{Alt down}{Tab}{Alt up}")
}
; Minimize active window
#m::
{
    WinMinimize("A")
}
; --------------------------------------------------------------
; Special characters (mac-style)
; --------------------------------------------------------------
!l::  Send("@")      ; Alt+L -> @
!g::  Send("©")      ; Alt+G -> ©
!o::  Send("ø")      ; Alt+O -> ø
!5::  Send("[")      ; Alt+5 -> [
!6::  Send("]")      ; Alt+6 -> ]
!e::  Send("€")      ; Alt+E -> €
!-::  Send("–")      ; Alt+- -> en dash
!8::  Send("{")      ; Alt+8 -> {
!9::  Send("}")      ; Alt+9 -> }
!=::  Send("±")      ; Alt+= -> ± (changed from !+::)
!r::  Send("®")      ; Alt+R -> ®
!7::  Send("|")      ; Alt+7 -> pipe |
+!7:: Send("\")      ; Shift+Alt+7 -> backslash \
!w::  Send("∑")      ; Alt+W -> ∑
!n::  Send("~")      ; Alt+N -> ~
!3::  Send("#")      ; Alt+3 -> #
; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------
#HotIf WinActive("ahk_class Chrome_WidgetWin_1")
#!i:: Send("{F12}") ; DevTools
#!u:: Send("^u")    ; View source
#HotIf
