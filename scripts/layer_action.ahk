#NoEnv ; This option is recommended for performance and compatibility with future AutoHotkey releases
; #Warn ; Enable warnings
SendMode Input ; Recommended for new scripts due to its superior speed and reliability 
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;keyhistory (mousehook and keybdhook)
;#InstallMouseHook
#installkeybdhook


SetNumLockState,On
SetNumLockState,AlwaysOn
SetScrollLockState,Off
SetScrollLockState,AlwaysOff
return

; This part enables using capslock normaly if you tap it but it will not activate if you hold it down
CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return

#If, GetKeyState("CapsLock", "P") and GetKeyState("f", "P")

n::Send 1
return
m::Send 2
return
,::Send 3
return
j::Send 4
return
k::Send 5
return
l::Send 6
return
u::Send 7
return
i::Send 8
return
o::Send 9
return
Space::Send 0
return

#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

i::Up
return
j::Left
return
k::Down
return
l::Right
return 
u::Send {Home}
return
o::Send {End}
return 
h::Send {Ctrl down}{Left}{Ctrl up}
return
VKC0::Send {Ctrl down}{Right}{Ctrl up}
return
f:: ; Disable this key, because it is used to access another layer
return
Space::Send {Return}
return

