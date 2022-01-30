; ###################################
; ######### ONE SHOT SHIFT ##########
; ###################################


CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		one_shot_shift := ! %one_shot_shift%
    Return