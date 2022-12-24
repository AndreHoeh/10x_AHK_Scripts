; ###################################
; ######### Capslock layer ##########
; ###################################

; This script adds 2 new layer.
; one is accessed by holding capslock
; the other one is accessed by holding capslock and "a"

; This part enables using capslock normaly if you tap it but it will not activate if you hold it down
;CapsLock::
;	KeyWait, CapsLock
;	If (A_PriorKey="CapsLock")
;		; Two ways to toggle CapsLock to its opposite state.
;		;SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
;		SetCapsLockState, % !GetKeyState("CapsLock","T") ; requires [v1.1.30+]
;Return

; if this #If statement is true, only this part of the script will be active
#If, GetKeyState("CapsLock", "P") and GetKeyState("a", "P")

    m::Send 1
    return
    ,::Send 2
    return
    .::Send 3
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

; if this #If statement is true, only this part of the script will be active
#If GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

    1::Send {Home}
    return
    9::open_in_dcode()
    return
    =::Send {End}
    return
    h::Left
    return
    j::Down
    return
    k::Up
    return
    l::Right
    return
    u::Send {Home}
    return
    i::Send {End}
    return
    m::Send {Ctrl down}{Left}{Ctrl up}
    return
    ,::Send {Ctrl down}{Right}{Ctrl up} ;VKC0=ö vkbd=-_
    return
    a:: ; disable this key because it is used to access another layer
    return
    Space::Send {Return}
    return
    BackSpace::Send {DEL}
    return

; if this If statement is true, everything "beneath" it will be the active part of the script
#If !GetKeyState("CapsLock", "P")

; Keep in mind: this is the end of this file, but maybe it was included somwhere else
