#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, ahk_exe winword.exe
^+t::
#IfWinActive, ahk_exe powerpnt.exe
^+t::
send, !h
send, fs
send, 20
send, {enter}
sleep, 500
send, !h
send, ff
send, Arial Rounded MT Bold
send, {enter}
send, ^u
send, ^e
sleep, 500
send, !h
send, 7
send, c
Return

#IfWinActive, ahk_exe winword.exe
^+y::
#IfWinActive, ahk_exe powerpnt.exe
^+y::
send, !h
send, ff
send, Arial Rounded MT Bold
send, {enter}
send, !h
send, fs
send, 10
send, {enter}
send, ^l
send, ^u
Return

#IfWinActive, ahk_exe winword.exe
^+b::
#IfWinActive, ahk_exe powerpnt.exe
^+b::
send, !h
send, u
send, {right}
send, {enter}
Return

#IfWinActive, ahk_exe winword.exe
+^!x::
#IfWinActive, ahk_exe powerpnt.exe
+^!x::
sleep, 1000
send, !n
sleep,100
send, x
Sleep, 100
if WinActive("ahk_exe winword.exe"){
	send, d
}
Return

#IfWinActive, ahk_exe winword.exe
!l::
#IfWinActive, ahk_exe powerpnt.exe
!l::
send, !n
send, sh
send, {down}
send, {down}
send, {Enter}
return

#IfWinActive, ahk_exe winword.exe
!x::
#IfWinActive, ahk_exe powerpnt.exe
!x::
send, +{f10}
send, x
return

#IfWinActive, ahk_exe winword.exe
~+9::
#IfWinActive, ahk_exe powerpnt.exe
~+9::
send, +0
send, {left}
Hotkey, IfWinActive, ahk_exe winword.exe
Hotkey, ~BACKSPACE, deletebrak
Hotkey, IfWinActive, ahk_exe powerpnt.exe
Hotkey, ~BACKSPACE, deletebrak
Hotkey, IfWinActive, ahk_exe winword.exe
Hotkey, +0, next
Hotkey, IfWinActive, ahk_exe powerpnt.exe
Hotkey, +0, next
Input, var, L1 V
Hotkey, IfWinActive, ahk_exe winword.exe
Hotkey, ~BACKSPACE, none
Hotkey, IfWinActive, ahk_exe powerpnt.exe
Hotkey, ~BACKSPACE, none
return

deletebrak:
send, {delete}
Hotkey, IfWinActive, ahk_exe winword.exe
Hotkey, ~BACKSPACE, none
Hotkey, IfWinActive, ahk_exe powerpnt.exe
Hotkey, ~BACKSPACE, none
return

next:
send, {right}
Hotkey, IfWinActive, ahk_exe winword.exe
Hotkey, ~+0, none
Hotkey, IfWinActive, ahk_exe powerpnt.exe
Hotkey, ~+0, none
return

none:
sleep, 1
return

#IfWinActive, ahk_exe winword.exe
+^g::
#IfWinActive, ahk_exe powerpnt.exe
+^g::
send, !h
send, ff
send, Times New Roman
send, {enter}
Send, !h
Send, 7u
sleep, 50
send, {left}
send, +{left}
send, +^c
send, {end}
send, +^v
return


#IfWinActive, ahk_exe winword.exe
!b::
#IfWinActive, ahk_exe powerpnt.exe
!b::
send, !h
send, fc
send, a
sleep, 50
send, !h
send, fc
Send, m
send, {left}
Send, {tab}{tab}{tab}{tab}{tab}{tab}{tab}
sleep, 100
send, #
send, 0000FF
send, {tab}
send, {enter}
return

#IfWinActive, ahk_exe winword.exe
~+2::
send, "
send, {left}
return

#IfWinActive, ahk_exe winword.exe
~[::
send, ]
send, {left}
return

#IfWinActive, ahk_exe winword.exe
~+[::
send, {}}
send, {left}
return

#IfWinActive, ahk_exe winword.exe
~<::
send, >
send, {left}
return