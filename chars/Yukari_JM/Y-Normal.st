; _____________________________________
;| Yukari Tanizaki from Azumanga Daioh |
;|             by Wickydoo             |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<NORMAL STATES>================

;------------------------------------------------------------------------
; Stand Light Attack
[Statedef 200]
anim = 200
ctrl = 0
movetype = A
type = S
juggle = ifelse((var(36)&floor(exp(0*ln(2)) + 0.5)),2,0)
physics = S
velset = 0,0
sprpriority = 1
poweradd = 0
facep2=1

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.925
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = AnimElem = 2
attr = S, NA
damage = 23, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = S15000
guard.sparkno = S15010
sparkxy = -10, -24
hitsound = S10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2
air.type = Low
air.velocity = -1.4,-3
air.hittime = 8
getpower = ceil(50*fvar(10)),25
givepower = 25,25
yaccel = .5
forcenofall = 1
p2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 200

[State 200, Light Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Attack
[Statedef 210]
anim = 210
ctrl = 0
movetype = A
type = S
juggle = ifelse((var(36)&floor(exp(1*ln(2)) + 0.5)),2,0)
physics = S
velset = 0,0
sprpriority = 1
poweradd = ceil(20*fvar(10))
facep2=1

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.875
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, Voice]
type = playsnd
trigger1 = animelem = 1
value = 200,ifelse(random<500,0,1)
channel = 0

[State 210, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = animelem = 4
attr = S, NA
damage = 45, 0
animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = S15001
guard.sparkno = S15010
sparkxy = -10, -85
hitsound = S10100, 1
guardsound = S10140, 0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
guard.hittime = 10
guard.hittime = 10
ground.velocity = -4
air.type = Low
air.hittime = 14
air.velocity = -1.4,-3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = ceil(70*fvar(10)),35
givepower = 25,25
yaccel = .5
p2facing = 1
id = 200
forcenofall = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
movetype = I

[State 210, Medium Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 1

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Attack Setup (No armor)
[Statedef 220]
type    = S
movetype= A
physics = S
poweradd = ceil(25*fvar(10))
ctrl = 0
velset = 0,0
sprpriority = 1
facep2=1
juggle = ifelse((var(36)&floor(exp(2*ln(2)) + 0.5)),2,0)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 220+0*floor(var(10):=1)

[State 220, Charge Me]
type = varset
trigger1 = command != "holdz"
var(10) = 0

[State 220, CA]
type = changeanim
trigger1 = anim = 220
trigger1 = var(10)=1
trigger1 = animelemtime(3)=0
value = 221
elem = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 221
value = S10100,7

[State 0, PalFX]
type = PalFX
trigger1 = anim = 221
time = 3
add = 256,0,0
mul = 256,256,256 

[State 0, Explod]
type = Explod
trigger1 = anim = 221
anim = 1025
ID = 1000
pos = -5,-75
postype = p1
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5


[State 220, CS]
type = changestate
trigger1 = anim = 221
value = 221

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.825
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
movetype = I

[State 220, Voice]
type = playsnd
trigger1 = animelem = 4
value = 200,ifelse(random<500,0,2)
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = 10

[State 220, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = animelem = 4
attr = S, NA
animtype  = Hard
damage    = 60, 0
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = S15002
guard.sparkno = S15010
sparkxy = -10,-45
hitsound = S10100, 2
guardsound = S10140, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
guard.hittime = 15
ground.velocity = -7
air.type = Low
air.hittime = 15
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower= ceil(90*fvar(10)),45
givepower = 45,45
yaccel = .5
p2facing = 1
id = 200
forcenofall = 1

[State 220, Hard Swing]
type = PlaySnd
trigger1 = animelem = 4
value = 300, 2

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Attack CHARGING
[Statedef 221]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
sprpriority = 1
movehitpersist=1
hitdefpersist=1

[State 0, HitOverride]
type = HitOverride
trigger1 = prevstateno != 225 && animelemtime(18)<0
attr = SCA,NA,NP,SA,SP
slot = 0
stateno = 225
time = 1
forceair = 0


[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.75
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 22
movetype = I

[State 220, Voice]
type = playsnd
trigger1 = animelem = 21
value = 200,ifelse(random<500,0,2)
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 21
x = 20

[State 220, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = animelem = 21
attr = S, NA
animtype  = Hard
damage    = 70, 0
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = S15002
guard.sparkno = S15010
sparkxy = -10,-45
hitsound = S10100, 2
guardsound = S10140, 0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 14
guard.hittime = 14
ground.velocity = -7
air.type = Low
air.hittime = 15
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower= ceil(90*fvar(10)),45
givepower = 45,45
yaccel = .5
p2facing = 1
id = 200
forcenofall = 1

[State 220, Hard Swing]
type = PlaySnd
trigger1 = animelem = 21
value = 300, 2

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Armor for C
[Statedef 225]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = !alive
value = 5020


[State 0, PalFXWiz]
type = PalFX
trigger1 = time%2 = 0 && time < 4
time = 1
add = 128,0,0
mul = 256,256,256

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = anim
elem = animelemno(0)

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 221
ctrl = 0

;---------------------------------------------------------------------------
; F+X
[Statedef 230]
type    = S
movetype= A
physics = S
poweradd = ceil(20*fvar(10))
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 1
facep2=1
juggle = ifelse((var(36)&floor(exp(9*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.85
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(9*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 220, Voice]
type = playsnd
trigger1 = animelem = 3
value = 200,ifelse(random<500,0,2)
channel = 0

[State 220, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = animelem = 3
attr = S, SA
animtype  = Hard
damage    = 45, 0
guardflag = H
hitflag = MAFD
priority = 4,Hit
pausetime = 12,12
sparkno = S15003
guard.sparkno = S15011
sparkxy = -10,-45
hitsound = S10100, 2
guardsound = S10140, 0
ground.type = High
ground.slidetime = 24
ground.hittime  = 24
guard.hittime = 16
guard.hittime = 16
down.hittime = 24
ground.velocity = -4
down.velocity = -4.5,-2.5
air.type = Low
air.hittime = 19
air.velocity = -4.5,-2.5
getpower= ceil(75*fvar(10)),35
givepower = 45,35
yaccel = .5
p2facing = 1
id = 230
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, Hard Swing]
type = PlaySnd
trigger1 = animelem = 3
value = 300, 2

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; GUARD CANCEL
[StateDef 4450]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 220
poweradd = -500
sprpriority = 2

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(2)>0
var(2) = -30

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.85
ignorehitpause = 1
persistent = 0

[State 1000, Portrait Helper]
type = Helper
trigger1 = MoveHit = 1 && HitPauseTime = 10
helpertype = normal
name = "Slowdown"
ID = 6750
stateno = 6750
pos = 0,0
facing = 1
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6)<0
value = SCA

[State 4450, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 70
animtype = Hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 10, 10
fall=1
fall.recover=0
sparkno = S15004
guard.sparkno = S15011
sparkxy = -10,-70
guardsound = S10140, 0
hitsound = S50, 1
guardsound = 6, 0
ground.type = High
ground.velocity = -4.5,-4.3
airguard.velocity = -1.9,-4.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID=4450
yaccel=.5
getpower = 0,0
givepower = 50,50
p2facing = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
movetype = I

[State 220, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 2

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 2
TimeGap  = 1
FrameGap = 3
length = 35
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .8,.8,.8
trans = addalpha
alpha = 96,256

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(6)<= 0
time = 2

[State 4450, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;Crouch Light Attack
[Statedef 400]
type    = C
movetype= A
physics = C
poweradd= 0
ctrl = 0
anim = 400
sprpriority = 1
facep2=1
juggle = ifelse((var(36)&floor(exp(3*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.925
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 400, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = animelem = 2
attr = C,NA
damage = 20
animtype = Light
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 4,4
sparkno = S15000
guard.sparkno = S15010
sparkxy = -10,-52
hitsound = S10100,0
guardsound = S10140,0
ground.type = Low
ground.slidetime = 11
ground.hittime  = 11
guard.hittime = 10
ground.velocity = -3
air.type = Low
air.velocity = -1.5,-1
getpower = ceil(50*fvar(10)),25
givepower = 25,25
yaccel=.5
p2facing = 1
forcenofall = 1
id = 200
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400, Light Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Medium Attack
[Statedef 410]
type    = C
movetype= A
physics = C
poweradd= ceil(20*fvar(10))
velset=0,0
ctrl = 0
anim = 410
sprpriority = 1
facep2=1
juggle = ifelse((var(36)&floor(exp(4*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.85
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 410, HitDef]
type = HitDef
trigger1 = p2stateno != [5020,5040]
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
animtype = Medium
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 8,8
sparkno = S15001
guard.sparkno = S15010
sparkxy = -10,-62
hitsound = S10100, 1
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
guard.hittime = 17
ground.velocity = -4
air.velocity = -2,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = ceil(70*fvar(10)),35
givepower = 35,35
yaccel=.5
p2facing = 1
id = 200
forcenofall = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1 || animelem = 2
x = 8

[State 410, Voice]
type = playsnd
trigger1 = animelem = 1
value = 200,ifelse(random<500,0,2)
channel = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 410, Medium Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 1

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching Strong Attack
[Statedef 420]
type    = C
movetype= A
physics = C
poweradd= 20
ctrl = 0
anim = 420
sprpriority = 1
facep2=1
juggle = ifelse((var(36)&floor(exp(5*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.7
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 420, Voice]
type = playsnd
trigger1 = animelem = 1
value = 200,ifelse(random<500,0,2)
channel = 0

[State 420, HitDef]
type = HitDef
triggerall = p2stateno != [5020,5040]
trigger1 = AnimElem = 2
attr = C, NA
damage = 55
animtype = Hard
hitflag = MAF
priority = 4,Hit
guardflag = L
pausetime = 8,8
sparkno = S15002
guard.sparkno = S15010
sparkxy = -10,-54
hitsound = S10100,2
guardsound = S10140,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1.5,-3.5
air.type = Low
air.hittime = 15
air.velocity = -1.5,-3.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower= ceil(90*fvar(10)), 45
givepower = 45, 45
fall.yvelocity = 0
yaccel=.5
fall = 1
fall.recover = 0
ID = 420

[State 420, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 2

[State I'm sorry for taking this None]
type = TargetState
trigger1 = numtarget(420)
trigger1 = movehit = 1 && HitPauseTime = 12
trigger1 = !(target(420),ishelper) || (PlayerIDExist((target(420),id)) )
value = 470
ID=420
ignorehitpause=1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Jump Light Attack
[Statedef 600]
type = A
movetype = A
physics = A
poweradd= 0
ctrl = 0
anim = 600
sprpriority = 1
juggle = ifelse((var(36)&floor(exp(6*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.9
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 600, 2]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 25, 0
animtype = Light
guardflag = HA
hitflag = MAF
pausetime = 10,10
sparkno = S15000
guard.sparkno = S15010
sparkxy = -10,-84
hitsound  = S10100,0
guardsound = S10140,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
guard.hittime = 11
air.hittime = 12
airguard.ctrltime = 11
ground.velocity = -4
air.velocity = -1.3,-1.5-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 12
getpower = ceil(50*fvar(10)),25
givepower = 25,25
yaccel=.5
p2facing = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=16
value = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 600, Light Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 0

;---------------------------------------------------------------------------
;Jump Medium Attack
[Statedef 610]
type    = A
movetype= A
physics = A
poweradd= 15
ctrl = 0
anim = 610
sprpriority = 1
juggle = ifelse((var(36)&floor(exp(7*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.875
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 45, 0
animtype = Med
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S15001
guard.sparkno = S15010
sparkxy = -10,-28
hitsound = S10100,1
guardsound = S10140,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -5
air.type = Low
air.hittime = 17
airguard.ctrltime = 17
air.velocity = -1.3,-2-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 18
getpower= ceil(70*fvar(10)),35
givepower= 35,35
yaccel=.5
p2facing = 1*ifelse(p2dist X < 0, -1,1)

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=22
value = 1

[State 610, Medium Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 1
;---------------------------------------------------------------------------
 ;Jump Strong Attack
[Statedef 620]
type    = A
movetype= A
physics = A
poweradd= ceil(25*fvar(10))
ctrl = 0
anim = 620
sprpriority = 1
juggle = ifelse((var(36)&floor(exp(8*ln(2)) + 0.5)),2,0)

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.8
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = var(36) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 620, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage = 75
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = S15002
guard.sparkno = S15010
getpower = 60,10
sparkxy = -5,-48
hitsound = S10100,2
guardsound = S10140,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -6
air.type = High
air.hittime = 15
airguard.ctrltime = 15
air.velocity = -4.5,-4-1
getpower= ceil(90*fvar(10)),45
givepower= 45,45
yaccel=.5
fall.recover = 1
fall.recovertime = 16
p2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=20
value = 1

[State 620, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 300, 2
