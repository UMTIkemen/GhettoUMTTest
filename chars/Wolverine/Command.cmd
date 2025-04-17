;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

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

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

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

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>====================

[Command]
name = "Beserker Barrage X"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "Beserker Barrage X"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "Beserker Barrage X"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "Beserker Barrage X"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "Beserker Barrage X"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "Beserker Barrage X"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MAXBeserker Barrage X"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXBeserker Barrage X"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXBeserker Barrage X"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "Fatal Claw"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "Fatal Claw"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "Fatal Claw"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "Fatal Claw"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "Fatal Claw"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "Fatal Claw"
command = ~D, DF, F, D, DF, F, ~c
time = 32


[Command]
name = "MAXFatal Claw"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXFatal Claw"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "MAXFatal Claw"
command = ~D, DF, F, D, DF, F, a+c
time = 32


[Command]
name = "Beserker Charge"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "Beserker Charge"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "Beserker Charge"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "Beserker Charge"
command = ~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "Beserker Charge"
command = ~D, DB, B, D, DB, B, ~y
time = 32

[Command]
name = "Beserker Charge"
command = ~D, DB, B, D, DB, B, ~z
time = 32


[Command]
name = "MAXBeserker Charge"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "MAXBeserker Charge"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "MAXBeserker Charge"
command = ~D, DB, B, D, DB, B, x+z
time = 32


[Command]
name = "Healing Factor X"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "Healing Factor X"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "Healing Factor X"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "Healing Factor X"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "Healing Factor X"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "Healing Factor X"
command = ~D, DB, B, D, DB, B, ~c
time = 32


[Command]
name = "MAXHealing Factor X"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXHealing Factor X"
command = ~D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXHealing Factor X"
command = ~D, DB, B, D, DB, B, a+c
time = 32


[Command]
name = "Weapon X"
command = ~D, DB, B, D, DF, F, x+y
time = 32

[Command]
name = "Weapon X"
command = ~D, DB, B, D, DF, F, y+z
time = 32

[Command]
name = "Weapon X"
command = ~D, DB, B, D, DF, F, x+z
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "Beserker Barrage"
command = ~D, DF, F, x
time = 16

[Command]
name = "Beserker Barrage"
command = ~D, DF, F, y
time = 16

[Command]
name = "Beserker Barrage"
command = ~D, DF, F, z
time = 16

[Command]
name = "Beserker Barrage"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "Beserker Barrage"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "Beserker Barrage"
command = ~D, DF, F, ~z
time = 16


[Command]
name = "EXBeserker Barrage"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXBeserker Barrage"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXBeserker Barrage"
command = ~D, DF, F, x+z
time = 16


[Command]
name = "Tornado Claw"
command = ~F, D, DF, x
time = 16

[Command]
name = "Tornado Claw"
command = ~F, D, DF, y
time = 16

[Command]
name = "Tornado Claw"
command = ~F, D, DF, z
time = 16

[Command]
name = "Tornado Claw"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "Tornado Claw"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "Tornado Claw"
command = ~F, D, DF, ~z
time = 16


[Command]
name = "EXTornado Claw"
command = ~F, D, DF, x+z
time = 16

[Command]
name = "EXTornado Claw"
command = ~F, D, DF, y+x
time = 16

[Command]
name = "EXTornado Claw"
command = ~F, D, DF, z+y
time = 16


[Command]
name = "Beserker Slash"
command = ~D, DB, B, x
time = 16

[Command]
name = "Beserker Slash"
command = ~D, DB, B, y
time = 16

[Command]
name = "Beserker Slash"
command = ~D, DB, B, z
time = 16

[Command]
name = "Beserker Slash"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "Beserker Slash"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "Beserker Slash"
command = ~D, DB, B, ~z
time = 16


[Command]
name = "EXBeserker Slash"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "EXBeserker Slash"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "EXBeserker Slash"
command = ~D, DB, B, x+z
time = 16


[Command]
name = "Drill Claw"
command = a+y
time = 16

[Command]
name = "Drill Claw"
command = ~a+y
time = 16


[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16


[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

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
command = a+x
time = 1


[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Weapon X]
type = ChangeState;Null;
value = 3300
triggerAll = !AILevel
triggerAll = command = "Weapon X"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20) && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Healing Factor X]
type = ChangeState
value = 3550
TriggerAll = Life < Const(Data.Life);LifeMax
triggerAll = !AILevel
triggerAll = command = "MAXHealing Factor X"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60 && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])

[State -1, MAX Fatal Claw (Aerial)]
type = ChangeState
value = 3280
triggerAll = !AILevel
triggerAll = command = "MAXFatal Claw"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Fatal Claw]
type = ChangeState
value = 3250
triggerAll = !AILevel
triggerAll = command = "MAXFatal Claw"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Beserker Barrage X]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXBeserker Barrage X"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Healing Factor X]
type = ChangeState
value = 3500
TriggerAll = Life < Const(Data.Life);LifeMax
triggerAll = !AILevel
triggerAll = command = "Healing Factor X"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60 && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])

[State -1, Fatal Claw (Aerial)]
type = ChangeState
value = 3230
triggerAll = !AILevel
triggerAll = command = "Fatal Claw"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Fatal Claw]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "Fatal Claw"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Beserker Charge]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "Beserker Charge"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20) && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Beserker Barrage X]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "Beserker Barrage X"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Beserker Slash]
type = ChangeState
value = 1250
triggerAll = !AILevel
triggerAll = command = "EXBeserker Slash"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60 && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Tornado Claw]
type = ChangeState
value = 1150
triggerAll = !AILevel
triggerAll = command = "EXTornado Claw"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60 && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Beserker Barrage]
type = ChangeState
value = 1050
triggerAll = !AILevel
triggerAll = command = "EXBeserker Barrage"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60 && !var(14)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 45°]
type = ChangeState
value = 1420
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holddown" && command = "holdfwd"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 45°]
type = ChangeState
value = 1460
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holddown" && command = "holdback"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 45°]
type = ChangeState
value = 1470
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holddown"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 45°]
type = ChangeState
value = 1450
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holdup" && command = "holdback"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 180°]
type = ChangeState
value = 1440
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holdback"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 45°]
type = ChangeState
value = 1410
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holdup" && command = "holdfwd"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 90°]
type = ChangeState
value = 1430
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw" && command = "holdup"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Drill Claw 180°]
type = ChangeState
value = 1400
triggerAll = !AILevel
TriggerAll = !var(55)
triggerAll = command = "Drill Claw"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ground Drill Claw 45°]
type = ChangeState
value = 1340
triggerAll = !AILevel
triggerAll = command = "Drill Claw" && command = "holdup" && command = "holdback"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ground Drill Claw 180°]
type = ChangeState
value = 1330
triggerAll = !AILevel
triggerAll = command = "Drill Claw" && command = "holdback"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ground Drill Claw 45°]
type = ChangeState
value = 1320
triggerAll = !AILevel
triggerAll = command = "Drill Claw" && command = "holdup" && command = "holdfwd"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ground Drill Claw 90°]
type = ChangeState
value = 1310
triggerAll = !AILevel
triggerAll = command = "Drill Claw" && command = "holdup"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ground Drill Claw 180°]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "Drill Claw"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Beserker Slash]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "Beserker Slash"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Tornado Claw]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "Tornado Claw"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Beserker Barrage]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "Beserker Barrage"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20) && !var(14)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
triggerAll = RoundState = 2 && StateType = A
triggerAll = ctrl && pos y <= -32
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp"

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20) && !var(14)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,209]) || (StateNo = [230,239]) ||(StateNo = [400,409])||(StateNo =[430,439])) && MoveContact
trigger3 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 215
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 210 && AnimElemTime(7) < 0

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,219]) || (StateNo = [230,249]) || (StateNo = [400,419]) || (StateNo = [430,449])) && MoveContact
trigger3 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = [200,209]) && MoveContact
trigger3 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,219]) || (StateNo = [230,239]) || (StateNo = [400,419]) || (StateNo = [430,439])) && MoveContact
trigger3 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,249]) || (StateNo = [400,449])) && MoveContact
trigger3 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,209]) || (StateNo = [230,239]) ||(StateNo = [400,409])||(StateNo =[430,439])) && MoveContact
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,219]) || (StateNo = [230,249]) || (StateNo = [400,419]) || (StateNo = [430,449])) && MoveContact
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230) && (MoveContact && AnimElemTime(6) >= 0)
trigger3 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,219]) || (StateNo = [230,239]) || (StateNo = [400,419]) || (StateNo = [430,439])) && MoveContact
trigger3 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = ((StateNo = [200,249]) || (StateNo = [400,449])) && MoveContact
trigger3 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 615
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 610 && AnimElemTime(7) < 0
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Dive Kick]
type = ChangeState
value = 645
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "holdfwd" && command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Dive Kick]
type = ChangeState
value = 655
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Wall Jump Forward]
type = ChangeState
value = 60
triggerAll = RoundState = 2 && StateType = A
trigger1 = command = "holdup" && command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger1 = vel x < 0 && pos y <= -92
trigger2 = command = "holdup" && command = "holdback"
trigger2 = FrontEdgeBodyDist <= 10
trigger2 = vel x > 0 && pos y <= -92
ctrl = 0