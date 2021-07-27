

^j::
Send, My First Script
return

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

#IfWinActive ahk_exe putty.exe
!d:: ; deataches from tmux window and logs out
Send {Ctrl down}b{Ctrl up}
Send d
Send logout
Send {Enter}
return

