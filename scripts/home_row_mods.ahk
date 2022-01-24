; ###################################
; ######### HOME ROW MODS ###########
; ###################################
f up::
    Send {LShift up}
    If (A_PriorKey="f")
        send f
return
f:: 
    Send {LShift down}
return
d up::
    Send {LCtrl up}
    If (A_PriorKey="d")
        send d
return
d:: 
    Send {LCtrl down}
return
j up::
    Send {RShift up}
    If (A_PriorKey="j")
        send j
return
j:: 
    Send {RShift down}
return
k up::
    Send {RCtrl up}
    If (A_PriorKey="k")
        send k
return
k:: 
    Send {RCtrl down}
return