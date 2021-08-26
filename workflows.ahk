
; This command minimizes everything but the active window.
!m::
WinGet, id, list,,, Program Manager
Loop, %id%
{
this_ID := id%A_Index%
WinGetTitle, active_title, A
WinGetTitle, title, ahk_id %this_ID%
If title = %active_title%
  Continue
WinMinimize, %title%
}
return

; if in putty and tmux (not checked) it deattaches the session and logs out
#IfWinActive ahk_exe putty.exe
!d:: 
Send {Ctrl down}b{Ctrl up}
Send d
Send logout
Send {Enter}
return


; if in chrome, moves current tab to a new window and removes the current tab
; see this https://superuser.com/questions/182720
#IfWinActive ahk_exe chrome.exe
!q::
Send {Ctrl down}l{Ctrl up}
Send {Ctrl down}c{Ctrl up}
Send {Ctrl down}w{Ctrl up}
Send {Ctrl down}n{Ctrl up}
Send {Ctrl down}v{Ctrl up}
Send {LWin down}{Left}{LWin up}
Send {Enter}
return

; if in chrome, moves current tab to a new window and removes the current tab
; see this https://superuser.com/questions/182720
#IfWinActive ahk_exe chrome.exe
!p::
Send {Ctrl down}l{Ctrl up}
Send {Ctrl down}c{Ctrl up}
Send {Ctrl down}w{Ctrl up}
Send {Ctrl down}n{Ctrl up}
Send {Ctrl down}v{Ctrl up}
Send {LWin down}{Right}{LWin up}
Send {Enter}
return


