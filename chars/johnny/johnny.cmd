
;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|----------------------------------------
[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;-| �f�t�H���g�ݒ� |-----------------------------------------------------------
[Defaults]
command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[��
;==============================================================================
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================
;�������̌��܂聡
;
; [Command]         �F���̓R�}���h���P��`����B
; name = "***"      �F�R�}���h�������߂�B�啶���Ə���������ʂ����B
; command = ###     �F���ۂɓ��͂���L�[��g�ݍ��킹��B�ڍׂ͌�q�B
; time = &&&        �F���͎�t���Ԃ�ݒ�i�I�v�V�����j�B
; buffer.time = @@@ �F���͋L�����Ԃ�ݒ�i�I�v�V�����j�B
;
; ���l�^�ł��������Ă���ʂ�A�o�^���\�Ȑ��͍ő�w�P�Q�W�x�܂ŁB
;
;���w�K�{�R�}���h���x�Ə����Ă�R�}���h�́A�V�X�e�����ŏ������Ă܂��B
;�@�R�}���h����ς�����A�����Ă͂����܂���B�L�[�̕ύX�͏o���܂��B
;------------------------------------------------------------------------------
;���K�v�ȃA���t�@�x�b�g�ƋL����
; ��L�́ucommand = ###�v�́w###�x�ɊY�����镔���ŁA
; �g�ݍ��킹��L�[�ƃ{�^����ݒ肵�Ȃ���΂Ȃ�Ȃ��B
;
; ���ݒ肵���L�[��{�^����M.U.G.E.N�̃I�v�V�������[�h�ɂ���
;  �u�L�[�R���t�B�O�v�ɂĐݒ肵���L�[�ȂǂɑΉ����Ă��܂��B
;
; �������L�[���i�S�ĕK���啶���Łj
;
; �@B �@�F�u����v�ɃL�[������i Backward �j
; �@D �@�F�u�����v�ɃL�[������i Downward �j
; �@F �@�F�u�O���v�ɃL�[������i Forward �j
; �@U �@�F�u����v�ɃL�[������i Upward �j
;
; �@DB�@�F�u���΂߉��v�ɃL�[������i�uD�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@UB�@�F�u���΂ߏ�v�ɃL�[������i�uU�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@DF�@�F�u�O�΂߉��v�ɃL�[������i�uD�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
; �@UF�@�F�u�O�΂ߏ�v�ɃL�[������i�uU�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
;
; ���{�^�����i�S�ĕK���������Łj
;
; �@a �@�F�u�`�{�^���v������
; �@b �@�F�u�a�{�^���v������
; �@c �@�F�u�b�{�^���v������
; �@x �@�F�u�w�{�^���v������
; �@y �@�F�u�x�{�^���v������
; �@z �@�F�u�y�{�^���v������
; �@s �@�F�u�X�^�[�g�{�^���v������
;
; ���L�����i���͌��ʂ�ω������閽�߁j
; �@/ �@�F�i�X���b�V���j�L�[��{�^�����u�������ςȂ��v�ɂ��Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@/b       = �a�{�^�����������܂܂ɂ���
; �@�@�@�@�@�@�@/F       = �O�L�[���������܂܂ɂ���
; �@�@�@�@�@�@�@/U,z     = ��L�[���������܂܂y�{�^������͂���
;�@�@������������������������������������������������������������
;
; �@~ �@�F�i�`���_�j�L�[��{�^�����u�����ꂽ���v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@~x       = �w�{�^���𗣂�
; �@�@�@�@�@�@�@~DF      =�u�O�΂߉��v�̃L�[�𗣂�
; �@�@�@�@�@�@�@~DB,F,c  =�u���΂߉��v�𗣂�����ɑO�L�[�E�b�{�^���̏��Ԃɓ��͂���
;
; �@�@�@�@�@�@���u�{�^���𗣂��܂ł̎��ԁi���ߎ��ԁj�v���ݒ肷�鎖���o����
;
; �@�@�@�@�@�@�@~30x     = �w�{�^�����������܂܂ɂ��āA�R�O�t���[���ȏ�o�����痣��
; �@�@�@�@�@�@�@~50B,F,a = ���L�[���T�O�t���[���܂ŗ��߂đO�L�[�E�`�{�^���̏��Ԃɓ��͂���
;�@�@������������������������������������������������������������
;
; �@$ �@�F�i�h���j�����L�[�́u�����̓��ǂꂩ�����͂���Ă��鎖�v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@$B       =�u����v�u���΂߉��v�u���΂ߏ�v�̂ǂꂩ�����͂���Ă�����
; �@�@�@�@�@�@�@$UF      =�u�O�v�u��v�u�O�΂ߏ�v�̂ǂꂩ�����͂���Ă�����
;
; �@�@�@�@�@�@�����̋L���́u�����L�[�v�ł����g���܂���B
;�@�@������������������������������������������������������������
;
; �@+ �@�F�i�v���X�j�{�^�����u���������v���Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@x+y      = �w�{�^���Ƃx�{�^���𓯎���������
; �@�@�@�@�@�@�@a+b+c    = �`�{�^���Ƃa�{�^���Ƃb�{�^���𓯎���������
;
; �@�@�@�@�@�@�����̋L���́u�{�^���v�ł����g���܂���B
;�@�@������������������������������������������������������������
; �@> �@�F�i�O���[�^�[�U���j��Ȃ�iWin�łŒǉ����ꂽ�L���j
; �@�@�@�@�@�@�@�@�@�@�@�@�u���̃L�[�����͂���Ă��Ȃ������m�F���āA���̃L�[�������v�ꍇ
;
; �@�@�i��j�F�@a,>~a    = �`�{�^���ȊO�����͂���Ă��Ȃ���Ԃł`�{�^���𗣂�
; �@�@�@�@�@�@�@F,>~F,>F = �O�L�[�ȊO�����͂���Ă��Ȃ���ԂőO�L�[�𗣂��A
;�@�@�@�@�@�@�@�@�@�@�@�@�@������x�O�L�[����͂���
;-------------------------------------------------------------------------------
; �������̋L���͑S�đg�ݍ��킹�Ďg�������o���遜
; �@�@�i��j�F�@~80$DB,DF,F,/a+y+c
; �@�@�@�@�@�@�@
; �@�@�@�@�@�@�u����v�u���v�u���΂߉��v�̂ǂꂩ���W�O�t���[���܂ŗ��߂�
; �@�@�@�@�@�@�u�O�΂߉��v���u�O�v����͂�����A�`�Ƃx�Ƃb�𓯎����������܂܂ɂ���
;------------------------------------------------------------------------------
;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "236xy"
command = ~D, DF, F, b
time = 18

[Command]
name = "236xy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "236xy"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "236xy"
command = ~D, DF, F, z+x
time = 20

[Command]
name = "214xy"
command = ~D, DB, B, b
time = 18

[Command]
name = "214xy"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "214xy"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "214xy"
command = ~D, DB, B, z+x
time = 20

;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------

[Command]
name = "623a"
command = D,F, a
time = 16

[Command]
name = "421a"
command = D,B, a
time = 16

[Command]
name = "236a"
command = ~D, DF, F, a
time = 18

[Command]
name = "214a"
command = ~D, DB, B, a
time = 18

[Command]
name = "426x"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "426x"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "426x"
command = ~B, DB, D, DF, F, z
time = 20

[Command]
name = "624x"
command = ~F, DF, D, DB, B x
time = 20

[Command]
name = "624x"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "624x"
command = ~F, DF, D, DB, B, z
time = 20

[Command]
name = "22x"
command = ~D, D, x
time = 15

[Command]
name = "22y"
command = ~D, D, y
time = 15

[Command]
name = "22z"
command = ~D, D, z
time = 15

[Command]
name = "236x"
command = ~D, DF, F, x
time = 18

[Command]
name = "236y"
command = ~D, DF, F, y
time = 18

[Command]
name = "236z"
command = ~D, DF, F, z
time = 18

[Command]
name = "214x"
command = ~D, DB, B, x
time = 18

[Command]
name = "214y"
command = ~D, DB, B, y
time = 18

[Command]
name = "214z"
command = ~D, DB, B, z
time = 18

[Command]
name = "623x"
command = ~F, D, DF, x
time = 13
[Command]
name = "623x"
command = F, D, DF, x
time = 16

[Command]
name = "623y"
command = ~F, D, DF, y
time = 13
[Command]
name = "623y"
command = F, D, DF, y
time = 16

[Command]
name = "623z"
command = ~F, D, DF, z
time = 13
[Command]
name = "623z"
command = F, D, DF, z
time = 16

[Command]
name = "421x"
command = ~B, D, DB, x
time = 13
[Command]
name = "421x"
command = B, D, DB, x
time = 16

[Command]
name = "421y"
command = ~B, D, DB, y
time = 13
[Command]
name = "421y"
command = B, D, DB, y
time = 16

[Command]
name = "421z"
command = ~B, D, DB, z
time = 13
[Command]
name = "421z"
command = B, D, DB, z
time = 16

[Command]
name = "46x"
command = B, F, x
time = 16
[Command]
name = "46x"
command = B, F, y
time = 16
[Command]
name = "46x"
command = B, F, z
time = 16

[Command]
name = "64x"
command = F, B, x
time = 16
[Command]
name = "64x"
command = F, B, y
time = 16
[Command]
name = "64x"
command = F, B, z
time = 16

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "SM6"
command = F
time = 1
[Command]
name = "SM2"
command = D
time = 1

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1

[Command];�n�C�W�����v
name = "HJ"
command = ~$D, $U
time = 8 ;���͗P�\��8F�i����ȉ��ő��삵�����ɖ\�����Ȃ��悤�Ɂj

[Command];�n�C�W�����v�\���h�~�p
name = "NHJ"
command = ~12$D, $U
time = 8
;���v�f�������Ɠ����Ă��Ԃŏ�����Ă��n�C�W�����v��\�������Ȃ�

[Command];�n�C�W�����v�\���h�~�p
name = "NHJ"
command = /$D
time = 12

;---------------------------
[Command]
name = "���������R�}���h"
command = x+y
[Command]
name = "���������R�}���h"
command = x+z
[Command]
name = "���������R�}���h"
command = x+a
[Command]
name = "���������R�}���h"
command = x+b
[Command]
name = "���������R�}���h"
command = x+c
[Command]
name = "���������R�}���h"
command = y+z
[Command]
name = "���������R�}���h"
command = y+a
[Command]
name = "���������R�}���h"
command = y+b
[Command]
name = "���������R�}���h"
command = y+c
[Command]
name = "���������R�}���h"
command = z+a
[Command]
name = "���������R�}���h"
command = z+b
[Command]
name = "���������R�}���h"
command = z+c
[Command]
name = "���������R�}���h"
command = a+b
[Command]
name = "���������R�}���h"
command = a+c
[Command]
name = "���������R�}���h"
command = b+c

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x
time = 1
[Command]
name = "recovery" ;�K�{�R�}���h��
command = y
time = 1
[Command]
name = "recovery" ;�K�{�R�}���h��
command = z
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

;==============================================================================
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
; �����펞�Ď��X�e�[�g�i�]�P�j��
; �R�}���h�t�@�C���i�̃X�e�[�g�G���g���[�p�[�g�j�ɕK�v�ȍ��ڂł��B
; ��΂ɏ����Ă͂����Ȃ��̂ŗv���ӁB
;
; �ʏ�̐H�炢��ԈȊO�́uP2StateNo�v��uTargetState�v���Ő��䂳�ꂽ�A
; �쐬�҂��C�ӂɎw�肵�����葤�̐H�炢�X�e�[�g�Ɍ���A
; �o�^�����X�e�[�g�R���g���[�����L���ɂ͂Ȃ�܂���B
;------------------------------------------------------------------------------
[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B
;==============================================================================
; ���K�E�Z
;==============================================================================

[State -1, �Ȃ񂾂��̉�]�́I�H]
type = ChangeState
value = 2100
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X>=0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X<0)
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger4 = helper(99999),var(49)=1
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger8 = (stateno = 100 && animelemtime(8)>0);�O�X�e
trigger9 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, ��]�͌��ɂȂ��Ă����ȂȂ����I]
type = ChangeState
value = 2000
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X<0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X>=0)
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger4 = helper(99999),var(49)=1
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger8 = (stateno = 100 && animelemtime(8)>0);�O�X�e
trigger9 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, �����������Ⴀ���Ȃ�]
type = ChangeState
value = 2200
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = var(50) >= 2;ACT2�ȍ~
triggerall = ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X>=0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X<0)
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1300 && time = [18,35])||(stateno = 1310 && time = [12,35])||(stateno = 1320 && time = [11,35])
trigger7 = helper(99999),var(49)=1
trigger8 = stateno = 1400 && ((anim = 1400 && time = [26,44])||(anim = 1410 && time = [26,44])||(anim = 1420 && time = [16,44]))
trigger9 = (stateno = 240 && time = [31,42])
trigger10 = (stateno = 1500 && anim = 1502) || (stateno = 1500 && helper(1530),movecontact)
trigger11 = (stateno = 1585 && animelemtime(8)>0 && animelemtime(19)<0)
trigger12 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger13 = (stateno = 100 && animelemtime(8)>0);�O�X�e
trigger14 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, �N�ɓn���Ȃ��������̈ꔭ�́w�S���x����]
type = ChangeState
value = 3000
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = numhelper(3610)=0
triggerall = (command = "c") || (helper(99999),var(20))
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

;==============================================================================
; �K�E�Z
;==============================================================================

[State -1, ����]
type = null;ChangeState
value = 3500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 4 && var(51)>=10;ACT4�ȍ~ �c�e����
triggerall = command="236a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �`���~�~�[��]
type = ChangeState
value = 3600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = numhelper(3610)=0
triggerall = var(50) >= 4 && var(51)>=10;ACT4�ȍ~ �c�e����
triggerall = ((helper(99999),command="623a"||helper(99999),var(29)>0)&&facing*p2dist X>=0)||((helper(99999),command="421a"||helper(99999),var(30)>0)&&facing*p2dist X<=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ���������b]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=20;ACT3�ȍ~ �c�e����
triggerall = ((helper(99999),command="623x"||helper(99999),var(10)>0)&&facing*p2dist X>=0)||((helper(99999),command="421x"||helper(99999),var(13)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ����͐l�E���̖ڂ�]
type = ChangeState
value = 1540
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3�ȍ~ �c�e����
triggerall = ((helper(99999),command="623y"||helper(99999),var(11)>0)&&facing*p2dist X>=0)||((helper(99999),command="421y"||helper(99999),var(14)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �悵������]
type = ChangeState
value = 1580
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3�ȍ~ �c�e����
triggerall = ((helper(99999),command="623z"||helper(99999),var(12)>0)&&facing*p2dist X>=0)||((helper(99999),command="421z"||helper(99999),var(15)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �V�������֍s�����I]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3�ȍ~ �c�e����
triggerall = ((helper(99999),command="623x"||helper(99999),var(10)>0)&&facing*p2dist X<0)||((helper(99999),command="421x"||helper(99999),var(13)>0)&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e
[State -1, �V�������֍s�����I]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3�ȍ~ �c�e����
triggerall = ((helper(99999),command="623y"||helper(99999),var(11)>0)&&facing*p2dist X<0)||((helper(99999),command="421y"||helper(99999),var(14)>0)&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e
[State -1, �V�������֍s�����I]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3�ȍ~ �c�e����
triggerall = ((helper(99999),command="623z"||helper(99999),var(12)>0)&&facing*p2dist X<0)||((helper(99999),command="421z"||helper(99999),var(15)>0)&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �܂̕���]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="623x"||helper(99999),var(10)>0)&&facing*p2dist X>=0)||((helper(99999),command="421x"||helper(99999),var(13)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �܂̕���]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="623y"||helper(99999),var(11)>0)&&facing*p2dist X>=0)||((helper(99999),command="421y"||helper(99999),var(14)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �܂̕���]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="623z"||helper(99999),var(12)>0)&&facing*p2dist X>=0)||((helper(99999),command="421z"||helper(99999),var(15)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ������] L]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
triggerall = ((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X>=0)||((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ������] M]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
triggerall = ((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X>=0)||((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ������] H]
type = ChangeState
value = 1320
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
triggerall = ((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X>=0)||((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �ړ����錊 L]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
triggerall = numhelper(1450)=0;�������݂��Ă��Ȃ�
triggerall = ((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X<0)||((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X>=0)
triggerall = 1 || var(9):=0 ;L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e
[State -1, �ړ����錊 M]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
triggerall = numhelper(1450)=0;�������݂��Ă��Ȃ�
triggerall = ((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X>=0)||((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X<0)
triggerall = 1 || var(9):=10 ;M
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e
[State -1, �ړ����錊 H]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
triggerall = numhelper(1450)=0;�������݂��Ă��Ȃ�
triggerall = ((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X>=0)||((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X<0)
triggerall = 1 || var(9):=20 ;H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ����͂Ȃ�Ȃ�]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X>=0)||((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e
[State -1, ����͂Ȃ�Ȃ�]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X>=0)||((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e
[State -1, ����͂Ȃ�Ȃ�]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X>=0)||((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ACT1 ��x]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X>=0)||((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ACT1 ��y]
type = ChangeState
value = 1010
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X>=0)||((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ACT1 ��z]
type = ChangeState
value = 1020
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X>=0)||((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

;==============================================================================
; �ړ��֘A
;==============================================================================

[State -1, �n�C�W�����v]
type = ChangeState
value = 1750
triggerall = var(59) <= 0
triggerall = (helper(99999),command="HJ") || helper(99999),var(28)>0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = 0;(stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = 0;(stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = 0;(stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �O�]]
type = ChangeState
value = 100
triggerall = var(59) <= 0
trigger1 = (facing>0&&(helper(99998),command="FF" || helper(99998),var(9))) || (facing<0&&(helper(99998),command="BB" || helper(99998),var(8)))
trigger1 = statetype != A
trigger1 = ctrl

[State -1, �������ɑO�]]
type = ChangeState
value = 105
triggerall = var(59) <= 0
trigger1 = (facing<0&&(helper(99998),command="FF" || helper(99998),var(9))) || (facing>0&&(helper(99998),command="BB" || helper(99998),var(8)))
trigger1 = statetype != A
trigger1 = ctrl

;==============================================================================
; ����Z �ƃR�}���h�Z
;==============================================================================

[State -1, ����]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "xy") || (helper(99999),var(23))
triggerall = statetype != A
triggerall = !(command = "holdback")
trigger1 = ctrl
trigger1 = 1 || var(2):=0
trigger2 = (stateno = 100 && animelemtime(8)>0);�O�X�e
trigger2 = 1 || var(2):=0
trigger3 = (time <= 2 && stateno = [200,210]) || (time <= 2 && stateno = [400,410])
trigger3 = !(time <= 2 && prevstateno = [200,210]) && !(time <= 2 && prevstateno = [400,410])
trigger3 = 1 || var(2):=0
[State -1, ����]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "xy") || (helper(99999),var(23))
triggerall = statetype != A
triggerall = (command = "holdback")
triggerall = 1 || var(2):=1
trigger1 = ctrl
trigger1 = 1 || var(2):=1
trigger2 = (stateno = 100 && animelemtime(8)>0);�O�X�e
trigger2 = 1 || var(2):=1
trigger3 = (time <= 2 && stateno = [200,210]) || (time <= 2 && stateno = [400,410])
trigger3 = !(time <= 2 && prevstateno = [200,210]) && !(time <= 2 && prevstateno = [400,410])
trigger3 = 1 || var(2):=1

[State -1, �������܂ōs���Ȃ��ẮI�O�i]
type = ChangeState
value = 1800;1830
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "z" && command = "holdfwd" && command != "holddown") || ((helper(99999),var(0)=[61,69])&&facing*p2dist X>=0||(helper(99999),var(0)=[71,79])&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �������܂ōs���Ȃ��Ă̓A�^�b�N]
type = null;ChangeState
value = 1815;1835
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = stateno = 1830 || stateno = 1800
triggerall = (anim=1830 && animelemtime(6)>0 && animelemtime(7)<0) || ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(4)<1)
trigger1 = (command = "x" && command != "holddown") || (helper(99999),var(0)=[1,9])
trigger2 = (command = "y" && command != "holddown") || (helper(99999),var(0)=[11,19])
trigger3 = (command = "z" && command != "holddown") || (helper(99999),var(0)=[21,29])
trigger4 = (command = "z" && command = "holdfwd") || ((helper(99999),var(0)=[61,69])&&facing*p2dist X>=0||(helper(99999),var(0)=[71,79])&&facing*p2dist X<0)

[State -1, �������܂ōs���Ȃ��ẮI���]
type = ChangeState
value = 1850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "z" && command = "holdback" && command != "holddown") || ((helper(99999),var(0)=[61,69])&&facing*p2dist X<0||(helper(99999),var(0)=[71,79])&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1,�O���Č�����]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2�ȍ~ �c�e����
;triggerall = ((helper(99999),command="46x"||helper(99999),var(24)>0)&&facing*p2dist X>=0)||((helper(99999),command="64x"||helper(99999),var(25)>0)&&facing*p2dist X<0)
triggerall = (command = "y" && command = "holdfwd" && command != "holddown") || ((helper(99999),var(0)=[81,89])&&facing*p2dist X>=0||(helper(99999),var(0)=[91,99])&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �l�̑̂���яオ�����I]
type = null;ChangeState
value = 1700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (helper(99999),command="22x"||helper(99999),var(16)>0) || (helper(99999),command="22y"||helper(99999),var(17)>0) || (helper(99999),command="22z"||helper(99999),var(18)>0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger2 = movecontact
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger3 = movecontact
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, 5����]
type = ChangeState
value = 940
triggerall = var(59) <= 0
triggerall = (command = "start") || (helper(99999),var(31))
triggerall = roundstate = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �v�b�c���L�����Z��]
type = ChangeState
value = 7880
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "b") || (helper(99999),var(19))
triggerall = statetype != A
triggerall = power >= 1000
;�\���h�~
triggerall = !( ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X>=0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X<0) )
triggerall = !( ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X<0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X>=0) )
trigger1 = 0
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && (time = [15,40]) && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1300 && time = [18,35])||(stateno = 1310 && time = [12,35])||(stateno = 1320 && time = [11,35])
trigger8 = stateno = 1400 && ((anim = 1400 && time = [19,37])||(anim = 1410 && time = [19,39])||(anim = 1420 && time = [16,44]))
trigger9 = (stateno = 240 && time = [30,42])
trigger10 = (stateno = 1500 && anim = 1502) || (stateno = 1500 && helper(1530),movecontact)
trigger11 = (stateno = 1585 && animelemtime(8)>0 && animelemtime(19)<0)
trigger12 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger13 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, �n�[�u�e�B�[���ށH]
type = ChangeState
value = 1900
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "a") || (helper(99999),var(27))
triggerall = var(50) >= 2;ACT2�ȍ~
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);�O�X�e

;==============================================================================
; �ʏ�U���Z
;==============================================================================

[State -1, ������]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = (command = "x" && command != "holddown") || (helper(99999),var(0)=[1,9])
triggerall = statetype != A
triggerall = !( (helper(99999),command="22x"||helper(99999),var(16)>0) || (helper(99999),command="22y"||helper(99999),var(17)>0) || (helper(99999),command="22z"||helper(99999),var(18)>0) );���G������D��
trigger1 = ctrl
trigger2 = (stateno = 400 && time = [5,12+4])
trigger3 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ������]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = (command = "y" && command != "holddown") || (helper(99999),var(0)=[11,19])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400 && time = [5,12+4])
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ������]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = (command = "z" && command != "holddown") || (helper(99999),var(0)=[21,29])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7)
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7)
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ���Ⴊ�ݎ�]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = (command = "x" && command = "holddown") || (helper(99999),var(0)=[31,39])
triggerall = statetype != A
triggerall = !( (helper(99999),command="22x"||helper(99999),var(16)>0) || (helper(99999),command="22y"||helper(99999),var(17)>0) || (helper(99999),command="22z"||helper(99999),var(18)>0) );���G������D��
trigger1 = ctrl
trigger2 = (stateno = 400 && time = [6,12+4])
trigger3 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ���Ⴊ�ݒ�]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = (command = "y" && command = "holddown") || (helper(99999),var(0)=[41,49])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400 && time = [5,12+4])
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, ���Ⴊ�݋�]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = (command = "z" && command = "holddown") || (helper(99999),var(0)=[51,59])
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7)
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7)
trigger4 = (stateno = 100 && animelemtime(8)>0);�O�X�e

[State -1, �󒆍U��]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = statetype = A
triggerall = stateno = 1760 || ctrl
trigger1 = (command = "x" && command = "holddown") || (helper(99999),var(0)=[31,39])
trigger2 = (command = "y" && command = "holddown") || (helper(99999),var(0)=[41,49])
trigger3 = (command = "z" && command = "holddown") || (helper(99999),var(0)=[51,59])
trigger4 = (command = "x" && command != "holddown") || (helper(99999),var(0)=[1,9])
trigger5 = (command = "y" && command != "holddown") || (helper(99999),var(0)=[11,19])
trigger6 = (command = "z" && command != "holddown") || (helper(99999),var(0)=[21,29])

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
