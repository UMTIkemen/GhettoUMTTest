; _____________________________________
;| Yukari Tanizaki from Azumanga Daioh |
;|             by Wickydoo             |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;-Add an easy switch for Ikemain (and ikemen in general)
;-Add win portrait.
;-Anything you guys might wanna add.

;===================<SKILL STATES>================

;---------------------------------------------------------------------------
; QCF + Y Setup
[Statedef 500]
type    = S
movetype= A
physics = S
poweradd= ceil(30*fvar(10))
juggle  = ifelse((var(37)&floor(exp(0*ln(2)) + 0.5)),2,0)
ctrl = 0
anim = 500+(var(10)-1)
velset = 0,0
facep2 = 1
sprpriority = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 500+(var(10)-1)

[State 220, End]
type = ChangeState
trigger1 = 1
value = 501
ctrl = 0

;------------------------------------------------------------------------
; QCF + Y
[Statedef 501]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, HitOverride]
type = HitOverride
triggerall = anim = 502
trigger1 = prevstateno != 505 && animelemtime(25)<0
attr = SCA,NA,NP,SA,SP
slot = 0
stateno = 505
time = 1
forceair = 0

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.75
ignorehitpause = 1
persistent = 0

[State 230, Voice]
type = PlaySnd
trigger1 = anim = 500
trigger1 = AnimElem = 4
trigger2 = anim = 501
trigger2 = AnimElem = 4
trigger3 = anim = 502
trigger3 = AnimElem = 25
value = 200, 0

[State Fire]
type = HitDef
triggerall = p2stateno != 5040
trigger1 = anim = 500
trigger1 = AnimElem = 4 || animelem = 5
trigger2 = anim = 501
trigger2 = AnimElem = 4 || animelem = 5
trigger3 = anim = 502
trigger3 = AnimElem = 25 || animelem = 26
attr = S,SA
hitflag = MAFD
guardflag = L
animtype = Hard
damage = 30,3
pausetime = 8,8
sparkno = S15004
guard.sparkno = S15011
sparkxy = -10,-12
hitsound = S500, 0
guardsound = S10140, 1
ground.type = Low
ground.slidetime = 21+5*(anim=500)
guard.slidetime = 19-5*(anim=502)
ground.hittime = 21+5*(anim=500)
guard.hittime = 19-5*(anim=502)
air.hittime = 21+5*(anim=500)
yaccel = 0.5
ground.velocity = -1.5
air.velocity = -4,-1.5
down.velocity = -4,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
down.bounce = 1
id = 500
kill = 1
guard.kill = 1
getpower = ceil(45*fvar(10)),22
givepower = 22,22

[State 0, Explod]
type = Explod
trigger1 = anim = 500
trigger1 = AnimElem = 4
trigger2 = anim = 501
trigger2 = AnimElem = 4
trigger3 = anim = 502
trigger3 = AnimElem = 25
anim = 505
ID = 500
pos = 41+5*(var(10)-1),0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ignorehitpause = 0

[State 0, ParentVarSet]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(37) = var(37) | floor(exp(0*ln(2)) + 0.5)
ignorehitpause = 1
[State I'm sorry for taking this None]
type = TargetState
trigger1 = numtarget(500)
trigger1 = var(31) = 1
trigger1 = !(target(500),ishelper) || (PlayerIDExist((target(500),id)) )
trigger1 = target(500),statetype != A && target(500),statetype != L
value = 4460
ID=500
ignorehitpause=1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 500
trigger1 = AnimElem = 6
trigger2 = anim = 501
trigger2 = AnimElem = 6
trigger3 = anim = 502
trigger3 = AnimElem = 27
movetype = I

[State 230, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Armor for C
[Statedef 505]
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
value = 501
ctrl = 0

;---------------
; Universal Projectile Destruction
[Statedef 999]
type = A
physics = N
movetype = I
anim = 9741 ; your blank animation
velset = 0, 0
ctrl = 0
movehitpersist = 1

[State 1112, nothitby]
type = nothitby
trigger1 = ishelper
time = 1
value = SCA
ignorehitpause = 1

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1112, End]
type = destroyself
triggerall = ishelper
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target, time <= 1 && !(target, hitshakeover)
ignorehitpause = 1

;-------------------------------------------------------------------------------
;DP+Z
[Statedef 510]
type = S
movetype = A
physics = S
ctrl = 0
anim = 825+(var(10)-1)
velset = 0, 0
juggle = ifelse((var(37)&floor(exp(1*ln(2)) + 0.5)),2,0)
facep2 = 1
poweradd = ceil(30*fvar(10))

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 830,StateTypeSet]
type = StateTypeSet
trigger1 = enemynear,statetype = A
trigger1 = AnimElemTime(2)>=0 && animelemtime(3)<0
trigger1 = P2StateNo != [150,155]
trigger1 = p2stateno != 5040
trigger1 = p2stateno != [5200,5210]
movetype = A

[State 830,HitDef]
type = Hitdef
trigger1 = enemynear,statetype = A
trigger1 = AnimElemTime(2)>=0 && animelemtime(3)<0
trigger1 = P2StateNo != [150,155]
trigger1 = p2stateno != 5040
trigger1 = p2stateno != [5200,5210]
attr = S, ST
priority = 1,Miss
getpower = 0
hitflag = AF
sparkno = -1
guard.dist = 0
p1facing = 1
p2facing = 1
hitsound = S0,800
p1stateno = 511
hitsound = -1
numhits= 0
ID=510
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
down.bounce = 1
fall.xvelocity = -1*(anim != 826)
fall.yvelocity = -3.5*(anim != 826)

[State 830,StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = enemynear,statetype != A
trigger3 = P2StateNo = [150,155]
trigger4 = p2stateno = 5040
trigger5 = p2stateno = [5200,5210]
movetype = I

[State 830,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;DP+Z Successful
[Statedef 511]
type = S
movetype = A
physics = N
anim = 831
velset = 0, 0
juggle = 0
poweradd = ceil(90*fvar(10))
sprpriority = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = !time
var(37) = var(37) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(510)
trigger1 = !time
value = 512
ID = 510


[State 831, NotHitBy]
type = NotHitBy
trigger1 = Time <= 24
value = SCA

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
id = 510
pos = 48,-109

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
id = 510
pos = 40,-107

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
id = 510
pos = 57,-34

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
id = 510
pos = 45,0

[State 831, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = S300,2

[State 831, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 0
value = 1

[State 1060, Spark]
type = Explod
trigger1 = AnimElemTime(4) = 0
Anim = 15003
id = 10100
pos = 42, 0
postype = P1
ownpal = 1
ontop = 1

[State 831, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -ceil(ifelse(var(2)>0,1.33,1.0)*(50+10*(var(10) = 3) - 20*(var(10) = 2))*fvar(10))
ID = 510
kill = 1
absolute = 0

[State Prorate]
type = VarSet
trigger1 = animtime = 0
fvar(10) = fvar(10) * 0.8
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S10100,5

[State 831, Drop]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 513
ID = 510

[State 831, ChangeState]
type = ChangeState
trigger1 = var(10) = 2
trigger1 = AnimElem = 8
value = 515

[State 831, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
;DP+Z Hurt 1
[Statedef 512]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = 45
sprpriority = 1

[State 820,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 832

;-----------------------------------------------------------------------
;DP+Z Hurt 2
[Statedef 513]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49
velset = -1.5,-12
anim = 5160

[State 833, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.75

[State 833, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 15
value = 5100

;DP+Y SUCC
[Statedef 515]
type = S
movetype = A
physics = N
anim = 835
velset = 0, 0
juggle = 0
poweradd = 0
sprpriority = 0

[State Prorate]
type = VarSet
trigger1 = animtime = 0
fvar(10) = fvar(10) * 0.7
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S10100,5
[State CRASH]
type = HitAdd
trigger1 = animelem = 4
value = 1
[State 0, Explod]
type = Explod
trigger1 = animelem = 4
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
trigger1 = animelem = 4
value = -ceil(ifelse(var(2)>0,1.33,1.0)*40*fvar(10))
ID = 510
kill = 1
[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 4
value = 15
ID = 510
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(510)
trigger1 = animelem = 4
value = 516
ID = 510
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 10
freq = 110
ampl = -5
phase = 90

[State 830,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Wall Bounce - shaking from the hit
[Statedef 516]
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
value = 517

;------------------
; Wall Bounce - Flying
[Statedef 517]
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
x = -15
y = 0

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
value = 518

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Wall Bounce - Slam
[Statedef 518]
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
trigger1 = Time >= 8
value = 558

[Statedef 231];Earthquake Foot EX
type    = S
movetype= A
physics = S
poweradd= -500
juggle  = 8
ctrl = 0
anim = 232
velset = 0,0
sprpriority = 1

;===========EX

[State 0, Blink White]
type = EnvColor
trigger1 = Time=0
value = 255,255,255
time = 2
under=0

[State 220, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 0, 57

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 40
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

;============END EX

[State 230, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 0, EnvShake]
type = EnvShake
triggerall = AnimElemTime(3)>=0 && AnimElemTime(4)<0
trigger1 = AnimElemTime(3)%8=0
time = 8
freq =80+AnimElemTime(3)
ampl = -6-(AnimElemTime(3)/10)

[State 230, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
hitflag = MAFD
animtype  = hard
damage    = 85,15
getpower = 0,0
guardflag = L
pausetime = 0,13
guard.pausetime = 0,8
sparkno = S10120
sparkxy = -10,-5
hitsound   = s10100,1
guardsound = s10140,0
ground.type = trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-12.4
fall =1
fall.recover = 0
givepower = 25,25
yaccel=.4
ID=231
nochainID=231,230
hitonce=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=5
value = S0,0

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(231)
triggerall = !moveguarded && !Movereversed && MoveHit
trigger1 = (Target(231),stateno!=[152,153]) && !(target(231),ishelper)
value = 232
ID = 231
ignorehitpause=1
persistent=0

[State 230, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Shockwave"
ID = 7101
stateno = 7101
pos = 0,0
postype = p1
facing = 1

[State 230, ES]
type = EnvShake
trigger1 = AnimElem = 5
Time = 20
ampl = 9
freq = 70

[State 230, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 232]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5035

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 233
ctrl = 0

[Statedef 233]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 1

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-------------------------------------------------------------------------
; QCB + Z
[Statedef 520]
type    = S
movetype= A
physics = N
juggle = ifelse((var(37)&floor(exp(2*ln(2)) + 0.5)),2,0)
poweradd= ceil(30*fvar(10))
ctrl = 0
velset = 0,0
anim = 520+(var(10)-1)
sprpriority = 1
facep2 = 1

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.7
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 520
trigger1 = animelemtime(5)<0
value = SCA

[State 0, ParentVarSet]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1

[State 240, Voice]
type = PlaySnd
trigger1 = animelem = 3
value = 200, 0

[State 240, Hard Swing]
type = PlaySnd
trigger1 = animelem = 2
value = 300, 2

[State 240, HitDef]
type = HitDef
triggerall = p2stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
animtype  = Up
damage    = 60+10*(anim-520), 6+10*(anim-520)
guardflag = M
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15011
sparkxy = -10,-57
hitsound = S50, 1
guardsound = S10140,1
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = 0,-9.5
guard.velocity = -6
air.velocity = 0,-9.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recover = 1
fall.recovertime = 40
getpower = ceil(90*fvar(10)),45
givepower = 45,45
yaccel = .5
ID = 500

[State 240, Voice]
type = PlaySnd
trigger1 = animelem = 3
value = 200, 0

[State 240, Hard Swing]
type = PlaySnd
trigger1 = animelem = 3
value = 300, 2

[State 0, Width]
type = Width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
value = 10,20
ignorehitpause = 1
[State 0, Width]
type = Width
trigger1 = animelemtime(5) >= 0
value = 37,20
ignorehitpause = 1

[State 240, VelSet]
type = PosAdd
trigger1 = anim = 520
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
x = (30+5*(anim=522))/2
[State 240, VelSet]
type = PosAdd
trigger1 = anim = 521 || anim = 522
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
x = (30+5*(anim=522))/3

[State 240, VelSet]
type = PosAdd
trigger1 = anim = [520,522]
trigger1 = animelemtime(5)=0
x = (30+5*(anim=522))

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; HCF + B/C End
[Statedef 530]
type    = A
movetype= A
physics = N
juggle = ifelse((var(37)&floor(exp(3*ln(2)) + 0.5)),2,0)
poweradd= ceil(30*fvar(10))
ctrl = 0
velset = 0,0
anim = 530+(var(10)-1)
sprpriority = 1
facep2 = 1

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.75
ignorehitpause = 1
persistent = 0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AP
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
triggerall = anim = 532
trigger1 = animelemtime(2)<1
value = SCA
ignorehitpause = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S300,2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5+0.25*(anim = 530)
[State 0, VelSet]
type = VelSet
trigger1 = !time && anim = 530
x = 1
y = -15
[State 0, VelSet]
type = VelSet
trigger1 = !time && anim = 531
x = 6.5
y = -5.5
[State 0, VelSet]
type = VelSet
trigger1 = !time && anim = 532
x = 3
y = -7.5

[State Shark Hit]
type = HitDef
triggerall = anim = 531
triggerall = p2stateno != 5040
trigger1 = animelem = 2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Back
priority = 4,Hit
damage = 95,9
pausetime = 8,8
sparkno = S10995+random%2
guard.sparkno = S15011
sparkxy = -12,-45
hitsound = S10100,2
guardsound = S10140,1
ground.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 15
yaccel = 0.5
ground.velocity = -5
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
id = 500
getpower = ceil(90*fvar(10)),45
givepower = 45,45
[State Shark Hit]
type = HitDef
triggerall = anim = 532
triggerall = p2stateno != 5040
trigger1 = animelemno(0) = 4
trigger1 = !movecontact && !movereversed
attr = A,SA
hitflag = MAFD
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 95,9
pausetime = 8,8
sparkno = S10995+random%2
guard.sparkno = S15011
sparkxy = -12,-45
hitsound = S10100,2
guardsound = S10140,0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 15
down.hittime = 15
yaccel = 0.5
ground.velocity = -5
air.velocity = -5.5,-2.5
down.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
id = 500
getpower = ceil(90*fvar(10)),45
givepower = 45,45

[State Shark Hit]
type = HitDef
triggerall = anim = 530
triggerall = p2stateno != 5040
trigger1 = animelem = 2
trigger1 = !movecontact && !movereversed
attr = A,SA
hitflag = MAFD
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 95,9
pausetime = 8,8
sparkno = S10995+random%2
guard.sparkno = S15011
sparkxy = -12,-45
hitsound = S10100,2
guardsound = S10140,0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 15
down.hittime = 15
yaccel = 0.5
ground.velocity = -5
air.velocity = -5.5,-2.5
down.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
id = 500
getpower = ceil(90*fvar(10)),45
givepower = 45,45

[State 0, ParentVarSet]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(37) = var(37) | floor(exp(3*ln(2)) + 0.5)
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 530
trigger1 = animelem = 4
movetype = I

[State 240, End]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 535
ctrl = 0

;-------------------------------------------------------------------------
; HCF + B/C End
[Statedef 535]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 536
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S50,0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------
; QCF + SC
[Statedef 550]
type    = S
movetype= A
physics = N
poweradd= -1000
juggle = ifelse((var(37)&floor(exp(4*ln(2)) + 0.5)),2,0)
ctrl = 0
velset = 0,0
sprpriority = 1
anim = 550

[State -2, Let's Rock! Detect]
type = Varset
trigger1 = ((prevstateno = [200,420]) || (prevstateno = [500,530]) || (prevstateno = [600,620]))
var(18) = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(2)>0
var(2) = -60

[State 0, PalFXWiz]
type = PalFX
trigger1 = ((prevstateno = [200,420]) || (prevstateno = [500,530]))
trigger1 = !time
time = 30
add = 256,256,256
mul = 256,256,256
sinadd = -256,-256,-256,120
invertall = 0
color = 256


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

[State 8000, PlaySnd]
type = PlaySnd
trigger1 = ((prevstateno = [200,420]) || (prevstateno = [500,530]))
trigger1 = !time
value = S8000,0
abspan = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = 1
value = 551
ctrl = 0

;------------------------------------------------------------------------
; QCF + SC
[Statedef 551]
type    = S
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
sprpriority = 1

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.75
ignorehitpause = 1
persistent = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = animelemtime(47)<0
attr = SCA,NA,NP,SA,SP,HA,HP
slot = 0
stateno = 554
time = 1
forceair = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 41
x = 8

[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(49)>=0
x = 0.85

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 43
value = S300,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 52
x = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(49)<0
time = 2

[State Fan Smack Hitdef]
type = HitDef
trigger1 = animelem = 47
attr = S,HA
hitflag = MAF
guardflag = M
animtype = Back
priority = 4,Hit
damage = 120,12
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15006
sparkxy = -12,-35
hitsound = S50,1
guardsound = S10100,6
ground.type = Low
ground.slidetime = 44
ground.hittime = 44
air.hittime = 44
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -12,-3.5
guard.velocity = -1.5
air.velocity = -12,-3.5
p2facing = 1
fall = 1
fall.recover = 0
id = 500
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 100,100

[State 0, ParentVarSet]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(37) = var(37) | floor(exp(4*ln(2)) + 0.5)
ignorehitpause = 1
[State I'm sorry for taking this None]
type = TargetState
trigger1 = numtarget(500)
trigger1 = var(31) = 1
trigger1 = !(target(500),ishelper) || (PlayerIDExist((target(500),id)) )
value = 555
ID=500
ignorehitpause=1
[State I'm sorry for taking this None]
type = TargetState
trigger1 = numtarget(500)
trigger1 = var(32) = 1
trigger1 = !(target(500),ishelper) || (PlayerIDExist((target(500),id)) )
trigger1 = target(500),statetype != A && target(500),statetype != L ;SAFE GUARD
trigger1 = 1 || (fvar(10):=(0.9 * fvar(10)))
value = 4460
ID=500
ignorehitpause=1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 50
movetype = I
[State 1000, Portrait Helper]
type = Helper
trigger1 = numtarget(500)
trigger1 = var(31) = 1
trigger1 = !(target(500),ishelper) || (PlayerIDExist((target(500),id)) )
helpertype = normal
name = "Slowdown"
ID = 6750
stateno = 6750
pos = 0,0
facing = 1
ignorehitpause = 1

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Armor for C
[Statedef 554]
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
value = 551
ctrl = 0

;------------------
; Wall Bounce - shaking from the hit
[Statedef 555]
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
value = 556

;------------------
; Wall Bounce - Flying
[Statedef 556]
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
value = 557

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Wall Bounce - Slam
[Statedef 557]
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
value = 558

;------------------
; Wall Bounce - Falling Off
[Statedef 558]
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
x = 1.5
y = -6

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

;====STAGGER
[Statedef 4460]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 0, SelfState]
type = SelfState
trigger1 = !alive
value = 5020

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = !selfanimexist(5180)
trigger1 = Time = 0
value = ifelse((GetHitVar(groundtype) = 1),5000,5010)
[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = selfanimexist(5180)
trigger1 = Time = 0
value = 5180

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 4461 ;HITG_SLIDE

[Statedef 4461]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = anim = [5000,5010]
trigger1 = animtime = 0
value = anim + 5

[State 0, VelSet]
type = HitVelSet
trigger1 = 1
x = 1

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = selfanimexist(5180) && selfanimexist(5181)
trigger1 = anim = 5180 && GetHitVar(hittime) < 3
value = anim + 1

[State 0, ChangeAnim]
type = SelfState
trigger1 = GetHitVar(hittime) < 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
; SC BEGINNING
[Statedef 560]
type    = S
movetype= A
physics = N
poweradd= -1000
juggle = ifelse((var(37)&floor(exp(4*ln(2)) + 0.5)),2,0)
ctrl = 0
anim = 560
velset = 0,0
sprpriority = 1

[State SHOW TIME COUNTER RESET]
type = VarSet
trigger1 = !time
var(10) = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(2)=0
trigger2 = animelemtime(3)=0
trigger3 = animelemtime(4)=0
trigger4 = animelemtime(5)=0
x = 10+5*(animelemtime(4)>=0)

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(2)>0
var(2) = -60

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.85
ignorehitpause = 1
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 10
add = 256,256,256
mul = 256,256,256
sinadd = -256,-256,-256,40
invertall = 0
color = 256

[State 8000, PlaySnd]
type = PlaySnd
trigger1 = ((prevstateno = [200,420]) || (prevstateno = [500,530]))
trigger1 = !time
value = S8000,0
abspan = 0

[State 0, VelSet]
type = PosAdd
trigger1 = animelem = 4
x = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S300,2

[State SHOW TIME!]
type = AfterImage
trigger1 = Time = 0
time = 2
trans = add
timegap = 2
framegap = 1
length = 20
palcontrast = 75,  225,  75
paladd =       -25, -5, -25
palmul =       .75, .8, .75
trans = add

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time
time = 2

[State Fan Smack Hitdef]
type = HitDef
trigger1 = animelem = 5
attr = S,HA
hitflag = MAF
guardflag = H
animtype = Back
priority = 4,Hit
damage = 50,5
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15011
sparkxy = -12,-35
hitsound = S10100,2
guardsound = S10140,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.hittime = 13
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -5.5
air.velocity = -3,-4.5
p2facing = 1
air.fall = 1
fall.recover = 0
id = 560
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
trigger1 = numtarget(560)
trigger1 = !(target(560),ishelper) || (PlayerIDExist((target(560),id)) )
trigger1 = target(560),statetype != A && target(560),statetype != L
value = S4000,1
abspan = 0
ignorehitpause = 1
persistent = 0
[State 0, ParentVarSet]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(37) = var(37) | floor(exp(4*ln(2)) + 0.5)
ignorehitpause = 1
[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = [1,4]
trigger1 = numtarget(560)
trigger1 = !(target(560),ishelper) || (PlayerIDExist((target(560),id)) )
trigger1 = target(560),statetype != A && target(560),statetype != L
trigger1 = command = "x"
value = 561
ctrl = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
movetype = I 


[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
; SC Doing The Doing of a Thing
[Statedef 561]
type    = S
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 2,0
sprpriority = 1

[State SHOW TIME COUNTER RESET]
type = VarAdd
trigger1 = !time
var(10) = 1
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(11) = 0
[State 0, VarSet]
type = VarSet
triggerall = time > 0
trigger1 = command = "x"
var(11) = 1
[State 0, VarSet]
type = VarSet
triggerall = time > 0
trigger1 = command = "y"
var(11) = 2
[State 0, VarSet]
type = VarSet
triggerall = time > 0
trigger1 = command = "z"
var(11) = 3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 561
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
trigger1 = var(10) = 4
value = 562
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
trigger1 = var(10) = 5
value = 563
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
trigger1 = var(10) = 6
value = 565


[State 0, VelSet]
type = VelSet
trigger1 = anim = 565
trigger2 = anim = 561 && animelemtime(6) >= 0
trigger3 = anim = 562 && animelemtime(6) >= 0
trigger4 = anim = 563 && animelemtime(6) >= 0
x = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 561 && animelem = 5
movetype = I 

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 562 && animelem = 3
movetype = I 

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 563 && animelem = 4
movetype = I 

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 565 && animelem = 6
movetype = I 

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.9
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 561
trigger1 = animelem = 4
trigger2 = anim = 562
trigger2 = animelem = 2
trigger3 = anim = 565
trigger3 = animelem = 4
value = S300,2-2*(anim = 562)

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time
time = 2

[State Fan Smack Hitdef]
type = HitDef
trigger1 = anim = 561
trigger1 = animelem = 4
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,5
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15011
sparkxy = -12,-35
hitsound = S10100,2
guardsound = S10140,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.hittime = 13
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -2.5
air.velocity = -3,-4.5
p2facing = 1
air.fall = 1
fall.recover = 0
id = 560
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State Fan Smack Hitdef]
type = HitDef
trigger1 = anim = 562
trigger1 = animelem = 2
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,3
pausetime = 5,5
sparkno = S10995+random%2
guard.sparkno = S15011
sparkxy = -12,-15
hitsound = S10100,1
guardsound = S10140,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.hittime = 13
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -2.5
air.velocity = -3,-4.5
p2facing = 1
air.fall = 1
fall.recover = 0
id = 560
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20


[State Fan Smack Hitdef]
type = HitDef
trigger1 = anim = 563
trigger1 = animelem = 3
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,3
pausetime = 5,5
sparkno = S10995+random%2
guard.sparkno = S15011
sparkxy = -12,-15
hitsound = S10100,2
guardsound = S10140,1
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.hittime = 18
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -2.5
air.velocity = -3,-4.5
p2facing = 1
air.fall = 1
fall.recover = 0
id = 560
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State Fan Smack Hitdef]
type = HitDef
trigger1 = anim = 565
trigger1 = animelem = 3
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,3
pausetime = 9,9
sparkno = S10650
guard.sparkno = S15011
sparkxy = -12,-40
hitsound = S10100,5
guardsound = S10140,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.hittime = 13
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -15,0
guard.velocity = -5
air.velocity = -15,0
p2facing = 1
fall = 1
fall.recover = 0
id = 565
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State 0, TargetState]
type = TargetState
triggerall = anim = 565
triggerall = NumTarget(565)
triggerall = var(31) = 1
trigger1 = !(target(565),ishelper) || (PlayerIDExist((target(565),id)) )
value = 555
ID = 565
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
triggerall = var(10) < 6
triggerall = movehit = [1,8]
triggerall = numtarget(560)
triggerall = !(target(560),ishelper) || (PlayerIDExist((target(560),id)) )
triggerall = target(560),statetype != A && target(560),statetype != L
trigger1 = (var(10) = 1 || var(10) = 4) && var(11) = 2
trigger2 = (var(10) = 2 || var(10) = 3) && var(11) = 1
trigger3 = (var(10) = 5) && var(11) = 3
value = 561
ctrl = 0

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------
; Air QCF + SC
[Statedef 570]
type    = A
movetype= A
physics = N
poweradd= -1000
juggle = ifelse((var(37)&floor(exp(4*ln(2)) + 0.5)),2,0)
ctrl = 0
anim = 570
sprpriority = 1

[State SHOW TIME COUNTER RESET]
type = VarSet
trigger1 = !time
var(10) = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(2)>0
var(2) = -60

[State 0, VelAdd]
type = VelAdd
triggerall = !time
trigger1 = prevstateno = [600,620]
x = 3

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.85
ignorehitpause = 1
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 10
add = 256,256,256
mul = 256,256,256
sinadd = -256,-256,-256,40
invertall = 0
color = 256

[State 8000, PlaySnd]
type = PlaySnd
trigger1 = ((prevstateno = [600,620]) || (prevstateno = [500,530]))
trigger1 = !time
value = S8000,0
abspan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S300,2

[State SHOW TIME!]
type = AfterImage
trigger1 = Time = 0
time = 2
trans = add
timegap = 2
framegap = 1
length = 20
palcontrast = 75,  225,  75
paladd =       -25, -5, -25
palmul =       .75, .8, .75
trans = add

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(6)<0
time = 2

[State Fan Smack Hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,5
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15011
sparkxy = -12,-25
hitsound = S10100,2
guardsound = S10140,1
ground.type = Low
ground.slidetime = 27
ground.hittime = 27
air.hittime = 27
guard.hittime = 27
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -6
guard.velocity = -3
airguard.velocity = -3,-2.5
air.velocity = 0,0;0,12
p2facing = 1
;air.fall = 1
fall.recover = 0
id = 570
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
trigger1 = numtarget(570)
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
trigger1 = target(570),statetype = A
value = S4000,1
abspan = 0
ignorehitpause = 1
persistent = 0
[State 0, ParentVarSet]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(37) = var(37) | floor(exp(4*ln(2)) + 0.5)
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = numtarget(570)
trigger1 = var(31) = 1
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
trigger1 = target(570),statetype = A
time = 1
id = 570
pos = 35,-15
ignorehitpause = 1
[State 0, TargetState]
type = TargetState
trigger1 = numtarget(570)
trigger1 = var(31) = 1
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
trigger1 = target(570),statetype = A
value = 575
ID = 570
ignorehitpause = 1
[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
persistent = 0
[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = [1,4]
trigger1 = numtarget(570)
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
trigger1 = target(570),statetype = A
trigger1 = command = "x"
value = 571
ctrl = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time && !movecontact
trigger2 = animelemtime(6)>=0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = vel y + pos Y >= 0
value = 52
ctrl = 0

;------------------------------------------------------------------------
; Air QCF + SC - Second State
[Statedef 571]
type    = A
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
sprpriority = 1

[State SHOW TIME COUNTER RESET]
type = VarAdd
trigger1 = !time
var(10) = 1
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(11) = 0
[State 0, VarSet]
type = VarSet
triggerall = time > 0
trigger1 = command = "x"
var(11) = 1
[State 0, VarSet]
type = VarSet
triggerall = time > 0
trigger1 = command = "y"
var(11) = 2
[State 0, VarSet]
type = VarSet
triggerall = time > 0
trigger1 = command = "z"
var(11) = 3

[State 0, ChangeState]
type = ChangeAnim
triggerall = !time
trigger1 = var(10) = [1,5]
value = 571
[State 0, ChangeState]
type = ChangeAnim
triggerall = !time
trigger1 = var(10) = 7
value = 572
[State 0, ChangeState]
type = ChangeAnim
triggerall = !time
trigger1 = var(10) = 8
value = 573
[State 0, ChangeState]
type = ChangeAnim
triggerall = !time
trigger1 = var(10) = 9
value = 574

[State Prorate]
type = VarSet
trigger1 = movehit = 1
fvar(10) = fvar(10) * 0.9
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S300,2

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelemtime(6)<0
time = 2

[State Fan Smack Hitdef]
type = HitDef
triggerall = anim = 571 || anim = 574
trigger1 = animelem = 3
attr = A,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,5
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15011
sparkxy = -12,-25
hitsound = S10100,2
guardsound = S10140,1
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
air.hittime = 10
guard.hittime = 10
yaccel = 0.75
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -6
guard.velocity = -3
airguard.velocity = -3,-2.5
air.velocity = 0,12
p2facing = 1
air.fall = 1
fall.recover = 0
id = 570
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State Fan Smack Hitdef]
type = HitDef
triggerall = anim = 572
trigger1 = animelem = 2
attr = A,HA
hitflag = AF+
animtype = Back
priority = 4,Hit
damage = 50,5
pausetime = 2,2
sparkno = -1
sparkxy = -12,-35
hitsound = S0,800
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
air.hittime = 10
guard.hittime = 10
yaccel = 0.75
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = 0,-14.5
air.velocity = 0,-14.5
p2facing = 1
fall = 1
fall.recover = 0
numhits = 1
id = 570
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20


[State Fan Smack Hitdef]
type = HitDef
trigger1 = anim = 573
trigger1 = animelem = 3
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Back
priority = 4,Hit
damage = 50,3
pausetime = 8,8
sparkno = S10650
guard.sparkno = S15011
sparkxy = -12,-35
hitsound = S10100,5
guardsound = S10140,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ground.velocity = -12,-3.5
guard.velocity = -1.5
air.velocity = -12,-3.5
p2facing = 1
fall = 1
fall.recover = 0
id = 570
kill = 1
guard.kill = 0
getpower = 0,0
givepower = 20,20

[State I'm sorry for taking this None]
type = TargetState
triggerall = anim = 573
trigger1 = numtarget(570)
trigger1 = var(31) = 1
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
value = 555
ID=570
ignorehitpause=1

[State 0, TargetBind]
type = TargetBind
trigger1 = numtarget(570)
trigger1 = var(31) = 1
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
trigger1 = target(570),statetype = A
time = 1
id = 570
pos = 35,-15
ignorehitpause = 1
[State 0, TargetState]
type = TargetState
triggerall = anim = 571 || anim = 574
trigger1 = numtarget(570)
trigger1 = var(31) = 1
trigger1 = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
trigger1 = target(570),statetype = A
value = 580
ID = 570
ignorehitpause = 1
[State 0, ChangeState]
type = ChangeState
triggerall = movehit = [1,8]
triggerall = numtarget(570)
triggerall = !(target(570),ishelper) || (PlayerIDExist((target(570),id)) )
triggerall = target(570),statetype = A
trigger1 = (var(10) = 1) && var(11) = 1
trigger2 = (var(10) = [2,3]) && var(11) = 2
trigger3 = (var(10) = 4) && var(11) = 3
trigger4 = (var(10) = 5) && var(11) = 1
trigger4 = 1 || (var(10) := 6)
trigger5 = (var(10) = 5) && var(11) = 2
trigger5 = 1 || (var(10) := 7)
trigger6 = (var(10) = 5) && var(11) = 3
trigger6 = 1 || (var(10) := 8)
value = 571
ctrl = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 571
trigger1 = animelemtime(6)>=0
trigger2 = anim = 572
trigger2 = animelemtime(6)>=0
trigger3 = anim = 573
trigger3 = animelemtime(6)>=0
trigger4 = anim = 574
trigger4 = animelemtime(6)>=0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 571
trigger1 = animelem = 4
trigger2 = anim = 572
trigger2 = animelem = 3
trigger3 = anim = 573
trigger3 = animelem = 4
trigger4 = anim = 574
trigger4 = animelem = 4
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = vel y + pos Y >= 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Air QCF + SC - Custom State
[Statedef 575]
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

[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5030

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 576
ctrl = 0

;---------------------------------------------------------------------------
; Air QCF + SC - Custom State 2
[Statedef 576]
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

[State 0, ChangeState]
type = SelfState
trigger1 = HitOver
value = 5040
ctrl = 0

;---------------------------------------------------------------------------
; Air QCF + SC - Custom State 3
[Statedef 580]
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

[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5030

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 581
ctrl = 0

;---------------------------------------------------------------------------
; Air QCF + SC - Custom State 4
[Statedef 581]
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

[State 0, HitFallVel]
type = HitVelSet
trigger1 = !time
x = 1
y = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time
y = GetHitVar(yaccel)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y + vel y >= 15
value = 582
ctrl = 0

;---------------------------------------------------------------------------
; Air QCF + SC - Custom State 4
[Statedef 582]
type = L
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3
anim = 5100

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 5100, 8]
type = GameMakeAnim
trigger1 = !Time
value = 62
pos = 0, 0
under = 0

[State 5100, 10]
type = PlaySnd
trigger1 = !Time
value = F7,2
volume = 255

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 || time >= 3
value = 583
ctrl = 0

;---------------------------------------------------------------------------
; Air QCF + SC - Custom State 4
[Statedef 583]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 3
anim = 5160

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, HitFallVel]
type = VelSet
trigger1 = !time
y = -12

[State 0, VelAdd]
type = VelAdd
trigger1 = time
y = GetHitVar(yaccel)

[State 0, ChangeState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y + vel y >= 15
value = 5110
ctrl = 0

;------------------------------------------------------------------------
[Statedef 640];Shark Attack
type    = A
movetype= A
physics = N
juggle  = 8
poweradd= 60
velset = 0,0
anim = 640
ctrl = 0
sprpriority = 1

[State 640, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.44

[State 640, HitDef]
type = HitDef
trigger1 = anim=640&&animelem=1
attr = A, SA
animtype  = high
damage    = 40, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-88
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5,-7
air.velocity = -2.5,-7

[State 640, HitDef]
type = HitDef
trigger1 = anim=640&&animelem=2
attr = A, SA
animtype  = high
damage    = 36, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-55
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5,-3
air.velocity = -2.5,-3

[State 640, HitDef]
type = HitDef
trigger1 = anim=640&&animelem=3
attr = A, SA
animtype  = high
damage    = 35, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-9
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5,1
air.velocity = -2.5,1

[State 640, Vel]
type = Velset
trigger1=anim=640&&animelem=1
x= 3
y= -8.1

[State 640, End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

;Shark Attack EX-------------------------------------------------------------
[Statedef 645];Shark Attack EX
type    = A
movetype= A
physics = N
juggle  = 8
poweradd= -500
velset = 0,0
anim = 645
ctrl = 0
sprpriority = 1

;===========EX

[State 0, Blink White]
type = EnvColor
trigger1 = Time=0
value = 255,255,255
time = 2
under=0

[State 220, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 0, 57

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 40
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

;============END EX

[State 640, VelAdd]
type = VelMul
trigger1 = AnimElemTime(6)<0
y = 0.95

[State 640, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6)>=0
y = 0.5

[State 640, HitDef]
type = HitDef
trigger1 = animelem=2||animelem=3||animelem=4||animelem=5
attr = A, SA
animtype  = high
damage    = 30, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-88
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5
air.velocity = -4.5
Nochainid=645,231
getpower=0,0

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = AnimElemTime(6)<0
ignorehitpause=1

[State 640, HitDef]
type = HitDef
trigger1 = animelem=6
attr = A, SA
animtype  = high
damage    = 20, 3
guardflag = HA
pausetime = 15,15
sparkno = S10110
sparkxy = -10,-55
hitsound   = s50, 1
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 13
ground.hittime  = 13
fall=1
fall.recovertime=8
ground.velocity = -10,-2
air.velocity = -10,-2
yaccel=.23
ID=645
Nochainid=645,231
getpower=0,0

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(645)
triggerall = !moveguarded && !Movereversed && MoveHit
trigger1 = (Target(645),stateno!=[152,153]) && !(target(645),ishelper)
value = 646
ID = 645
ignorehitpause=1
persistent=0

[State 640, Vel]
type = Velset
trigger1=animelem=1
x= 10.2
y= -0.5

[State 640, End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

[Statedef 646]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1
facep2=1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger2 = Time>25
value = 647
ctrl = 0

[Statedef 647]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1026, No scroll]
type = ScreenBound
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 648

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

[Statedef 648]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = Time=0
x = 15-backedgebodydist

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,2

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = F72
pos = -2,-35
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 0, ChangeState]
type = ChangeState
trigger1 = Time>8
value = 649
ctrl = 0

[Statedef 649]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 3.3,-5.5
sprpriority = 1
anim=5050

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.96

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;------------------------------------------------------------------------
[Statedef 641];Shark Attack 2
type    = A
movetype= A
physics = N
juggle  = 12
poweradd= 60
velset = 0,0
anim = 641
ctrl = 0
sprpriority = 1

[State 640, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.44

[State 640, HitDef]
type = HitDef
trigger1 = anim=641&&animelem=1
attr = A, SA
animtype  = high
damage    = 23, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-88
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5,-10
air.velocity = -2.5,-10

[State 640, HitDef]
type = HitDef
trigger1 = anim=641&&animelem=2
attr = A, SA
animtype  = high
damage    = 26, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-55
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5,-3
air.velocity = -2.5,-3

[State 640, HitDef]
type = HitDef
trigger1 = anim=641&&animelem=3
attr = A, SA
animtype  = high
damage    = 25, 5
guardflag = HA
pausetime = 6,9
sparkno = S10110
sparkxy = -10,-9
hitsound   = s10100, 0
guardsound = S10140, 0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 45
air.fall=1
fall.recover=40
ground.velocity = -5,1
air.velocity = -2.5,1

[State 640, Vel]
type = Velset
trigger1=anim=641&&animelem=1
x= 8.1
y= -5.5

[State 640, End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 642

;-----------------------------------------------------------------------
[Statedef 642]
type    = S
physics = S
anim = 642
ctrl = 0
sprpriority = 1
velset=0,0

[State 642, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 642, PlaySnd]
type = PlaySnd
trigger1 = anim=642&&animelem=1
value = s50,0
volume = -129

[State 642, Done]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl=1

;-----------------------------------------------------------------------
[Statedef 700] ;Chalk Toss
type = S
movetype = A
physics = S
anim = 700
poweradd = 0
ctrl = 0
velset = 0
facep2 = 1

[State 700, Hard Swing]
type = PlaySnd
trigger1 = AnimElem = 3
value = 300,2

[State 700, Projectile]
type = Projectile
trigger1 = AnimElem = 3
projpriority = 1
attr = S, SP
projID = 710
projanim = 710
projremovetime = 100
projmiSStime = 1
projhits = 1
projremove = 1
offset = 53,0
velocity = 6
hitflag = MA
damage = 30,1
getpower = 100,100
givepower = 20,20
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s10650
sparkxy = -15,-60
hitsound = S10100, 0
guardsound = S10140, 0
air.fall = 1
air.type = Low
ground.type = Low
ground.slidetime = 30
ground.hittime = 17
ground.velocity = -5
air.velocity = -4,-6
airguard.velocity = -3.6,-2
guard.hittime = 17
guard.velocity = -9

[State 700, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 701] ;FYUK U TOSS
type = S
movetype = A
physics = S
anim = 701
poweradd = -500
ctrl = 0
velset = 0
juggle=7
facep2 = 1

;===========EX

[State 0, Blink White]
type = EnvColor
trigger1 = Time=0
value = 255,255,255
time = 2
under=0

[State 220, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 0, 57

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 40
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

;============END EX

[State 700, Hard Swing]
type = PlaySnd
trigger1 = AnimElem = 3
value = 300,2

[State 700, Projectile]
type = Projectile
trigger1 = AnimElem = 3
projpriority = 3
attr = S, SP
projID = 712
projanim = 712
projremovetime = 100
projmiSStime = 1
projhits = 5
projremove = 1
offset = 53,-62
velocity = 9.4
accel=0.3,0
hitflag = MAF
damage = 18,1
getpower = 0,0
givepower = 20,20
animtype = Hard
guardflag = MA
pausetime = 3,12
sparkno = s10650
sparkxy = 0,0
hitsound = S10100, 0
guardsound = S10140, 0
air.fall = 1
air.type = Low
ground.type = Low
ground.slidetime = 30
ground.hittime = 17
ground.velocity = -7
air.velocity = -6,-3
airguard.velocity = -4.6,-2-2
guard.hittime = 17
guard.velocity = -10
air.juggle=12

[State 700, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Grab Attempt
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0, 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(13) = 0

[State 800, Tech Set]
type = varset
trigger1 = numenemy > 0
trigger1 = enemynear(0),statetype != A
trigger1 = enemynear(0),stateno = [0,999]
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(13) = 7

[State 800,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemtime(3) < 0
trigger1 = p2movetype != H
trigger1 = p2stateno != [150,155]
trigger1 = p2bodydist X < 20
movetype = A

[State 800,HitDef]
type = Hitdef
trigger1 = Animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = S, NT
priority = 1,Miss
getpower = 0
hitflag = M-
numhits = 1
sparkno = -1
p1facing = ifelse (command = "holdfwd", 1,-1)
p2facing = 1
p1stateno = 810
p2getp1state = 1
hitsound = -1
fall = 1
fall.recover = 0

[State 800,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
trigger2 = p2movetype = H
trigger3 = p2stateno = [150,155]
trigger4 = p2bodydist X >= 20
movetype = I

[State 800,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Grab Successful
[Statedef 810]
type = S
movetype = A
physics = N
anim = 810
velset = 0, 0
poweradd = 0
sprpriority = 2

[State 801, Tech Success]
type = ChangeState
triggerall = NumTarget
triggerall = var(13)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(13) > 0
var(13) = -1

[State 810,PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 0,800

[State 0, TargetState]
type = TargetState
trigger1 = !time
value = 820

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 10100, 2

[State 810, Explod]
type = Explod
trigger1 = animelem = 4
anim = 15002
ID = 10130
pos = 36,-81
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1

[State 810,0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810,Width]
type = Width
triggerall = AnimElem = 1
trigger1 = FrontEdgeDist < 40
trigger2 = BackEdgeDist < 40
edge = 40,40

[State 810,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4,<0
pos = 35,-75
[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4,=1
pos = 35,0
[State 810,TargetBind]
type = TargetState
trigger1 = AnimElem = 4,=1
value = 821

[State 810,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3,=1
value = -ceil(85*ifelse(var(2)>0,1.33,1.0))
kill = 1

[State 810,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 820]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 3

[State 820, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 820, screenbound]
type = screenbound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 4002

;------------------------------------------------------------------------
[Statedef 821]
type = A
movetype = H
physics = N
velset = -2.5,-6
ctrl = 0

[State 821,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
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

[State 821, veladd]
type = veladd
trigger1 = 1
y = .5

[State 821, SelfState]
type = SelfState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 5100

;-------------------------------------------------------------------------------
[Statedef 830];Floor Toss Attempt
type = S
movetype = A
physics = S
ctrl = 0
anim = 830
velset = 0, 0

[State 830,HitDef]
type = Hitdef
trigger1 = AnimElem = 2
trigger1 = P2StateNo != [150,155]
attr = S, ST
priority = 1,Miss
getpower = 0
hitflag = AF+
sparkno = -1
guard.dist = 0
p1facing = 1
p2facing = 1
hitsound = S0,800
p1stateno = 831
p2stateno = 832
p2getp1state = 1
hitsound = -1
numhits= 0
ID=830
fall = 1
fall.recover = 0

[State 830,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 25
movetype = I

[State 830,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 831];Floor Toss Successful
type = S
movetype = A
physics = N
anim = 831
velset = 0, 0
poweradd = 0
sprpriority = 0

[State 831, NotHitBy]
type = NotHitBy
trigger1 = Time <= 24
value = SCA

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
id = 830
pos = 48,-109

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
id = 830
pos = 40,-107

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
id = 830
pos = 57,-34

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
id = 830
pos = 45,0

[State 831, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = S300,2

[State 831, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 0
value = 1

[State 1060, Spark]
type = Explod
trigger1 = AnimElemTime(4) = 0
Anim = 10100
id = 10100
pos = 42, 0
postype = P1
ownpal = 1
ontop = 1

[State 831, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -54
ID = 830
kill = 1
absolute = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S10100,5

[State 831, Drop]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 833
ID = 830

[State 831, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 832]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = 49
sprpriority = 1

[State 820,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 832

;-----------------------------------------------------------------------
[Statedef 833]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49
velset = -3.5,8.76

[State 833, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 833, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 2
value = 5100

;-------------------------------------------------------------------------------
[Statedef 835];Floor Toss Attempt
type = S
movetype = A
physics = S
ctrl = 0
anim = 830
poweradd=-500
velset = 0, 0

;===========EX

[State 0, Blink White]
type = EnvColor
trigger1 = Time=0
value = 255,255,255
time = 2
under=0

[State 220, Hard Swing]
type = PlaySnd
trigger1 = Time = 0
value = 0, 57

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
TimeGap  = 1
FrameGap = 2
lenght = 40
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.65,.65

[State 10230, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 0
time = 2

;============END EX

[State 830,HitDef]
type = Hitdef
trigger1 = AnimElem = 2
trigger1 = P2StateNo != [150,155]
attr = S, ST
priority = 1,Miss
getpower = 0
hitflag = AF+
sparkno = -1
guard.dist = 0
p1facing = 1
p2facing = 1
hitsound = S0,800
p1stateno = 836
p2stateno = 832
p2getp1state = 1
hitsound = -1
numhits= 0
ID=830
fall = 1
fall.recover = 0

[State 830,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 25
movetype = I

[State 830,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 836];Floor Toss Successful
type = S
movetype = A
physics = N
anim = 831
velset = 0, 0
poweradd = 0
sprpriority = 0

[State 831, NotHitBy]
type = NotHitBy
trigger1 = Time <= 24
value = SCA

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
id = 830
pos = 48,-109

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
id = 830
pos = 40,-107

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
id = 830
pos = 57,-34

[State 1060, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
id = 830
pos = 45,0

[State 831, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = S300,2

[State 831, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 0
value = 1

[State 1060, Spark]
type = Explod
trigger1 = AnimElemTime(4) = 0
Anim = 10100
id = 10100
pos = 42, 0
postype = P1
ownpal = 1
ontop = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 831, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -80*fvar(12)
ID = 830
kill = 1
absolute = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command="holdup"&&AnimelemTime(4)>2
value = 40
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S10100,5

[State 831, Drop]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 837
ID = 830

[State 831, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 837]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 49
velset = -3.5,8.76

[State 833, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 833, SelfState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 2
value = 838

[Statedef 838]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 100
anim=5160
velset =  -1.8,-8.8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = F7,2

[State 0, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = F62
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 833, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.44

[State 833, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 2
value = 5100

;---------------------------------------------------------------------------
;Throw Tech Success
[StateDef 890]
type = S
physics = N
movetype = A;I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1


[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 1,9

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, TB]
type = TargetBind
trigger1 = time = 0
trigger1 = numtarget
pos = 0,0

[State 890, TS]
type = TargetState
trigger1 = time = 0
trigger1 = numtarget
value = 895

[State 890, TF]
type = TargetFacing
trigger1 = time = 0
trigger1 = numtarget
value = -1

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 15006
ID = 8000
pos = 0,-45
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State CURSES!]
type = PlaySnd
trigger1 = !time
value = S10100,6
channel = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = velmul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.85

[State 890, PA]
type = posadd
triggerall = numtarget
trigger1 = target,frontedgebodydist <= abs(target,vel x + target,const(size.ground.front))
trigger1 = target,vel x > 0.0
trigger2 = target,backedgebodydist <= abs(target,vel x - target,const(size.ground.back))
trigger2 = target,vel x < 0.0
x = cond((target,pos x - pos x) * facing > 0, -abs(target,vel x), abs(target,vel x))


[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1

;------------------------
;Target Throw Escape
[StateDef 895]
type = S
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 895, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = selfanimexist(5940)
value = 5940

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = !selfanimexist(5940)
trigger1 = selfanimexist(5910)
value = 5910

[State 895, CA]
type = ChangeAnim
trigger1 = time >= 20
trigger1 = anim = 130
value = 140

[State 895, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PP]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = velmul
trigger1 = time>=0
x = 0.85

[State 895, CS]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 8000];Let's Rock!
type = U
movetype = I
physics = N
ctrl = 0
poweradd = -1000
sprpriority = 5

[State 8000, NotHitBy]
type = NotHitBy
trigger1 = Time < 4
value = SCA
time = 1

[State 8000, Animation for Standing/Crouching]
type = ChangeAnim
trigger1 = statetype != A && Time = 0
value = ifelse(statetype = S,960,961)

[State 8000, Air animation]
type = ChangeAnim
trigger1 = statetype = A && Time = 0
value = 8000

[State 8000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 11
value = Vel X

[State 8000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 12
value = Vel Y

[State 8000, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 8000, PosFreeze]
type = PosFreeze
trigger1 = Time < 4
value = 1

[State 8000, BGPalFX]
type = BGPalFX
trigger1 = Time < 4
time = 1
add = 256,256,256
mul = 256,256,256

[State 8000, PalFX]
type = PalFX
trigger1 = Time < 4
time = 1
add = 0,0,0
mul = 0,0,0

[State 8000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8000,0
abspan = 0

[State 8000, Pause]
type = Pause
trigger1 = Time = 0
time = 4
movetime = 4
pausebg = 1

[State 8000, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 30
TimeGap  = 1
FrameGap = 2
lenght = 20
trans = add
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.65,.65

[State 8000, MoveAgain]
type = VelSet
trigger1 = statetype = A && Time >= 4
x = var(11)
y = var(12)

[State 8000, ChangeState]
type = ChangeState
trigger1 = statetype != A && Time >= 4
value = ifelse(statetype = S,0,11)
ctrl = 1

[State 8000, ChangeState]
type = ChangeState
trigger1 = statetype = A && Time >= 4
value = 50
ctrl = 1
