;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<BESERKER BARRAGE>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100 || var(20), 2, ifElse(P2Dist x > 88, 1, 0))

[State 1000, Voice]
type = PlaySND
trigger1 = Anim = 1000 && AnimElem = 3
value = 1000, 0
channel = 0

[State 1000, Dash]
type = PlaySND
trigger1 = Anim = 1000 && AnimElem = 3
value = 41, 0
channel = 1

[State 1000, Dust Helper]
type = Helper
trigger1 = Anim = 1000 && AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
anim = 1005
ID = 1005
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
anim = 1006
ID = 1006
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = -2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
anim = 1007
ID = 1007
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
anim = 1008
ID = 1008
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = -2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1000 && !AnimTime
value = 1001

[State 1000, VelSet]
type = VelSet
trigger1 = Anim = 1000 && AnimElem = 3
x = 2.7

[State 1000, VelSet]
type = VelSet
trigger1 = Anim = 1001
x = 3.35 + (var(10) * 1.15)

[State 1000, VelSet]
type = VelSet
trigger1 = Anim = 1002
x = 0

[State 1000, Chop]
type = PlaySND
trigger1 = Anim = 1001
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 
trigger2 = AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22
value = 1, 6
channel = 2

[State 1000, Chop]
type = PlaySND
trigger1 = Anim = 1001
trigger1 = AnimElem = 3 || AnimElem = 9 || AnimElem = 15 || AnimElem = 21
value = 100, 0
channel = 3

[State 1000, Chop]
type = PlaySND
trigger1 = Anim = 1001
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 || AnimElem = 24 
value = 100, 1
channel = 3

[State 1000, Anim]
type = ChangeAnim
trigger1 = Anim = 1001 
Trigger1 = IfElse(var(10) = 2, AnimElemTime(18) >= 0, IfElse(var(10) = 1, AnimElemTime(12) >= 0, AnimElemTime(6) >= 0))
value = 1002
persistent = 0

[State 1000, Hit Again]
type = MoveHitReset
trigger1 = MoveHit = 1 && !NumTarget

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || (var(20) || var(14)))
trigger1 = var(10) = 0 && HitCount < 2 
trigger1 = Anim = 1001 && (AnimElem = 1 || AnimElem = 4)
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 4
getPower = ifElse(!var(13), 72, 36) * (!var(14) && !var(20)), 12 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 2, 4), ifElse((var(20) || var(14)), 2, 4)
guard.pauseTime = ifElse((var(20) || var(14)), 2, 4), ifElse((var(20) || var(14)), 2, 4)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 20 + 3 * var(9)
ground.slideTime = 20 + 3 * var(9)
guard.hitTime = 20
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || (var(20) || var(14)))
trigger1 = var(10) = 1 && HitCount < 4
trigger1 = Anim = 1001 && (AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10)
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 4
pauseTime = ifElse((var(20) || var(14)), 2, 4), ifElse((var(20) || var(14)), 2, 4)
guard.pauseTime = ifElse((var(20) || var(14)), 2, 4), ifElse((var(20) || var(14)), 2, 4)
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 3, 6), ifElse((var(20) || var(14)), 3, 6)
guard.pauseTime = ifElse((var(20) || var(14)), 3, 6), ifElse((var(20) || var(14)), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 20 + 3 * var(9)
ground.slideTime = 20 + 3 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || (var(20) || var(14)))
trigger1 = var(10) = 2 && HitCount < 6
trigger1 = Anim = 1001 && (AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 16)
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 4
getPower = ifElse(!var(13), 72, 36) * (!var(14) && !var(20)), 12 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 2, 4), ifElse((var(20) || var(14)), 2, 4)
guard.pauseTime = ifElse((var(20) || var(14)), 2, 4), ifElse((var(20) || var(14)), 2, 4)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 23 + 3 * var(9)
ground.slideTime = 23 + 3 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 2, 4)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8051
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 1002
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = Anim = 1002 && !AnimTime
value = 0
ctrl = 1

;========================<EX BESERKER BARRAGE>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = Anim = 1000
value = SCA
time = 1

[State 1050, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1050, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 72

[State 1050, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 25, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1050, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 5

[State 1050, Voice]
type = PlaySND
trigger1 = Anim = 1000 && AnimElem = 3
value = 1000, 0
channel = 0

[State 1050, Dash]
type = PlaySND
trigger1 = Anim = 1000 && AnimElem = 3
value = 41, 0
channel = 1

[State 1050, Dust Helper]
type = Helper
trigger1 = Anim = 1000 && AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
anim = 1005
ID = 1005
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
anim = 1006
ID = 1006
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = -2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
anim = 1007
ID = 1007
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 1001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
anim = 1008
ID = 1008
pos = 0,0
postype = P1
scale = 1, 1
sprpriority = -2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1000 && !AnimTime
value = 1001

[State 1050, VelSet]
type = VelSet
trigger1 = Anim = 1000 && AnimElem = 3
x = 3.5

[State 1050, VelSet]
type = VelSet
trigger1 = Anim = 1001
x = 7

[State 1050, VelSet]
type = VelSet
trigger1 = Anim = 1052
x = 0

[State 1050, Chop]
type = PlaySND
trigger1 = Anim = 1001
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 
trigger2 = AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22
value = 1, 6
channel = 2

[State 1050, Chop]
type = PlaySND
trigger1 = Anim = 1052
trigger1 = AnimElem = 2
value = 1, 7
channel = 2

[State 1050, Chop]
type = PlaySND
trigger1 = Anim = 1001
trigger1 = AnimElem = 3 || AnimElem = 9 || AnimElem = 15 || AnimElem = 21
value = 100, 0
channel = 3

[State 1050, Chop]
type = PlaySND
trigger1 = Anim = 1001
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 || AnimElem = 24 
value = 100, 1
channel = 3

[State 1050, Anim]
type = ChangeAnim
trigger1 = Anim = 1001 
Trigger1 = AnimElemTime(24) >= 0
value = 1052
persistent = 0

[State 1050, Voice]
type = PlaySnd
TriggerAll = Anim = 1052
trigger1 = AnimElem = 1
value = 4, 4
channel = 0

[State 1050, Hit Again]
type = MoveHitReset
trigger1 = MoveHit = 1 && !NumTarget

[State 1050, HitDef First 7 Hits]
type = HitDef
trigger1 = !var(16) && (var(15) < 8 || var(20))
trigger1 = HitCount < 8
trigger1 = Anim = 1001 && (AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 16  || AnimElem = 19)
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
guard.pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, HitDef 8th Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 8 || var(20))
trigger1 = HitCount < 8
trigger1 = Anim = 1052 && (AnimElem = 2)
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
guard.pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -6.66, -3.45 
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 6, 12)
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

[State 1050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 1052 && AnimElemTime(4) >= 0
movetype = I

[State 1050, ChangeState]
type = ChangeState
trigger1 = Anim = 1052 && !AnimTime
value = 0
ctrl = 1

;========================<TORNADO CLAW>=============================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1100, Voice]
type = PlaySND
trigger1 = AnimElem = 3
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 1100, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 4
value = 1,7
channel = 2

[State 1100, HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 4
getpower = (72 * !var(20)) || (72 * !var(14)), (36* !var(20)) || (36 * !var(14))
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
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8051
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 1101
ctrl = 0

;Tornado Claw - Assault
[StateDef 1101]
type = A
physics = N
moveType = A
anim = 1101
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 1

[State 1101, Mashing]
type = VarSet
trigger1 = !Time
var(52) = 0

[State 1101, Mashing]
type = VarSet
trigger1 = !Time
var(51) = 0

[State 1101, Mashing]
type = VarSet
triggerAll = var(52) = 0
trigger1 = !AILevel && command = "x" || command = "y" || command = "z"
trigger2 = AILevel && Random < 800
var(52) = 2

[State 1101, Mashing Increment]
type  = VarAdd
trigger1 = var(52) = 2
var(51) = 1

[State 1101, Mashing Decrement]
type = VarAdd
trigger1 = var(52) > 0
var(52) = -1

[State 1101, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1101

[State 1101, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) < 0 && var(10) = 1
trigger2 = AnimElemTime(2) < 0 && var(10) = 2
value = SCA
time = 1

[State 1101, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 7 + var(10) * 3
y = ifElse(!var(10), -6.5, ifElse(var(10) = 1, -9, -11.75))

[State 1101, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0
y = 0.47

[State 1101, Velocity]
type = VelMul
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(17) < 0
x = 0.88
persistent = 1

[State 1101, VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = 0

[State 1101, HitDef 1]
type = HitDef
trigger1 = !var(16) && ((var(15) < 2 + (var(51) / 2) && (var(15) < (5 + (var(10))))) || (var(20) || var(14)))
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(12) && AnimElemTime(4) > 0, 7, 14) < 7, 7, fvar(11) * ifElse(var(12) && AnimElemTime(4) > 0, 7, 14))), 4
getpower = (72 * !var(20)) || (72 * !var(14)), (36* !var(20)) || (36 * !var(14))
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
ground.velocity = -2.16 * ifElse(P2Dist x < 0, -1, 1), (-6.81 - (1 * var(10)))
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16 * ifElse(P2Dist x < 0, -1, 1), (-6.81 - (1 * var(10)))
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
;forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1101, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 4, 8)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8051
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1101, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1105
ctrl = 0

;Landing
[StateDef 1105]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[State 1105, EX Flash Off]
type = VarSet
TriggerAll = PrevStateNo = 1151
trigger1 = !Time
var(25) = 0

[State 1105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX TORNADO CLAW>=============================
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1150, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1150, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 57

[State 1150, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 25, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1150, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 5

[State 1150, Voice]
type = PlaySND
trigger1 = AnimElem = 3
value = 1100, 0
channel = 0

[State 1150, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 1150, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 4
value = 1,7
channel = 2

[State 1150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1150, HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 4
getpower = (72 * !var(20)) || (72 * !var(14)), (36* !var(20)) || (36 * !var(14))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 3, 6), ifElse((var(20) || var(14)), 3, 6)
guard.pauseTime = ifElse((var(20) || var(14)), 3, 6), ifElse((var(20) || var(14)), 3, 6)
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
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 3, 6)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8051
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1150, End]
type = ChangeState
trigger1 = !AnimTime
value = 1151
ctrl = 0

;Tornado Claw - Assault
[StateDef 1151]
type = A
physics = N
moveType = A
anim = 1102
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 1

[State 1151, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tornado Claw Dust"
posType = P1
ownPal = 1

[State 1151, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 13
y = -11.5

[State 1151, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0
y = 0.47

[State 1151, Velocity]
type = VelMul
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(17) < 0
x = 0.88
persistent = 1

[State 1151, VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = 0

[State 1151, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 8 || (var(20) || var(14)))
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 11
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(12) && AnimElemTime(4) > 0, 7, 14) < 7, 7, fvar(11) * ifElse(var(12) && AnimElemTime(4) > 0, 7, 14))), 4
getpower = (72 * !var(20)) || (72 * !var(14)), (36* !var(20)) || (36 * !var(14))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 3, 6), ifElse((var(20) || var(14)), 3, 6)
guard.pauseTime = ifElse((var(20) || var(14)), 3, 6), ifElse((var(20) || var(14)), 3, 6)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16 * ifElse(P2Dist x < 0, -1, 1), -8.91
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16 * ifElse(P2Dist x < 0, -1, 1), -8.91
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
;forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1151, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 3, 6)
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8051
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1151, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1105
ctrl = 0

;========================<BESERKER SLASH>=============================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * (!var(14) && !var(20))
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 120, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1200, Width]
type = Width
trigger1 = !Time
edge = 40,0

[State 1200, PlayerPush]
type = PlayerPush
trigger1 = var(10) 
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = 0

[State 1200, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1200, 0
channel = 0

[State 1200, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 1,5
channel = 1

[State 1200, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 1,8
channel = 2

[State 1200, Jump Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Beserker Slash Dust"
posType = P1
ownPal = 1

[State 1200, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 10
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 10220
ID = 10220
pos = 0,0
postype = P1
scale = 0.6, 1.00
facing = IfElse(P2BodyDist X < -10, -1, 1)
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6.35 + (var(10) * 1.58)

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1.15

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1200, Turn]
type = Turn
trigger1 = AnimElem = 6 && P2BodyDist X < -10;Pos X > P2Dist X
ignorehitpause = 1

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || (var(20) || var(14)))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.51, -3.66
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -7.51, -3.66
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 6, 12)
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

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX BESERKER SLASH>=============================
[StateDef 1250]
type = S
physics = N
moveType = A
anim = 1250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1250, NotHitBy]
type = NotHitBy
trigger1 = Anim = 1250
value = ,AP
time = 1

[State 1250, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1250, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 48

[State 1250, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 18, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1250, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 5

[State 1250, Voice]
type = PlaySND
trigger1 = AnimElem = 1
value = 1200, 0
channel = 0

[State 1250, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 1
value = 1,5
channel = 1

[State 1250, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11

[State 1250, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X <= 0 || Time >= 24
value = 1251

;Attack
[StateDef 1251]
type = S
physics = N
moveType = A
anim = 1251
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1250, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 1
value = 1,8
channel = 2

[State 1250, Jump Sound]
type = PlaySND
trigger1 = AnimElem = 1
value = 40,0
channel = 3

[State 1250, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Beserker Slash Dust"
posType = P1
ownPal = 1

[State 1250, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1250, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 10220
ID = 10220
pos = 0,0
postype = P1
scale = 0.75, 1.10
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 1250, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 1.15

[State 1250, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
ID = 1251
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -12.75, -7.3
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -12.75, -7.3
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 6, 12)
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

[State 1250, TargetState]
type = TargetState
triggerAll = MoveHit && NumTarget(1251)
trigger1 = (Target(1251), StateNo = 5000) || (Target(1251), StateNo = 5010) || (Target(1251), StateNo = 5020) 
value = 1255
ID = 1251
ignoreHitPause = 1

[State 1250, Juggle Points Reset]
type = VarSet
trigger1 = MoveHit && NumTarget(1251)
var(15) = 0

[State 1250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 1250, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================BESERKER SLASH TARGET>=============================
;Being Launched
[StateDef 1255]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1255, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002

[State 1255, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1256


;Heading Towards Wall
[StateDef 1256]
type = A
moveType = H
physics = N

[State 1256, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1256, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1256, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1256, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1256, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 1256, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1257

[State 1256, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1257]
type = A
moveType = H
physics = N

[State 1257, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1257, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1257, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1257, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1257, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1257, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5000

[State 1257, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1257, Hitting the Wall FX]
type = Explod
trigger1= !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType =  Back
sprPriority = 3

[State 1257, End]
type = ChangeState
trigger1 = Time >= 4
value = 1258


;Bouncing Off Wall
[Statedef 1258]
type = A
moveType = H
physics = N

[State 1258, Turn]
type = Turn
trigger1 = !Time

[State 1258, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1258, VelSet]
type = VelSet
trigger1 = !Time
x = -2.5
y = -9

[State 1258, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1258, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1258, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1258, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1258, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1258, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 2900, Voice]
type = PlaySND
trigger1 = !Time
value = 1200, 0
channel = 0

[State 2900, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 1,5
channel = 1

[State 2900, Woosh Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 1,8
channel = 2

[State 2900, Jump Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Beserker Slash Dust"
posType = P1
ownPal = 1

[State 2900, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 10
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2900, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 10220
ID = 10220
pos = 0,0
postype = P1
scale = 0.75, 1.10
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6.57

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1.15

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
stateType = S
physics = S

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -8.51, -3.66
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 6, 12)
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

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 450, VelSet]
type = VelSet
trigger1 = AnimElemTime (5) >= 0
x = 6.45

[State 450, VelSet]
type = VelSet
trigger1 = AnimElemTime (6) >= 4
x = 1.45

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 800
value = 4, 4
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 5
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.85, -6.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(7) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
