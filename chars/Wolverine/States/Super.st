;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<BESERKER BARRAGE X>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
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
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 44

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1000, Explod]
type = Explod
TriggerAll = Anim = 3001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
trigger5 = AnimElem = 25
trigger6 = AnimElem = 31
trigger7 = AnimElem = 37
trigger8 = AnimElem = 43
trigger9 = AnimElem = 49
trigger10 = AnimElem = 55
trigger11 = AnimElem = 61
trigger12 = AnimElem = 67
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
trigger5 = AnimElem = 25
trigger6 = AnimElem = 31
trigger7 = AnimElem = 37
trigger8 = AnimElem = 43
trigger9 = AnimElem = 49
trigger10 = AnimElem = 55
trigger11 = AnimElem = 61
trigger12 = AnimElem = 67
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
trigger6 = AnimElem = 34
trigger7 = AnimElem = 40
trigger8 = AnimElem = 46
trigger9 = AnimElem = 52
trigger10 = AnimElem = 58
trigger11 = AnimElem = 64
trigger12 = AnimElem = 70
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
trigger6 = AnimElem = 34
trigger7 = AnimElem = 40
trigger8 = AnimElem = 46
trigger9 = AnimElem = 52
trigger10 = AnimElem = 58
trigger11 = AnimElem = 64
trigger12 = AnimElem = 70
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

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 15,-58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice]
type = PlaySND
TriggerAll = Anim = 3000
trigger1 = AnimElem = 3
value = 4000, Random % 4
channel = 0

[State 3000, Voice 1]
type = PlaySND
TriggerAll = Anim = 3001
trigger1 = AnimElem = 2
value = 3000, 0
channel = 1

[State 3000, Dash]
type = PlaySND
TriggerAll = Anim = 3000
trigger1 = AnimElem = 9
value = 41, 0
channel = 2

[State 3000, Dust Helper]
type = Helper
TriggerAll = Anim = 3000
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3000 && !AnimTime
value = 3001

[State 3000, VelSet]
type = VelSet
trigger1 = Anim = 3000 && AnimElem = 7
x = 4

[State 3000, VelSet]
type = VelSet
trigger1 = Anim = 3001
x = 7

[State 3000, VelSet]
type = VelSet
trigger1 = Anim = 3002
x = 0

[State 3000, Chop]
type = PlaySND
triggerAll = Anim = 3001
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 
trigger2 = AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22
trigger3 = AnimElem = 25 || AnimElem = 28 || AnimElem = 31
value = 1, 9
channel = 3

[State 3000, Chop]
type = PlaySND
trigger1 = Anim = 3002
trigger1 = AnimElem = 3
value = 1, 8
channel = 4

[State 3000, Anim]
type = ChangeAnim
trigger1 = Anim = 3001 
Trigger1 = AnimElemTime(33) >= 0
value = 3002
persistent = 0

[State 3000, Hit Again]
type = MoveHitReset
trigger1 = MoveHit = 1 && !NumTarget

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 11
triggerAll = HitCount < 11
triggerAll = Anim = 3001
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 
trigger2 = AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22
trigger3 = AnimElem = 25 || AnimElem = 28 || AnimElem = 31
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = 1,2
guard.pauseTime = 1,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = IfElse(AnimElemTime(48) >= 0, -4.56, 0), IfElse(AnimElemTime(48) >= 0, -3.66, 0)
ground.cornerPush.velOff = 0
ground.velocity = IfElse(AnimElemTime(48) >= 0, -4.56, 0), IfElse(AnimElemTime(48) >= 0, -3.66, 0)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = IfElse(AnimElemTime(48) >= 0, 1, 0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -60 + Random % 4
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 12
triggerAll = Anim = 3002
trigger1 = AnimElem = 2
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 12
guard.pauseTime = 6, 12
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
guard.velocity = ifElse(var(20), -3.66, -7.51)
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -67 + Random % 4
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 2 || 6, 4 || 12)
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

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 3002 && AnimElemTime(5) >= 0
movetype = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = Anim = 3002 && !AnimTime
value = 0
ctrl = 1

;========================<BESERKER BARRAGE X>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 44

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 0
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
pos = 15,-58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice]
type = PlaySND
TriggerAll = Anim = 3000
trigger1 = AnimElem = 3
value = 4000, Random % 4
channel = 0

[State 3000, Voice 1]
type = PlaySND
TriggerAll = Anim = 3001
trigger1 = AnimElem = 2
value = 3000, 0
channel = 1

[State 3000, Dash]
type = PlaySND
TriggerAll = Anim = 3000
trigger1 = AnimElem = 9
value = 41, 0
channel = 2

[State 3000, Dust Helper]
type = Helper
TriggerAll = Anim = 3000
trigger1 = AnimElem = 9
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
trigger5 = AnimElem = 25
trigger6 = AnimElem = 31
trigger7 = AnimElem = 37
trigger8 = AnimElem = 43
trigger9 = AnimElem = 49
trigger10 = AnimElem = 55
trigger11 = AnimElem = 61
trigger12 = AnimElem = 67
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
trigger5 = AnimElem = 25
trigger6 = AnimElem = 31
trigger7 = AnimElem = 37
trigger8 = AnimElem = 43
trigger9 = AnimElem = 49
trigger10 = AnimElem = 55
trigger11 = AnimElem = 61
trigger12 = AnimElem = 67
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
trigger6 = AnimElem = 34
trigger7 = AnimElem = 40
trigger8 = AnimElem = 46
trigger9 = AnimElem = 52
trigger10 = AnimElem = 58
trigger11 = AnimElem = 64
trigger12 = AnimElem = 70
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
TriggerAll = Anim = 3001
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
trigger6 = AnimElem = 34
trigger7 = AnimElem = 40
trigger8 = AnimElem = 46
trigger9 = AnimElem = 52
trigger10 = AnimElem = 58
trigger11 = AnimElem = 64
trigger12 = AnimElem = 70
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

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3000 && !AnimTime
value = 3001

[State 3000, VelSet]
type = VelSet
trigger1 = Anim = 3000 && AnimElem = 7
x = 6;2.56

[State 3000, VelSet]
type = VelSet
trigger1 = Anim = 3001
x = 9;4.35

[State 3000, VelSet]
type = VelSet
trigger1 = Anim = 3002
x = 0

[State 3000, Chop]
type = PlaySND
triggerAll = Anim = 3001
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 
trigger2 = AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22
trigger3 = AnimElem = 25 || AnimElem = 28 || AnimElem = 31 || AnimElem = 34
trigger4 = AnimElem = 37 || AnimElem = 40 || AnimElem = 43 || AnimElem = 46
value = 1, 9
channel = 3

[State 3000, Chop]
type = PlaySND
trigger1 = Anim = 3002
trigger1 = AnimElem = 3
value = 1, 8
channel = 4

[State 3000, Anim]
type = ChangeAnim
trigger1 = Anim = 3001 
Trigger1 = AnimElemTime(48) >= 0
value = 3002
persistent = 0

[State 3000, Hit Again]
type = MoveHitReset
trigger1 = MoveHit = 1 && !NumTarget

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 16
triggerAll = HitCount < 16
triggerAll = Anim = 3001
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10 
trigger2 = AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22
trigger3 = AnimElem = 25 || AnimElem = 28 || AnimElem = 31 || AnimElem = 34
trigger4 = AnimElem = 37 || AnimElem = 40 || AnimElem = 43 || AnimElem = 46
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = 1,2
guard.pauseTime = 1,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = IfElse(AnimElemTime(48) >= 0, -4.56, 0), IfElse(AnimElemTime(48) >= 0, -3.66, 0)
ground.cornerPush.velOff = 0
ground.velocity = IfElse(AnimElemTime(48) >= 0, -4.56, 0), IfElse(AnimElemTime(48) >= 0, -3.66, 0)
guard.cornerPush.velOff = 0
air.velocity = -3.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = IfElse(AnimElemTime(48) >= 0, 1, 0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -60 + Random % 4
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 17
triggerAll = Anim = 3002
trigger1 = AnimElem = 2
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 12
guard.pauseTime = 6, 12
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
guard.velocity = ifElse(var(20), -3.66, -7.51)
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -67 + Random % 4
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 2 || 6, 4 || 12)
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

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 3002 && AnimElemTime(5) >= 0
movetype = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = Anim = 3002 && !AnimTime
value = 0
ctrl = 1

;====================<BESERKER CHARGE>====================
[StateDef 3100]
type = S
physics = S
moveType = A
anim = 3100
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 44

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3100, Beserker Charge Time]
type = VarSet
trigger1 = Time >= 4
var(14) = 180

[State 3100, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 12
guard.pauseTime = 6, 12
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
guard.velocity = ifElse(var(20), -3.66, -7.51)
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

[State 3100, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse(var(20), 2 || 6, 4 || 12)
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

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 1050, Chop]
type = PlaySND
trigger1 = AnimElem = 3
value = 190, 11
channel = 2

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<FATAL CLAW>=============================
;Pose
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 0, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-33
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3201
ctrl = 0

;Air
[StateDef 3201]
type = A
physics = N
moveType = A
anim = 3201
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3201, VelSet]
type = VelSet
trigger1 = !Time
x = 8
y = -8

[State 3201, Pause]
type = Pause
trigger1 = !Time
time = 7
movetime = 7

[State 3201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3202
ctrl = 0

;Attack
[StateDef 3202]
type = A
physics = N
moveType = A
anim = 3202
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3202, VelSet]
type = VelSet
trigger1 = !Time && PrevStateNo = 3201
x = 0.17
y = -0.1

[State 3202, VelSet]
type = VelSet
trigger1 = !Time && PrevStateNo = 3230
x = 0
y = 0.15

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3200,0
channel = 0

[State 3202, PlaySnd]
type = PlaySnd
TriggerAll = Anim = 3202
trigger1 = !Time
trigger2 = Time = 16
trigger3 = Time = 31
trigger4 = Time = 46
trigger5 = Time = 59
trigger6 = Time = 74
trigger7 = Time = 89
trigger8 = Time = 104
trigger9 = Time = 119
value = 1,10
volumescale = 90
channel = 5

[State 3202, Front]
type = Explod
trigger1 = !Time
trigger2 = Time = 16
trigger3 = Time = 31
trigger4 = Time = 46
trigger5 = Time = 59
trigger6 = Time = 74
trigger7 = Time = 89
trigger8 = Time = 104
trigger9 = Time = 119
scale = Const(Size.Xscale)/2,Const(Size.Yscale)/2
id = 13205
anim = 13205
pos = -6,-62
sprpriority = 5
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 3202, Back]
type = Explod
trigger1 = !Time
trigger2 = Time = 16
trigger3 = Time = 31
trigger4 = Time = 46
trigger5 = Time = 59
trigger6 = Time = 74
trigger7 = Time = 89
trigger8 = Time = 104
trigger9 = Time = 119
scale = Const(Size.Xscale)/2,Const(Size.Yscale)/2
id = 13207
anim = 13207
pos = -6,-62
sprpriority = -5
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 3202, Fatal Claw Projectile]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 3210
ID = 3210
name = "Fatal Claw Projectile"
posType = P1
ownPal = 1
size.xScale = .5
size.yScale = .5

[State 3202, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(25) >= 0
value = 3205
ctrl = 0

;Fall
[StateDef 3205]
type = S
physics = N
moveType = I
anim = 3205
ctrl = 0
;velSet = 0,0
sprPriority = 1

[State 3305, ScreenBound: Y Only]
type = ScreenBound
trigger1 = PrevStateNo = 3305
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3305, Friction: Weapon X]
type = VelMul
triggerall = PrevStateNo = 3305
trigger1 = vel X > 0
x = .95

[State 3205, Gravity]
type = Gravity
trigger1 = 1

[State 3205, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52
ctrl = 0

;========================<FATAL CLAW (AERIAL)>=============================
;Aerial Pose
[StateDef 3230]
type = A
physics = N
moveType = A
anim = 3230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3230, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3230, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3230, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3230, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3230, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3230, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 0, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 3230, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3230, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3230, PosAdd]
type = PosAdd
trigger1 = !Time
x = 0
y = 0

[State 3230, ChangeState]
type = ChangeState
trigger1 = Time = 43
value = 3202
ctrl = 0

;========================<MAX FATAL CLAW>=============================
;Pose
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 0
time = 1
value = SCA

[State 0, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-33
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3250, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3251
ctrl = 0

;Air
[StateDef 3251]
type = A
physics = N
moveType = A
anim = 3201
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3251, VelSet]
type = VelSet
trigger1 = !Time
x = 8
y = -8

[State 3251, Pause]
type = Pause
trigger1 = !Time
time = 7
movetime = 7

[State 3251, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3252
ctrl = 0

;Attack
[StateDef 3252]
type = A
physics = N
moveType = A
anim = 3202
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3252, VelSet]
type = VelSet
trigger1 = !Time && PrevStateNo = 3251
x = 0.17
y = -0.1

[State 3252, VelSet]
type = VelSet
trigger1 = !Time && PrevStateNo = 3280
x = 0
y = 0.15

[State 3252, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3200,0
channel = 0

[State 3252, PlaySnd]
type = PlaySnd
TriggerAll = Anim = 3202
trigger1 = !Time
trigger2 = Time = 16
trigger3 = Time = 31
trigger4 = Time = 46
trigger5 = Time = 59
trigger6 = Time = 74
trigger7 = Time = 89
trigger8 = Time = 104
trigger9 = Time = 119
value = 1,10
volumescale = 90
channel = 5

[State 3252, Front]
type = Explod
trigger1 = !Time
trigger2 = Time = 16
trigger3 = Time = 31
trigger4 = Time = 46
trigger5 = Time = 59
trigger6 = Time = 74
trigger7 = Time = 89
trigger8 = Time = 104
trigger9 = Time = 119
scale = Const(Size.Xscale)/2,Const(Size.Yscale)/2
id = 13205
anim = 13205
pos = -6,-62
sprpriority = 5
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 3252, Back]
type = Explod
trigger1 = !Time
trigger2 = Time = 16
trigger3 = Time = 31
trigger4 = Time = 46
trigger5 = Time = 59
trigger6 = Time = 74
trigger7 = Time = 89
trigger8 = Time = 104
trigger9 = Time = 119
scale = Const(Size.Xscale)/2,Const(Size.Yscale)/2
id = 13207
anim = 13207
pos = -6,-62
sprpriority = -5
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 3252, Fatal Claw Projectile]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 3220
ID = 3220
name = "Fatal Claw Projectile"
posType = P1
ownPal = 1
size.xScale = .5
size.yScale = .5

[State 3252, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(49) >= 0
value = 3205
ctrl = 0

;========================<FATAL CLAW (AERIAL)>=============================
;Aerial Pose
[StateDef 3280]
type = A
physics = N
moveType = A
anim = 3230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 0
time = 1
value = SCA

[State 0, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3280, PosAdd]
type = PosAdd
trigger1 = !Time
x = 0
y = 0

[State 3280, ChangeState]
type = ChangeState
trigger1 = Time = 43
value = 3252
ctrl = 0

;========================<WEAPON X>=============================
;X-Pose
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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
trigger1 = AnimElemTime(9) < 0 || AnimElem = 9
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = p1
pos = 5, -47
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = !Time 
value = 3300,0
channel = 0

[State 3300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3301
ctrl = 0

;Run
[StateDef 3301]
type = S
physics = N
moveType = A
anim = 3301
ctrl = 0
velSet = 0,0
sprPriority = 1
poweradd = 0

[State 3301, VelSet]
type = VelSet
trigger1 = 1
x = Const(Velocity.Run.Fwd.X) * 2.5

[State 3301, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 3301, HitDef]
type = HitDef
trigger1 = AnimElemTime(3) >= 0
ID = 3301
attr = S, HT
hitFlag = M-
guardFlag = MA
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
ground.hitTime = 25
ground.slideTime = 25
guard.hitTime = 25
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -35
yAccel = 0.58
kill = 0
snap = 60,0

[State 3301, ChangeState]
type = ChangeState
trigger1 = NumTarget(3301)
trigger1 = MoveHit && Target, Alive
value = 3303

[State 3300, End]
type = ChangeState
trigger1 = MoveGuarded
value = 3302

[State 3300, End]
type = ChangeState
trigger1 = Time = 30
value = 3302

;Stop Running
[StateDef 3302]
type = S
physics = N
moveType = A
anim = 3302
ctrl = 0
velSet = 0,0
sprPriority = 1
poweradd = 0

[State 3302, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 3302, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3302, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3303]
type = S
physics = N
moveType = A
anim = 3303
ctrl = 0
velSet = 0,0
sprPriority = 1
poweradd = 0

[State 3303, Jump Sound]
type = PlaySND
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 37 || AnimElem = 49
value = 4,0
channel = 0

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 14 || AnimElem = 29 || AnimElem = 43
value = 4,1
channel = 0

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14 || AnimElem = 33 || AnimElem = 52
value = 4,2
channel = 0

[State 3303, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 26
stateType = A
physics = N

[State 3303, Dust Helper]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 8100
ID = 8100
name = "Combo Jump"
posType = P1
ownPal = 1

[State 3402, Width]
type = Width
trigger1 = AnimElem =1 && FrontEdgeBodyDist <= 130
edge = 130, 0
ignorehitpause = 1

[State 3402, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 
pos = 60,0
ignorehitpause = 1 

[State 3303, HitDef : Light Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
ID = 13301
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0,0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.41
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36):= -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Medium Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 8
ID = 13302
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.66
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Medium Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 14
ID = 13302
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.66
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Light Kick]
type = HitDef
;trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.41
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Jumping Light Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 30
ID = 13301
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -2.41
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 83), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Jumping Light Kick]
type = HitDef
;trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 34
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.41
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Jumping Medium Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 37
ID = 13302
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0,0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.66
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Jumping Medium Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 43
ID = 13302
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.66
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Jumping Medium Kick]
type = HitDef
;trigger1 = !var(16) && var(15) < 9
trigger1 = AnimElem = 48
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = 0, -7.73
ground.cornerPush.velOff = 0
guard.velocity = -3.66
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3303, HitDef : Jumping Heavy Punch]
type = HitDef
;trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElem = 52
ID = 13303
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.86
guard.cornerPush.velOff = 0
air.velocity = 0, -7.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
air.fall = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 7
envShake.ampl = 4
envShake.freq = 120
P2StateNo = 3350
kill = 0

[State 3303, Blood]
type = Helper
TriggerAll = var(1)
TriggerAll = !AnimElem = 28 || !AnimElem = 34
trigger1 = HitPauseTime = 4
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8050
ID = 8050
name = "Blood"
postype = p1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3303, Blood]
type = Helper
TriggerAll = var(1)
TriggerAll = !AnimElem = 48
trigger1 = HitPauseTime = 5
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

[State 3303, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = 6
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

[State 0, Gravity]
type = Gravity
trigger1 = AnimElemTime(57) >= 0

[State 3303, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3304
ctrl = 0

;Landing
[StateDef 3304]
type = S
physics = N
moveType = A
anim = 3304
ctrl = 0
velSet = 0,0
sprPriority = 1
poweradd = 0

[State 3304, Landing Dust Explod]
type = Explod
trigger1 = !AnimTime
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3304, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3305
ctrl = 0

;X Finisher
[StateDef 3305]
type = A
physics = N
moveType = A
anim = 3305
ctrl = 0
velSet = 0,0
sprPriority = 1
poweradd = 0

[State 3305, VelSet]
type = VelSet
trigger1 = !Time
y = -45
x = 50

[State 3305, PosAdd]
type = PosAdd
trigger1 = MoveHit
y = -1
x = 1
ignorehitpause = 1

[State 3305, VelSet]
type = VelSet
trigger1 = Time > 0 
y = -4
x = 7

[State 3305, ScreenBound: Y Only]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 4,4
channel = 0

[State 3202, Front]
type = Explod
trigger1 = !Time
scale = 1,1
id = 13305
anim = 13305
pos = -15,0
sprpriority = 5
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 3202, Back]
type = Explod
trigger1 = !Time
scale = 1,1
id = 13307
anim = 13307
pos = -15,0
sprpriority = -5
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3303, HitDef : X Finisher]
type = HitDef
;trigger1 = !var(16) && var(15) < 11
trigger1 = !Time
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 14
getpower = 0,0
givePower = 36, 36
pauseTime = 22, 22
guard.pauseTime = 22, 22
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -0.1, -4
ground.cornerPush.velOff = 0
guard.velocity = -4.3
guard.cornerPush.velOff = 0
air.velocity = -0.1, -4
air.cornerPush.velOff = 0
airguard.velocity = -4, -0.2
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
air.fall = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 28
envShake.ampl = 6
envShake.freq = 120

[State 3305, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = 22
trigger1 = MoveHit = 1 && NumTarget
helpertype = Normal
stateno = 8053
ID = 8050
name = "Blood"
postype = P1
pos = IfElse(P2Dist X < 0, 0, IfElse(P2Dist x < var(35), Ceil(P2Dist x), var(35))), var(36)
facing = IfElse((Target, Facing = Facing), -1, 1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3305, ChangeState]
type = ChangeState
trigger1 = Time = 10
value = 3205
ctrl = 0

;Target
[Statedef 3350]
type    = S
movetype = H
physics  = N
velset = 0,0

[State 3350, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3350, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 3350, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 3350, Freeze Anim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3350, StateTypeSet : Aerial]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
StateType = A

[State 3350, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3360

[State 3350, ForceFeedBack : Light]
type = ForceFeedback
trigger1 = Anim = 5000
trigger2 = Anim = 5010
persistent = 0
time = 6
waveform = Square

[State 3350, ForceFeedBack : Medium]
type = ForceFeedback
trigger1 = Anim = 5001
trigger2 = Anim = 5011
persistent = 0
time = 8
waveform = SineSquare
ampl = 110,-1,-.3

[State 3350, ForceFeedBack : Hard]
type = ForceFeedback
trigger1 = Anim = 5012
trigger2 = Anim = 5002
trigger3 = Anim = 5030
persistent = 0
time = 15
waveform = SineSquare
ampl = 140

; Hit Ground
[Statedef 3360]
type    = S
movetype= H
physics = N

[State 3360, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = GetHitVar(Fall.YVel) = 0
trigger1 = vel x > 1
x = 1

[State 3360, EnvShake]
type = FallEnvShake
trigger1 = !Time

[State 3360, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim != [5051,5059]) && (Anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (Anim % 10))
value = 5100

[State 3360, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [5051,5059]) || (Anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (Anim % 10))
value = 5100 + (Anim % 10)

[State 3360, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3360, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 3360, VelMul]
type = VelMul
trigger1 = !Time
x = 0.75

[State 3360, GameMakeAnim]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = sysvar(1) <= 10

[State 3360, PlaySND]
type = PlaySnd
trigger1 = Time = 1
value = F7, 2
volume = 50

[State 3360, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 3360, ChangeState]
type = ChangeState
trigger1 = Time >= 4
value = 3361

[State 3360, ForceFeedBack]
type = ForceFeedback
trigger1 = !Time
waveform = SineSquare
ampl = 128,-3,-.2,.005
time = 20

;Lift Up
[Statedef 3361]
type    = A
movetype= H
physics = N
ctrl = 0

[State 3361, ScreenBound]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3361, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5052)
value = 5052 

[State 3361, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = !SelfAnimExist(5052) && SelfAnimExist(5051)
value = 5051

[State 3361, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = !SelfAnimExist(5052) && !SelfAnimExist(5051)
value = 5050

[State 3361, VelAdd : Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 3361, Gravity]
type = Null;Gravity
trigger1 = 1

[State 3361, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 3361, PosAdd]
type = PosAdd
trigger1 = !Time
y = -15

[State 3361, SelfState 1]
type = SelfState
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5050

[State 3361, SelfState 2]
type = SelfState
trigger1 = !AnimTime
value = 5035

;========================<HEALING FACTOR X>=============================
[StateDef 3500]
type = S
physics = N
moveType = I
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 44

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-54
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, LifeAdd Var]
type = VarSet
trigger1 = AnimElemTime(8) = 0
var(48) = 200
ignoreHitPause = 1

[State 3500, LifeAdd Var]
type = VarSet
trigger1 = AnimElemTime(8) = 0
var(49) = 4
ignoreHitPause = 1

[State 3500, Voice]
type = PlaySND
trigger1 = AnimElem = 7
value = 4, 4
channel = 0

[State 3550, Voice]
type = PlaySND
trigger1 = AnimElem = 7
value = 3500, 10
channel = 1

[State 3500, LifeAdd]
type = LifeAdd
trigger1 = AnimElemTime(8) >= 0 && (var(49) < (var(48)))
value = var(49)

[State 3500, ChangeState]
type = ChangeState
trigger1 = Time = 101
value = 3501

[StateDef 3501]
type = S
physics = N
moveType = I
anim = 3501
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3500, ChangeState]
type = ChangeState
trigger1 = !AnimTime 
value = 0
ctrl = 1

;========================<HEALING FACTOR X>=============================
[StateDef 3550]
type = S
physics = N
moveType = I
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3550, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3550, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3550, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3550, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3550, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 44

[State 3550, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3550, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3550, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 0
time = 1
value = SCA

[State 3550, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-54
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3550, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 44
moveTime = 44
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3550, LifeAdd Var]
type = VarSet
trigger1 = AnimElemTime(8) = 0
var(48) = 250
ignoreHitPause = 1

[State 3550, LifeAdd Var]
type = VarSet
trigger1 = AnimElemTime(8) = 0
var(49) = 8
ignoreHitPause = 1

[State 3550, Voice]
type = PlaySND
trigger1 = AnimElem = 7
value = 4, 4
channel = 0

[State 3550, Voice]
type = PlaySND
trigger1 = AnimElem = 7
value = 3500, 10
channel = 1

[State 3550, LifeAdd]
type = LifeAdd
trigger1 = AnimElemTime(8) >= 0 && (var(49) < (var(48)))
value = var(49)

[State 3550, ChangeState]
type = ChangeState
trigger1 = Time = 101
value = 3501