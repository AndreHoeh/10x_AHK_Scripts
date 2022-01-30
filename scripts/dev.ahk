VKDD::DEL

; SWITCH SHIFLT AND ALT
;LAlt::LShift
;RAlt::RShift
;LShift::LAlt
;RWin::RAlt

; close an editor window in vs code
^4::
    Send {Ctrl down}{F4}{Ctrl up}
    return
