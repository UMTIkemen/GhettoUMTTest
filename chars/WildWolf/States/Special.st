; ________________________________________________
;| Wild Wolf by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<POWER WAVE>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0
channel = 0

[State 1000, Power Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1000, Power Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1005
ID = 1005
name = "Power Wave Projectile"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<POWER WAVE (FEINT)>=============================
[StateDef 1010]
type = S
physics = N
moveType = A
anim = 1010
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1010, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 1010, CtrlSet]
type = CtrlSet
trigger1 = Time > 12
value = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX POWER WAVE>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 41

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 3, -105
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1030, 0
channel = 0

[State 1030, Power Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1030, Power Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1035
ID = 1035
name = "Power Wave Projectile"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<BURN KNUCKLE>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1101, 1102))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1100, Burn Knuckle Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100, 1
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(8) = -1
value = 41, 0
channel = 5

[State 1100, Burn Knuckle Energy 1]
type = Explod
trigger1 = AnimElem = 8
ID = 1103
anim = 1103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1100, Burn Knuckle Energy 2]
type = Explod
trigger1 = AnimElem = 8
ID = 1104
anim = 1104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Burn Knuckle Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 13.4078212291
y = -ifElse(var(10) = 2, 0.78125, ifElse(var(10) = 1, 0.5859375, 0.390625))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1
y = 0.09765625

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 112, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 112, 98)))), ifElse(var(10) = 2, 18, ifElse(var(10) = 1, 16, 14))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -6.70391061453, -5
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105


;Landing
[StateDef 1105]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[State 1105, Remove Burn Knuckle Energy]
type = RemoveExplod
trigger1 = NumExplod(1103)
ID = 1103

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
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<BURN KNUCKLE (FEINT)>=============================
[StateDef 1110]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1110, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 1110, CtrlSet]
type = CtrlSet
trigger1 = Time > 12
value = 1

[State 1110, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX BURN KNUCKLE>==========================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 28

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 4, -88
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1130, 0
channel = 0

[State 1130, Burn Knuckle Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100, 1
channel = 1

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(8) = -1
value = 41, 0
channel = 5

[State 1130, Burn Knuckle Energy 1]
type = Explod
trigger1 = AnimElem = 8
ID = 1103
anim = 1103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1130, Burn Knuckle Energy 2]
type = Explod
trigger1 = AnimElem = 8
ID = 1104
anim = 1104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Burn Knuckle Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 13.4078212291
y = -0.78125

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1
y = 0.09765625

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 14
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -3.35195530726, -5
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1130, EX Crack Shoot]
type = VarSet
triggerAll = (!var(14) || AILevel) && Power >= 500 && AnimElemTime(8) > 0 && MoveContact
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a + b / a + c / b + c
trigger1 = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
trigger2 = AILevel && !var(14)
trigger2 = MoveContact
var(14) = 1340

[State 1130, Followup]
type = ChangeState
trigger1 = var(14) = 1340
trigger1 = AnimElemTime(8) > 0
value = var(14)

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105



;=====================<CRACK SHOOT>==========================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1301, 1302))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1300, 0
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 5
channel = 1

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 5

[State 1300, Crack Shoot Blur]
type = Explod
trigger1 = AnimElem = 7
ID = 1310
anim = ifElse(var(10) = 2, 1312, ifElse(var(10) = 1, 1311, 1310))
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, ModifyExplod: Crack Shoot Blur]
type = ModifyExplod
trigger1 = AnimElem = 10
ID = 1310
posType = P1
pos = 0, 0
removeOnGetHit = 1
ignoreHitPause = 1

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Crack Shoot Dust"
posType = P1
ownPal = 1

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 4

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 || AnimElem = 5
x = 8

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 4.46927374302
y = -ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 8.75, 7.5))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.78125

[State 1300, HitDef (LK/MK)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) != 2
trigger1 = AnimElem = 9
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (LK/MK)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) != 2
trigger1 = AnimElem = 10 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (HK)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) = 2
trigger1 = AnimElem = 9 && !MoveContact && !MoveReversed
ID = 1302
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (HK)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) = 2
trigger1 = AnimElem = 10 && !MoveContact && !MoveReversed
ID = 1302
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1302) > 1
ID = 1302
keepOne = 1
excludeID = 1302
ignoreHitPause = 1

[State 1300, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1302)
trigger1 = !(Target(1302), Time)
value = ifElse(Target(1302), StateType = A, 5425, 5420)
ID = 1302
ignoreHitPause = 1

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305


;Landing
[StateDef 1305]
type = S
anim = ifElse((PrevStateNo = 1330 || PrevStateNo = 1340), 1335, 1305)
physics = N
moveType = I
velSet = 0, 0

[State 1305, Remove Crack Shoot Blur]
type = RemoveExplod
trigger1 = NumExplod(1310)
ID = 1310

[State 1305, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1305, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX CRACK SHOOT>==========================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 28

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -20, -36
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1330, 0
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 5
channel = 1

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 5

[State 1330, Crack Shoot Blur]
type = Explod
trigger1 = AnimElem = 7
ID = 1310
anim = 1310
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, ModifyExplod: Crack Shoot Blur]
type = ModifyExplod
trigger1 = AnimElem = 10
ID = 1310
posType = P1
pos = 0, 0
removeOnGetHit = 1
ignoreHitPause = 1

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Crack Shoot Dust"
posType = P1
ownPal = 1

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 4

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 || AnimElem = 5
x = 8

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 4.46927374302
y = -7.5

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.78125

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 9
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10 && !MoveContact && !MoveReversed
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(51) && NumTarget(1330)
var(15) = 0

[State 1330, EX Crack Shoot Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1330)
var(51) = 1
persistent = 0

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1330)
trigger1 = !(Target(1330), Time)
value = ifElse(Target(1330), StateType = A, 5425, 5420)
ID = 1330
ignoreHitPause = 1

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305



;=====================<EX CRACK SHOOT (FOLLOW-UP)>==========================
[StateDef 1340]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1
moveHitPersist = 1
hitCountPersist = 1

[State 1340, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1340, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 28

[State 1340, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -20, -36
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1340, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1340, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1330, 0
channel = 0

[State 1340, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 5
channel = 1

[State 1340, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 5

[State 1340, Crack Shoot Blur]
type = Explod
trigger1 = AnimElem = 7
ID = 1310
anim = 1310
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1340, ModifyExplod: Crack Shoot Blur]
type = ModifyExplod
trigger1 = AnimElem = 10
ID = 1310
posType = P1
pos = 0, 0
removeOnGetHit = 1
ignoreHitPause = 1

[State 1340, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Crack Shoot Dust"
posType = P1
ownPal = 1

[State 1340, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1340, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 4

[State 1340, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 || AnimElem = 5
x = 8

[State 1340, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 4.46927374302
y = -7.5

[State 1340, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.78125

[State 1340, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1340, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 10 && !MoveContact && !MoveReversed
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(51) && NumTarget(1330)
var(15) = 0

[State 1330, EX Crack Shoot Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1330)
var(51) = 1
persistent = 0

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1330)
trigger1 = !(Target(1330), Time)
value = ifElse(Target(1330), StateType = A, 5425, 5420)
ID = 1330
ignoreHitPause = 1

[State 1340, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305



;=====================<POWER DUNK>==========================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400, 0
channel = 0

[State 1400, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100, 1
channel = 1

[State 1400, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1400, 1
channel = 4

[State 1400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1400, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Power Dunk Dust"
posType = P1
ownPal = 1

[State 1400, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 9
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1400, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 10
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -ifElse(var(10) = 2, 9.375, ifElse(var(10) = 1, 8.4375, 7.5))

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y < -2.8125
y = 0.390625

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
y = 0.78125

[State 1400, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 1410
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(52) && NumTarget(1410)
var(15) = 0

[State 1400, Power Dunk Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1410)
var(52) = 1
persistent = 0

[State 1400, BREAKING]
type = ChangeState
trigger1 = AnimElemTime(4) = 1
;command = "a+x"
trigger1 = NumExplod(90000200) && NumExplod(90000230)
value = 1410

[State 1400, Air Hit: Final]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 11
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1400) > 1
ID = 1400
keepOne = 1
excludeID = 1400
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
value = ifElse(Target(1400), StateType = A, 5425, 5420)
ID = 1400
ignoreHitPause = 1

[State 1400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1405


;Landing
[StateDef 1405]
type = S
anim = 1405
physics = N
moveType = I
velSet = 0,0

[State 1405, Remove Power Dunk Energy]
type = RemoveExplod
trigger1 = NumExplod(1403)
ID = 1403

[State 1405, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 1405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<POWER DUNK (BREAKING)>=============================
[StateDef 1410]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1410, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 2
channel = 0

[State 1410, VelSet]
type = VelSet
trigger1 = !Time
x = 5.58659217877

[State 1410, VelAdd]
type = VelAdd
trigger1 = Time > 0 && vel x > 0
x = -0.34916201117

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1410, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX POWER DUNK>==========================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 32

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 24, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1430, 0
channel = 0

[State 1430, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100, 1
channel = 1

[State 1430, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1400, 1
channel = 4

[State 1430, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Power Dunk Dust"
posType = P1
ownPal = 1

[State 1430, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 9
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1430, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 10
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -7.5

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y < -2.8125
y = 0.390625

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
y = 0.78125

[State 1430, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
ID = 1430
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
ID = 1430
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -8.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, ChangeState]
type = ChangeState
trigger1 = NumTarget(1430) && AnimElemTime(4) = 1
trigger1 = MoveContact && Target, Alive
value = 1440

[State 1430, Air Hit: Final]
type = HitDef
trigger1 = !var(16)
trigger1 = AnimElem = 11
ID = 1431
attr = A, SA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 36
down.hitTime = 36
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -26
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1431) > 1
ID = 1431
keepOne = 1
excludeID = 1431
ignoreHitPause = 1

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1431)
trigger1 = !(Target(1431), Time)
value = ifElse(Target(1431), StateType = L, 5410, ifElse(Target(1431), StateType = A, 5425, 5420))
ID = 1431
ignoreHitPause = 1

[State 1430, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1405


;Success
[StateDef 1440]
type = S
anim = 1440
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1
moveHitPersist = 1
hitCountPersist = 1

[State 1440, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 53

[State 1440, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 1440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 9 || AnimElem = 11
trigger2 = AnimElem = 13 || AnimElem = 15 || AnimElem = 17
value = 1, 5

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1430, 0
channel = 0

[State 1440, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1100, 1
channel = 1

[State 1440, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 24
value = 1400, 1
channel = 4

[State 1440, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 23
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1440, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 24
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11.1731843575

[State 1440, VelSet]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(4) < 0
x = -0.17458100558

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 5.58659217877
y = -5

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElemTime(20) = 1
x = 5.58659217877
y = -2.45722765363

[State 1440, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(20) > 1
y = 0.78125

[State 1440, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10
trigger2 = AnimElem = 12 || AnimElem = 14 || AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -0.55865921787, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -2.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1440, Air Hit: Final]
type = HitDef
trigger1 = !var(16)
trigger1 = AnimElem = 25
ID = 1431
attr = A, SA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 36
down.hitTime = 36
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -26
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1440, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1431) > 1
ID = 1431
keepOne = 1
excludeID = 1431
ignoreHitPause = 1

[State 1440, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1431)
trigger1 = !(Target(1431), Time)
value = ifElse(Target(1431), StateType = L, 5410, ifElse(Target(1431), StateType = A, 5425, 5420))
ID = 1431
ignoreHitPause = 1

[State 1440, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1445


;Landing
[StateDef 1445]
type = S
anim = 1305
physics = N
moveType = I
velSet = 0, 0

[State 1445, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1445, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1445, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1445, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<POWER CHARGE 1ST>=============================
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= 17), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= 14), 1, 0))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1500, 0
channel = 0

[State 1500, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(10) = 2, 13.4078212291, ifElse(var(10) = 1, 12.2905027933, 11.1731843575))

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -ifElse(var(10) = 2, 1.04748603352, ifElse(var(10) = 1, 1.22206703911, 1.39664804469))

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) > 0 && vel x <= 0
x = 0

[State 1500, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 49, ifElse(var(10) = 1, 42, 35)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 49, ifElse(var(10) = 1, 42, 35)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1500, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))
elem = 8
ignoreHitPause = 1

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 1500, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1500, Power Charge 2nd]
type = VarSet
triggerAll = (!var(14) || AILevel) && MoveContact && AnimElemTime(7) > 0
trigger1 = !AILevel
;command = "holdfwd"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel
trigger2 = MoveHit
var(14) = 1510

[State 1500, Followup]
type = ChangeState
trigger1 = var(14) = 1510
trigger1 = AnimElemTime(10) >= 1 && AnimElemTime(12) < 0
value = var(14)

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<POWER CHARGE 2ND>==========================
[StateDef 1510]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1510
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1510, Reset Left Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 1510, Reset Right Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 1510, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1510, 0
channel = 0

[State 1510, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1510, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 12.2905027933

[State 1510, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -1.22206703911

[State 1510, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1510, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1510, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1510
elem = 5
ignoreHitPause = 1

[State 1510, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1510, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1510, Power Charge 2nd]
type = VarSet
triggerAll = (!var(14) || AILevel) && MoveContact && AnimElemTime(4) > 0
trigger1 = !AILevel
;command = "holdfwd"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel
trigger2 = MoveHit
var(14) = 1520

[State 1510, Followup]
type = ChangeState
trigger1 = var(14) = 1520
trigger1 = AnimElemTime(6) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1510, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<POWER CHARGE 3RD>==========================
[StateDef 1520]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1520
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1520, Reset Left Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 1520, Reset Right Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 1520, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1520, 0
channel = 0

[State 1520, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1520, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 13.4078212291

[State 1520, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -1.04748603352

[State 1520, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1520, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1520, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1520
elem = 5
ignoreHitPause = 1

[State 1520, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1520, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX POWER CHARGE 1ST>=============================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1530, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1530, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1530, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 30

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 30, -75
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1500, 0
channel = 0

[State 1530, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 12.2905027933

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -1.22206703911

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) > 0 && vel x <= 0
x = 0

[State 1530, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12, 14
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 18), (var(36) := -68)
hitSound = S3, 0
numHits = 0

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1 && !var(9)
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1 && var(9)
trigger1 = AnimElem = 7
ID = 1530
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 10
value = 1530
elem = 8
ignoreHitPause = 1

[State 1530, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(1530)
var(15) = 0

[State 1530, EX Power Charge Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1530)
var(53) = 1
persistent = 0

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 1530, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1530, Power Charge 2nd]
type = VarSet
triggerAll = (!var(14) || AILevel) && MoveContact && AnimElemTime(7) > 0
trigger1 = !AILevel
;command = "holdfwd"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel
trigger2 = MoveHit
var(14) = 1540

[State 1530, Followup]
type = ChangeState
trigger1 = var(14) = 1540
trigger1 = AnimElemTime(10) >= 1 && AnimElemTime(12) < 0
value = var(14)

[State 1530, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX POWER CHARGE 2ND>==========================
[StateDef 1540]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1510
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1540, Reset Left Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 1540, Reset Right Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 1540, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 18

[State 1540, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1510, 0
channel = 0

[State 1540, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1540, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 12.2905027933

[State 1540, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -1.22206703911

[State 1540, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1540, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1540, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1510
elem = 5
ignoreHitPause = 1

[State 1540, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1540, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1540, Power Charge 2nd]
type = VarSet
triggerAll = (!var(14) || AILevel) && MoveContact && AnimElemTime(4) > 0
trigger1 = !AILevel
;command = "holdfwd"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel
trigger2 = MoveHit
var(14) = 1550

[State 1540, Followup]
type = ChangeState
trigger1 = var(14) = 1550
trigger1 = AnimElemTime(6) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1540, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX POWER CHARGE 3RD>==========================
[StateDef 1550]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1520
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1550, Reset Left Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 1550, Reset Right Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 1550, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1550, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1520, 0
channel = 0

[State 1550, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1550, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 13.4078212291

[State 1550, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -1.04748603352

[State 1550, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1550, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1550, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1520
elem = 5
ignoreHitPause = 1

[State 1550, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1550, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400, 0
channel = 0

[State 2900, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100, 1
channel = 1

[State 2900, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1400, 1
channel = 4

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Power Dunk Dust"
posType = P1
ownPal = 1

[State 2900, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 9
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 2900, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 10
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -8.4375

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y < -2.8125
y = 0.390625

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
y = 0.78125

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -8.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 11
ID = 2900
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(2900) > 1
ID = 2900
keepOne = 1
excludeID = 2900
ignoreHitPause = 1

[State 2900, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(2900)
trigger1 = !(Target(2900), Time)
value = ifElse(Target(2900), StateType = A, 5425, 5420)
ID = 2900
ignoreHitPause = 1

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1405



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -12
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1