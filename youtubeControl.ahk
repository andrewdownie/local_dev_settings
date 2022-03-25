SetTitleMatchMode, 2

; NOTE: it will only reliably work if you have one browser window open and youtube must be the open tab
BrowserName := "Brave"
; BrowserName := "Chrome"

F13::
	; Rewind Youtube video 5 seconds
	WinGet, ActiveID, ID, A
	WinActivate,%BrowserName%
	Controlsend,,{left},%BrowserName%
	WinActivate, ahk_id %ActiveID%
Return

F14::
	; Play / Pause youtube video
	WinGet, ActiveID, ID, A
	WinActivate,%BrowserName%
	Controlsend,,k,%BrowserName%
	WinActivate, ahk_id %ActiveID%
Return

F15::
	; Rewind Youtube video 5 seconds
	WinGet, ActiveID, ID, A
	WinActivate,%BrowserName%
	Controlsend,,{right},%BrowserName%
	WinActivate, ahk_id %ActiveID%
Return

