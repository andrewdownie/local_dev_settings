#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Inbox - Andrew_Downie@manulife.ca - Outlook

#E::
    IfWinExist, ahk_exe Explorer.EXE,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Windows\explorer.exe"
        WinWait, ahk_exe Explorer.EXE
        WinActivate
    }
return

#O::
    IfWinExist, ahk_exe OUTLOOK.EXE,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
        WinWait, ahk_exe OUTLOOK.EXE
        WinActivate
    }
return

#X::
    IfWinExist, ahk_exe EXCEL.EXE,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE"
        WinWait, ahk_exe EXCEL.EXE
        WinActivate
    }
return

#W::
    IfWinExist, ahk_exe WINWORD.EXE,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
        WinWait, ahk_exe WINWORD.EXE
        WinActivate
    }
return

#C::
    IfWinExist, ahk_exe Code.exe,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Users\downand\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        WinWait, ahk_exe Code.exe
        WinActivate
    }
return

#B::
    IfWinExist, ahk_exe brave.exe,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application\brave.exe"
        WinWait, ahk_exe brave.exe
        WinActivate
    }
return


#P::
    IfWinExist, ahk_exe Postman.exe,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Users\downand\AppData\Local\Postman\Postman.exe"
        WinWait, ahk_exe Postman.exe
        WinActivate
    }
return

#D::
    IfWinExist, ahk_exe draw.io.exe,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files\draw.io\draw.io.exe"
        WinWait, ahk_exe draw.io.exe
        WinActivate
    }
return

#T::
    IfWinExist, ahk_exe Teams.exe,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Users\downand\AppData\Local\Microsoft\Teams\Update.exe" --processStart "Teams.exe"
        WinWait, ahk_exe Teams.exe
        WinActivate
    }
return

#N::
    IfWinExist, ahk_exe ONENOTE.EXE,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.EXE"
        WinWait, ahk_exe ONENOTE.EXE
        WinActivate
    }
return

#G::
    IfWinExist, ahk_exe mintty.exe,,2
    {
        WinActivate
    }
    else
    {
        Run "C:\Program Files\Git\git-bash.exe"
        WinWait, ahk_exe mintty.exe
        WinActivate
    }
return