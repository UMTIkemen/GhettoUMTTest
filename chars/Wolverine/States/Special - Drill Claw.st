;========================<DRILL CLAW>=============================
;Start
[StateDef 1300]
type = S
physics = N
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tornado Claw Dust"
posType = P1
ownPal = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1301
ctrl = 0

;Attack
[StateDef 1301]
type = A
physics = N
moveType = A
anim = 1301
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1300, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1300, 0
channel = 0

[State 1300, VelSet]
type = VelSet
trigger1 = !Time
x = 6.85

[State 1301, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || (var(20) || var(14)))
trigger1 = !Time
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1301, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8052
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1301, Wall]
type = ChangeState
trigger1 = vel x > 0 && FrontEdgeBodyDist <= 15
value = 1350
ctrl = 0

[State 1301, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1303
ctrl = 0

[State 1301, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1302
ctrl = 0

;End
[StateDef 1302]
type = A
physics = N
moveType = A
anim = 1302
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1302, Gravity]
type = Gravity
trigger1 = 1

[State 1302, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52
ctrl = 0

;MoveContact
[StateDef 1303]
type = A
physics = N
moveType = A
anim = 1302
ctrl = 1
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1303, VelSet]
type = VelSet
trigger1 = !Time
x = -2
y = -7

[State 1303, Gravity]
type = Gravity
trigger1 = 1

[State 1303, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52
ctrl = 0

;End
[StateDef 1305]
type = A
physics = N
moveType = A
anim = 1305
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1305, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Start
[StateDef 1310]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 1310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1310, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1310, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tornado Claw Dust"
posType = P1
ownPal = 1

[State 1310, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1311
ctrl = 0

;Attack
[StateDef 1311]
type = A
physics = N
moveType = A
anim = 1310
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1310, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1300, 0
channel = 0

[State 1310, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = -7.35

[State 1310, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || (var(20) || var(14)))
trigger1 = !Time
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -145
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1311, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8052
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1311, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1312
ctrl = 0

;End
[StateDef 1312]
type = A
physics = N
moveType = A
anim = 1311
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1312, Gravity]
type = Gravity
trigger1 = 1

[State 1302, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52
ctrl = 0

;Start
[StateDef 1320]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 1320, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1320, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1320, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tornado Claw Dust"
posType = P1
ownPal = 1

[State 1320, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1321
ctrl = 0

;Attack
[StateDef 1321]
type = A
physics = N
moveType = A
anim = 1320
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1320, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1300, 0
channel = 0

[State 1320, VelSet]
type = VelSet
trigger1 = !Time
x = 7.25
y = -4.25

[State 1321, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || (var(20) || var(14)))
trigger1 = !Time
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1321, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8052
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1321, Wall]
type = ChangeState
trigger1 = vel x > 0 && FrontEdgeBodyDist <= 15
value = 1350
ctrl = 0

[State 1321, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1303
ctrl = 0

[State 1321, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1322
ctrl = 0

;End
[StateDef 1322]
type = A
physics = N
moveType = A
anim = 1321
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1322, Gravity]
type = Gravity
trigger1 = 1

[State 1322, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52
ctrl = 0

;Start
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tornado Claw Dust"
posType = P1
ownPal = 1

[State 1330, Turn]
type = Turn
trigger1 = !AnimTime

[State 1330, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1301
ctrl = 0

;Start
[StateDef 1340]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 1340, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1340, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1340, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tornado Claw Dust"
posType = P1
ownPal = 1

[State 1340, Turn]
type = Turn
trigger1 = !AnimTime

[State 1340, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1321
ctrl = 0

;======================<WALL JUMP>===========================
[Statedef 1350]
type = A
movetype = A
physics = N
anim = 60
velset = 0,0
sprpriority = 2
ctrl = 0

[State 1350, Turn]
type = Turn
trigger1 = Time = 0
trigger1 = FrontEdgeBodyDist <= 15

[State 1350, Screen]
type = ScreenBound
trigger1 = 1
movecamera = 0,1

[State 1350, Width]
type = Width
trigger1 = 1
edge = 20,20

[State 1350, PosSet]
type = PosSet
trigger1 = Time > 0
trigger1 = Facing = -1
trigger1 = BackEdgeBodyDist <= 20
x = 136

[State 1350, PosSet]
type = PosSet
trigger1 = Time > 0
trigger1 = Facing = 1
trigger1 = BackEdgeBodyDist <= 20
x = -136

[State 1350, VelSet]
type = VelSet
trigger1 = AnimTime
x = 0
y = 0

[State 1350, VelSet]
type = VelSet
trigger1 = !AnimTime
x = const(velocity.jump.fwd.x)
y = const(velocity.jump.y)

[State 1350, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;========================<DRILL CLAW>=============================
;180 Degrees
[StateDef 1400]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1400, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1301
ctrl = 0

;========================<DRILL CLAW>=============================
;45 Degrees (Upwards)
[StateDef 1410]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1410, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1410, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1321
ctrl = 0

;========================<DRILL CLAW>=============================
;45 Degrees (Downwards)
[StateDef 1420]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1420, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1420, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1421
ctrl = 0

;Attack
[StateDef 1421]
type = A
physics = N
moveType = A
anim = 1440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1421, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1300, 0
channel = 0

[State 1421, VelSet]
type = VelSet
trigger1 = !Time
x = 7.25
y = 4.25

[State 1421, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = !Time
attr = A, SA
hitFlag = MAFD
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, 0
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1421, Juggle Points Reset]
type = VarSet
trigger1 = MoveHit
var(15) = 1
persistent = 1

[State 1421, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8052
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1421, Wall]
type = ChangeState
trigger1 = vel x > 0 && FrontEdgeBodyDist <= 15
value = 1350
ctrl = 0

[State 1321, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1303
ctrl = 0

[State 1421, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 52
ctrl = 0

[State 1421, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1422
ctrl = 0

;End
[StateDef 1422]
type = A
physics = N
moveType = A
anim = 1441
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1322, Gravity]
type = Gravity
trigger1 = 1

[State 1322, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52
ctrl = 0

;========================<DRILL CLAW>=============================
;90 Degrees (Upwards)
[StateDef 1430]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1430, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1430, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1311
ctrl = 0

;========================<DRILL CLAW>=============================
;180 Degrees (Backwards)
[StateDef 1440]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1450, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1450, Turn]
type = Turn
trigger1 = !AnimTime

[State 1440, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1301
ctrl = 0

;========================<DRILL CLAW>=============================
;45 Degrees (Upwards, Backwards)
[StateDef 1450]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1450, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1450, Turn]
type = Turn
trigger1 = !AnimTime

[State 1450, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1321
ctrl = 0

;========================<DRILL CLAW>=============================
;45 Degrees (Downwards, Backwards)
[StateDef 1460]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 1

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1460, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1450, Turn]
type = Turn
trigger1 = !AnimTime

[State 1460, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1421
ctrl = 0

;========================<DRILL CLAW>=============================
;90 Degrees (Downwards)
[StateDef 1470]
type = A
physics = N
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 0

[State 1470, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1470, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .003

[State 1470, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1471
ctrl = 0

;Attack
[StateDef 1471]
type = A
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1471, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1300, 0
channel = 0

[State 1471, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 7.35

[State 1471, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = !Time
attr = A, SA
hitFlag = MAFD
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, 0
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := 0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1471, Juggle Points Reset]
type = VarSet
trigger1 = MoveHit
var(15) = 1
persistent = 1

[State 1471, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8052
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1471, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 52
ctrl = 0

[State 1471, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1472
ctrl = 0

;End
[StateDef 1472]
type = A
physics = N
moveType = A
anim = 1431
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1472, Gravity]
type = Gravity
trigger1 = 1

[State 1472, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 52
ctrl = 0
