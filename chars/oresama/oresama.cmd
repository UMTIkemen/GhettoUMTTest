; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


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


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "honnki"
command = ~D, DB, B, D, DB, B,  c
time = 30

[Command]
name = "meihunomon yoko"
command = ~D, DF, F, a
time = 20

[Command]
name = "meihunomon tate"
command = ~D, DF, F, b
time = 20

[Command]
name = "ounozaihou"
command = ~D, DF, F, c
time = 20

[Command]
name = "tennokusari baku"
command = ~F, D, DF, a
time = 20

[Command]
name = "tennokusari in"
command = ~F, D, DF, b
time = 20

[Command]
name = "tennokusari tuika"
command = ~D, DB, B, b
time = 20

[Command]
name = "tennokusari"
command = ~F, D, DF, c
time = 20

[Command]
name = "enumaerisyu"
command = ~B,DB,D,DF,F,c
time = 40

[Command]
name = "koorinonaihu"
command = ~D, DB, B, a
time = 20

[Command]
name = "karadoborugu"
command = ~D, DB, B, b
time = 20

[Command]
name = "kama"
command = ~D, DB, B, c
time = 20

[Command]
name = "ounozaihou2"
command = ~D, D, z
time = 20

[Command]
name = "onoa"
command = ~D, D, a
time = 15

[Command]
name = "onob"
command = ~D, D, b
time = 15

[Command]
name = "onoc"
command = ~D, D, c
time = 15

[Command]
name = "ga-kyan"
command = F, b+c
time = 8

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "back_b"
command = /$B,b
time = 1

;-| Double Tap |-----------------------------------------------------------
;■ハイジャンプ
[Command]
name = "Hi_Jump"
command = ~$D,$U
time = 12

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 12

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery2";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery3";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery4";Required (do not remove)
command = y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "front_start"
command = /$F,start
time = 1

[Command]
name = "fx"
command = /$F,x
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "down_start"
command = /$Ds
time = 1


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

[Command]
name = "ab"
command = a+b
time = 0


[Command]
name = "z+c"
command = z+c
time = 20

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]



;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1

---------------------------------------------------------------------------
;天地波涛す終局の刻
;[State -1, Light Kung Fu Palm]
;type = ChangeState
;value = 3500
;triggerall = statetype != A
;triggerall = command = "honnki"
;triggerall = power >= 3000
;triggerall = var(6) = 1
;trigger1 = ctrl
;trigger2 = (stateno = [200,499])
;trigger2 = movecontact
;trigger3 = (stateno = [100,101])
;trigger4 = var(6) = 1
;trigger4 = (stateno = [1000,1100])
;trigger4 = time >21
;trigger5 = var(6) = 1
;trigger5 = stateno = 1600
;trigger5 = time >20
;trigger6 = var(6) = 1
;trigger6 = (stateno = [1500,1860])
;trigger6 = movecontact


;---------------------------------------------------------------------------
;エア
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = statetype != A
triggerall = command = "enumaerisyu"
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = (stateno = [100,101])
trigger4 = var(6) = 1
trigger4 = (stateno = [1000,1105])
trigger4 = time >21
trigger5 = var(6) = 1
trigger5 = stateno = 1600
trigger5 = time >20
trigger6 = var(6) = 1
trigger6 = (stateno = [1500,1860])
trigger6 = movecontact

;---------------------------------------------------------------------------
天の鎖・エルキドゥ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = statetype != A
triggerall = command = "tennokusari"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = (stateno = [100,101])
trigger4 = var(6) = 1
trigger4 = (stateno = [1000,1105])
trigger4 = time >21
trigger5 = var(6) = 1
trigger5 = stateno = 1600
trigger5 = time >20
trigger6 = var(6) = 1
trigger6 = (stateno = [1500,1860])
trigger6 = movecontact

;---------------------------------------------------------------------------
天の鎖・エルキドゥ（ゲージ足りない用
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = statetype != A
triggerall = command = "tennokusari"
triggerall = power <= 1999
triggerall = NumHelper(1410) < 2
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = [900,901]
trigger4 = time >2
trigger5 = (stateno = [100,101])

;---------------------------------------------------------------------------
天の鎖・導
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = statetype != A
triggerall = command = "tennokusari baku"
triggerall = NumHelper(1410) < 2
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = 900
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;天の鎖・乱
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = statetype != A
triggerall = command = "tennokusari in"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;王の財宝
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = statetype != A
triggerall = command = "ounozaihou"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = (stateno = [100,101])
trigger4 = var(6) = 1
trigger4 = (stateno = [1000,1105])
trigger4 = time >21
trigger5 = var(6) = 1
trigger5 = stateno = 1600
trigger5 = time >20
trigger6 = var(6) = 1
trigger6 = (stateno = [1500,1860])
trigger6 = movecontact

;---------------------------------------------------------------------------
;王の財宝（ゲージ足りない用
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "ounozaihou"
triggerall = power <= 999
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;王の財宝(空中)
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = statetype = A
triggerall = command = "ounozaihou"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = var(6) = 1
trigger3 = (stateno = [1200,1300])
trigger3 = time >15

;---------------------------------------------------------------------------
;王の財宝(空中)ゲージ足りない用
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = statetype = A
triggerall = command = "ounozaihou"
triggerall = power <= 999
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;冥府の門・横
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = command = "meihunomon yoko"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;冥府の門・縦
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "meihunomon tate"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;冥府の門(空中)・横
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "meihunomon yoko"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;冥府の門(空中)・縦
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "meihunomon tate"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;氷のナイフ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = statetype != A
triggerall = command = "koorinonaihu"
triggerall = NumHelper(1610) < 1
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;カラドボルグの原典
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1700
triggerall = statetype != A
triggerall = command = "karadoborugu"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;鎌
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = statetype != A
triggerall = command = "kama"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;嵐を払う
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3400
triggerall = statetype != A
triggerall = command = "onoc"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = (stateno = [100,101])
trigger4 = var(6) = 1
trigger4 = (stateno = [1000,1105])
trigger4 = time >21
trigger5 = var(6) = 1
trigger5 = stateno = 1600
trigger5 = time >20
trigger6 = var(6) = 1
trigger6 = (stateno = [1500,1860])
trigger6 = movecontact

;---------------------------------------------------------------------------
;嵐を払う（ゲージ足りない用
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1860
triggerall = statetype != A
triggerall = command = "onoc"
triggerall = power <= 999
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;斧
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1850
triggerall = statetype != A
triggerall = command = "onoa"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])

;---------------------------------------------------------------------------
;斧
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1860
triggerall = statetype != A
triggerall = command = "onob"
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])


;---------------------------------------------------------------------------
;王の財宝Ⅱ
;[State -1, Light Kung Fu Palm]
;type = ChangeState
;value = 11000
;triggerall = var(6) = 1
;triggerall = statetype != A
;triggerall = command = "ounozaihou2"
;trigger1 = ctrl
;trigger2 = (stateno = [200,499])
;trigger2 = movecontact
;trigger3 = stateno = [900,901]
;trigger3 = time >2
;trigger4 = (stateno = [100,101])
;trigger5 = (stateno = [1000,1100])
;trigger5 = time >21
;trigger6 = var(6) = 1
;trigger6 = (stateno = [1700,1862])
;trigger6 = movecontact

;===========================================================================

;---------------------------------------------------------------------------
;ハイジャンプ
;[State -1]
;type = ChangeState
;value = 41
;triggerall = command = "Hi_Jump"
;triggerall = statetype = S
;triggerall = stateno = 50
;trigger1 = ctrl
;trigger2 = stateno = 101
;trigger3 = stateno = 100

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1]
Type = ChangeState
Value = 110
TriggerAll = Var(59) = 0
TriggerAll = var(2) = 0
TriggerAll = Command = "FF" 
triggerall = statetype = A
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1]
Type = ChangeState
Value = 115
TriggerAll = Var(59) = 0
TriggerAll = var(2) = 0
TriggerAll = Command = "BB" 
triggerall = statetype = A
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;---------------------------------------------------------------------------
;Stand Strong Punch
;4b
[State -1, Stand Strong Punch]
type = ChangeState
value = 290
triggerall = command = "back_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(1)
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱
[State -1, Stand Light Kick]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [900,901]
trigger2 = time >2
trigger3 = (stateno = [100,101])
trigger4 = var(6) = 1
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち中
[State -1, Standing Strong Kick]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [900,901]
trigger2 = time >2
trigger3 = (stateno = [100,101])
trigger4 = var(6) = 1
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = var(6) = 1
trigger5 = stateno = 400
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(1)
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])
trigger5 = var(6) = 1
trigger5 = stateno = 210
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱
[State -1, Crouching Light Kick]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = var(1)
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])
trigger5 = var(6) = 1
trigger5 = stateno = 400
trigger5 = movecontact


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ中
[State -1, Crouching Strong Kick]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = var(1)
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = [900,901]
trigger3 = time >2
trigger4 = (stateno = [100,101])
trigger5 = var(6) = 1
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = var(6) = 1
trigger6 = stateno = 400
trigger6 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = var(1)
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 225
trigger3 = movecontact
trigger4 = stateno = [900,901]
trigger4 = time >2
trigger5 = (stateno = [100,101])
trigger6 = var(6) = 1
trigger6 = (stateno = [200,210])
trigger6 = movecontact
trigger7 = stateno = 300
trigger7 = movecontact

;---------------------------------------------------------------------------
;空中弱攻撃
[State -1, Jump Light Kick]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中中攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
;ガードキャンセル
[State -1, Stand Strong Punch]
type = ChangeState
value = 950
triggerall = command = "ga-kyan"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]

;---------------------------------------------------------------------------
[State -1, リフガ]
type = ChangeState
value = 900
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,1862])
trigger2 = stateno != 800
trigger2 = stateno != 910

;---------------------------------------------------------------------------
[State -1, 本気]
type = ChangeState
value = 920
triggerall = var(5) = 1
triggerall = var(6) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,320])
trigger2 = movecontact
trigger3 = (stateno = [400,425])
trigger3 = movecontact
trigger4 = (stateno = [1000,1100])
trigger4 = time >21
trigger5 = stateno = 1600
trigger5 = time >20
trigger6 = (stateno = [1200,1862])
trigger6 = movecontact
trigger7 = (stateno = [100,101])

;---------------------------------------------------------------------------
[State -1, 空中本気]
type = ChangeState
value = 930
triggerall = var(5) = 1
triggerall = var(6) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = (stateno = [6001,6007])
trigger3 = movecontact
trigger4 = (stateno = [1200,1300])
trigger4 = time >15

;---------------------------------------------------------------------------
[State -1, 本気バースト]
type = ChangeState
value = 3600
TriggerAll = var(59)=0
triggerall = var(5) = 1
triggerall = var(6) = 0
triggerall = command = "x"
triggerall = Alive = 1
trigger1 = statetype != A
trigger1 = movetype = H && time != 0
trigger1 = statetype != L

;---------------------------------------------------------------------------
[State -1, 本気バースト空中]
type = ChangeState
value = 3610
TriggerAll = var(59)=0
triggerall = var(5) = 1
triggerall = var(6) = 0
triggerall = command = "x"
triggerall = Alive = 1
trigger1 = statetype = A
trigger1 = movetype = H && time != 0
trigger1 = statetype != L

;---------------------------------------------------------------------------
[State -1, 本気バースト12p]
type = ChangeState
value = 3600
TriggerAll = var(59)=0
triggerall = PalNo= 12
triggerall = command = "x"
triggerall = Alive = 1
trigger1 = statetype != A
trigger1 = movetype = H && time != 0
trigger1 = statetype != L

;---------------------------------------------------------------------------
[State -1, 本気バースト空中12p]
type = ChangeState
value = 3610
TriggerAll = var(59)=0
triggerall = PalNo= 12
triggerall = command = "x"
triggerall = Alive = 1
trigger1 = statetype = A
trigger1 = movetype = H && time != 0
trigger1 = statetype != L

;---------------------------------------------------------------------------
;避け
[State -1]
Type = ChangeState
Value = 910
TriggerAll = Command = "holddown"
TriggerAll = Command != "holdfwd" && Command != "holdback"
TriggerAll = Command = "x"
TriggerAll = StateType != A
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(6) = 0
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;慢心
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = var(6) = 0
triggerall = command = "start"
trigger1 = statetype = C
trigger1 = ctrl








