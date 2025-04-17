; _____________________________________
;| Yukari Tanizaki from Azumanga Daioh |
;|             by Wickydoo             |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<COMMANDS>================
;-| Button Remapping |-----------------------------------------------------
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
command.time = 15
command.buffer.time = 1

[command]
name = "SuperJumping"
command = ~$D,$U
time = 5
buffer.time = 2
[Command]
name = "SuperJumpingFail"
command = ~12$D,$U
time = 5
buffer.time = 2

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

;-| High Parry |--------------------------------------------------------------
[Command]
name = "parry1";Required (do not remove)
command = F
time = 1

;-| Low Parry |--------------------------------------------------------------
[Command]
name = "parry2";Required (do not remove)
command = D
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

;-| Hold Button |----------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b+c
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a+c
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "superjump"     ;Required (do not remove)
command = ~$D, U
time = 24

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = ~$D, UF
time = 24

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = ~$D, UB
time = 24

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Majigire"
command = ~F, DF, $D, DB, $B, $F, x
time = 20
buffer.time = 3
[Command]
name = "Majigire"
command = ~F, DF, $D, DB, $B, $F, ~x
time = 20
buffer.time = 3

[Command]
name = "Majigire"
command = ~F, DF, $D, DB, $B, $F, y
time = 20
buffer.time = 3
[Command]
name = "Majigire"
command = ~F, DF, $D, DB, $B, $F, ~y
time = 20
buffer.time = 3

[Command]
name = "Majigire"
command = ~F, DF, $D, DB, $B, $F, z
time = 20
buffer.time = 3
[Command]
name = "Majigire"
command = ~F, DF, $D, DB, $B, $F, ~z
time = 20
buffer.time = 3

[Command]
name = "Rocket Fireworks"
command = ~D, DF, $F, D, DF, $F, x
time = 20
buffer.time = 3
[Command]
name = "Rocket Fireworks"
command = ~D, DF, $F, D, DF, $F, ~x
time = 20
buffer.time = 3

[Command]
name = "Rocket Fireworks"
command = ~D, DF, $F, D, DF, $F, y
time = 20
buffer.time = 3
[Command]
name = "Rocket Fireworks"
command = ~D, DF, $F, D, DF, $F, ~y
time = 20
buffer.time = 3

[Command]
name = "Rocket Fireworks"
command = ~D, DF, $F, D, DF, $F, z
time = 20
buffer.time = 3
[Command]
name = "Rocket Fireworks"
command = ~D, DF, $F, D, DF, $F, ~z
time = 20
buffer.time = 3

[Command]
name = "Burst"
command = ~D, D, a
time = 14
buffer.time = 3
[Command]
name = "Burst"
command = ~D, D, ~a
time = 14
buffer.time = 3

[Command]
name = "Imperial Wrath"
command = ~$D, B, DB, $D, DF, $F, $B, $F, x
time = 35
buffer.time = 3
[Command]
name = "Imperial Wrath"
command = ~$D, B, DB, $D, DF, $F, $B, $F, ~x
time = 35
buffer.time = 3
[Command]
name = "Imperial Wrath"
command = ~$D, B, DB, $D, DF, $F, $B, $F, y
time = 35
buffer.time = 3
[Command]
name = "Imperial Wrath"
command = ~$D, B, DB, $D, DF, $F, $B, $F, ~y
time = 35
buffer.time = 3
[Command]
name = "Imperial Wrath"
command = ~$D, B, DB, $D, DF, $F, $B, $F, z
time = 35
buffer.time = 3
[Command]
name = "Imperial Wrath"
command = ~$D, B, DB, $D, DF, $F, $B, $F, ~z
time = 35
buffer.time = 3


;-| Special Motions |------------------------------------------------------

[Command]
name = "Earthquake Foot A"
command = ~D, DF, $F, x
time = 10
buffer.time = 3
[Command]
name = "Earthquake Foot A"
command = ~D, DF, $F, ~x
time = 10
buffer.time = 3

[Command]
name = "Earthquake Foot B"
command = ~D, DF, $F, y
time = 10
buffer.time = 3
[Command]
name = "Earthquake Foot B"
command = ~D, DF, $F, ~y
time = 10
buffer.time = 3

[Command]
name = "Earthquake Foot C"
command = ~D, DF, $F, z
time = 10
buffer.time = 3
[Command]
name = "Earthquake Foot C"
command = ~D, DF, $F, ~z
time = 10
buffer.time = 3

[Command]
name = "Wall Crush A"
command = ~D, DB, $B, x
time = 10
buffer.time = 3
[Command]
name = "Wall Crush A"
command = ~D, DB, $B, ~x
time = 10
buffer.time = 3
[Command]
name = "Wall Crush B"
command = ~D, DB, $B, y
time = 10
buffer.time = 3
[Command]
name = "Wall Crush B"
command = ~D, DB, $B, ~y
time = 10
buffer.time = 3
[Command]
name = "Wall Crush C"
command = ~D, DB, $B, z
time = 10
buffer.time = 3
[Command]
name = "Wall Crush C"
command = ~D, DB, $B, ~z
time = 10
buffer.time = 3

[Command]
name = "Floor Toss A"
command = ~F, D, DF, x
time = 12
buffer.time = 3
[Command]
name = "Floor Toss A"
command = ~F, D, DF, ~x
time = 12
buffer.time = 3
[Command]
name = "Floor Toss B"
command = ~F, D, DF, y
time = 12
buffer.time = 3
[Command]
name = "Floor Toss B"
command = ~F, D, DF, ~y
time = 12
buffer.time = 3
[Command]
name = "Floor Toss C"
command = ~F, D, DF, z
time = 12
buffer.time = 3
[Command]
name = "Floor Toss C"
command = ~F, D, DF, ~z
time = 12
buffer.time = 3

[Command]
name = "Shark Attack A"
command = ~B, DB, $D, DF, $F, x
time = 16
buffer.time = 3
[Command]
name = "Shark Attack A"
command = ~B, DB, $D, DF, $F, ~x
time = 16
buffer.time = 3

[Command]
name = "Shark Attack B"
command = ~B, DB, $D, DF, $F, y
time = 16
buffer.time = 3
[Command]
name = "Shark Attack B"
command = ~B, DB, $D, DF, $F, ~y
time = 16
buffer.time = 3

[Command]
name = "Shark Attack C"
command = ~B, DB, $D, DF, $F, z
time = 16
buffer.time = 3
[Command]
name = "Shark Attack C"
command = ~B, DB, $D, DF, $F, ~z
time = 16
buffer.time = 3

[Command]
name = "QCF_SC"
command = ~D, DF, $F, a
time = 10
buffer.time = 3
[Command]
name = "QCF_SC"
command = ~D, DF, $F, ~a
time = 10
buffer.time = 3

;---------------------------------------------------------------------------
; 2. State entry and AI entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
[State -1, BURST SUPER: IMPERIAL WRATH]
type = ChangeState
value = 3000
triggerall = var(2) > 0
triggerall = command = "Imperial Wrath" && statetype!=A
triggerall = stateno != [510,519]
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger3 = stateno = [500,530]

;---------------------------------------------------------------------------
[State -1, Rocket Fireworks]
type = ChangeState
value = 1100
triggerall = power >= 1000 || var(2) > 0
triggerall = command="Rocket Fireworks" && statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=200 || stateno=400) && (time>=4 || movecontact)) || ((stateno = 230 || stateno=210 || stateno=410 || stateno = 220  || stateno = 221 || stateno = 420) && movecontact)
trigger3 = movecontact && stateno = [500,550]
trigger4 = stateno = 835
trigger4 = animelemtime(5)>=0

;---------------------------------------------------------------------------
[State -1, Majigire]
type = ChangeState
value = 1000
triggerall = power >= 1000 || var(2) > 0
triggerall = command="Majigire" && statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=200 || stateno=400) && (time>=4 || movecontact)) || ((stateno = 230 || stateno=210 || stateno=410 || stateno = 220  || stateno = 221 || stateno = 420) && movecontact)
trigger3 = movecontact && stateno = [500,550]
trigger4 = stateno = 835
trigger4 = animelemtime(5)>=0

;---------------------------------------------------------------------------
[State -1, BURST MODE]
type = ChangeState
value = 2500
triggerall = life <= 330
triggerall = power >= 3000 && var(2) <= 0
triggerall = command="Burst" && statetype!=A
triggerall = stateno != [510,519]
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger3 = stateno = [500,530]
trigger4 = stateno = 835
trigger4 = animelemtime(5)>=0

;---------------------------------------------------------------------------
[State -1, Air QCF + SC]
type = ChangeState
value = 570
triggerall = power >= 1000 || var(2) > 0
triggerall = command="a" && statetype=A
triggerall = stateno != [510,519]
trigger1 = ctrl
trigger2 = stateno = [600,620]

;---------------------------------------------------------------------------
[State -1, QCF + SC]
type = ChangeState
value = 550
triggerall = power >= 1000 || var(2) > 0
triggerall = command="QCF_SC" && statetype!=A
triggerall = stateno != [510,519]
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger3 = stateno = [500,530]
trigger4 = stateno = 835
trigger4 = animelemtime(5)>=0

;---------------------------------------------------------------------------
[State -1, SC]
type = ChangeState
value = 560
triggerall = power >= 1000 || var(2) > 0
triggerall = command="a" && statetype!=A
triggerall = stateno != [510,519]
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger3 = stateno = [500,530]

;---------------------------------------------------------------------------
[State -1, Shark Attack]
type = ChangeState
value = 530
triggerall = statetype != L
triggerall = ctrl || ((stateno=200 || stateno=400) && (time>=4 || movecontact)) || ((stateno = 420 || stateno = 230 || stateno=210 || stateno=410 || stateno = 220  || stateno = 221) && movecontact)
trigger1 = command = "Shark Attack A"
trigger1 = var(10):=2
trigger2 = command = "Shark Attack B"
trigger2 = var(10):=3
trigger3 = command = "Shark Attack C"
trigger3 = var(10):=1

;---------------------------------------------------------------------------
[State -1, Floor Toss]
type = ChangeState
value = 510
triggerall = statetype!=A
triggerall = ctrl || ((stateno=200 || stateno=400) && (time>=4 || movecontact)) || ((stateno = 420 || stateno = 230 || stateno=210 || stateno=410 || stateno = 220  || stateno = 221) && movecontact)
trigger1 = command = "Floor Toss A"
trigger1 = var(10):=1
trigger2 = command = "Floor Toss B"
trigger2 = var(10):=3
trigger3 = command = "Floor Toss C"
trigger3 = var(10):=2

;---------------------------------------------------------------------------
[State -1, Earthquake Foot]
type = ChangeState
value = 500
triggerall = StateType != A
triggerall = ctrl || ((stateno=200 || stateno=400) && (time>=4 || movecontact)) || ((stateno = 420 || stateno = 230 || stateno=210 || stateno=410 || stateno = 220  || stateno = 221) && movecontact)
trigger1 = command = "Earthquake Foot A"
trigger1 = 1 || (var(10):=1)
trigger2 = command = "Earthquake Foot B"
trigger2 = 1 || (var(10):=2)
trigger3 = command = "Earthquake Foot C"
trigger3 = 1 || (var(10):=3)

;---------------------------------------------------------------------------
[State -1, Wall Crush]
type = ChangeState
value = 520
triggerall = statetype!=A
triggerall = ctrl || ((stateno=200 || stateno=400) && (time>=4 || movecontact)) || ((stateno = 420 || stateno = 230 || stateno=210 || stateno=410 || stateno = 220  || stateno = 221) && movecontact) || (stateno = 420 && movehit)
trigger1 = command = "Wall Crush A"
trigger1 = 1 || (var(10):=1)
trigger2 = command = "Wall Crush B"
trigger2 = 1 || (var(10):=2)
trigger3 = command = "Wall Crush C"
trigger3 = 1 || (var(10):=3)

;---------------------------------------------------------------------------
[State -1, Headbutt]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && P2StateType != A && P2StateType != L
trigger1 = (Command = "holdfwd" || command = "holdback") && Command = "z" && P2BodyDist X < 20
;Normal
;---------------------------------------------------------------------------
[State Overhead]
type = ChangeState
value = 230
triggerall = command="y" && command="holdfwd" && command != "holddown" && statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=200 || stateno=400) && (time>=5 || movecontact)) || ((stateno=210 || stateno=410) && movecontact)

;---------------------------------------------------------------------------
[State -1, Stand Light Attack]
type = ChangeState
value = 200
triggerall = command="x" && command!="holddown" && statetype!=A
trigger1 = ctrl
trigger2 = (stateno=200 || stateno=400) && (time>=5 || movecontact)

;---------------------------------------------------------------------------
[State -1, Stand Medium Attack]
type = changestate
value = 210
triggerall = command="y" && command!="holddown" && statetype!=A
trigger1 = ctrl
trigger2 = (stateno=200 || stateno=400) && (time>=5 || movecontact)

;---------------------------------------------------------------------------
[State -1, Stand Strong Attack]
type = changestate
value = 220
triggerall = command="z" && command!="holddown" && statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=200 || stateno=400) && (time>=5 || movecontact)) || ((stateno=210 || stateno=410) && movecontact)

;---------------------------------------------------------------------------
[State -1, Crouch Light Attack]
type = changestate
value = 400
triggerall= command="x" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=400) && (time>=5 || movecontact)
;---------------------------------------------------------------------------
[State -1, Crouch Medium Attack]
type=changestate
value = 410
triggerall= command="y" && command="holddown" && statetype!=A
trigger1 = ctrl
trigger2= (stateno=200 || stateno=400) && (time>=5 || movecontact)

;---------------------------------------------------------------------------
[State -1, Crouch Strong Attack]
type = changestate
value = 420
triggerall= command="z" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2 = ((stateno=200 || stateno=400) && (time>=5 || movecontact)) || ((stateno=210 || stateno=410) && movecontact)

;---------------------------------------------------------------------------
[State -1, Aerial Light Attack]
type=changestate
value=600
triggerall= command="x" && statetype=A
trigger1= ctrl
;---------------------------------------------------------------------------
[State -1, Aerial Medium Attack]
type = changestate
value = 610
triggerall= command="y" && statetype=A
trigger1= ctrl
trigger2= stateno=600 && (movecontact)

;---------------------------------------------------------------------------
[State -1, Aerial High Attack]
type = changestate
value = 620
triggerall= command="z" && statetype=A
trigger1= ctrl
trigger2= (stateno=600 && movecontact)||(stateno=610 && movecontact)

;===========================================================================
;Misc
;---------------------------------------------------------------------------
;Hop Back
[State -1, Hop Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, GC]
type = ChangeState
value = 4450
triggerall = power>=500 || var(2) > 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno=[150,155]
trigger1 = command = "QCF_SC"
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && var(2) > 0
trigger1 = statetype = S || StateType = C
trigger1 = ctrl

