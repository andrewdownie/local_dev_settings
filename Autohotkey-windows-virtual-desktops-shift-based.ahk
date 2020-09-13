#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Capture all LShift events that also have other keys pressed, and return to allow regular LShift combo behavior
LShift & F1::
return

; If LShift was the only button pressed and released, move one virtual desktop to the left
LShift::
^#Left

; Capture all RShift events that also have other keys pressed, and return to allow regular RShift combo behavior
RShift & F1::
return

; If RShift was the only button pressed and released, move one virtual desktop to the right
RShift::
^#Right
