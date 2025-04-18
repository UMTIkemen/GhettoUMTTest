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

;---|AI Commands|-----------------------------------------------------------
[Command]
name = "AI1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "AI20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "AI21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "AI22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "AI24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI25"
command = D,D,D,F,F,DF,a,b,c+x+y+z
time = 1

[Command]
name = "AI26"
command = D,D,D,F,F,B,a+b,c+x,y+z
time = 1

[Command]
name = "AI27"
command = D,D,D,F,F,DB,a,b+c+x,y+z
time = 1

[Command]
name = "AI28"
command = D,D,D,F,F,UB,a,b+c+x+y,z
time = 1

[Command]
name = "AI29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI30"
command = B,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI31"
command = B,B,BD,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI32"
command = D,F,F,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI33"
command = DF,D,DF,UF,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI34"
command = D,D,D,F,DB,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI35"
command = D,D,UF,DF,UB,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI36"
command = D,DF,DF,DF,DF,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI37"
command = D,D,DB,UF,DF,UF,a+b+c+x,y,z
time = 1

[Command]
name = "AI38"
command = F,U,F,F,F,F,a,b+c,x,y,z
time = 1

[Command]
name = "AI39"
command = DF,UF,D,DF,U,F,a+b,c+x,y,z
time = 1

[Command]
name = "AI40"
command = D,D,D,D,F,D,a+b,c,x,y+z
time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;



[Command]
name = "1234566"
command = ~D,s
time = 30


[Command]
name = "2008"
command = ~D,F, D, F, c
time = 30

[Command]
name = "16666"
command = ~D,B, D, F, z
time = 30

[Command]
name = "r"
command = ~D,B, D, F, c
time = 30

[Command]
name = "DFDFC"
command = ~D, B, D, B, c
time = 30

[Command]
name = "re"
command = ~D, F, D, F, x
time = 30

[Command]
name = "re"
command = ~D, F, D, F, y
time = 30

[Command]
name = "QCFHCB_xy"
command = ~D, F, D, B, x+y
time = 30

[Command]
name = "QCFHCB_xy"
command = ~D, F, D, B, c
time = 30

[Command]
name = "QCFHCB_x"
command = ~D, F, D, B, x
time = 30

[Command]
name = "QCFHCB_y"
command = ~D, F, D, B, y
time = 30

[Command]
name = "2QCF_ab"
command = ~D, F, D, F, a
time = 30

[Command]
name = "2QCF_ab"
command = ~D, F, D, F, b
time = 30

[Command]
name = "2QCF_a"
command = ~D, F, D, F, a
time = 30

[Command]
name = "2QCF_b"
command = ~D, F, D, F, b
time = 30

[Command]
name =  "死星"
command = ~D, F,D,F, z
time = 30
[Command]
name =  "死星"
command = ~D, F,D,F, c
time = 30

[Command]
name = "我他妈不知道什么名字"
command = ~D,D, z
time = 30

[Command]
name = "禁于天式丶雷光散"
command = ~D,D, c
time = 30

[Command]
Name = "苍炎并发"
Command = ~D, D, x+y
Time = 15

[Command]
name = "jiao"
command = ~D, F, D, F, c
time = 30

[Command]
name = "2011"
command = ~D, B, D, F, x
time = 25

[Command]
name = "2011"
command = ~D, B, D, F, y
time = 25

[Command]
name = "乱舞A"
command = ~D, B, x

[Command]
name = "huo"
command = ~z
time = 20

;[Command]
;name = "ying"
;command = ~D, DB,B, x
;time = 20

;[Command]
;name = "ying"
;command = ~D, DB, B,y
;time = 20

[Command]
name = "2012"
command = ~F,F
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "RDP_x"
command = ~B, D, DB, x
time = 20

[Command]
name = "RDP_y"
command = ~B, D, DB, y
time = 20

[Command]
name = "DP_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "DP_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "RDP_a"
command = ~B, D, DB, a
time = 20

[Command]
name = "RDP_b"
command = ~B, D, DB, b
time = 20

[Command]
name = "DP_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "DP_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "HCF_a"
command = ~B, D, F, a
time = 15

[Command]
name = "HCF_b"
command = ~B, D, F, b
time = 15

[Command]
name = "HCF_x"
command = ~B, D, F, x
time = 15

[Command]
name = "HCF_y"
command = ~B, D, F, y
time = 15

[Command]
name = "HCB_a"
command = ~F, D, B, a
time = 15

[Command]
name = "HCB_b"
command = ~F, D, B, b
time = 15

[Command]
name = "HCB_x"
command = ~F, D, B, x
time = 15

[Command]
name = "HCB_y"
command = ~F, D, B, y
time = 15

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "14444"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "6666"
command = ~D,F,c
time = 15

;[Command]
;name = "9999"
;command = ~y+b
;time = 15
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
name = "PChargeA"
command = /a
time = 1

[Command]
name = "PChargeY"
command = /y
time = 1

[Command]
name = "Blowback"
command = b+y
time = 1

[Command]
name = "Roll/Dodge"
command = a+x
time = 1

[Command]
name = "hijump"
command = ~$D, $U
time = 8

[Command]
name = "recovery";Required (do not remove)
command = a+x
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
command = z
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
command = c
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

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

[Command]
Name = "up"
Command = U
Time = 1

[Command]
Name = "down"
Command = D
Time = 1

[Command]
Name = "fwd"
Command = F
Time = 1

[Command]
Name = "back"
Command = B
Time = 1

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
;   - movecontact = 1
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
;Supers
;---------------------------------------------------------------------------
[State -1,吸收]
type = ChangeState
value = 6666
Triggerall = var(59) != 1
triggerall = roundstate = 3
triggerall = command = "6666"
triggerall = statetype != A
Triggerall = roundno = 3
trigger1 = ctrl

[State -3,6666]
type = ChangeState
value = 6666
Triggerall = var(59) != 1
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = roundstate = 3
triggerall = P2stateno != 5150
triggerall = P2stateno != 6702
Triggerall = roundno = 3
triggerall = ctrl
trigger1 = (p2name = "Exile Haiaosi" | p4name = "Exile Haiaosi")
trigger2 = (p2name = "CloneYagamiBlood" | p4name = "CloneYagamiBlood")
trigger3 = (p2name = "CloneKyoBlood" | p4name = "CloneKyoBlood")


[State -3, しゃがみ弱キック 下段起き攻め]
Type = ChangeState
Value = 1234566
triggerall = var(59) != 1
triggerall = command = "1234566"
triggerall = power >= 0
triggerall = statetype != A
trigger1 = ctrl

[State -1, Crimson Star Road LDM1242]
type = ChangeState
value = 14450
triggerall = var(59) != 1
triggerall = command = "2008"
triggerall = power >= 2000
triggerall = statetype = A
triggerall = p2stateno = [5000,5050]
triggerall = p2movetype = H
trigger1 = stateno = 3110 && animelemtime(29) >= 0 && animelemtime(33) < 0

[State -1, Crimson Star Road LDM1242]
type = ChangeState
value = 2008
triggerall = var(59) != 1
triggerall = command = "2008"
triggerall = power >= 2000
triggerall = statetype = A
trigger1 = ctrl 

[State -1, Crimson Star Road LDM1452]
type = ChangeState
value = 2011
triggerall = var(59) != 1
triggerall = command = "2011"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0 && movecontact

[State -1, Crimson Star Road LDM]
type = ChangeState
value = 16666
triggerall = var(59) != 1
triggerall = command = "16666"
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = ctrl 

[State -1, Crimson Star Road LDM]
type = ChangeState
value = 3300
triggerall = var(59) != 1
triggerall = command = "r"
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 3206
trigger3 = stateno = 3216
trigger4 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0

[State -1, Crimson Star Road LDM]
type = ChangeState
value = 15555
triggerall = var(59) != 1
triggerall = command = "huo"
triggerall = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 990 && movecontact
trigger3 = stateno = 640 && movecontact
trigger4 = stateno = 1400 && animelemtime (10) >= 0
trigger5 = stateno = 1405 && animelemtime (10) >= 0

[State -1, Crimson Star Roadgf]
type = ChangeState
value = 15561
triggerall = var(59) != 1
triggerall = power >= 1000
triggerall = command = "jiao"
triggerall = statetype != A 
trigger1 = stateno = 3206


[State -1, Crimson Star Road LDM]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "re"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = fvar(5) >= 1000
trigger12 = stateno = 1200 && movecontact = 1 && statetype = S
trigger13 = fvar(5) >= 1000
trigger13 = stateno = 1205 && movecontact = 1 && statetype = S
trigger14 = fvar(5) >= 1000
trigger14 = stateno = 3002 && movecontact && statetype = S
trigger15 = fvar(5) >= 1000
trigger15 = stateno = 3100 && movecontact && statetype = S && time < 51
trigger16 = stateno = 1200 && movecontact = 1 && animelemtime(2) > 0 && animelemtime(6) < 0
trigger17 = stateno = 1205 && movecontact = 1 && animelemtime(2) > 0 && animelemtime(6) < 0

;Crimson Star Road LDM
[State -1, Crimson Star Road LDM]
type = ChangeState
value = 2060
triggerall = var(59) != 1
triggerall = command = "DFDFC"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = fvar(5) >= 1000
trigger12 = stateno = 1200 && movecontact = 1 && statetype = S
trigger13 = fvar(5) >= 1000
trigger13 = stateno = 1205 && movecontact = 1 && statetype = S
trigger14 = fvar(5) >= 1000
trigger14 = stateno = 3002 && movecontact && statetype = S
trigger15 = fvar(5) >= 1000
trigger15 = stateno = 3100 && movecontact && statetype = S && time < 51
;---------------------------------------------------------------------------
;Chain Drive SDM
[State -1, Chain Drive SDM]
type = ChangeState
value = 3210
triggerall = var(59) != 1
triggerall = command = "QCFHCB_xy"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = fvar(5) >= 1000
trigger12 = stateno = 1200 && movecontact = 1 && statetype = S
trigger13 = fvar(5) >= 1000
trigger13 = stateno = 1205 && movecontact = 1 && statetype = S
trigger14 = stateno = 3206
;---------------------------------------------------------------------------
;Chain Drive DM
[State -1, Chain Drive DM]
type = ChangeState
value = 3200
triggerall = var(59) != 1
Triggerall = var(38) = 0
triggerall = command = "QCFHCB_x" || command = "QCFHCB_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger11 = stateno = 1452 && movecontact = 1
trigger12 = fvar(5) >= 1000
trigger12 = stateno = 1200 && movecontact = 1 && statetype = S
trigger13 = fvar(5) >= 1000
trigger13 = stateno = 1205 && movecontact = 1 && statetype = S
trigger14 = stateno = 1006
;-----------------------------------------------------------------------

[State sixing]
type = ChangeState
value = 7125
triggerall = command = "死星"
triggerall = life <= 300
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
[State -1, Chain Drive DM]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = var(38) = 0
triggerall = command = "禁于天式丶雷光散"
triggerall = p2stateno!= 555
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
;-------------------------------------------------------------------------------

[State -1, Execution]
type = ChangeState
value = 3500
triggerall = command = "我他妈不知道什么名字"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
triggerall = var(50) = 0

;-------------------------------------------------------------------------------
;-*------
[State -1]
Type = ChangeState
Value = 4200
TriggerAll = var(59) != 1
TriggerAll = Command = "苍炎并发"
TriggerAll = Power >= 3000
TriggerAll = StateType != A
Trigger1 = Ctrl
;---------------------------------------------------------------------------
;Heaven's Drive SDM
[State -1, Heaven's Drive SDM]
type = ChangeState
value = 3110
triggerall = var(59) != 1
triggerall = command = "2QCF_ab"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = fvar(5) >= 1000
trigger12 = stateno = 1200 && movecontact = 1 && statetype = S
trigger13 = fvar(5) >= 1000
trigger13 = stateno = 1205 && movecontact = 1 && statetype = S
trigger14 = stateno = 1200 && movecontact = 1 && animelemtime(2) > 0 && animelemtime(6) < 0
trigger15 = stateno = 1205 && movecontact = 1 && animelemtime(2) > 0 && animelemtime(6) < 0
;===========================================================================
;Specials
;---------------------------------------------------------------------------
;[State -1, Crimson Star Road LDdf]
;type = ChangeState
;value = 15572
;triggerall = command = "ying"
;triggerall = statetype != A
;trigger1 = ctrl 
;trigger2 = stateno = 211 && animelemtime(3) > 1 && ;animelemtime(6) < 0

;EX Air Trigger (Hard)
[State -1, EX Air Trigger (Hard)]
type = ChangeState
value = 1605
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = ifelse((Anim!=[5,6]),command="QCF_b",command="QCB_b")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810)
trigger3 = movecontact = 1
trigger4 = stateno = 1500 || stateno = 1505
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;EX Air Trigger (Weak)
[State -1, EX Air Trigger (Weak)]
type = ChangeState
value = 1600
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = ifelse((Anim!=[5,6]),command="QCF_a",command="QCB_a")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810)
trigger3 = movecontact = 1
trigger4 = stateno = 1500 || stateno = 1505
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;EX Minute Spike Aerial (Hard)
[State -1, EX Minute Spike Aerial (Hard)]
type = ChangeState
value = 1525
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = ifelse((Anim!=[5,6]),command="QCB_b",command="QCF_b")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810 || stateno = 1210)
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;EX Minute Spike Aerial (Weak)
[State -1, EX Minute Spike Aerial (Weak)]
type = ChangeState
value = 1520
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = ifelse((Anim!=[5,6]),command="QCB_a",command="QCF_a")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810 || stateno = 1210)
trigger3 = movecontact = 1
;-------------------------------------------------------------------------------
;EX Narrow Spike (EX M.Spike Follow-up)
[State -1, EX Narrow Spike]
type = ChangeState
value = 1510
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = command = "QCB_a" || command = "QCB_b"
trigger1 = stateno = 1500 && time > 9 || stateno = 1505 && time > 10
ignorehitpause = 1
;---------------------------------------------------------------------------
;EX Minute Spike (Hard)
[State -1, EX Minute Spike (Hard)]
type = ChangeState
value = 1505
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = ifelse((Anim!=[5,6]),command="QCB_b",command="QCF_b")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
;---------------------------------------------------------------------------
;EX Minute Spike (Weak)
[State -1, EX Minute Spike (Weak)]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = var(5) = 2
triggerall = ifelse((Anim!=[5,6]),command="QCB_a",command="QCF_a")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
;---------------------------------------------------------------------------
;Air Trigger (Hard)
[State -1, Air Trigger (Hard)]
type = ChangeState
value = 1405
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = ifelse((Anim!=[5,6]),command="QCF_b",command="QCB_b")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810)
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Air Trigger (Weak)
[State -1, Air Trigger (Weak)]
type = ChangeState
value = 1400
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = ifelse((Anim!=[5,6]),command="QCF_a",command="QCB_a")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810)
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Minute Spike Aerial (Hard)
[State -1, Minute Spike Aerial (Hard)]
type = ChangeState
value = 1325
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = ifelse((Anim!=[5,6]),command="QCB_b",command="QCF_b")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810 || stateno = 1210)
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Minute Spike Aerial (Weak)
[State -1, Minute Spike Aerial (Weak)]
type = ChangeState
value = 1320
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = ifelse((Anim!=[5,6]),command="QCB_a",command="QCF_a")
trigger1 = statetype = A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 610 || stateno = 640)
trigger2 = movecontact = 1
trigger3 = (stateno = 810 || stateno = 1210)
trigger3 = movecontact = 1
;-------------------------------------------------------------------------------
;Narrow Spike (M.Spike Follow-up)
[State -1, Narrow Spike]
type = ChangeState
value = 1310
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = command = "QCB_a" || command = "QCB_b"
trigger1 = stateno = 1300 && time > 4 || stateno = 1305 && time > 4
ignorehitpause = 1
;---------------------------------------------------------------------------
;[State -1, Minute Spike (Harda)]
;type = ChangeState
;value = 15578
;triggerall = var(5) = 1
;triggerall = ifelse((Anim!=;[5,6]),command="QCB_b",command="QCF_b")
;triggerall = statetype != A
;trigger1 = stateno = 15572 && animelemtime(10) > 0 && ;animelemtime(10) < 11

;Minute Spike (Hard)
[State -1, Minute Spike (Hard)]
type = ChangeState
value = 1305
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = ifelse((Anim!=[5,6]),command="QCB_b",command="QCF_b")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = stateno = 1006
;---------------------------------------------------------------------------
;Minute Spike (Weak)
[State -1, Minute Spike (Weak)]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = var(5) = 1
triggerall = ifelse((Anim!=[5,6]),command="QCB_a",command="QCF_a")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = stateno = 1006
;---------------------------------------------------------------------------
;Crow Bite (Hard)
[State -1, Crow Bite (Hard)]
type = ChangeState
value = 1205
triggerall = var(59) != 1
triggerall = ifelse((Anim!=[5,6]),command="DP_y",command="RDP_y")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = stateno = 1105
trigger13 = stateno = 1100
trigger14 = stateno = 1301
trigger15 = stateno = 1306
;---------------------------------------------------------------------------
;Crow Bite (Weak)
[State -1, Crow Bite (Weak)]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = ifelse((Anim!=[5,6]),command="DP_x",command="RDP_x")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
trigger12 = stateno = 1301
trigger13 = stateno = 1306
;---------------------------------------------------------------------------
;Blackout (Hard)
[State -1, Blackout (Hard)]
type = ChangeState
value = 1105
triggerall = var(59) != 1
triggerall = ifelse((Anim!=[5,6]),command="QCF_b",command="QCB_b")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
;---------------------------------------------------------------------------
;Blackout (Weak)
[State -1, Blackout (Weak)]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = ifelse((Anim!=[5,6]),command="QCF_a",command="QCB_a")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
;---------------------------------------------------------------------------
[State -1, Eins Trigger (Weak)]
type = ChangeState
value = 14444
triggerall = var(59) != 1
triggerall = command="14444"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
----------------------------------------------------------------------------
;Eins Trigger (Hard)
[State -1, Eins Trigger (Hard)]
type = ChangeState
value = 1015
triggerall = var(59) != 1
triggerall = ifelse((Anim!=[5,6]),command="QCF_y",command="QCB_y")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
;---------------------------------------------------------------------------
;Eins Trigger (Weak)
[State -1, Eins Trigger (Weak)]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = ifelse((Anim!=[5,6]),command="QCF_x",command="QCB_x")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
trigger9 = stateno = 980 && movecontact = 1
trigger10 = stateno = 801 && movecontact = 1
trigger11 = stateno = 821 && movecontact = 1
;---------------------------------------------------------------------------
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1450
triggerall = command = "乱舞A"
trigger1 = statetype != A
trigger1 = ctrl
;triggerall = var(58) = 0
trigger2 = stateno = 201
trigger2 = movecontact
trigger3 = stateno = 211&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 241
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1451
triggerall = command = "乱舞A"
trigger1 = stateno = 1450
;triggerall = var(58) = 0
trigger1 = animelem = 2, >= 1

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1452
triggerall = command = "乱舞A"
;triggerall = var(58) = 0
trigger1 = animelem = 5, >= 1
trigger1 = stateno = 1451

;===========================================================================
;[State -1,Animation Switch]
;type = ChangeState
;value = 9999
;triggerall = var(38) = 0
;triggerall = Power >= 1000
;triggerall = command = "9999"
;triggerall = statetype != A
;trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
;Guard Counter Blowback Attack
[State -1, Guard Counter Blowback Attack]
type = ChangeState
value = 995
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = command = "z" || command = "Blowback"
trigger1 = stateno = 150 || stateno = 151
trigger1 = power >= 1000
;---------------------------------------------------------------------------
;Blowback Attack Air
[State -1, Blowback Attack Air]
type = ChangeState
value = 990
triggerall = var(59) != 1
trigger1 = command = "z" || command = "Blowback"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Blowback Attack Ground
[State -1, Blowback Attack Ground]
type = ChangeState
value = 980
triggerall = var(59) != 1
trigger1 = command = "z" || command = "Blowback"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;--------------------------------------------------------------------------
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 770
triggerall = var(59) != 1
triggerall = power <= 6000
triggerall = (command = "PChargeA" && command = "PChargeY")
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 765
triggerall = var(59) != 1
trigger1 = command = "Roll/Dodge"
trigger1 = command != "holdfwd" && command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Emergency Evade Backward
[State -1, Emergency Evade Backward]
type = ChangeState
value = 761
triggerall = var(59) != 1
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = command = "Roll/Dodge" || command = "c"
trigger1 = stateno = 150 || stateno = 151
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;Emergency Evade Forward
[State -1, Emergency Evade Forward]
type = ChangeState
value = 760
triggerall = var(59) != 1
triggerall = command != "holdback"
triggerall = statetype != A
trigger1 = command = "Roll/Dodge" || command = "c"
trigger1 = stateno = 150 || stateno = 151
trigger1 = power>= 1000

;---------------------------------------------------------------------------
;Roll Backward
[State -1, Roll Backward]
type = ChangeState
value = 761
triggerall = var(59) != 1
trigger1 = command = "Roll/Dodge" || command = "c"
trigger1 = command = "holdback" || command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 760
triggerall = var(59) != 1
trigger1 = command = "Roll/Dodge" || command = "c"
trigger1 = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;===========================================================================
;-------------------------------------------------------------------------------
[State -1, Grab Attempt]
type = ChangeState
value = 15557
triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = command = "x" && command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != H
trigger1 = p2statetype != A

;Grab Attempt
[State -1, Grab Attempt]
type = ChangeState
value = 850
triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = command = "y" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != H
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
;Run Fwd
;僟僢僔儏
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;屻戅僟僢僔儏
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;Sniper Side
[State -1, Sniper Side]
type = ChangeState
value = 810
triggerall = var(59) != 1
triggerall = command = "holdfwd" && command = "a" && command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger4 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger8 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
;---------------------------------------------------------------------------
;Sniper Side
[State -1, Sniper Side]
type = Null
value = 810
triggerall = command = "holdfwd" && command = "a" && command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
;---------------------------------------------------------------------------
;One Inch C.I
[State -1, One Inch C.I]
type = ChangeState
value = 801
triggerall = var(59) != 1
triggerall = command = "holdfwd" && command = "x" && command != "holddown"
trigger1 = statetype != A
trigger1 = stateno = 201 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger2 = stateno = 211 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger3 = stateno = 231 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 241 && animelemtime(4) > 1 && animelemtime(5) < 0
trigger5 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger6 = stateno = 410 && animelemtime(3) > 1 && animelemtime(6) < 0
trigger7 = stateno = 440 && animelemtime(3) > 1 && animelemtime(6) < 0 && !movecontact
;---------------------------------------------------------------------------
;One Inch
[State -1, One Inch]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "holdfwd" && command = "x" && command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Taunt
;挧敪
[State -1, Taunt]
type = ChangeState
value = 1910
triggerall = var(59) != 1
triggerall = command = "start"
trigger1 = stateno != 1910
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x > 25
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && time > 5
trigger3 = stateno = 200 && time > 5
trigger4 = stateno = 231 && time > 5
trigger5 = stateno = 400 && time > 2
trigger6 = stateno = 430 && time > 2

;---------------------------------------------------------------------------
;Stand Light Punch C
[State -1, Stand Light Punch C]
type = ChangeState
value = 201
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 25
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && time > 5
trigger3 = stateno = 200 && time > 5
trigger4 = stateno = 231 && time > 5
trigger5 = stateno = 400 && time > 2
trigger6 = stateno = 430 && time > 2

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 25
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Stand Strong Punch C
[State -1, Stand Strong Punch C]
type = ChangeState
value = 211
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 25
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x > 35
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && time > 5
trigger3 = stateno = 200 && time > 5
trigger4 = stateno = 231 && time > 5
trigger5 = stateno = 400 && time > 2
trigger6 = stateno = 430 && time > 2

;---------------------------------------------------------------------------
;Stand Light Kick C
[State -1, Stand Light Kick C]
type = ChangeState
value = 231
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 35
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger2 = stateno = 201 && time > 5
trigger3 = stateno = 200 && time > 5
trigger4 = stateno = 231 && time > 5
trigger5 = stateno = 400 && time > 2
trigger6 = stateno = 430 && time > 2

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x > 25
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Standing Strong Kick C
[State -1, Standing Strong Kick C]
type = ChangeState
value = 241
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 25
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger3 = stateno = 400
trigger3 = time > 3
trigger4 = stateno = 430
trigger4 = time > 3

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100 && animelemtime(2) >1) || stateno = 101
trigger3 = stateno = 400
trigger3 = time > 3
trigger4 = stateno = 430
trigger4 = time > 3

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100 && animelemtime(2) >1) || stateno = 101

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick Vel X != 0
[State -1, Jump Light Kick Vel X != 0]
type = ChangeState
value = 631
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
;trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick Vel X != 0
[State -1, Jump Strong Kick Vel X!= 0]
type = Null
value = 641
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
-------------------------------------------------------------------------------
[State -1, C4534]
type = ChangeState
value = 2012
triggerall = var(59) != 1
triggerall = command = "2012"
triggerall = statetype = A
trigger1 = movetype = H
;trigger2 = Movetype != H
;trigger2 = ctrl = 1
-------------------------------------------------------------------------------
;THANKS TO ANJEL FOR ALL THIS

;---------------------------------------------------------------------------
; 各種ヘルパー
;---------------------------------------------------------------------------

[State -3, AI起動ヘルパー]
Type = Helper
triggerall = !var(59)
trigger1 =NumHelper(30000)=0
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

[State -3, ガードチェックヘルパー]
Type = Helper
triggerall = var(59) = 1
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

[State -3, 飛び道具確認ヘルパー]
Type = Helper
triggerall = var(59) = 1
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

[State -3, 飛び道具確認ヘルパー]
Type = Helper
triggerall = var(59) = 1
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

[State -3, 飛び道具確認ヘルパー]
Type = Helper
triggerall = var(59) = 1
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

[State -3]
Type = Helper
Trigger1 = !numhelper(33000)
HelperType = normal
name = "AI left"
ID = 33000
StateNo = 33000
Postype = p1
Facing = -1
PauseMoveTime = 0
Persistent = 0
IgnorehitPause = 1
KeyCtrl = 0
Ownpal = 1

[State -3]
type = Helper
trigger1 = !numhelper(999)
helpertype = normal
name = "AIhelper"
ID = 999
stateno = 999
pos = 9999,9999
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0

[State -3]
Type = Helper
Trigger1 =!NumHelper(20000+ID)
Trigger1 =!IsHelper
HelperType = normal
Name = "Edge of Stage Right"
PosType = P1
StateNo = 20000
ID = 20000+ID
PauseMoveTime = 0
Persistent= 0
IgnorehitPause= 1
KeyCtrl= 0
Ownpal= 1

[State -3]
Type= Helper
Trigger1 =!NumHelper(20001+ID)
Trigger1 =!IsHelper
HelperType = normal
Name = "Edge of Stage Left"
PosType = P1
StateNo = 20001
ID = 20001+ID
PauseMoveTime = 0
Persistent = 0
IgnorehitPause = 1
KeyCtrl = 0
Ownpal = 1

[State -3]
Type = HelPer
Trigger1 = !NumHelper(25000+ID)
HelPerType = normal
Name = "bullet"
StateNo = 25000
ID = 25000+ID
OwnPal = 1
pos = 5, 0
postype = p1
PauseMoveTime = 99999999
SuperMoveTime = 99999999
IgnoreHitPause = 1

[State -3]
Type = HelPer
Trigger1 = !NumHelper(26000+ID)
HelPerType = normal
Name = "mekuri"
StateNo = 26000
ID = 26000+ID
OwnPal = 1
pos = 0, 0
postype = p1
facing = -1
PauseMoveTime = 99999999
SuperMoveTime = 99999999
IgnoreHitPause = 1

;-------------------------------------------------------------------------------

[State -3]
Type = ChangeState
Trigger1 = IsHelper
Trigger1 = IsHelper(20000+root,ID)
Trigger1 = StateNo != 20000
Value = 20000

[State -3]
Type = ChangeState
Trigger1 = IsHelper
Trigger1 = IsHelper(20001+root,ID)
Trigger1 = StateNo != 20001
Value = 20001

[State -3, 関係無いステートに行かないように]
Type = ChangeState
Trigger1 = ishelper(30000)
Trigger1 = StateNo != 30000
Value = 30000

[State -3, 関係無いステートに行かないように]
Type = ChangeState
Trigger1 = ishelper
Trigger1 = ishelper(31000+root,id)
Trigger1 = StateNo != 31000
Value = 31000

[State -3]
Type = ChangeState
Trigger1 = ishelper(33000)
Trigger1 = StateNo != 33000
Value = 33000

[State -3, 関係無いステートに行かないように]
Type = SelfState
Trigger1 = ishelper(32000)
Trigger1 = StateNo != 32000
Value = 32000

[State -3, 関係無いステートに行かないように]
Type = SelfState
Trigger1 = ishelper(32500) || ishelper(32501)
Trigger1 = StateNo != 32500
Value = 32500

[State -3]
Type = ChangeState
Trigger1 = IsHelper
Trigger1 = IsHelper(25000+root,ID)
Trigger1 = StateNo != 25000
Value = 25000

[State -3]
Type = ChangeAnim
Trigger1 = IsHelper
Trigger1 = IsHelper(25000+root,ID)
Trigger1 = Anim != 0
Value = 0

[State -3]
Type = ChangeState
Trigger1 = IsHelper
Trigger1 = IsHelper(26000+root,ID)
Trigger1 = StateNo != 26000
Value = 26000

[State -3]
Type = ChangeAnim
Trigger1 = IsHelper
Trigger1 = IsHelper(26000+root,ID)
Trigger1 = Anim != 0
Value = 0

[State -1, Activate AI]
type = VarSet
triggerall = !ishelper || isHelper(30000)
triggerall = var(59) != 1
Triggerall = RoundState = [1,2]
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
trigger36 = command = "AI36"
trigger37 = command = "AI37"
trigger38 = command = "AI38"
trigger39 = command = "AI39"
trigger40 = command = "AI40"
trigger41 = NumHelper(30000)
trigger42 = Helper(30000),var(59)
trigger43 = Helper(30000),time > 5
Trigger44 = 0 ;1为开 0为关
var(59)   = 0  ;1为开  0为关  两个参数都要改动


;---------------------------------------------------------------------------
[State -3, AI]
Type = VarSet
TriggerAll = var(59) = 1
Trigger1 = RoundState = 4
Trigger2 = Win = 1
Trigger3 = Lose = 1
Trigger4 = DrawGame = 1
V = 59
Value = -1

[State -3, AI]
Type = VarSet
TriggerAll = var(59) = -1
Trigger1 = RoundState = 2
V = 59
Value = 1

;-----------------------------------------------------------------------------
;タッグ用生死判別
;-----------------------------------------------------------------------------
[State -3, VarSet]
Type = VarSet
Trigger1 = NumEnemy = 1
Trigger2 = NumEnemy = 2
Trigger2 = EnemyNear,Life > 0
var(58) = 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -3, VarSet]
Type = VarSet
Trigger1 = NumEnemy > 1
Trigger1 = Enemynear,Life = 0
var(58) = 1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;==============================================================================
;AIガード切り替え
;==============================================================================

[State -3, 防御する必要がない状況]
Type = VarSet
TriggerAll = !IsHelper
Trigger1 = NumEnemy = 0
Trigger2 = !InGuardDist
var(24) = 0
IgnoreHitPause = 1

[State -3, 立ち]
Type = VarSet
TriggerAll = var(59) = 1
TriggerAll =!IsHelper
TriggerAll = NumEnemy
TriggerAll = NumHelper(31000+ID)
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateNo != 0
Trigger1 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(10)
Trigger2 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(11)
Trigger3 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(12)
Trigger4 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(13)
Trigger5 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(14)
var(24) = 2
IgnoreHitPause = 1

[State -3, しゃがみ]
Type = VarSet
TriggerAll = var(59) = 1
TriggerAll =!IsHelper
TriggerAll = NumEnemy
TriggerAll = NumHelper(31000+ID)
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateNo != 0
Trigger1 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(20)
Trigger2 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(21)
Trigger3 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(22)
Trigger4 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(23)
Trigger5 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(24)
var(24) = 1
IgnoreHitPause = 1

[State -3, 立ち]
Type = VarSet
TriggerAll = var(59) = 1
TriggerAll =!IsHelper
TriggerAll = NumEnemy
TriggerAll = NumHelper(31000+ID)
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(20)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(21)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(22)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(23)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(24)
Trigger1 = var(55) = [1,4]
Trigger1 = EnemyNear(var(58)),StateType = A
Trigger1 = Random <= ((var(55) * 12.5) * var(54))
Trigger1 = Random <= 250
Trigger2 = var(55) > 4
Trigger2 = EnemyNear(var(58)),StateType = A
Trigger3 = var(55) > 4
Trigger3 = EnemyNear(var(58)),StateType = S
Trigger3 = EnemyNear(var(58)),Time >= 20
Trigger3 =!Enemy,NumProj
Trigger4 = var(55) > 4
Trigger4 = EnemyNear(var(58)),StateType = S
Trigger4 = EnemyNear(var(58)),AnimTime > 0
Trigger4 =!EnemyNear(var(58)),NumProj
var(24) = 2
IgnoreHitPause = 1

[State -3, しゃがみ]
Type = VarSet
TriggerAll = var(59) = 1
TriggerAll =!IsHelper
TriggerAll = NumEnemy
TriggerAll = NumHelper(31000+ID)
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),AnimTime <= 0
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(10)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(11)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(12)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(13)
TriggerAll = EnemyNear(var(58)),StateNo != Helper(31000+ID),var(14)
Trigger1 = var(55) = [1,4]
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = Random <= ((var(55) * 12.5) * var(54))
Trigger1 = Random <= 250
Trigger2 = var(55) > 4
Trigger2 = EnemyNear(var(58)),StateType = C
Trigger3 = var(55) > 4
Trigger3 = EnemyNear(var(58)),StateType = S
Trigger3 = EnemyNear(var(58)),Time < 20
Trigger3 =!EnemyNear(var(58)),NumProj
Trigger4 = var(55) > 4
Trigger4 = EnemyNear(var(58)),StateType = S
Trigger4 = Enemy,NumProj
var(24) = 1
IgnoreHitPause = 1

[State -3, 立ち]
Type = VarSet
TriggerAll = var(59) = 1
TriggerAll =!IsHelper
TriggerAll = NumEnemy
TriggerAll = NumHelper(31000+ID)
TriggerAll = StateType != A
TriggerAll = MoveType != H
Trigger1 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(10)
Trigger2 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(11)
Trigger3 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(12)
Trigger4 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(13)
Trigger5 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(14)
var(24) = 2
IgnoreHitPause = 1

[State -3, しゃがみ]
Type = VarSet
TriggerAll = var(59) = 1
TriggerAll =!IsHelper
TriggerAll = NumEnemy
TriggerAll = NumHelper(31000+ID)
TriggerAll = StateType != A
TriggerAll = MoveType != H
Trigger1 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(20)
Trigger2 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(21)
Trigger3 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(22)
Trigger4 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(23)
Trigger5 = EnemyNear(var(58)),StateNo = Helper(31000+ID),var(24)
var(24) = 1
IgnoreHitPause = 1

;-----------------------------------------------------------------------------
; AIレベル管理
;-----------------------------------------------------------------------------
[State -3, リミッター]
Type = VarSet
Trigger1 = var(55) > 8
Trigger2 = Var(54) > 10
var(55) = 0

[State -3, 反応速度制限]
Type = VarSet
Trigger1 = var(54) > var(55) + 2
var(54) = var(55) + 2

[State -3, リミッター]
Type = VarSet
Trigger1 = var(55) != 8
var(55) = 8

[State -3, リミッター]
Type = VarSet
Trigger1 = var(54) != 10
var(54) = 10

[State -3 ,movereversed]
type = varset
trigger1 = movereversed
v = 27
value = enemy,prevstateno
ignorehitpause = 1

[State -3 ,movereversed]
type = varset
trigger1 = movereversed
v = 28
value = enemy,stateno
ignorehitpause = 1

[State -3,varset]
Type = varset
trigger1 = NumEnemy = 1
fvar(37) = 0

[State -3,varset]
Type = varset
trigger1 = NumEnemy = 2
trigger1 = EnemyNear(0),Alive
trigger1 = EnemyNear(1),Alive
fvar(37) = IfElse(((Abs(Pos X - EnemyNear(0),Pos X)) < (Abs(Pos X - EnemyNear(1),Pos X))),0,1)
ignorehitpause = 1

[State -3,varset]
Type = varset
trigger1 = NumEnemy = 2
trigger1 = !EnemyNear(0),Alive || !EnemyNear(1),Alive
fvar(37) = IfElse(EnemyNear(0),Alive,0,1)
ignorehitpause = 1

[State -3]
type = Turn
triggerall = p2dist x < 0 && !time && var(59)
trigger1 = stateno = [150,154]

;────────────────────────────────────────
; 反応時間制限
;────────────────────────────────────────
[State -3,制限解除条件]
Type = VarSet
Trigger1 = PrevStateNo = [140,160)
Trigger2 = PrevStateNo = [760,761]
Trigger3 = PrevStateNo = 52000
Trigger4 = PrevStateNo = [5000,5270]
Trigger5 = PrevStateNo = [1100,1105]
fvar(38) = 2

[State -3,↑解除]
Type = VarAdd
Trigger1 = fvar(38) > 0
fvar(38) = -1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; タッグ用
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -3, 敵が１人]
Type = VarSet
Trigger1 = NumEnemy != 2
Trigger2 = !(EnemyNear(0),Alive && EnemyNear(1),Alive)
v = 51
Value = 0

[State -3, 敵が２人かつ前方のみ]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
Trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
v = 51
Value = 1

[State -3, 自分、パートナー、敵、敵]
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
Value = 2

[State -3, 自分、敵、パートナー、敵]
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
Value = 3

[State -3, 自分、敵、敵、パートナー]
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
Value = 4

[State -3, 背後に敵有り]
Type = VarSet
TriggerAll = NumEnemy = 2
TriggerAll = EnemyNear(0),Alive
TriggerAll = EnemyNear(1),Alive
Trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X < 0,EnemyNear(0),Pos X - Pos X > 0)
Trigger2 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X < 0,EnemyNear(1),Pos X - Pos X > 0)
v = 51
Value = 5

;---------------------------------------------------------------------------
[State -3, パートナー不在]
Type = VarSet
TriggerAll = TeamMode = Simul
Trigger1 = !NumPartner
Trigger2 = !Partner,Alive
v = 52
Value = 0

[State -3, パートナー後衛]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,Partner,Pos X - Pos X < 0,Partner,Pos X - Pos X > 0)
v = 52
Value = 1

[State -3, パートナー前衛]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
Trigger1 = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
v = 52
Value = 2

[State -3, パートナー被ダメージ]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll = Partner,MoveType = H
TriggerAll = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
Trigger1 = Partner,StateNo = [5000,5100)
Trigger2 = Partner,StateNo = [120,159]
v = 52
Value = 3

[State -3, パートナー攻撃中]
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
Value = 4

[State -3, パートナー被ステート奪取]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll = Partner,MoveType = H
TriggerAll = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
Trigger1 = Partner,StateNo != [5000,5500]
Trigger1 = Partner,StateNo != [120,159]
v = 52
Value = 5

[State -3, パートナーステート奪取]
Type = VarSet
TriggerAll = TeamMode = Simul
TriggerAll = NumPartner
TriggerAll = Partner,Alive
TriggerAll =(Partner,StateNo = [2000,4999]) || Partner,StateNo > 5500
Trigger1 = EnemyNear(var(58)),MoveType = H
Trigger1 = EnemyNear(var(58)),StateNo != [5000,5500]
Trigger1 = EnemyNear(var(58)),StateNo != [120,159]
v = 52
Value = 6

;------------------------------------------------------------------------------------
[State -3,ステージ前方端までの距離]
Type = VarSet
TriggerAll =(NumHelper(20000+ID) && NumHelper(20001+ID))
Trigger1 = TeamSide = 1
var(41) = floor(Abs(ifelse(facing = 1,Helper(20000+ID),RootDist X,Helper(20001+ID),RootDist X)))

[State -3]
Type = VarSet
TriggerAll =(NumHelper(20000+ID) && NumHelper(20001+ID))
Trigger1 = TeamSide = 2
var(41) = floor(Abs(ifelse(facing = 1,Helper(20001+ID),RootDist X,Helper(20000+ID),RootDist X)))

[State -3,ステージ後方端までの距離]
Type = VarSet
TriggerAll =(NumHelper(20000+ID) && NumHelper(20001+ID))
Trigger1 = TeamSide = 1
var(42) = floor(Abs(ifelse(facing = 1,Helper(20001+ID),RootDist X,Helper(20000+ID),RootDist X)))

[State -3]
Type = VarSet
TriggerAll =(NumHelper(20000+ID) && NumHelper(20001+ID))
Trigger1 = TeamSide = 2
var(42) = floor(Abs(ifelse(facing = 1,Helper(20000+ID),RootDist X,Helper(20001+ID),RootDist X)))

;==============================================================================

[State -3, Combo]
Type = VarSet
TriggerAll = !ishelper
Trigger1 = 1
fvar(6) = 0

[State -3, Combo]
Type = VarSet
TriggerAll = !ishelper
Trigger1 = StateNo = 200 && AnimElemTime(3) > 0
Trigger2 = StateNo = 201 && AnimElemTime(3) > 0
Trigger3 = StateNo = 210 && AnimElemTime(4) > 0
Trigger4 = StateNo = 211 && AnimElemTime(3) > 0
Trigger5 = StateNo = 230 && AnimElemTime(3) > 0
Trigger6 = StateNo = 231 && AnimElemTime(3) > 0
Trigger7 = StateNo = 240 && AnimElemTime(4) > 0
Trigger8 = StateNo = 241 && AnimElemTime(4) > 0
Trigger9 = StateNo = 400 && AnimElemTime(2) > 0
Trigger10 = StateNo = 410 && AnimElemTime(3) > 0
Trigger11 = StateNo = 430 && AnimElemTime(2) > 0
Trigger12 = StateNo = 440 && AnimElemTime(3) > 0
Trigger13 = StateNo = 310 && AnimElemTime(6) > 0
Trigger14 = StateNo = 315 && AnimElemTime(6) > 0
fvar(6) = 1

[State -3, Combo]
Type = VarSet
TriggerAll = !ishelper
Trigger1 = StateNo = 995 && AnimElemTime(5) > 0
fvar(6) = 2

;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef 5350, -3
; Var(2) - StateDef -2
; Var(5) - StateDef -2
; Var(6) - StateDef 191
; Var(7) - StateDef 765
; Var(8) - StateDef 1000, 1010, 1015
; Var(10) - StateDef 1205
; Var(11) - StateDef -2
; Var(12) - StateDef -2
; Var(13) - StateDef 3000
; Var(14) - StateDef 3100
; Var(15) - StateDef 3202, 3301
; Var(16) - StateDef -2
; Var(17) - StateDef -2, 600, 610, 630, 631, 640, 641
; Var(18) - StateDef -2
; Var(19) - StateDef 760, 761
; Var(50) - StateDef -2
; Var(56) - StateDef -2
; Var(57) - StateDef -2

;--------------------- Float Variable List ----------------------

; fVar(2) - StateDef -2
; fVar(5) - StateDef -2, 3000, 3010, 3100, 3110, 3200, 3300, 3400, 3500

;-------------------------------------------------------------------------------

;近距離立ち強パンチ
[State -3, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 700
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -3
triggerall = enemy,numproj = 0
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist || (prevstateno = [130,155]) || (prevstateno = [760,761]) || (PrevStateNo = [1100,1105])
triggerall = p2bodydist X < 24
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,149])
trigger1 = P2BodyDist X = [0+floor(5*(EnemyNear(var(58)),vel X)),24+floor(5*(EnemyNear(var(58)),vel X))]

;近距離立ち強パンチ
[State -3, Stand Strong Punch]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 660
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -3
triggerall = enemy,numproj = 0
triggerall =!InGuardDist || (prevstateno = [130,155]) || (stateno = [760,761]) && animtime = 0
triggerall = p2bodydist X < 30
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,149])
trigger1 = p2bodydist x = [-20,30]

;しゃがみ強パンチ
[State -3]
Type = ChangeState
Value = 410
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 100 || var(54) > 9
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, NT, ST, HT
TriggerAll = EnemyNear(var(58)),AnimTime <= -7
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll =!InGuardDist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = P2BodyDist X = [-5,15]

;近距離立ち弱キック
[State -3]
Type = ChangeState
Value = 231
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 100 || var(54) > 9
TriggerAll = StateType != A
TriggerAll = P2BodyDist X <= 25
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, NT, ST, HT
TriggerAll = EnemyNear(var(58)),AnimTime <= -4
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll =!InGuardDist
Trigger1 = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])

[State -3, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)
TriggerAll = StateType != A
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X = [-10,20]
triggerall = P2BodyDist Y >= 0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
TriggerAll = EnemyNear(var(58)),AnimTime <= -5
Triggerall = (PrevStateNo=[5000,5270]) || (PrevStateNo=[120,159]) || (prevstateno = [760,761]) || (PrevStateNo = [1100,1105]) || prevstateno = 52000
triggerall = EnemyNear(var(58)),ctrl = 0
Trigger1 = Random<= var(54)*100

[State -3, Crouching Light Punch]
type = ChangeState
value = ifelse(random <= 400,400,430)
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
triggerall = P2BodyDist X = [-20+floor(5*(EnemyNear(var(58)),vel X)),20+floor(5*(EnemyNear(var(58)),vel X))]
triggerall = P2BodyDist Y = [-10-floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20))]
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*40

[State -3, Stand Light Punch]
type = ChangeState
value = 430
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
triggerall = P2BodyDist X = [-20+floor(3*(EnemyNear(var(58)),vel X)),34+floor(3*(EnemyNear(var(58)),vel X))]
triggerall = P2BodyDist Y = [-45-floor(3*(EnemyNear(var(58)),vel Y)+(3*(3+1)/2)*fvar(20)),0-floor(3*(EnemyNear(var(58)),vel Y)+(3*(3+1)/2)*fvar(20))]
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = P2statetype != C
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*40

[State -3, Stand Light Kick]
type = ChangeState
value = 430
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
triggerall = P2BodyDist X = [-12+floor(3*(EnemyNear(var(58)),vel X)),40+floor(3*(EnemyNear(var(58)),vel X))]
triggerall = P2BodyDist Y = [-45-floor(3*(EnemyNear(var(58)),vel Y)+(3*(3+1)/2)*fvar(20)),0-floor(3*(EnemyNear(var(58)),vel Y)+(3*(3+1)/2)*fvar(20))]
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = P2statetype != C
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*40

;しゃがみ弱パンチ
[State -3]
Type = ChangeState
Value = 400
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 100 || var(54) > 9
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, NT, ST, HT
TriggerAll = EnemyNear(var(58)),AnimTime <= -3
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll =!InGuardDist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) 
Trigger1 = P2BodyDist X = [-5,25]

[State -3, Crouching Light Punch]
type = ChangeState
value = ifelse(Random <= 400,400,430)
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (StateNo = [100,101]) || (stateno = [120,149])
triggerall = P2BodyDist X = [-20+floor(3*(EnemyNear(var(58)),vel X)),30+floor(3*(EnemyNear(var(58)),vel X))]
triggerall = P2BodyDist Y = [-10-floor(3*(EnemyNear(var(58)),vel Y)+(3*(3+1)/2)*fvar(20)),0-floor(3*(EnemyNear(var(58)),vel Y)+(3*(3+1)/2)*fvar(20))]
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*90

[State -3, Crouching Light Kick]
type = ChangeState
value = ifelse(Random <= 400,211,400)
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
triggerall = P2BodyDist X = [-30+floor(5*(EnemyNear(var(58)),vel X)),20+floor(5*(EnemyNear(var(58)),vel X))]
triggerall = P2BodyDist Y >= 0--floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20))
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = P2statetype != C
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*90

[State -3, Crouching Light Kick]
type = ChangeState
value = ifelse(Random <= 400,400,430)
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
triggerall = P2BodyDist X = [-10,20]
triggerall = P2BodyDist Y >= 0
triggerall = P2statetype != L
triggerall = P2movetype = H
triggerall = P2statetype != A
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*100

[State -3, Crouching Light Kick]
type = ChangeState
value = ifelse(Random <= 400,211,430)
triggerall = var(59)
TriggerAll = StateType != A
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X = [-10,20]
triggerall = P2BodyDist Y >= 0
triggerall = ctrl || (stateno = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
TriggerAll = EnemyNear(var(58)),AnimTime <= -5
Triggerall = (PrevStateNo=[5000,5270]) || (PrevStateNo=[120,159]) || (prevstateno = [760,761]) || (PrevStateNo = [1100,1105]) || prevstateno = 52000
triggerall = EnemyNear(var(58)),ctrl = 0
Trigger1 = Random<= var(54)*100

[State -3, Standing Strong Kick]
type = ChangeState
value = ifelse(Random <= 400,400,430)
triggerall = var(59)
triggerall = roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
triggerall = P2BodyDist X = [-20+floor(8*(EnemyNear(var(58)),vel X)),40+floor(8*(EnemyNear(var(58)),vel X))]
triggerall = P2BodyDist Y = [-41-floor(8*(EnemyNear(var(58)),vel Y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(EnemyNear(var(58)),vel Y)+(8*(8+1)/2)*fvar(20))]
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = !InGuardDist
Trigger1 = Random <= var(54)*70

[State -3]
Type = ChangeState
Value = ifelse(p2statetype = C,400,201)
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 100
TriggerAll = StateType != A
TriggerAll = P2BodyDist X = [-15,20]
TriggerAll = EnemyNear(var(58)),AnimTime < -1
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || stateno = 1201 || stateno = 1206
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger2 = Enemy,HitDefAttr = SC,AT || EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = Enemy,Vel X > 0 || EnemyNear(var(58)),Vel X > 0

[State -3,しゃがみ弱パンチ タッグ]
Type = ChangeState
Value = 400
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 50 
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
Trigger1 = StateNo = 400 && (AnimElem=2,>1 && AnimElem=3,<0) && MoveHit
Trigger1 = P2BodyDist X = [0,20]

[State -3,しゃがみ弱パンチ タッグ]
Type = ChangeState
Value = 430
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 125
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
Trigger1 = StateNo = 400 && (AnimElem=2,>2 && AnimElem=3,<0) && MoveHit
Trigger1 = P2BodyDist X = [-5,24]

;しゃがみ弱パンチ
[State -3, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 720
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -3
triggerall = enemy,numproj = 0
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist || (prevstateno = [130,155]) || (prevstateno = [760,761]) || (PrevStateNo = [1100,1105]) || prevstateno = 52000
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,149])
trigger1 = p2bodydist x = [-15,20]

;近距離立ち強パンチ
[State -3, Stand Strong Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 720
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -3
triggerall = enemy,numproj = 0
triggerall =!InGuardDist || enemynear(var(58)),facing = facing || (prevstateno = [130,155]) || (prevstateno = [760,761]) || (PrevStateNo = [1100,1105]) || prevstateno = 52000
triggerall = p2bodydist X < 20
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,149])
trigger1 = p2bodydist x = [-15,20]

[State -3, Stand Strong Punch]
type = ChangeState
value = ifelse(Random <= 400,201,211)
triggerall = var(59) = 1
TriggerAll = StateType != A
TriggerAll = RoundState = 2
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-15,20]
triggerall = P2BodyDist Y = [-40,0]
triggerall = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || stateno = 1201 || stateno = 1206
TriggerAll = EnemyNear(var(58)),AnimTime <= -6
Triggerall = (PrevStateNo=[5000,5270]) || (PrevStateNo=[120,159]) || (prevstateno = [760,761]) || (PrevStateNo = [1100,1105]) || prevstateno = 52000
triggerall = EnemyNear(var(58)),ctrl = 0
Trigger1 = Random<= var(55)*125

;ダッシュ(隙突き)
[State -3, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = statetype != A
triggerall = P2Dist X > 0
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x > 120 || enemynear(var(58)),facing = facing
trigger1 = enemynear(var(58)),statetype = A
trigger1 = enemynear(var(58)),MoveType = A
trigger1 =!enemynear(var(58)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
trigger1 = enemynear(var(58)),Time >= 60
trigger2 = enemynear(var(58)),MoveType != H
trigger2 = enemynear(var(58)),StateType = A
trigger2 =!enemynear(var(58)),Ctrl
trigger2 = enemynear(var(58)),facing = facing
Trigger3 = EnemyNear(var(58)),MoveType != H
Trigger3 = EnemyNear(var(58)),StateType != A
Trigger3 =!EnemyNear(var(58)),Ctrl
Trigger3 = EnemyNear(var(58)),facing = facing
Trigger3 = EnemyNear(var(58)),HitDefAttr = SC, NA, SA, HA

;強百式?鬼焼き
[State -3, S ONIYAKI]
type = ChangeState
value = 201
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(54)*5 || (!time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(54) >= 10
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 600
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,149])
trigger1 = p2bodydist x = [-10,20]
trigger1 = enemynear(var(58)),animtime <= -3

;強百式?鬼焼き
[State -3, S ONIYAKI]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(54)*5 || (!time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(54) >= 10
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 600
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing = facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,149])
trigger1 = p2bodydist x = [-10,20]
trigger1 = enemynear(var(58)),animtime <= -3

;強百式?鬼焼き
[State -3, L Punch]
Type = ChangeState
Value = 400
TriggerAll = var(59)
TriggerAll = RoundState = 2
TriggerAll = Random <= var(55) * 125
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, NT, ST, HT
TriggerAll = EnemyNear(var(58)),AnimTime <= -3
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(39) || var(54) > 9
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = P2BodyDist X = [-5,20]

;強百式?鬼焼き
[State -3, S ONIYAKI]
type = ChangeState
value = 211
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(54)*5 || (!time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(54) >= 10
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 600
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing = facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-5,24]
trigger1 = p2bodydist y = [-45-floor(5*(enemynear(var(58)),vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear(var(58)),vel y)+(5*(5+1)/2)*fvar(20))]
trigger1 = enemynear(var(58)),animtime <= -15

;---------------------------------------------------------------------------
;対空
;---------------------------------------------------------------------------
;強百式?鬼焼き
[State -3, S ONIYAKI]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 400
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [ifelse(backedgebodydist<=10,-10,0+floor(6*(enemynear(var(58)),vel x))),50+floor(6*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-54-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]

;近距離立ち強パンチ
[State -3, Stand Strong Punch]
type = ChangeState
value = 241
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 400
triggerall = StateType != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = p2bodydist X < 30
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [0+floor(6*(enemynear(var(58)),vel x)),39+floor(6*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-80-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20)),0-floor(6*(enemynear(var(58)),vel y)+(6*(6+1)/2)*fvar(20))]

;しゃがみ強パンチ
[State -3, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-10+floor(8*(enemynear(var(58)),vel x)),23+floor(8*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-100-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]

;遠距離立ち弱パンチ
[State -3, Stand Light Punch]
type = ChangeState
value = 201
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = p2bodydist x <= 18
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-18,12]
trigger1 = abs(enemynear(var(58)),Pos Y - Pos Y) = [0,40]

;---------------------------------------------------------------------------
;下段
;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -3, Stand Light Kick]
type = ChangeState
value = 231
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = I || ((enemynear(var(58)),stateno = [120,159]) && random <= 250)
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = p2bodydist X < 20
triggerall = p2bodydist x = [-5,30]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 200 && ifelse(enemynear(var(58)),statetype = S,1,random <= 250)

;しゃがみ弱キック
[State -3, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = I || ((enemynear(var(58)),stateno = [120,159]) && random <= 250)
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = p2bodydist x = [-5,40]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 200 && ifelse(enemynear(var(58)),statetype = S,1,random <= 250)

;しゃがみ強キック
[State -3, Crouching Strong Kick]
type = ChangeState
value = 211
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = I || ((enemynear(var(58)),stateno = [120,159]) && random <= 250)
triggerall =!InGuardDist
triggerall = p2bodydist x = [-15,20]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 50 && ifelse(enemynear(var(58)),statetype = S,1,random <= 250)

;---------------------------------------------------------------------------
;中段
;---------------------------------------------------------------------------
;外式?轟斧　陽
[State -3, GOUHU]
type = ChangeState
value = 211
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = ifelse(power >= 2000,1,Random <= 400)
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = I || ((enemynear(var(58)),stateno = [120,159]) && random <= 250)
triggerall =!InGuardDist
triggerall = p2bodydist x = [-5,20]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = random <= 150 && ifelse(enemynear(var(58)),statetype = C,1,random <= 250)
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = random <= 200 && ifelse(enemynear(var(58)),statetype = C,1,random <= 250)

[State -3, 前小ジャンプ(中段)]
type = ChangeState
value = 32
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = I || ((enemynear(var(58)),stateno = [120,159]) && random <= 250)
triggerall =!InGuardDist
triggerall = p2bodydist x = [-10,60]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = random <= 150 && ifelse(enemynear(var(58)),statetype = C,1,random <= 250)
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = random <= 200 && ifelse(enemynear(var(58)),statetype = C,1,random <= 250)

[State -3, 前中ジャンプ(中段)]
type = ChangeState
value = 34
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = I || ((enemynear(var(58)),stateno = [120,159]) && random <= 250)
triggerall =!InGuardDist
triggerall = p2bodydist x = [40,100]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = random <= 150 && ifelse(enemynear(var(58)),statetype = C,1,random <= 250)
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = random <= 200 && ifelse(enemynear(var(58)),statetype = C,1,random <= 250)

[State -3, 中ジャンプ(対投げ用)]
type = ChangeState
value = 34
triggerall = var(59)
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 250
triggerall = StateType != A
triggerall =!Enemy,NumProj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = p2bodydist x = [-20,100]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),HitDefAttr = SC, NT, ST, HT

;---------------------------------------------------------------------------
;上段
;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -3]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = p2bodydist x = [-10,25]
triggerall = p2bodydist X < 25
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || stateno = 1201 || stateno = 1206
trigger1 = enemynear(var(58)),movetype = H
trigger1 = enemynear(var(58)),stateno != [120,159]

[State -3, Stand Strong Punch]
type = ChangeState
value = 231
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = p2bodydist x = [-5,30]
triggerall = p2bodydist X < 30
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = Random <= 200
trigger2 = enemynear(var(58)),movetype = H
trigger2 = enemynear(var(58)),stateno != [120,159]

;しゃがみ弱パンチ
[State -3, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 650
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-5,20]

;遠距離立ち弱キック
[State -3, Stand Light Kick]
type = ChangeState
value = 241
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = random <= 500
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist && enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-15,20]

;遠距離立ち弱パンチ
[State -3, Stand Light Punch]
type = ChangeState
value = 201
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 600
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = S
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist && enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-15,20]

;遠距離立ち強キック
[State -3, Stand Strong Kick]
type = ChangeState
value = 241
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 50
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist && enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-5,24]

;遠距離立ち強パンチ
[State -3, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist && enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-15,24]
trigger1 = Random <= 200

;────────────────────────────────────────
; 下段
;────────────────────────────────────────
[State -3,しゃがみ弱キック 下段 恐芣
Type = ChangeState
Value = 400
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = var(52) != [5,6]
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(54) * 75 || var(54) > 9
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = I && EnemyNear(var(58)),StateNo < 200 || EnemyNear(var(58)),facing = facing || EnemyNear(var(58)),Time <= 20-var(54)*3
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
TriggerAll =!InGuardDist && !Helper(26000+ID),InGuardDist || EnemyNear(var(58)),facing = facing || EnemyNear(var(58)),Time <= 20-var(54)*3
Trigger1 = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = P2bodyDist X = [-20,30]
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = Random < 500

;────────────────────────────────────────
; 対空
;────────────────────────────────────────
;しゃがみ強パンチ タッグ対空拾い
[State -3, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = var(52) = 4
triggerall = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(55) * 100))
triggerall = statetype != A
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateNo != [120,159]
triggerall = EnemyNear(var(58)),StateNo != [5100,5299]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = p2bodydist x = [-5,50]
trigger1 = p2bodydist y = [-80-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;移動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ダッシュ
[State -3, RUN]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = Random <= var(55) * 125
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149]) 
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200
trigger3 = p2bodydist x = [40,120]
trigger3 = Random <= 100

;ダッシュ
[State -3]
Type = ChangeState
Value = 100
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType != A || EnemyNear(var(58)),facing = facing
TriggerAll =!InGuardDist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [120,149]) 
Trigger1 = P2bodyDist X > 140
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = I
Trigger2 = P2bodyDist X > 100
Trigger2 = EnemyNear(var(58)),StateType = L
Trigger3 = P2bodyDist X > 140 || EnemyNear(var(58)),facing = facing && P2bodyDist X >= 40
Trigger3 = EnemyNear(var(58)),StateType = A
Trigger3 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger3 =!EnemyNear(var(58)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
Trigger4 = EnemyNear(var(58)),MoveType != H
Trigger4 = EnemyNear(var(58)),StateType = A
Trigger4 =!EnemyNear(var(58)),Ctrl
Trigger4 = EnemyNear(var(58)),facing = facing
Trigger4 = P2bodyDist X >= 40

;歩き
[State -3, Walk]
type = ChangeState
value = 21
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = StateType != A
triggerall = enemynear(var(58)),StateType != A
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),StateNo != [5120,5299]
triggerall = stateno != 21
triggerall = ctrl || (stateno = [20,22])
trigger1 = p2bodydist x <= 140
trigger1 =!InGuardDist || enemynear(var(58)),facing = facing
trigger2 = p2bodydist x > 180

[State -3, 垂直小ジャンプ]
Type = ChangeState
value = 39
triggerall = var(59)
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 25
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),StateNo != [5000,5120]
triggerall = !enemy,numproj
triggerall = ctrl || (stateno = [20,22])
trigger1 = p2bodydist x = [-5,35]

[State -3, 前ジャンプ]
Type = ChangeState
value = 30
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 10
triggerall = StateType != A
triggerall = !inguarddist
triggerall =!Enemy,NumProj
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),StateNo != [5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22])
trigger1 = p2bodydist x = [130,160]

[State -3, 前小ジャンプ]
Type = ChangeState
value = 32
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 25
triggerall = StateType != A
triggerall = enemynear(var(58)),movetype != H
triggerall = !enemy,numproj 
triggerall = enemynear(var(58)),StateNo != [5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22])
trigger1 = p2bodydist x = [-5,60]
trigger1 = enemynear(var(58)),statetype != A

[State -3, 前中ジャンプ]
Type = ChangeState
value = 34
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 25
triggerall = StateType != A
triggerall = enemynear(var(58)),movetype != H
triggerall = !enemy,numproj 
triggerall = !inguarddist
triggerall = enemynear(var(58)),StateNo != [5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = p2bodydist x = [40,100]
trigger1 = enemynear(var(58)),statetype != A

[State -3, 前大ジャンプ]
Type = ChangeState
value = 36
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 25
triggerall = StateType != A
triggerall =!Enemy,NumProj
triggerall = enemynear(var(58)),StateNo != [5000,5120]
triggerall = enemynear(var(58)),StateType != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = !inguarddist
trigger1 = enemynear(var(58)),movetype != H
trigger1 = p2bodydist x = [140,225]

[State -3, 後ジャンプ]
Type = ChangeState
value = 31
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 10
triggerall = StateType != A
triggerall = !inguarddist
triggerall = enemynear(var(58)),movetype != H
triggerall = (enemynear(var(58)),MoveType != A && enemynear(var(58)),statetype != A)
triggerall = ctrl || (stateno = [20,22])
trigger1 = p2bodydist x = [60,120]

[State -3, 後大ジャンプ]
Type = ChangeState
value = 37
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= var(55) * 125
triggerall = Random <= 10
triggerall = StateType != A
triggerall = !inguarddist
triggerall = enemynear(var(58)),movetype != H
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) 
trigger1 = p2bodydist x = [60,90]

;バックステップ
[State -3]
Type = ChangeState
Value = 105
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = BackEdgeBodyDist >= 40
TriggerAll = Ctrl || (StateNo = [120,149]) 
Trigger1 = P2BodyDist X < 80 || FrontEdgeBodyDist < 80
Trigger1 = EnemyNear(var(58)),StateNo = [5200,5299]
trigger1 =!Enemy,NumProj

;バックステップ
[State -3]
Type = ChangeState
Value = 105
TriggerAll = var(59) = 1
TriggerAll = Random <= var(55) * 75 || var(54) > 9
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = I
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll =!Enemy,NumProj
TriggerAll = Ctrl || (stateno = [120,149]) 
Trigger1 = P2BodyDist X = [100,140]
Trigger1 = Random < 30

;---------------------------------------------------------------------------
;位置取り
;---------------------------------------------------------------------------
;ダッシュ 起き攻め位置取り
[State -3, Dash]
Type = ChangeState
Value = 100
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = Random <= var(55) * 125
triggerall = RoundState = 2
triggerall = StateType != A
triggerall =!inguarddist
triggerall =!enemy,numproj
triggerall = p2bodydist x >= 90
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149]) 
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),StateNo = [5000,5100]
trigger2 = enemynear(var(58)),StateType = L

;歩き(起き攻め位置取り)
[State -3, Walk]
type = ChangeState
value = 22
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = stateno != 22
triggerall = ctrl || (stateno = [20,22])
trigger1 = enemynear(var(58)),StateType = L

[State -3, 中ジャンプ(対投げ用)]
Type = ChangeState
Value = 100
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 3
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= ((var(55) * 12.5) * var(54))
TriggerAll = StateType != A
TriggerAll =!InGuardDist || EnemyNear(var(58)),facing = facing || (PrevStateNo = [130,155]) || (PrevStateNo = [760,761]) || (PrevStateNo = [1100,1105]) || fvar(38)
TriggerAll = P2bodyDist X >= 40
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),HitDefAttr = SC, NT, ST, HT ,NA

;---------------------------------------------------------------------------
;起き攻め
;---------------------------------------------------------------------------

[State -3, 起き攻め選択]
Type = varset
TriggerAll = var(59)
TriggerAll = var(44) = 0
TriggerAll = roundstate = 2
TriggerAll = EnemyNear(var(58)),StateType = L && EnemyNear(var(58)),MoveType != A
TriggerAll = EnemyNear(var(58)),Ctrl = 0
TriggerAll = EnemyNear(var(58)),StateNo != 5120 || EnemyNear(var(58)),AnimTime < -4
Trigger1 = StateType != L && MoveType != H
Trigger1 = P2bodyDist X <= 150
var(44) = 1 + (random % 6)

[State -3, リセット]
Type = varset
TriggerAll = var(44) != 0
Trigger1 = roundstate != 2 || MoveType = H || MoveType = A || StateType = L
var(44) = 0

[State -3];上のリセット
Type = varset
TriggerAll = var(44) != 0
Trigger1 = var(44) = 1 && EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime > -10
Trigger2 = var(44) = 2 && EnemyNear(var(58)),StateNo = 5120
Trigger2 = EnemyNear(var(58)),AnimTime > -10
Trigger2 = !((StateNo = [30,39]) || StateType = A)
Trigger3 = var(44) = 3 && EnemyNear(var(58)),StateNo = 5120
Trigger3 = EnemyNear(var(58)),AnimTime > -5
Trigger4 = var(44) = 4 && EnemyNear(var(58)),StateNo = 5120
Trigger5 = (var(44) = [5,6]) && EnemyNear(var(58)),StateNo = 5120
Trigger5 = EnemyNear(var(58)),AnimTime > -12
var(44) = 10

[State -3, しゃがみ弱キック 下段起き攻め]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 1
triggerall = PalNo = 6
TriggerAll = RoundState = 2
TriggerAll = Random <= (200 + (var(55) * 50))
TriggerAll = StateType != A
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = P2bodyDist X = [-20,60]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

[State -3, しゃがみ弱キック 下段起き攻め]
Type = ChangeState
Value = 1234566
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 1
triggerall = PalNo = 6
TriggerAll = RoundState = 2
TriggerAll = Random <= (200 + (var(55) * 100))
TriggerAll = StateType != A
TriggerAll = P2bodyDist X = [-20,60]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

[State -3, しゃがみ弱キック 下段起き攻め]
Type = ChangeState
Value = 1234566
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 1
triggerall = PalNo != 6
TriggerAll = RoundState = 2
TriggerAll = Random <= (200 + (var(55) * 50))
TriggerAll = StateType != A
TriggerAll = P2bodyDist X = [-20,60]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

[State -3, しゃがみ弱キック 下段起き攻め]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 1
triggerall = PalNo != 6
TriggerAll = RoundState = 2
TriggerAll = Random <= (200 + (var(55) * 100))
TriggerAll = StateType != A
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = P2bodyDist X = [-20,60]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

[State -3, ワンインチ 中段起き攻め]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 2
TriggerAll = RoundState = 2
TriggerAll = Random <= (200 + (var(55) * 100))
TriggerAll = Random <= 10
TriggerAll = StateType != A
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = P2bodyDist X = [-20,60]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

[State -3, ニーアサルト 中段起き攻め]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 2
TriggerAll = RoundState = 2
TriggerAll = Random <= (200 + (var(55) * 100))
TriggerAll = Random <= 250
TriggerAll = StateType != A
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = P2bodyDist X = [-20,50]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

[State -3, 小ジャンプ 中段起き攻め]
Type = ChangeState
Value = 32
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 2
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2bodyDist X = [-20,60]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-18,-12]

[State -3, 中ジャンプ 中段起き攻め]
Type = ChangeState
Value = 34
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 2
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2bodyDist X = [-20,100]
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-18,-12]

[State -3, ジャンプ強パンチ 起き攻め]
Type = ChangeState
Value = 610
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 2
TriggerAll = RoundState = 2
TriggerAll = StateType = A
TriggerAll = Ctrl
Trigger1 = Vel Y > 0

[State -3, バックステップ／強ブラックアウト 起き攻め放棄]
Type = ChangeState
Value = ifelse(BackEdgeBodyDist <= 20,761,105)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = 3
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = BackEdgeBodyDist <= 20
Trigger1 = EnemyNear(var(58)),StateType = L && P2bodyDist X <= 80 && !Inguarddist
Trigger1 = EnemyNear(var(58)),StateNo != 5120
Trigger2 = EnemyNear(var(58)),StateNo = 5120
Trigger2 = EnemyNear(var(58)),AnimTime >= -10

[State -3, 弱アイントリガー 重ね]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1
TriggerAll = var(44) = [5,6]
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2bodyDist x = [-20,70]
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = EnemyNear(var(58)),StateNo = 5120
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-12]

;弱アイントリガー　起き攻め
[State -3, L AT]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1 && (var(55) < 4 && random <= (200 + (var(55) * 200)) || var(55) >= 4)
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = random <= (200 + (var(55) * 100))
TriggerAll = random <= 600
TriggerAll = StateType != A
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = P2bodyDist x >= 160
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),StateType = A || EnemyNear(var(58)),StateType = L
TriggerAll = EnemyNear(var(58)),StateNo != 2020 && P2bodyDist X <= 150 || EnemyNear(var(58)),StateNo = 2020 && P2bodyDist X > 150
Trigger1 = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])

[State -3,弱アイン 起き攻め]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59)
TriggerAll = var(55) >= 3
TriggerAll = roundstate = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType = L ||  EnemyNear(var(58)),StateNo = 5120
TriggerAll = EnemyNear(var(58)),Vel X = 0
TriggerAll = Random<= 50 + var(54)*55
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
TriggerAll =  Abs(EnemyNear(var(58)),Pos X - Pos X) < 95
Trigger1 = EnemyNear(var(58)),StateNo = [5120,5130)
Trigger1 = EnemyNear(var(58)),AnimTime = [-35,-20]

[State -3,強アイン 起き攻め]
Type = ChangeState
Value = ifelse(Random <= 500,1000,14444)
TriggerAll = var(59)
TriggerAll = var(55) >= 3
TriggerAll = roundstate = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType = L
TriggerAll = EnemyNear(var(58)),Vel X = 0
TriggerAll = Random <= 20 + var(54)*60
TriggerAll = numprojID(1000) = 0 || numprojID(14444) = 0
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
TriggerAll =  Abs(EnemyNear(var(58)),Pos X - Pos X) < 100
Trigger1 = EnemyNear(var(58)),StateNo = [5120,5130)
Trigger1 = EnemyNear(var(58)),AnimTime = [-19,-10]

[State -3,バックステップ、後転 起き攻め放棄]
Type = ChangeState
Value = ifelse(Random < 500,105,761)
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = var(42) >= 100 
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll =!NumHelper(1005)
TriggerAll = !helper(25000+ID),inguarddist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = Abs(EnemyNear(var(58)),Pos X - Pos X) = [0,70]
Trigger1 = EnemyNear(var(58)),StateNo = [5120,5130)
Trigger1 = EnemyNear(var(58)),AnimTime > -3
Trigger1 = random < 50

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;立ち回り、技振り(空中)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -3, AssertSpecial]
type = AssertSpecial
triggerall = FrontEdgeBodyDist <= 50
trigger1 = var(59) && stateno = 610
trigger1 = random < 600
trigger2 = var(59) && stateno = 631
trigger2 = random < 600
trigger3 = var(59) && stateno = 610
trigger3 = random < 650
flag = unguardable

[State -3, Jump Strong Punch]
type = ChangeState
value = ifelse(FrontEdgeBodyDist > 20,610,610)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = stateno != 105
triggerall = statetype = A
triggerall = ctrl || (stateno = [120,149])
triggerall = vel X != 0
triggerall = P2BodyDist X = [-31+floor(5*(EnemyNear(var(58)),vel X)+floor(5*vel X)),31+floor(5*(EnemyNear(var(58)),vel X)+floor(5*vel X))]
triggerall = P2BodyDist Y = [-36-floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20)-floor(5*vel Y)-(5*(5+1)/2)*0.54),76-floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20)-floor(5*vel Y)-(5*(5+1)/2)*0.54)]
triggerall = (EnemyNear(var(58)),statetype != A && Vel Y >= 0) || EnemyNear(var(58)),statetype = A
triggerall = P2statetype != L
trigger1 = random <= 1000

[State -3, Jump Strong Punch]
type = ChangeState
value = ifelse(FrontEdgeBodyDist > 20,610,640)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = stateno != 105
triggerall = statetype = A
triggerall = ctrl || (stateno = [120,149])
triggerall = vel X != 0
triggerall = P2BodyDist X = [-31+floor(5*(EnemyNear(var(58)),vel X)+floor(5*vel X)),31+floor(5*(EnemyNear(var(58)),vel X)+floor(5*vel X))]
triggerall = P2BodyDist Y = [-36-floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20)-floor(5*vel Y)-(5*(5+1)/2)*0.54),76-floor(5*(EnemyNear(var(58)),vel Y)+(5*(5+1)/2)*fvar(20)-floor(5*vel Y)-(5*(5+1)/2)*0.54)]
triggerall = (EnemyNear(var(58)),statetype != A && Vel Y >= 0) || EnemyNear(var(58)),statetype = A
triggerall = P2statetype != L
trigger1 = random <= 1000

[State -3, Jump Strong Kick]
type = ChangeState
value = ifelse(Random <= 400,610,640)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = stateno != 105
triggerall = statetype = A
triggerall = ctrl && FrontEdgeBodyDist > 20 || (stateno = [120,149])
triggerall = P2BodyDist X = [-00+floor(7*(EnemyNear(var(58)),vel X)+floor(7*vel X)),54+floor(7*(EnemyNear(var(58)),vel X)+floor(7*vel X))]
triggerall = P2BodyDist Y = [-30-floor(7*(EnemyNear(var(58)),vel Y)+(7*(7+1)/2)*fvar(20)-floor(7*vel Y)-(7*(7+1)/2)*0.54),60-floor(7*(EnemyNear(var(58)),vel Y)+(7*(7+1)/2)*fvar(20)-floor(7*vel Y)-(7*(7+1)/2)*0.54)]
triggerall = (EnemyNear(var(58)),statetype != A && Vel Y >= 0) || EnemyNear(var(58)),statetype = A
triggerall = P2statetype != L
trigger1 = random <= 1000

[State -3, FWalk]
type = ChangeState
value = ifelse(FrontEdgeBodyDist > 20 && (p2stateno = [120,159]),610,640)
triggerall = var(59)
triggerall = statetype = A && vel x != 0
triggerall = p2statetype != A
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-30,70]
triggerall = EnemyNear(var(58)),BackEdgeBodyDist >= 20
trigger1 = vel y > .1
trigger1 = ctrl || (stateno = [120,149])

[State -3, Jump Strong Kick]
type = ChangeState
value = ifelse(FrontEdgeBodyDist > 20 && (p2stateno = [120,159]),640,640)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl || (stateno = [120,149])
triggerall = stateno != 105
triggerall = P2BodyDist X = [-35,54]
triggerall = P2BodyDist Y = [-30,70]
triggerall = P2StateType != A
triggerall = P2movetype = H
triggerall = P2StateType != L
trigger1 = vel y >.1
Trigger1 = Random <= 1000

[State -3, Jump Strong Kick]
type = ChangeState
value = ifelse(FrontEdgeBodyDist > 20 && (p2stateno = [120,159]),610,640)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl || (stateno = [120,149])
triggerall = stateno != 105
triggerall = P2BodyDist X = [-35,54]
triggerall = P2BodyDist Y = [-30,70]
triggerall = P2StateType != A
triggerall = P2movetype != H
triggerall = P2StateType != C
triggerall = P2StateType != L
trigger1 = vel y >.1
Trigger1 = Random <= 1000

[State -3]
Type = ChangeState
Value = 610
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2
TriggerAll = Random <= 250 + var(54) * 50 || var(54) > 7
TriggerAll = StateType = A
TriggerAll = Vel X >= 0 || BackEdgeBodyDist < 40 && Vel Y > 0
TriggerAll = p2bodydist X = [-35,28+floor(7*vel X)]
TriggerAll = P2BodyDist Y < 65 || Vel Y > 10
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
TriggerAll = Ctrl || (StateNo = [120,149])
Trigger1 = Vel Y > 0
Trigger1 = P2BodyDist X = [-10,45]
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = FrontEdgeBodyDist >= 80
Trigger1 = Random < 750

[State -3]
Type = ChangeState
Value = 610
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2
TriggerAll = Random <= 250 + var(54) * 50 || var(54) > 7
TriggerAll = StateType = A
TriggerAll = Vel X 
TriggerAll = P2BodyDist X = [-20,30]
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
TriggerAll = Ctrl || (StateNo = [120,149])
Trigger1 = Vel Y < 0
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = Random < 500
Trigger2 = P2BodyDist Y < 0 || EnemyNear(var(58)),Pos Y < -50
Trigger2 = Vel X > 0 || BackEdgeBodyDist < 10
Trigger2 = EnemyNear(var(58)),Vel X >= 0
Trigger2 = EnemyNear(var(58)),StateType = A
Trigger2 = EnemyNear(var(58)),MoveType != H
Trigger2 = Pos Y < -70 || Vel Y > 0

[State -3]
Type = ChangeState
Value = 610
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2
TriggerAll = Random <= 250 + var(54) * 50 || var(54) > 7
TriggerAll = StateType = A
Trigger1 = Ctrl || (StateNo = [120,149])
Trigger1 = Vel Y < 0
Trigger1 = P2BodyDist X = [-20,30]
Trigger1 = P2BodyDist Y = [-25,40]
Trigger1 = EnemyNear(var(58)),StateType = A
Trigger1 = Random = [301,600]
Trigger2 = Ctrl || (StateNo = [120,149])
Trigger2 = Vel Y > 0
Trigger2 = P2BodyDist X = [-30,0]
Trigger2 = EnemyNear(var(58)),StateType != A

[State -3]
Type = ChangeState
Value = 640
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2
TriggerAll = Random <= 250 + var(54) * 50 || var(54) > 7
TriggerAll = StateType = A
TriggerAll = ifelse(Vel X >= 4,(P2BodyDist X = [0,120]),(P2BodyDist X = [0,100]))
TriggerAll =(P2BodyDist Y = [-40,40]) || Vel Y > 0
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),StateNo != [5100,5299]
TriggerAll = Ctrl || (StateNo = [120,149])
Trigger1 = Vel X > 0 || P2BodyDist X < 30
Trigger1 = Vel Y > 0 || P2BodyDist Y = [50,51]
Trigger1 = ifelse(Vel X >= 4,(P2BodyDist X = [46,120]),(P2BodyDist X = [0,80]))
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = Random <= 600
Trigger2 = P2BodyDist Y < 0 || EnemyNear(var(58)),Pos Y < -50
Trigger2 = Vel X > 0 || BackEdgeBodyDist < 10
Trigger2 = EnemyNear(var(58)),Vel X >= 0
Trigger2 = EnemyNear(var(58)),StateType = A
Trigger2 = EnemyNear(var(58)),MoveType != H

[State -3, NARAKU]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || (stateno = [120,149])
trigger1 = enemynear(var(58)),StateType != A
trigger1 = var(4) = 0 && time >= 14 || var(4) = 1 && time >= 4
trigger1 = Vel Y < 0
trigger1 = p2dist x = [-40+floor(8*vel X),-5+floor(8*vel X)]
trigger2 = enemynear(var(58)),StateType = A
trigger2 = p2bodydist x = [-10,35+floor(8*(EnemyNear(var(58)),vel X)+floor(8*vel X))]
trigger2 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]

;ジャンプ弱パンチ
[State -3, Jump Light Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = random >= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x = [-10,30]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-60,20]
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),MoveType != H

;ジャンプ強パンチ
[State -3, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = Random >= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || (stateno = [120,149])
trigger1 = enemynear(var(58)),statetype != A
trigger1 = Vel Y >= 0 && Pos Y >= -50-floor(7*vel Y)
trigger1 = p2bodydist x = [-35,28+floor(7*vel X)]
trigger2 = enemynear(var(58)),statetype = A
trigger2 = p2bodydist x = [-10,28+floor(7*vel X)]
trigger2 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]
trigger2 = enemynear(var(58)),movetype != H

;ジャンプ強パンチ
[State -3, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || (stateno = [120,149])
trigger1 = enemynear(var(58)),statetype != A
trigger1 = Vel Y >= 0 && Pos Y >= -50-floor(7*vel Y)
trigger1 = p2bodydist x = [-35,28+floor(7*vel X)]
trigger2 = enemynear(var(58)),statetype = A
trigger2 = p2bodydist x = [-10,28+floor(7*vel X)]
trigger2 = enemynear(var(58)),Pos Y - Pos Y = [-40,40]
trigger2 = enemynear(var(58)),movetype != H

;斜めジャンプ弱キック
[State -3, Jump Light Kick]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = vel X != 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = Vel Y >= 0
trigger1 = p2dist x = [-40+floor(7*vel X),-5+floor(7*vel X)]

;ジャンプ弱パンチ
[State -3, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x = [-10,30]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-60,20]
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),MoveType != H

;斜めジャンプ弱キック
[State -3, Jump Light Kick]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = Random >= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = vel X != 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = Vel Y >= 0
trigger1 = p2dist x = [-40+floor(7*vel X),-5+floor(7*vel X)]

;斜めジャンプ弱キック
[State -3, Jump Light Kick]
type = ChangeState
value = 631
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = S
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = vel X != 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = Vel Y >= 0
trigger1 = p2bodydist Y = [-40,40]
trigger1 = p2bodydist X = [-40,40]

;斜めジャンプ弱キック
[State -3, Jump Light Kick]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = vel X != 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = Vel Y >= 0
trigger1 = p2bodydist Y = [-50,50]

;垂直ジャンプ強キック
[State -3, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = vel X = 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x = [-10,56+floor(12*(EnemyNear(var(58)),vel X)+floor(12*vel X))]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-80,20]
trigger1 = enemynear(var(58)),StateType = A
trigger2 = vel X = 0
trigger2 = Vel Y >= 0
trigger2 = p2bodydist x = [-10,56+floor(12*(EnemyNear(var(58)),vel X)+floor(12*vel X))]
trigger2 = enemynear(var(58)),statetype != A

;斜めジャンプ強キック
[State -3, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= var(55) * 125
triggerall = random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = vel X != 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x = [-10,61+floor(10*(EnemyNear(var(58)),vel X)+floor(10*vel X))]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-80,20]
trigger1 = enemynear(var(58)),StateType = A
trigger2 = vel X != 0
trigger2 = Vel Y >= 0
trigger2 = p2bodydist x = [-10,61+floor(10*(EnemyNear(var(58)),vel X)+floor(10*vel X))]
trigger2 = enemynear(var(58)),statetype != A

;==============================================================================

[State -3]
type = ChangeState
value = 850
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = Roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = P2Movetype != H
triggerall = P2stateno != [5000,5050]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 1201 || stateno = 1206 || (stateno = [120,159])
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2statetype != L
triggerall = p2stateno != 5120
triggerall = p2bodydist x = [-10,20]
trigger1 = EnemyNear(var(58)),facing != facing
trigger2 = EnemyNear(var(58)),Animtime < -5
trigger2 = EnemyNear(var(58)),facing  = facing

[State -3]
type = ChangeState
value = 850
triggerall = var(59)
triggerall = var(55) >= 3
triggerall = Roundstate = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = P2Movetype != H
triggerall = P2stateno != [5000,5050]
triggerall = Stateno = 200 || Stateno = 201 || Stateno = 211 || Stateno = 400 || Stateno = 410 || Stateno = 241 || Stateno = 231
triggerall = !MoveContact && Animtime = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2statetype != L
triggerall = p2stateno != 5120
triggerall = p2bodydist x = [-10,20]
trigger1 = EnemyNear(var(58)),facing != facing
trigger2 = EnemyNear(var(58)),Animtime < -5
trigger2 = EnemyNear(var(58)),facing  = facing

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;飛び道具対策
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;前転(飛び道具対策)
[State -3, FRoll]
Type = ChangeState
Value = 760
TriggerAll = var(59)
TriggerAll = var(55) >= 3
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= ((var(55) * 12.5) * var(54))
TriggerAll = Random <= 600
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = InGuardDist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])
Trigger1 = P2bodyDist X >= 200 || (EnemyNear(var(58)),AnimTime <= -35 && !EnemyNear(var(58)),Ctrl)
Trigger1 = (Enemy,NumHelper > 0 && Enemy,NumHelper > Helper(32000),var(1)) || Enemy,Numproj != 0
Trigger1 = var(45) = 1

[State -3,ブラックアウト 空キャン]
Type = ChangeState
Value = 1100
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= ((var(55) * 12.5) * var(54))
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = (stateno = [200,499]) && Movetype != H
trigger1 = Enemy,stateno = var(27)
trigger1 = stateno != [1100,1105]
trigger2 = Enemy,stateno = var(28)
trigger2 = stateno != [1100,1105]

[State -3, ブラックアウト 空キャン]
Type = ChangeState
Value = ifelse(var(41) < 120 && !Enemy,NumProj,761,1100)
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 125 || var(55) > 9
TriggerAll = StateType != A
TriggerAll = Ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = InGuardDist || (Enemy,NumProj || Enemy,NumHelper) && !EnemyNear(var(58)),Ctrl && EnemyNear(var(58)),AnimTime <= -35
Trigger1 = Abs(EnemyNear(var(58)),Pos X - Pos X) < 170
Trigger1 = (PrevStateNo = [5000,5270]) || PrevStateNo = 52000

[State -3, ブラックアウト 空キャン]
Type = ChangeState
Value = 1100
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 125 || var(55) > 9
TriggerAll = StateType != A
TriggerAll = Abs(EnemyNear(var(58)),Pos X - Pos X) < 170
TriggerAll = var(41) >= 120
Trigger1 = StateNo = 5120 && AnimTime = [-3,0]
Trigger1 = !EnemyNear(var(58)),Ctrl && EnemyNear(var(58)),AnimTime <= -35
Trigger1 = InGuardDist || Enemy,NumProj || Enemy,NumHelper

[State -3, ブラックアウト 空キャン]
Type = ChangeState
Value = ifelse(var(41) < 120 && !Enemy,NumProj,761,1100)
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(55) * 125 || var(55) > 9
TriggerAll = StateType != A
TriggerAll = Abs(EnemyNear(var(58)),Pos X - Pos X) < 170
Trigger1 = Abs(EnemyNear(var(58)),Pos X - Pos X) < 110
Trigger1 = StateNo = 5120 && AnimTime = [-3,0]
Trigger1 = EnemyNear(var(58)),StateType = A || EnemyNear(var(58)),Vel X >= 0
Trigger1 = !EnemyNear(var(58)),Ctrl || EnemyNear(var(58)),StateType = A

;ガードキャンセル前転
[State -3, GCFRoll]
Type = ChangeState
Value = 760
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 3
TriggerAll = RoundState = 2
TriggerAll = power >= 1000
TriggerAll = Random <= var(55) * 125
TriggerAll = StateType != A
TriggerAll = (StateNo = 150 || StateNo = 152) && HitShakeOver
Trigger1 = P2bodyDist x = [0,50]
Trigger1 = EnemyNear(var(58)),StateNo >= 200
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A
Trigger1 = EnemyNear(var(58)),AnimTime <= -30

[State -3, T S]
Type = ChangeState
Value = 760
TriggerAll = var(59)
TriggerAll = roundstate = 2
TriggerAll = StateNo = [150,152]
TriggerAll = power >= 1000
TriggerAll = StateType != A
TriggerAll = P2MoveType = A
TriggerAll = P2StateType != L
TriggerAll = EnemyNear(var(58)),AnimTime <= -40
TriggerAll = EnemyNear(var(58)),BackEdgeBodyDist >= 40
TriggerAll = BackEdgeBodyDist <= 16
TriggerAll = P2bodyDist X = [0,120]
Trigger1 = Random <= var(55)*125

;前転
[State -3, FRoll]
Type = ChangeState
Value = 760
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5 || fvar(38) || (!Time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(54) >= 10
TriggerAll = Random <= ((var(55) * 12.5) * var(54))
TriggerAll = Random <= 600
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, AT
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll = InGuardDist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) 
Trigger1 = P2bodyDist x = [-10,150]
Trigger1 = EnemyNear(var(58)),AnimTime <= -30
;バックステップ
[State -3]
Type = ChangeState
Value = 105
TriggerAll = var(59) = 1
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = BackEdgeBodyDist >= 40
TriggerAll = Ctrl || (StateNo = [120,149]) 
Trigger1 = P2bodyDist X < 80 || FrontEdgeBodyDist < 80
Trigger1 = enemyNear(var(58)),StateNo = [5200,5299]
Trigger1 =!enemy,NumProj
Trigger2 = fvar(22) != 0

;バックステップ
[State -3, L OB]
Type = ChangeState
Value = 1100
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = BackEdgeBodyDist < 40
TriggerAll = Ctrl || (StateNo = [120,149])
Trigger1 = P2BodyDist X < 80 && FrontEdgeBodyDist >= 80
Trigger1 = enemyNear(var(58)),StateNo = [5200,5299]
Trigger1 =!enemy,NumProj
Trigger2 = fvar(22) != 0

;後転
[State -3, BRoll]
type = ChangeState
value = 761
triggerall = var(59)
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(54)*5 || (!time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(54) >= 10
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 600
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),Vel X <= 0
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),MoveType = A
triggerall =!enemynear(var(58)),HitDefAttr = SCA, NT, ST, HT
triggerall = enemynear(var(58)),facing != facing
triggerall = p2bodydist x <= 25 && enemynear(var(58)),AnimTime > -5 || p2bodydist x > 25
triggerall = BackEdgeBodyDist >= 20
triggerall = InGuardDist
triggerall =!enemy,numproj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x <= 45 && enemynear(var(58)),AnimTime >= -5
trigger2 = p2bodydist x <= 55 && enemynear(var(58)),AnimTime >= -16
trigger3 = p2bodydist x <= 65 && enemynear(var(58)),AnimTime >= -17
trigger4 = p2bodydist x <= 75 && enemynear(var(58)),AnimTime >= -18
trigger5 = p2bodydist x <= 85 && enemynear(var(58)),AnimTime >= -19
trigger6 = p2bodydist x <= 95 && enemynear(var(58)),AnimTime >= -20

[State -3,後緊急回避 タッグ 背後取られた場合]
Type = ChangeState
Value = 761
TriggerAll = var(59)
TriggerAll = var(51) = 5
TriggerAll = var(42) >= 60 && BackEdgeBodyDist >= 20
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(54) * 100 || var(54) > 9
TriggerAll = StateType != A
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || Power >= 1000 && StateNo = [150,151]
Trigger1 = ifelse(facing = 1,(EnemyNear(0),Pos X - Pos X = [-60,0]),(EnemyNear(0),Pos X - Pos X = [0,60]))
Trigger1 = EnemyNear(0),BackEdgeBodyDist >= 40
Trigger1 = EnemyNear(0),facing = facing
Trigger2 = ifelse(facing = 1,(EnemyNear(1),Pos X - Pos X = [-60,0]),(EnemyNear(1),Pos X - Pos X = [0,60]))
Trigger2 = EnemyNear(1),BackEdgeBodyDist >= 40
Trigger2 = EnemyNear(1),facing = facing

[State -3, Throw]
Type = ChangeState
Value = 995
TriggerAll = var(59)
TriggerAll = roundstate = 2
TriggerAll = StateNo = [150,152]
TriggerAll = power >= 1000
TriggerAll = EnemyNear(var(58)),AnimTime <= -10 || EnemyNear(var(58)),Time <= 1
TriggerAll = StateType != A
TriggerAll = P2MoveType = A
TriggerAll = P2StateType != L
TriggerAll = P2bodyDist X = [-5,40]
TriggerAll = P2bodyDist y = [-40,5]
Trigger1 = Random <= var(55)*125

;ガードキャンセルふっとばし攻撃
[State -3, GCA]
Type = ChangeState
Value = 995
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 3
TriggerAll = RoundState = 2
TriggerAll = power >= 1000
TriggerAll = Random <= var(55) * 125
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = P2bodyDist x = [-5,50]
TriggerAll = (StateNo = 150 || StateNo = 152) && HitShakeOver
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger2 = EnemyNear(var(58)),StateType = A
Trigger2 = P2bodyDist y = [-50-floor(5*(EnemyNear(var(58)),vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(EnemyNear(var(58)),vel y)+(5*(5+1)/2)*fvar(20))]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;防御(ガード等)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ガード
[State -3, Guard]
Type = ChangeState
Value = ifelse(StateNo = 100,101,120)
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 5
TriggerAll = StateNo != [120,159]
TriggerAll = Ctrl || StateNo = 0 || (StateNo = [20,22]) || StateNo = 100 && Time >= 8
Trigger1 = inguarddist
Trigger1 = Random <= ((var(55) * 12.5) * var(54)) && Random <= 600 || var(55) > 4
Trigger2 = inguarddist
Trigger2 = P2bodyDist x > 90 || EnemyNear(var(58)),Time > 50
Trigger2 = Random <= ((var(55) * 12.5) * var(54))
Trigger3 = inguarddist
Trigger3 = EnemyNear(var(58)),numhelper > 0 || enemy,numproj > 0
Trigger4 = EnemyNear(var(58)),MoveType = A
Trigger4 = !EnemyNear(var(58)),hitdefattr = SCA, NT, ST, HT
Trigger4 = StateNo != 100 || StateNo = 100 && p2dist y > -45 || numenemy >= 2
Trigger4 = P2bodyDist x < 0
Trigger4 = p2dist x > 0 || p2dist x < 0
Trigger5 = inguarddist
Trigger5 = numenemy > 1
Trigger5 = enemy(0),numhelper+enemy(1),numhelper > 0 || enemy(0),numproj+enemy(1),numproj > 0
Trigger6 = numhelper(31000+id)
Trigger6 = helper(31000+id),inguarddist
Trigger6 = !EnemyNear(var(58)),hitdefattr = SCA, NT, ST, HT

;---------------------------------------------------------------------------

[State AI]
type = ChangeState
value = ifelse(Random <= 500,ifelse(Random <= 500,1450,1000),14444)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2bodydist x <= 40
triggerall = random <= 999
Trigger1 = StateNo = 210 && MoveHit
Trigger2 = StateNo = 240 && MoveHit
Trigger3 = StateNo = 241 && MoveHit
Trigger4 = StateNo = 410 && MoveHit
Trigger5 = StateNo = 211 && MoveHit
Trigger6 = StateNo = 310 && MoveHit
Trigger7 = StateNo = 315 && MoveHit

[State AI]
type = ChangeState
value = ifelse(Random <= 500,14444,1450)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2bodydist x > 40
triggerall = random <= 999
Trigger1 = StateNo = 210 && MoveHit
Trigger2 = StateNo = 240 && MoveHit
Trigger3 = StateNo = 241 && MoveHit
Trigger4 = StateNo = 410 && MoveHit
Trigger5 = StateNo = 211 && MoveHit
Trigger6 = StateNo = 310 && MoveHit
Trigger7 = StateNo = 315 && MoveHit

[State AI]
type = ChangeState
value = ifelse(Random <= 500,310,410)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2bodydist x <= 40
triggerall = random <= 999
Trigger1 = StateNo = 400 && MoveHit
Trigger2 = StateNo = 231 && MoveHit
Trigger3 = StateNo = 230 && MoveHit
Trigger4 = StateNo = 200 && MoveHit
Trigger5 = StateNo = 201 && MoveHit
Trigger6 = StateNo = 430 && MoveHit

[State AI]
type = ChangeState
value = ifelse(Random <= 500,1000,14444)
triggerall = var(59) = 1
triggerall = PalNo != 6
triggerall = statetype != A
triggerall = movecontact
triggerall = random <= 999
Trigger1 = StateNo = 400 && MoveGuarded
Trigger2 = StateNo = 231 && MoveGuarded
Trigger3 = StateNo = 230 && MoveGuarded
Trigger4 = StateNo = 200 && MoveGuarded
Trigger5 = StateNo = 201 && MoveGuarded
Trigger6 = StateNo = 430 && MoveGuarded

[State AI]
type = ChangeState
value = 1234566
triggerall = var(59)
triggerall = PalNo = 6
triggerall = roundstate = 2
triggerall = statetype != A
Triggerall = P2BodyDist X >= 50
triggerall = enemynear(var(58)),statetype != A
Triggerall = Random <= var(54)*100
Triggerall = numhelper(1234567)<=2
Trigger1 = StateNo = 400 && MoveGuarded
Trigger2 = StateNo = 231 && MoveGuarded
Trigger3 = StateNo = 230 && MoveGuarded
Trigger4 = StateNo = 200 && MoveGuarded
Trigger5 = StateNo = 201 && MoveGuarded
Trigger6 = StateNo = 430 && MoveGuarded

[State AI]
type = ChangeState
value = 1600
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
triggerall = random <= 999
triggerall = p2bodydist x <= 40
TriggerAll = numprojID(1600) = 0
triggerall = P2StateNo = [120,159]
Trigger1 = StateNo = [600,640]
Trigger1 = MoveGuarded

[State AI]
type = ChangeState
value = 1400
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
triggerall = random <= 999
triggerall = p2bodydist x > 40
TriggerAll = numprojID(1402) = 0
triggerall = P2StateNo = [120,159]
Trigger1 = StateNo = [600,640]
Trigger1 = MoveGuarded

[State AI]
type = ChangeState
value = ifelse(Random <= 500,100,1300)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2bodydist x > 40
triggerall = random <= 999
Trigger1 = StateNo = 400 && MoveHit
Trigger2 = StateNo = 231 && MoveHit
Trigger3 = StateNo = 230 && MoveHit
Trigger4 = StateNo = 200 && MoveHit
Trigger5 = StateNo = 201 && MoveHit
Trigger6 = StateNo = 430 && MoveHit

[State AI]
type = ChangeState
value = 1600
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
triggerall = p2bodydist x = [0,40]
triggerall = random <= 999
TriggerAll = numprojID(1600) = 0
Trigger1 = StateNo = 600 && MoveHit
Trigger2 = StateNo = 610 && MoveHit
Trigger3 = StateNo = 630 && MoveHit
Trigger4 = StateNo = 631 && MoveHit
Trigger5 = StateNo = 640 && MoveHit
Trigger6 = StateNo = 320 && MoveHit
Trigger7 = StateNo = 325 && MoveHit

[State AI]
type = ChangeState
value = 1320
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
triggerall = p2bodydist x > 40
triggerall = random <= 999
TriggerAll = numprojID(1000) = 0
Trigger1 = StateNo = 320 && MoveHit

[State AI]
type = ChangeState
value = 1320
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
;triggerall = p2bodydist x <= 60
triggerall = random <= 999
Trigger1 = StateNo = 1305 && MoveHit
Trigger2 = StateNo = 14453 && MoveHit
Trigger3 = StateNo = 15578 && MoveHit
Trigger4 = StateNo = 1300 && MoveHit
Trigger5 = StateNo = 1901 && MoveHit

[State AI]
type = ChangeState
value = 1321
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
;triggerall = p2bodydist x <= 60
triggerall = random <= 999
Trigger1 = StateNo = 1210 && MoveHit

[State AI]
type = ChangeState
value = ifelse(Random <= 500,1325,1326)
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
;triggerall = p2bodydist x <= 60
triggerall = random <= 999
Trigger1 = StateNo = 1320 
Trigger1 = time = 12
Trigger1 = MoveHit

[State AI]
type = ChangeState
value = 1326
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
;triggerall = p2bodydist x <= 60
triggerall = random <= 999
Trigger1 = StateNo = 1321 
Trigger1 = time = 12
Trigger1 = MoveHit

[State AI]
type = ChangeState
value = 1305
triggerall = var(59) = 1
triggerall = movecontact
;triggerall = p2bodydist x <= 60
triggerall = random <= 999
Trigger1 = StateNo = 1310 && MoveHit

[State AI]
type = ChangeState
value = 1305
triggerall = var(59) = 1
;triggerall = p2statetype != A
triggerall = movecontact
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 1010 
Trigger1 = time = 32
Trigger1 = MoveHit

[State AI]
type = ChangeState
value = 14453
triggerall = var(59) = 1
;triggerall = p2statetype != A
;triggerall = movecontact
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 14446 
Trigger1 = time = 32

[State AI]
type = ChangeState
value = 14450
triggerall = var(59) = 1
triggerall = power >= 2000
triggerall = p2statetype = A
triggerall = movecontact
triggerall = statetype = A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 3100
Trigger1 = time = 84
Trigger1 = MoveHit

[State AI]
type = ChangeState
value = 1310
triggerall = var(59) = 1
triggerall = power < 2000
triggerall = p2statetype = A
triggerall = movecontact
triggerall = statetype = A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 1326 && MoveHit

[State AI]
type = ChangeState
value = 1310
triggerall = var(59) = 1
triggerall = p2statetype = A
triggerall = movecontact
triggerall = statetype = A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 1325 && MoveHit

[State AI]
type = ChangeState
value = 2008
triggerall = var(59) = 1
triggerall = power >= 2000
triggerall = p2statetype = A
triggerall = movecontact
triggerall = statetype = A
triggerall = frontedgebodydist <= 60
triggerall = random <= 999
Trigger1 = StateNo = 1326 && MoveHit

[State AI]
type = ChangeState
value = 14450
triggerall = var(59) = 1
triggerall = power >= 2000
triggerall = p2statetype = A
triggerall = movecontact
triggerall = statetype = A
triggerall = frontedgebodydist > 60
triggerall = random <= 999
Trigger1 = StateNo = 1326 && MoveHit

[State AI]
type = ChangeState
value = 1205
triggerall = var(59) = 1
triggerall = power < 1000 
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist <= 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = power < 1000 
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist > 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 1000 && power <= 1999
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist <= 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = power >= 1000
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist > 60
Trigger1 = StateNo = 1310
Trigger1 = time = 20
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3210
triggerall = var(59) = 1
triggerall = power >= 2000 && power <= 2999
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist <= 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 3000 && power <= 3999
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist <= 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 4000 && power <= 4999
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist <= 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3210
triggerall = var(59) = 1
triggerall = power >= 5000
;triggerall = p2statetype != A
;triggerall = p2bodydist x > 60
triggerall = random <= 999
triggerall = frontedgebodydist <= 60
Trigger1 = StateNo = 1310
Trigger1 = time = 29
Trigger1 = !MoveHit

[State AI]
type = ChangeState
value = 3210
triggerall = var(59) = 1
triggerall = power >= 2000 && power <= 2999
;triggerall = p2statetype != A
triggerall = movecontact
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 3206
Trigger1 = time = 79

[State AI]
type = ChangeState
value = ifelse(Random <= 500,ifelse(Random <= 500,3300,450),3500)
triggerall = var(59) = 1
triggerall = PalNo != 6
triggerall = power >= 3000
;triggerall = p2statetype != A
triggerall = movecontact
;triggerall = p2bodydist x > 60
Trigger1 = StateNo = 3206
Trigger1 = time = 79
Trigger1 = MoveHit
Trigger2 = random <= 400
Trigger2 = StateNo = 3216
Trigger2 = time = 170
Trigger2 = MoveHit

[State AI]
type = ChangeState
value = 4200
triggerall = var(59) = 1
triggerall = PalNo != 6
triggerall = power >= 3000
triggerall = p2statetype = A
triggerall = enemynear(var(58)),StateNo != [120,159]
triggerall = enemynear(var(58)),movetype = H
triggerall = movecontact
Trigger1 = StateNo = 3218
Trigger1 = MoveHit
Trigger2 = StateNo = 3002
Trigger2 = MoveHit
Trigger3 = StateNo = 3012
Trigger3 = MoveHit

[State AI]
type = ChangeState
value = ifelse(Random <= 500,ifelse(Random <= 500,3300,450),3500)
triggerall = var(59) = 1
triggerall = PalNo = 6
triggerall = life > 300
triggerall = power >= 3000
;triggerall = p2statetype != A
triggerall = movecontact
;triggerall = p2bodydist x > 60
Trigger1 = StateNo = 3206
Trigger1 = time = 79
Trigger1 = MoveHit
Trigger2 = random <= 400
Trigger2 = StateNo = 3216
Trigger2 = time = 170
Trigger2 = MoveHit

[State AI]
type = ChangeState
value = 4200
triggerall = var(59) = 1
triggerall = PalNo = 6
triggerall = life > 300
triggerall = power >= 3000
triggerall = enemynear(var(58)),StateNo != [120,159]
triggerall = enemynear(var(58)),movetype = H
triggerall = movecontact
Trigger1 = StateNo = 3218
Trigger1 = MoveHit
Trigger2 = StateNo = 3002
Trigger2 = MoveHit
Trigger3 = StateNo = 3012
Trigger3 = MoveHit

[State AI]
type = ChangeState
value = 7125
triggerall = var(59) = 1
triggerall = PalNo = 6
triggerall = life <= 300
triggerall = power >= 3000
;triggerall = p2statetype != A
triggerall = movecontact
;triggerall = p2bodydist x > 60
triggerall = random <= 999
Trigger1 = StateNo = 3206
Trigger1 = time = 79
Trigger1 = MoveHit
Trigger2 = StateNo = 3216
Trigger2 = time = 170
Trigger2 = MoveHit

;---------------------------------------------------------------------------
;その他 恐
;---------------------------------------------------------------------------
[State -1,アイントリガー]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A 
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = enemynear(var(58)),stateno != 5700 && enemynear(var(58)),stateno != [5710,5715]
triggerall = numhelper(1000) = 0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 =!enemy,numproj
trigger1 = p2bodydist x = [70,120]
trigger1 = random <= 50
trigger2 = p2bodydist x >= 200
trigger2 = enemynear(var(58)),facing != facing
trigger2 = random <= 100

[State -3, murakumo]
type = ChangeState
value = 2060
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = power >= 2000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(54)*5 || (!time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(55) >= 5 && p2life <= 500 || var(54) >= 10
triggerall = Random <= ((20 + (var(55) * 10)) * var(54))
triggerall = Random <= 600 || var(55) >= 5 && p2life <= 500 || var(55) >= 9
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = P2BodyDist X > 80
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X <= 50 && enemynear(var(58)),AnimTime < -6
trigger2 = P2BodyDist X <= 75 && enemynear(var(58)),AnimTime < -8
trigger3 = P2BodyDist X <= 100 && enemynear(var(58)),AnimTime < -12
trigger4 = P2BodyDist X <= 150 && enemynear(var(58)),AnimTime < -14
trigger5 = P2BodyDist X <= 175 && enemynear(var(58)),AnimTime < -16
trigger6 = P2BodyDist X <= 200 && enemynear(var(58)),AnimTime < -18
trigger7 = P2BodyDist X > 200 && enemynear(var(58)),AnimTime < -20

;?服?器(タッグ時の割り込み)
[State -3, murakumo]
type = ChangeState
value = 2060
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = var(52) = [2,4]
triggerall = var(51) = [1,4]
triggerall = power >= 2000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(55) * 10)) * var(54))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = P2BodyDist X > 80
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X <= 50 && enemynear(var(58)),AnimTime < -6
trigger2 = P2BodyDist X <= 75 && enemynear(var(58)),AnimTime < -8
trigger3 = P2BodyDist X <= 100 && enemynear(var(58)),AnimTime < -12
trigger4 = P2BodyDist X <= 150 && enemynear(var(58)),AnimTime < -14
trigger5 = P2BodyDist X <= 175 && enemynear(var(58)),AnimTime < -16
trigger6 = P2BodyDist X <= 200 && enemynear(var(58)),AnimTime < -18
trigger7 = P2BodyDist X > 200 && enemynear(var(58)),AnimTime < -20

[State -3, L ONI]
Type = ChangeState
Value = 2060
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1 && (var(55) < 4 && Random <= (200 + (var(55) * 200)) || var(55) >= 4)
TriggerAll = RoundState = 2 && EnemyNear(var(58)),Life > 0 && fvar(22) = 0
TriggerAll = Random <= 999
TriggerAll = StateType != A
triggerall = power >= 2000
TriggerAll = EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
;TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo != [5020,5040]
TriggerAll = EnemyNear(var(58)),Facing != Facing
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || (fvar(6) = [1,2]) && !MoveContact && MoveType != H 
Trigger1 = P2BodyDist X = [15+floor(7*(EnemyNear(var(58)),Vel X)),70+floor(7*(EnemyNear(var(58)),Vel X))]
Trigger1 = P2BodyDist Y = [-70-floor(7*(EnemyNear(var(58)),Vel Y)+(7*(7+1)/2)*fvar(20)),0-floor(7*(EnemyNear(var(58)),Vel Y)+(7*(7+1)/2)*fvar(20))]

[State -3, L ONI]
Type = ChangeState
Value = 3100
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1 && (var(55) < 4 && Random <= (200 + (var(55) * 200)) || var(55) >= 4)
TriggerAll = RoundState = 2 && EnemyNear(var(58)),Life > 0 && fvar(22) = 0
TriggerAll = Random <= 600 || var(55) >= 9
TriggerAll = StateType != A
triggerall = power >= 1000 && power <= 1999
TriggerAll = EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
;TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo != [5020,5040]
TriggerAll = EnemyNear(var(58)),Facing != Facing
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || (fvar(6) = [1,2]) && !MoveContact && MoveType != H 
Trigger1 = P2BodyDist X = [15+floor(7*(EnemyNear(var(58)),Vel X)),70+floor(7*(EnemyNear(var(58)),Vel X))]
Trigger1 = P2BodyDist Y = [-70-floor(7*(EnemyNear(var(58)),Vel Y)+(7*(7+1)/2)*fvar(20)),0-floor(7*(EnemyNear(var(58)),Vel Y)+(7*(7+1)/2)*fvar(20))]

[State -3,切り返し]
Type = ChangeState
Value = 2060
TriggerAll = var(59)
TriggerAll = var(55) >= 6
triggerall = PalNo != 6
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= 999
TriggerAll = Power >= 2000
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),AnimTime < -1
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5
TriggerAll = Ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])  || (fvar(6) = [1,2]) && !movecontact && movetype != H
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger2 = Enemy,HitDefAttr = SC,AT || EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = Enemy,Vel X > 0 || EnemyNear(var(58)),Vel X > 0

[State -3,切り返し]
Type = ChangeState
Value = 3100
TriggerAll = var(59)
TriggerAll = var(55) >= 6
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(54) * 100 || var(54) > 9
TriggerAll = Power >= 1000 && power <= 1999
TriggerAll = StateType != A
TriggerAll = P2BodyDist X = [0,50]
TriggerAll = EnemyNear(var(58)),AnimTime < -1
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5
TriggerAll = Ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])  || (fvar(6) = [1,2]) && !movecontact && movetype != H
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger2 = Enemy,HitDefAttr = SC,AT || EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = Enemy,Vel X > 0 || EnemyNear(var(58)),Vel X > 0

[State -3,切り返し]
Type = ChangeState
Value = 2060
TriggerAll = var(59)
TriggerAll = var(55) >= 6
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= 999
TriggerAll = Power >= 2000
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),AnimTime < -1
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5
TriggerAll = Ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])  || (fvar(6) = [1,2]) && !movecontact && movetype != H
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger2 = Enemy,HitDefAttr = SC,AT || EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = Enemy,Vel X > 0 || EnemyNear(var(58)),Vel X > 0

[State -3,切り返し]
Type = ChangeState
Value = 2060
TriggerAll = var(59)
TriggerAll = var(55) >= 6
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= 999
TriggerAll = Power >= 2000 && Power >= 2999
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),AnimTime < -1
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5
TriggerAll = Ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])  || (fvar(6) = [1,2]) && !movecontact && movetype != H
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger2 = Enemy,HitDefAttr = SC,AT || EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = Enemy,Vel X > 0 || EnemyNear(var(58)),Vel X > 0

[State -3,切り返し]
Type = ChangeState
Value = 7125
TriggerAll = var(59)
TriggerAll = var(55) >= 6
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= 999
TriggerAll = Power >= 3000
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),AnimTime < -1
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || var(54) > 9
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5
TriggerAll = Ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])  || (fvar(6) = [1,2]) && !movecontact && movetype != H
Trigger1 = EnemyNear(var(58)),StateType != A
Trigger1 = EnemyNear(var(58)),MoveType = A && EnemyNear(var(58)),StateNo >= 200
Trigger2 = Enemy,HitDefAttr = SC,AT || EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = Enemy,Vel X > 0 || EnemyNear(var(58)),Vel X > 0

;---------------------------------------------------------------------------

[State -3,強クロウバイツ 切り返し]
Type = ChangeState
Value = 1105
TriggerAll = var(59)
TriggerAll = var(55) >= 2
TriggerAll = var(52) != [5,6]
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Random <= var(54) * 100 || var(54) > 9
TriggerAll = StateType != A
TriggerAll = P2bodyDist X > -10
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),StateNo < 2000
TriggerAll = EnemyNear(var(58)),AnimTime <= -11 || EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),Time >= 40-var(54)*5 || fvar(38) || var(54) > 9
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5 || fvar(38) || var(54) > 9
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll =!EnemyNear(var(58)),HitdefAttr = SC,AT
TriggerAll = Random < EnemyNear(var(58)),Time*10 || var(54) > 9 && Random < EnemyNear(var(58)),Time*20
TriggerAll = Random < 100 || !EnemyNear(var(58)),NumProj
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || (fvar(6) = [1,2]) && !MoveContact && MoveType != H
TriggerAll = ifelse(EnemyNear(var(58)),StateType = A,P2bodyDist X <= 60,P2bodyDist X <= 50)
Trigger1 = EnemyNear(var(58)),Vel X >= 0
Trigger1 = EnemyNear(var(58)),MoveType = A
Trigger1 = EnemyNear(var(58)),StateType != A || EnemyNear(var(58)),Pos Y - Pos Y = [-100,-50]

[State AI]
type = ChangeState
value = 1100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2movetype = A
triggerall = p2bodydist y = [-60,0]
triggerall = p2bodydist x = [-10+floor(8*(EnemyNear(floor(fvar(37))),vel X)),50+floor(8*(EnemyNear(floor(fvar(37))),vel X))]
triggerall = enemynear(fvar(37)),animtime <= -10
trigger1 = stateno = 430
trigger2 = stateno = 200
Trigger3 = stateno = 400 
Trigger4 = stateno = 240 
Trigger5 = stateno = 211
Trigger6 = stateno = 410
Trigger7 = stateno = 201
Trigger8 = stateno = 231

[State -3]
Type = ChangeState
Value = 1100
TriggerAll = RoundState = 2
TriggerAll = var(59) = 1
TriggerAll = P2bodydist X = [45+floor(12*(EnemyNear(floor(fvar(37))),vel X)),70+floor(12*(EnemyNear(floor(fvar(37))),vel X))]
TriggerAll = P2bodydist y <= 0-floor(12*(EnemyNear(floor(fvar(37))),vel Y)+(12*12/2)*fvar(20))
TriggerAll = P2bodydist y >= -120-floor(12*(EnemyNear(floor(fvar(37))),vel Y)+(12*12/2)*fvar(20))
TriggerAll = EnemyNear(fvar(37)),facing != facing
TriggerAll = EnemyNear(fvar(37)),animtime = [-25,-12]
TriggerAll = EnemyNear(fvar(37)),vel x <= 0 && EnemyNear(fvar(37)),BackEdgeBodyDist >= 15
TriggerAll = Statetype != A && p2movetype = A
TriggerAll = P2Statetype != L && P2statetype != A
Trigger1 = Ctrl || stateno = 19 || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100
Trigger2 = stateno = 211 || stateno = 210 || stateno = 410 || stateno = 400

;弱百式?鬼焼き
[State -3, L ONI]
Type = ChangeState
Value = 1100
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 1 && (var(55) < 4 && Random <= (200 + (var(55) * 200)) || var(55) >= 4)
TriggerAll = var(52)!= [5,6]
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5 || (!Time && var(54) > 7) || life <= var(55)*var(54)*8 || Random <= var(55)*var(54) || var(54) >= 10
TriggerAll = Random <= ((20 + (var(55) * 10)) * var(54))
TriggerAll = Random <= 600 || var(55) >= 9
TriggerAll = StateType != A
TriggerAll =!EnemyNear(var(58)),Ctrl
TriggerAll = EnemyNear(var(58)),StateType = A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),Facing != Facing
TriggerAll = EnemyNear(var(58)),Time >= 50-var(54)*5 || fvar(38) || var(54) > 9
TriggerAll = !Enemy,NumProj
TriggerAll = InGuardDist || Helper(31000+ID),InGuardDist
TriggerAll = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149]) || (fvar(6) = [1,2]) && !MoveContact && MoveType != H
Trigger1 = P2BodyDist X = [-10+floor(6*(EnemyNear(var(58)),Vel X)),50+floor(6*(EnemyNear(var(58)),Vel X))]
Trigger1 = P2BodyDist Y >= -50

;弱 百八式?闇払い
[State -1, L YAMIBARAI]
type = ChangeState
value = ifelse(Random <= 500,1000,14444)
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0; && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5710,5715]
triggerall = numprojID(1000) = 0 || numprojID(14444) = 0
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X >= 200
trigger1 = random <= 100
trigger2 = var(55) >= 6
trigger2 = fvar(6) = 1 || fvar(6) = 2
trigger2 = p2bodydist X >= 125
trigger2 = random <= 600

;弱 百八式?闇払い
[State -1, L YAMIBARAI]
type = ChangeState
value = ifelse(Random <= 500,1000,14444)
triggerall = var(59) = 1
triggerall = var(55) >= 3
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= var(55) * 125
triggerall = Random <= 600
triggerall = StateType != A
triggerall = numprojID(1000) = 0 || numprojID(14444) = 0
triggerall = p2bodydist x >= 160
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),stateno != [5710,5715]
triggerall = enemynear(var(58)),StateType = A || enemynear(var(58)),StateType = L
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

;ダウン回避(空中)
[State -3, HITFall_AIRRECOVER]
Type = ChangeState
Value = 5210
TriggerAll = var(59)
TriggerAll = var(55) >= 1
TriggerAll = RoundState = 2
TriggerAll = Random <= ((20 + (var(55) * 10)) * var(54))
TriggerAll = Random <= 800
TriggerAll = StateNo = 5050
TriggerAll = Vel Y > -1
TriggerAll = alive
TriggerAll = CanRecover
Trigger1 = Vel Y > 0
Trigger1 = Pos Y < -20 && Pos Y > -80
Trigger1 = P2bodyDist x = [-60,60]
Trigger1 = P2bodyDist Y = [-40,40]
Trigger1 = EnemyNear(var(58)),MoveType = A
Trigger1 = EnemyNear(var(58)),Time < 15

;受身
[State -3, UKEMI]
Type = ChangeState
Value = 5200
TriggerAll = var(59) = 1
TriggerAll = var(55) >= 3
TriggerAll = RoundState = 2
TriggerAll = Random <= ((var(55) * 12.5) * var(54))
TriggerAll = Random <= 1000
TriggerAll = alive = 1
Trigger1 = StateNo = 5050 || StateNo = 5071
Trigger1 = Anim != 5052 && Anim != 5062
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= -20

[State -3,受身]
Type = ChangeState
Value = 52000
TriggerAll = var(59)
TriggerAll = RoundState = 2
TriggerAll = Alive
TriggerAll = CanRecover || EnemyNear(var(58)),MoveType = A
TriggerAll = StateNo = 5050
TriggerAll = pos y > -30
TriggerAll = vel y > 0 && vel y < 9
Trigger1 = Random < 500
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger2 = EnemyNear(var(58)),Time < 15

[State -3,ダウン回避]
Type = ChangeState
Value = 52000
TriggerAll = var(59)
TriggerAll = RoundState = 3
TriggerAll = Alive
TriggerAll = Vel Y > 0 && Vel Y < 9
TriggerAll = Pos Y > -30
Trigger1 = StateNo = 5050

;-----------------------------------------------------------------------------
;AI用重力加速度計測
;-----------------------------------------------------------------------------
[State -2, yaccel]
type = VarSet
trigger1 = fvar(20) != enemynear(var(58)),const(movement.yaccel)
trigger1 = enemynear(var(58)),stateno != [5000,5210]
trigger1 = enemynear(var(58)),Vel Y != 0
FV = 20
value = enemynear(var(58)),const(movement.yaccel)
ignorehitpause = 1

[State -2, yaccel]
type = VarSet
trigger1 = fvar(20) != enemynear(var(58)),GetHitVar(yaccel)
trigger1 = enemynear(var(58)),stateno = [5000,5210]
trigger1 = enemynear(var(58)),Vel Y != 0
FV = 20
value = enemynear(var(58)),GetHitVar(yaccel);(打撃当てた時のyaccel値)
ignorehitpause = 1

;敵が空中じゃない時
[State -2, yaccel]
type = VarSet
trigger1 = fvar(20) != 0
trigger1 = enemynear(var(58)),Vel Y = 0
FV = 20
value = 0;(打撃当てた時のyaccel値)
ignorehitpause = 1

[state -2]
type = defenceMulSet
triggerall = !ishelper
triggerall = PalNo = 6
trigger1 = life < lifemax*0.5
value = (life/(lifemax+0.0))+0.5
ignorehitpause = 1

[state -2]
type = attackMulSet
triggerall = alive
triggerall = PalNo = 6
trigger1 = life < lifemax*0.5
value = 1.5 - (life/(lifemax+0.0))
ignorehitpause = 1

[State 2,底力]
type = DefenceMulSet
triggerall = PalNo = 6
trigger1 = life > 500
value = 0.8
ignorehitpause = 1

[State 2,底力]
type = DefenceMulSet
triggerall = PalNo = 6
trigger1 = life <= 500 && life > 300
value = 0.5
ignorehitpause = 1

[State 2,底力]
type = DefenceMulSet
triggerall = PalNo = 6
trigger1 = life <= 300 && life > 100
value = 0.3
ignorehitpause = 1

[State 2,底力]
type = DefenceMulSet
triggerall = PalNo = 6
trigger1 = life <= 100
value = 0.1
ignorehitpause = 1

[State -1,Poweradd]
type = poweradd
triggerall = PalNo = 6
trigger1 = 1
value = 1
presistent = 110

;[State -2,]
;type = Lifeadd
;trigger1 = life < lifemax*0.5
;trigger1 = (gametime%10) = 0
;value = 3

[State -2]
type = VarSet
trigger1 = RoundState = 2 && fvar(15) != -1
trigger1 = EnemyNear(fvar(37)),StateNo = 195
trigger1 = EnemyNear(fvar(37)),Time = 1
FV = 15
value = fvar(15) + 1
persistent = 0
ignorehitpause = 1

[State -2]
type = VarSet
trigger1 = RoundState = 1
trigger1 = RoundNo = 1
trigger1 = power != powermax
FV = 15
value = -1
ignorehitpause = 1

[State -2]
type = PowerAdd
trigger1 = Time = 0 && StateNo = [150,154]
trigger2 = MoveType = H && Time = 0
trigger3 = MoveType = A && Time = 0 && !hitpausetime
value = 30 + Random%2
ignorehitpause = 1
persistent = 0

[State -2]
type = PowerAdd
triggerall = fvar(15) = -1 
trigger1 = Time = 0 && StateNo = [150,154]
trigger2 = MoveType = H && Time = 0
trigger3 = MoveType = A && Time = 0 && !hitpausetime
value = 20 + Random%2
ignorehitpause = 1
persistent = 0

[State -2]
Type = ChangeState
Value = 195
TriggerAll = var(59)
TriggerAll =!var(52)
TriggerAll = RoundState = 3
TriggerAll = StateType != A
TriggerAll = Ctrl
Trigger1 = StateNo != 195
Trigger1 = Life > P2Life
Trigger1 = EnemyNear(var(58)),StateNo = [5100,5150]
Trigger1 = BackEdgeBodyDist > 60

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = var(59) = 1
triggerall = PalNo = 6
trigger1 = movetype = A 
trigger1 = Random <= 200
flag = unguardable

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = var(59) = 1
triggerall = movetype = A 
TriggerAll = p2StateType = A
Trigger1 = stateno = 1200 || stateno = 1205 
flag = unguardable

[State -3, Illusion Dream]
Type = ChangeState
Value = 16666
TriggerAll = var(59)
TriggerAll = var(55) >= 3
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Power >= 3000
TriggerAll = StateType != A
triggerall = statetype != L
TriggerAll = EnemyNear(var(58)),Life <= 500*EnemyNear(var(58)),const(data.defence)/const(data.attack) || EnemyNear(var(58)),const(data.defence)/const(data.attack) >= 1.2 || P2Name="Makoto Mizoguchi"
TriggerAll = Abs(EnemyNear(var(58)),Pos X - Pos X) = [25,80]
TriggerAll = EnemyNear(var(58)),StateNo = [200,1000)
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),Time <= 10 && EnemyNear(var(58)),AnimTime <= -5
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, NT, ST, HT
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll = InGuardDist
Trigger1 = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])

[State -3, Illusion Dream]
Type = ChangeState
Value = 16666
TriggerAll = var(59)
TriggerAll = var(55) >= 3
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Power >= 3000
TriggerAll = StateType != A
triggerall = statetype != L
TriggerAll = Abs(EnemyNear(var(58)),Pos X - Pos X) < 75
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll = EnemyNear(var(58)),Time <= Time
Trigger1 = (fvar(6) = [1,2]) && !MoveContact && MoveType != H

[State -3]
Type = ChangeState
Value = 16666
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = var(59) = 1 && prevstateno != 16666
TriggerAll = p2bodydist X = [-20,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && p2movetype = A
triggerall = statetype != L
TriggerAll = P2Statetype != L && P2statetype != A
Trigger1 = enemynear(fvar(37)),animtime < -5
Trigger1 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger2 = stateno = 5120 && animtime >= -1
Trigger3 = prevstateno = 5120 || prevstateno = 5201 || prevstateno = 700 || prevstateno = [120,159]
Trigger3 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger4 = stateno = 210 || stateno = 211 || stateno = 995 || stateno = 400 || stateno = 410
Trigger4 = enemynear(fvar(37)),HitDefAttr = SCA,NT,HT,ST

[State -3]
Type = ChangeState
Value = 16666
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = var(59) = 1 && prevstateno != 16666
TriggerAll = p2bodydist X = [-25,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && !numtarget
triggerall = statetype != L
TriggerAll = P2Statetype != L && p2statetype != A
Trigger1 = fvar(6) = 1
Trigger2 = fvar(6) = 2

[State -3]
Type = ChangeState
Value = 16666
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = var(59) = 1
triggerall = p2movetype != H
triggerall = statetype != L
TriggerAll = p2bodydist X = [-20,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && !numtarget && prevstateno != 16666
TriggerAll = P2Statetype != L && P2statetype != A
Trigger1 = enemynear(fvar(37)),animtime = [-3,-1]
Trigger1 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger2 = p2movetype != A && enemynear(fvar(37)),prevstateno != 5120
Trigger2 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger3 = prevstateno = 5120 || prevstateno = 5201 || prevstateno = 700 || prevstateno = [120,159]
Trigger3 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger4 = stateno = 210 || stateno = 211 || stateno = 995 || stateno = 400 || stateno = 410
Trigger4 = enemynear(fvar(37)),HitDefAttr = SCA,NT,HT,ST

[State -3]
Type = ChangeState
Value = 16666
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = var(59) = 1
triggerall = statetype != L
TriggerAll = p2bodydist X = [-20,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && prevstateno != 16666
TriggerAll = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
TriggerAll = P2Statetype != L
Trigger1 = p2stateno = [120,149]

[State AI]
type = ChangeState
value = 16666
triggerall = var(59) = 1
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = Power >= 3000
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl && statetype != A
triggerall = statetype != L
triggerall = p2bodydist x = [0,85]
triggerall = p2movetype = A
trigger1 = ctrl
trigger1 = p2movetype != H

[State -1, ]
type = ChangeState
value = 16666
trigger1 = var(59) = 1
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = Power >= 3000
triggerall = statetype != A
triggerall = statetype != L
triggerall = p2movetype = A
triggerall = Random <= 999
triggerall = p2bodydist x > -20 && p2bodydist x < 70
;triggerall = Random <=100&&var(26)=0  || random<=150&&var(26)>0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (var(1) = [1,2]) && !movecontact && movetype != H
trigger1 = stateno = [0,999] 

[State -3,???]
type = ChangeState
value = 16666
triggerall = var(59) = 1
triggerall = PalNo = 6
TriggerAll = life > 300
TriggerAll = Power >= 3000
triggerall = random <= 500 
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) && statetype != A
triggerall = p2bodydist x = [-40,100]
triggerall = p2movetype = A
triggerall = statetype != A 
triggerall = statetype != L
triggerall = statetype = S || statetype = C
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2movetype != H
trigger2 = moveguarded

;---------------------------------------------------------------------------

[State -3, Illusion Dream]
Type = ChangeState
Value = 7125
TriggerAll = var(59)
TriggerAll = var(55) >= 3
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Power >= 3000
TriggerAll = StateType != A
triggerall = statetype != L
TriggerAll = EnemyNear(var(58)),Life <= 500*EnemyNear(var(58)),const(data.defence)/const(data.attack) || EnemyNear(var(58)),const(data.defence)/const(data.attack) >= 1.2 || P2Name="Makoto Mizoguchi"
TriggerAll = Abs(EnemyNear(var(58)),Pos X - Pos X) = [25,80]
TriggerAll = EnemyNear(var(58)),StateNo = [200,1000)
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),Time <= 10 && EnemyNear(var(58)),AnimTime <= -5
TriggerAll =!EnemyNear(var(58)),HitDefAttr = SCA, NT, ST, HT
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll = InGuardDist
Trigger1 = Ctrl || (StateNo = [20,22]) || (StateNo = [100,101]) || (StateNo = [120,149])

[State -3, Illusion Dream]
Type = ChangeState
Value = 7125
TriggerAll = var(59)
TriggerAll = var(55) >= 3
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = RoundState = 2 && EnemyNear(var(58)),life > 0 && fvar(22) = 0
TriggerAll = Power >= 3000
TriggerAll = StateType != A
triggerall = statetype != L
TriggerAll = Abs(EnemyNear(var(58)),Pos X - Pos X) < 75
TriggerAll = EnemyNear(var(58)),StateNo >= 200
TriggerAll = EnemyNear(var(58)),MoveType = A
TriggerAll = EnemyNear(var(58)),facing != facing
TriggerAll = EnemyNear(var(58)),Time <= Time
Trigger1 = (fvar(6) = [1,2]) && !MoveContact && MoveType != H

[State -3]
Type = ChangeState
Value = 7125
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = var(59) = 1 && prevstateno != 7125
TriggerAll = p2bodydist X = [-20,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && p2movetype = A
triggerall = statetype != L
TriggerAll = P2Statetype != L && P2statetype != A
Trigger1 = enemynear(fvar(37)),animtime < -5
Trigger1 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger2 = stateno = 5120 && animtime >= -1
Trigger3 = prevstateno = 5120 || prevstateno = 5201 || prevstateno = 700 || prevstateno = [120,159]
Trigger3 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger4 = stateno = 210 || stateno = 211 || stateno = 995 || stateno = 400 || stateno = 410
Trigger4 = enemynear(fvar(37)),HitDefAttr = SCA,NT,HT,ST

[State -3]
Type = ChangeState
Value = 7125
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = var(59) = 1 && prevstateno != 7125
TriggerAll = p2bodydist X = [-25,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && !numtarget
triggerall = statetype != L
TriggerAll = P2Statetype != L && p2statetype != A
Trigger1 = fvar(6) = 1
Trigger2 = fvar(6) = 2

[State -3]
Type = ChangeState
Value = 7125
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = var(59) = 1
triggerall = p2movetype != H
triggerall = statetype != L
TriggerAll = p2bodydist X = [-20,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && !numtarget && prevstateno != 7125
TriggerAll = P2Statetype != L && P2statetype != A
Trigger1 = enemynear(fvar(37)),animtime = [-3,-1]
Trigger1 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger2 = p2movetype != A && enemynear(fvar(37)),prevstateno != 5120
Trigger2 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger3 = prevstateno = 5120 || prevstateno = 5201 || prevstateno = 700 || prevstateno = [120,159]
Trigger3 = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
Trigger4 = stateno = 210 || stateno = 211 || stateno = 995 || stateno = 400 || stateno = 410
Trigger4 = enemynear(fvar(37)),HitDefAttr = SCA,NT,HT,ST

[State -3]
Type = ChangeState
Value = 7125
TriggerAll = RoundState = 2
TriggerAll = Power >= 3000
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = var(59) = 1
triggerall = statetype != L
TriggerAll = p2bodydist X = [-20,30+(10*(p2movetype = A))]
TriggerAll = Statetype != A && prevstateno != 7125
TriggerAll = Ctrl || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 120
TriggerAll = P2Statetype != L
Trigger1 = p2stateno = [120,149]

[State AI]
type = ChangeState
value = 7125
triggerall = var(59) = 1
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = Power >= 3000
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl && statetype != A
triggerall = statetype != L
triggerall = p2bodydist x = [0,85]
triggerall = p2movetype = A
trigger1 = ctrl
trigger1 = p2movetype != H

[State -1, ]
type = ChangeState
value = 7125
trigger1 = var(59) = 1
triggerall = PalNo = 6
TriggerAll = life <= 300
TriggerAll = Power >= 3000
triggerall = statetype != A
triggerall = statetype != L
triggerall = p2movetype = A
triggerall = Random <= 999
triggerall = p2bodydist x > -20 && p2bodydist x < 70
;triggerall = Random <=100&&var(26)=0  || random<=150&&var(26)>0
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (var(1) = [1,2]) && !movecontact && movetype != H
trigger1 = stateno = [0,999] 

[State -3,???]
type = ChangeState
value = 7125
triggerall = var(59) = 1
triggerall = PalNo = 6
TriggerAll = life < 300
TriggerAll = Power >= 3000
triggerall = random <= 999 
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) && statetype != A
triggerall = p2bodydist x = [-40,100]
triggerall = p2movetype = A
triggerall = statetype != A 
triggerall = statetype != L
triggerall = statetype = S || statetype = C
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2movetype != H
trigger2 = moveguarded

;---------------------------------------------------------------------------

;弱クロウバイツ
[State -3, L CB]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
;triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || life <= var(56)*60 || random <= var(57)*var(56) || var(56) >= 10
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 600 || var(55) >= 8
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing != facing
triggerall = InGuardDist
triggerall = ctrl || stateno = 20 || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,50]
trigger1 = p2bodydist Y >= -100
trigger1 = enemynear(var(58)),Vel X >= 0
trigger1 = enemynear(var(58)),Vel Y > 0 || p2bodydist X < 30
trigger1 = enemynear(var(58)),statetype = A
trigger2 = p2bodydist X = [-5,50]
trigger2 = enemynear(var(58)),statetype != A
trigger2 = enemynear(var(58)),animtime <= -5

;弱クロウバイツ
[State -3, L CB]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random <= ((var(55) * 12.5) * var(54))
triggerall = Random <= 600 || var(55) >= 8
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || stateno = 20 || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [25,70]
trigger1 = P2BodyDist Y = [-140,-40]
trigger1 = enemynear(var(58)),Vel X > 0
trigger1 = enemynear(var(58)),StateType = A

[State -3, Crouching Light Punch]
type = ChangeState
value = 1200
triggerall = var(59)= 1
triggerall = roundstate = 2 
triggerall = statetype != A
Triggerall = P2StateType != L
Triggerall = p2statetype = A
Trigger1 = stateno = 200 && MoveHit && P2MoveType = H
Trigger2 = stateno = 430 && MoveHit && P2MoveType = H
Trigger3 = stateno = 400 && MoveHit && P2MoveType = H
Trigger4 = stateno = 240 && MoveHit && P2MoveType = H
Trigger5 = stateno = 211 && MoveHit && P2MoveType = H
Trigger6 = stateno = 241 && MoveHit && P2MoveType = H
Trigger7 = stateno = 410 && MoveHit && P2MoveType = H
Trigger8 = stateno = 201 && MoveHit && P2MoveType = H
Trigger9 = stateno = 231 && MoveHit && P2MoveType = H

[State -3, SK]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = var(55) >= 1
triggerall = power < 3000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),stateno != 2020
triggerall = enemynear(var(58)),stateno != [5040,5049]
triggerall = enemynear(var(58)),stateno != [5100,5300)
triggerall = p2bodydist x = [-30,40]
triggerall = p2bodydist y = [-40-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20)),-10-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20))]
trigger1 = prevstateno != 4201 
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149])

[State -3, SK]
type = ChangeState
value = ifelse(Random <= 500,3300,4200)
triggerall = var(59)
triggerall = var(55) >= 1
triggerall = PalNo != 6
triggerall = power >= 3000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),stateno != [5040,5049]
triggerall = enemynear(var(58)),stateno != [5100,5300)
triggerall = enemynear(var(58)),stateno != 2020
triggerall = p2bodydist x = [-30,40]
triggerall = p2bodydist y = [-40-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20)),-10-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20))]
trigger1 = prevstateno != 4201 
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149])

[State -3, SK]
type = ChangeState
value = ifelse(Random <= 500,3300,4200)
triggerall = var(59)
triggerall = var(55) >= 1
triggerall = PalNo = 6
triggerall = power >= 3000
triggerall = life > 300 
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),stateno != [5040,5049]
triggerall = enemynear(var(58)),stateno != [5100,5300)
triggerall = enemynear(var(58)),stateno != 2020
triggerall = p2bodydist x = [-30,40]
triggerall = p2bodydist y = [-40-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20)),-10-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20))]
trigger1 = prevstateno != 4201 
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149])

[State -3, SK]
type = ChangeState
value = 7125
triggerall = var(59)
triggerall = var(55) >= 1
triggerall = PalNo = 6
triggerall = power >= 3000
triggerall = life <= 300 
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),stateno != [5040,5049]
triggerall = enemynear(var(58)),stateno != [5100,5300)
;triggerall = enemynear(var(58)),stateno != 2020
triggerall = p2bodydist x = [-30,40]
triggerall = p2bodydist y = [-40-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20)),-10-floor(11*(enemynear(var(58)),vel y)+(11*(11+1)/2)*fvar(20))]
trigger1 = prevstateno != 4201 
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149])

[State -3]
type = ChangeState
value = 1100
Triggerall = var(59) = 1
Triggerall = StateType != A
Triggerall = RoundState = 2
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2MoveType != H
Triggerall = P2BodyDist X = [150,200]
triggerall = Ctrl || stateno = 19 || stateno = 20 || stateno = 21 || stateno = 22 || (stateno = 52 && Time >= 3) || stateno = 100 || stateno = 1444
trigger1 = EnemyNear(floor(fvar(37))),NumProj = 1

[State -3]
type = ChangeState
value = 1100
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || stateno = 20|| stateno = 21|| stateno = 22|| (stateno = [99,101])
triggerall = P2BodyDist X = [40,150]
triggerall = P2BodyDist Y >= 0
triggerall = P2StateType != A
triggerall = P2MoveType = H
triggerall = P2StateType != L
Trigger1 = Random <= 999
trigger1 = ProjHitTime(1000) != -1 && ProjHitTime(1000) < 13

[State -1]
type = ChangeState
value = 1900
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = PalNo != 6
Triggerall = P2BodyDist X = [0,80]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149]) || (fvar(6) = [1,2]) && !movecontact && movetype != H
trigger1 = stateno = [0,599] 

[State -1]
type = ChangeState
value = ifelse(Random <= 400,1910,1234566)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = PalNo = 6
Triggerall = P2BodyDist X = [0,100]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149]) || (fvar(6) = [1,2]) && !movecontact && movetype != H
trigger1 = stateno = [0,999] 
trigger2 = stateno = 5200
trigger3 = stateno = 52000

[State -3]
type = ChangeState
value = 1900												  
triggerall = var(59) = 1 
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = PalNo != 6
triggerall = ctrl || stateno = [120,159] 
TriggerAll = EnemyNear(floor(fvar(37))),AnimTime <= -18
trigger1 = p2bodydist x > 0 && p2bodydist x < 70

[State -3]
type = ChangeState
value = ifelse(Random <= 400,1910,1234566)												  
triggerall = var(59) = 1
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = PalNo = 6
triggerall = ctrl || stateno = [120,159] 
TriggerAll = EnemyNear(floor(fvar(37))),AnimTime <= -18
trigger1 = p2bodydist x > 0 && p2bodydist x < 70

[State AI]
type = ChangeState
value = 1310
triggerall = var(59) = 1
triggerall = movecontact
triggerall = random <= 999
Trigger1 = StateNo = 1901 && MoveGuarded

[State -3,????angshen ]
type = ChangeState
value = 1100													  
triggerall = var(59) = 1 && statetype != A
triggerall = EnemyNear(floor(fvar(37))),movetype = A
triggerall = ctrl || stateno = [120,159] 
TriggerAll = EnemyNear(floor(fvar(37))),AnimTime <= -18
trigger1 = p2bodydist x >= 0

[State -1]
type = ChangeState
value = 1234566
triggerall = var(59)
triggerall = PalNo = 6
triggerall = RoundState = 2
triggerall = p2stateno != 1234568 && p2stateno != 1234569
triggerall = Random <= var(54)*40
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 30
triggerall = enemynear(var(58)),stateno != 5120
triggerall = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149]) || (fvar(6) = [1,2]) && !movecontact && movetype != H
triggerall = prevstateno != 1234566
trigger1 = numhelper(1234567) < 2
trigger1 = p2bodydist x = [50,180]
trigger1 = enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype != A
trigger1 = enemynear(var(58)),statetype != A
trigger1 = EnemyNear(var(58)),facing != facing

[State -1]
type = ChangeState
value = 1234566
triggerall = var(59)
triggerall = PalNo != 6
triggerall = RoundState = 2
triggerall = life <= 300
triggerall = p2stateno != 1234568 && p2stateno != 1234569
triggerall = Random <= var(54)*40
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 30
triggerall = enemynear(var(58)),stateno != 5120
triggerall = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149]) || (fvar(6) = [1,2]) && !movecontact && movetype != H
triggerall = prevstateno != 1234566
trigger1 = numhelper(1234567) < 2
trigger1 = p2bodydist x = [50,180]
trigger1 = enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype != A
trigger1 = enemynear(var(58)),statetype != A
trigger1 = EnemyNear(var(58)),facing != facing

;---------------------------------------------------------------------------
;AI用p2name
;---------------------------------------------------------------------------
;特殊地上受け身なし
[State -3, ]
Type = VarSet
triggerall = var(59)
trigger1 = 1
fvar(21) = 0

;特殊地上受け身持ち1(高め)
[State -3, ]
Type = VarSet
triggerall = var(59)
trigger1 = enemynear(var(58)),authorname = "ahuron"
trigger1 = enemynear(var(58)),name != "SHIN" || enemynear(var(58)),name != "REI" || enemynear(var(58)),name != "JAGI" || enemynear(var(58)),name != "THOUTHER"
trigger1 = enemynear(var(58)),name != "Shinnosuke Kagami" || enemynear(var(58)),name != "Mukuro"
trigger1 = enemynear(var(58)),name != "Misuzu"
trigger2 = enemynear(var(58)),authorname = "jin"
trigger3 = enemynear(var(58)),authorname = "Chin-ya"
trigger4 = enemynear(var(58)),authorname = "kayui uma"
trigger4 = enemynear(var(58)),name ="anna" || enemynear(var(58)),name ="henri" || enemynear(var(58)),name ="mora" || enemynear(var(58)),name ="saya" || enemynear(var(58)),name ="dragon"
trigger5 = enemynear(var(58)),authorname = "aoba"
trigger6 = enemynear(var(58)),authorname = "Mikita"
fvar(21) = 1

;特殊地上受け身持ち2
[State -3, ]
Type = VarSet
triggerall = var(59)
trigger1 = enemynear(var(58)),authorname = "ikaruga"
trigger2 = enemynear(var(58)),authorname = "warusaki3"
trigger3 = enemynear(var(58)),authorname = "Gonzo-"
fvar(21) = 2

;---------------------------------------------------------------------------
;行動制限
[State -3, ]
Type = VarSet
triggerall = var(59)
trigger1 = 1
fvar(22) = 0

;行動するな
[State -3, ]
Type = VarSet
triggerall = var(59)
trigger1 = enemynear(var(58)),stateno = [5200,5210]
trigger2 = enemynear(var(58)),stateno = 702
trigger2 = enemynear(var(58)),authorname = "ahuron"
trigger3 = enemynear(var(58)),stateno = [52000,52100]
fvar(22) = 1

;この下、一行以上空ける事！
