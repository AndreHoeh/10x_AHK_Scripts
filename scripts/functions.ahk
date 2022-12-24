#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; open_in_code() {
;     ; store current clipboard
;     SaveClipboard:=ClipboardAll
;     ; copy filename to Clipboard
;     Clipboard=
;     Send {F2}
;     Sleep 100
;     Send ^c
;     Sleep 100
;     if (Clipboard = "")
;     {
;         MsgBox, You forgot to select something
;         return
;     }
;     ClipWait,0.2
;     Sleep 100
;     Send {Esc}
;     Sleep 100
;     f_name := Clipboard
;     ; open vs code from file exlorer
;     Send ^l
;     Sleep 100
;     Send C:\Users\ahoe\AppData\Local\Programs\Microsoft VS Code\Code.exe .\%f_name%\
;     Sleep 100
;     Send {Enter}
;     Clipboard:=SaveClipboard
; }

; only works in file explorer
open_in_dcode() {
    ; store current clipboard
    SaveClipboard:=ClipboardAll
    ; copy filename to clipboard
    Clipboard=
    Send {F2}
    Sleep 111
    Send ^c
    ClipWait,0.2
    f_name := Clipboard
    Send {Esc}
    if (f_name = "")
    {
        MsgBox, You forgot to select something
        return
    }
    ; copy path to clipboard
    Clipboard=
    Send !d
    Sleep 222
    Send ^c
    ClipWait,0.2
    f_path := Clipboard
    ; open vs code from Win+R
    Send #r
    Sleep 222
    Send C:\tools\vscode\VSCode-win32-x64-1.74.0\Code.exe %f_path%\%f_name%
    Send {Enter}
    Clipboard:=SaveClipboard
}
