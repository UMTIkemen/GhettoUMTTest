
[Remap]
x = x
y = y
z = b
a = a
b = z
c = c
s = s;-| ���K�E�Z |--------------------------------------------------------
;�����ɂ͒��K�E�Z���L�q���Ă��������A�������O���uname =�v���ɏ����܂���
;�R�}���h�͐�΂Ɉ�������̂ɂ��Ă��������B
;�J���t�[�}���͎�p���`�Ƌ��p���`�ŋZ���o����悤�ɓ������O�̃R�}���h��
;���e����Ƌ��ɂȂ��Ă��܂��B
;�utime=20�v�Ə������ƂŁu�R�}���h��20�t���[���ȓ��ɓ��́v�Ɛݒ�ł��܂��B

;-| Default Values |-------------------------------------------------------
[Defaults]
 Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

 Default value for the "buffer.time" parameter of a Command. Minimum 1,
 maximum 30.
command.buffer.time = 1

[Command]
name = "sp70"
command = ~B, D, DB, x+y
time = 20

[Command]
name = "sp70"
command = ~B, D, DB, x+z
time = 20

[Command]
name = "sp70"
command = ~B, D, DB, y+z
time = 20

[Command]
name = "sp70"
command = ~B, D, DB, b
time = 20

[Command]
name = "sp60"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "sp60"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "sp60"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "sp60"
command = ~D, DB, B, b
time = 20

[Command]
name = "sp50"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "sp51"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "sp51"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "sp51"
command = ~D, DF, F, b
time = 20

;-| �K�E�Z |------------------------------------------------------

[Command]
name = "sp20"
command = ~F, D, DF, x

[Command]
name = "sp21"
command = ~F, D, DF, y

[Command]
name = "sp22"
command = ~F, D, DF, z

[Command]
name = "sp30"
command = ~D, DB, B, x

[Command]
name = "sp31"
command = ~D, DB, B, y

[Command]
name = "sp32"
command = ~D, DB, B, z

[Command]
name = "sp1"
command = ~D, DF, F, x

[Command]
name = "sp1"
command = ~D, DF, F, y

[Command]
name = "sp10"
command = ~D, DF, F, z

[Command]
name = "Mjump"
command = $D,~3U
time = 20

;-| �Q�񉟂��Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
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

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdUF"
command = /$UF
time = 1

[Command]
name = "holdDF"
command = /$DF
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdUB"
command = /$UB
time = 1

[Command]
name = "holdDB"
command = /$DB
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "UF"
command = $UF
time = 1

[Command]
name = "DF"
command = $DF
time = 1

[Command]
name = "UB"
command = $UB
time = 1

[Command]
name = "DB"
command = $DB
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U" 
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "Sjump"
command = ~2U
time = 99

[Command]
name = "Mjump"
command = $D,~2U
time = 20

[Command]
name = "Ljump"
command = $D,$U
time = 15


; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;---------------------------------------------------------------------------
;�O��
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 3025
triggerall = power >= 1000
triggerall = command = "sp70"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�R���r
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "sp60"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�Ԃ��܂�(��)
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 3005
triggerall = power >= 1000
triggerall = command = "sp50" || command = "sp51"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
;---------------------------------------------------------------------------
;�Ԃ��܂�
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "sp50"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�Ԃ��܂�(��)
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 3002
triggerall = power >= 1000
triggerall = command = "sp51"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;===========================================================================

;---------------------------------------------------------------------------
;�K�[�L����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = numhelper(4010) = 0
triggerall = command = "sp20"||command = "sp21"||command = "sp22"
triggerall = statetype != A
trigger1 = (stateno = [150,153])

;---------------------------------------------------------------------------
;�n���O�h�}��1
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1030
triggerall = command = "sp30"
triggerall = numhelper(1033) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�n���O�h�}��2
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1031
triggerall = command = "sp31"
triggerall = numhelper(1033) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�n���O�h�}��3
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1032
triggerall = command = "sp32"
triggerall = numhelper(1033) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�_���i1
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1010
triggerall = command = "sp20"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�_���i2
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1011
triggerall = command = "sp21"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�_���i3
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1012
triggerall = command = "sp22"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�_���i��
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1013
triggerall = command = "sp20"||command = "sp21"||command = "sp22"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;�n�W�L
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "sp1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�n�W�L��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1005
triggerall = command = "sp10"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420 ;Except for sweep kick
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;��荞��
[State -1, Run Back]
type = ChangeState
value = 300
triggerall = numhelper(301) = 0
triggerall = numhelper(4010) = 0
triggerall = command = "x+y+z" || command = "b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;===========================================================================
;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�c��(�΂ߑO)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2001
trigger1 = command = "a"
trigger1 = command = "holdfwd" && stateno = 40

;---------------------------------------------------------------------------
;�c��(�΂ߑO)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2001
triggerall = command = "a"
triggerall = statetype != A
triggerall = command = "holdfwd" && command = "holddown" || command = "holdfwd" && command = "holdup"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�c��(�΂ߌ��)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2003
trigger1 = command = "a"
trigger1 = command = "holdback" && stateno = 40

;---------------------------------------------------------------------------
;�c��(�΂ߌ��)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2003
triggerall = command = "a"
triggerall = statetype != A
triggerall = command = "holdback" && command = "holddown" || command = "holdback" && command = "holdup"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�c��(��)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2002
trigger1 = command = "a"
trigger1 = command = "holdup" && stateno = 40

;---------------------------------------------------------------------------
;�c��(��)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2002
triggerall = command = "a"
triggerall = command = "holddown" || command = "holdup"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�c��(���)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2004
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;---------------------------------------------------------------------------
;�c��(��)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2005
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;�c��(�j���[�g����)
[State -1, Standing Strong Kick]
type = ChangeState
value = 2000
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger3 = stateno = 100 || stateno = 105
trigger4 = stateno = 195 || stateno = 5201

;===========================================================================
;---------------------------------------------------------------------------
;�^�o�R
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V��������
[State -1, Stand Light Punch]
type = ChangeState
value = 201
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100 || stateno = 105

;---------------------------------------------------------------------------
;������
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�����R��
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V��������
[State -1, Stand Light Punch]
type = ChangeState
value = 211
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100 || stateno = 105

;---------------------------------------------------------------------------
;������
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�e
[State -1, Standing Strong Kick]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V��������
[State -1, Stand Light Punch]
type = ChangeState
value = 221
trigger1 = command = "z"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100 || stateno = 105

;---------------------------------------------------------------------------
;������
[State -1, Standing Strong Kick]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V�����Ⴊ�ݎ�
[State -1, Stand Light Punch]
type = ChangeState
value = 402
trigger1 = command = "x"
trigger1 = command = "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100 || stateno = 105

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time > 7

;---------------------------------------------------------------------------
;�_�b�V�����Ⴊ�ݒ�
[State -1, Stand Light Punch]
type = ChangeState
value = 411
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100 || stateno = 105

;---------------------------------------------------------------------------
;���Ⴊ�ݒ�
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V�����Ⴊ�݋�
[State -1, Stand Light Punch]
type = ChangeState
value = 421
trigger1 = command = "z"
trigger1 = command = "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100 || stateno = 105

;---------------------------------------------------------------------------
;���Ⴊ�݋�
[State -1, Crouching Strong Kick]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆒�
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆋�
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

