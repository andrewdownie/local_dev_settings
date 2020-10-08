#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

UnPinToTaskbar("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk")
UnPinToTaskbar("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk")
UnPinToTaskbar("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk")
UnPinToTaskbar("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business.lnk")
UnPinToTaskbar("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk")

UnPinToTaskbar(FilePath)
{
    SplitPath,FilePath,File,Dir
    For i in ComObjCreate("Shell.Application").Namespace(Dir).ParseName(File).Verbs()
        if (i.Name = "Unpin from Tas&kbar")
            return i.DoIt()
}
