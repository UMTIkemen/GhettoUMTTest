
;------------------------------------------------------------------------
;�n�C�W�����v
[Command]
name = "jump"    
command = D, $U
time = 20

[Command]
name = "Engun"    
command = a, a
time = 20

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
name = "ichigeki"
command = x+y+z

[Command]
name = "roman"
command = a+b+y

[Command]
name = "dead"
command = /F,y+z
time = 1

[Command]
name = "dead"
command = /F,c
time = 1

[Command]
name = "recover";Required (do not remove)
command = z
time = 1
[Command]
name = "recover";Required (do not remove)
command = x
time = 1
[Command]
name = "recover";Required (do not remove)
command = y
time = 1

[Command]
name = "dust";Required (do not remove)
command = y+b
time = 1

[Command]
name = "�����W�����v"
command = U, F
time = 10

[Command]
name = "holdSZ"
command = /y+z
time = 1

[Command]
name = "holdC"
command = /c
time = 1

[Command]
name = "holdP"
command = /x
time = 1

[Command]
name = "holdK"
command = /a
time = 1

[Command]
name = "holdHS"
command = /b
time = 1

[Command]
name = "holdS"
command = /y
time = 1

[Command]
name = "holdZ"
command = /z
time = 1

[Command]
name = "foltlessZ"
command = /z
time = 1

[Command]
name = "burst"
command = c+a
time = 1

[Command]
name = "burst"
command = c+b
time = 1

[Command]
name = "burst"
command = c+x
time = 1

[Command]
name = "burst"
command = c+y
time = 1

[Command]
name = "burst"
command = /$F,z
time = 1

[Command]
name = "justDS"
command = B
time = 1

[Command]
name = "justDC"
command = DB
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


;�ǉ�
[Command]
name = "holdUF"
command = /UF
time = 1

[Command]
name = "holdUB"
command = /UB
time = 1

[Command]
name = "holdU"
command = /U
time = 1

[Command]
name = "holdDB"
command = /DB
time = 1

[Command]
name = "holdDF"
command = /DF
time = 1

[Command]
name = "holdD"
command = /D
time = 1

[Command]
name = "holdB"
command = /B
time = 1

[Command]
name = "holdF"
command = /F
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1


;-| �ꌂBASARA�Z |--------------------------------------------------------
[Command];�M���I�啬��
name = "�啬��"
command = ~D, B, D, F, z
time = 35

;-| BASARA�Z |--------------------------------------------------------

[Command];��؉��ԉ�
name = "��؉�"
command = ~D, B, D, B, z
time = 28

[Command];�ܔM���P�e
name = "���P�e"
command = ~D, F, D, F, z
time = 28

;-| �K�E�Z |------------------------------------------------------
[Command];�Չ��E��
name = "�Ո�"
command = ~D, DF, F, x

[Command];�Չ��E��
name = "�Փ�"
command = ~D, DF, F, y

[Command];�Չ��E�Q
name = "�ՎQ"
command = ~F, D, DF, y

[Command];���
name = "���"
command = ~D, B, y

[Command];��΁E�Ƃǂ�
name = "�Ƃǂ�"
command = ~D, B, y

[Command];�鐝��
name = "�鐝��"
command = ~D, B, z


;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

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

;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1


; Don't remove the following line. It's required by the CMD standard.
;-------------------------
;[Statedef -1]
;�Ӗ��F
;	�R�}���h���͂��\�Ȃ�Ώ펞���s�����state
[Statedef -1] ;���̈�s�͍폜���Ȃ��ŉ�����

;===========================================================================
;                                 �ꌂBASARA�Z
;===========================================================================
;�M���I�啬��
[State -1, �啬��]
type = ChangeState
value = 3500
triggerall = command = "�啬��"
triggerall = var(24) > 1
triggerall = !var(13)
trigger1 = statetype != A
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 220
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900

;---------------------------------------------------------------------------
;�ꌂBASARA��������
[State -1, ichigeki]
type = ChangeState
value = 3499
triggerall = command = "b"||command = "ichigeki"
triggerall = fvar(30) >= 2
triggerall = var(24) = 0
trigger1 = statetype != A
trigger1 = ctrl || fvar(0)

;===========================================================================
;                                 BASARA�Z
;===========================================================================
;��؉��ԉ�
[State -1, ��؉�]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "��؉�"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900

;�ܔM���P�e
[State -1, ���P�e]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "���P�e"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900

;===========================================================================
;                                 �K�E�Z
;===========================================================================
;---------------------------------------------------------------------------------------------
;�Չ��E��
[State -1, �Ո�]
type = ChangeState
value = 1000
triggerall = command = "�Ո�"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900

;---------------------------------------------------------------------------------------------
;�Չ��E�Q
[State -1, �ՎQ]
type = ChangeState
value = 1200
triggerall = command = "�ՎQ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900
trigger13 = stateno = [1005,1006]
trigger13 = animelemtime(5) >= 0
trigger13 = animelemtime(9) <= 0
trigger14 = stateno = [1100,1105]
trigger14 = animelemtime(7) >= 0
trigger14 = animelemtime(11) <= 3

;---------------------------------------------------------------------------------------------
;�󒆌Չ��E�Q
[State -1, �ՎQ]
type = ChangeState
value = 1250
triggerall = command = "�ՎQ"
trigger1 = statetype = A
trigger1 = ctrl||(stateno=[101,102])&&time > 6
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620

;---------------------------------------------------------------------------------------------
;�Չ��E��
[State -1, �Փ�]
type = ChangeState
value = 1100
triggerall = command = "�Փ�"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900

;---------------------------------------------------------------------------------------------
;�Չ��E��h����
[State -1, �Փ�]
type = ChangeState
value = 1105
triggerall = command = "�Փ�"
triggerall = stateno = [1005,1006]
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(9) <= 0

;---------------------------------------------------------------------------------------------
;���
[State -1, ���]
type = ChangeState
value = 1300
triggerall = command = "���"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900

;---------------------------------------------------------------------------------------------
;��΁E�Ƃǂ�
[State -1, �Ƃǂ�]
type = ChangeState
value = 1305
triggerall = command = "�Ƃǂ�"
trigger1 = stateno = 1300
trigger1 = animelemtime(4) > 1
trigger1 = animelemtime(13) < 0

;---------------------------------------------------------------------------------------------
;�鐝��
[State -1, �鐝��]
type = ChangeState
value = 1400
triggerall = command = "�鐝��"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 260
Trigger11 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger12 = stateno = 3900
trigger13 = movecontact
trigger13 = stateno = [1005,1006]
trigger13 = animelemtime(5) >= 0
trigger13 = animelemtime(9) <= 0

;---------------------------------------------------------------------------------------------
;�󒆎鐝��
[State -1, �鐝��]
type = ChangeState
value = 1450
triggerall = command = "�鐝��"
trigger1 = statetype = A
trigger1 = ctrl||(stateno=[101,102])&&time > 6
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact

;===========================================================================
;                                 �V�X�e���֘A
;===========================================================================

;------------------------------------------------------------------------------------
;�K�[�L����
[State -1, dead angle attack]
type = ChangeState
value = 910
triggerall = command = "dead"
triggerall = Power >= 1000
triggerall = command != "holddown"
trigger1 = Stateno = 150
trigger2 = Stateno = 151
trigger3 = Stateno = 152
trigger4 = Stateno = 153
;-------------------------------------------------------------------------------------
[State -1, FD]
type = varset
var(26) = 1
trigger1 = command = "holdback" 
trigger1 = command = "holdC"
trigger1 = (StateNo = [120,165])||movetype != H
trigger1 = power > 10
ignorehitpause = 1


[State -1, FD]
type = varset
var(26) = 2
trigger1 = command = "holdback" 
trigger1 = command = "holdP" && command = "holdS"
trigger1 = (StateNo = [120,165])||movetype != H
trigger1 = power > 10
ignorehitpause = 1


[state 120x,]
type = varset
triggerall = var(45) <= 2
triggerall = power > 10
triggerall = var(26)
triggerall = command = "holdback" 
trigger1 = ctrl || fvar(0) || (stateno = 52 && time > 0)||stateno = 100||stateno = 103
var(45)  = 2
ignorehitpause = 1

[State -1, FD];�p�[�t�F�N�g
type = ChangeState
value = 120
triggerall = var(45) <= 2
triggerall = power > 10
triggerall = var(26)
triggerall = command = "holdback" 
trigger1 = ctrl || fvar(0) || (stateno = 52 && time > 0)||stateno = 100||stateno = 103
;------------------------------------------------------------------------------------
;�p�[�t�F�N�g
[State -1, foltless]
type = ChangeState
value = 120
triggerall = var(26)
triggerall = command != "c"
triggerall = command != "start"
triggerall = Power > 10
trigger1 = ctrl || fvar(0)
trigger1 = stateno !=[101,102];�󒆃_�b�V����
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 450 || stateno = 650
trigger4 = var(59) = 0
trigger4 = time <= 2
;------------------------------------------------------------------------------------
;���O�K�[�h
[state -1,tyokuga]
type = varset
triggerall = !var(35)
trigger1 = command = "justDS" || command = "justDC"
trigger2 = Var(26)
trigger2 = Numhelper(11040)= 0
var(35)  = 30
ignorehitpause = 1
;---------------------------------------------------------------------------
;�u�[�X�g�_�b�V��
[State -1, Boost]
type = ChangeState
value = 3900
triggerall = var(5)
triggerall = command = "holdfwd"
trigger1 = stateno = 291 && movehit
trigger2 = stateno = 1006 && movehit


;===========================================================================
;                             ���R�V�X�e��
;===========================================================================
;���R�v��
[state 7000,]
type = varset
triggerall = roundstate = 2
triggerall = !var(40)
triggerall = movetype != H
triggerall = GameTime > 60
trigger1 = command = "Engun"
trigger2 = fvar(11) >= 100
var(40) = 1


;���R�A�V�X�g
[state 210]
type = Helper
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = stateno = 3100
triggerall = power >= 1000
triggerall = ctrl || stateno>0
trigger1 = time <= 56
trigger1 = fvar(11) < 100
trigger2 = time <= 37
trigger2 = fvar(11) = 100
trigger3 = time >= 43
trigger3 = time <= 56
trigger3 = fvar(11) = 100
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2250
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1


;���R�A�V�X�g2
[state 210]
type = Helper
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = stateno = 3100
triggerall = power >= 1000
triggerall = fvar(11) =100
triggerall = time >= 38
triggerall = time <= 42
trigger1 = ctrl || stateno>0
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2251
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1


;���R�J�E���^�[
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = alive
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = statetype != L
trigger1 = movetype = H&&(stateno!=[120,160])
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2265
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
pausemovetime = 999999
ignorehitpause = 1


;�G���A�����R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H
triggerall = !numhelper(2000)
triggerall = command = "a"
trigger1 = var(8)
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2263
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;5���R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H||(stateno = [120,139])
triggerall = stateno != 5120
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command != "holddown"
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2200
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 55       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;6���R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H||(stateno = [120,139])
triggerall = stateno != 5120
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
trigger1 = command != "holddown"
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2201
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 55       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;4���R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H||(stateno = [120,139])
triggerall = stateno != 5120
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
trigger1 = command != "holddown"
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2202
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 55       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;2���R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H||(stateno = [120,139])
triggerall = stateno != 5120
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "holddown"
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2260
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;3���R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H||(stateno = [120,139])
triggerall = stateno != 5120
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "holddown"
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2261
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;1���R
[state 210]
type = Helper
triggerall = ctrl || stateno>0
triggerall = roundstate = 2
triggerall = helper(10000),numexplod(2904) = 0&&helper(10000),Numexplod(2905) = 0&&helper(10000),Numexplod(2906) = 0&&helper(10000),Numexplod(2909) = 0
triggerall = var(40)=2&&fvar(10)
triggerall = movetype != H||(stateno = [120,139])
triggerall = stateno != 5120
triggerall = !numhelper(2000)
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
trigger1 = command = "holddown"
name = "Sarutobi Sasuke"
ID = 2000
pos = -20, 0
postype = back
facing = 1
stateno = 2262
Helpertype = player
keyctrl = 0
ownpal = 1
size.ground.back = 15
size.ground.front = 16
size.air.back = 13
size.air.front = 13
height           = 60       ;���щz������̂��߂̃L�����̍���
head.pos         = 5, -80  ;BindToTarget�̎��ɕK�v�ȓ��̍��W
mid.pos          = 0, 54  ;BindToTarget�̎��ɕK�v�ȑ̒��S�̍��W
supermovetime = 0
pausemovetime = 999999

;---------------------------------------------------------------------------
;�O���C�u�V���[�g
[State -1, dust attack]
type = ChangeState
value = 850
triggerAll = command = "holdfwd" && command = "holddown" && command = "c"||command = "holddown" && command = "c"||command = "holdfwd" && command = "holddown" && (command = "z"&&command = "y")||command = "holddown" && (command = "z"&&command = "y")
trigger1 = statetype != A
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 103
trigger3 = stateno = 100
Trigger4 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger5 = stateno = 3900
;---------------------------------------------------------------------------
;�n�C�W�����v
[State -1]
type = ChangeState
value = 900
triggerall = command = "jump"
triggerall = statetype != A
trigger1 = ctrl || fvar(0)
trigger2 = stateno = [100,103]
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl || fvar(0)
;---------------------------------------------------------------------------
[State -1, air dash];�󒆃_�b�V��
type = ChangeState
value = 101
triggerall = command = "FF"
triggerall = command != "holdback" 
triggerall = Var(4) = 0
triggerall = pos y <= -50
triggerall = statetype = A
triggerall = Var(2) <= 1||Var(2) = 5
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 600
trigger2 = movecontact
Trigger2 = Var(8)
trigger3 = stateno = 610
trigger3 = movecontact
Trigger3 = Var(8)
trigger4 = stateno = 620
trigger4 = movecontact
;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || fvar(0)
;---------------------------------------------------------------------------
[State -1, air dash];�󒆌�_�b�V��
type = ChangeState
value = 102
triggerall = command = "BB"
triggerall = command != "holdfwd" 
triggerall = Var(4) = 0
triggerall = statetype = A
triggerall = Var(2) <= 1||Var(2) = 5
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 600
trigger2 = movecontact
Trigger2 = Var(8)
trigger3 = stateno = 610
trigger3 = movecontact
Trigger3 = Var(8)
trigger4 = stateno = 620
;---------------------------------------------------------------------------
;������΂��U��
[State -1, Stand Strong Punch]
type = ChangeState
value = 290
TriggerAll = command = "c"||(command = "z"&&command = "y")
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl|| fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
Trigger4 = (HitOver && (StateNo = 5001 || StateNo = 5011)) || (StateNo = 5120 && AnimTime = 0)
trigger5 = stateno = 3900
;---------------------------------------------------------------------------
;�󒆓���
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = command = "z"
triggerall = p2statetype = A
triggerall = ctrl || fvar(0)
triggerall = statetype = A
triggerall = p2movetype != H
Triggerall = !Var(8)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 38
trigger1 = P2bodyDist Y >= -30
trigger1 = P2bodyDist Y <= 30
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 38
trigger2 = P2bodyDist Y >= -30
trigger2 = P2bodyDist Y <= 30
;---------------------------------------------------------------------------
;����
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl || fvar(0)
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X <= 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X <= 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;==============================================================================
; �ʏ�U���Z
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ��������]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command != "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 220
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ��������]
type = ChangeState
value = 260
triggerall = command = "z"
triggerall = command != "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 220
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ������]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl|| fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = animelemtime(5) >= 0
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ������]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ������]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ����]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ���Ⴊ�ݎ�]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = stateno = 400
trigger5 = animelemtime(5) >= 0
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ���Ⴊ�ݒ�]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = movecontact
trigger6 = stateno = 210
trigger7 = stateno = 3900
;------------------------------------------------------------------------------
[State -1, ���Ⴊ�݋�]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || fvar(0)
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 220
trigger9 = stateno = 3900
;---------------------------------------------------------------------------
;�G���A���X�p�C�N
[State -1, Jump dust]
type = ChangeState
value = 650
triggerall = command = "z"
triggerall = command = "holddown"
Triggerall = Var(8)
trigger1 = statetype = A
trigger1 = ctrl || fvar(0)||(stateno=[101,102])&&time > 6
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;------------------------------------------------------------------------------
[State -1, �W�����v��]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl || fvar(0)||(stateno=[101,102])&&time > 6
trigger2 = stateno = 600
trigger2 = animelemtime(7) >= 0
trigger3 = stateno = 600
trigger3 = movecontact
Trigger3 = !Var(8)
trigger4 = stateno = 610
trigger4 = movecontact
trigger5 = stateno = 620
trigger5 = movecontact
Trigger5 = Var(8)
;---------------------------------------------------------------------------
[State -1, �W�����v��]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl || fvar(0)||(stateno=[101,102])&&time > 6
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact
Trigger3 = Var(8)
;---------------------------------------------------------------------------
[State -1, �W�����v��]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl || fvar(0)||(stateno=[101,102])&&time > 6
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
;---------------------------------------------------------------------------
[State 50, 0];��i�W�����v
type = ChangeState
TriggerAll = Var(58) != 1
triggerall = command = "holdup"
triggerall = command != "z"
triggerall = stateno = 50
triggerall = Ctrl = 1
trigger1 = numhelper(6030) = 0
trigger1 = var(2) = 1
trigger2 = var(48) = 3
value = 45
ctrl = 1
;---------------------------------------------------------------------------
;�󒆃n�C�W�����v�L�����Z��
[State -1, Air Jump cansel]
type = varset
triggerall = command = "jump"
triggerall = statetype = A
triggerall = var(2) <= 1
trigger1 = stateno = 600
trigger1 = movecontact
trigger2 = stateno = 610
trigger2 = movecontact
v = 3
value = 1
ignorehitpause = 1

;�󒆃W�����v�L�����Z��
[State -1, Air Jump cansel]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(2) <= 1
trigger1 = stateno = 600
trigger1 = movecontact
trigger2 = stateno = 610
trigger2 = movecontact


;---------------------------------------------------------------------------
;�n�C�W�����v�L�����Z��
[State -1, Jump cansel]
type = ChangeState
value = 900
triggerall = command = "jump"
triggerall = statetype = S
trigger1 = stateno = 210
trigger1 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact

;---------------------------------------------------------------------------
;�W�����v�d����
[State -1, Jump cansel]
type = varset
var(48) = 1
triggerall = command = "holdup"
triggerall = command != "jump"
triggerall = statetype != A
triggerall = stateno != 900
trigger1 = stateno = 210
trigger1 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
ignorehitpause = 1
;---------------------------------------------------------------------------
;�W�����v�L�����Z��
[State -1, Jump cansel]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
