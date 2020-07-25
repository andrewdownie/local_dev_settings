#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Capture all LWin events that have other keys pressed, and return to allow regular LWin behavior
LWin & F1::
return

; If LWin was the only button pressed and released, move one virtual desktop to the left
LWin::
^#Left

; Capture all RWin events that have other keys pressed, and return to allow regular LWin behavior
RWin & F1::
return

; If RWin was the only button pressed and released, move one virtual desktop to the right
RWin::
^#Right
