#NoEnv ; This option is recommended for performance and compatibility with future AutoHotkey releases
; #Warn ; Enable warnings
SendMode Input ; Recommended for new scripts due to its superior speed and reliability 
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;keyhistory (mousehook and keybdhook)
;#InstallMouseHook
#installkeybdhook

;SetCapsLockState,Off
SetCapsLockState, AlwaysOff
;SetNumLockState,Off
;SetNumLockState,AlwaysOff
;SetScrollLockState,Off
;SetScrollLockState,AlwaysOff

; this includes my scripts, so no need to put every file into autostart
; this copy pastes the content of the files to this position, so the include order matters
#Include %A_ScriptDir%\dev.ahk
#Include %A_ScriptDir%\layer_action.ahk
#Include %A_ScriptDir%\home_row_mods.ahk

return