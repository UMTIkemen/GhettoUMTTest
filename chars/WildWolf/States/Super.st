; ________________________________________________
;| Wild Wolf by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<POWER GEYSER>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 45, -78
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 1
channel = 0

[State 3000, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3000, 2
channel = 1

[State 3000, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 3003
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3000, Impact Dust]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3000, Explosion]
type = Explod
trigger1 = AnimElem = 7
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 34, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3000, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3005
ID = 3005
name = "Power Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 45, 0

[State 3000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 18
ampl = -6
freq = 120

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SHINKU HADOKEN>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 45, -78
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3050, 0
channel = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3050, 1
channel = 0

[State 3050, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 14
value = 3000, 2
channel = 1

[State 3050, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 3003
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3050, Power Geyser Energy]
type = Null;Explod
trigger1 = AnimElem = 12
anim = 3053
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3050, Impact Dust]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 14
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3050, Explosion]
type = Explod
trigger1 = AnimElem = 7
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 62, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3050, Explosion]
type = Explod
trigger1 = AnimElem = 14
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 42, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3050, Projectile 1]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3005
ID = 3055
name = "Power Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Projectile 2]
type = Helper
trigger1 = AnimELem = 14
helperType = Normal
stateNo = 3005
ID = 3065
name = "Power Geyser Projectile"
posType = P1
pos = 114, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Width]
type = Width
trigger1 = AnimElemTime(7) = -1 || AnimElemTime(14) = -1
value = 45, 0

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7 || AnimElem = 14
time = 18
ampl = -6
freq = 120

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<BUSTER WOLF>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 6, -42
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3100, Buster Wolf Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 1
channel = 1

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = -1
value = 41, 0
channel = 3

[State 3100, Buster Wolf Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400, 1
channel = 4

[State 3100, Buster Wolf Energy 1]
type = Explod
trigger1 = AnimElem = 7
ID = 3103
anim = 3103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3100, Buster Wolf Energy 2]
type = Explod
trigger1 = AnimElem = 9
ID = 3104
anim = 3104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Buster Wolf Dust"
posType = P1
ownPal = 1

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = 13.4078212291
y = -0.390625

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 1
y = 0.09765625

[State 3100, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
ID = 3100
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(3100) && Target, Alive
value = 3110

[State 3100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3105


;Landing
[StateDef 3105]
type = S
anim = 3105
physics = N
moveType = I
velSet = 0, 0

[State 3105, Remove Buster Wolf Energy]
type = RemoveExplod
trigger1 = NumExplod(3103)
ID = 3103

[State 3105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3110]
type = S
anim = 3110
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1
moveHitPersist = 1
hitCountPersist = 1

[State 3110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3110, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52, 0
channel = 5

[State 3110, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3110, 0
channel = 0

[State 3110, Buster Wolf Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 2
channel = 1

[State 3110, Buster Wolf Energy]
type = Explod
trigger1 = AnimElem = 4
ID = 3113
anim = 3113
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3110, PosAdd]
type = PosAdd
trigger1 = !Time
x = 8.49162011173

[State 3110, VelSet]
type = VelSet
trigger1 = !Time
x = 2.23463687151

[State 3110, VelSet]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(5) < 0
x = -0.08729050279

[State 3110, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 3110, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 18
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.93296089385, -9.140625
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.93296089385, -9.140625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := (ceil(P2Dist x) + 32)), var(36) := ceil(P2Dist Y - 72)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 3110, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX BUSTER WOLF>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 6, -42
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time
value = 3150, 0
channel = 0

[State 3150, Buster Wolf Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 1
channel = 1

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = -1
value = 41, 0
channel = 3

[State 3150, Buster Wolf Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400, 1
channel = 4

[State 3150, Buster Wolf Energy 1]
type = Explod
trigger1 = AnimElem = 7
ID = 3103
anim = 3103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3150, Buster Wolf Energy 2]
type = Explod
trigger1 = AnimElem = 9
ID = 3104
anim = 3104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Buster Wolf Dust"
posType = P1
ownPal = 1

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = 13.4078212291
y = -0.625

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 1
y = 0.09765625

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
ID = 3150
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(3150) && Target, Alive
value = 3160

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3105


;Success
[StateDef 3160]
type = S
anim = 3110
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1
moveHitPersist = 1
hitCountPersist = 1

[State 3160, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3160, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52, 0
channel = 5

[State 3160, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3160, 0
channel = 0

[State 3160, Buster Wolf Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 2
channel = 1

[State 3160, Buster Wolf Energy]
type = Explod
trigger1 = AnimElem = 4
ID = 3113
anim = 3113
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1,1
ownPal = 1

[State 3160, PosAdd]
type = PosAdd
trigger1 = !Time
x = 8.49162011173

[State 3160, VelSet]
type = VelSet
trigger1 = !Time
x = 2.23463687151

[State 3160, VelSet]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(5) < 0
x = -0.08729050279

[State 3160, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 3160, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6 || AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 9
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 4
guard.pauseTime = 0, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.93296089385, -9.140625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := (ceil(P2Dist x) + 32)), var(36) := ceil(P2Dist Y - 72)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3160, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8
ID = 3160
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 8
guard.pauseTime = 0, 8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.93296089385, -9.140625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.93296089385, -9.140625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := (ceil(P2Dist x) + 32)), var(36) := ceil(P2Dist Y - 72)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3160, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 3160, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHIN SHORYUKEN>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -22, -58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3
channel = 0

[State 3300, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1100, 0
channel = 0

[State 3300, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 3300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 8.93854748603
y = -12.5

[State 3300, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(5) > 1
x = -0.69832402234

[State 3300, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 3300, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 189 < 7, 7, fvar(11) * 189)), 27
getPower = 0, 0
givePower = 36, 36
pauseTime = 60, 60
guard.pauseTime = 60, 60
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 3.35195530726, -5;3.35195530726, -3.125
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 3.35195530726, -5;3.35195530726, -3.125
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Push Helper]
type = Helper
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
helperType = Normal
stateNo = 13300
ID = 13300
name = "Shin Shoryuken Pushbox"
posType = P1
size.ground.back = 19
size.ground.front = 19
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3300, PosSet]
type = PosSet
trigger1 = NumHelper(13300)
x = Helper(13300), Pos X
ignoreHitPause = 1

[State 3300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3300) > 1
ID = 3300
keepOne = 1
excludeID = 3300
ignoreHitPause = 1

[State 3300, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = 3310

[State 3300, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(5) = 2
trigger3 = AnimElemTime(5) = 4
trigger4 = AnimElemTime(5) = 6
trigger5 = AnimElemTime(5) = 8
trigger6 = AnimElemTime(5) = 10
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3301


;Landing
[StateDef 3301]
type = S
anim = 3301
physics = N
moveType = I
velSet = 0, 0

[State 3301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1