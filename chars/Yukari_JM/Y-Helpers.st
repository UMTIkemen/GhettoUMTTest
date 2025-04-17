; _____________________________________
;| Yukari Tanizaki from Azumanga Daioh |
;|             by Wickydoo             |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<HELPER STATES>================


;--------------------------------------------------------------
; Seeking  Firework helper
[Statedef 1101]
type = A
movetype = A
physics = N
anim = 1101
sprpriority = 2

[State 1101, Select 1]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,16

[State 1101, Select 2]
type = VarRandom
trigger1 = time = 0
v = 3
range = 0,16

[State 1101, Start Vel]
type = VelSet
trigger1 = time = 0
x = (var(2) - 8)
y = (var(3) - 8)

[State 1101, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AT, AP
stateno = 258
time = -1

[State 1101, Nothitby]
type = NotHitBy
trigger1 = Time = 0
value = , AA, AT
time = -1

[State 1101, Seek 1]
type = VelAdd
trigger1 = P2Dist X < 0
trigger1 = Time >= 10
x = -.6

[State 1101, Seek 2]
type = VelAdd
trigger1 = P2Dist X > 0
trigger1 = Time >= 10
x = .6

[State 1101, Seek 3]
type = VelAdd
trigger1 = P2Dist Y < 50
trigger1 = Time >= 10
y = -.6

[State 1101, Seek 4]
type = VelAdd
trigger1 = P2Dist Y > 50
trigger1 = Time >= 10
y = .6

[State 1101, Limit 1]
type = VelSet
trigger1 = vel X > 8
x = 8

[State 1101, Limit 2]
type = VelSet
trigger1 = vel X < -8
x = -8

[State 1101, Limit 3]
type = VelSet
trigger1 = vel Y > 8
y = 8

[State 1101, Limit 4]
type = VelSet
trigger1 = vel Y < -8
y = -8

[State 1101, Angle 0]
type = VarSet
trigger1 = Time = 0
fvar(1) = 5.5

[State 1101, Angle 1a]
type = VarSet
trigger1 = 1
fvar(2) = cos(fvar(1))

[State 1101, Angle 1b]
type = VarSet
trigger1 = 1
fvar(3) = 0 - sin(fvar(1))

[State 1101, Angle 2]
type = VarSet
trigger1 = 1
fvar(4) = fvar(2)*(p2dist y - 50) - fvar(3)*(p2dist x)

[State 1101, Angle 3]
type = VarAdd
trigger1 = 1
fvar(1) = ((fvar(4) < 0) * .1) - ((fvar(4) > 0) * .1)

[State 1101, Angle 4]
type = AngleSet
trigger1 = 1
value = floor (fvar(1) * 57.2957791)

[State 1101, Facing]
type = AngleDraw
trigger1 = 1

[State 1101, Attack]
type = HitDef
trigger1 = 1
attr = A, HP
damage    = 28,4
animtype = Back
getpower  = 0
hitflag = MAFD
guardflag = MA
priority = 3
sparkno = 2
sparkxy = 0,0
hitsound   = S0,13
guardsound = S10140,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1.5,-3
guard.velocity = -1.5
air.hittime = 15
air.velocity = -1.5,-3
airguard.velocity = -1.5,0
down.velocity = -1.5,-3
air.fall = 1
fall = 1
fall.recover = 0
p2stateno = 9000

[State 1101, Helper Hits Count Too]
type = ParentVarSet
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 1101, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 1101, Burning]
type = Explod
triggerall = p2movetype = H
triggerall = enemy, IsHelper = 0
trigger1 = movehit = 1
anim = 6200
pos = 0,-40
random = 80,80
facing = -1
postype = p2
bindtime = -1
ontop = 1
ownpal = 1

[State 1101, Burning]
type = Explod
triggerall = p2movetype = H
triggerall = enemy, IsHelper = 0
trigger1 = movehit = 1
anim = 6200
pos = 0,-40
random = 80,80
facing = -1
postype = p2
bindtime = -1
ontop = 1
ownpal = 1

[State 1101, Burning]
type = Explod
triggerall = p2movetype = H
triggerall = enemy, IsHelper = 0
trigger1 = movehit = 1
anim = 6200
pos = 0,-40
random = 80,80
facing = -1
postype = p2
bindtime = -1
ontop = 1
ownpal = 1

[State 1101, Var]
type = ParentVarSet
trigger1 = movecontact = 1
v = 0
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 80

[State 1102, Blow-up]
type = ChangeState
trigger1 = movecontact = 1
trigger2 = Time = 50
value = 1102

;--------------------------------------------------------------
; Normal Firework helper
[Statedef 1104]
type = A
movetype = A
physics = N
anim = 1101
sprpriority = 2

[State 1101, Start Vel]
type = VelSet
trigger1 = time = 0
x = 0
y = -7.5

[State 1101, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AT, AP
stateno = 258
time = -1

[State 1101, Nothitby]
type = NotHitBy
trigger1 = Time = 0
value = , AA, AT
time = -1

[State 1101, Angle 4]
type = AngleSet
trigger1 = 1
value = 45

[State 1101, Facing]
type = AngleDraw
trigger1 = 1

[State 1101, Attack]
type = HitDef
trigger1 = 1
attr = A, HP
damage    = 28,4
animtype = Back
getpower  = 0
hitflag = MAFD
guardflag = MA
priority = 3
sparkno = 2
sparkxy = 0,0
hitsound   = S0,13
guardsound = S10140,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-4
guard.velocity = 0
air.hittime = 15
air.velocity = 0,-4
airguard.velocity = 0,-1.5
airguard.velocity = 0,-1.5
air.fall = 1
fall = 1
fall.recover = 0
p2stateno = 9000

[State 1101, Helper Hits Count Too]
type = ParentVarSet
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 1101, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 1101, Burning]
type = Explod
triggerall = p2movetype = H
triggerall = enemy, IsHelper = 0
trigger1 = movehit = 1
anim = 6200
pos = 0,-40
random = 80,80
facing = -1
postype = p2
bindtime = -1
ontop = 1
ownpal = 1

[State 1101, Burning]
type = Explod
triggerall = p2movetype = H
triggerall = enemy, IsHelper = 0
trigger1 = movehit = 1
anim = 6200
pos = 0,-40
random = 80,80
facing = -1
postype = p2
bindtime = -1
ontop = 1
ownpal = 1

[State 1101, Burning]
type = Explod
triggerall = p2movetype = H
triggerall = enemy, IsHelper = 0
trigger1 = movehit = 1
anim = 6200
pos = 0,-40
random = 80,80
facing = -1
postype = p2
bindtime = -1
ontop = 1
ownpal = 1

[State 1101, Var]
type = ParentVarSet
trigger1 = movecontact = 1
v = 0
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 80

[State 1102, Blow-up]
type = ChangeState
trigger1 = movecontact = 1
trigger2 = Time = 60
value = 1102

;---------------------------------------------------------------------------
;Small Explosion
[Statedef 1102]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 6100

[State 258, Sound]
type = PlaySnd
trigger1 = Time = 0
value = S0,15

[State 258, Done]
type = DestroySelf
trigger1 = AnimTime = 0
;-----------------------------------------------------------------------
[Statedef 3105]
type    = U
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5000, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5110

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

;---------------------------------------------------------------------------
[Statedef 3106]
type    = A
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5000, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5012

[State 5000, 1]
type = ChangeAnim
trigger1 = time >= 0
value = anim

[State 9606, EnvColor]
type = palfx
trigger1 = time%2=1
add = 256,-64,-64
time = 1
persistent = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[Statedef 3107]
type    = L
movetype = H
physics = N
velset = 0,0
anim = 5110
sprpriority = -1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1100, ChangeState]
type = SelfState
trigger1 = time = 1
value = 5150
;---------------------------------------------------------------------------
[Statedef 3109]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -2

[State 1506, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3005, 2] ;Airborne opponents fall to ground
type = PosAdd
trigger1 = Pos Y < 0
Y = 14

[State 3668, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 9472

[State 3668, End]
type = ChangeState
trigger1 = Time > 1500
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3110]
type = A
movetype = I
physics = N
ctrl = 0
anim = 6000
velset = 0,0

[State 1505,0]
type = BindtoRoot
trigger1 = root,Pos Y > -160
pos = 0,0
postype = p1

[State 1100, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = ceil(pos Y)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 1201, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,-24

[State 6000, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = root,stateno != 3100
trigger2 = root,movetype = H
;---------------------------------------------------------------------------
[Statedef 7700]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7700
sprpriority = 2

[State 1505,0]
type = Bindtoparent
trigger1 = 1
pos = ceil(-84*root,const(size.xscale)),ceil(99*root,const(size.yscale))
postype = p1

[State 220, 3]
type = ChangeAnim
trigger1 = animelem != 2
trigger1 = root,stateno = 3100 && root,animelem = 35
value = 7700
elem = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 1100, DestroySelf]
type = changestate
trigger1 = root,stateno = 3101
trigger2 = root,movetype = H
value = 7701

[State 1100, changestate]
type = changestate
trigger1 = root,stateno = 3102 && root,animelemtime(1) = 14
value = 7702

;---------------------------------------------------------------------------
[Statedef 7701]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7701
sprpriority = 2

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1,16

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 9,24

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 17,32

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 25,40

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 33,48

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 41,56

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 49,64

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7710
stateno = 7710
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7711
stateno = 7711
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7712
stateno = 7712
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7713
stateno = 7713
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7714
stateno = 7714
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7715
stateno = 7715
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7716
stateno = 7716
postype = P1
pos = 0,0
pausemovetime = 999999999999*root,var(0)

[State 220, Voice]
type = PlaySnd
trigger1 = time = 24
value = 3100, 3

[State 220, Voice]
type = PlaySnd
trigger1 = time = 48+var(0)
trigger2 = time = 48+var(1)
trigger3 = time = 48+var(2)
trigger4 = time = 48+var(3)
trigger5 = time = 48+var(4)
trigger6 = time = 48+var(5)
trigger7 = time = 48+var(6)
value = 3100, 4
channel = 2+(gametime%3)

[State 2601, EnvShake]
type = EnvShake
trigger1 = time = 24
time = 25
ampl = 5

[State 1000, Spark]
type = Explod
trigger1 = time = 24
Anim = 8500
id = 8500
pos = 0, 0
postype = P1
ownpal = 1
ignorehitpause = 1
sprpriority = 3
scale = root,const(size.xscale),root,const(size.yscale)
pausemovetime = 999999999999*root,var(0)

[State 1000, Spark]
type = Explod
trigger1 = time = 48+var(0)
trigger2 = time = 48+var(1)
trigger3 = time = 48+var(2)
trigger4 = time = 48+var(3)
trigger5 = time = 48+var(4)
trigger6 = time = 48+var(5)
trigger7 = time = 48+var(6)
Anim = 8510
id = 8510
pos = 0, -100
random = 400,240
postype = P1
ownpal = 1
ignorehitpause = 1
sprpriority = 3
scale = root,const(size.xscale),root,const(size.yscale)
pausemovetime = 999999999999*root,var(0)

[State 9606, EnvColor]
type = palfx
trigger1 = time = 23
add = 256,256,152
time = 1

[State 9606, EnvColor]
type = palfx
trigger1 = time > 23
add = -128,-128,-128
time = 1
persistent = 1

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = 130

;---------------------------------------------------------------------------
[Statedef 7710]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7710
sprpriority = -1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.025
y = -var(3)*var(5)*.15

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7711]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7711
sprpriority = -1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.025
y = -var(3)*var(5)*.025

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7712]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7712
sprpriority = -1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.075
y = -var(3)*var(5)*.125

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7713]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7713
sprpriority = -1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.025
y = -var(3)*var(5)*.1

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7714]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7714
sprpriority = -1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = -var(2)*var(4)*.15
y = -var(3)*var(5)*.15

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7715]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7715
sprpriority = -1

[State 7715, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 7715, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 7715, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 7715, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 7715, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 7715, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 7715, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 7715, Velocity]
type = VelSet
trigger1 = time = 0
x = -var(2)*var(4)*.01
y = -var(3)*var(5)*.01

[State 7715, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 7715, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 7715, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 7715, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7716]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7716
sprpriority = -1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = -var(2)*var(4)*.2
y = -var(3)*var(5)*.1

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .025

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 7716, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7702]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7702
sprpriority = 2

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1,16

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 9,24

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 17,32

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 25,40

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 33,48

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 41,56

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 49,64

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7720
stateno = 7720
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7721
stateno = 7721
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7722
stateno = 7722
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7723
stateno = 7723
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7724
stateno = 7724
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7725
stateno = 7725
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State -2, BG]
type = Helper
trigger1 = animelem = 2
ID = 7726
stateno = 7726
postype = P1
pos = 0,8
pausemovetime = 999999999999*root,var(0)

[State 220, Voice]
type = PlaySnd
trigger1 = time = 236
value = 3100, 3

[State 220, Voice]
type = PlaySnd
trigger1 = time = 250+var(0)
trigger2 = time = 250+var(1)
trigger3 = time = 250+var(2)
trigger4 = time = 250+var(3)
trigger5 = time = 250+var(4)
trigger6 = time = 250+var(5)
trigger7 = time = 250+var(6)
value = 3100, 4
channel = 2+(gametime%3)

[State 2601, EnvShake]
type = EnvShake
trigger1 = time = 236
time = 25
ampl = 8

[State 1000, Spark]
type = Explod
trigger1 = time = 236
Anim = 8501
id = 8501
pos = 0, 0
postype = P1
ownpal = 1
ignorehitpause = 1
sprpriority = 5
scale = const(size.xscale)*1.5,const(size.yscale)*1.5
pausemovetime = 999999999999*root,var(0)

[State 4900, 16]
type = modifyExplod
trigger1 = Time = [237,249]
Id = 8501
scale = (1+(0.06*(Time-237)))*const(size.xscale),(1+(0.06*(Time-237)))*root,const(size.yscale)
ignorehitpause = 1

[State 1000, Spark]
type = Explod
trigger1 = time = 250+var(0)
trigger2 = time = 250+var(1)
trigger3 = time = 250+var(2)
trigger4 = time = 250+var(3)
trigger5 = time = 250+var(4)
trigger6 = time = 250+var(5)
trigger7 = time = 250+var(6)
Anim = 8510
id = 8510
pos = 0, -120
random = 640,320
postype = P1
ownpal = 1
ignorehitpause = 1
sprpriority = 3
scale = const(size.xscale),const(size.yscale)
pausemovetime = 999999999999*root,var(0)

[State 9606, EnvColor]
type = palfx
trigger1 = time = 235
add = 256,256,152
time = 1

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = 300
trigger2 = root,stateno = 3103

;---------------------------------------------------------------------------
[Statedef 7720]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7710
sprpriority = 2

[State 7720, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7730

;---------------------------------------------------------------------------
[Statedef 7730]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
y = 5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
y = -9

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
y = 8

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
y = -5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 5
y = 3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 6
y = -1

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7730

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7740

;---------------------------------------------------------------------------
[Statedef 7721]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7711
sprpriority = 2

[State 7721, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7731

;---------------------------------------------------------------------------
[Statedef 7731]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
y = -3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
y = 5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
y = -3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
y = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7731

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7741

;---------------------------------------------------------------------------
[Statedef 7722]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7712
sprpriority = 2

[State 7715, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7732

;---------------------------------------------------------------------------
[Statedef 7732]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
y = 3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
y = -5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
y = 3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
y = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7732

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7742

;---------------------------------------------------------------------------
[Statedef 7723]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7713
sprpriority = 0

[State 7715, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7733

;---------------------------------------------------------------------------
[Statedef 7733]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
y = -4

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
y = 8

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
y = -7

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
y = 6

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 5
y = -5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 6
y = 2

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7733

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7743

;---------------------------------------------------------------------------
[Statedef 7724]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7714
sprpriority = 0

[State 7724, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7734

;---------------------------------------------------------------------------
[Statedef 7734]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
x = -4

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
x = 8

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
x = -7

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
x = 6

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 5
x = -5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 6
x = 2

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7734

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7744

;---------------------------------------------------------------------------
[Statedef 7725]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7715
sprpriority = 0

[State 7725, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7735

;---------------------------------------------------------------------------
[Statedef 7735]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
x = 5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
x = -9

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
x = 7

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
x = -5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 5
x = 3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 6
x = -1

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7735

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7745

;---------------------------------------------------------------------------
[Statedef 7726]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7716
sprpriority = 0

[State 7726, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 65

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 14
value = 7736

;---------------------------------------------------------------------------
[Statedef 7736]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 1
x = -5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 2
x = 9

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 3
x = -7

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 4
x = 5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 5
x = -3

[State 1100, PosAdd]
type = PosAdd
trigger1 = Time = 6
x = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 3102 && root,animelem = 18
trigger2 = root,stateno = 3102 && root,animelem = 22
trigger3 = root,stateno = 3102 && root,animelem = 26
trigger4 = root,stateno = 3102 && root,animelem = 30
trigger5 = root,stateno = 3102 && root,animelem = 34
trigger6 = root,stateno = 3102 && root,animelem = 38
trigger7 = root,stateno = 3102 && root,animelem = 42
trigger8 = root,stateno = 3102 && root,animelem = 46
trigger9 = root,stateno = 3102 && root,animelem = 50
trigger10 = root,stateno = 3102 && root,animelem = 54
trigger11 = root,stateno = 3102 && root,animelem = 58
trigger12 = root,stateno = 3102 && root,animelem = 63
value = 7736

[State 1100, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3102 && root,animelem = 69
value = 7746

;---------------------------------------------------------------------------
[Statedef 7740]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.05
y = -var(3)*var(5)*.4

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7741]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.05
y = -var(3)*var(5)*.2

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7742]
type = A
movetype = I
physics = N
ctrl = 0

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.15
y = -var(3)*var(5)*.3

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7743]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -2

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = var(2)*var(4)*.05
y = -var(3)*var(5)*.25

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7744]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -2

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = -var(2)*var(4)*.3
y = -var(3)*var(5)*.3

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7745]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -2

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = -var(2)*var(4)*.02
y = -var(3)*var(5)*.08

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))

;---------------------------------------------------------------------------
[Statedef 7746]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -2

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 1

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 31

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 3

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 1,10

[State 1100, VarSet]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 1,10

[State 10000, Assert]
type = AssertSpecial
trigger1 = time > 2
trigger1 = time%2=var(0)
flag = invisible

[State 1100, Velocity]
type = VelSet
trigger1 = time = 0
x = -var(2)*var(4)*.4
y = -var(3)*var(5)*.25

[State 1100, Velocity]
type = VelAdd
trigger1 = 1
y = .035

[State 10000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, DestroySelf]
type = DestroySelf
trigger1 = time = (65+var(1))
;---------------------------------------------------------------------------
[Statedef 8600]
type = A
movetype = I
physics = N
ctrl = 0
anim = 8600
sprpriority = 3

[State 4110, ChangeAnim]
type = ChangeAnim
trigger1 = root,var(0) = 1
value = anim

[State 18600, PosSet]
type = PosSet
trigger1 = 1
x = enemynear,pos x
y = enemynear,pos y
ignorehitpause = 1

[State 8600, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 150

[State 4110, ChangeState]
type = ChangeState
trigger1 = !root,numtarget
value = 8601

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = root,stateno = 3100 && root,time > 60 && root,var(41) = 1

;---------------------------------------------------------------------------
[Statedef 8601]
type = A
movetype = I
physics = N
ctrl = 0
anim = 8601
sprpriority = 3

[State 18600, PosSet]
type = PosSet
trigger1 = 1
x = enemynear,pos x
y = enemynear,pos y
ignorehitpause = 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;------------------------------------------------------------------------------------------
[Statedef 2500]
type = S
physics = N
velset = 0,0
ctrl = 0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3000, AfterImage]
type = AfterImageTime
trigger1 = time = 0
value = 0

[State 2500, ChangeAnim]
type = ChangeAnim
trigger1 = frontedgebodydist < 0
trigger1 = time = 0
value = 5+var(49)

[State 2500, ChangeAnim]
type = ChangeAnim
trigger1 = frontedgebodydist >= 0
trigger1 = time = 0
trigger2 = anim = 5+var(49) && animtime = 0
value = 100+var(49)

[State 100, 2]
type = turn
trigger1 = anim = 5+var(49) && animelem = 1

[State 2500, ChangeAnim]
type = ChangeAnim
triggerall = anim = 100+var(49)
trigger1 = numtarget
trigger1 = target,stateno = [2600,2601]
trigger2 = var(42)
trigger2 = numenemy
trigger2 = enemynear,stateno = [2600,2601]
value = anim

[State 2500, ChangeAnim]
type = ChangeAnim
triggerall = anim = 100+var(49)
triggerall = animelem = 4
trigger1 = backedgebodydist < -50
trigger2 = frontedgebodydist < -50
value = anim
elem = 2

[State 2500, ScreenBound]
type = screenbound
trigger1 = backedgebodydist < 25 || frontedgebodydist < 25
value = 0

[State 2500, VelSet]
type = VelSet
triggerall = anim = 100+var(49)
trigger1 = animelem = 3
x = 10
persistent = 0

[State 2500, VelSet]
type = VelMul
triggerall = anim = 100+var(49)
trigger1 = animelemtime(4) > 0
x = .9

[State 2500, VelSet]
type = VelSet
triggerall = anim = 100+var(49)
trigger1 = !var(49) && AnimElem = 8
trigger2 = var(49) && AnimElemTime(11) = 1
x = 0

[State 2500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2500, ChangeState]
type = ChangeState
trigger1 = anim = 100+var(49)
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 2501]
type = S
movetype = I
physics = N
ctrl = 0
anim = var(49)
velset = 0,0

[State 200, 7]
type = screenbound
trigger1 = 1
value = 0

[State 2500, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = anim

[State 200, 7]
type = ChangeState
triggerall = backedgebodydist < 0 || frontedgebodydist < 0
trigger1 = numtarget
trigger1 = target,stateno != [2600,2601]
trigger2 = !numtarget
value = 2500

[State 200, 7]
type = ChangeState
triggerall = time > 3
trigger1 = numtarget
trigger1 = target,stateno != [2600,2601]
trigger2 = !numtarget
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2598]
type = A
movetype = H
physics = N
anim = 5012
ctrl=0

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 1

[State 3450,1]
type = ChangeAnim
triggerall = SelfAnimExist(5900) = 1
triggerall = time = 0
trigger1 = AuthorName = "Tin" || AuthorName = "Mouser" || AuthorName = "Hh" || AuthorName = "adamskie"
trigger2 = AuthorName = "M.M.R." || AuthorName = "ryokucha" || AuthorName = "Bad Darkness" || AuthorName = "Third"
trigger3 = AuthorName = "CAMRAT Type KOF" || AuthorName = "keyu" || AuthorName = "Warusaki3"
trigger4 = AuthorName = "NHK" || AuthorName = "Nyankoro" || AuthorName = "Nyan™Kiryu"
trigger5 = AuthorName = "aoao" || AuthorName = "SUMI" || AuthorName = "Mr.X-file"
trigger6 = AuthorName = "laiso_7" || AuthorName = "yu-go" || AuthorName = "MEKA"
trigger7 = AuthorName = "CROSSõCAT" || AuthorName = "CrossCat" || AuthorName = "y.y"
value = 5900

[State 2600, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 5900
value = anim

[State 2601, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 2500, ScreenBound]
type = screenbound
trigger1 = time >= 30
value = 0

[State 2601, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100

[State 2600, ChangeState]
type = ChangeState
trigger1 = backedgebodydist <= 0
trigger2 = time >= 60
value = 2601

;---------------------------------------------------------------------------
[Statedef 2599]
type = A
movetype = H
physics = N
velset = -15,0
anim = 5012

[State 3450,1]
type = ChangeAnim
triggerall = SelfAnimExist(5900) = 1
triggerall = time = 0
trigger1 = AuthorName = "Tin" || AuthorName = "Mouser" || AuthorName = "Hh" || AuthorName = "adamskie"
trigger2 = AuthorName = "M.M.R." || AuthorName = "ryokucha" || AuthorName = "Bad Darkness" || AuthorName = "Third"
trigger3 = AuthorName = "CAMRAT Type KOF" || AuthorName = "keyu" || AuthorName = "Warusaki3"
trigger4 = AuthorName = "NHK" || AuthorName = "Nyankoro" || AuthorName = "Nyan™Kiryu"
trigger5 = AuthorName = "aoao" || AuthorName = "SUMI" || AuthorName = "Mr.X-file"
trigger6 = AuthorName = "laiso_7" || AuthorName = "yu-go" || AuthorName = "MEKA"
trigger7 = AuthorName = "CROSSõCAT" || AuthorName = "CrossCat" || AuthorName = "y.y"
value = 5900

[State 2600, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 5900
value = anim

[State 2601, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 2500, ScreenBound]
type = screenbound
trigger1 = time >= 30
value = 0

[State 2600, ChangeState]
type = ChangeState
trigger1 = backedgebodydist <= 0
trigger2 = time >= 60
value = 2601

;---------------------------------------------------------------------------
[Statedef 2600]
type = A
movetype = H
physics = N
velset = -12,0
anim = 5012

[State 220, Position]
type = PosSet
triggerall = Time = 0
trigger1 = prevstateno = 3106
trigger2 = prevstateno = 3605
y = -10

[State 3450,1]
type = ChangeAnim
triggerall = SelfAnimExist(5900) = 1
triggerall = time = 0
trigger1 = AuthorName = "Tin" || AuthorName = "Mouser" || AuthorName = "Hh" || AuthorName = "adamskie"
trigger2 = AuthorName = "M.M.R." || AuthorName = "ryokucha" || AuthorName = "Bad Darkness" || AuthorName = "Third"
trigger3 = AuthorName = "CAMRAT Type KOF" || AuthorName = "keyu" || AuthorName = "Warusaki3"
trigger4 = AuthorName = "NHK" || AuthorName = "Nyankoro" || AuthorName = "Nyan™Kiryu"
trigger5 = AuthorName = "aoao" || AuthorName = "SUMI" || AuthorName = "Mr.X-file"
trigger6 = AuthorName = "laiso_7" || AuthorName = "yu-go" || AuthorName = "MEKA"
trigger7 = AuthorName = "CROSSõCAT" || AuthorName = "CrossCat" || AuthorName = "y.y"
value = 5900

[State 2600, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 5900
value = anim

[State 2601, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 2500, ScreenBound]
type = screenbound
trigger1 = time >= 30
value = 0

[State 9606, EnvColor]
type = palfx
trigger1 = prevstateno = 3106
trigger1 = time%2=1
add = 256,-64,-64
time = 1
persistent = 1
ignorehitpause = 1

[State 2600, ChangeState]
type = ChangeState
trigger1 = backedgebodydist <= 0
trigger2 = time >= 60
value = 2601

;---------------------------------------------------------------------------
[Statedef 2601]
type = A
movetype = H
physics = N
velset = 0,0

[State 2500, ScreenBound]
type = screenbound
trigger1 = 1
value = 0

[State 2601, Position]
type = PosAdd
trigger1 = Time < 12
x = ceil((12-ifelse(time%2=0,time,time-1))/4)*ifelse(time%2=1,1,-1)

[State 2600, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 2600, ChangeAnim]
type = ChangeAnim
trigger1 = Time < 12
value = anim

[State 2601, ChangeAnim] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = time = 12
trigger1 = SelfAnimExist(5051)
value = 5051

[State 2601, ChangeAnim] ;Change anim when done with transition
type = ChangeAnim
trigger1 = time = 12
trigger1 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5050
persistent = 0

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = time >= 12
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 2601, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20

[State 2601, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
time = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = F5,4

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = F72
pos = -10,-45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 100, 2]
type = turn
trigger1 = backedgebodydist <= 0
trigger1 = time = 12

[State 2601, Vel]
type = VelSet
trigger1 = time = 12
x = -3.5
y = -4.3

[State 2601, Vel]
type = VelAdd
trigger1 = time > 12
y = .47

[State 2601, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100
;---------------------------------------------------------------------
[Statedef 7100] ;Dash Dust
physics = N
velset = 0,0
anim = 9741

[State 7100, dust]
type = explod
trigger1 = time = 1
anim = 7100
ID = 7100
pos = -30,0
postype = p1
sprpriority = 3
postype = p1
scale = 1,1

[State 7100, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 7

[State 7100, assert]
type = assertspecial
trigger1 = 1
flag = invisible

[State 7100, end]
type = destroyself
trigger1 = time >= 7
;---------------------------------------------------------------------
[Statedef 7101] ;Shockwave
physics = N
velset = 0,0
anim = 9741

[State 7101, Shockwave]
type = explod
trigger1 = time = 1
anim = 231
ID = 231
pos = 42,0
postype = p1
sprpriority = -1
postype = p1
scale = 1,1

[State 7101, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 17

[State 7101, assert]
type = assertspecial
trigger1 = 1
flag = invisible

[State 7101, end]
type = destroyself
trigger1 = time>=17
;-----------------------------------------------------------------------
[Statedef 7650]
physics = N
velset = 0,0
anim = 6000

[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,1

[State 7650, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 100

[State 7650, end]
type = destroyself
trigger1 = roundstate = 2
;========================<SUPERCHARGE>=============================
[Statedef 7500]
physics = N
velset = 0,0
anim = 9741

[State 7500, var]
type = parentvarset
trigger1 = time && root,var(20)>0
var(20)=-1

[State 7500, bgpalfx1]
type = bgpalfx
trigger1 = !time && root,var(10)=5
time = 40
invertall = 1
add = 100,100,100
sinadd = -710,-710,-355,160

[State 7500, bgpalfx1]
type = bgpalfx
trigger1 = time = 40 && root,var(10)=5
time = 5
add = -255,-255,-255
sinadd = 255,255,255,20

[State 7500, bgpalfx1]
type = bgpalfx
trigger1 = !time && root,var(10)=6
time = 48
invertall = 1
add = 100,100,100
sinadd = -710,-710,-355,192

[State 7500, bgpalfx1]
type = bgpalfx
trigger1 = time = 48 && root,var(10)=6
time = 5
add = -255,-255,-255
sinadd = 255,255,255,20

[State 7500, bgpalfx1]
type = bgpalfx
trigger1 = !time && root,var(10)=7
time = 55
invertall = 1
add = 100,100,100
sinadd = -710,-710,-355,220

[State 7500, bgpalfx1]
type = bgpalfx
trigger1 = time=55 && root,var(10)=7
time = 5
add = -255,-255,-255
sinadd = 255,255,255,20

[State 7500, fade]
type = palfx
trigger1 = !time
time = 40
sinadd = -255,-255,-255,160

[State 7500, fade]
type = palfx
trigger1 = time = 40
time = -1
add = -255,-255,-255

[State 7500, spiral]
type = helper
trigger1 = !time && root,var(10)>=6
helpertype = normal
stateno = 7509
ID = 7509
name = "Super Charge Spiral"
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, portrait]
type = helper
trigger1 = !time && root,var(10)=7
helpertype = normal
stateno = 7510
ID = 7510
name = "Super Charge Portrait"
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, main]
type = explod
trigger1 = !time
anim = 7500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
supermovetime = 300
ownpal = 1

[State 7500, circle]
type = explod
trigger1 = !time
anim = 7501
ID = 7501
sprpriority = 5
postype = p1
removetime = 43
supermovetime = 300

[State 7500, circle]
type = explod
trigger1 = !time
anim = 7502
ID = 75021
sprpriority = 5
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, circle]
type = explod
trigger1 = time = 7
anim = 7502
ID = 75022
sprpriority = 5
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, circle]
type = explod
trigger1 = time = 14
anim = 7502
ID = 75023
sprpriority = 5
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, circle]
type = explod
trigger1 = time = 21
anim = 7502
ID = 75024
sprpriority = 5
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, circle]
type = explod
trigger1 = time = 28
anim = 7502
ID = 75025
sprpriority = 5
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, shrink]
type = modifyexplod
trigger1 = root,var(10)=5
ID = 7500
scale = 1.5-(.033*time),1.5-(.033*time)

[State 7500, shrink]
type = modifyexplod
trigger1 = root,var(10)=6
ID = 7500
scale = 1.5-(.028*time),1.5-(.028*time)

[State 7500, shrink]
type = modifyexplod
trigger1 = root,var(10)=7
ID = 7500
scale = 1.5-(.025*time),1.5-(.025*time)

[State 7500, shrink]
type = modifyexplod
trigger1 = numexplod(7501)
ID = 7501
scale = .25+(.075*time),.25+(.075*time)

[State 7500, shrink]
type = modifyexplod
trigger1 = numexplod(75021)
ID = 75021
scale = .25+(.0375*time),.25+(.0375*time)

[State 7500, shrink]
type = modifyexplod
trigger1 = numexplod(75022)
ID = 75022
scale = .25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 7500, shrink]
type = modifyexplod
trigger1 = numexplod(75023)
ID = 75023
scale = .25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 7500, shrink]
type = modifyexplod
trigger1 = numexplod(75024)
ID = 75024
scale = .25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 7500, shrink]
type = modifyexplod
trigger1 = numexplod(75025)
ID = 75025
scale = .25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 7500, safety]
type = removeexplod
trigger1 = root,var(10)=5 && time>=46
trigger2 = root,var(10)=6 && time>=54
trigger3 = root,var(10)=7 && time>=61

[State 7500, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 61

[State 7500, end]
type = destroyself
trigger1 = root,var(10)=5 && time>=46
trigger2 = root,var(10)=6 && time>=54
trigger3 = root,var(10)=7 && time>=61

;========================<KANJI B.G.>=============================
[Statedef 7610]
physics = N
velset = 0,0
anim = 9741

[State 7610, assert]
type = assertspecial
trigger1 = time<120
flag = nomusic

[State 7610, snd]
type = playsnd
trigger1 = !time
value = 1101,0
volume = 255

[State 7610, black]
type = bgpalfx
trigger1 = time<120
time = 2
add = -255,-255,-255

[State 7610, black]
type = bgpalfx
trigger1 = time=120
time = 60
add = -255,-255,-255
sinadd = 255,255,255,240

[State 7610, fade]
type = palfx
trigger1 = time=120
time = 60
sinadd = -255,-255,-255,240

[State 7610, kanji]
type = explod
trigger1 = !time
anim = 7610
ID = 7610
sprpriority = -5
postype = left
pos = 160,120
scale = .5,.5
bindtime = -1

[State 7610, shrink]
type = modifyexplod
trigger1 = time<6
ID = 7610
scale = (5.5-time),(5.5-time)

[State 7610, shrink]
type = modifyexplod
trigger1 = time>=6
ID = 7610
scale = .5,.5

[State 7610, flamebg]
type = explod
trigger1 = !time
anim = 7611
ID = 7611
sprpriority = 5
postype = left
pos = 0,0
bindtime = -1
removetime = -1
pausemovetime = 300
supermovetime = 300

[State 7610, assert]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
ignorehitpause = 1

[State 7610, assert]
type = assertspecial
trigger1 = time<120
flag = noFG
ignorehitpause = 1

[State 7610, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 180

[State 7610, safety]
type = removeexplod
trigger1 = time>= 180

[State 7610, end]
type = destroyself
trigger1 = time>= 180

;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7510]
physics = N
anim = 9741

[State 7510, assert]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
ignorehitpause = 1

[State 7510, portrait]
type = explod
trigger1 =!time
anim = 7510
ID = 7510
postype = back
pos = 160,120
under = 1
bindtime = -1
removetime = 60
pausemovetime = 300
supermovetime = 300

[State 7510, shrink]
type = modifyexplod
trigger1 = time <45
ID = 7510
scale = .5,.5

[State 7510, shrink]
type = modifyexplod
trigger1 = time>=45
ID = 7510
scale = .5225+(.13*(time-45)),.5225+(.13*(time-45))

[State 7510, fade]
type = palfx
trigger1 = time = 45
time = 15
sinadd = -255,-255,-255,60

[State 7510, safety]
type = removeexplod
trigger1 = time>=61

[State 7510, end]
type = destroyself
trigger1 = time>=61
;========================<SUPERCHARGE SPIRAL>=============================
[Statedef 7509]
physics = N
anim = 7509
sprpriority = 5

[State 7509, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, spin]
type = angleadd
trigger1 = 1
value = -8

[State 7509, spin]
type = angledraw
trigger1 = root,var(10)=6
scale = 1-(time/53.0),1-(time/53.0)

[State 7509, trans]
type = trans
trigger1 = root,var(10)=6
trans = addalpha
alpha = floor(4.83*time),256

[State 7509, spin]
type = angledraw
trigger1 = root,var(10)=7
scale = 1-(time/60.0),1-(time/60.0)

[State 7509, trans]
type = trans
trigger1 = root,var(10)=7
trans = addalpha
alpha = floor(4.27*time),256

[State 7509, end]
type = destroyself
trigger1 = root,var(10)=6 && time>=54
trigger2 = root,var(10)=7 && time>=61
;-----------------------------------------------------------------------
[Statedef 20000] ;Hyper Portrait
physics = N
anim = 9741

[State 20000, Enter]
type = Explod
trigger1 = !time
anim = 20000
ID = 20010
pos = 15,-212
postype = back
facing = 1
vel = 0,15.07
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
sprpriority = 7
removeongethit = 1

[State 20000, Stop Pic]
type = RemoveExplod
trigger1 =  time = 15
id =  20010

[State 20000, Pause] ;Freeze Portrait
type = Explod
trigger1 = Time = 15
anim = 20000
ID = 20020
pos = 15,14
postype = back
facing = 1
bindtime = -1
vel = 0,0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
sprpriority = 7
removeongethit = 1

[State 20000, Unpause Pic]
type = RemoveExplod
trigger1 = time = 45
id =  20020

[State 20000, Exit] ;Portrait Exit
type = Explod
trigger1 = Time = 45
anim = 20000
id = 20030
postype = back
pos = 15,14
vel = 0,15.07
facing = 1
ownpal = 1
sprpriority = 7
pausemovetime = 99999999999999
supermovetime = 99999999999999
persistent = 0

[State 2310, Kill Super Cancel Exit]
type = RemoveExplod
trigger1 =  time > 60
id =  20030

[State 20000, end]
type = destroyself
trigger1 = time > 60
;-----------------------------------------------------------------------
[Statedef 23000]; Super Background
physics = N
anim = 9741

[State 23000, Helper 1]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Flame 1"
ID = 23001
stateno = 23001
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 60

[State 23000, Helper 2]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Flame 2"
ID = 23002
stateno = 23002
pos = 0,-240
postype = back
keyctrl = 0
supermovetime = 60

[State 23000, end]
type = destroyself
trigger1 = time > 60
;----------------------------------------------------------------------
[Statedef 23001]; Flame 1
physics = N
anim = 23000

[State 23001, AngleDraw]
type = AngleDraw
trigger1 = 1
value = (2*time)

[State 23001, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = floor(256-(4.26*time)),256

[State 23001, end]
type = destroyself
trigger1 = time > 60
;----------------------------------------------------------------------
[Statedef 23002]; Flame 2
physics = N
anim = 23000

[State 23001, AngleDraw]
type = AngleDraw
trigger1 = 1
value = (-2*time)

[State 23001, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = floor(256-(4.26*time)),256

[State 23001, end]
type = destroyself
trigger1 = time > 60
;---------------------------------------------------------------------------
; Hit by fire (SHAKE)
[Statedef 9000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9000, 0]
type = PalFX
trigger1 = Time = 0
time = ifelse(SelfAnimExist(7697),15,40)
add = 40,-70,-200
sinadd = 40,30,0,10
color = 0
invertall = 1

[State 9000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 9000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 9000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 9000, Burned]
type = ChangeAnim
trigger1 = SelfAnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 9000, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 9001

[State 9000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 9000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 9000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140
;---------------------------------------------------------------------------
; Hit by fire (UP; initial going up)
[Statedef 9001]
type    = A
movetype= H
physics = N
ctrl = 0

[State 9001, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 9001, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9001, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 9003 ;HITA_RECOV

[State 9001, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 9004 ;HITA_FALL

[State 9001, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 9002 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; Hit by fire  (UP_T; transition)
[Statedef 9002]
type    = A
movetype= H
physics = N

[State 9002, 1]
type = ChangeAnim
triggerall = Anim != 7697
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 9002, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 9002, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 9003 ;HITA_RECOV

[State 9002, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 9004 ;HITA_FALL

;---------------------------------------------------------------------------
; Hit by fire (RECOV; recovering in air, not falling)
[Statedef 9003]
type    = A
movetype= H
physics = N

[State 9003, 1]
type = ChangeState
trigger1 = !Alive
value = 9004

[State 9003, 2]
type = SelfState
trigger1 = Alive
value = 5040

;---------------------------------------------------------------------------
; Hit by fire (FALL; knocked up, falling)
[Statedef 9004]
type    = A
movetype= H
physics = N

[State 9004, 1] ;Change anim when done with transition
type = ChangeAnim
triggerall = Anim != 7697
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 9004, 2] ;Coming down anim
type = ChangeAnim
triggerall = Anim != 7697
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 9004, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 9004, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 9004, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9004, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE
;------------------
; AI Activation Helper State - Primary Version
; (Credit to YongMing for the basic HitPause bugfix concept.)
;
; var(1) - First tick button activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(58) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(58) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(1):=1
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

;======================<SLOWDOWN>==================================

[Statedef 6750]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9741

[State 6750, VarSet]
type = VarSet
trigger1 = Time <= 10
v = 3
value = 3

[State 6750, VarSet]
type = VarSet
trigger1 = Time > 10 && Time <= 17
v = 3
value = 2

[State 6750, VarSet]
type = VarSet
trigger1 = Time >= 17
v = 3
value = 1

[State 6750, Pause]
type = Pause
trigger1 = Time % 2 = 0
time = var(3)

[State 6750, DestroySelf]
type = DestroySelf
trigger1 = Time >= 45

;---------------------------------------------------------------------------
[Statedef 2222]
type = A
movetype = I
physics = N
ctrl = 0
anim = 6000
velset = 0,0

[State 2222, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = ceil(pos Y)

[State 2222, NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 1201, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[State 6000, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = root,stateno != [1800,1825]
trigger2 = root,movetype = H

;====================<Screen Pack Helper 1 - Counter>=========================
[Statedef 18010]
physics = N
velset = 0,0
anim = 9741
ctrl = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time < 25 
time = 1
add = ceil(256*(1-time/25.0)),0,ceil(256*(1-time/25.0))
mul = 256,256,256
invertall = 0
color = 256

[State 18020, VarSet]
type = VarSet
trigger1 = Time <= 0
var(0) = parent,var(55)

[State 18010, Counter Enter]
type = Explod
trigger1 = Time = 0
anim = 18010+(teamside=2)
ID = 18010
pos = ifelse(parent,teamside=1,0,320),200-(var(0)*12)
postype = left
facing = 1
bindtime = -1
removetime = -2
supermovetime=9999999
pausemovetime=9999999
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 18010, Explod]
type = Explod
trigger1 = Time >= 49
anim = 18012+(teamside=2)
ID = 18012
pos = ifelse(parent,teamside=1,0-((time-49)*4),320+((time-49)*4)),200-(var(0)*12)
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime=9999999
pausemovetime=9999999
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 18010, DestroySelf]
type = DestroySelf
trigger1 = Time >= 70

;====================<Screen Pack Helper 2 - Let's Rock!>=========================
[Statedef 18020]
physics = N
velset = 0,0
anim = 9741
ctrl = 0

[State 18020, VarSet]
type = VarSet
trigger1 = Time <= 0
var(0) = parent,var(55)

[State 18020, Let's Rock! Enter]
type = Explod
trigger1 = Time = 0
anim = 18020+(teamside=2)
ID = 18020
pos = ifelse(parent,teamside=1,0,320),200-(var(0)*12)
postype = left
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
supermovetime = 99999999
pausemovetime = 99999999

[State 18020, Explod]
type = Explod
trigger1 = Time >= 49
anim = 18022+(teamside=2)
ID = 18022
pos = ifelse(parent,teamside=1,0-((time-49)*4),320+((time-49)*4)),200-(var(0)*12)
postype = left
facing = 1
bindtime = -1
removetime = 1
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
supermovetime = 99999999
pausemovetime = 99999999

[State 18020, DestroySelf]
type = DestroySelf
trigger1 = Time >= 70

;====================<Screen Pack Helper 2 - Danger!>=========================
[Statedef 18030]
physics = N
velset = 0,0
anim = 9741
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time 
value = S18030,0
abspan = 0
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time < 25 
time = 1
add = ceil(256*(1-time/25.0)),0,0
mul = 256,256,256
invertall = 0
color = 256

[State 18020, VarSet]
type = VarSet
trigger1 = Time <= 0
var(0) = parent,var(55)

[State 18020, Let's Rock! Enter]
type = Explod
trigger1 = Time = 0
anim = 18030+(teamside=2)
ID = 18030
pos = ifelse(parent,teamside=1,0,320),200-(var(0)*12)
postype = left
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
supermovetime = 99999999
pausemovetime = 99999999

[State 18020, Explod]
type = Explod
trigger1 = Time >= 49
anim = 18032+(teamside=2)
ID = 18032
pos = ifelse(parent,teamside=1,0-((time-49)*4),320+((time-49)*4)),200-(var(0)*12)
postype = left
facing = 1
bindtime = -1
removetime = 1
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
supermovetime = 99999999
pausemovetime = 99999999

[State 18020, DestroySelf]
type = DestroySelf
trigger1 = Time >= 70

;------------------------------------------------------------------------
[StateDef -2]

[State -2, Burst! - Really Brighting Afterimages]
type = AfterImage
trigger1 = var(2) > 0
trigger1 = Time = 0
time = -1
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
trigger1 = var(2) <= 0 && var(3) = 1
time = 0

[State -2, Burst! - Power Drain]
type = VarAdd
trigger1 = var(2) > 0
trigger1 = anim != 2500
v = 2
value = -1
[State -2, Burst! - Ded]
type = VarSet
trigger1 = var(2) > 0
trigger1 = roundstate>=3
v = 2
value = 0
ignorehitpause=1

[State -2, Burst! - Reset timer to 0 if it's below 0.]
type = VarSet
trigger1 = var(2) < 0
v = 2
value = 0
ignorehitpause=1

[State 0, PowerSet]
type = PowerSet
trigger1 = var(2)>0
value = 0
ignorehitpause = 1

[State -2, Burst Gauge - P1 Side]
type = modifyExplod
trigger1 = var(2) > 0
trigger1 = TeamSide = 1
id = 9911
scale = var(2)/927.0, 1
ignorehitpause = 1

[State -2, Burst Gauge - P2 Side]
type = modifyExplod
trigger1 = var(2) > 0
trigger1 = TeamSide = 2
id = 9911
scale = var(2)/927.0, 1
ignorehitpause = 1

[State -2, Burst! - Remove Burst bar if not in Burst]
type = RemoveExplod
trigger1 = var(2) = 0 && numexplod(9910)
id = 9910
ignorehitpause=1

[State -2, Burst! - Remove Burst gauge if not in Burst]
type = RemoveExplod
trigger1 = var(2) = 0 && numexplod(9911)
id = 9911
ignorehitpause=1


[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(10) = 1.0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = fvar(10) < ifelse((stateno = [1000,1999]),.35,.15)
fvar(10) = ifelse((stateno = [1000,1999]),.35,.15)
ignorehitpause = 1

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = ifelse(var(2)>0,2.0,1.0)*fvar(10)
ignorehitpause = 1

; ------------Juggle Code Stuff---------
[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1
; ------------Juggle Code Stuff---------
[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(32) = ifelse(moveguarded = 1,var(32)+1,0)
ignorehitpause = 1

[State reset all juggle vars]
type = VarSet
triggerall = var(36)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype != H || ((enemynear,statetype != A) && (enemynear,statetype != L))
var(36) = 0
ignorehitpause = 1
[State reset all juggle vars]
type = VarSet
triggerall = var(37)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype != H || ((enemynear,statetype != A) && (enemynear,statetype != L))
var(37) = 0
ignorehitpause = 1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(10) = %d, var(11) = %d, Prorate percent = %f, Palette Number = %d"
params = var(10),var(11),fvar(10)*100,palno
ignorehitpause = 1

[State -2, Super]
type = Helper
triggerall = !NumHelper(8600)
trigger1 = stateno = 3102 && animelem = 63
id = 8600
name = "FireEffect_Down"
pos = 0,0
postype = P2
stateno = 8600
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 999999999999

;-------------- Screen Pack -----------------

;===============================================================================
; COUNTER HIT (Taken from Vans, who based his on Sander's Method)
;===============================================================================

[State -2, VarSet];Checks if opponent is in attack state
type = VarSet
triggerall = numenemy
trigger1 = enemy, movetype = A
var(42) = 1
ignorehitpause = 1

[State -2, VarSet];This resets the condition if counter not succesful and succesful
type = VarSet
triggerall = numenemy
trigger1 = enemy, movetype = I || var(43) >= 1  ;Enemy is Idle | Counter was Succesful
trigger2 = var(43) > 10 && enemy, movetype = H  ;10 ticks passed & enemy is on gethit state
var(42) = 0
ignorehitpause = 1

[State -2, VarSet];Counter Hit Succesful
type = VarSet
trigger1 = var(42) = 1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [190,199] ;Does not activate during intros.
trigger1 = stateno != [800,899] ;Does not activate during throws.
trigger1 = stateno != [950,951] ;Don't activate during throws.
;trigger2 = var(42) = 1 && projhit = 1  ;Counter Check Ok, Projectile Hit Succesfully.
;trigger3 = var(42) = 1 && var(46) = 1  ;Counter Check Ok, Projectile Hit Succesfully.
var(43) = 1
ignorehitpause = 1

[State -2, VarAdd];Counter Hit Timer
type = VarAdd
trigger1 = var(43) >= 1 ;Counter was succesful
var(43) = 1
ignorehitpause = 1

[State -2, VarSet];Counter Hit Reset
type = VarSet
trigger1 = var(43) >= 22 && movehit ;Reset if 22 ticks passed and move hit
trigger2 = p2movetype != H ;Reset if P2 is no longer in gethit state
trigger3 = movetype = H ;Reset if P1 is getting hit
;trigger4 = var(43) >= 22 && projhit = 1 ;Reset if 22 ticks passed and projectile hit
;trigger5 = var(43) >= 22 && var(46)=1
var(43) = 0;+0*(var(46):=0)
ignorehitpause = 1

[State -2, Counter Display]
type = Helper
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = !enemynear,movereversed
triggerall = var(42) = 1
triggerall = enemy, movetype = H ;Enemy was indeed HIT, otherwise this'd be retarded.
trigger1 = movehit ;Move hits
id = 18010
name = "Counter Display"
pos = 0,0
postype = p1
stateno = 18010
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 9000000
pausemovetime = 9000000
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = !enemynear,movereversed
triggerall = var(42) = 1
triggerall = enemy, movetype = H ;Enemy was indeed HIT, otherwise this'd be retarded.
trigger1 = movehit ;Move hits
trigger1 = random < 250
value = S4000,0
abspan = 0
ignorehitpause = 1

[State -2, Let's Rock! Detect]
type = Varset
trigger1 = (stateno = 550 || stateno = 560 || stateno = 570 || stateno = 2500) && ((prevstateno = [200,420]) || (prevstateno = [500,530]) || (prevstateno = [600,620])) && Time = 1
var(18) = 1

[State -2, Counter]
type = VarAdd
trigger1 = var(18)
var(55) = 1
ignorehitpause=1
persistent=0

[State -2, Let's Rock! Display]
type = Helper
;triggerall = !NumHelper(18020)
trigger1 = var(18)
id = 18020
name = "Let's Rock! Display"
pos = 0,0
postype = p1
stateno = 18020
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 9000000
pausemovetime = 9000000
ignorehitpause=1
persistent=0


[State -2, Let's Rock! Display]
type = Helper
;triggerall = !NumHelper(18020)
trigger1 = roundstate = 2
trigger1 = life <= 330 && !var(56)
id = 18030
name = "Danger Display"
pos = 0,0
postype = p1
stateno = 18030
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 9000000
pausemovetime = 9000000
ignorehitpause=1
persistent=0
[State -2, Counter]
type = VarAdd
trigger1 = roundstate = 2
trigger1 = life <= 330 && !var(56)
var(55) = 1
ignorehitpause=1
persistent=0
[State -2, Counter]
type = VarSet
trigger1 = roundstate = 2
trigger1 = life<=330 && !var(56)
var(56) = 1
ignorehitpause=1
persistent=0

[State -2, Counter]
type = VarSet
trigger1 = var(55) >= 10
var(55) = 0
ignorehitpause=1

[State -2, Counter Check Reset]
type = Varset
trigger1 = enemynear,movetype != A
var(40) = 0
ignorehitpause=0

[State -2, Counter Reset]
type = Varset
trigger1 = 1
var(8) = 0
ignorehitpause=0

[State -2, Let's Rock! Reset]
type = Varset
trigger1 = 1
var(18) = 0

;----------------------------------
; Custom Cornerpush System by PotS
;----------------------------------
[State -2, Superpause Check]
type = null;VarAdd
trigger1 = Var(9)
var(9) = -1

[State -3, Corner Push Reset]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push Initial Vel]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5) = (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push Apply]; Apply corner push
type= posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -2, Freeze Pos During Superpause]
type = null;PosFreeze
trigger1 = Var(9)
value = 1

[State -3, Corner Push Friction]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5)*0.85

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State -2, Throws Allowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120]) 
var(30) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(30) = 1
ignorehitpause = 1

[Statedef -3]

;-------FORCE GROUND RECOVERY-------
[State -3, P2 Safe Fall]
type= targetstate
triggerall= numtarget=1; Just to prevent Simul mode shenanigans
triggerall= target,pos y>=-20 && target,vel y>0
triggerall= target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall= target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value= 5205
ignorehitpause= 1
