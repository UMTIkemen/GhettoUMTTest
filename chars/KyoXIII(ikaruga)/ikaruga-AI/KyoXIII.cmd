;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI�N���p |--------------------------------------------------------------
[Command]
name = "AI1"
command = F, B, B, F, F, B, B, F, F, B, B, F, F, B
time = 1

[Command]
name = "AI2"
command = U, D, D, U, U, D, D, U, U, D, D, U, U, D
time = 1

[Command]
name = "AI3"
command = D, U, U, D, D, U, U, D, D, U, U, D, D, U
time = 1

[Command]
name = "AI4"
command = B, F, F, B, B, F, F, B, B, F, F, B, B, F
time = 1

[Command]
name = "AI5"
command = a, x, x, a, a, x, x, a, a, x, x, a, a, x
time = 1

[Command]
name = "AI6"
command = b, y, y, b, b, y, y, b, b, y, y, b, b, y
time = 1

[Command]
name = "AI7"
command = c, z, z, c, c, z, z, c, c, z, z, c, c, z
time = 1

[Command]
name = "AI8"
command = x, a, a, x, x, a, a, x, x, a, a, x, x, a
time = 1

[Command]
name = "AI9"
command = y, b, b, y, y, b, b, y, y, b, b, y, y, b
time = 1

[Command]
name = "AI10"
command = z, c, c, z, z, c, c, z, z, c, c, z, z, c
time = 1

[Command]
name = "AI11"
command = F, B, F, B, F, B, F, B, F, B, F, B, F, B
time = 1

[Command]
name = "AI12"
command = U, D, U, D, U, D, U, D, U, D, U, D, U, D
time = 1

[Command]
name = "AI13"
command = D, U, D, U, D, U, D, U, D, U, D, U, D, U
time = 1

[Command]
name = "AI14"
command = B, F, B, F, B, F, B, F, B, F, B, F, B, F
time = 1

[Command]
name = "AI15"
command = a, x, a, x, a, x, a, x, a, x, a, x, a, x
time = 1

[Command]
name = "AI16"
command = b, y, b, y, b, y, b, y, b, y, b, y, b, y
time = 1

[Command]
name = "AI17"
command = c, z, c, z, c, z, c, z, c, z, c, z, c, z
time = 1

[Command]
name = "AI18"
command = x, a, x, a, x, a, x, a, x, a, x, a, x, a
time = 1

[Command]
name = "AI19"
command = y, b, y, b, y, b, y, b, y, b, y, b, y, b
time = 1

[Command]
name = "AI20"
command = z, c, z, c, z, c, z, c, z, c, z, c, z, c
time = 1

[Command]
name = "AI21"
command = F, B, F, B, F, B, F, B, F, B
time = 1

[Command]
name = "AI22"
command = U, D, U, D, U, D, U, D, U, D
time = 1

[Command]
name = "AI23"
command = D, U, D, U, D, U, D, U, D, U
time = 1

[Command]
name = "AI24"
command = B, F, B, F, B, F, B, F, B, F
time = 1

[Command]
name = "AI25"
command = D, U, B, F, D, U, B, F, D
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "���S��E�뎮�E�V�p�_"
command = ~D, DF, F, D, DF, F, x+y
time = 25


[Command]
name = "EX���S�����E��֓�"
command = ~D, DB, B, DB, D, DF, F, x+y
time = 30

[Command]
name = "���S�����E��֓�"
command = ~D, DB, B, DB, D, DF, F, y
time = 30

[Command]
name = "���S�����E��֓�"
command = ~D, DB, B, DB, D, DF, F, x
time = 30



;-| Special Motions |------------------------------------------------------
[Command]
name = "EX�S�뎮�E�O��"
command = ~B, D, DB, a+b

[Command]
name = "�S�뎮�E�O��"
command = ~B, D, DB, b

[Command]
name = "�S�뎮�E�O��"
command = ~B, D, DB, a


[Command]
name = "EX���E�܎��E��"
command = ~D, DF, F, a+b

[Command]
name = "���E�܎��E��"
command = ~D, DF, F, b

[Command]
name = "���E�܎��E��"
command = ~D, DF, F, a


[Command]
name = "EX��S�E�󎮁E�Ռ� �z"
command = ~F, DF, D, DB, B, a+b
time = 20

[Command]
name = "��S�E�󎮁E�Ռ� �z"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "��S�E�󎮁E�Ռ� �z"
command = ~F, DF, D, DB, B, a
time = 20


[Command]
name = "EX�S���E�S�Ă�"
command = ~F, D, DF, x+y

[Command]
name = "�S���E�S�Ă�"
command = ~F, D, DF, y

[Command]
name = "�S���E�S�Ă�"
command = ~F, D, DF, x


[Command]
name = "EX�S�����E�ŕ���"
command = ~D, DF, F, x+y

[Command]
name = "�S�����E�ŕ���"
command = ~D, DF, F, y

[Command]
name = "�S�����E�ŕ���"
command = ~D, DF, F, x


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "�ӂ���΂�"
command = c
time = 1

[Command]
name = "�ӂ���΂�"
command = y+b
time = 1


[Command]
name = "���"
command = x+a
time = 1

[Command]
name = "���"
command = z
time = 1


[Command]
name = "HD���[�h"
command = y+a
time = 1


[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "�f�o�b�O�p�R�}���h"
command = ~D, D, s


;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| AI Helper |------------------------------------------------------------
[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAX�L�����Z�����S��E�뎮�E�V�p�_
[State -1, MURAKUMO]
type = ChangeState
value = 2500
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "���S��E�뎮�E�V�p�_") || (var(38) = 70 && var(40) > 0)
triggerall = (power >= 2000 && var(21) > 0)
trigger1 = stateno = 2005 && animelem = 12,>=0
trigger2 = stateno = 2055 && animelem = 12,>=0

;---------------------------------------------------------------------------
;���S��E�뎮�E�V�p�_
[State -1, MURAKUMO]
type = ChangeState
value = 2500
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "���S��E�뎮�E�V�p�_") || (var(38) = 70 && var(40) > 0)
triggerall = statetype != A
triggerall = (power >= 3000 && var(20) >= 1000) || (power >= 2000 && var(21) > 0)
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;HD�L�����Z��
trigger12= stateno = 1000
trigger12= var(21) > 0
trigger13= stateno = 1050
trigger13= var(21) > 0
trigger14= stateno = 1100 && movecontact
trigger14= var(21) > 0
trigger15= stateno = 1150 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1010 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1205 && movecontact
trigger17= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger18= stateno = [200,499]
trigger18= movecontact
trigger18= var(21) > 0




;---------------------------------------------------------------------------
;EX�󒆗��S�����E��֓�
[State negathibu anngisshu]
type = ChangeState
value = 2150
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX���S�����E��֓�") || (var(38) = 65 && var(40) > 0)
triggerall = statetype = A
triggerall = power >= 2000
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl

;�X�[�p�[�L�����Z��
trigger3 = stateno = 1100 && movehit
trigger3 = var(20) >= 500
trigger3 = var(21) = 0
trigger4 = stateno = 1150 && movehit
trigger4 = var(20) >= 500
trigger4 = var(21) = 0
trigger5 = stateno = 1400 && movehit
trigger5 = var(20) >= 500
trigger5 = var(21) = 0
trigger6 = stateno = 1450 && movehit
trigger6 = var(20) >= 500
trigger6 = var(21) = 0

;HD�L�����Z��
trigger7 = stateno = 1100 && movecontact
trigger7 = var(21) > 0
trigger8 = stateno = 1150 && movecontact
trigger8 = var(21) > 0
trigger9 = stateno = 1400 && movecontact
trigger9 = var(21) > 0
trigger10= stateno = 1450 && movecontact
trigger10= var(21) > 0


;---------------------------------------------------------------------------
;�󒆗��S�����E��֓�
[State -1, OROCHI Air]
type = ChangeState
value = 2100
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "���S�����E��֓�") || (var(38) = 60 && var(40) > 0)
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl

;�X�[�p�[�L�����Z��
trigger3 = stateno = 1100 && movehit
trigger3 = var(20) >= 500
trigger3 = var(21) = 0
trigger4 = stateno = 1150 && movehit
trigger4 = var(20) >= 500
trigger4 = var(21) = 0
trigger5 = stateno = 1400 && movehit
trigger5 = var(20) >= 500
trigger5 = var(21) = 0
trigger6 = stateno = 1450 && movehit
trigger6 = var(20) >= 500
trigger6 = var(21) = 0

;HD�L�����Z��
trigger7 = stateno = 1100 && movecontact
trigger7 = var(21) > 0
trigger8 = stateno = 1150 && movecontact
trigger8 = var(21) > 0
trigger9 = stateno = 1400 && movecontact
trigger9 = var(21) > 0
trigger10= stateno = 1450 && movecontact
trigger10= var(21) > 0


;---------------------------------------------------------------------------
;EX���S�����E��֓�
[State -1, EX OROCHI]
type = ChangeState
value = 2050
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX���S�����E��֓�") || (var(38) = 65 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�X�[�p�[�L�����Z��
trigger12= stateno = 1000
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1205 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0

;HD�L�����Z��
trigger17= stateno = 1000
trigger17= var(21) > 0
trigger18= stateno = 1050
trigger18= var(21) > 0
trigger19= stateno = 1100 && movecontact
trigger19= var(21) > 0
trigger20= stateno = 1150 && movecontact
trigger20= var(21) > 0
trigger21= stateno = 1010 && movecontact
trigger21= var(21) > 0
trigger22= stateno = 1205 && movecontact
trigger22= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger23= stateno = [200,499]
trigger23= movecontact
trigger23= var(21) > 0



;---------------------------------------------------------------------------
;���S�����E��֓�
[State -1, OROCHI]
type = ChangeState
value = 2000
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "���S�����E��֓�") || (var(38) = 60 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�X�[�p�[�L�����Z��
trigger12= stateno = 1000
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1205 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0

;HD�L�����Z��
trigger17= stateno = 1000
trigger17= var(21) > 0
trigger18= stateno = 1050
trigger18= var(21) > 0
trigger19= stateno = 1100 && movecontact
trigger19= var(21) > 0
trigger20= stateno = 1150 && movecontact
trigger20= var(21) > 0
trigger21= stateno = 1010 && movecontact
trigger21= var(21) > 0
trigger22= stateno = 1205 && movecontact
trigger22= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger23= stateno = [200,499]
trigger23= movecontact
trigger23= var(21) > 0



;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;EX�S�뎮�E�O��
[State negathibu anngisshu]
type = ChangeState
value = 1450
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX�S�뎮�E�O��") || (var(38) = 55 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;�S�뎮�E�O��
[State -1, OBORO]
type = ChangeState
value = 1400
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "�S�뎮�E�O��") || (var(38) = 50 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;---------------------------------------------------------------------------
;EX���E�܎��E��
[State negathibu anngisshu]
type = ChangeState
value = 1350
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX���E�܎��E��") || (var(38) = 45 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;���E�܎��E��
[State -1, 75]
type = ChangeState
value = 1300
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "���E�܎��E��") || (var(38) = 40 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;---------------------------------------------------------------------------
;EX��S�E�󎮁E�Ռ� �z
[State -1, EX KOTOTSUKI]
type = ChangeState
value = 1250
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX��S�E�󎮁E�Ռ� �z") || (var(38) = 35 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;��S�E�󎮁E�Ռ� �z
[State -1, KOTOTSUKI]
type = ChangeState
value = 1200
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "��S�E�󎮁E�Ռ� �z") || (var(38) = 30 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 120500 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 120500 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;---------------------------------------------------------------------------
;EX�S���E�S�Ă�
[State -3, EX ONIYAKI]
type = ChangeState
value = 1150
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX�S���E�S�Ă�") || (var(38) = 25 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 115000 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 115000 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "�S���E�S�Ă�") || (var(38) = 20 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 110000 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 110000 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0



;---------------------------------------------------------------------------
;EX�S�����E�ŕ���
[State -1, EX YAMIBARAI]
type = ChangeState
value = 1050
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "EX�S�����E�ŕ���") || (var(38) = 15 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(1010) = 0
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && animelem = 6,>=0
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;�S�����E�ŕ���
[State -1, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = (command = "�S�����E�ŕ���") || (var(38) = 10 && var(40) > 0)
triggerall = statetype != A
triggerall = numhelper(1010) = 0
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && animelem = 6,>=0
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HD�L�����Z��
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])


;---------------------------------------------------------------------------
;�K�[�L�����ӂ���΂��U��
[State -1, GCA]
type = ChangeState
value = 299
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "�ӂ���΂�"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151


;---------------------------------------------------------------------------
;�󒆂ӂ���΂��U��
[State kuuchuuhuttobasikougeki]
type = ChangeState
value = 690
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "�ӂ���΂�"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl

;---------------------------------------------------------------------------
;�ӂ���΂��U��
[State huttobasikougeki]
type = ChangeState
value = 290
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "�ӂ���΂�"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;�K�[�L�������킵�ړ��E��
[State ga-kyannkawasiidou usiro]
type = ChangeState
value = 701
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "���"
triggerall = command = "holdback"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�K�[�L�������킵�ړ��E�O
[State ga-kyannkawasiidou mae]
type = ChangeState
value = 700
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "���"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;���킵�ړ��E��
[State kawasiidou usiro]
type = ChangeState
value = 701
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "���"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;���킵�ړ��E�O
[State kawasiidou mae]
type = ChangeState
value = 700
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "���"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;�_�E�����
[State -1, UKEMI]
type = ChangeState
value = 702
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = var(9) >= 1
triggerall = alive
triggerall = pos y >= 0
trigger1 = stateno = 5050
trigger2 = stateno = 5071
;trigger3 = stateno = 5100


;---------------------------------------------------------------------------
;HD���[�h����
[State -1, HD]
type = ChangeState
value = 900
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "HD���[�h"
triggerall = statetype != A
triggerall = var(20) >= 1000
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;HD���[�h�����E��
[State -1, HD]
type = ChangeState
value = 901
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "HD���[�h"
triggerall = statetype = A
triggerall = var(20) >= 1000
trigger1 = stateno = 50

;---------------------------------------------------------------------------
;HD���[�h�����E�L�����Z��
[State -1, HD]
type = ChangeState
value = 902
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "HD���[�h"
triggerall = statetype != A
triggerall = var(20) >= 1000
triggerall = stateno = [200,499]
trigger1 = movecontact


;---------------------------------------------------------------------------
;�ꙋ�w��������
[State deddo fo-ru]
type = ChangeState
value = 800
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2bodydist X <= 10
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;===========================================================================

;---------------------------------------------------------------------------
;���E����
[State -1, 88]
type = ChangeState
value = 450
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 400 && animelem = 2,>=0
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 440 && animelem = 5,>=0
trigger7 = stateno = 290 && animelem = 6,>=0


;---------------------------------------------------------------------------
;�O���E���� �z
[State -1, GOUHU]
type = ChangeState
value = 251
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = stateno = 200 && animelem = 3,>=0
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && animelem = 2,>=0
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && animelem = 5,>=0
trigger6 = stateno = 290 && animelem = 6,>=0

;---------------------------------------------------------------------------
;�O���E���� �z
[State -1, GOUHU]
type = ChangeState
value = 250
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;�O���E�ޗ����Ƃ�
[State tachijakupanchi]
type = ChangeState
value = 650
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl
trigger3 = stateno = 105


;---------------------------------------------------------------------------
;������p���`
[State tachijakupanchi]
type = ChangeState
value = 200
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 5,>=0
trigger3 = stateno = 400 && animelem = 3,>=0
trigger4 = stateno = 430 && animelem = 5,>=0

;---------------------------------------------------------------------------
;�ߋ����������p���`
[State tachikyoupanchi]
type = ChangeState
value = 215
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 20
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;�������������p���`
[State tachikyoupanchi]
type = ChangeState
value = 210
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;������L�b�N
[State tachijakukikku]
type = ChangeState
value = 230
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 430 && animelem = 6,>=0

;---------------------------------------------------------------------------
;�������������L�b�N
[State ennkyoritachikyoukikku]
type = ChangeState
value = 240
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;����
[State chouhatu]
type = ChangeState
value = 199
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 && animelem = 5,>=0
trigger3 = stateno = 400 && animelem = 4,>=0
trigger4 = stateno = 430 && animelem = 5,>=0

;---------------------------------------------------------------------------
;���Ⴊ�݋��p���`
[State tachijakupanchi]
type = ChangeState
value = 410
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 430 && animelem = 6,>=0

;---------------------------------------------------------------------------
;���Ⴊ�݋��L�b�N
[State shagamikyoukikku]
type = ChangeState
value = 440
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;�󒆎�p���`
[State kuuchuujakupanchi]
type = ChangeState
value = 600
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl

;---------------------------------------------------------------------------
;�󒆋��p���`
[State kuuchuukyoupanchi]
type = ChangeState
value = 610
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1 || var(59) = 1 && var(57) <= 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl


;������������������������������������������������������������������������������������
; AI
;������������������������������������������������������������������������������������
;---------------------------------------------------------------------------
; �e��w���p�[
;---------------------------------------------------------------------------
[State -3, AI�N���w���p�[]
type = helper
triggerall = var(59) = 0
trigger1 =!NumHelper(30000)
trigger1 =!IsHelper
trigger1 = roundstate <= 2 && alive
Trigger1 =!ctrl && stateno=0
helpertype = normal
name = "AI"
stateno = 30000
ID = 30000
pos = 0,0
keyctrl = 1
pausemovetime = 9999999
supermovetime = 9999999
persistent = 0

[State -1, �K�[�h�`�F�b�N�w���p�[]
Type = Helper
triggerall = RoundState = 2
trigger1 =!NumHelper(31000+id)
trigger1 =!IsHelper
HelperType = Normal
Name = "Guard"
PosType = left
StateNo = 31000
ID = 31000+id
PauseMoveTime = 0
pos=0,9999
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0
IgnoreHitPause = 1
KeyCtrl = 0
Ownpal = 1

[State -1, ��ѓ���m�F�w���p�[]
Type=Helper
trigger1 =!NumHelper(32000)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU"
StateNo = 32000
ID = 32000
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, ��ѓ���m�F�w���p�[]
Type=Helper
trigger1 =!NumHelper(32500)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU ITI A"
StateNo = 32500
ID = 32500
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, ��ѓ���m�F�w���p�[]
Type=Helper
trigger1 =!NumHelper(32501)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU ITI B"
StateNo = 32500
ID = 32501
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

;---------------------------------------------------------------------------
[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type = ChangeState
trigger1 = ishelper(30000)
trigger1 = stateno != 30000
value = 30000

[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type = ChangeState
trigger1 = ishelper
trigger1 = ishelper(31000+root,id)
trigger1 = stateno != 31000
value = 31000

[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type = SelfState
trigger1 = ishelper(32000)
trigger1 = stateno != 32000
value = 32000

[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type = SelfState
trigger1 = ishelper(32500) || ishelper(32501)
trigger1 = stateno != 32500
value = 32500

;---------------------------------------------------------------------------
; AI swich -> ON
[State -1, AI]
type = VarSet
triggerall = !ishelper || isHelper(30000)
triggerall = !var(59)
triggerall = RoundState = [1,2]
trigger1  = Command = "AI1"
trigger2  = Command = "AI2"
trigger3  = Command = "AI3"
trigger4  = Command = "AI4"
trigger5  = Command = "AI5"
trigger6  = Command = "AI6"
trigger7  = Command = "AI7"
trigger8  = Command = "AI8"
trigger9  = Command = "AI9"
trigger10 = Command = "AI10"
trigger11 = Command = "AI11"
trigger12 = Command = "AI12"
trigger13 = Command = "AI13"
trigger14 = Command = "AI14"
trigger15 = Command = "AI15"
trigger16 = Command = "AI16"
trigger17 = Command = "AI17"
trigger18 = Command = "AI18"
trigger19 = Command = "AI19"
trigger20 = Command = "AI20"
trigger21 = Command = "AI21"
trigger22 = Command = "AI22"
trigger23 = Command = "AI23"
trigger24 = Command = "AI24"
trigger25 = Command = "AI25"
trigger26 = NumHelper(30000)
trigger26 = Helper(30000),var(59)
trigger26 = Helper(30000),time > 5
var(59) = 1

;---------------------------------------------------------------------------
[state -3, AI]
Type = VarSet
triggerall = Var(59) = 1
trigger1 = RoundState = 4
trigger2 = Win = 1
trigger3 = Lose = 1
trigger4 = DrawGame = 1
V = 59
Value = -1

[state -3, AI]
Type = VarSet
triggerall = Var(59) = -1
trigger1 = RoundState = 2
V = 59
Value = 1

;---------------------------------------------------------------------------
;�^�b�O�p��������

[State -3, �^�b�O�p��������]
Type = VarSet
;triggerall = var(59)>0
Triggerall = RoundState = 2
Trigger1 = NumEnemy <= 1
Trigger2 = NumEnemy >= 2
Trigger2 = enemynear(0),Life > 0
Trigger2 = Ctrl || !NumTarget || NumTarget >= 2
Trigger3 = NumEnemy >= 2
Trigger3 = enemynear(0),Life > 0
Trigger3 = Target,StateType = L ||  Facing*(Pos X - Target,Pos X) > 0
Trigger4 = NumEnemy >= 2 && NumTarget = 1
Trigger4 = Enemy(0),Life > 0 && Enemy(1),Life > 0
Trigger4 = enemynear(0),ID = Target,ID
Trigger4 = Target,StateType != L
Trigger4 = Facing*(Pos X - Target,Pos X) <= 0
Trigger4 = !Ctrl
var(58) = 0
IgnoreHitPause = 1

[State -3, �^�b�O�p��������]
Type = VarSet
;triggerall = var(59)>0
Triggerall = RoundState = 2
Triggerall = NumEnemy >= 2
Triggerall = !var(58)
Trigger1 = enemynear(0),Life <= 0
Trigger2 = NumEnemy >= 2 && NumTarget = 1
Trigger2 = Enemy(0),Life > 0 && Enemy(1),Life > 0
Trigger2 = enemynear(0),ID != Target,ID
Trigger2 = Facing*(Pos X - Target,Pos X) <= 0
Trigger2 = Target,StateType != L
Trigger2 = !Ctrl
var(58) = 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;����̋N���オ��̓������G�𒲂ׂ�
[State -3]
Type = VarSet
Trigger1 = enemynear(var(58)),statetype = L
V = 53
Value = -1
IgnoreHitPause = 1

[State -3]
Type = VarAdd
Triggerall = var(53) > 0
Trigger1 = enemynear(var(58)),statetype != L
V = 53
Value = -1
IgnoreHitPause = 1

[State -3]
Type = VarSet
Triggerall = var(53) = -1
Trigger1 = enemynear(var(58)),statetype != L
V = 53
Value = 12
IgnoreHitPause = 1

;-----------------------------------------------------------------------
[State -3,��~�p]
type = ChangeState
value = 100
ctrl = 0
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = animtime = 0
triggerall = time > 0
trigger1 = var(50) = 3
trigger1 = stateno = 2105

[State -3,��~�p]
type = ChangeState
value = 20
ctrl = 0
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = animtime = 0
triggerall = time > 0
trigger1 = var(50) = 1 && var(21) > 0
trigger1 = stateno = 1305

[State -3,��~�p]
type = ChangeState
value = 0
ctrl = 0
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = animtime = 0
triggerall = time > 0
trigger1 = var(50) = 1 && var(21) = 0
trigger1 = stateno = 1305
trigger2 = var(50) = 2
trigger2 = stateno = 1405
trigger3 = var(50) = 4
trigger3 = stateno = 1000

;��~����
[State -3]
type = ChangeState
value = 0
ctrl = 1
triggerall = var(59)
triggerall = var(50)
triggerall = statetype != A
triggerall = stateno = 0 || (stateno = [20,22])
triggerall = ctrl = 0
trigger1 = p2bodydist y >= 0
trigger2 = roundstate != 2

;������������������������������������������������������������������������������������
;��������(�����Ȑl��changestate�̑O�Ɂunull;�v��t���܂��傤)
;������������������������������������������������������������������������������������
;����
[State -3,taunt]
type = ChangeState
value = 199
triggerall = var(59) != 0
triggerall = var(57) >= 7
triggerall = alive
triggerall = life > 0
triggerall = !Ishelper
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = stateno != 199 && prevstateno != 199
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

;������������������������������������������������������������������������������������
;����������̘A���Z
;������������������������������������������������������������������������������������
[State -3, ComboReset]
type = varset
triggerall = var(59)
triggerall = var(50)
trigger1 = stateno = [5000,5270]
trigger2 = enemynear(var(58)),statetype = L
trigger3 = enemynear(var(58)),movetype = A
trigger4 = enemynear(var(58)),movetype != H
trigger5 = enemynear(var(58)),stateno = [0,159]
trigger6 = enemynear(var(58)),ctrl=1
trigger7 = roundstate != 2
var(50) = 0

[State -3, ComboReset]
type = varset
triggerall = var(59)
trigger1 = var(50) = 1
trigger1 = stateno = 1400
trigger2 = var(50) = 2 || var(50) = 5
trigger2 = stateno = 1100 || stateno = 1200 || stateno = 2000 || stateno = 2050
trigger3 = var(50) = 3
trigger3 = stateno = 1200
var(50) = 0

;-------------------------------------------------------------------------------
;�㎵�E�܎��E���@�ǌ�
;-------------------------------------------------------------------------------
[State -3,h75h];�㎵�E�܎��E���q�b�g�m�F
type = varset
triggerall = var(59)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = stateno = 1300 && var(5) = 0 && movehit
var(50) = 5

;EX���S�����E��֓�
[State -3, EX OROCHI]
type = ChangeState
value = 2050
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 5
triggerall = power >= 2000
triggerall = var(21) = 0 || power >= 4000 && var(21) = [1,180]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])

;���S�����E��֓�
[State -3, OROCHI]
type = ChangeState
value = 2000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 5
triggerall = power >= 1000
triggerall = var(21) = 0 || power >= 3000 && var(21) = [1,180]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) >= 5 && p2life <= 150
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])

;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 5
triggerall = var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = frontedgebodydist < 40
triggerall = p2bodydist y = [-20-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;��S�E�󎮁E�Ռ� �z
[state -3, KOTOTSUKI]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 5
triggerall = var(21) = 0 || var(21) > 0 && frontedgebodydist > 40
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist y = [-60-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;-------------------------------------------------------------------------------
;�S�����E�ŕ���(�󒆃q�b�g)�@�ǌ�
;-------------------------------------------------------------------------------
;�S�뎮�E�O��
[state -3, OBORO]
type = ChangeState
value = 1400
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 4
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;-------------------------------------------------------------------------------
;�󒆑�֓�@�ǌ�
;-------------------------------------------------------------------------------
;�S�����E�ŕ���
[State -1, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 2

;-------------------------------------------------------------------------------
;��O�ԁ@�ǌ�
;-------------------------------------------------------------------------------
[State -3,h75h];��O�ԃq�b�g�m�F
type = varset
triggerall = var(59)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = stateno = 1400 && var(5) = 0 && movehit
var(50) = 2

;���E�܎��E��
[State -1, 75]
type = ChangeState
value = 1300
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 2
triggerall = fvar(21) = 0 ;��p�󂯐g�����ɑ΂��Ă͎g�p���Ȃ�
triggerall = var(21) = 0 || var(21) > 180
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = frontedgebodydist < 40
triggerall = p2bodydist y = [-90-floor(14*(enemynear(var(58)),vel y)+(14*(14+1)/2)*fvar(20)),0-floor(14*(enemynear(var(58)),vel y)+(14*(14+1)/2)*fvar(20))]
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;EX���S�����E��֓�
[State -3, EX OROCHI]
type = ChangeState
value = 2050
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 2
triggerall = power >= 2000
triggerall = var(21) = 0 || power >= 4000 && var(21) = [1,180]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])

;���S�����E��֓�
[State -3, OROCHI]
type = ChangeState
value = 2000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 2
triggerall = power >= 1000
triggerall = var(21) = 0 || power >= 3000 && var(21) = [1,180]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) >= 5 && p2life <= 150
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])

;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 2
triggerall = var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = frontedgebodydist < 40
triggerall = p2bodydist y = [-20-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;��S�E�󎮁E�Ռ� �z
[state -3, KOTOTSUKI]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 2
triggerall = var(21) = 0 || var(21) > 0 && frontedgebodydist > 40
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist y = [-60-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;-------------------------------------------------------------------------------
;���E�܎��E���@�ǌ�
;-------------------------------------------------------------------------------
[State -3,h75h];�����E�܎��E���q�b�g�m�F
type = varset
triggerall = var(59)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = stateno = 1300 && var(5) = 1 && movehit
var(50) = 1

;�S�뎮�E�O��
[state -3, OBORO]
type = ChangeState
value = 1400
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(50) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist y = [-100-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20)),0-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20))]
trigger1 = ctrl || stateno = 0 || (stateno = [19,21]) || (stateno = [99,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;������������������������������������������������������������������������������������
; �^�b�O�p
;������������������������������������������������������������������������������������
[State -3,�G���P�l]
Type = VarSet
Trigger1 = NumEnemy != 2
Trigger2 = !(EnemyNear(0),Alive && EnemyNear(1),Alive)
v = 51
value = 0

[State -3,�G���Q�l���O���̂�]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
v = 51
value = 1

[State -3,�����A�p�[�g�i�[�A�G�A�G]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = NumPartner
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Partner,Pos X > 0,EnemyNear(0),Pos X - Partner,Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Partner,Pos X > 0,EnemyNear(1),Pos X - Partner,Pos X < 0)
v = 51
value = 2

[State -3,�����A�G�A�p�[�g�i�[�A�G]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = NumPartner
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Partner,Pos X < 0,EnemyNear(0),Pos X - Partner,Pos X > 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Partner,Pos X > 0,EnemyNear(1),Pos X - Partner,Pos X < 0)
v = 51
value = 3

[State -3,�����A�G�A�G�A�p�[�g�i�[]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = NumPartner
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Partner,Pos X < 0,EnemyNear(0),Pos X - Partner,Pos X > 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Partner,Pos X < 0,EnemyNear(1),Pos X - Partner,Pos X > 0)
v = 51
value = 4

[State -3,�w��ɓG�L��]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X < 0,EnemyNear(0),Pos X - Pos X > 0)
Trigger2 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X < 0,EnemyNear(1),Pos X - Pos X > 0)
v = 51
value = 5

;---------------------------------------------------------------------------
[State -3,�p�[�g�i�[�s��]
Type = VarSet
TriggerAll = TeamMode = Simul
Trigger1 = !NumPartner
Trigger2 = !Partner,Alive
v = 52
value = 0

[State -3,�p�[�g�i�[��q]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,Partner,Pos X - Pos X < 0,Partner,Pos X - Pos X > 0)
v = 52
value = 1

[State -3,�p�[�g�i�[�O�q]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
v = 52
value = 2

[State -3,�p�[�g�i�[��_���[�W]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll = Partner,MoveType = H
TriggerAll = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
Trigger1 = Partner,StateNo = [5000,5100)
Trigger2 = Partner,StateNo = [120,159]
v = 52
value = 3

[State -3,�p�[�g�i�[�U����]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll = Partner,MoveType = A
TriggerAll = Partner,MoveType != H
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
Trigger1 = EnemyNear(var(58)),StateNo = [5000,5100)
v = 52
value = 4

[State -3,�p�[�g�i�[��X�e�[�g�D��]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll = Partner,MoveType = H
TriggerAll = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
Trigger1 = Partner,StateNo != [5000,5500]
Trigger1 = Partner,StateNo != [120,159]
v = 52
value = 5

[State -3,�p�[�g�i�[�X�e�[�g�D��]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll =(Partner,StateNo = [2000,4999]) || Partner,StateNo > 5500
Trigger1 = EnemyNear(var(58)),MoveType = H
Trigger1 = EnemyNear(var(58)),StateNo != [5000,5500]
Trigger1 = EnemyNear(var(58)),StateNo != [120,159]
v = 52
value = 6

;===========================================================================
; �w��ɓG����
;===========================================================================
[State -3,K���� �^�b�O ���֓���]
Type = ChangeState
Value = 800
TriggerAll = var(59) >= 1
TriggerAll = var(51) = 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
TriggerAll = StateType != A
TriggerAll = p2bodydist X = [-10,10]
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),StateType = S || EnemyNear(var(58)),StateType = C
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
Trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

[State -3,��] �^�b�O �w����ꂽ�ꍇ]
Type = ChangeState
Value = 701
TriggerAll = var(59) >= 1
TriggerAll = var(51) = 5
TriggerAll = var(52) >= 60 && BackEdgeBodyDist >= 20
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
TriggerAll = StateType != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = ifelse(facing = 1,(EnemyNear(0),Pos X - Pos X = [-100,0]),(EnemyNear(0),Pos X - Pos X = [0,100]))
Trigger1 = EnemyNear(0),BackEdgeBodyDist >= 40
Trigger1 = EnemyNear(0),facing = facing
Trigger2 = ifelse(facing = 1,(EnemyNear(1),Pos X - Pos X = [-100,0]),(EnemyNear(1),Pos X - Pos X = [0,100]))
Trigger2 = EnemyNear(1),BackEdgeBodyDist >= 40
Trigger2 = EnemyNear(1),facing = facing

[State -3,�K�[�h�L�����Z����] �^�b�O �w����ꂽ�ꍇ]
Type  = ChangeState
Value = 701
TriggerAll = var(59) >= 1
TriggerAll = var(51) = 5
TriggerAll = var(52) >= 120 && BackEdgeBodyDist >= 20
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
TriggerAll = Power >= 1000
TriggerAll = StateType != A
TriggerAll = stateno = 150 || stateno = 152
Trigger1 = ifelse(facing = 1,(EnemyNear(0),Pos X - Pos X = [-100,0]),(EnemyNear(0),Pos X - Pos X = [0,100]))
Trigger1 = EnemyNear(0),BackEdgeBodyDist >= 40
Trigger1 = EnemyNear(0),facing = facing
Trigger2 = ifelse(facing = 1,(EnemyNear(1),Pos X - Pos X = [-100,0]),(EnemyNear(1),Pos X - Pos X = [0,100]))
Trigger2 = EnemyNear(1),BackEdgeBodyDist >= 40
Trigger2 = EnemyNear(1),facing = facing

;===========================================================================
; �G���Q�l���O���̂�
;===========================================================================

;===========================================================================
; ��
;===========================================================================
;�S�����E�ŕ���
[state -3, YAMIBARAI]
type = ChangeState
value = 1000
TriggerAll = var(59)
TriggerAll = var(57) >= 1
TriggerAll = var(52) = [2,3]
TriggerAll = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L && enemynear(var(58)),statetype != A
triggerall = !Numproj && !enemy,numproj
triggerall = partner,movetype = H
triggerall = partner,statetype != L 
triggerall = partner,stateno != 5120
triggerall = partner,stateno != 5201
triggerall = (partner,stateno = [150,155]) || partner,stateno = [5000,5099]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemynear(var(58)),movetype = A
Trigger1 = P2BodyDist X >= 140
trigger1 = var(54) := 2

;�S�����E�ŕ���
[state -3, YAMIBARAI]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
TriggerAll = var(57) >= 1
TriggerAll = var(52) = [2,3]
TriggerAll = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 100
TriggerAll = StateType != A
TriggerAll = enemynear(var(58)),statetype != A
triggerall = numhelper(1010) = 0
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = P2BodyDist X >= 200
trigger1 = var(54) := 2

;���S���E�S�Ă� �^�b�O�΋�E��
[state -3, ONIYAKI]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
TriggerAll = var(57) >= 1
TriggerAll = var(52) = 4
TriggerAll = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),StateNo != [120,159]
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [10+floor(6*(enemynear(var(58)),vel x)),60+floor(6*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-60-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]
trigger1 = var(54) := 2

;���Ⴊ�݋��p���` �^�b�O�΋�E��
[State -3, Crouching Strong Punch]
type = ChangeState
value = 410
TriggerAll = var(59) >= 1
TriggerAll = var(57) >= 1
TriggerAll = var(52) = 4
TriggerAll = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),StateNo != [120,159]
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [0+floor(7*(enemynear(var(58)),vel x)),40+floor(7*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-80-floor(7*(enemynear(var(58)),vel y)+(7*(7+1)/2)*fvar(20)),0-floor(7*(enemynear(var(58)),vel y)+(7*(7+1)/2)*fvar(20))]

;===========================================================================
;�󒆂ӂ��Ƃ΂�
[state -3, CD]
type = ChangeState
value = 690
triggerall = var(59)
triggerall = var(57) >= 1
TriggerAll = var(52)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype = A
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),StateNo != [120,159]
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
triggerall = ctrl
trigger1 = p2bodydist X = [-10,50]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]

[State -3,���W�����v �^�b�O]
Type = ChangeState
Value = 32
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 600
TriggerAll = StateType != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
TriggerAll = P2BodyDist X = [30,80]
Trigger1 = var(52) = 3
Trigger1 = EnemyNear(var(58)),facing = facing

[State -3,���W�����v �^�b�O]
Type = ChangeState
Value = 34
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 600 || var(57) > 9
TriggerAll = StateType != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
TriggerAll = P2BodyDist X = [80,120]
Trigger1 = var(52) = [3,4]
Trigger1 = EnemyNear(var(58)),facing = facing

[State -3,��W�����v �^�b�O]
Type = ChangeState
Value = 36
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 600 || var(57) > 9
TriggerAll = StateType != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
TriggerAll = P2BodyDist X = [120,180]
Trigger1 = var(52) = [3,4]
Trigger1 = EnemyNear(var(58)),facing = facing

[State -3,�_�b�V�� �^�b�O]
Type = ChangeState
Value = 100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 600 || var(57) > 9
TriggerAll = StateType != A
TriggerAll =!Enemy,NumProj
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
TriggerAll = P2BodyDist X > 140
Trigger1 = var(52) = [2,4]
Trigger1 = EnemyNear(var(58)),facing = facing

;===========================================================================
; �C�䃂�[�h �c �̗�30���ȉ��E�p�[�g�i�[�̔����ȉ��A�p�[�g�i�[��X�e�[�g�D�掞
;===========================================================================
;�S�����E�ŕ���
[state -3, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = var(57) >= 1
TriggerAll = var(52)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 600 || var(57) > 9
triggerall = numhelper(1010) = 0
TriggerAll = StateType != A
TriggerAll =!InGuardDist || EnemyNear(var(58)),facing = facing || var(52) = 5
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 =(100*life/lifeMax) <= 33
Trigger1 = Life*2 < Partner,Life
Trigger1 = Random <= (LifeMax - Life)
Trigger1 = var(51) < 5
Trigger1 = var(52) > 1 || BackEdgeBodyDist < 40
trigger1 = var(54) := 1
Trigger2 = P2BodyDist X > 60
Trigger2 = var(52) = 5 || var(52) = 6 && Power = PowerMax
trigger2 = var(54) := 1

[State -3,�o�b�N�X�e�b�v�A��] �C����]
Type = ChangeState
Value = ifelse(var(51) = 5,701,105)
triggerall = var(59)
triggerall = var(57) >= 1
TriggerAll = var(52)
triggerall = RoundState = 2
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = StateType != A
TriggerAll = BackEdgeBodyDist >= 40
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = EnemyNear(var(58)),MoveType != H
Trigger1 =(100*life/lifeMax) <= 33
Trigger1 = Life*2 < Partner,Life
Trigger1 = Random <= (LifeMax - Life)
Trigger1 = var(51) < 5
Trigger1 = var(52) = 1 && BackEdgeBodyDist >= 40
Trigger2 = P2BodyDist X <= 60
Trigger2 = EnemyNear(var(58)),StateNo >= 1000 
Trigger2 = var(52) = 5

;===========================================================================
; �Q�E����
;===========================================================================
[State -3,�ޔ� �Q�E����]
Type = ChangeState
Value = 701
TriggerAll = var(59) >= 1
TriggerAll = var(51) = 5 || var(52) = 1
TriggerAll = NumPartner
TriggerAll = P3Name="dragon"&&Partner,AuthorName="kayui uma"
TriggerAll = Partner,StateNo = 2002 || Partner,StateNo = 2102
TriggerAll = Partner,AnimTime < -3
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 11 || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

[State -3,�ҋ@ �Q�E����]
Type = ChangeState
Value = 11
TriggerAll = var(59) >= 1
TriggerAll = var(52) > 1
TriggerAll = var(51) < 5
TriggerAll = NumPartner
TriggerAll = P3Name="dragon"&&Partner,AuthorName="kayui uma"
TriggerAll = Partner,StateNo = 2002 || Partner,StateNo = 2102
TriggerAll = Partner,AnimTime < -3
TriggerAll = StateType != A
TriggerAll =!InGuardDist
Trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Ctrl = 0

[State -3,��] �Q�E����]
Type = ChangeState
Value = 701
TriggerAll = var(59) >= 1
TriggerAll = var(52)
TriggerAll = P3Name = "dragon" && Partner,AuthorName = "kayui uma"
TriggerAll = Partner,StateNo = 2002 || Partner,StateNo = 2102
TriggerAll = Partner,AnimTime >= -3
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 11 || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

[State -3,�K�[�h�L�����Z����] �Q�E����]
Type  = ChangeState
Value = 701
TriggerAll = var(59) >= 1
TriggerAll = var(52)
TriggerAll = P3Name = "dragon" && Partner,AuthorName = "kayui uma"
TriggerAll = Partner,StateNo = 2002 || Partner,StateNo = 2102
TriggerAll = Partner,AnimTime >= -3
TriggerAll = StateType != A
Trigger1 = stateno = 150 || stateno = 152

;������������������������������������������������������������������������������������
;��ѓ���΍�
;������������������������������������������������������������������������������������
;�O�](��ѓ���΍�)
[State -3, FRoll]
type = ChangeState
value = 700
triggerall = var(59) = 1
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = statetype != A
triggerall = enemynear(var(58)),MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2bodydist X >= 125
trigger1 = (Enemy,NumHelper > 0&&Enemy,NumHelper > Helper(32000),var(1))||Enemy,Numproj != 0
trigger1 = var(45) = 1
;trigger1 = Random <= 600
trigger2 = (enemynear(var(58)),AnimTime <= -35 && !enemynear(var(58)),Ctrl)
trigger2 = (Enemy,NumHelper > 0&&Enemy,NumHelper > Helper(32000),var(1))||Enemy,Numproj != 0
trigger2 = var(45) = 1
;trigger2 = Random <= 600

;������������������������������������������������������������������������������������
;���˂�
;������������������������������������������������������������������������������������
;�ߋ����������p���`
[State -3, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -4
triggerall = enemy,numproj = 0
triggerall =!InGuardDist || enemynear(var(58)),facing = facing || (prevstateno = [130,155]) || (prevstateno = [700,720])
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-10,20]

;���Ⴊ�ݎ�L�b�N
[State -3, Stand Strong Kick]
type = ChangeState
value = 430
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -3
triggerall = enemy,numproj = 0
triggerall =!InGuardDist || enemynear(var(58)),facing = facing || (prevstateno = [130,155]) || (prevstateno = [700,720])
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-10,55]

;����
[State -3, Throw]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(53) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [30,49]
triggerall = enemynear(var(58)),stateno != 105
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-15,10]

;�_�b�V��(���˂�)
[State -3, Dash]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = statetype != A
triggerall = P2Dist X > 0
TriggerAll =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 120 || enemynear(var(58)),facing = facing
trigger1 = enemynear(var(58)),statetype = A
trigger1 = enemynear(var(58)),MoveType = A
trigger1 =!enemynear(var(58)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
trigger1 = enemynear(var(58)),Time >= 60
trigger2 = enemynear(var(58)),MoveType != H
trigger2 = enemynear(var(58)),StateType = A
trigger2 =!enemynear(var(58)),Ctrl
trigger2 = enemynear(var(58)),facing = facing

;������������������������������������������������������������������������������������
;��ѓ���ł̔���
;������������������������������������������������������������������������������������
;EX �S�����E�ŕ���
[State -3, EX YAMIBARAI]
type = ChangeState
value = 1050
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = power >= 1000
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 200
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = numhelper(1010) = 0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X >= 160
trigger1 = enemynear(var(58)),movetype = A
trigger1 = enemynear(var(58)),AnimTime <= -30

;�� �S�����E�ŕ���
[State -3, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 400
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = numhelper(1010) = 0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X >= 160
trigger1 = enemynear(var(58)),movetype = A
trigger1 = enemynear(var(58)),AnimTime <= -40
trigger1 = var(54) := 2

;������������������������������������������������������������������������������������
;�؂�Ԃ�
;������������������������������������������������������������������������������������
;�O�]
[State -3, FRoll]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || life <= var(57)*var(56)*8 || Random <= var(57)*var(56) || var(56) >= 10
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),StateNo >= 200
triggerall =!enemynear(var(58)),HitDefAttr = SCA, AT
triggerall = enemynear(var(58)),facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [0,150]
trigger1 = enemynear(var(58)),animtime <= -30

;EX�S���E�S�Ă�
[State -3, EX ONIYAKI]
type = ChangeState
value = 1150
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = power >= 1000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || life <= var(57)*var(56)*8 || Random <= var(57)*var(56) || var(56) >= 10
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,50]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),animtime <= -6
trigger2 = p2bodydist x = [10+floor(6*(enemynear(var(58)),vel x)),60+floor(6*(enemynear(var(58)),vel x))]
trigger2 = p2bodydist y = [-60-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]
trigger2 = enemynear(var(58)),StateType = A

;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || life <= var(57)*var(56)*8 || Random <= var(57)*var(56) || var(56) >= 10
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,50]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),animtime <= -6
trigger1 = var(54) := 2
trigger2 = p2bodydist x = [10+floor(6*(enemynear(var(58)),vel x)),60+floor(6*(enemynear(var(58)),vel x))]
trigger2 = p2bodydist y = [-60-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]
trigger2 = enemynear(var(58)),StateType = A
trigger2 = var(54) := 2

;��]
[State -3, BRoll]
type = ChangeState
Value = 701
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || life <= var(57)*var(56)*8 || Random <= var(57)*var(56) || var(56) >= 10
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A
triggerall =!enemynear(var(58)),HitDefAttr = SCA, NT, ST, HT
triggerall = enemynear(var(58)),facing != facing
triggerall = BackEdgeBodyDist >= 40
triggerall = InGuardDist
triggerall =!enemy,numproj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [25,100]
trigger1 = enemynear(var(58)),animtime <= -12

;�W�����v�^�o�b�N�X�e�b�v(�Γ����p)
[State -3, Jump]
type = ChangeState
value = ifelse(Random<=500,105,34)
triggerall = var(59)
triggerall = var(57) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 200 || var(57) >= 9
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-20,80]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),HitDefAttr = SC,NT,ST,HT

;������������������������������������������������������������������������������������
;���G�Z�Ԃ���
;������������������������������������������������������������������������������������
;�O�]
[State -3, FRoll]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = var(57) = [1,4]
triggerall = Random <= 1000/var(57)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 200
trigger2 = p2bodydist X > 100
trigger2 = Random <= 100

;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = var(57) = [1,4]
triggerall = Random <= 1000/var(57)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,50]
trigger1 = Random <= 200
trigger1 = var(54) := 1

;������������������������������������������������������������������������������������
;�h��(�K�[�h��)
;������������������������������������������������������������������������������������
;�K�[�h
[State -3, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = stateno != [120,159]
triggerall = ctrl || stateno = 0 || (stateno = [20,22]) || (stateno = [100,101])
trigger1 = inguarddist
trigger1 = Random <= (200 + (var(57) * 100)) && Random <= 600 || var(57) > 4
trigger2 = inguarddist
trigger2 = p2bodydist x > 90 || enemynear(var(58)),time > 50
trigger2 = Random <= var(57) * 150
trigger3 = inguarddist
trigger3 = enemynear(var(58)),numhelper > 0 || enemy,numproj > 0
trigger4 = var(57) > 4
trigger4 = enemynear(var(58)),movetype = A
trigger4 = !enemynear(var(58)),hitdefattr = SCA, NT, ST, HT
trigger4 = stateno != 100 || stateno = 100 && p2dist y > -45 || numenemy >= 2
trigger4 = p2bodydist x < 0
trigger4 = p2dist x > 0 || p2dist x < 0
trigger5 = var(57) > 4
trigger5 = inguarddist
trigger5 = numenemy > 1
trigger5 = enemy(0),numhelper+enemy(1),numhelper > 0 || enemy(0),numproj+enemy(1),numproj > 0
trigger6 = var(57) > 4
trigger6 = numhelper(31000+id)
trigger6 = helper(31000+id),inguarddist
trigger6 = !enemynear(var(58)),hitdefattr = SCA, NT, ST, HT
;trigger6 = numenemy >= 2

;�_�E�����(��)
[State -3, HITFALL_AIRRECOVER]
type = ChangeState
value = 5210
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 800
triggerall = StateNo = 5050
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Vel Y > 0
trigger1 = Pos Y < -20 && Pos Y > -80
trigger1 = P2Bodydist X = [-60,60]
trigger1 = P2Bodydist Y = [-40,40]
trigger1 = enemynear(var(58)),MoveType = A
trigger1 = enemynear(var(58)),Time < 15

;��g
[State -3, UKEMI]
type = ChangeState
value = 702
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 400
triggerall = alive = 1
triggerall = pos y >= 0
trigger1 = stateno = 5050
trigger2 = stateno = 5071
;trigger3 = stateno = 5100

;�K�[�h�L�����Z���O�]
[State -3, GCFRoll]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 100
triggerall = StateType != A
triggerall = stateno = 150 || stateno = 152
trigger1 = P2BodyDist X = [0,50]
trigger1 = enemynear(var(58)),StateNo >= 200
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),MoveType = A
trigger1 = enemynear(var(58)),AnimTime <= -35

;�K�[�h�L�����Z���ӂ��Ƃ΂��U��
[State -3,GCA]
type = ChangeState
value = 299
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 50
triggerall = StateType != A
triggerall = stateno = 150 || stateno = 152
triggerall = BackEdgeBodyDist <= 15
trigger1 = P2BodyDist X = [0,50]
trigger1 = enemynear(var(58)),StateNo >= 200
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),MoveType = A
trigger1 = enemynear(var(58)),AnimTime <= -6

;������������������������������������������������������������������������������������
;�A���Z
;������������������������������������������������������������������������������������
;==============================================================================
;�n�C�p�[�h���C�u�R���{
;==============================================================================
;�󒆗��S�����E��֓�
[state -3, OROCHI Air]
type = ChangeState
value = 2100
triggerall = var(59)
triggerall = var(57) >= 1
Triggerall = ((Power = [2000,2999]) || Power >= 4000) && var(21) > 500
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = frontedgebodydist < 40
triggerall = movehit
trigger1 = stateno = 1400 && animelemtime(6) > 0 && animelemtime(8) < 2

;�S�뎮�E�O��
[state -3, OBORO]
type = ChangeState
value = 1400
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 1100
trigger1 = var(54) := 1
trigger2 = stateno = 1205
trigger2 = var(54) := 1

;���E�܎��E��
[state -3, 75]
type = ChangeState
value = 1300
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 1100
trigger1 = var(54) := 2

;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 1205
trigger1 = var(54) := 2

;��S�E�󎮁E�Ռ� �z
[state -3, KOTOTSUKI]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 450 && animelem = 6,<=0
trigger1 = var(54) := 1

;---------------------------------------------------------------------------
;�ߋ����������p���`
[State -3, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59) = 1
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = stateno = 99
trigger1 = P2BodyDist X = [-15,5]

;HD���[�h�����E�L�����Z��
[state -3, HD]
type = ChangeState
value = 902
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = power >= 1000 && var(20) >= 1000
triggerall = enemynear(var(58)),life >= 200
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (400 + (var(57) * 100)) || power >= 3000
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 250 && animelemtime(6) > 0 && animelemtime(7) < 2
trigger2 = stateno = 251 && animelemtime(6) > 0 && animelemtime(7) < 2
trigger3 = stateno = 450 && animelem = 6,<=0

;==============================================================================
;�q��
;==============================================================================
;���E����
[State -3, 88]
type = ChangeState
value = 450
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist X = [-20,60]
triggerall = movecontact
trigger1 = stateno = 200 && animelem = 3,>=0
trigger1 = p2bodydist X > 40
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && animelem = 2,>=0
trigger3 = p2bodydist X > 40
trigger4 = stateno = 410 && movecontact

;���Ⴊ�ݎ�p���`
[State -3, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist X = [-20,50]
triggerall = movecontact
trigger1 = stateno = 200 && animelem = 5,>=0
trigger2 = stateno = 400 && animelem = 4,>=0
trigger3 = stateno = 430 && animelem = 5,>=0

;==============================================================================
;�D�捀��
;==============================================================================
;���E�܎��E��
[State -3, 75]
type = ChangeState
value = 1300
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 450 && animelem = 6,<=0
trigger1 = var(54) := 2

;==============================================================================
;NEO MAX���K�E�Z
;==============================================================================
;���S��E�뎮�E�V�p�_
[state -3, MURAKUMO]
type = ChangeState
value = 2500
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = power >= 2000 && var(21) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = stateno = 2005 && animelem = 12,>=0
trigger2 = stateno = 2055 && animelem = 12,>=0

;==============================================================================
;EX���K�E�Z
;==============================================================================
;EX���S�����E��֓�
[State -3, EX OROCHI]
type = ChangeState
value = 2050
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = power >= 2000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 210 && animelem = 5,>=0
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 251 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 450 && movecontact && animelem = 6,<=0

;==============================================================================
;���K�E�Z
;==============================================================================
;�󒆗��S�����E��֓�
[state -3, OROCHI Air]
type = ChangeState
value = 2100
triggerall = var(59)
triggerall = var(57) >= 1
Triggerall = Power >= 1000
triggerall = var(20) >= 500 && var(21) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
;triggerall = Random <= 200
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = frontedgebodydist < 40
triggerall = movehit
trigger1 = stateno = 1400 && animelemtime(6) > 0 && animelemtime(8) < 2

;���S�����E��֓�
[State -3, OROCHI]
type = ChangeState
value = 2000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = power >= 1000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400 || var(57) >= 5 && p2life <= 150
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 210 && animelem = 5,>=0
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 251 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 450 && movecontact && animelem = 6,<=0

;==============================================================================
;EX�K�E�Z
;==============================================================================

;==============================================================================
;�K�E�Z
;==============================================================================
;��S�E�󎮁E�Ռ� �z
[state -3, KOTOTSUKI]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 210 && animelem = 5,>=0
trigger1 = var(54) := 1
trigger2 = stateno = 215 && movecontact
trigger2 = var(54) := 1
trigger3 = stateno = 251 && movecontact
trigger3 = var(54) := 1
trigger4 = stateno = 410 && movecontact
trigger4 = var(54) := 1
trigger5 = stateno = 450 && movecontact && animelem = 6,<=0
trigger5 = var(54) := 1

;�S�����E�ŕ���
[state -3, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = numhelper(1010) = 0
triggerall = moveguarded
trigger1 = stateno = 210 && animelem = 5,>=0
trigger1 = var(54) := 1
trigger2 = stateno = 215 && movecontact
trigger2 = var(54) := 1
trigger3 = stateno = 251 && movecontact
trigger3 = var(54) := 1
trigger4 = stateno = 410 && movecontact
trigger4 = var(54) := 1
trigger5 = stateno = 440 && animelem = 5,>=0 && moveguarded
trigger5 = var(54) := 1
trigger6 = stateno = 290 && animelem = 6,>=0 && moveguarded
trigger6 = var(54) := 1
trigger7 = stateno = 450 && movecontact && animelem = 6,<=0
trigger7 = var(54) := 1

;������������������������������������������������������������������������������������
;�N���U��
;������������������������������������������������������������������������������������
;---------------------------------------------------------------------------
;�N���U��
;---------------------------------------------------------------------------
[State -3, ���W�����v �N���U��]
Type = ChangeState
Value = 32
triggerall = var(59)
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 50
TriggerAll = StateType != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = P2BodyDist X <= 90
Trigger1 = EnemyNear(var(58)),StateNo = [5120,5129]
Trigger1 = EnemyNear(var(58)),AnimTime = [-23,-18]

[State -3, ���W�����v �N���U��]
Type = ChangeState
Value = 34
triggerall = var(59)
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
TriggerAll = Random <= 50
TriggerAll = StateType != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = P2BodyDist X = [91,160]
Trigger1 = EnemyNear(var(58)),StateNo = [5120,5129]
Trigger1 = EnemyNear(var(58)),AnimTime = [-23,-18]

;�� �S�����E�ŕ���
[State -3, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = StateType != A
triggerall = numhelper(1010) = 0
triggerall = P2BodyDist X >= 160
triggerall = enemynear(var(58)),MoveType = H
triggerall = enemynear(var(58)),StateType = A || enemynear(var(58)),StateType = L
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = var(54) := 1

;---------------------------------------------------------------------------
;�ʒu���
;---------------------------------------------------------------------------
;�_�b�V�� �N���U�߈ʒu���
[State -3, Dash]
Type = ChangeState
Value = 100
triggerall = var(59) = 1
triggerall = var(57) >= 1
triggerall = random <= (200 + (var(57) * 100))
triggerall = RoundState = 2
triggerall = StateType != A
triggerall =!inguarddist
triggerall =!enemy,numproj
triggerall = P2BodyDist X >= 90
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),StateNo = [5000,5100]
trigger2 = enemynear(var(58)),StateType = L
trigger3 = enemynear(var(58)),StateNo = 5622

;����(�N���U�߈ʒu���)
[State -3, Walk]
type = ChangeState
value = 22
triggerall = var(59) >= 1
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = stateno != 22
triggerall = ctrl || (stateno = [20,22])
trigger1 = enemynear(var(58)),StateType = L
trigger2 = enemynear(var(58)),StateNo = 5622

;�㒆�W�����v �N���U�� �N���U�ߕ���
[State -3, �㒆�W�����v]
Type = ChangeState
Value = 35
triggerall = var(59) >= 1
triggerall = var(57) >= 1
triggerall = random <= (200 + (var(57) * 100))
triggerall = Random <= 200
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-10,60]
trigger1 = enemynear(var(58)),StateNo = 5120
trigger1 = enemynear(var(58)),AnimTime <= -12
trigger1 = enemynear(var(58)),Vel X = 0

;�o�b�N�X�e�b�v�A��] �N���U�ߕ���
[State -3, Back Step/Roll B]
Type = ChangeState
Value = ifelse(Random <= 500,105,701)
triggerall = var(59) >= 1
triggerall = var(57) >= 1
triggerall = random <= (200 + (var(57) * 100))
triggerall = Random <= 200
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-10,60]
trigger1 = enemynear(var(58)),StateNo = [5120,5129]
trigger1 = enemynear(var(58)),AnimTime <= -12

;������������������������������������������������������������������������������������
;�������A�Z�U��(�n��)
;������������������������������������������������������������������������������������
;---------------------------------------------------------------------------
;����
;---------------------------------------------------------------------------
;EX��S�E�󎮁E�Ռ��@�z
[State -3, EX KOTOTSUKI]
type = ChangeState
value = 1250
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(53) = 0
triggerall = power >= 1000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [30,49]
triggerall = enemynear(var(58)),stateno != 105
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = p2bodydist X = [-5,30]
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

;P����
[State -3, Throw]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = var(53) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [30,49]
triggerall = enemynear(var(58)),stateno != 105
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = p2bodydist X = [-10,10]
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

;---------------------------------------------------------------------------
;�΋�
;---------------------------------------------------------------------------
;�S���E�S�Ă�
[State -3, ONIYAKI]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = StateType != A
triggerall = enemynear(var(58)),StateType = A
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [10+floor(6*(enemynear(var(58)),vel x)),60+floor(6*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-60-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]
trigger1 = var(54) := 2

;�ߋ����������p���`
[State -3, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = StateType != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-5,20]
trigger1 = P2BodyDist Y >= -130

;���Ⴊ�݋��p���`
[State -3, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
Triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [0+floor(7*(enemynear(var(58)),vel x)),40+floor(7*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-80-floor(7*(enemynear(var(58)),vel y)+(7*(7+1)/2)*fvar(20)),0-floor(7*(enemynear(var(58)),vel y)+(7*(7+1)/2)*fvar(20))]

;������������p���`
[State -3, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [18,50]
trigger1 = abs(enemynear(var(58)),Pos Y - Pos Y) = [0,40]

[State -3,�㏬�W�����v ��΋�]
Type = ChangeState
Value = 33
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600
triggerall = StateType != A
triggerall =!Enemy,NumProj
triggerall = enemynear(var(58)),Vel X > 0
triggerall = enemynear(var(58)),Vel Y < 0
triggerall = enemynear(var(58)),MoveType != H
triggerall = enemynear(var(58)),StateType = A
triggerall =!InGuardDist
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [100,160]
trigger1 = enemynear(var(58)),Vel X <= 4
trigger2 = P2BodyDist X = [140,180]
trigger2 = enemynear(var(58)),Vel X <= 6

[State -3,�㒆�W�����v ��΋�]
Type = ChangeState
Value = 35
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600
triggerall = StateType != A
triggerall =!Enemy,NumProj
triggerall = enemynear(var(58)),Vel X > 0
triggerall = enemynear(var(58)),Vel Y < 0
triggerall = enemynear(var(58)),MoveType != H
triggerall = enemynear(var(58)),StateType = A
triggerall =!InGuardDist
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [60,120]
trigger1 = enemynear(var(58)),Vel X <= 4
trigger2 = P2BodyDist X = [100,160]
trigger2 = enemynear(var(58)),Vel X <= 6

;---------------------------------------------------------------------------
;���i
;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -3, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = P2BodyDist X = [-5,55]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = random <= 250
trigger1 = ifelse(enemynear(var(58)),statetype = S,1,random <= 500)

;���Ⴊ�݋��L�b�N
[State -3, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall =!InGuardDist
triggerall = P2BodyDist X = [40,60]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = random <= 50
trigger1 = ifelse(enemynear(var(58)),statetype = S,1,random <= 500)

;---------------------------------------------------------------------------
;���i
;---------------------------------------------------------------------------
;�O���E�����@�z
[State -3, GOUHU]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall = P2BodyDist X = [-5,50]
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 200 && ifelse(enemynear(var(58)),statetype = C,1,random <= 500)
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = random <= 300 && ifelse(enemynear(var(58)),statetype = C,1,random <= 500)

;�O���W�����v(���i)
[State -3, ]
Type = ChangeState
value = 32
triggerall = var(59) = 1
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall = P2BodyDist X = [-5,60]
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 200 && ifelse(enemynear(var(58)),statetype = C,1,random <= 500)
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = random <= 300 && ifelse(enemynear(var(58)),statetype = C,1,random <= 500)

;�O���W�����v(���i)
[State -3,]
Type = ChangeState
value = 34
triggerall = var(59) = 1
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall = P2BodyDist X = [40,100]
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 200 && ifelse(enemynear(var(58)),statetype = C,1,random <= 500)
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = random <= 300 && ifelse(enemynear(var(58)),statetype = C,1,random <= 500)

;---------------------------------------------------------------------------
;��i
;---------------------------------------------------------------------------
;�ߋ����������p���`
[State -3, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = Random <= 200 || enemynear(var(58)),movetype = H
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-10,20]

;���Ⴊ�ݎ�p���`
[State -3, Stand Strong Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-10,50]

;������������L�b�N
[State -3, s Light Kick]
type = ChangeState
value = 230
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-10,60]

;������������p���`
[State -3, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = S
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [20,50]

;�������������p���`
[State -3, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 50
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [40,60]

;�������������L�b�N
[State -3, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59)
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 50
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [50,80]

;---------------------------------------------------------------------------
;��ѓ���֘A
;---------------------------------------------------------------------------
;�S�����E�ŕ���
[State -3, YAMIBARAI]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A 
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = numhelper(1010) = 0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X >= 200
trigger1 = Random <= 100
trigger1 = var(54) := 1

;---------------------------------------------------------------------------
;���̑�����
;---------------------------------------------------------------------------
;��S�E�󎮁E�Ռ� �z
[State -3, KOTOTSUKI]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = var(57) = [1,6]
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [80,200]
trigger1 = Random <= 50
trigger1 = var(54) := 1

;������������������������������������������������������������������������������������
;�������A�Z�U��(��)
;������������������������������������������������������������������������������������
;�΂߃W�����v��L�b�N
[State -3, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || stateno = 50
trigger1 = Vel Y > 0 && (p2bodydist X = [-35,35])
trigger1 = enemynear(var(58)),statetype != A ;��Βn
trigger1 = enemynear(var(58)),movetype != H

;�W�����v���p���`
[State -3, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || enemynear(var(58)),movetype = H
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || stateno = 50
trigger1 = Vel Y > 0
trigger1 = p2bodydist X = [-35,40]
trigger1 = enemynear(var(58)),statetype != A ;��Βn
trigger2 = Vel X >= 0
trigger2 = P2BodyDist X = [-10,40]
trigger2 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]
trigger2 = enemynear(var(58)),StateType = A
trigger2 = enemynear(var(58)),MoveType != H

;�W�����v��p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = random <= (200 + (var(57) * 100))
triggerall = statetype = A
triggerall = random <= 600
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || stateno = 50
trigger1 = Vel X >= 0
trigger1 = P2BodyDist X = [-10,30]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),MoveType != H

;�O���E�ޗ����Ƃ�
[State -3, NARAKU]
type = ChangeState
value = 650
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 800
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || stateno = 50
trigger1 = Vel Y > 0
trigger1 = p2bodydist X = [-35,40]
trigger1 = enemynear(var(58)),movetype != H

;�W�����v���L�b�N
[State -3, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || stateno = 50
trigger1 = P2BodyDist X = [-10,80]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),MoveType != H

;������������������������������������������������������������������������������������
;�ړ�
;������������������������������������������������������������������������������������
;�_�b�V��
[State -3, RUN]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(57) >= 1
triggerall = Random <= (200 + (var(57) * 100))
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= 100

;����
[State -3, Walk]
type = ChangeState
value = 21
triggerall = var(59) >= 1
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = enemynear(var(58)),StateNo != [5120,5299]
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),StateType != A
triggerall = stateno != 21
triggerall = ctrl || (stateno = [20,22])
trigger1 = P2BodyDist X <= 140
trigger1 =!InGuardDist || enemynear(var(58)),facing = facing
trigger2 = P2BodyDist X > 180

;�W�����v(�߂���_��)
[State -3, Jump]
type = ChangeState
value = 30
triggerall = Var(59) = 1
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22])
trigger1 = p2bodydist X = [5,25]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),movetype = I
trigger1 = frontedgebodydist > 60
trigger1 = Random <= 200

[State -3, �������W�����v]
Type = ChangeState
value = 39
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= 1000/var(57)
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22])
triggerall = enemynear(var(58)),movetype != H
triggerall = !enemy,numproj 
triggerall = enemynear(var(58)),StateNo!=[5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22])
triggerall = P2BodyDist X = [0,35]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = Random <= 200

[State -3, �O�W�����v]
Type = ChangeState
value = 30
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= 1000/var(57)
triggerall = StateType != A
triggerall = !inguarddist
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),StateNo!=[5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22])
trigger1 = P2BodyDist X = [130,160]
trigger1 = Random <= 50

[State -3, �O���W�����v]
Type = ChangeState
value = 32
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= 1000/var(57)
triggerall = StateType != A
triggerall = enemynear(var(58)),movetype != H
triggerall = !enemy,numproj 
triggerall = enemynear(var(58)),StateNo!=[5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22])
trigger1 = P2BodyDist X = [-5,60]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = Random <= 200

[State -3,�O���W�����v]
Type = ChangeState
value = 34
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= 1000/var(57)
triggerall = StateType != A
triggerall = enemynear(var(58)),movetype != H
triggerall = !enemy,numproj 
triggerall = !inguarddist
triggerall = enemynear(var(58)),StateNo!=[5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2BodyDist X = [40,120]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = Random <= 250

[State -3, �O��W�����v]
Type = ChangeState
value = 36
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = enemynear(var(58)),StateNo!=[5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = !inguarddist
trigger1 = enemynear(var(58)),movetype != H
trigger1 = P2BodyDist X = [120,225]
trigger1 = Random <= 1000/var(57)
trigger1 = Random <= 250

[State -3, ��W�����v]
Type = ChangeState
value = 31
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22])
triggerall = !inguarddist
triggerall = enemynear(var(58)),movetype != H
triggerall = (enemynear(var(58)),MoveType != A && enemynear(var(58)),statetype != A)
triggerall = P2BodyDist X = [60,120]
trigger1 = Random <= floor(Var(57)/2)

[State -3,���W�����v]
Type = ChangeState
value = 37
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = !inguarddist
triggerall = enemynear(var(58)),movetype != H
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2BodyDist X = [60,90]
trigger1 = Random <= floor(Var(57)/2)

;�o�b�N�X�e�b�v
[State -3, Back Step]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 60
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [80,140]
trigger1 = enemynear(var(58)),movetype = I
trigger1 = enemynear(var(58)),statetype != A
trigger1 = EnemyNear(var(58)),facing != facing
trigger1 =!Enemy,NumProj
trigger1 = Random <= 50

;�O���E�ޗ����Ƃ�(�e��X�e�b�v��)
[State -3, NARAKU]
type = ChangeState
value = 650
triggerall = var(59)
triggerall = var(57) >= 1
triggerall = RoundState = 2
triggerall = statetype = A
trigger1 = stateno = 105

;������������������������������������������������������������������������������������
;���̑�
;������������������������������������������������������������������������������������
;����(���x���A�b�v�p)
[State -3, Taunt]
type = ChangeState
value = 199
triggerall = var(59)
triggerall = var(57) < 8 || var(56) < 10
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= 100
triggerall = statetype != A
triggerall = !inguarddist
triggerall = !enemy,numproj
triggerall = stateno != 199 && prevstateno != 199
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2bodydist X >= 80
trigger1 = enemynear(var(58)),StateType = L
trigger2 = P2bodydist X >= 120
trigger2 = enemynear(var(58)),StateType = A
trigger2 = enemynear(var(58)),movetype = H

;---------------------------------------------------------------------------
;���x���A�b�v�V�X�e��
[State -3]
Type = VarAdd
triggerall = var(59)
triggerall = Var(57) = [1,7]
triggerall = var(55) >= 1
trigger1 = stateno = 199 && time = 1 ;����
var(57) = 1
IgnoreHitPause = 1

[State -3]
Type = VarAdd
triggerall = var(59)
triggerall = Var(56) = [1,9]
triggerall = var(55) >= 1
trigger1 = stateno = 199 && time = 1 ;����
var(56) = 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;���~�b�^�[(�K��ȏ�̃��x���ɐݒ肷��Ƌ����I��AI��OFF�ɂȂ�)
[State -3]
Type = VarSet
trigger1 = var(57) > 8
trigger2 = Var(56) > 10
var(57) = 0

;���~�b�^�[2(�������x�������������ꍇ�A���x����1�ɐݒ�)
[state -3, ]
Type = VarSet
trigger1 = Var(56) < 1
var(56) = 1

;�������x�A���A�b�v
[State -3]
Type = VarSet
triggerall = Var(56) < 10
trigger1 = var(57) >= 9
var(56) = 10

;---------------------------------------------------------------------------
;AI�pp2name
;---------------------------------------------------------------------------
;�ʏ�
[State -3,]
Type = VarSet
triggerall = var(59)
trigger1 = 1
fvar(21) = 0

;����n��󂯐g����1(����)
[State -3,]
Type = VarSet
triggerall = var(59)
trigger1 = enemynear(var(58)),authorname = "ahuron" || enemynear(var(58)),authorname = "or2=3"
trigger2 = enemynear(var(58)),authorname = "jin"
trigger3 = enemynear(var(58)),authorname = "Chin-ya"
trigger4 = enemynear(var(58)),authorname = "kayui uma"
Trigger4 = enemynear(var(58)),name ="anna" || enemynear(var(58)),name ="henri" || enemynear(var(58)),name ="mora" || enemynear(var(58)),name ="saya" || enemynear(var(58)),name ="dragon"
trigger5 = enemynear(var(58)),authorname = "aoba"
trigger6 = enemynear(var(58)),authorname = "Mikita"
trigger7 = enemynear(var(58)),authorname = "jfct555"
fvar(21) = 1

;����n��󂯐g����2
[State -3,]
Type = VarSet
triggerall = var(59)
trigger1 = enemynear(var(58)),authorname = "ikaruga"
trigger2 = enemynear(var(58)),authorname = "warusaki3"
trigger3 = enemynear(var(58)),authorname = "Gonzo-"
fvar(21) = 2

;---------------------------------------------------------------------------
;�s������
[State -3,]
Type = VarSet
triggerall = var(59)
trigger1 = 1
fvar(22) = 0

;�s�������
[State -3,]
Type = VarSet
triggerall = var(59)
trigger1 = enemynear(var(58)),stateno = [5200,5201]
trigger2 = enemynear(var(58)),stateno = 702
trigger2 = enemynear(var(58)),authorname = "ahuron" || enemynear(var(58)),authorname = "or2=3"
trigger3 = enemynear(var(58)),stateno = 52000
fvar(22) = 1

;���̉��A��s�ȏ�󂯂鎖�B
