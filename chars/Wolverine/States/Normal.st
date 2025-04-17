;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;===========<STANDING LIGHT PUNCH>==========
[StateDef 200]
type = S
physics = S
moveType = A
anim = 200
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,6
channel = 2

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givepower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -2.41, -7.50), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -2.41, -7.50)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36):= -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 200, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
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

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING MEDIUM PUNCH>==========
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,7
channel = 2

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 3
forceNoFall = !var(20) || ! var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 210, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 5, 10)
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

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING MEDIUM PUNCH>==========
[StateDef 215]
type = S
physics = S
moveType = A
anim = 215
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
facep2 = 1

[State 215, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 400
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 215, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,7
channel = 2

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 3
forceNoFall = !var(20) || !var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 215, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 5, 10)
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

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 215, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING HEAVY PUNCH>==========
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,8
channel = 2

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 10220
ID = 10220
pos = 0,0
postype = P1
scale = 0.6, 1.00
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 220, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 220, StateTypeSet: Standing, Physics: Standing]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = S
physics = S

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -8.34, -5.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, Blood]
TriggerAll = var(1)
type = Helper
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

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING LIGHT KICK>==========
[StateDef 230]
type = S
physics = S
moveType = A
anim = 230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,3

[State 230, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 3
forceNoFall = !var(20) || !var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING MEDIUM KICK>==========
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 240, PosAdd]
type = PosAdd
trigger1 = !Time
y = 0

[State 240, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A

[State 240, ChangeAnim]
type = VelSet
trigger1 = AnimElem = 2
y = -2.56
x = 1.23

[State 240, Gravity]
type = Gravity
trigger1 = AnimElemTime(3) > 0

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = (ifElse(!var(13), 144, 72) * !var(20)) || (ifElse(!var(13), 144, 72) * !var(14)), (36* !var(20)) || (36 * !var(14))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 240, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<STANDING MEDIUM KICK>==========
[StateDef 245]
type = S
physics = S
moveType = A
anim = 245
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 245, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 245, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,4
channel = 1

[State 245, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = (ifElse(!var(13), 144, 72) * !var(20)) || (ifElse(!var(13), 144, 72) * !var(14)), (36* !var(20)) || (36 * !var(14))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -5.05, -9.03), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -5.05, -9.03)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 123), var(36) := -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 245, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
movetype = I

[State 245, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING HEAVY KICK>==========
[StateDef 250]
type = S
physics = S
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 250, PosAdd]
type = PosAdd
trigger1 = !Time
x = 4

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 3
forceNoFall = !var(20) || !var(14)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -133
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<CROUCHING LIGHT PUNCH>==========
[StateDef 400]
type = C
physics = C
moveType = A
anim = 400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,6
channel = 2

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 400, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
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

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING MEDIUM PUNCH>==========
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,7
channel = 2

[State 410, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 2
anim = 10410
ID = 10410
pos = 10,0
postype = P1
facing = 1
vfacing = 1
pausemovetime = 0
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 3
forceNoFall = !var(20) || !var(14)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), 1.66, 2.51), 0;-4.87
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 410, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 5, 10)
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

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING HEAVY PUNCH>==========
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,8
channel = 2

[State 420, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2 || AnimElem = 3
x = 23

[State 420, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 || AnimElem = 5
x = 10

[State 420, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 4

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 10420
ID = 10420
pos = 10,0
postype = P1
facing = 1
vfacing = 1
pausemovetime = 0
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 7
forceNoFall = !var(20) || !var(14)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 420, Blood]
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

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<SLIDE SLASH>==========
[StateDef 425]
type = C
physics = C
moveType = A
anim = 425
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 425, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 425, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 101,0
channel = 1

[State 425, VelSet]
type = VelSet
trigger1 = AnimElemTime (2) >= 0
x = 9.12

[State 425, VelSet]
type = VelSet
trigger1 = AnimElemTime (3) >= 5
x = 0.87

[State 425, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 425, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 2

[State 425, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 4

[State 425, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(8) < 0
value = 0

[State 425, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 425, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1, -4.52
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -15
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 425, Blood]
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

[State 425, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 425, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING LIGHT KICK>==========
[StateDef 430]
type = C
physics = C
moveType = A
anim = 430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givepower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -7.49, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.49
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 87), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd= -255, -255, -255, 48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING MEDIUM KICK>==========
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 5
forceNoFall = !var(20) || !var(14)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse((var(20) || var(14)), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -10
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING HEAVY KICK>==========
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))
faceP2 = 1

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 3.35

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 1

[State 450, VelSet]
type = VelSet
trigger1 = AnimElemTime (5) >= 0
x = 5.25

[State 450, VelSet]
type = VelSet
trigger1 = AnimElemTime (6) >= 4
x = 1.25

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
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
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
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
fall.recover = 1
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

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<JUMPING LIGHT PUNCH>==========
[StateDef 600]
type = A
physics = N
moveType = A
anim = 600
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,6
channel = 2

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 83), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 600, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 4, 8)
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

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING MEDIUM PUNCH>==========
[StateDef 610]
type = A
physics  = N
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 610, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,7
channel = 2

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 610, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 5, 10)
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

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING MEDIUM PUNCH>==========
[StateDef 615]
type = A
physics  = N
moveType = A
anim = 615
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 615, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 615, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 615, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,7
channel = 2

[State 615, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 74), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 615, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = HitPauseTime = IfElse((var(20) || var(14)), 5, 10)
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

[State 615, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 615, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 615, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING HEAVY PUNCH>==========
[StateDef 620]
type = A
physics = N
moveType = A
anim = 620
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 620, Voice]
type = PlaySnd
trigger1 = (AnimElem = 2) && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,8
channel = 2

[State 620, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 10620
ID = 10620
pos = 0,0
postype = P1
bindtime = 20
facing = 1
vfacing = 1
sprpriority = 2
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 0,0,0
ownpal = 1

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
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
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -4.46, 2.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
air.fall = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, Blood]
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

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING LIGHT KICK>==========
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
guard.pauseTime = ifElse((var(20) || var(14)), 4, 8), ifElse((var(20) || var(14)), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING MEDIUM KICK>==========
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 640, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 640, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 3
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING DIVE KICK>==========
[StateDef 645]
type = A
physics = N
moveType = A
anim = 645
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 645, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value= 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 645, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 645, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.45
y = 7.50

[State 645, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
attr = A, NA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 144, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -7, 0
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -3, 4
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := 0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 645, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING HEAVY KICK>==========
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 650, Voice]
type = PlaySnd
trigger1 = Time = 8 && Random < 800
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6;!(AnimElemTime(1) % 9)
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
forceNoFall = !var(20) || !var(14)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
guard.pauseTime = ifElse((var(20) || var(14)), 6, 12), ifElse((var(20) || var(14)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse((var(20) || var(14)), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse((var(20) || var(14)), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 107), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING DIVE KICK>==========
[StateDef 655]
type = A
physics = N
moveType = A
anim = 655
ctrl = 0
sprPriority = 1
powerAdd = 18 * (!var(14) && !var(20))

[State 655, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 655, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 655, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = 7.50

[State 655, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(20) || var(14)))
trigger1 = AnimElem = 2
attr = A, NA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 216, 72) * (!var(14) && !var(20)), 36 * (!var(14) && !var(20))
givePower = 36, 36
pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
guard.pauseTime = ifElse((var(20) || var(14)), 5, 10), ifElse((var(20) || var(14)), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -7, 0
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -3, -3
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := 0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 655, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<THROW ATTEMPT>==========
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = ifElse(command = "holdback", 810, 819)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 3 && var(10)
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1stateno = ifElse(command = "holdback", 830, 820)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800,0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<THROW SWITCHING SIDES>==========
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 3

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 40,0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 0
value = ifElse(var(10), 820, 810)


;===========<THROW SWITCHING SIDES (TARGET)>==========
[StateDef 806]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1

;===========<CHOP>==========
;Credit goes to KoldSkool & Sander7113 for the code
[StateDef 810]
type = S
physics = S
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, Width]
type = Width
trigger1 = !Time
edge = 90, 20

[State 810, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = 1

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, TargetBind1]
type = TargetBind
trigger1 = Time < 1
pos = 40, 0
time = 1

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2, <0
trigger1 = P2Dist X >= -25
x = 8

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2, > 0 && AnimElem = 3, < 0
trigger1 = Pos Y > (Target, Const(Size.Mid.Pos.Y) + 18)
y = -4

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 811

;Chop
[StateDef 811]
type = A
physics = N
moveType = A
anim = 811
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 811, Turn]
type = Turn
trigger1 = PrevStateNo = 819 && !Time

[State 811, Timer Start]
type = VarSet
trigger1 = !Time
var(53) = 90

[State 811, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(53) = 0

[State 811, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(53) = -1

[State 811, Timer]
type = VarAdd
triggerAll = NumTarget && HitCount
trigger1 = Target, command = "x" || Target, command = "y" || Target, command = "z"
trigger2 = Target, command = "a" || Target, command = "b" || Target, command = "c"
trigger3 = Target, command = "up" || Target, command= "down" || Target, command = "back" || Target, command = "fwd"
var(53) = -1

[State 811, Mashing]
type = VarSet
trigger1 = !Time
var(52) = 0

[State 811, Mashing]
type = VarSet
trigger1 = !Time
var(51) = 0

[State 811, Mashing]
type = VarSet
triggerAll = var(52) = 0
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel && Random < 800
var(52) = 2

[State 811, Mashing Increment]
type  = VarAdd
trigger1 = var(52) = 2
var(51) = 1

[State 811, Mashing Decrement]
type = VarAdd
trigger1 = var(52) > 0
var(52) = -1

[State 811, Anim Skip]
type = ChangeAnim
triggerall = var(53) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(4) < 0
trigger1 = AnimElemTime(AnimElemNo(0) + 1 ) >= -var(51)
trigger1 = 1 || var(51) := (var(51) + AnimElemTime(AnimElemNo(0) + 1))
value = 811
elem = AnimElemNo(0) + 1

[State 811, Anim Skip]
type = ChangeAnim
triggerAll = var(53) > 0
trigger1 = AnimElemTime(4) > 0
trigger1 = AnimElemTime(4)>= (8 - var(51))
trigger1 = 1 || var(51) := (var(51) + 8 - AnimElemTime(3))
trigger2 = !AnimTime
value = 811
elem = 1

[State 820, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 64, 64, 64

[State 811, Width]
type = Width
trigger1 = !Time
edge = 32,0
ignoreHitPause = 1

[State 811, TargetState]
type = TargetState
triggerAll = PrevStateNo = 819
trigger1 = !Time && NumTarget
value = 816

[State 811, TargetState]
type = TargetState
triggerAll = PrevStateNo = 810
trigger1 = !Time && NumTarget
value = 816

[State 811, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 811, Damage]
type = TargetLifeAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
value = floor(ifElse(10 * fvar(11) < 7, -7, -10 * fvar(11)))

[State 811, TargetPowerAdd]
type = TargetPowerAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
value = 36

[State 811, Power]
type = PowerAdd
TriggerAll = NumTarget
trigger1 = (AnimElem = 2 || AnimElem = 4) && !var(20)
value = 36

[State 811, HitAdd]
type = HitAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
value = 1

[State 811, Hit Count Increment]
type = VarAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
var(13) = 1

[State 811, Juggle Points Increment]
type = VarAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
var(15) = 1
ignoreHitPause = 1

[State 811, Juggle Flag Set]
type = VarSet
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
var(16) = 1
ignoreHitPause = 1

[State 811, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4 , 0
channel = 0

[State 811, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4 , 1
channel = 0

[State 811, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 1 || AnimElem = 3
value = 1,2
channel = 4

[State 811, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
value = 2,11
channel = 5

[State 811, Hit Spark]
type = Helper
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4
helperType = Normal
stateNo = 8015
ID = 8000
name = "Spark"
posType = P2
pos = (Target, Const(Size.Head.Pos.X) + 5), (Target, Const(Size.Mid.Pos.Y) - 15)
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = AnimElem = 2 || AnimElem = 4
trigger1 = NumTarget
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

[State 811, End]
type = ChangeState
trigger1 = var(53) <= 0
trigger1 = AnimElemNo(0) + 1
trigger2 = NumTarget
trigger2 = !(Target, Alive) && AnimElemNo(0) + 1
trigger3 = Time >= 180
value = 813
ctrl = 1

;Launch
[StateDef 813]
type = A
physics = N
moveType = A
anim = 813
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 813, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 817

[State 813, Width]
type = Width
trigger1 = AnimElemTime(7) < 0
edge = 50,50
ignoreHitPause = 1

[State 813, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 813, PosSet]
type = PosSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
y = 0

[State 813, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = -25

[State 813, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = -45

[State 813, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2, 0
y = (Target, Const(Size.Head.Pos.Y) + 20)

[State 813, Bind1]
type = TargetBind
trigger1 = Animelem = 4
pos = 20, -70
time = 1

[State 813, Bind2]
type = TargetBind
trigger1 = Animelem = 5
pos = 5, -80
time = 1

[State 813, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(25 * fvar(11) < 7, -7, -25 * fvar(11)))

[State 813, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 813, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 6 && !var(20)
value = 72

[State 813, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,4
channel = 0

[State 813, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 2
value = 1,5
channel = 4

[State 813, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<CHOP (TARGET)>==========
;Being Thrown
[StateDef 815]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 0, Turn]
type = Turn
trigger1 = !Time
trigger1 = PrevStateNo!=806
;ignorehitpause = 
;persistent = 


[State 815, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

;Being Thrown
[StateDef 816]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 816, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 816

[State 816, Width]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 816, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

;Being Thrown
[StateDef 817]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 817, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
statetype = A

[State 817, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 817

[State 817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 817, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 818
ctrl = 0

;After Throw
[StateDef 818]
type = A
physics = N
movetype = H
ctrl = 0

[State 818, VelSet]
type = VelSet
trigger1 = !Time
x = 6
y = -4

[State 818, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 5050

[State 818, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 818, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.49

[State 818, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 818, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100

;===========<CHOP>==========
;Credit goes to KoldSkool & Sander7113 for the code
[StateDef 819]
type = S
physics = S
moveType = A
anim = 805
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 819, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 819, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 819, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 819, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 819, Width]
type = Width
trigger1 = !Time
edge = 90, 20

[State 819, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 819, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 819, TargetBind1]
type = TargetBind
trigger1 = Time < 1
pos = 40, 0
time = 1

[State 819, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2, <0
trigger1 = P2Dist X >= 25
x = 8

[State 819, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2, > 0 && AnimElem = 3, < 0
trigger1 = Pos Y > (Target, Const(Size.Mid.Pos.Y) + 18)
y = -4

[State 819, End]
type = ChangeState
trigger1 = !AnimTime
value = 811
ctrl = 1

;===========<BACK RUSH>==========
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Throw]
type = TargetFacing
trigger1 = AnimElem = 6
trigger1 = Target, Anim = 825
value = 1

[State 820, Width]
type = Width
trigger1 = !Time
edge = 80, 15
ignoreHitPause = 1

[State 820, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, TargetBind1]
type = TargetBind
trigger1 = Time < 1
pos = 50, 0
time = 1

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 821

;Pounce
[Statedef 821] 
type = A
physics = N
movetype = A
anim = 821
ctrl = 0
velSet = 0,0
sprPriority = 2

[State 821, Turn]
type = Turn
TriggerAll = PrevStateNo = 830
trigger1 = AnimElemTime(2) = 0

[State 821, TargetFacing]
type = TargetFacing
TriggerAll = PrevStateNo = 830
trigger1 = AnimElemTime(2) = 0
value = -1

[State 821, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 821, VelSet]
type = VelSet
trigger1 = P2Dist X > 10
x = 4

[State 821, VelSet]
type = VelSet
trigger1 = P2Dist X <= 10
x = .05

[State 821, VelSet]
type = VelSet
trigger1 = !Time
y = -5

[State 821, VelAdd : Gravity]
type = VelAdd
trigger1 = Time > 0
y = .45

[State 821, ChangeState]
type = ChangeState
Trigger1 = Pos Y >= -10 && Vel Y > 0
value = 822
ctrl = 0

;Dice N' Slice
[Statedef 822] 
type = S
physics = N
movetype = A
anim = 822
ctrl = 0
velSet = 0,0
sprPriority = 2

[State 822, TargetState]
type = TargetState
Trigger1 = !Time
value = 827

[State 822, Timer Start]
type = VarSet
trigger1 = !Time
var(53) = 80

[State 822, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(53) = 0

[State 822, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(53) = -1

[State 822, Timer]
type = VarAdd
triggerAll = NumTarget && HitCount
trigger1 = Target, command = "x" || Target, command = "y" || Target, command = "z"
trigger2 = Target, command = "a" || Target, command = "b" || Target, command = "c"
trigger3 = Target, command = "up" || Target, command= "down" || Target, command = "back" || Target, command = "fwd"
var(53) = -1

[State 822, Mashing]
type = VarSet
trigger1 = !Time
var(52) = 0

[State 822, Mashing]
type = VarSet
trigger1 = !Time
var(51) = 0

[State 822, Mashing]
type = VarSet
triggerAll = var(52) = 0
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel && Random < 800
var(52) = 2

[State 822, Mashing Increment]
type  = VarAdd
trigger1 = var(52) = 2
var(51) = 1

[State 822, Mashing Decrement]
type = VarAdd
trigger1 = var(52) > 0
var(52) = -1

[State 822, Anim Skip]
type = ChangeAnim
triggerall = var(53) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(4) < 0
trigger1 = AnimElemTime(AnimElemNo(0) + 1 ) >= -var(51)
trigger1 = 1 || var(51) := (var(51) + AnimElemTime(AnimElemNo(0) + 1))
value = 822
elem = AnimElemNo(0) + 1

[State 822, Anim Skip]
type = ChangeAnim
triggerAll = var(53) > 0
trigger1 = AnimElemTime(4) > 0
trigger1 = AnimElemTime(4)>= (8 - var(51))
trigger1 = 1 || var(51) := (var(51) + 8 - AnimElemTime(3))
trigger2 = !AnimTime
value = 822
elem = 1

[State 822, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 64, 64, 64

[State 822, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 822, PosSet]
type = PosSet
trigger1 = !Time
y = -7

[State 822, Damage]
type = TargetLifeAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
value = floor(ifElse(12 * fvar(11) < 7, -7, -12 * fvar(11)))

[State 822, TargetPowerAdd]
type = TargetPowerAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
value = 36

[State 822, Power]
type = PowerAdd
TriggerAll = NumTarget
trigger1 = (AnimElem = 2 || AnimElem = 5) && !var(20)
value = 36

[State 822, HitAdd]
type = HitAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
value = 1

[State 822, VarAdd]
type = VarAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
var(13) = 1

[State 822, Juggle]
type = VarAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
var(15) = 1
ignoreHitPause = 1

[State 822, Juggle]
type = VarSet
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
var(16) = 1
ignoreHitPause = 1

[State 822, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4 , 0
channel = 0

[State 822, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4 , 1
channel = 0

[State 822, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 1 || AnimElem = 4
value = 1, 2
channel = 4

[State 822, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
value = 2,11
channel = 5

[State 822, Hit Spark]
type = Helper
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 5
helperType = Normal
stateNo = 8015
ID = 8000
name = "Spark"
posType = P2
pos = (Target, Const(Size.Head.Pos.X) - 40), -8
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Blood]
type = Helper
TriggerAll = var(1)
trigger1 = AnimElem = 2 || AnimElem = 5
trigger1 = NumTarget
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

[State 822, End]
type = ChangeState
trigger1 = var(53) <= 0
trigger1 = AnimElemNo(0) + 1
trigger2 = NumTarget
trigger2 = !(Target, Alive) && AnimElemNo(0) + 1
trigger3 = Time >= 180
value = 823
ctrl = 0

;Last Kick
[Statedef 823] 
type = S
physics = N
movetype = A
anim = 823
velset = 0,0
sprpriority = 2

[State 823, ChangeAnim]
type = ChangeAnim
trigger1 = !Time 
value = 823
ignorehitpause = 1

[State 823, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 823, PosAdd]
type = PosAdd
trigger1 =  !Time
x = -5

[State 823, TargetState]
type = TargetState
Trigger1 = !Time
value = 828

[State 823, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 1
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))

[State 823, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 1
value = 36

[State 823, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 1 && !var(20)
value = 36

[State 823, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 1
value = 1

[State 823, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(13) = 1

[State 823, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(15) = 1
ignoreHitPause = 1
persistent = 1

[State 823, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 1
var(16) = 1
ignoreHitPause = 1
persistent = 1

[State 823, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4 , 3
channel = 0

[State 823, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 1
value = 1, 5
channel = 4

[State 823, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 1
value = 2, 4
channel = 5

[State 823, Hit Spark]
type = Helper
TriggerAll = NumTarget
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8011
ID = 8000
name = "Spark"
posType = P2
pos = (Target, Const(Size.Head.Pos.X) - 22), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 823, ChangeState]
type = ChangeState
Trigger1 = !AnimTime
value = 824
ctrl = 0

;Dash Back
[Statedef 824] 
type = A
physics = A
movetype = I
anim = 824
sprpriority = 2
poweradd = 0

[State 824, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 824, VelSet]
type = VelSet
trigger1 = !Time
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 824, VelMul]
type = VelMul
trigger1 = AnimElemTime(1) > 0
x = 0.98

[State 824, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.65

[State 824, End]
type = ChangeState
trigger1 = AnimElemTime(1) >= 0
trigger1 = pos y > -vel y
value = 106

;===========<RIDE N' CHOP (TARGET)>==========
;Tripped
[Statedef 825]
type    = A
physics = N
movetype= H
ctrl = 0

[State 825, ChangeAnim]
type = ChangeAnim
Trigger1 = !Time
trigger1 = SelfAnimExist(5070)
value = 5070

[State 825, ChangeAnim]
type = ChangeAnim
Trigger1 = !Time
trigger1 = !SelfAnimExist(5070)
value = 5030

[State 825, Width]
type = Width
trigger1 = Time >= 0
edge = 0,0

[State 825, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

[State 825, Velset]
type = VelSet
trigger1 = animelem = 1, = 5
x = 0
y = -6

[State 825, VelAdd: Gravity]
type = VelAdd
trigger1 = AnimElem = 1, > 4
y = .45

[State 825, ChangeState]
type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0 
value = 826
ctrl = 0

;Hit ground
[Statedef 826]
type = L
physics = N
movetype = H

[State 826, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 826, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 5100

[State 826, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 826, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 826, VelMul]
type = VelMul
trigger1 = !Time
x = 0.75 

[State 826, ChangeAnim2]
type = ChangeAnim2
trigger1 = Anim = 5100 && !AnimTime
value = 5110

[State 826, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

;Jabbed and Stabbed
[StateDef 827]
type    = L
physics = N
movetype= H 
velset = 0,0
ctrl = 0

[State 827, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 827

[State 827, Width]
type = Width
trigger1 = Time >= 0
edge = 0,0

[State 827, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

;Kicked
[Statedef 828]
type    = L
physics = N
movetype= H
ctrl = 0

[State 828, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 828

[State 828, Width]
type = Width
trigger1 = Time >= 0
edge = 0,0

[State 828, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 0

[State 828, EnvShake]
type = EnvShake
trigger1 = Time = 1
time = 12
ampl = -5

[State 828, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 829
ctrl = 0

;Bounce Into Air
[Statedef 829]
type    = L
movetype= H
physics = N

[State 829, NotHitBy]
type = NotHitBy
trigger1 = Time >= 2 
value = SCA
time = 1
ignorehitpause =  1

[State 829, ChangeAnim]
type = ChangeAnim
triggerall = !Time
trigger1 = Anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 829, ChangeAnim]
type = ChangeAnim
triggerall = !Time
trigger1 = Anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (Anim % 10)

[State 829, PosSet]
type = PosSet
trigger1 = !Time
y = 20

[State 829, VelSet]
type = VelSet
trigger1 = !Time
x = -4
y = -7

[State 829, VelAdd]
type = VelAdd
trigger1 = 1
y = .4

[State 829, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 829, HitFallSet]
type = HitFallSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 0

[State 829, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5100

;===========<BACK RUSH>==========
[Statedef 830]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Throw]
type = TargetFacing
trigger1 = AnimElemTime(1) = 0
value = -1

[State 820, Width]
type = Width
trigger1 = !Time
edge = 50, 10
ignoreHitPause = 1

[State 820, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, TargetBind1]
type = TargetBind
trigger1 = Time < 1
pos = 50, 0
time = 1

[State 821, TargetBind]
type = TargetBind
trigger1 = Time >= 1 && Time < 2
pos = 40,0
time = 1

[State 821, TargetBind]
type = TargetBind
trigger1 = Time >= 2 && Time < 3
pos = 30,0
time = 1

[State 821, TargetBind]
type = TargetBind
trigger1 = Time >= 3 && Time < 4
pos = 20,0
time = 1

[State 821, TargetBind]
type = TargetBind
trigger1 = Time >= 4 && Time < 5
pos = -10,0
time = 1

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 2
value = floor(ifElse(25 * fvar(11) < 7, -7, -25 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 2
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 2 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 2
value = 1

[State 820, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 2
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 2
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 2
var(16) = 1
ignoreHitPause = 1

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 821

;2P Throw - Being Thrown
[StateDef 831]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 831, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 818

[State 831, Width]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 831, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

;===========<AIR THROW ATTEMPT>==========
[StateDef 850]
type = A
physics = N
moveType = A
anim = 850
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 850, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 850

[State 850, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 850, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 850, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 850, HitDef: PP Throw]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger1 = !var(38)
attr = A,NT
hitFlag = AF
priority = 1,Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 860

[State 850, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0
channel = 0

[State 850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,0
channel = 1

[State 850, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 850, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 850, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<AERIAL CHOP>==========
[StateDef 860]
type = A
physics = N
moveType = A
anim = 860
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 860, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 860, PosAdd]
type = PosAdd
trigger1 = !Time
y = -41

[State 860, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 892

[State 860, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 860, Turn]
type = Turn
triggerAll = !Time
trigger1 = !AILevel && command = "holdback"
trigger2 = AILevel && BackEdgeDist < FrontEdgeDist

[State 860, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElemTime(11) < 0
value = 865

[State 860, TargetFacing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 860, Width]
type = Width
trigger1 = 1
edge = 35,0

[State 860, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(11) < 0
pos = ceil(27 * const(size.xScale)), ceil(32 * const(size.yScale))

[State 860, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && (AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8)
value = floor(ifElse(26 * fvar(11) < 7, -7, -26 * fvar(11)))
kill = 0

[State 860, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 11
value = floor(ifElse(30 * fvar(11) < 7, -7, -30 * fvar(11)))
kill = 1

[State 822, TargetPowerAdd]
type = TargetPowerAdd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8
value = 36

[State 822, Power]
type = PowerAdd
TriggerAll = NumTarget
trigger1 = (AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8) && !var(20)
value = 36

[State 860, Voice]
type = PlaySnd
trigger1 = !Time
value = 860,0
channel = 0

[State 860, VelAdd]
type = VelAdd
trigger1= AnimElemTime(12) >= 0
y = 0.55

[State 860, HitAdd]
type = HitAdd
trigger1 = NumTarget && (AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 11)
value = 1

[State 860, HitCount]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 11)
var(13) = 1

[State 860, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(15) = 1
ignoreHitPause = 1

[State 860, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 11
var(16) = 1
ignoreHitPause = 1

[State 860, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 11;Time(11) >= 0
value = 866

[State 860, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 5
value = 4 , 0
channel = 0

[State 860, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7
value = 4 , 1
channel = 0

[State 860, Voice]
type = PlaySnd
trigger1 = AnimElem = 11
value = 4 , 4
channel = 0

[State 860, Woosh Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 5 || AnimElem = 7
value = 1, 2
channel = 4

[State 860, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8
value = 2,11
channel = 5

[State 860, Woosh Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 10
value = 1, 5
channel = 4

[State 860, Hit Sound]
type = PlaySnd
TriggerAll = NumTarget
trigger1 = AnimElem = 10
value = 2, 4
channel = 5

[State 860, Slash Hit Sparks]
type = Helper
TriggerAll = NumTarget
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8
helperType = Normal
stateNo = 8015
ID = 8000
name = "Spark"
posType = P1
pos = ceil(22 * const(size.xScale)), ceil(-5 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 860, Kick Hit Sparks]
type = Helper
TriggerAll = NumTarget
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8011
ID = 8000
name = "Spark"
posType = P1
pos = ceil(12 * const(size.xScale)), ceil(-5 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 860, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<AERIAL SLICING (TARGET)>==========
;In Air
[StateDef 865]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 865, Turn]
type = Turn
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 865, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 865

[State 865, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

;Finish
[StateDef 866]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -6.75, 4.2
sprPriority = 0

[State 865, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 866

[State 866, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 866, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5

[State 866, EnvShake]
type = EnvShake
trigger1 = Pos Y + Vel Y >= 0
time = 14
ampl = -4
freq = 120

[State 866, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 866, PosSet]
type = PosSet
trigger1 = Pos Y + Vel Y >= 0
y = 0

[State 866, End]
type = SelfState
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;===========<THROW ESCAPED>==========
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 594,0
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1


;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

;===========<THROW ESCAPE MIDAIR>==========
[StateDef 892]
type = A
physics = N
moveType = I
anim = 892
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 892, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 48, 0

[State 892, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 897

[State 892, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 892, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 892, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 892, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 892, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 892, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 892, VelAdd]
type = VelAdd
trigger1 = Time > 18
y = 0.5

[State 892, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 892, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 892, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
posType = P1
pos = 24,-64
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 892, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;Target Escape
[StateDef 897]
type = A
physics = N
moveType = I
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 152

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 18
value = 142

[State 897, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 897, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 897, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 897, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 897, VelAdd]
type = VelAdd
trigger1 = Time >= 18
y = 0.5

[State 897, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52
