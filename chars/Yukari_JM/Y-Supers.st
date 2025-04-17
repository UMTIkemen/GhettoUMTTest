; _____________________________________
;| Yukari Tanizaki from Azumanga Daioh |
;|             by Wickydoo             |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<SUPER STATES>================


;-------------------------------------------------------------------------
; HCB, F + C - Majigire - Attempt
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(2)>0
var(2) = -60


[State Prorate]
type = VarSet
triggerall = !time
trigger1 = (prevstateno = [200,420])
trigger2 = (prevstateno = [600,620])
trigger3 = (prevstateno = [500,599])
fvar(10) = fvar(10) * 0.95
ignorehitpause = 1
persistent = 0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = animelemtime(2)>=0
time = 2
mul = 160,160,160

[State 1000, Portrait Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Hyper Portrait"
ID = 20005
stateno = 20000
pos = 0,0
postype = back
facing = 1
supermovetime = 60

[State 1000, Background Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Super Background"
ID = 23005
stateno = 23000
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 9999999

[State 1000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
anim = -1
sound = S10150,0
darken = 1
poweradd = -1000
p2defmul = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2)<0
value = SCA

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 1000, Super Spark]
type = Explod
trigger1 = Time = 0
anim = 10000
ID = 10000
pos = 0,-47
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = -3
removeongethit = 1

[State 0, StateTypeSet]
type = StateTypeSet
triggerall = animelemtime(3)<0
trigger1 = p2bodydist X <= 52
trigger1 = p2stateno != [150,155]
trigger1 = p2stateno != 40
movetype = A

[State 1050,HitDef]
type = Hitdef
trigger1 = AnimElem = 2
trigger1 = p2bodydist X <= 52
trigger1 = p2stateno != [150,155]
trigger1 = p2stateno != 40
attr = S, HT
priority = 1,Miss
getpower = 0,0
hitflag = M
sparkno = -1
guard.dist = 0
p2facing = 1
hitsound = S0,800
p1stateno = 1005
hitsound = S0, 800
ground.velocity = 0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
numhits = 0
guard.dist = 0
ID = 1000
fall = 1
fall.recover = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = p2bodydist X > 52
trigger3 = p2stateno = [150,155]
trigger4 = p2stateno = 40
movetype = I

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Majigire - Success 1: Laughing
[Statedef 1005]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1005
sprpriority = 2

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = !time
value = 1010
ID = 1000
[State 0, TargetBind]
type = TargetBind
trigger1 = !time
id = 1000
pos = 48,-110
[State 0, TargetBind]
type = TargetBind
trigger1 = animelemno(0) = 3
id = 1000
pos = 48,-44

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S10100,5
[State CRASH]
type = HitAdd
trigger1 = animelem = 4
value = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 6
freq = 120
ampl = -4
phase = 90
[State Left Firework]
type = Helper
trigger1 = animelem = 4
helpertype = normal
name = "Flashy Spark"
ID = 1110
stateno = 1110
pos = 48,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
pausemovetime = 99999999
supermovetime = 99999999
persistent = 0
ignorehitpause = 1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4 
value = -ceil(ifelse(var(2)>0,1.33,1.0)*15*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 4
value = 10
ID = 1000

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 4
id = 1000
pos = 48,0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 4
value = 1012
ID = 1000
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 5
value = 1011
ID = 1000

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

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time
time = 2

[State Reset Mash]
type = VarSet
trigger1 = !time
var(10) = 0
[State Reset Mash inbetween]
type = VarSet
trigger1 = !time
var(11) = 0

[State Mash Timer Down]
type = VarAdd
trigger1 = var(10) > 0
trigger1 = var(11) <= 0
var(10) = -1
[State Inbetween Timer Down]
type = VarAdd
trigger1 = var(11) > 0
var(11) = -1

[State Mash]
type = VarAdd
triggerall = animelemtime(8)>=0
triggerall = command = "z"
trigger1 = var(10) < 3
trigger1 = (var(11) := 12)
trigger2 = var(10) >= 3
trigger2 = (var(11) := 10)
;trigger3 = var(10) = [5,8)
;trigger3 = (var(11) := 8)
;trigger4 = var(10) >= 8
;trigger4 = (var(11) := 6)
var(10) = 1


[State 1060, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(var(10) < 5, 1006, ifelse(var(10) >= 8, 1008, 1007))
ctrl = 0

;-------------------------------------------------------------------------
; Majigire - Weak Mash
[Statedef 1006]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1006
sprpriority = 2

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(34) < 0
time = 2

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 19 || animelem = 22 || animelem = 25
value = S10100,2
[State CRASH]
type = HitAdd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 19 || animelem = 22 || animelem = 25
value = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 19 || animelem = 22 || animelem = 25
time = 6
freq = 120
ampl = -4
phase = 90
[State 0, Explod]
type = Explod
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 19 || animelem = 22 || animelem = 25
anim = 10995+random%2
pos = 48,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 19 || animelem = 22 || animelem = 25
value = -ceil(ifelse(var(2)>0,1.33,1.0)*10*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 19 || animelem = 22 || animelem = 25
value = 10
ID = 1000


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 27
value = S10100,1
[State CRASH]
type = HitAdd
trigger1 = animelem = 27
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 27
anim = 10995+random%2
pos = 48,-18
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 27
value = -ceil(ifelse(var(2)>0,1.33,1.0)*10*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 27
value = 10
ID = 1000
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 27
value = 1014
ID = 1000


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 29
value = S10100,2
[State CRASH]
type = HitAdd
trigger1 = animelem = 29
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 29
anim = 10995+random%2
pos = 48,-35
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 29
value = -ceil(ifelse(var(2)>0,1.33,1.0)*15*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 29
value = 10
ID = 1000
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 29
value = 1014
ID = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 34
value = S10100,5
[State CRASH]
type = HitAdd
trigger1 = animelem = 34
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 34
anim = 10650
pos = 48,-69
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 34
value = -ceil(ifelse(var(2)>0,1.33,1.0)*90*fvar(10))
ID = 1000
kill = 1
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 34
value = 1020
ID = 1000
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 34
time = 6
freq = 120
ampl = -2
phase = 90

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelem=34
time = 0

[State Prorate]
type = VarSet
trigger1 = animtime = 0
fvar(10) = fvar(10) * 0.7
ignorehitpause = 1
persistent = 0

[State 1060, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Majigire - Medium Mash
[Statedef 1007]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1007
sprpriority = 2

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(72) < 0
time = 2

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160



[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
value = 1016
ID = 1000
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
value = S10100,2
[State CRASH]
type = HitAdd
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
value = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
time = 6
freq = 120
ampl = -4
phase = 90
[State 0, Explod]
type = Explod
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
anim = 1025
pos = 36,-84
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
value = -ceil(ifelse(var(2)>0,1.33,1.0)*12*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32 || animelem = 37
trigger2 = animelem = 42 || animelem = 47 || animelem = 50 || animelem = 55 || animelem = 59 || animelem = 64 
value = 10
ID = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 72
value = S10100,5
[State CRASH]
type = HitAdd
trigger1 = animelem = 72
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 72
anim = 10650
pos = 48,-39
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 72
value = -ceil(ifelse(var(2)>0,1.33,1.0)*79*fvar(10))
ID = 1000
kill = 1
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 72
value = 10
ID = 1000
[State 0, TargetBind]
type = TargetBind
triggerall = NumTarget(1000)
trigger1 = animelem = 66
id = 1000
pos = 35,0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 66
value = 1013
ID = 1000
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 72
value = 1025
ID = 1000
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 72
time = 10
freq = 110
ampl = -5
phase = 90

[State 0, TargetBind]
type = TargetBind
triggerall = NumTarget(1000)
trigger1 = animelem = 3
id = 1000
pos = 35,0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 4
value = 1015
ID = 1000
[State 0, TargetBind]
type = TargetBind
triggerall = NumTarget(1000)
trigger1 = animelem = 4
id = 1000
pos = 35,-76


[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelem = 72
time = 0

[State Prorate]
type = VarSet
trigger1 = animtime = 0
fvar(10) = fvar(10) * 0.7
ignorehitpause = 1
persistent = 0

[State 1060, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Majigire - Strong Mashing
[Statedef 1008]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1008
sprpriority = 2

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(82) < 0
time = 2

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelem = 82
time = 0


[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 3 || animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32
trigger2 = animelem = 37 || animelem = 42 || animelem = 47 || animelem = 53
value = 1015
ID = 1000
[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 3 || animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22 || animelem = 27 || animelem = 32
trigger2 = animelem = 37 || animelem = 42 || animelem = 47 || animelem = 53
id = 1000
pos = 42,-76
[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 4 || animelem = 8 || animelem = 13 || animelem = 18 || animelem = 23 || animelem = 28 || animelem = 33
trigger2 = animelem = 38 || animelem = 43 || animelem = 49 || animelem = 54
id = 1000
pos = 42,-102
[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
id = 1000
pos = 42,0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
value = 1012
ID = 1000
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 6 || animelem = 10 || animelem = 15 || animelem = 20 || animelem = 25 || animelem = 30 || animelem = 35
trigger2 = animelem = 40 || animelem = 45 || animelem = 51 || animelem = 56
value = 1011
ID = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
value = S10100,2
[State CRASH]
type = HitAdd
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
anim = 505
ID = 500
pos = 48,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
anim = 10650
pos = 48,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
value = -ceil(ifelse(var(2)>0,1.33,1.0)*11*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
value = 10
ID = 1000
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 5 || animelem = 9 || animelem = 14 || animelem = 19 || animelem = 24 || animelem = 29 || animelem = 34
trigger2 = animelem = 39 || animelem = 44 || animelem = 50 || animelem = 55
time = 7
freq = 140
ampl = -6
phase = 90



[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.95
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 58 || animelem = 59 || animelem = 61 || animelem = 63 || animelem = 65 || animelem = 67 || animelem = 69 || animelem = 71 || animelem = 73
trigger2 = animelem = 75
x = 4.75
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 59 || animelem = 61 || animelem = 63 || animelem = 65 || animelem = 67 || animelem = 69 || animelem = 71 || animelem = 73
trigger2 = animelem = 75
value = S10100,1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 59 || animelem = 61  || animelem = 63 || animelem = 65 || animelem = 67 || animelem = 69 || animelem = 71 || animelem = 73
trigger2 = animelem = 75
value = -ceil(ifelse(var(2)>0,1.33,1.0)*5*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 59 || animelem = 61  || animelem = 63 || animelem = 65 || animelem = 67 || animelem = 69 || animelem = 71 || animelem = 73
trigger2 = animelem = 75
value = 5
ID = 1000
[State CRASH]
type = HitAdd
trigger1 = animelem = 59 || animelem = 61  || animelem = 63 || animelem = 65 || animelem = 67 || animelem = 69 || animelem = 71 || animelem = 73
trigger2 = animelem = 75
value = 1
[State 0, TargetState]
type = TargetState
trigger1 = animelem = 59 || animelem = 61  || animelem = 63 || animelem = 65 || animelem = 67 || animelem = 69 || animelem = 71 || animelem = 73
trigger2 = animelem = 75
value = 1012
ID = 1000
[State 0, TargetState]
type = TargetState
trigger1 = animelem = 60 || animelem = 62  || animelem = 64 || animelem = 66 || animelem = 68 || animelem = 70 || animelem = 72 || animelem = 74
trigger2 = animelem = 76
value = 1011
ID = 1000

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 75
x = 0
[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(58)>=0 && animelemtime(75)<0
id = 1000
pos = 42,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 78
value = S10100,2
[State CRASH]
type = HitAdd
trigger1 = animelem = 78
value = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 78
time = 6
freq = 120
ampl = -4
phase = 90
[State 0, Explod]
type = Explod
trigger1 = animelem = 78
anim = 10995+random%2
pos = 48,-25
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 78
value = -ceil(ifelse(var(2)>0,1.33,1.0)*15*fvar(10))
ID = 1000
kill = 0
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 78
value = 10
ID = 1000
[State 0, TargetState]
type = TargetState
trigger1 = animelem = 78
value = 1021
ID = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 82
value = S10100,5
[State CRASH]
type = HitAdd
trigger1 = animelem = 82
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 82
anim = 10650
pos = 48,-39
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 82
value = -ceil(ifelse(var(2)>0,1.33,1.0)*104*fvar(10))
ID = 1000
kill = 1
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 82
value = 15
ID = 1000
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1000)
trigger1 = animelem = 82
value = 1025
ID = 1000
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 82
time = 10
freq = 110
ampl = -5
phase = 90

[State Prorate]
type = VarSet
trigger1 = animtime = 0
fvar(10) = fvar(10) * 0.7
ignorehitpause = 1
persistent = 0

[State 1060, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Majigire - Belly
[Statedef 1010]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - OTG Idle
[Statedef 1011]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = -2

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - OTG Hit
[Statedef 1012]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = -2

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - Ground Idle
[Statedef 1013]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - Ground Hit
[Statedef 1014]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - By Neck
[Statedef 1015]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - By Neck Hurt
[Statedef 1016]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = stateno

;---------------------------------------------------------------------------
; Majigire - Finished One
[Statedef 1020]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3


[State 821, veladd]
type = veladd
trigger1 = time >= 8
y = .5
[State 0, VelSet]
type = VelSet
trigger1 = time = 8
x = -3
y = -6

[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = time < 8
value = 5030
[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(5035)
trigger1 = Anim = 5030 && Animtime = 0
value = 5035
[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && Animtime = 0
trigger2 = Anim = 5035 && Animtime = 0
value = 5050

[State 821, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 821, SelfState]
type = SelfState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
; Majigire - Finished Two
[Statedef 1021]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3


[State 821, veladd]
type = veladd
trigger1 = time >= 8
y = .5
[State 0, VelSet]
type = VelSet
trigger1 = time = 8
x = 0
y = -7.5

[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = time < 8
value = 5030
[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(5035)
trigger1 = Anim = 5030 && Animtime = 0
value = 5035
[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && Animtime = 0
trigger2 = Anim = 5035 && Animtime = 0
value = 5050

[State 821, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 821, SelfState]
type = SelfState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 5100

;------------------
; Wall Bounce - shaking from the hit
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
value = 5012
[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = SelfAnimExist(5900)
value = 5900

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;------------------
; Wall Bounce - Flying
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = anim = 5012 && animtime = 0
value = 5017

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -12.5

[State 1026, Gravity]
type = VelAdd
trigger1 = time > 60
y = Gethitvar(yaccel)

[State 1026, No scroll]
type = ScreenBound
trigger1 = time > 15
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 557

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; QCF, QCF + C - Rocket Fireworks
[Statedef 1100]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1100
poweradd = -1000
facep2 = 1
sprpriority = 2

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.9
ignorehitpause = 1
persistent = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(2)>0
var(2) = -60

[State 10230, AfterImage]
type = AfterImage
trigger1 = anim = 1100
trigger1 = animelem = 4, =1
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

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = anim = 1100
trigger1 = animelemtime(4)>= 0 && animelemtime(6)<0
trigger2 = anim = 1101
trigger2 = animelemtime(25)<0
time = 2

[State Prorate]
type = VarSet
triggerall = !time
trigger1 = (prevstateno = [200,420])
trigger2 = (prevstateno = [600,620])
trigger3 = (prevstateno = [500,599])
fvar(10) = fvar(10) * 0.95
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1100
trigger1 = animelem = 4
value = S300,2


[State 0, BGPalFX]
type = BGPalFX
trigger1 = anim = 1100
trigger1 = animelemtime(3)>=0
trigger2 = anim = 1101
time = 5
mul = 160,160,160
ignorehitpause = 1

[State 1000, Portrait Helper]
type = Helper
triggerall = anim = 1100
trigger1 = animelem = 3
helpertype = normal
name = "Hyper Portrait"
ID = 20005
stateno = 20000
pos = 0,0
postype = back
facing = 1
supermovetime = 60

[State 1000, Background Helper]
type = Helper
triggerall = anim = 1100
trigger1 = animelem = 3
helpertype = normal
name = "Super Background"
ID = 23005
stateno = 23000
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 9999999

[State 1000, SuperPause]
type = SuperPause
triggerall = anim = 1100
trigger1 = animelem = 3
time = 60
anim = -1
sound = S10150,0
darken = 1
p2defmul = 1

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
triggerall = anim = 1100
trigger1 = animelem = 3
trigger2 = animelem = 4
x = 15

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 1101
trigger1 = animelem = 4
x = 0

[State 0, VelMul]
type = VelMul
trigger1 = anim = 1100
trigger1 = animelemtime(4)>0
trigger2 = anim = 1101
x = 0.925-0.075*(anim=1101)

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1100
trigger1 = animelem = 7, =1
x = 0

[State 1000, Super Spark]
type = Explod
triggerall = anim = 1100
trigger1 = animelem = 3
anim = 10000
ID = 10000
pos = 0,-47
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = -3
removeongethit = 1

[State Chimera!]
type = HitDef
trigger1 = anim = 1100
trigger1 = animelem = 4
attr = S,HA
hitflag = MAF
guardflag = M
animtype = Back
priority = 4,Hit
damage = 80,8
pausetime = 8,8
sparkno = S10995+random%2
guard.sparkno = S15011
sparkxy = -10,-25
hitsound = S10100,5
guardsound = S10140,1
ground.type = Low
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
yaccel = 0.5
ground.velocity = 0,-16
air.velocity = 0,-16
guard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
fall = 1
fall.recover = 0
id = 1100
kill = 1
getpower = 0,0
givepower = 20,20

[State 0, VelSet]
type = VelSet
trigger1 = movecontact || movereversed
x = 6
persistent = 0
[State 0, ChangeState]
type = ChangeAnim
triggerall = anim = 1100
trigger1 = movehit && !movereversed && animelemtime(6)<0
value = anim
elem = 6
[State 0, TargetBind]
type = TargetBind
trigger1 = numtarget(1100)
trigger1 = movehit
trigger1 = !(target(1100),ishelper) || (PlayerIDExist((target(1100),id)) )
trigger1 = target(1100),statetype = A
time = 1
ID = 1100
pos = 30,-25
ignorehitpause = 1
persistent = 0
[State 0, ChangeState]
type = ChangeAnim
triggerall = anim = 1100
trigger1 = movehit && !movereversed && animelem = 7
value = anim + 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 1101
trigger1 = animelem = 7 || animelem = 10 || animelem = 13 || animelem = 16 || animelem = 19 || animelem = 22
value = S300,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 1100
trigger1 = animelemtime(4)<6
trigger2 = anim = 1101
trigger3 = movehit && !movereversed
value = SCA

[State Left Firework]
type = Helper
triggerall = anim = 1101
trigger1 = animelem = 8 || animelem = 11 || animelem = 14 || animelem = 17 || animelem = 20 || animelem = 23
helpertype = normal
name = "Rocket Firework L"
ID = 1100
stateno = 1105
pos = -18,-88
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State Right Firework]
type = Helper
triggerall = anim = 1101
trigger1 = animelem = 8 || animelem = 11 || animelem = 14 || animelem = 17 || animelem = 20 || animelem = 23
helpertype = normal
name = "Rocket Firework R"
ID = 1105
stateno = 1105
pos = 49,-96
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State Left Firework]
type = Helper
trigger1 = movehit && !movereversed
helpertype = normal
name = "Flashy Spark"
ID = 1110
stateno = 1110
pos = 35,-35
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
pausemovetime = 99999999
supermovetime = 99999999
persistent = 0
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
triggerall = anim = 1101
trigger1 = animelemtime(5)=0
movetype = I



[State 1100, Done]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rocket Fireworks (Both Left and Right
[Statedef 1105]
type    = A
movetype= A
physics = N
velset = 0,-6.5
ctrl = 0
anim = 1106-(ishelper(1100))
sprpriority = 2

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 2
TimeGap  = 1
FrameGap = 5
length = 35
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .95,.95,.95
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time
time = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 0
stateno = 999
time = 1
ignorehitpause = 1

[State 0, Pause]
type = Pause
trigger1 = movehit && !movereversed
time = 3
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = !movecontact && !movereversed
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = Hard
fall.animtype = Back
priority = 4,Hit
damage = ceil(ifelse(root,var(2)>0,1.33,1.0)*(18-16*(ishelper(1100)))*2*root,fvar(10)),2-1*(ishelper(1100))
pausetime = 4,4
sparkno = S15004
guard.sparkno = S15011
sparkxy = -10,0
hitsound = S10100,7
guardsound = S10140,1
ground.type = High
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 15
airguard.hittime = 15
airguard.ctrltime = 15
yaccel = 0.75
ground.velocity = 0,-4
guard.velocity = 0
air.velocity = 0,-4
airguard.velocity = -0.5,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
id = 1100
getpower = 0,0
givepower = 20,20

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = movehit = 1
fvar(10) = root,fvar(10) * 0.95
ignorehitpause = 1
persistent = 0

[State Left Firework]
type = Helper
trigger1 = movehit && !movereversed
helpertype = normal
name = "Flashy Spark"
ID = 1110
stateno = 1110
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
pausemovetime = 99999999
supermovetime = 99999999
persistent = 0
ignorehitpause = 1

[State Jewbilee]
type = ChangeState
trigger1 = screenpos Y < -80 || movecontact || movereversed
value = 999
ctrl = 0

;---------------------------------------------------------------------------
; Rocket Spark
[Statedef 1110]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 9741
sprpriority = 5

[State Angle]
type = VarSet
trigger1 = var(1) = 0
fvar(0+var(0)) = 30+floor(190*random/1000.0)

[State Start]
type = Explod
trigger1 = var(1) = 0
anim = 1110+floor(8*random/1000.0)
ID = 1150+var(0)
pos = ceil(15*Cos(pi*var(0)/10.0)),ceil(15*Sin(pi*var(0)/10.0))
postype = p1
facing = 1
bindtime = 1
removetime = 27
scale = 1,1
ontop = 1
ownpal = 0
removeongethit = 0
trans = add
pausemovetime = 99999999
supermovetime = 99999999
[State Start]
type = ModifyExplod
trigger1 = 1
anim = 1110+floor(8*random/1000.0)
ID = 1150+var(0)
pos = ceil((1-0.9**var(1))*fvar(0+var(0))*Cos(pi*var(0)/6.0)),ceil((1-0.9**var(1))*fvar(0+var(0))*Sin(pi*var(0)/6.0))
postype = p1
facing = 1
bindtime = 1
removetime = 27
scale = .75,.75
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = floor(256*(1-var(1)/27.0)),256
pausemovetime = 99999999
supermovetime = 99999999

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = 512,512,512


[State 0, VarSet]
type = VarAdd
trigger1 = 1
var(0) = 1

[State Effect]
type = ChangeState
trigger1 = var(0)<=12
value = stateno
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(0) = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(1) >= 27
[State 0, VarSet]
type = VarAdd
trigger1 = 1
var(1) = 1

;---------------------------------------------------------------------------
; D, D + SC - BURST MODE
[Statedef 2500]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 2
anim = 2500
;poweradd = -5000

[State 8000, PlaySnd]
type = PlaySnd
trigger1 = ((prevstateno = [200,420]) || (prevstateno = [500,530]))
trigger1 = !time
value = S8000,0
abspan = 0

[State 2500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2500, Burst Has Been Done]
type = VarSet
trigger1 = Time = 0
var(3) = 1

[State 2500, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Burst Super Portrait"
ID = 2500
stateno = 2510
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 2500, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 72
movetime = 72
anim = s2110
sound = s10150, 1
pos = 0,-40
darken = 0

[State 2500, Initialize Burst Timer]
type = VarSet
trigger1 = !time
var(2) = ceil(927*power/5000.0)

[State 2500, P1 Side Burst Gauge]
type = Explod
trigger1 = Time = 0
trigger1 = TeamSide = 1
anim = 2112
ID = 9911
pos = 10, 190
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = 1, 1
sprpriority = 8
ontop = 1
ownpal = 1
supermovetime = 9999999999
pausemovetime = 9999999999

[State 2500, P1 Side Burst Bar]
type = Explod
trigger1 = Time = 0
trigger1 = TeamSide = 1
anim = 2111
ID = 9910
pos = 5, 190
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = 1, 1
sprpriority = 9
ontop = 1
ownpal = 1
supermovetime = 9999999999
pausemovetime = 9999999999

[State 2500, P2 Side Burst Gauge]
type = Explod
trigger1 = Time = 0
trigger1 = TeamSide = 2
anim = 2114
ID = 9911
pos = -10, 190
postype = right
facing = 1
bindtime = -1
removetime = -1
scale = 1, 1
sprpriority = 8
ontop = 1
ownpal = 1
supermovetime = 9999999999
pausemovetime = 9999999999


[State 2500, P2 Side Burst Bar]
type = Explod
trigger1 = Time = 0
trigger1 = TeamSide = 2
anim = 2113
ID = 9910
pos = -5, 190
postype = right
facing = 1
bindtime = -1
removetime = -1
scale = 1, 1
sprpriority = 9
ontop = 1
ownpal = 1
supermovetime = 9999999999
pausemovetime = 9999999999

[State 2500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
; Burst Super Background
[Statedef 2510]
physics = N
anim = 9741

[State 20000, Enter]
type = Explod
trigger1 = !time
anim = 8009
ID = 20000
pos = 0,0
postype = back
facing = 1
ownpal = 1
bindtime = -1
pausemovetime = 99999999999999
supermovetime = 99999999999999
removetime = -1
sprpriority = -5
removeongethit = 1
[State 20000, Enter]
type = Explod
trigger1 = !time
anim = 8007
ID = 20001
pos = 0,40
postype = back
facing = 1
ownpal = 1
bindtime = -1
pausemovetime = 99999999999999
supermovetime = 99999999999999
sprpriority = -4
removetime = -1
removeongethit = 1

[State 2310, Kill Super Cancel Exit]
type = RemoveExplod
trigger1 =  time > 72
id =  20000
[State 2310, Kill Super Cancel Exit]
type = RemoveExplod
trigger1 =  time > 72
id =  20001

[State 20000, end]
type = destroyself
trigger1 = time > 72

;-------------------------------------------------------------------------
; D, HCF, B, F + C - BURST SUPER
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1
facep2 = 1

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(2) = 0

[State -2, Burst! - Remove Burst bar if not in Burst]
type = RemoveExplod
trigger1 = numexplod(9910)
id = 9910
ignorehitpause=1

[State -2, Burst! - Remove Burst gauge if not in Burst]
type = RemoveExplod
trigger1 = numexplod(9911)
id = 9911
ignorehitpause=1

[State -2, Burst! - Really Brighting Afterimages]
type = AfterImage
trigger1 = Time = 0
time = 1
trans = add
timegap = 2
framegap = 1
length = 20
palcontrast = 255,  75,  75
paladd =       -5, -25, -25
palmul =       .8, .75, .75
trans = add

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = !time
time = 0

[State 4000, nhb]
type = nothitby
trigger1 = animelemtime(2)<0
time = 1
value = SCA

[State 0, ReversalDef]
type = ReversalDef
trigger1 = time
reversal.attr = SCA,AA
pausetime = 8,8
sparkno = 15006
hitsound = S10100,0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
trigger1 = numtarget
trigger1 = !target,ishelper || playeridexist(target,id)
value = 3002
ctrl = 0

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; IMPERIAL WRATH ATTEMPT
[Statedef 3001]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3001
juggle  = 0
velset = 0, 0
facep2 = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 1801,HitDef]
type = Hitdef
trigger1 = 1
attr = S, HT
priority = 7, Miss
getpower = 0
hitflag = MA
sparkno = -1
p2facing = 1
p1stateno = 3002
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
numhits = 0
hitsound = -1
fall = 1
fall.recover = 0
ID = 3000

[State 1801,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
; Imperial Wrath - Shove into wall
[Statedef 3002]
type = S
movetype = A
physics = N
ctrl = 0
juggle  = 0
anim = 3002
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitdefpersist = 1

[State -2, Burst! - Really Brighting Afterimages]
type = AfterImage
trigger1 = Time = 0
time = 1
trans = add
timegap = 2
framegap = 1
length = 20
palcontrast = 255,  75,  75
paladd =       -5, -25, -25
palmul =       .8, .75, .75
trans = add

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time<=5
value = 3002
elem = 1
[State 1810, TargetState]
type = TargetState
trigger1 = time<=5
value = 1013
;ID = 3000

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1810, VelSet]
type = VelSet
trigger1 = time>=5
x = 8
[State 0, VelMul]
type = VelMul
trigger1 = time >= 5
x = 1.1

[State 1810, VelSet]
type = VelSet
trigger1 = vel X >= 15
x = 15

[State 1810, TargetBind]
type = TargetBind
trigger1 = 1
;id = 3000
pos = 15,0

[State 2500, Helper]
type = Helper
trigger1 = time = 3
helpertype = normal
name = "Burst Super Portrait"
ID = 2500
stateno = 2510
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
persistent = 0

[State 1000, Background Helper]
type = Helper
trigger1 = time = 3
helpertype = normal
name = "Super Background"
ID = 23005
stateno = 23000
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 60
persistent = 0

[State 1000, SuperPause]
type = SuperPause
trigger1 = time = 3
time = 60
anim = -1
sound = S10150,0
darken = 1
p2defmul = 1
persistent = 0

[State 1000, Super Spark]
type = Explod
trigger1 = time = 3
anim = 2110
ID = 10000
pos = 5,-38
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = -3
removeongethit = 1
persistent = 0


[State 4000, snd]
type = playsnd
trigger1 = time = 3
value = 1200,1
channel = 0
volume = 255

[State 1810, Explod]
type = Explod
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
anim = 10650
ID = 1810
pos = 0,-40
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1810, PlaySnd]
type = PlaySnd
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
value = S10100,2

[State 1810, TargetState]
type = TargetState
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
value = 1014
ID = 3000

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
value = -15
ID = 3000
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
value = 10
ID = 3000
[State 0, HitAdd]
type = HitAdd
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
value = 1
[State 1810, ChangeState]
type = ChangeState
trigger1 = time >= 5
trigger1 = target,backedgebodydist <= 0
value = 3003
ctrl = 0

;---------------------------------------------------
; Jump Back and prepare angus
[Statedef 3003]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3003
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitdefpersist = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1815, VelSet]
type = VelSet
trigger1 = AnimElemTime(2)=0
x = -4
y = -4

[State 1815, VelAdd]
type = VelAdd
trigger1 = statetype = A
y = 0.5

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1815, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A

[State 1815, ChangeState]
type = ChangeState
triggerall = statetype = A
trigger1 = Vel y > 0 && vel y + Pos Y >= 0
value = 3004
ctrl = 0

;------------------------------------------------------------------------
; NAE NAE
[Statedef 3004]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3004
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitdefpersist = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1820, VarSet]
type = VarSet
trigger1 = Time = 0
v = 23
value = 0

[State 1820, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1200,2

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S47,0

[State 1820, VarAdd]
type = VarAdd
trigger1 = animelemtime(3)>=0 || animtime = 0
v = 23
value = 1
persistent = 2

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1820, HitAdd]
type = HitAdd
trigger1 = animelemtime(3)>=0 || animtime = 0
value = 1
persistent = 2

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)>=0 || animtime = 0
value = S10100,2
persistent = 2
channel = 1

[State 1810, Explod]
type = Explod
trigger1 = animelemtime(3)>=0 || animtime = 0
anim = 10650
ID = 1810
pos = 0,-54
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
persistent = 2

[State 1810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(3)>=0 || animtime = 0
value = -10
;ID = 3000
kill = 0
persistent = 2

[State 1810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelemtime(3)>=0 || animtime = 0
value = 3
;ID = 3000
persistent = 2

[State 1810, ChangeState]
type = ChangeState
trigger1 = var(23) >= 53
value = 3005
ctrl = 0

;---------------------------------------------------------
;Final Kick
[Statedef 3005]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3005
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitdefpersist = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 160,160,160

[State 1820, VarSet]
type = VarSet
trigger1 = Time = 0
v = 23
value = 0

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(6)<=0
time = 2

[State 1820, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(6) = 0
value = 1
[State Left Firework]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Imperial Hitspark"
ID = 3020
stateno = 3020
pos = 46,-74
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
pausemovetime = 99999999
supermovetime = 99999999
persistent = 0
ignorehitpause = 1
[State 1820, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = S10100,5

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1810, Explod]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 10130
ID = 1810
pos = 46,-74
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1810, TargetState]
type = TargetState
trigger1 = AnimElemTime(6) = 0
value = 3010
;ID = 3000

[State 1810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0
value = -220
;ID = 3000
kill = 1
absolute = 0

[State 1810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(6) = 0
value = 125
;ID = 3000

[State 1810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Wall Bounce - shaking from the hit
[Statedef 3010]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
value = 5012
[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = SelfAnimExist(5900)
value = 5900

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 3011

;------------------
; Wall Bounce - Flying
[Statedef 3011]
type    = A
movetype= H
physics = N

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = anim = 5012 && animtime = 0
value = 5017

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = time > 60
y = Gethitvar(yaccel)

[State 1026, No scroll]
type = ScreenBound
trigger1 = time > 15
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 3012

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Wall Bounce - Slam
[Statedef 3012]
type    = A
movetype= H
physics = N

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = !SelfAnimExist(5900) || !SelfAnimExist(5901)
value = 5015
[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = !time
trigger1 = SelfAnimExist(5900)&&SelfAnimExist(5901)
value = 5901

[State 1027, Pos]
type = PosAdd
trigger1 = 1
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = Time >= 1
value = 3013

;------------------
; Wall Bounce - Falling Off
[Statedef 3013]
type    = A
movetype= H
physics = N

[State 1025, Anim] ;Custom animation
type = ChangeAnim
triggerall = !time
trigger1 = !SelfAnimExist(5900) || !SelfAnimExist(5902)
value = 5050+2*(SelfAnimExist(5052))
[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = !time
trigger1 = SelfAnimExist(5900)&&SelfAnimExist(5902)
value = 5902

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
x = 2.5
y = -11

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;--------------------------------------------------------------------
; Imperial Hitspark
[Statedef 3020]
type = S
movetype = A
physics = N
ctrl = 0
juggle  = 0
anim = 1117
velset = 0, 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State End Time]
type = VarSet
trigger1 = !time
var(0) = 30

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time<10
value = 0
scale = .5*time/10.0,.5*time/10.0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time>=10 && time <= var(0)
value = 0
scale = .5,.5
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > var(0)
value = 0
scale = .5*(1-(time-var(0))/15.0),.5*(1-(time-var(0))/15.0)

[State 0, Trans]
type = Trans
trigger1 = time <= var(0)
trans = add
alpha = 256,256
[State 0, Trans]
type = Trans
trigger1 = time > var(0)
trans = add
alpha = ceil(256*(1-(time-var(0))/15.0)),256


[State Rings]
type = Helper
trigger1 = time % 3 = 0 && time<=var(0)
helpertype = normal ;player
name = "Rings"
ID = 3021
stateno = 3021
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = 0.05+0.95*(random/1000.0)
size.yscale = 1.0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= (var(0)+15)

;--------------------------------------------------------------------
; Rings
[Statedef 3021]
type = S
movetype = A
physics = N
ctrl = 0
juggle  = 0
anim = 1119
velset = 0, 0
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AngleSet]
type = AngleSet
trigger1 = !time
value = floor(360*random/1000.0)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = (time/15.0),(time/15.0)

[State 0, Trans]
type = Trans
trigger1 = time <= 15
trans = add
alpha = ceil(256*(1-time/15.0)),256

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1120+random%2
ID = 1120
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 15
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time<=15
ID = 1120
scale = 1+time/15.0,1+time/15.0
trans = addalpha
alpha = ceil(256*(1-time/15.0)),256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 15

;-----------------------------------------------------------------------
; SHUN GOKU SATSU
[Statedef 4000]
type = S
physics = S
movetype = A
anim = 4000
ctrl = 0
velset = 0,0
poweradd = -3000
juggle = 15

[State 4000, strengthvar]
type = varset
trigger1=var(10)!=7
var(10)=7

[State 4000, snd]
type = playsnd
trigger1 = !time
value = 1200,1
channel = 0
volume = 255

[State 4000, superchargehelper]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = 7,-105
ownpal = 1
persistent = 0
supermovetime = 9999

[State 4000, superchargepause]
type = superpause
trigger1 = !time
time = 60
anim = -1
sound = s7,0
p2defmul = 1
darken = 0

[State 4000, nhb]
type = nothitby
trigger1 = time<6
time = 1
value = SCA

[State 4000, vel]
type = velset
trigger1 = 1
x = 5

[State 4000, snd]
type = playsnd
trigger1 = animelemtime(1)>1
value = 5,4
persistent = 0

[State 4000, hit]
type = hitdef
trigger1 = time
trigger1 = p2movetype!=H&&p2stateno!=40
attr = S,HT
hitflag = M-
priority = 2,Miss
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 4001
p2stateno = 1114002
fall = 1
fall.recover = 0
ID = 4000

[State 4000, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---PLAYER---
[Statedef 4001]
type = S
physics = N
movetype = A
anim = 4001
ctrl = 0
velset = 0,0
sprpriority = 1

[State 4001, snd]
type = playsnd
trigger1 = !time
value = 5,17

[State 4001, grabsnd]
type = playsnd
trigger1 = !time
value = 0,800

[State 4001, vsothers]
type = varset
trigger1 = !time
var(30) = 234

[State 4001, vsgoukiorgen]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Gouki"||target(4000),name="Shin Gouki"||target,name="Akuma"||target(4000),name="Shin Akuma"
trigger2=target(4000),name="Mech Gouki"||target(4000),name="Cyber Akuma"||target(4000),name="Gen"
trigger3=target(4000),name="Pocket Shin Gouki"||target(4000),name="cvsgouki"||target(4000),name="SF3Gouki"
trigger4=target(4000),name="SoulGen"||target(4000),name="Gouki_Cota"||target(4000),name="Gouki CVS 3"
var(30)=40

[State 4001, vsevilryu]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Evil Ryu"||target(4000),name="ERyu"
trigger2=target(4000),name="Ryu"&&target(4000),authorname="Phantom.of.the.Server"&&target(4000),var(1)!=1
trigger3=target(4000),name="CVSEvilRyu"||target(4000),name="Destrudo Ryu"
trigger4=target(4000),name="Ryu"&&target(4000),authorname="N64Mario"&&target(4000),palno>=7
trigger5=target(4000),name="cvsryu"&&target(4000),authorname="Warusaki3"&&target(4000),var(12)=10
trigger6=target(4000),name="eRYU-SvsC"
var(30)=50

[State 4001, vsothersgsusers]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="God Rugal"||target(4000),name="Dark Sakura"
trigger2=target(4000),name="Oyaji"&&target(4000),authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger3=target(4000),name="cvsrugal"&&target(4000),authorname="Warusaki3"&&target(4000),var(12)=10
trigger4=target(4000),name="cvsg_rugal"&&target(4000),authorname="Warusaki3"
trigger5=target(4000),name="Tin's S_Gouki"||target(4000),name="Blaze Agent"
var(30)=50

[State 4001, vsCAPCOMbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Demitri"||target(4000),name="Jedah"
trigger2=target(4000),name="Vega"&&(target(4000),authorname="Phantom.of.the.Server"||target(4000),authorname="Messatsu")
trigger3=target(4000),name="cvsvega"&&(target(4000),authorname="Warusaki3"||target(4000),authorname="Gargoyle")
trigger4=target(4000),name="M.Bison"&&target(4000),authorname="N-Mario"
trigger5=target(4000),name="[Necromancer's] M. Bison"
trigger6=target(4000),name="M. Bison"&&target(4000),authorname="VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger7=target(4000),name="CvSBison"&&target(4000),authorname="Team Kai (Saiai and Koga)"
trigger8=target(4000),name="Shadow DIO"||target(4000),name="Gill"
var(30)=456

[State 4001, vsSNKbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Geese"||target(4000),name="Orochi"||target(4000),name="Mukai"||target(4000),name="Ryuji Yamazaki"
trigger2=target(4000),name="Geese Howard"||target(4000),name="Yamazaki"
trigger3=target(4000),name="cvsgeese"||target(4000),name="DGeese"||target(4000),name="ORIGINAL ZERO"
trigger4=target(4000),name="cvsyamazaki"||target(4000),name="Orochi Rebirth"||target(4000),name="Tin's Mukai"
trigger5=target(4000),name="geese_mmx"||target(4000),name="Setsuna"
var(30)=456

[State 4001, vsrugal]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Rugal"||target(4000),name="Rugal Bernstein"||target(4000),name="Omega Rugal"
trigger2=target(4000),name="Rugal94"||target(4000),name="Rugal94(BOSS)"||target(4000),name="rugal_B"
trigger3=target(4000),name="Rugal_TLE"||target(4000),name="Omega Rugal Gb"||target(4000),name="Tin G_rugal"
trigger4=target(4000),name="Mech Rugal"||target(4000),name="Tin 2002_rugal"
trigger5=target(4000),name="Rugal CvS"
trigger6=target(4000),name="cvsrugal"&&target(4000),authorname="Warusaki3"&&target(4000),var(12)!=10
var(30)=456

[State 4001, vsMKbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Shao Kahn"||target(4000),name="Shang Tsung"||target(4000),name="Goro"
trigger2=target(4000),name="Kintaro"||target(4000),name="Motaro"
trigger3=target(4000),name="shaokahn"
var(30)=456

[State 4001, vsMARVELbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Dr.Doom"
trigger2=target(4000),name="Dr. Doom by WhiteMagic2002"
var(30)=456

[State 4001, vsGGbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Justice"||target(4000),name="Testament"
var(30)=456

[State 4001, vsrandombadguys >=)]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Sevil Nahte"||target(4000),name="Perfect Weapon MB-02"
trigger2=target(4000),name="Jaian"; lol =D
var(30)=456

;NEED TO FINISH

[State 4001, recover]
type=varadd
triggerall=animelemtime(2)>0&&animelemtime(35)<0
triggerall=(var(30)=[1,99])&&numtarget(4000)
triggerall=target(4000),life>=.33*(target(4000),lifemax)
trigger1=(target(4000),command="x")||(target(4000),command="y")||(target(4000),command="z")
trigger2=(target(4000),command="a")||(target(4000),command="b")||(target(4000),command="c")
trigger3=(target(4000),command="holdup")||(target(4000),command="holddown")||(target(4000),command="holdback")||(target(4000),command="holdfwd")
var(30)=-1

[State 4001, Debug]
type=displaytoclipboard
trigger1=var(30)<100
text="%d button presses to recover"
params=var(30)

[State 4001, Debug]
type=displaytoclipboard
trigger1=var(30)=234
text="Normal Damage"

[State 4001, Debug]
type=displaytoclipboard
trigger1=var(30)=456
text="Extra Damage"

[State 4001, pause]
type = pause
trigger1 = animelemtime(17)<0
time = 2
movetime = 2

[State 4001, push]
type = playerpush
trigger1 = animelemtime(17)>=0
value = 0

[State 4001, nothitby]
type = nothitby
trigger1 = animelemtime(17)<0
value = SCA
time = 1

[State 4001, imageoff]
type=afterimagetime
trigger1=animelemtime(5)>0
time=0

[State 4001, fadeout]
type = allpalfx
trigger1 = animelemtime(1)=10
time = 30
sinadd = -255,-255,-255,120

[State 4001, black]
type = envcolor
trigger1 = animelemtime(2)>=0&&animelemtime(17)<0
time = 4
value  =0,0,0

[State 4001, assert]
type = assertspecial
trigger1 = animelemtime(2)>=0 && animelemtime(17)<0
flag = nobardisplay

[State 4001, spr]
type = sprpriority
trigger1 = animelemtime(17)>=0
value = 1

[State 4001, bind]
type = targetbind
trigger1 = animelemtime(17)<0
pos = 45,0

[State 4001, hitadd]
type=hitadd
triggerall=var(30)>0
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16
value=1

[State 4001, hitdamage]
type=targetlifeadd
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16
value=ifelse((var(30)=456),-50,-33)
kill=animelem=16

[State 4001, givepower]
type=targetpoweradd
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16
value=ceil(ifelse((var(30)=456),(target(4000),lifemax*.45),(target(4000),lifemax*.33))/15)

[State 4001, hitsnd]
type=playsnd
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16
value=2,8

[State 4001, sparks]
type=explod
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16
anim=ifelse(!var(30),7001,7020+(random%8))
ID = 7000
sprpriority = 5
postype = p2
pos = 0,-70
random = 60,60
facing = -1
ownpal = 1
ontop = 1
pausemovetime = 300
supermovetime = 300

[State 4001, shake]
type=envshake
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16
time = 2
freq = 90
ampl = -3

[State 4001, snd]
type = playsnd
trigger1 = animelemtime(16)=10
value = 1000,0
channel = 0
volume = 255

[State 4001, throw]
type=targetstate
trigger1=animelemtime(16)>=0&&numtarget(4000)
value=1114003
ID=4000
persistent=0

[State 4001, interrupt]
type = changestate
triggerall = animelemtime(2)>0&&animelemtime(16)<0
trigger1 = !var(30)&&numtarget(4000)
trigger2 = target(4000),stateno=1114010
value = 4009

[State 4001, end]
type = changestate
trigger1 = animelemtime(16)>=0 && winko
value = 184

[State 4001, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;---TARGET---
[Statedef 1114002]
type = S
physics = N
movetype = H
velset = 0,0
ctrl = 0

[State 1114002, anim]
type = changeanim2
trigger1 = !time
value = 4002

[Statedef 1114003]
type = L
physics = C
movetype = H
velset = 0,0
ctrl = 0

[State 1114003, anim]
type = changeanim2
trigger1 = !time
value = 4003

[State 1114003, end]
type = selfstate
trigger1 = !alive
value = 5150

[State 1114003, end]
type = selfstate
trigger1 = !animtime && alive
value = 5120


;---PLAYER---
[Statedef 4009]
type = S
physics = S
movetype = H
anim = 5910
velset = -5,0
ctrl = 0

[State 4009, target]
type  =targetstate
trigger1 = !time && numtarget(4000)
value = 1114010
ID = 4000

[State 4009, imageoff]
type = afterimagetime
trigger1 = 1
time = 0

[State 4009, snd]
type = playsnd
trigger1 = !time
value = 5010,5
channel = 0

[State 4009, anim]
type = changeanim
trigger1 = anim = 5910 && time = 45
value = 5911

[State 4009, flash]
type = palfx
trigger1 = !time
add = 30,30,100
sinadd = 30,30,100,8
time = 8

[State 4009, snd]
type = playsnd
trigger1 = !time
value = 7,1

[State 4009, lightning]
type = helper
trigger1 = !time
helpertype = normal
stateno = 4012
ID = 4012
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
pausemovetime = 99
supermovetime = 99

[State 4009, end]
type = changestate
trigger1 = anim = 5911 && !animtime
value = 0
ctrl = 1

;---PLAYER---
[Statedef 1114010]
type = S
physics = S
movetype = H
anim = 0
velset = -5,0
ctrl = 0

[State 1114010, anim]
type = changeanim
trigger1 = !time && selfanimexist(150)
value = 150

[State 1114010, anim]
type = changeanim
trigger1 = anim = 150 && selfanimexist(140) && time>=45
value = 140

[State 1114010, flash]
type = palfx
trigger1 = !time
add = 30,30,100
sinadd = 30,30,100,8
time = 8

[State 1114010, end]
type = selfstate
trigger1 = anim = 140 && !animtime
trigger2 = anim = 0 && time >= 54
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Steam Roller Attempt
[Statedef 3100]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3100
velset = 0,0

[State 52, 1]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 1100, Velocity]
type = PosAdd
trigger1 = AnimElem = 33
x = (P2dist X)-50

[State 1100, Velocity]
type = PosSet
trigger1 = AnimElem = 33
y = -299

[State 3000, Superpause]
type = SuperPause
trigger1 = Time = 60
time = 45
movetime = 45
anim = -1
sound = S8000,10
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 10000, VarSet]
type = VarAdd
triggerall = time = 60
trigger1 = var(2)
var(2) = -52

[State 2500, NotHitBy]
type = NotHitBy
trigger1 = time >= 60
value = SCA

[State 1000, Spark]
type = Explod
trigger1 = time = 60
Anim = 8700
id = 8700
pos = 0, 0
postype = Left
ownpal = 1
removetime = 45
bindtime = -1
ignorehitpause = 1
sprpriority = -105
scale = .84,1.08
pausemovetime = 45
supermovetime = 45

[State 1000, Spark]
type = Explod
trigger1 = Time = 60
Anim = 7900
id = 7900
pos = -30, 380
postype = back
ownpal = 1
bindtime = -1
pausemovetime = 99999999
supermove = 1
ignorehitpause = 1
sprpriority = -90
removeongethit = 1
removetime = 45

[State 4900, 16]
type = ModifyExplod
trigger1 = Numexplod(7900)
Id = 7900
postype = back
pos = ceil(-20+((random%16)*ifelse((time%6=[1,3]),-1,1))),ceil(170+((random%16)*ifelse((time%6=[1,3]),-1,1)))
scale = ifelse(time>=93,2,.35+((time-60)*.05))*.833,ifelse(time>=93,2,.35+((time-60)*.05))*1.07
ignorehitpause = 1

[State 4000, Effect]
type = AssertSpecial
trigger1 = time = [60,104]
flag = NoFG
flag2 = NoBG
ignorehitpause = 1

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 3
y = -12

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 32
y = 0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 33
x = 5
y = 25

[State 220, Voice]
type = PlaySnd
trigger1 = animelem = 32
value = 1200, 1
channel = 0

[State -2, BG]
type = Helper
trigger1 = animelem = 32
ID = 7700
stateno = 7700
postype = P1
pos = ceil(-84*const(size.xscale)),ceil(99*const(size.yscale))
pausemovetime = 999999999999*var(0)
ignorehitpause = 1
ownpal = 1

[State -2, BG]
type = Helper
trigger1 = time = 1
ID = 3110
stateno = 3110
postype = P1
pos = 0,0
pausemovetime = 999999999999*var(0)

[State 200, 7]
type = screenbound
trigger1 = time > 1
value = 1
movecamera = 30,0

[State 200, Limit]
type = VarSet
trigger1 = fvar(12) <= 0.4
fvar(12) = 0.28

[State 200, Dampening Damage]
type = VarAdd
trigger1 = (prevstateno = [200,245]) || (prevstateno = [400,420])
trigger1 = time = 0
fvar(12) = -0.1439

[State 220, 1]
type = Hitdef
trigger1 = animelem = 34
attr = A, HA
hitflag = MAF
guardflag = HA
animtype = heavy
air.animtype = back
fall.animtype = back
priority = 5,Miss
damage = 50,28
pausetime = 7,20
guard.pausetime = 7,7
sparkno = S10130
sparkxy = -20, 100
;hitsound = -1,0
guardsound = S10140,0
ground.type = High
air.type = High
ground.slidetime = 14
ground.hittime = 14
air.hittime = 14
guard.ctrltime = 14
ground.velocity = 0
guard.velocity = -8
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 10,0
persistent = 0
ID=3100
envshake.time = 24
envshake.ampl = 8
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .44
kill = 0
guard.kill = 0
forcestand = 1
p2facing = 1
p2stateno = 3109
hitonce = 1

[State 220, 1]
type = Hitdef
triggerall = moveguarded
trigger1 = animelem = 33
attr = A, HA
hitflag = MAFD
guardflag = H
animtype = heavy
air.animtype = back
fall.animtype = back
priority = 5,Miss
damage = 50
pausetime = 7,20
guard.pausetime = 7,7
sparkno = S10130
sparkxy = -20, 100
;hitsound = -1,0
guardsound = S10140,0
ground.type = High
air.type = High
ground.slidetime = 14
ground.hittime = 14
air.hittime = 14
guard.ctrltime = 14
ground.velocity = 0
guard.velocity = 0
air.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
ID=3100
persistent = 0
envshake.time = 24
envshake.ampl = 8
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .44
kill = 0
guard.kill = 0
forcestand = 1
p2facing = 1
p2stateno = 3109
hitonce = 1

[State 8500, 1]
type = varset
trigger1 = AnimElem = 33
var(14) = ceil(ifelse((70*fvar(0)*.5)<7,7,(70*fvar(0)*.5)))

[State 1100, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = animelemtime(32) > 0
trigger1 = Pos Y >= -100 && Vel Y > 0
value = 3102
ignorehitpause = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = !movehit
trigger1 = animelemtime(32) > 0
trigger1 = Pos Y >= -100 && Vel Y > 0
value = 3101
ignorehitpause = 0
;---------------------------------------------------------------------------
[Statedef 3101]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3101
velset = 0,0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -4.5
y = -9

[State 220, Voice]
type = PlaySnd
trigger1 = animelem = 1
value = 3100, 2

[State 2601, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
ampl = 5

[State 1100, Velocity]
type = Gravity
trigger1 = animelemtime(2) > 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelemtime(9) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;---------------------------------------------------------------------------
; Steam Roller Successful
[Statedef 3102]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3102
velset = 0,0
sprpriority = 1

[State 200, 7]
type = TargetState
trigger1 = time = 0
value = 3105
ID=3100

[State 200, 7]
type = TargetState
trigger1 = animelem = 63
value = 3106
ID=3100

[State 200, 7]
type = TargetState
trigger1 = animelem = 64
value = ifelse(!win,2600,3107)
ID=3100

[State 200, 7]
type = TargetBind
trigger1 = time = 0
pos = -25,100
ID=3100

[State 200, 7]
type = TargetBind
trigger1 = animelem = 63
pos = 0,100
ID=3100

[State 200, 7]
type = screenbound
trigger1 = var(0) != 1
value = 0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 70
x = -3.5
y = -5

[State 220, Voice]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 63
value = 3100, 2

[State 220, Voice]
type = PlaySnd
trigger1 = animelem = 5
value = 190, 0
channel = 0

[State 220, Voice]
type = PlaySnd
trigger1 = animelem = 14
trigger2 = animelem = 16
trigger3 = animelem = 18
trigger4 = animelem = 20
trigger5 = animelem = 22
trigger6 = animelem = 24
trigger7 = animelem = 26
trigger8 = animelem = 28
trigger9 = animelem = 30
trigger10 = animelem = 32
trigger11 = animelem = 34
trigger12 = animelem = 36
trigger13 = animelem = 38
trigger14 = animelem = 40
trigger15 = animelem = 42
trigger16 = animelem = 44
trigger17 = animelem = 46
trigger18 = animelem = 48
trigger19 = animelem = 50
trigger20 = animelem = 52
trigger21 = animelem = 54
trigger22 = animelem = 56
trigger23 = animelem = 58
value = 1, 2
channel = 2+(random%3)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = 1200,2

[State 220, Voice]
type = PlaySnd
trigger1 = animelemtime(63) = 1
value = 1, 2
channel = 2+(random%3)

[State 1000, Spark]
type = Explod
trigger1 = animelem = 14
trigger2 = animelem = 16
trigger3 = animelem = 18
trigger4 = animelem = 20
trigger5 = animelem = 22
trigger6 = animelem = 24
trigger7 = animelem = 26
trigger8 = animelem = 28
trigger9 = animelem = 30
trigger10 = animelem = 32
trigger11 = animelem = 34
trigger12 = animelem = 36
trigger13 = animelem = 38
trigger14 = animelem = 40
trigger15 = animelem = 42
trigger16 = animelem = 44
trigger17 = animelem = 46
trigger18 = animelem = 48
trigger19 = animelem = 50
trigger20 = animelem = 52
trigger21 = animelem = 54
trigger22 = animelem = 56
trigger23 = animelem = 58
Anim = 10100
id = 10100
pos = -10, 10
random = 80,20
postype = P1
ownpal = 1
ignorehitpause = 1
ontop = 1
pausemovetime = 999999999999*var(0)

[State 1000, Spark]
type = Explod
trigger1 = animelem = 63
Anim = 10130
id = 10130
pos = -16, 20
postype = P1
ownpal = 1
ignorehitpause = 1
ontop = 1
pausemovetime = 999999999999*var(0)

[State 901, Hurt]
type = HitAdd
trigger1 = animelem = 14
trigger2 = animelem = 16
trigger3 = animelem = 18
trigger4 = animelem = 20
trigger5 = animelem = 22
trigger6 = animelem = 24
trigger7 = animelem = 26
trigger8 = animelem = 28
trigger9 = animelem = 30
trigger10 = animelem = 32
trigger11 = animelem = 34
trigger12 = animelem = 36
trigger13 = animelem = 38
trigger14 = animelem = 40
trigger15 = animelem = 42
trigger16 = animelem = 44
trigger17 = animelem = 46
trigger18 = animelem = 48
trigger19 = animelem = 50
trigger20 = animelem = 52
trigger21 = animelem = 54
trigger22 = animelem = 56
trigger23 = animelem = 58
trigger24 = animelem = 63
value = 1

[State 901, Hurt]
type = VarAdd
trigger1 = animelem = 14
trigger2 = animelem = 16
trigger3 = animelem = 18
trigger4 = animelem = 20
trigger5 = animelem = 22
trigger6 = animelem = 24
trigger7 = animelem = 26
trigger8 = animelem = 28
trigger9 = animelem = 30
trigger10 = animelem = 32
trigger11 = animelem = 34
trigger12 = animelem = 36
trigger13 = animelem = 38
trigger14 = animelem = 40
trigger15 = animelem = 42
trigger16 = animelem = 44
trigger17 = animelem = 46
trigger18 = animelem = 48
trigger19 = animelem = 50
trigger20 = animelem = 52
trigger21 = animelem = 54
trigger22 = animelem = 56
trigger23 = animelem = 58
trigger24 = animelem = 63
var(42) = 1

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = animelem = 14
trigger2 = animelem = 18
trigger3 = animelem = 22
trigger4 = animelem = 26
trigger5 = animelem = 30
trigger6 = animelem = 34
trigger7 = animelem = 38
trigger8 = animelem = 42
trigger9 = animelem = 46
trigger10 = animelem = 50
trigger11 = animelem = 54
trigger12 = animelem = 58
value = ceil(-10)
kill = 0
ID=3100

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 63
value = ceil(-210)
ID=3100

[State 8500, 1]
type = VarAdd
triggerall = var(0) = 1
trigger1 = animelem = 14
trigger2 = animelem = 18
trigger3 = animelem = 22
trigger4 = animelem = 26
trigger5 = animelem = 30
trigger6 = animelem = 34
trigger7 = animelem = 38
trigger8 = animelem = 42
trigger9 = animelem = 46
trigger10 = animelem = 50
trigger11 = animelem = 54
trigger12 = animelem = 58
var(15) = ceil(ifelse((7*fvar(0)*.5)<7,7,(7*fvar(0)*.5)))

[State 8500, 1]
type = VarAdd
triggerall = var(0) = 1
trigger1 = AnimElem = 63
var(15) = ceil(ifelse((238*fvar(0)*.5)<7,7,(238*fvar(0)*.5)))

[State 2601, EnvShake]
type = EnvShake
trigger1 = animelem = 1
trigger2 = animelem = 16
trigger3 = animelem = 30
;trigger4 = animelem = 44
;trigger5 = animelem = 58
time = 25
ampl = 5

[State 2601, EnvShake]
type = EnvShake
trigger1 = animelem = 63
time = 25
ampl = 8

[State 1100, Velocity]
type = VelAdd
trigger1 = animelemtime(70) > 0
y = .3

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelemtime(77) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = backedgebodydist < 0
value = 2501

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelemtime(77) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelem = 66
trigger1 = win
value = 3103

;---------------------------------------------------------------------------
;Start Win Pose
[Statedef 3103]
type    = S
movetype = I
physics = N
anim = 3103
;ctrl = 1

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 200, 7]
type = screenbound
trigger1 = 1
value = 1
movecamera = 30,0

[State 220, Voice]
type = PlaySnd
trigger1 = animelem = 7
value = 3300,0
channel = 0

[State 3810,5]
type = Changestate
trigger1 = time > 80
value = 3104

;---------------------------------------------------------------------------
;To Win Pose
[Statedef 3104]
type    = S
movetype = I
physics = N
ctrl = 1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 200, 7]
type = screenbound
trigger1 = 1
value = 1
movecamera = 30,0

[State 3810,5]
type = Changestate
trigger1 = p2movetype = A
value = 180
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 10995]
type = A
movetype = I
physics = N
ctrl = 0
anim=10995
sprpriority = 99

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 10995, VarSet]
type = VarSet
trigger1 = time=0
v = 0
value = random%360
ignorehitpause=1
persistent=0

[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = var(0)
ignorehitpause=1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(0)
ignorehitpause=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

;-----------------------------------------------------------------------
[Statedef 1070]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49
sprpriority = 1

[State 1070,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1070

;-----------------------------------------------------------------------
[Statedef 1071]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49

[State 1071,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5020

[State 1071,RecoverAnim]
type = ChangeAnim
trigger1 = AnimTime=0&&anim=5020
value = 5025

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

;-----------------------------------------------------------------------
[Statedef 1072]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49

[State 1072,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5001

[State 1071,RecoverAnim]
type = ChangeAnim
trigger1 = AnimTime=0&&anim=5001
value = 5006

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

;-----------------------------------------------------------------------
[Statedef 1073]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49
velset = -7,-4.5
anim = 5030

[State 1073,RecoverAnim]
type = ChangeAnim
trigger1 = Time = 0 && Selfanimexist(5035)
value = 5035

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1073, VelAdd]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 1073,RecoverAnim]
type = ChangeAnim
trigger1 = AnimTime=0&&anim=5035
value = 5050

[State 1073, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y > 20
value = 5100

;-----------------------------------------------------------------------
[Statedef 1074]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 9
sprpriority = 1

[State 1070,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1071

;-------------------------------------------------------------------------
[Statedef 1400]; Toss Wall Crush - Attempt
type    = S
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 2

[State 1400, Portrait Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Hyper Portrait"
ID = 20005
stateno = 20000
pos = 0,0
postype = back
facing = 1
supermovetime = 60

[State 1400, Background Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Super Background"
ID = 23005
stateno = 23000
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 60

[State 1400, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
anim = -1
sound = S10150,0
darken = 1
poweradd = -2000
p2defmul = 1

[State 1000, Super Spark]
type = Explod
trigger1 = Time = 0
anim = 10000
ID = 10000
pos = 0,-47
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = -3
removeongethit = 1

[State 1050,HitDef]
type = Hitdef
trigger1 = AnimElem = 2
attr = S, HT
priority = 2,Miss
getpower = 0
hitflag = M-
sparkno = -1
guard.dist = 0
p1facing = 1
p2facing = 1
hitsound = S0,800
p1stateno = 1410
p2stateno = 1420
p2getp1state = 1
hitsound = S0, 800
numhits= 0
ID=1400
fall = 1
fall.recover = 0

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 1410]; Toss Wall Crush - Launch Upwards
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1410
sprpriority = 2

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 135
TimeGap  = 1
FrameGap = 5
lenght = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,125
palmul = .65,.65,1

[State 1413, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = 1000, 0

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = S300,2

[State 1410, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = 0

[State 1410, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && animelemtime(2) < 0
id = 1400
pos = 37,-70

[State 1410, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0  && animelemtime(3) < 0
id = 1400
pos = 37,-90

[State 1410, TargetBind]
type = TargetBind
trigger1 = animelemtime(3) = 0
id = 1400
pos = 37,-68

[State 1410, TargetState]
type = TargetState
trigger1 = animelemtime(3) = 0
value = 1421
ID = 1400

[State 1410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1411
ctrl = 0

;-------------------------------------------------------------------------
[Statedef 1411]; Toss Wall Crush - Jump Backwards
type    = A
movetype= A
physics = N
ctrl = 0
velset = -7.7,-2.76
anim = 105
sprpriority = 0

[State 1412, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1411, Gravity]
type = Gravity
trigger1 = 1

[State 1411, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1411, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1411, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 1412
ctrl = 0

;-------------------------------------------------------------------------
[Statedef 1412]; Toss Wall Crush - Wait and go!
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1412
sprpriority = 0

[State 1411, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1413, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = 190, 0

[State 1412, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1412, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1412, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S47,0

[State 1412, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1411, ChangeState]
type = ChangeState
trigger1 = Time = 36
value = 1413
ctrl = 0

;-------------------------------------------------------------------------
[Statedef 1413]; Toss Wall Crush - Wall Crush!
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 0

[State 1413, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

;[State 1413, Voice]
;type = PlaySnd
;trigger1 = animelem = 3
;value = 200, 0

[State 1412, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1413, Hard Swing]
type = PlaySnd
trigger1 = animelem = 3
value = 300, 2

[State 1413, TargetState]
type = TargetState
trigger1 = AnimElem = 4
value = 2600
ID = 1400

[State 1000, Portrait Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Slowdown"
ID = 6750
stateno = 6750
pos = 0,0
facing = 1

[State 1413, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S2,8

[State 1413, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -345
ID = 1400
kill = 1

[State 1413, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 10130
ID = 1400
pos = 12,-40
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 25
freq = 256
ampl = -4
phase = 90

[State 1413, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 16.78

[State 1413, VelSet]
type =PosAdd
trigger1 = animelem = 4
x = 0

[State 1413, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = ifelse(backedgebodydist < 0 || frontedgebodydist < 0,2500,0)
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 1420]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 26
sprpriority = 1
velset = 0,0

[State 1420,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1420

[State 1412, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

;-----------------------------------------------------------------------
[Statedef 1421]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 26
sprpriority = 1

[State 1421, VelSet]
type = VelSet
trigger1 = Time = 0
y = -16

[State 1421, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 1412, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1421,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1421

;-------------------------------------------------------------------------
[Statedef 1800]; REVERSAL
type    = S
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 1800
sprpriority = 1

[State 4000, snd]
type = playsnd
trigger1 = !time
value = 1200,1
channel = 0
volume = 255

[State 1100, Portrait Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Hyper Portrait"
ID = 20005
stateno = 20000
pos = 0,0
postype = back
facing = 1
supermovetime = 60

[State 1000, Background Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Super Background"
ID = 23005
stateno = 23000
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 60

[State 1000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
anim = -1
sound = S10150,0
darken = 1
poweradd = -2000
p2defmul = 1

[State 1000, Super Spark]
type = Explod
trigger1 = Time = 0
anim = 10000
ID = 10000
pos = 5,-38
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = -3
removeongethit = 1

[State 4000, nhb]
type = nothitby
trigger1 = time<6
time = 1
value = SCA

[State 4000, strengthvar]
type = varset
trigger1=var(10)!=7
var(10)=7

[State 4000, nhb]
type = nothitby
trigger1 = time>=6
time = 1
value = ,AP

[State 4000, ReversalDef]
type = ReversalDef
trigger1 = Time = 1
priority = 7,Hit
reversal.attr = SCA ,NA, SA, HA
pausetime = 8,8
p1stateno = 1801
hitsound = S10100,6
sparkno = S7020+random%8

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 1801];Connect Attempt
type = S
movetype = A
physics = S
ctrl = 0
anim = 1801
velset = 0, 0
facep2 = 1

[State 1801,HitDef]
type = Hitdef
trigger1 = 1
attr = S, HT
priority = 7, Miss
getpower = 0
hitflag = MA
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1810
p2stateno = 1850
ground.velocity = -10
air.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
numhits = 0
p2getp1state = 1
hitsound = -1
fall = 1
fall.recover = 0
ID = 1800

[State 1801,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1810];Connect Attempt
type = S
movetype = A
physics = N
ctrl = 0
anim = 1810
velset = 0, 0
sprpriority = 2

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 20
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 255,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1810, VelSet]
type = VelSet
trigger1 = Time = 6
x = 9

[State 1810, TargetBind]
type = TargetBind
trigger1 = Animelemtime(2) < 0
id = 1800
pos = 47,-10

[State 1810, TargetBind]
type = TargetBind
trigger1 = Animelemtime(2) >= 0
id = 1800
pos = 60,-10

[State 1810, Explod]
type = Explod
trigger1 = target(1800),backedgebodydist <= 0
anim = 10110
ID = 1810
pos = 0,-40
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1810, Helper]
type = Helper
trigger1 = !NumHelper(2222)
helpertype = normal
name = "Camera Control"
ID = 2222
stateno = 2222
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1810, PlaySnd]
type = PlaySnd
trigger1 = target(1800),backedgebodydist <= 0
value = S10100,3

[State 1810, TargetState]
type = TargetState
trigger1 = target(1800),backedgebodydist <= 0
value = 1855
ID = 1800

[State 1810, ChangeState]
type = ChangeState
trigger1 = target(1800),backedgebodydist <= 0
value = 1815
ctrl = 0

[Statedef 1815];Jump Back
type = S
movetype = A
physics = N
ctrl = 0
anim = 1815
velset = 0, 0
sprpriority = 2

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 20
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 255,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1815, VelSet]
type = VelSet
trigger1 = AnimElemTime(2)=0
x = -1.1
y = -0.83

[State 1815, VelAdd]
type = VelAdd
trigger1 = statetype = A
y = 0.5

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1815, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A

[State 1815, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 20 && Vel Y > 0 && statetype = A
value = 1820
ctrl = 0

[Statedef 1820];Jump Back
type = S
movetype = A
physics = N
ctrl = 0
anim = 1820
velset = 0, 0
sprpriority = 2

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 20
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 255,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1820, VarSet]
type = VarSet
trigger1 = Time = 0
v = 23
value = 0

[State 1820, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1200,2

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S47,0

[State 1820, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0
v = 23
value = 1

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1820, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0
value = 1

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0
value = S10100,3

[State 1810, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0
anim = 10100
ID = 1810
pos = 0,-54
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0
value = -3
ID = 1800
kill = 0
absolute = 0

[State 1810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0
value = 3
ID = 1800

[State 1810, ChangeState]
type = ChangeState
trigger1 = var(23) >= 53
value = 1825
ctrl = 0

[Statedef 1825];FINAL KICK
type = S
movetype = A
physics = N
ctrl = 0
anim = 1825
velset = 0, 0
sprpriority = 2

[State 1820, VarSet]
type = VarSet
trigger1 = Time = 0
v = 23
value = 0

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 20
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 255,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

[State 1820, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(7) = 3
value = 1

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 3
value = S10100,5

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1810, Explod]
type = Explod
trigger1 = AnimElemTime(7) = 3
anim = 10130
ID = 1810
pos = 46,-74
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1810, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = 3

[State 1810, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
x = 8

[State 1810, TargetState]
type = TargetState
trigger1 = AnimElemTime(7) = 3
value = 2600
ID = 1800

[State 1810, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(6) = 0
x = 10

[State 1810, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 3
x = 10

[State 1000, Portrait Helper]
type = Null;Helper
trigger1 = AnimElemTime(7) = 3
helpertype = normal
name = "Slowdown"
ID = 6750
stateno = 6750
pos = 0,0
facing = 1

[State 1810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(7) = 3
value = -180
ID = 1800
kill = 1
absolute = 0

[State 1810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(7) = 8
value = 125
ID = 1800

[State 1810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1850];Shoved into the Wall
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1850, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1850

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[Statedef 1855];Shoved into the Wall
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1855, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1855

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

;-------------------------------------------------------------------------
[Statedef 2000]; Plate?
type    = S
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 2000
sprpriority = 1

[State 2000, snd]
type = null;playsnd
trigger1 = !time
value = 1200,1
channel = 0
volume = 255

[State 2000, superchargehelper]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = 2,-50
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2000, superchargepause]
type = superpause
trigger1 = time = 0
time = 60
anim = -1
sound = s7,0
poweradd = -3000
p2defmul = 1
darken = 0

[State 2000, nhb]
type = nothitby
trigger1 = time<6
time = 1
value = SCA

[State 2000, strengthvar]
type = varset
trigger1=var(10)!=7
var(10)=7

[State 2000, nhb]
type = nothitby
trigger1 = time>=6
time = 1
value = ,AP,AT

[State 2000, ReversalDef]
type = ReversalDef
trigger1 = Time = 1
priority = 7,Hit
reversal.attr = SCA ,NA, SA, HA
pausetime = 0,0
p1stateno = 2001
hitsound = S50,1
sparkno = S7020+random%8
numhits = 0

[State 2000, 3]
type = ChangeState
trigger1 = Time >=40
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 2001];Connect Attempt
type = S
movetype = A
physics = S
ctrl = 0
anim = 1801
velset = 0, 0
facep2 = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = 1
value = 255,0,0
time = 1
under = 0
ignorehitpause=1

[State 2001,HitDef]
type = Hitdef
trigger1 = 1
attr = S, HT
priority = 7, Miss
getpower = 0
hitflag = MA
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 2010
p2stateno = 21072
ground.velocity = -10
air.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
numhits = 0
p2getp1state = 1
hitsound = -1
fall = 1
fall.recover = 0
ID = 2000

[State 2001,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2010];Intro
type = S
movetype = A
physics = S
ctrl = 0
anim = 9741
velset = 0, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,17
volume = 255
abspan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 55
value = S24500,0
volume = 255
abspan = 0
channel = 3

[State 21072, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause = 1

[State 21072, AssertSpecial 2]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = timerfreeze
flag3 = nomusic
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = Time <= 1
value = 255,0,0
time = 1
under = 0
ignorehitpause=1

[State 0, EnvColor]
type = EnvColor
trigger1 = Time > 1
value = 0,0,0
time = 1
under = 1
ignorehitpause=1

[State 0, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
id = 2000
pos = 50,0

[State 0, Explod]
type = Explod
trigger1 = time = 59
anim = 24500
ID = 24500
pos = -55,-16
postype = back
facing = 1
bindtime = -1
removetime = -1
supermovetime = 99999999
pausemovetime = 99999999
scale = .7,.7
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 759
id = 24500

[State 0, Explod]
type = Explod
trigger1 = time = 759
anim = 24502
ID = 24502
pos = 0,0
postype = back
facing = 1
bindtime = -1
removetime = -1
supermovetime = 99999999
pausemovetime = 99999999
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 759
anim = 24501
ID = 24501
pos = 0,0
postype = back
facing = 1
bindtime = -1
removetime = -1
supermovetime = 99999999
pausemovetime = 99999999
scale = .5,.5
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 633
trigger2 = time = 663
trigger3 = time = 683
trigger4 = time = 693
anim = 24505
ID = 24505
pos = 98,113
postype = back
facing = 1
bindtime = -1
removetime = -2
supermovetime = 99999999
pausemovetime = 99999999
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 653
trigger2 = time = 673
trigger3 = time = 693
trigger4 = time = 713
anim = 24505
ID = 24505
pos = 232,113
postype = back
facing = 1
bindtime = -1
removetime = -2
supermovetime = 99999999
pausemovetime = 99999999
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 820
id = 24501

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 835
id = 24502

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 759
value = S1200,2
volume = 255
abspan = 0
channel = 3

[State 0, Pause]
type = Pause
trigger1 = Time = 0
time = 830
movetime = 830

[State 21072, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 0,0,0
ignorehitpause = 1

[State 21072, ChangeState]
type = ChangeState
trigger1 = Time = 835
value = 2020
ctrl = 0

[Statedef 2020];Ass Kick
type = S
movetype = A
physics = S
ctrl = 0
anim = 24510
velset = 0, 0

[State 21072, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause = 1

[State 21072, AssertSpecial 2]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = timerfreeze
flag3 = nomusic
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(2) != [0,1]
trigger1 = AnimElemTime(3) != [0,1]
trigger1 = AnimElemTime(4) != [0,1]
trigger1 = AnimElemTime(5) != [0,1]
trigger1 = AnimElemTime(6) != [0,1]
trigger1 = AnimElemTime(7) != [0,1]
trigger1 = AnimElemTime(8) != [0,1]
trigger1 = AnimElemTime(9) != [0,1]
trigger1 = AnimElemTime(10) != [0,1]
trigger1 = AnimElemTime(11) != [0,1]
trigger1 = AnimElemTime(12) != [0,1]
trigger1 = AnimElemTime(13) != [0,1]
trigger1 = AnimElemTime(14) != [0,1]
trigger1 = AnimElemTime(15) != [0,1]
trigger1 = AnimElemTime(16) != [0,1]
value = 0,0,0
time = 1
under = 0
ignorehitpause=1

[State 21072, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 0,0,0
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
id = 2000
pos = 63,0

[State 0, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(2) = [0,1]
trigger2 = AnimElemTime(3) = [0,1]
trigger3 = AnimElemTime(4) = [0,1]
trigger4 = AnimElemTime(5) = [0,1]
trigger5 = AnimElemTime(6) = [0,1]
trigger6 = AnimElemTime(7) = [0,1]
trigger7 = AnimElemTime(8) = [0,1]
trigger8 = AnimElemTime(9) = [0,1]
trigger9 = AnimElemTime(10) = [0,1]
trigger10 = AnimElemTime(11) = [0,1]
trigger11 = AnimElemTime(12) = [0,1]
trigger12 = AnimElemTime(13) = [0,1]
trigger13 = AnimElemTime(14) = [0,1]
trigger14 = AnimElemTime(15) = [0,1]
trigger15 = AnimElemTime(16) = [0,1]
value = 255,0,0
time = 1
under = 1
ignorehitpause=1

[State 1810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 0
trigger3 = AnimElemTime(4) = 0
trigger4 = AnimElemTime(5) = 0
trigger5 = AnimElemTime(6) = 0
trigger6 = AnimElemTime(7) = 0
trigger7 = AnimElemTime(8) = 0
trigger8 = AnimElemTime(9) = 0
trigger9 = AnimElemTime(10) = 0
trigger10 = AnimElemTime(11) = 0
trigger11 = AnimElemTime(12) = 0
trigger12 = AnimElemTime(13) = 0
trigger13 = AnimElemTime(14) = 0
trigger14 = AnimElemTime(15) = 0
trigger15 = AnimElemTime(16) = 0
value = -33
ID = 2000
kill = 0
absolute = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 0
trigger3 = AnimElemTime(4) = 0
trigger4 = AnimElemTime(5) = 0
trigger5 = AnimElemTime(6) = 0
trigger6 = AnimElemTime(7) = 0
trigger7 = AnimElemTime(8) = 0
trigger8 = AnimElemTime(9) = 0
trigger9 = AnimElemTime(10) = 0
trigger10 = AnimElemTime(11) = 0
trigger11 = AnimElemTime(12) = 0
trigger12 = AnimElemTime(13) = 0
trigger13 = AnimElemTime(14) = 0
trigger14 = AnimElemTime(15) = 0
trigger15 = AnimElemTime(16) = 0
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(8) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(14) = 0
value = S50,2
volume = 500

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 0
trigger3 = AnimElemTime(4) = 0
trigger4 = AnimElemTime(5) = 0
trigger5 = AnimElemTime(6) = 0
trigger6 = AnimElemTime(7) = 0
trigger7 = AnimElemTime(8) = 0
trigger8 = AnimElemTime(9) = 0
trigger9 = AnimElemTime(10) = 0
trigger10 = AnimElemTime(11) = 0
trigger11 = AnimElemTime(12) = 0
trigger12 = AnimElemTime(13) = 0
trigger13 = AnimElemTime(14) = 0
trigger14 = AnimElemTime(15) = 0
trigger15 = AnimElemTime(16) = 0
TIME = 10
freq = 200
ampl = -4
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(12) = 0
trigger5 = AnimElemTime(15) = 0
value = S50,3
volume = 500

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(7) = 0
trigger3 = AnimElemTime(10) = 0
trigger4 = AnimElemTime(13) = 0
trigger5 = AnimElemTime(16) = 0
value = S50,1
volume = 255

[State 0, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
trigger5 = AnimElemTime(6) = 0
trigger9 = AnimElemTime(10) = 0
trigger10 = AnimElemTime(11) = 0
trigger11 = AnimElemTime(12) = 0
trigger12 = AnimElemTime(14) = 0
trigger15 = AnimElemTime(15) = 0
value = 21071
ID = 2000

[State 0, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0
trigger3 = AnimElemTime(4) = 0
trigger4 = AnimElemTime(5) = 0
trigger6 = AnimElemTime(7) = 0
trigger7 = AnimElemTime(8) = 0
trigger8 = AnimElemTime(9) = 0
trigger12 = AnimElemTime(13) = 0
trigger15 = AnimElemTime(16) = 0
value = 21072
ID = 2000

[State 0, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 1114003
ID = 2000

[State 1810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimTime = 0
value = -5
ID = 2000
kill = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 2025
ctrl = 0

[Statedef 2025];Ass Kick
type = S
movetype = A
physics = S
ctrl = 0
anim = 2025
velset = 0, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1200,1
volume = 255

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 21072]
type = A
movetype = H
physics = N
ctrl = 0

[State 21072, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 0,0,0
ignorehitpause = 1

[State 21072,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 21072,RecoverAnim]
type = ChangeAnim
trigger1 = AnimTime=0&&anim=5012
value = 5017

[State 21072, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 21072, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

;-----------------------------------------------------------------------
[Statedef 21071]
type = A
movetype = H
physics = N
ctrl = 0

[State 21071, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 0,0,0
ignorehitpause = 1

[State 21071,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5002

[State 21071,RecoverAnim]
type = ChangeAnim
trigger1 = AnimTime=0&&anim=5002
value = 5007

[State 21071, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 21071, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

;------------------------------------------------------------------------
[Statedef 1900];Bouncy Bonanza
type    = A
movetype= A
physics = N
juggle  = 3
velset = 0,0
anim = 630
ctrl = 0
sprpriority = 2

[State 690, Limit]
type = VarSet
trigger1 = fvar(12) <= 0.34
fvar(12) = 0.34

[State 690, Dampening Damage]
type = VarAdd
trigger1 = time = 0 && (prevstateno = [600,690])
fvar(12) = -0.079

[State 1900, Portrait Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Hyper Portrait"
ID = 20005
stateno = 20000
pos = 0,0
postype = back
facing = 1
supermovetime = 60

[State 1900, Background Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Super Background"
ID = 23005
stateno = 23000
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 60

[State 1900, SuperPause]
type = SuperPause
trigger1 = animelem = 3
time = 60
anim = -1
sound = S10150,0
darken = 1
poweradd = -1000
p2defmul = 1

[State 1900, Super Spark]
type = Explod
trigger1 = animelem = 3
anim = 10000
ID = 10000
pos = 5,-38
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = -3
removeongethit = 1

[State 1900, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = A, HA
animtype  = high
damage    = 20, 10
priority = 4,Miss
guardflag = HA
pausetime = 0,0
sparkno = S10110
sparkxy = -10,-59
hitsound   = s10100, 2
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
p1stateno = 1910
p2stateno = 1920
p1facing = 1
p2facing = 1
ID = 1900
air.velocity = 0,0
hitonce = 1
;snap = 45,-15
getpower = 0,0

[State 1900, Hard Swing]
type = PlaySnd
trigger1 = animelem = 4
value = 300, 2

[State 1900, VelSet]
type = VelAdd
trigger1 = animelemtime(7) >= 0
y = .5

[State 1900, End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

;------------------------------------------------------------------------
[Statedef 1910];Bouncy Bonanza - Successful
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1910
ctrl = 0
sprpriority = 2

[State 1910, VarSet]
type = VarSet
trigger1 = Time = 0
v = 25
value = 0

[State 1910, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) < 0 && var(25) = 0
id = 1900
pos = 45,-15

[State 1910, TargetBind]
type = TargetBind
trigger1 = (target(1900),Pos Y < (Pos Y-15)) && (target(1900),vel Y < 0)
id = 1900
pos = 45,-15
ignorehitpause = 1

[State 1910, VarSet]
type = VarSet
trigger1 = AnimElemTime(4) < 0 && var(25) = 0
fvar(26) = (target(1900),Pos Y)

[State 1910, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) = -1 && var(25) < 7
id = 1900
pos = 45,-15

[State 1910, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 0 && var(25) < 7
value = 1

[State 1910, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 0 && var(25) < 6
value = 1921
ID = 1900

[State 1910, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 0 && var(25) = 6
value = 2599
ID = 1900

[State 1910, TargetVelSet]
type = TargetVelSet
trigger1 = AnimElemTime(4) = 0 && var(25) < 6 && target(1900),stateno = 1921
y = ifelse(abs(fvar(26))<100.0,10,-fvar(26)/4.0)
ID = 1900

[State 1910, TargetVelSet]
type = TargetVelSet
trigger1 = target(1900),stateno = 1922 && target(1900),Time=[0,1]
y = -(0.01*(abs(fvar(26))))/(1-(0.99**10))
ID = 1900

[State 1910, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0 && var(25) < 6
anim = 10120
ID = 1900
pos = 42,-77
postype = p1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1910, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0 && var(25) = 6
anim = 10650
ID = 1900
pos = 48,-47
postype = p1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 1910, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0 && var(25) < 6
value = S10100,2

[State 1910, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0 && var(25) = 6
value = S10100,5

[State 1910, BOING]
type = PlaySnd
trigger1 = target(1900),stateno = 1923
trigger1 = target(1900),time = 1
value = S1910,0

[State 1910, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0 && var(25) < 6
value = floor(-fvar(12)*30)
ID = 1900
kill = 0
absolute = 0

[State 1910, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0 && var(25) = 6
value = floor(-fvar(12)*25)
ID = 1900
kill = 1
absolute = 0

[State 1910, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
ignorehitpause = 1

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 5
lenght = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,125
palmul = .65,.65,1

[State 1030, AfterImageTime]
type = AfterImageTime
trigger1 = (time%2) = 0
time = 2

[State 1910, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 1915
value = 1915
ctrl = 0

[State 1910, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
value = ifelse(var(25)<6,1910,1915)
elem = 1

[State 1910, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(4) = 0
v = 25
value = 1

;------------------------------------------------------------------------
[Statedef 1915];Bouncy Bonanza - Successful
type    = A
movetype= A
physics = A
velset = -0.6,0
ctrl = 0
anim = 42
sprpriority = 1

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 5
lenght = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,125
palmul = .65,.65,1

[State 1030, AfterImageTime]
type = AfterImageTime
trigger1 = (time%2) = 0
time = 2

[State 1910, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------------------------------------------------------------------------
[Statedef 1920];Bouncy Bonanza - Successful
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1920, SelfState]
type = SelfState
trigger1 = !GetHitVar(isbound)
value =5050
ctrl=0

[State 1920, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1920

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
ignorehitpause = 1

;------------------------------------------------------------------------
[Statedef 1921];Bouncy Bonanza - Successful 2
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 1920, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1920

[State 1922, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 16 && Vel Y > 0
value = 1923
ctrl = 0

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
ignorehitpause = 1

;------------------------------------------------------------------------
[Statedef 1922];Bouncy Bonanza - Successful 2
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1
anim = 5160

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1922, 5100]
type = null;SelfState
trigger1 = Pos Y > 16 && Vel Y > 0
value = 5100
ctrl = 0

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
ignorehitpause = 1

;------------------------------------------------------------------------
[Statedef 1923];Bouncy Bonanza - Successful 3
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1
anim = 5100

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 0, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, VelMul]
type = VelMul
trigger1 = Time>1
y = 0.99

[State 0, PosSet]
type = PosSet
trigger1 = Time = 0
y = 16

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
ignorehitpause = 1

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 1923, ChangeState]
type = ChangeState
trigger1 = time >= 5
value = 1922
ctrl = 0

;====STAGGER
[Statedef 4460]
type    = U
movetype= H
physics = N
ctrl = 0
sprpriority = 1
facep2=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = ifelse((Statetype=S || Statetype=C),5012,5030)

[State 0, VelSet]
type = VelSet
trigger1 = Time=0 && (Statetype=S || Statetype=C)
x =  GetHitVar(xvel)*1.5
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = Time=0 && !(Statetype=S || Statetype=C)
x = GetHitVar(xvel)*1.15
y = GetHitVar(yvel)*0.85

[State 0, VelAdd]
type = VelAdd
trigger1 = !(Statetype=S || Statetype=C)
y = GetHitvar(yaccel)

[State 0, VelAdd]
type = VelMul
trigger1 = (Statetype=S || Statetype=C)
x = ifelse(statetype=S,Const(movement.stand.friction),Const(movement.crouch.friction))

[State 0, ChangeState]
type = SelfState
trigger1 = !(Statetype=S || Statetype=C)
trigger1 = Pos Y >10 && Vel Y > 0
value=5100

[State 0, ChangeState]
type = ChangeState
trigger1 = (Statetype=S || Statetype=C)
trigger1 = Time>40
value=4461

[Statedef 4461]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 1
anim=5017

[State 0, VelAdd]
type = VelMul
trigger1 = 1
x = Const(movement.stand.friction)

[State 0, ChangeAnim]
type = SelfState
trigger1 = AnimTime=0
value = 0
ctrl=1
