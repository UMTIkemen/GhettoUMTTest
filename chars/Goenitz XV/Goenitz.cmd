; �J���t�[�}���̓��̓R�}���h��`�t�@�C���ł��B
; �R�}���h�̓��̓L�[��ݒ肷��p�[�g�ƁA�Z�����s���邽�߂̏�����ݒ肷��p�[�g�ɕ�����Ă��܂��B
;------------------------------------------------------------------------------
;==============================================================================
; ���̓L�[�̐ݒ�p�[�g
;==============================================================================
;------------------------------------------------------------------------------
;���ݒ�͂��̌`�����܂莖�ł��B�ڍׂ͈ȉ��Q�ƁB
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;���R�}���h�̖��O�F�uname = "***"�v�Ƃ������ɓ���܂��B***�ɕ��������Ă��������B
; �@�@�@�@�@�@�@�@�A���t�@�x�b�g�͑啶���Ə������ł���ʂ���܂��B���{����\�ł��B
;
;���w����@�F�ucommand = ###�v�Ƃ������ɓ���܂��B
;�@�@�@�@�@�@###�ɉ��L�̃L�[��g�ݍ��킹���͂���R�}���h��ݒ肵�Ă��������B
;
;�@�@�����L�[�F�@B, DB, D, DF, F, UF, U, UB�@�i�S�đ啶���Łj
;�@�@�@�@�@�@�@�@B=Back�i��j�ED=Down�i���j�EF=Forward�i�O�j�EU=Up�i��j�ɂȂ��Ă��܂��B
;
;�@�@�{�^���@�F�@a, b, c, x, y, z, s �@�@�@�@�i�S�ď������Łj
; 
;�@�����ꕶ��
;
;�@�@�X���b�V���i / �j�F�{�^�����������ςȂ��ɂ���ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = /F�@�@�@�i�O�L�[���������܂܂ɂ���j
;�@�@�@�@�@�@�@�@�@�@command = /B,y�@�@�i��L�[���������܂܂x�{�^������́j
;
;�@�@�`���_�@�@�i ~ �j�F�{�^����������鎖��F��������ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = ~c�@�@�@�i�b�{�^���𗣂��j
;�@�@�@�@�@�@�@�@�@�@command = ~DB,DF,x�i�΂ߌ㉺�𗣂��Ď΂ߑO��=>�w�{�^���̏��Ԃɓ��́j
;
;�@�@�@�@�@�@�@�@�����l��ǉ����鎖�ŁA�{�^���𗣂��܂ł̎��ԁA������w���߁x��ݒ�o���܂��B
;�@�@�@�@�@�@�@�@��Fcommand = ~20z�@�@�i�y�{�^�����������܂܂ɂ��A�Q�O�t���[����ɗ����j
;�@�@�@�@�@�@�@�@�@�@command = ~40B,F,b�i��L�[���������܂܂ɂ��A�S�O�t���[����ɗ����đO�L�[=>�a�{�^���̏��Ԃɓ��́j
;
;�@�@�h���@�@�@�i $ �j�F�����̕����L�[�v�f����͏o����悤�ɂ���ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = $U�@�@�@�i��E�΂ߑO��E�΂ߌ��̂ǂꂩ��Ŏn�߂Ă��ǂ��j
;�@�@�@�@�@�@�@�@�@�@command = $DF �@�@�i���E�΂ߑO���E�O�̂ǂꂩ��Ŏn�߂Ă��ǂ��j
;
;�@�@�v���X�@�@�i + �j�F�{�^���𓯎���������ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = a+b �@�@�i�`�{�^���Ƃa�{�^���𓯎��������܂��j
;�@�@�@�@�@�@�@�@�@�@command = x+y+z �@�i�w�{�^���Ƃx�{�^���Ƃy�{�^���𓯎��������܂��j
;�@�@�@�@�@�@�@�@�@�@command = F+c �@�@�i�O�L�[�Ƃb�{�^���𓯎��������܂��j
;
;�@�������̓��ꕶ���́A�g�ݍ��킹�Ďg�p���鎖���\�ł��B
;�@�@�@�@�@�@�@�@��Fcommand = ~30$D,a+b
;�@�@�@�@�@�@�@�@�@�@�@�@�@�i���v�f���R�O�t���[�����߂ė�������ɂ`�{�^���Ƃa�{�^���𓯎��������܂��j
;
;�����̓R�}���h��t���ԁF�utime = &&&�v�Ƃ������ɓ���܂��B�I�v�V�����Ȃ̂ŏȗ��\�B
;�@�@�@�@�@�@�@�@�@�@�@�@&&&�ɃR�}���h����͏o���鎞�Ԃ����Ă��������B���Ԃ̓t���[�����ł��i�P�t���[����1/60�b�j�B
;�@�@�@�@�@�@�@�@��Ftime = 24�@�i���͎�t���Ԃ��Q�S�t���[���i0.4�b�j�ɐݒ�j
;
; ��͎��ۂɓo�^����Ă�����̂��Q�Ƃ��Ă��������B
;==============================================================================

;-| �{�^���z�u |-----------------------------------------------------
;�e�{�^���̔z�u���ȒP�ɕύX�ł��܂��B
;���̃L�����N�^�[�̃{�^���z�u��ς������Ƃ��ȂǂɎg���܂��B
;x = x �� x = a �ɕς���΁Ax��a�ɕς��܂��B

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Command]
Name = "AI0"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI1"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 0
[Command]
Name = "AI2"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI3"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI4"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI5"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI6"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI7"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI8"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI9"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0
[Command]
Name = "AI10"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 0
[Command]
Name = "AI11"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI12"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI13"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI14"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI15"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI16"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI17"
Command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
Time = 0
[Command]
Name = "AI18"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI19"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 0
[Command]
Name = "AI20"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI21"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI22"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI23"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI24"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI25"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI26"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI27"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0
[Command]
Name = "AI28"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 0
[Command]
Name = "AI29"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI30"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI31"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI32"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI33"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI34"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI35"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI36"
Command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI37"
Command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
Time = 0
[Command]
Name = "AI38"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
Time = 0
[Command]
Name = "AI39"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
Time = 0
[Command]
Name = "AI40"
Command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
Time = 0
[Command]
Name = "AI41"
Command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
Time = 0
[Command]
Name = "AI42"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI43"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
Time = 0
[Command]
Name = "AI44"
Command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
Time = 0
[Command]
Name = "AI45"
Command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
Time = 0
[Command]
Name = "AI46"
Command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
Time = 0
[Command]
Name = "AI47"
Command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI48"
Command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
Time = 0
[Command]
Name = "AI49"
Command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
Time = 0
[Command]
Name = "AI50"
Command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
Time = 0

;-| �W���� |-------------------------------------------------------
[Defaults]
; time���L�q���Ȃ������ꍇ�A�ȉ��̒l���Q�Ƃ���܂��B�ŏ��l��1�ł��B
command.time = 15

; buffer.time�̒l�ł��B1�`30�܂Őݒ�ł��܂��B
; ���ʂ�1�ł��B
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| �l�`�w���K�E�Z |--------------------------------------------------------------
[Command]
Name = "Ibuki Nagayo"
Command = ~D, DB, B, D, DB, B, z
Time = 30

[Command]
Name = "CLIMAX"
Command = ~D, DF, F, D, DF, F, c
Time = 30

[Command]
Name = "Fuujin Ibuki"
Command = ~D, DF, F, D, DF, F, x
Time = 25

[Command]
Name = "Fuujin Ibuki"
Command = ~D, DF, F, D, DF, F, y
Time = 25

[Command]
name = "MAX��݂ǂ�����"
command = ~B,DB,D,DF,F,B,DB,D,DF,F, c
time = 45

[Command]
name = "MAX��݂ǂ�����"
command = ~DB, DF, c
time = 45

[Command]
name = "MAX��݂ǂ�����l"
command = ~$D,B,$D,B, x+y
time = 45

[Command]
name = "������������XY"
command = ~D, DF, F, D, DB, B, x+y
time = 30

[Command]
name = "������������C"
command = ~D, DF, F, D, DB, B, a+b
time = 30

[Command]
name = "�ӂ����񂢂Ԃ�"
command = ~D, DF, F, D, DF, F, a+b
time = 30

;------------------------------------------------------------------------------
;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "��݂ǂ�����"
command = ~$D,B,$D,B, x
time = 15

[Command]
name = "��݂ǂ�����"
command = ~$D,B,$D,B, y
time = 15

[Command]
name = "��݂���"
command = ~D, DF, F, D, DB, B, x
time = 25

[Command]
name = "���݂���"
command = ~D, DF, F, D, DB, B, y
time = 25

[Command]
name = "Wanhyo EX"
command = ~F, D, DF, x+y
time = 25

[Command]
name = "Jump Slash EX"
command = ~F, D, DF, a+b
time = 25

[Command]
name = "Yonokaze EX1"
command = ~D, DF, F, x+y
time = 25

[Command]
name = "Yonokaze EX2"
command = ~D, DF, F, a+b
time = 25

[Command]
name = "Yonokaze EX Homing"
command = ~D, D, c
time = 25

[Command]
name = "L SEIRAN EX"
command = ~D, DB, B, x+y
time = 25

[Command]
name = "EX Hyouga"
command = ~D, DB, B, a+b
time = 25

;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------


[Command]
name = "�セ����"
command = ~D, DB, B, F, a
time = 25

[Command]
name = "��������"
command = ~D, DB, B, F, b
time = 25

[Command]
name = "��̂���X"
command = ~D, DF, F, x

[Command]
name = "��̂���Y"
command = ~D, DF, F, y

[Command]
name = "��̂���A"
command = ~D, DF, F, a

[Command]
name = "��̂���B"
command = ~D, DF, F, b

[Command]
name = "Yonokaze c"
command = ~D, DF, F, c

[Command]
name = "Jump Slash Light"
command = ~F, D, DF, a

[Command]
name = "Jump Slash Heavy"
command = ~F, D, DF, b

[Command]
name = "Wanhyo a"
command = ~F, D, DF, x

[Command]
name = "Wanhyo b"
command = ~F, D, DF, y

[Command]
name = "��Ђ傤��"
command = ~D, DB, B, a

[Command]
name = "���Ђ傤��"
command = ~D, DB, B, b

[Command]
name = "�ス�����"
command = ~D, DB, B, x

[Command]
name = "���������"
command = ~D, DB, B, y

[Command]
name = "jump"    
command = D, $U
time = 12

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------
[Command]
name = "FF"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = F, F
time = 10

[Command]
name = "BB"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery" 
command = z
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = y+b
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "MAX"
command = a+y
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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
;-| �����L�[�������ςȂ� |-----------------------------------------------------
[Command]
name = "holdfwd"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$F
time = 1

[Command]
name = "holdback"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$B
time = 1

[Command]
name = "holdup"    ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$U
time = 1

[Command]
name = "holddown"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$D
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
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
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; �Z�����s���邽�߂̏����̐ݒ�i�X�e�[�g�G���g���[�p�[�g�j
;==============================================================================
;------------------------------------------------------------------------------
; �������牺�́u�ǂ̃R�}���h�łǂ̔ԍ��̃X�e�[�g���ǂ����������ŏo���邩�v��ݒ肷��ꏊ�ł��B
;�i�X�e�[�g�Ɋւ��Ă�CNS�t�@�C�����Q�Ɓj
; 
;���ݒ�͊�{�I�ɂ��̌`�ɂȂ�܂��B
;
; [State -1, Label]                  ;�uLabel�v�̕����͂����̃��x���ł��B���ł��ǂ��ł��B����ȊO�͕ύX�s�B
; type = ChangeState                 ;�u�ʂ̃X�e�[�g�ɕύX����v�Ƃ����Ӗ��̃X�e�[�g�R���g���[��
; value = new_state_number           ;�o�������Z�̃X�e�[�g�ԍ������܂�
; trigger1 = command = command_name  ;���̓L�[�ݒ�p�[�g�œo�^�����R�}���h�̖��O���ǂꂩ����܂�
; . . .  (any additional triggers)   ;trigger�i�������w�肷��g���K�[�j��ǉ��o���܂�
;
;��trigger�Ɏg�����{�I�ȏ����i�ʏ�́u�g���K�[�v�ƌĂ΂�Ă��܂��j
;
;   - StateType    - �L�����N�^�[���ǂ̏�Ԃ̎��ɂ��̃X�e�[�g���o���邩�ǂ��������߂��܂��B
;                    S=��������ԁEC=��������ԁEA=�󒆂ɂ����ԁEL=���ɓ|�ꂽ��ԁA�̂S�����܂莖�ł��B
;                    CNS��Statedef�̉��ɂ���uType = *�v�̍��ڂ���Ԃ̈Ӗ��Ȃ̂ŁA��������̃g���K�[�Ŕ��f���܂��B
;
;   - Ctrl         - �R���g���[�����\���s�\���ǂ��炩�̎��ɂ��̃X�e�[�g���o���邩�ǂ��������߂��܂��B
;                    0=�R���g���[���s�\��ԁE1=�R���g���[���\��ԁA�ł����ʏ�� Ctrl = 1 ( = 1 �ȗ��\)����{�B
;
;   - StateNo      - �ʂ̔ԍ��̃X�e�[�g����o���鎖���\�ɂȂ�܂��B
;                    ��������p���ăX�[�p�[�L�����Z�����\�ł��B
;
;   - MoveContact  - �����U��������ɓ����������i�U�����q�b�g�������A�������̓K�[�h���ꂽ���j�ɁA
;                    ���̃X�e�[�g���o���邩�ǂ��������߂��܂��B�Q��ނS�p�^�[������܂��B
;                    MoveContact or MoveContact = 1  �i�U���������������j
;                    !MoveContact or MoveContact = 0 �i�U�����������ĂȂ����j
;                    ��������p���ăX�[�p�[�L�����Z�����\�ł��B
;
;�@����̂S�ȊO�ɂ�����܂����A���̃g���K�[��M.U.G.E.N�{��docs�t�H���_�̒���
;�@�@CNS�h�L�������e�[�V�������Q�Ƃ��Ă��������B
;
;���X�e�[�g�G���g���[�̏���
;
; ChangeState�̓o�^�̏��Ԃ͏d�v�ł��B��ɗ���Η���قǃR�}���h���̗͂D��x�������Ȃ�܂��B
;
; ���p�ɂȂ�܂����A�Ⴆ�΁u�g�����R�}���h��ChangeState�i���_���{�p���`�j�v��
;�u�������R�}���h��ChangeState�i�����_�{�p���`�j�v������ɓo�^�����ꍇ�A
; �Q�[�����ł͏��������o�����Ƃ��Ă��g����������Ė\�����₷���Ȃ��Ă��܂��܂��B
; �h�~���邽�߂ɂ́A�u�g������ChangeState�v���u��������ChangeState�v�������ɓo�^���Ȃ��Ă͂Ȃ�܂���B
;�u���o�[��O�ɓ���ďo������Z�v�Ɓu�����Z�v�̊֌W�Ȃǂ����l�ł��B
;
; ���Ԃ��悭�l���ēo�^���܂��傤�B
;
;��AI(CPU)�͂ǂ������̂�
;MUGEN�̕W��CPU�͑���ɋ߂Â��K���ɍU�����J��o�������Ȃ̂ŁAAI�X�C�b�`�ɂ�鐧�䂪�K�v�Ȃ��Ƃ�����܂��B
;
;��[Statedef -1]�Ƃ́H

; ���̕�����CNS�v���O���~���O�̊g�������́A�펞�Ď��X�e�[�g�ɂȂ�܂��B
; �ǂ̂����Ȃ��Ԃł��ݒ肵���L�q����ɗL���ɂȂ�X�e�[�g�ł��iCNS��[Statedef -2]�Ǝ����悤�ȕ����j�B
;
; �K�v�ȋL�q�ƍs�Ȃ̂ŁA��΂ɏ����Ȃ��ł��������B
;
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];�����̍s�͐�΂ɏ����Ȃ��ł��������B�K�{�̍��ڂł��B

;==============================================================================
;MAX��݂ǂ�����
[State -1, Ibuki Nagayo]
type = Null;ChangeState
Value = 4000
triggerall = var(59) != 1
TriggerAll = Command = "Ibuki Nagayo"
TriggerAll = StateType != A
triggerall = power >= ifelse(Var(23)>0,1000,2000)
Trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 2115 && time = [10,28]
trigger34 = stateno = 1210 && time > 10
trigger35 = stateno = 1255 && time > 10

;CLIMAX
[State -1, CLIMAX]
type = ChangeState
Value = 4200
triggerall = var(59) != 1
TriggerAll = Command = "CLIMAX"
TriggerAll = StateType != A
triggerall = power >= ifelse(Var(23)>0,2000,3000)
Trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 2115 && time = [10,28]
trigger34 = stateno = 3015 && time = [97,107]
trigger35 = stateno = 3111 && time = [170,188]
trigger36 = stateno = 3315 && time = [90,107]
trigger37 = stateno = 4020 && time = [191,220]
trigger38 = stateno = 1210 && time > 10
trigger39 = stateno = 1255 && time > 10

;MAX��݂ǂ�����
[State -1, MAX YAMI]
type = ChangeState
value = 3200
triggerall = var(59) != 1
triggerall = command = "MAX��݂ǂ�����"
triggerall = power >= ifelse(Var(23)>0,1000,3000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;������������XY
[State -1, JISSOUKOKU XY]
type = ChangeState
value = 3100
triggerall = var(59) != 1
triggerall = command = "������������XY"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2115 && time = [10,28]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;������������C
[State -1, JISSOUKOKU C]
type = ChangeState
value = 3150
triggerall = var(59) != 1
triggerall = command = "������������C"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2115 && time = [10,28]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;�ӂ����񂢂Ԃ�
[State -1, IBUKI]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "�ӂ����񂢂Ԃ�"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2115 && time = [10,28]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10
trigger35 = stateno = 2015 && time = [101,134]

;------------------------------------------------------------------------------
;��݂ǂ�����
[State -1, YAMI]
type = ChangeState
value = 3300
triggerall = var(59) != 1
triggerall = command = "MAX��݂ǂ�����l"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
triggerall = statetype != A
triggerall = p2stateno != [120,155]
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;��݂ǂ�����
[State -1, YAMI]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = command = "��݂ǂ�����"
triggerall = power >= ifelse(Var(23)>0,0,1000)
triggerall = statetype != A
triggerall = p2stateno != [120,155]
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 1210 && time > 10
trigger33 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;���݂���
[State -1, S MIZUCHI]
type = ChangeState
value = 2050
triggerall = var(59) != 1
triggerall = command = "���݂���"
triggerall = power >= ifelse(Var(23)>0,0,1000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 1210 && time > 10
trigger33 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;��݂���
[State -1, L MIZUCHI]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "��݂���"
triggerall = power >= ifelse(Var(23)>0,0,1000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 1210 && time > 10
trigger33 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;Wanhyo EX
[State -1, Wanhyo EX]
type = ChangeState
value = 1260
triggerall = var(59) != 1
triggerall = command = "Wanhyo EX"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
triggerall = stateno != 1260
triggerall = stateno != 1210
;triggerall = p2stateno != [120,155]
triggerall = p2stateno != 20
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------
;Jump Slash EX
[State -1, Jump Slash EX]
type = ChangeState
value = 1142
triggerall = var(59) != 1
triggerall = command = "Jump Slash EX"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------
;Yonokaze EX1
[State -1, Yonokaze EX1]
type = ChangeState
value = 1021
triggerall = var(59) != 1
triggerall = command = "Yonokaze EX1"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10

;Yonokaze EX2
[State -1, Yonokaze EX2]
type = ChangeState
value = 1022
triggerall = var(59) != 1
triggerall = command = "Yonokaze EX2"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;Yonokaze EX Homing
[State -1, Yonokaze EX Homing]
type = Null;ChangeState
value = 1024
triggerall = var(59) != 1
triggerall = command = "Yonokaze EX Homing"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]
trigger21 = movecontact && stateno = 1155

;L SEIRAN EX
[State -1, L SEIRAN EX]
type = ChangeState
value = 11000
triggerall = var(59) != 1
triggerall = command = "L SEIRAN EX"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;EX Hyouga
[State -1, EX Hyouga]
type = ChangeState
value = 13500
triggerall = var(59) != 1
triggerall = command = "EX Hyouga"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = movecontact && stateno = 1141
trigger14 = movecontact && stateno = 1142
trigger15 = stateno = 1210 && time > 10
trigger16 = stateno = 1255 && time > 10
trigger17 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------

;�セ����
[State -1, L SOUGA]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "�セ����"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;�セ����
[State -1, L SOUGA]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "�セ����"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1141
trigger10 = movecontact && stateno = 1142

;��������
[State -1, S SOUGA]
type = ChangeState
value = 1550
triggerall = var(59) != 1
triggerall = command = "��������"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;��������
[State -1, S SOUGA]
type = ChangeState
value = 1550
triggerall = var(59) != 1
triggerall = command = "��������"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1141
trigger10 = movecontact && stateno = 1142

;------------------------------------------------------------------------------
;Wanhyo a
[State -1, Wanhyo a]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = command = "Wanhyo a"
triggerall = statetype != A
triggerall = stateno != 1200
triggerall = stateno != 1210
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = movecontact && stateno = 211 && time = [5,10]

;Wanhyo b
[State -1, Wanhyo b]
type = ChangeState
value = 1250
triggerall = var(59) != 1
triggerall = command = "Wanhyo b"
triggerall = statetype != A
triggerall = stateno != 1250
triggerall = stateno != 1255
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------

;Jump Slash Light
[State -1, Jump Slash Light]
type = ChangeState
value = 1140
triggerall = var(59) != 1
triggerall = command = "Jump Slash Light"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;Jump Slash Heavy
[State -1, Jump Slash Heavy]
type = ChangeState
value = 1141
triggerall = var(59) != 1
triggerall = command = "Jump Slash Heavy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------
;��̂���X
[State -1, YONOKAZE X]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "��̂���X"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;��̂���X
[State -1, YONOKAZE X]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "��̂���X"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;��̂���A
[State -1, YONOKAZE A]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = command = "��̂���A"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;��̂���A
[State -1, YONOKAZE A]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = command = "��̂���A"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;��̂���Y
[State -1, YONOKAZE Y]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "��̂���Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;��̂���Y
[State -1, YONOKAZE Y]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "��̂���Y"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;��̂���B
[State -1, YONOKAZE B]
type = ChangeState
value = 1015
triggerall = var(59) != 1
triggerall = command = "��̂���B"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;��̂���B
[State -1, YONOKAZE B]
type = ChangeState
value = 1015
triggerall = var(59) != 1
triggerall = command = "��̂���B"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;Yonokaze c
[State -1, Yonokaze c]
type = Null;ChangeState
value = 1023
triggerall = var(59) != 1
triggerall = command = "Yonokaze c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = stateno = 1210 && time > 10
trigger18 = stateno = 1255 && time > 10
trigger19 = movecontact && stateno = 211 && time = [5,10]
trigger20 = movecontact && stateno = 1155

;------------------------------------------------------------------------------
;��Ђ傤��
[State -1, L HYOUGA]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "��Ђ傤��"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = movecontact && stateno = 1141
trigger14 = movecontact && stateno = 1142
trigger15 = movecontact && stateno = 11100
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;��Ђ傤��
[State -1, L HYOUGA]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "��Ђ傤��"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;���Ђ傤��
[State -1, S HYOUGA]
type = ChangeState
value = 1350
triggerall = var(59) != 1
triggerall = command = "���Ђ傤��"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = movecontact && stateno = 1141
trigger14 = movecontact && stateno = 1142
trigger15 = movecontact && stateno = 11100
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;���Ђ傤��
[State -1, S HYOUGA]
type = ChangeState
value = 1350
triggerall = var(59) != 1
triggerall = command = "���Ђ傤��"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;------------------------------------------------------------------------------

;�ス�����
[State -1, L SEIRAN]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "�ス�����"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1140
trigger17 = stateno = 1210 && time > 10
trigger18 = stateno = 1255 && time > 10
trigger19 = movecontact && stateno = 211 && time = [5,10]

;�ス�����
[State -1, L SEIRAN]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "�ス�����"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1505

;���������
[State -1, S SEIRAN]
type = ChangeState
value = 1150
triggerall = var(59) != 1
triggerall = command = "���������"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1140
trigger17 = movecontact && stateno = 1141
trigger18 = movecontact && stateno = 1142
trigger19 = stateno = 1210 && time > 10
trigger20 = stateno = 1255 && time > 10
trigger21 = movecontact && stateno = 211 && time = [5,10]

;���������
[State -1, S SEIRAN]
type = ChangeState
value = 1150
triggerall = var(59) != 1
triggerall = command = "���������"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1505

-----------------------------------------------------------------------------

[State -1, Charge]
type = Null;ChangeState
value = 9000
triggerall = Power != PowerMax
triggerall = command = "hold_x" && command = "hold_a" && command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 5) || stateno = 101

;Max On
[State -1, Max On]
type = ChangeState
value = 9030
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(23) <= 0
trigger1 = ctrl || (stateno = 100 && time >= 5) || stateno = 101

;Quick Max
[State -1, Quick Max]
type = ChangeState
value = 9031
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = var(23) <= 0
trigger1 = stateno = [200,499]
trigger1 = movecontact = 1

;��ً}���
[State -1, T S]
type = ChangeState
value = 710
triggerall = var(59) != 1
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,152]

;---------------------------------------------------------------------------
;�O�ً}���
[State -1, T S]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,152]
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;�ӂ��Ƃ΂�
[State -1, Throw]
type = ChangeState
value = 300
triggerall = var(59) != 1
triggerall = command = "�ӂ��Ƃ΂�"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,152]

;---------------------------------------------------------------------------

;��g
[State -1, UKEMI]
type = ChangeState
value = 5200
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = StateNo = 5050 || StateNo = 5071
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20

;------------------------------------------------------------------------------
;�󒆂ӂ��Ƃ΂�
[State -1, CD]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "�ӂ��Ƃ΂�"
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;P����
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holdfwd" ;|| command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------
;K����
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holdfwd" ;|| command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------

;����Ȃ�
[State -1, URANAGI]
type = ChangeState
value = 310
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 440 && time < 20

;����Ȃ�
[State -1, URANAGI]
type = ChangeState
value = 311
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [5,13]
trigger3 = movecontact && stateno = 205 && time = [4,11]
trigger4 = movecontact && stateno = 215 && time = [4,13]
trigger5 = movecontact && stateno = 230 && time = [4,10]
trigger6 = movecontact && stateno = 250 && time = [7,12]
trigger7 = movecontact && stateno = 400 && time = [3,7]
trigger8 = movecontact && stateno = 410 && time = [6,10]
trigger9 = stateno = 440 && time < 20

;------------------------------------------------------------------------------
;�_�b�V��
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;�o�b�N�X�e�b�v
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
;�ߋ���������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 18
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

;������������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 24
trigger1 = ctrl
trigger2 = stateno = 1300 && animelemtime(14) >= 0
trigger3 = stateno = 1301
trigger4 = stateno = 1355 && time = [0,7]

;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;�������������p���`
[State -1, Stand Strong Punch Followup]
type = ChangeState
value = 211
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && time >= 11 && movecontact


;------------------------------------------------------------------------------
;������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 20
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

;�ߋ����������L�b�N
;[State -1, Standing Strong Kick]
;type = ChangeState
;value = 245
;triggerall = command = "b"
;triggerall = command != "holddown"
;triggerall = statetype = S
;triggerall = var(32) = 1
;triggerall = p2bodydist X < 20
;trigger1 = ctrl

;�������������L�b�N
;[State -1, Standing Strong Kick]
;type = ChangeState
;value = 240
;triggerall = command = "b"
;triggerall = command != "holddown"
;triggerall = statetype = S
;triggerall = var(32) = 1
;trigger1 = ctrl

;�������������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
;triggerall = var(32) = 0
triggerall = p2bodydist X < 20
trigger1 = ctrl
trigger2 = stateno = 1300 && animelemtime(14) >= 0
trigger3 = stateno = 1301
trigger4 = stateno = 1355 && time = [0,7]

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
;triggerall = var(32) = 0
trigger1 = ctrl

;------------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
;triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact

;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 6 && movecontact
trigger3 = stateno = 400 && time >= 6 && movecontact

;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;�W�����v��p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;�W�����v���p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;�����W�����v��L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;�΂߃W�����v��L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;�����W�����v���L�b�N
[State -1, Jump Strong Kick]
type = Null;ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;�΂߃W�����v���L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = stateno != 105
;triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

