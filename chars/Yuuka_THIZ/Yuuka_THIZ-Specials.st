;---------------------------------------------------------------------------
; 63214p: Soil Tilling
[Statedef 1000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000+1*(var(10)=2)+2*(var(10)>=3)+0*floor(var(6):=0);Tech Flag
poweradd = ceil(60.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=70)||1
trigger1 = (var(12):=14)||1
trigger2 = var(10)=2
trigger2 = (var(11):=85)||1
trigger2 = (var(12):=17)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=100)||1
trigger3 = (var(12):=20)||1

;[State 1000, Startup Invuln]
;type = nothitby
;trigger1 = var(10)<=1
;trigger1 = animelemtime(6)<0
;value = SCA,AA,AP,AT
;ignorehitpause = 1

[State 1000, PSND]
type = playsnd
trigger1 = var(10)<=1
trigger1 = animelemtime(6)=0
trigger2 = var(10)=2
trigger2 = Animelemtime(7)=0
trigger3 = var(10)>=3
trigger3 = Animelemtime(10)=0
value = 0,1

[State 200, PSND]
type = PlaySnd
trigger1 = var(10)<=1
trigger1 = animelemtime(5)=0
trigger2 = var(10)=2
trigger2 = Animelemtime(6)=0
trigger3 = var(10)>=3
trigger3 = Animelemtime(9)=0
value = 220,0
channel = 0

[State 1400, VS]
type = velset
trigger1 = var(10)=2
trigger1 = animelemtime(1)>=0 && animelemtime(5)<0
trigger2 = var(10)>=3
trigger2 = animelemtime(1)>=0 && animelemtime(9)<0
x = 6.5

[State 1400, PSND]
type = playsnd
trigger1 = var(10)>=2
trigger1 = animelemtime(3)=0
trigger2 = var(10)>=3
trigger2 = animelemtime(6)=0
value = 40,0
channel = 2

[State 800, CS]
type = changestate
trigger1 = numtarget(1000)
trigger1 = movehit
value = 1001
ignorehitpause = 1
persistent = 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(13) = 0
[State 800, Tech Set]
type = varset
trigger1 = numenemy > 0
trigger1 = enemynear(0),statetype != A
trigger1 = (enemynear(0),stateno = [0,999]) || enemynear(0),movetype = H
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(13) = 0+15*(enemynear(0),movetype = H)
[State 800, IDDQD]
type = HitDef
triggerall = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
trigger1 = var(10)<=1
trigger1 = Animelemno(0)=5
trigger2 = var(10)=2
trigger2 = Animelemno(0)=6
trigger3 = var(10)>=3
trigger3 = Animelemno(0)=9
attr = S,ST
hitflag = M
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = s1,1
yaccel = 0.5
;ground.velocity = -1.5,-12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
;p1stateno = 1001;+1*(var(10)=1)
;fall = 1
;fall.recover = 0
id = 1000
numhits = 1

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = var(10)<=1
trigger1 = animelemtime(6) = 0
trigger2 = var(10)=2
trigger2 = animelemtime(7) = 0
trigger3 = var(10)>=3
trigger3 = animelemtime(10) = 0
movetype = I
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 63214p: Soil Tilling Success
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>0
anim = 890
ID = 20890
pos = 0,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>12
anim = 890
ID = 20890
pos = 20,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 801, Tech Success]
type = Varset;ChangeState
triggerall = NumTarget
triggerall = var(13)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
var(6)=1
;value = 890

[State 801, Tech Success]
type = changestate
trigger1 = var(6)=1
trigger1 = time=16;
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(13) > 0
var(13) = -1

[State 1001, ST]
type = targetstate
trigger1 = time = 0
id = 1000
value = 1050

[State 1001, TB]
type = TargetBind
trigger1 = time = 0
id = 1000
pos = 25,0

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1,0
channel = 3

[State 1001, ST]
type = targetstate
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0;||animelemtime(20)=0
id = 1000
value = 1051

[State 1001, ST]
type = targetstate
trigger1 = animelemtime(20)=0
id = 1000
value = 1052

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0
value = 200,0
channel = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(20)=0
value = 220,0
channel = 0

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0;||animelemtime(20)=0
value = 1,2
channel = 3

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(20)=0
value = 1,8
channel = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(2)=0
time = 12
freq = 60
ampl = -4

[State 1001, TargetLifeAdd]
type = targetlifeadd
trigger1 = animelemtime(2)=0
id = 1000
value = -ceil(20.0*fvar(11))
kill = 0

[State 1001, TargetLifeAdd]
type = targetlifeadd
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0
id = 1000
value = -ceil(5.0*fvar(11))
kill = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0
anim = 8010+(random%2)
ID = 8000
pos = 38,-10
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 999999
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(20)=0
anim = 8020+(random%2)
ID = 8000
pos = 38,-10
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 999999
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 1001, TargetLifeAdd]
type = targetlifeadd
trigger1 = animelemtime(20)=0
id = 1000
value = -ceil((155+20*(var(10)>=3))*fvar(11))
kill = 1

[State 0, PA]
type = poweradd
trigger1 = animelemtime(20)=0
value = ceil((200+20*(var(10)>=3))*1.6*fvar(11))

[State 0, PA]
type = targetpoweradd
trigger1 = animelemtime(20)=0
id = 1000
value = ceil((200+20*(var(10)>=3))*0.8*fvar(11))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemtime(20)=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil((200+20*(var(10)>=3))*0.6*fvar(11)*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

[State 1001, Throw Flag]
type = varset
trigger1 = animelemtime(20)=0
fvar(10)=fvar(10)*0.75+0*(var(4):=1)
ignorehitpause = 1
persistent = 0

[State 1001, HitAdd]
type = hitadd
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0||animelemtime(20)=0
value = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(7)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0
time = 10
freq = 120
ampl = -2

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(20)=0
time = 20
freq = 120
ampl = -16


[State 1050, CA2]
type = changestate
trigger1 = animtime = 0
value = 1002

;---------------------------------------------------------------------------
; 63214p: Soil Tilling Success
[Statedef 1002]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 1

[State 1002, VS]
type = velset
trigger1 = time = 0
x = -2
y = -6

[State 1002, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 1002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1003

;---------------------------------------------------------------------------
; 63214p: Soil Tilling Success
[Statedef 1003]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1012
ctrl = 0
sprpriority = 1

[State 1003, POS]
type = posset
trigger1 = time = 0
y = 0

[State 1003, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Soil Tilling - Followup
[Statedef 1010]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 1

[State 1001, ST]
type = targetstate
trigger1 = time = 0
id = 1000
value = 1060

[State 1010, T]
type = turn
trigger1 = var(10)<=1
trigger1 = animelemtime(2)=0

[State 1001, TB]
type = TargetBind
trigger1 = time=0||animelemno(0)=2
id = 1000
pos = 25,0
[State 0, TargetFacing]
type = TargetFacing
trigger1 = time=0||animelemno(0)=2
value = -1
ID = 1000

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1,0
channel = 3

[State 1001, ST]
type = targetstate
trigger1 = animelemtime(3)=0
id = 1000
value = 1061

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 220,0
channel = 0

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 0,2

[State 1001, TargetLifeAdd]
type = targetlifeadd
trigger1 = animelemtime(3)=0
id = 1000
value = -ceil((20.0)*fvar(11))
kill = 1

[State 1001, HitAdd]
type = hitadd
trigger1 = animelemtime(3)=0
value = 1

[State 0, PA]
type = poweradd
trigger1 = animelemtime(3)=0
value = ceil((20.0)*1.6*fvar(11))

[State 0, PA]
type = targetpoweradd
trigger1 = animelemtime(3)=0
id = 1000
value = ceil((20.0)*0.8*fvar(11))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemtime(3)=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil((20.0)*0.6*fvar(11)*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

[State 1001, Throw Flag]
type = varset
trigger1 = animelemtime(3)=0
fvar(10)=fvar(10)*0.95+0*(var(4):=1)
ignorehitpause = 1
persistent = 0

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 63214p: Soil Tilling Custom
[Statedef 1050]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1050

;---------------------------------------------------------------------------
; 63214p: Soil Tilling Custom
[Statedef 1051]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1051

;---------------------------------------------------------------------------
; 63214p: Soil Tilling Custom
[Statedef 1052]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1052

[State 1052, Selfstate]
type = selfstate
trigger1 = animelemtime(2)>=70
value = ifelse(!alive,5150,5120)

;---------------------------------------------------------------------------
; Soil Till Follow
[Statedef 1060]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1060

;---------------------------------------------------------------------------
; Follow Up Hitstate
[Statedef 1061]
type = A
movetype = H
physics = N
sprpriority = 1

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1061

[State 851, Bind]
type = velset
trigger1 = animelemtime(1)=0
x = -1.0
y = -12.5

[State 851, Accel]
type = veladd ;Gravity
trigger1 = animelemtime(1)>0
y = 0.5

[State 851, Hitground]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 852

;---------------------------------------------------------------------------
; j.63214p: Drifting Dandelion
[Statedef 1100]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1100+1*(var(10)=2)+2*(var(10)>=3)+0*floor(var(6):=0);Tech Flag
poweradd = ceil(45.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=180)||1
trigger1 = (var(12):=180)||1
trigger2 = var(10)=2
trigger2 = (var(11):=200)||1
trigger2 = (var(12):=200)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=220)||1
trigger3 = (var(12):=220)||1

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
trigger1 = var(10)>=2
value = 1100,10
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(3) = 0
trigger1 = var(10)>=2
helpertype = normal
name = "Petals"
id = 21100
stateno = 21100
pos = 100,-53
postype = p1
ownpal = 1
facing = 1
supermovetime=999
[State 0, Explod]
type = Explod
trigger1 = animelemtime(3)=0
trigger1 = var(10)>=2
anim = 20000
ID = 20000
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 1000, PSND]
type = velset
trigger1 = animelemno(0)=3
trigger1 = var(10)>=2
x = 6.5

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 220,0
channel = 0

[State 800, CS]
type = changestate
trigger1 = numtarget(1100)
trigger1 = movehit
value = 1102
ignorehitpause = 1
persistent = 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(13) = 0
[State 800, Tech Set]
type = varset
trigger1 = numenemy > 0
trigger1 = enemynear(0),statetype != A
trigger1 = (enemynear(0),stateno = [0,999]) || enemynear(0),movetype = H
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(13) = 0+15*(enemynear(0),movetype = H)
[State 800, IDDQD]
type = HitDef
triggerall = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
trigger1 = !movecontact && !movereversed
trigger1 = Animelemno(0)=5
attr = A,ST
hitflag = AF
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = s1,1
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
;p1stateno = 1102
;fall = 1
;fall.recover = 0
id = 1100
numhits = 1

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6) = 0
movetype = I
persistent = 0
ignorehitpause = 1

[State 1600, VelMul]
type = velmul
trigger1 = animelemno(0)=6
x = 0.9

[State 1600, VS]
type = veladd
trigger1 = animelemtime(7)>=0
y = 0.5

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101

;---------------------------------------------------------------------------
; Air Grab
[Statedef 1101]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 47
ctrl = 0
sprpriority = 1

[State 4111, PS]
type = posset
trigger1 = time = 0
y = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = 40, 0

[State 1002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grab - Part 2
[Statedef 1102]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1110
velset = 0, 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>0
anim = 890
ID = 20890
pos = 0,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>12
anim = 890
ID = 20890
pos = 20,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 801, Tech Success]
type = Varset;ChangeState
triggerall = NumTarget
triggerall = var(13)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
var(6)=1
;value = 890

[State 801, Tech Success]
type = changestate
trigger1 = var(6)=1
trigger1 = time=16;
value = 892


[State 810, Throw Escape]
type = VarAdd
trigger1 = var(13) > 0
var(13) = -1

[State 830, PSND]
type = playsnd
trigger1 = time = 0
value = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 38,0
ignorehitpause = 1
;persistent = 

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 1100
value = 1150

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(2) = 0
value = -1
id = 1100

[State 1201, TS]
type = targetbind
trigger1 = animelemtime(2)<0
id = 1100
pos = 44,0

[State 1201, TS]
type = targetbind
trigger1 = animelemtime(2)>=0
id = 1100
pos = 50,-25

[State 4110, VS]
type = velset
trigger1 = animelemtime(2)=0
x = 3.0
y = -6.0

[State 4110, Grav]
type = veladd
trigger1 = animelemtime(2)>0
y = 0.5

[State 4110, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= (-vel y)
value = 1103

;---------------------------------------------------------------------------
; "Air Grab"
[Statedef 1103]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1111
ctrl = 0
sprpriority = 1

[State 810, TS]
type = hitadd
trigger1 = animelemtime(1)=0
value = 1

[State 810, TS]
type = poweradd
trigger1 = animelemtime(1)=0
value = ceil(var(11)*1.6*fvar(11))

[State 810, TS]
type = targetpoweradd
trigger1 = animelemtime(1)=0
id = 1100
value = ceil(var(11)*0.8*fvar(11))

[State 810, TS]
type = targetlifeadd
trigger1 = animelemtime(1)=0
id = 1100
value = -ceil(var(11)*fvar(11))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemtime(1)=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

[State 810, Proration]
type = varset
trigger1 = animelemtime(1)=0
fvar(10) = (fvar(10)*0.8)+0*floor(var(4):=1)
ignorehitpause = 1
persistent = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1100,0
channel = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 40,0
ignorehitpause = 1

[State 4111, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1201, TS]
type = targetstate
trigger1 = time = 0
trigger1 = numtarget(1100)
id = 1100
value = 1151

[State 1201, TS]
type = targetbind
trigger1 = time=0
id = 1100
pos = 30,0

[State 4111, PSND]
type = playsnd
trigger1 = time = 0
value = 1,11

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 60
ampl = -4 

[State 4112, CS]
type = changestate
trigger1 = time >= 60
value = 1104

;---------------------------------------------------------------------------
; Air Grab
[Statedef 1104]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 1

[State 1002, VS]
type = velset
trigger1 = time = 0
x = -1
y = -4

[State 1002, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 1002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1105

;---------------------------------------------------------------------------
; Air Grab
[Statedef 1105]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 47
ctrl = 0
sprpriority = 1

[State 1405, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 4111, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1201, TS]
type = targetstate
trigger1 = time = 0
trigger1 = numtarget(1100)
id = 1100
value = 1152

[State 1002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air Grab Hitstate
[Statedef 1150]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 4150, CA2]
type = changeanim2
trigger1 = time = 0
value = 1150

;---------------------------------------------------------------------------
; Air Grab Hitstate
[Statedef 1151]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 4150, CA2]
type = changeanim2
trigger1 = time = 0
value = 1151

;---------------------------------------------------------------------------
; Air Grab Hitstate
[Statedef 1152]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 4150, CA2]
type = selfstate
trigger1 = time = 14
value = ifelse(alive,5120,5150)

;---------------------------------------------------------------------------
; j.63214p FX
[Statedef 21100]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 21100
ctrl = 0
sprpriority = 5

[State 21110, AD]
type = angledraw
trigger1 = 1
value = 90
ignorehitpause = 1

[State 21110, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21100, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21100, Zeeky]
type = destroyself
trigger1 = animtime=0

;---------------------------------------------------------------------------
; 623x - Flowers in the Wind
[Statedef 1200]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = cond(prevstateno=1900,1205,1200+1*(var(10)=2)+2*(var(10)>=3))+0*floor(var(25):=cond(var(10)<=2,3,9))
poweradd = ceil(45.0*fvar(11))*(prevstateno!=1900)
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (prevstateno!=1900)
trigger1 = var(10)<=1
trigger1 = (var(11):=33)||1
trigger1 = (var(12):=6)||1
trigger2 = (prevstateno!=1900)
trigger2 = var(10)=2
trigger2 = (var(11):=33)||1
trigger2 = (var(12):=6)||1
trigger3 = (prevstateno!=1900)
trigger3 = var(10)>=3
trigger3 = (var(11):=17)||1
trigger3 = (var(12):=3)||1
trigger4 = (prevstateno=1900)
trigger4 = (var(11):=0)||1
trigger4 = (var(12):=0)||1

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time=0 && (prevstateno=1900)
value = SCA,AA,AP,AT
time = 12
ignorehitpause = 1
[State 2000, NotHitBy]
type = NotHitBy
trigger1 = var(10)>=3
trigger1 = time=0 && (prevstateno!=1900)
value = SCA,AA,AP,AT
time = 24
ignorehitpause = 1

[State 1300, VS]
type = velset
trigger1 = var(10)<=1
trigger1 = animelemno(0)=[3,8]
trigger2 = var(10)=2
trigger2 = animelemno(0)=[3,19]
x = 2.0


[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1800,10
[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1800,11

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3)=0
trigger2 = var(10)>=2 && (animelemtime(9)=0||animelemtime(15)=0)
trigger3 = var(10)>=3 && animelemtime(21)=0
anim = 21200
ID = 21200
pos = 0,-56
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 999999
bindtime=-1
scale = 1.0,1.5
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3)=0
trigger2 = var(10)>=2 && (animelemtime(9)=0||animelemtime(15)=0)
trigger3 = var(10)>=3 && animelemtime(21)=0
anim = 21201
ID = 21201
pos = 0,0;-56
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 999999
scale = 1.0,1.5
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0;animelemtime(3)=-4
value = 1800,0
channel = 0

[State 1300, MHR]
type = movehitreset
triggerall = var(25)>0
trigger1 = animelemtime(5)=0||animelemtime(7)=0
trigger2 = var(10)>=2
trigger2 = animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0||animelemtime(15)=0||animelemtime(17)=0||animelemtime(19)=0

[State 1000, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=3||animelemno(0)=5||animelemno(0)=7
trigger2 = var(10)>=2
trigger2 = animelemno(0)=9||animelemno(0)=11||animelemno(0)=13||animelemno(0)=15||animelemno(0)=17||animelemno(0)=19
attr = S,SA
animtype  = Heavy;DiagUp
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = MA
pausetime = 6-2*(var(10)>=3),6-2*(var(10)>=3)
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-50
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = cond((var(32):=54+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=54+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=56+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -(2.0-cond((var(10)>=3),cond(animelemno(0)=19,1.5,2.0),0))*ifelse(p2dist x<0,-1,1),-8.0+cond((var(10)>=3),cond(animelemno(0)=19,-3.0,8.0),0.0)
air.velocity = -(2.0-cond((var(10)>=3),cond(animelemno(0)=19,1.5,2.0),0))*ifelse(p2dist x<0,-1,1),-8.0+cond((var(10)>=3),cond(animelemno(0)=19,-3.0,6.0),0.0)
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1-cond((var(10)>=3),cond(animelemno(0)=19,0,1),0)
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=56+3*(var(42)!=0)+var(34))<=1,1,var(32))+(6-2*(var(10)>=3));hitstun+pausetime value
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 1200

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=3
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=5
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=6
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=3
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=5
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=7
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=9
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=11
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=13
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=9
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=11
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=13
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=15
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=17
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=19
trigger1 = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=15
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=17
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = var(10)>=2 && var(25)>0
trigger1 = animelemno(0)=19
trigger1 = movehit
fvar(10) = fvar(10)*cond(var(10)<=2,0.9085,0.968)
ignorehitpause = 1
persistent = 0

[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=3
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0
[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=5
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0
[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=7
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0

[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=9
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0
[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=11
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0
[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=13
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0

[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=15
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0
[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=17
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0
[State 1200, Multihit]
type = varadd
trigger1 = animelemno(0)=19
trigger1 = movecontact
var(25) = -1
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = var(10)<=1 && (animelemtime(8)=0 || ((animelemno(0)=7 && (movecontact||movereversed))))
trigger2 = var(10)>=2 && (animelemtime(20)=0 || ((animelemno(0)=19 && (movecontact||movereversed))))
trigger3 = var(25)<=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1200, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------
; Flowers in the Wind Pushback
[StateDef 21200]
type = A
movetype = I
physics = N
anim = 21210
velset = 0,0
sprpriority = -1

[State 1211, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 1211, VS]
type = velset
trigger1 = time = 0
x = 6.0*cond(rootdist x >= 0,1,-1)

[State 1201, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1201, NHB]
type = nothitby
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1201, VS]
Type = Velset
Trigger1 = time
x = (6.0+0.15*time)*cond(rootdist x >= 0,1,-1)

[State 1211, PA]
Type = PosAdd
trigger1 = rootdist x > 0
Trigger1 = p2dist x < -50
x = -120

[State 1211, PA]
Type = PosAdd
trigger1 = rootdist x < 0
Trigger1 = p2dist x > 50
x = 120

[State 1211, PP]
Type = playerpush
Trigger1 = 1
Value = 1

[State 1200, Zeeky]
type = Changestate
trigger1 = time>=16
trigger2 = root,stateno != 1200
value = 21801

[State 1200, Zeeky]
type = Destroyself
trigger1 = root,stateno = [2000,4999]
trigger2 = rootdist x = [-120,120]
trigger3 = root,stateno=1200
trigger3 = root,movecontact

;-------------------------
; Unique Skill Pushback
[StateDef 21201]
type = A
movetype = I
physics = N
anim = 21210
sprpriority = -1

[State 1211, VS]
type = velmul
trigger1 = time
x = 0.9;5

[State 1201, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1201, NHB]
type = nothitby
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1211, PA]
Type = PosAdd
trigger1 = rootdist x > 0
Trigger1 = p2dist x < -50
x = -120

[State 1211, PA]
Type = PosAdd
trigger1 = rootdist x < 0
Trigger1 = p2dist x > 50
x = 120

[State 1211, PP]
Type = playerpush
Trigger1 = 1
Value = 1

[State 1200, Zeeky]
type = Destroyself
trigger1 = time >= 5
trigger2 = abs(vel x) < 1.0

[State 1200, Zeeky]
type = Destroyself
trigger1 = root,stateno = [2000,4999]
trigger2 = rootdist x = [-120,120]
trigger3 = root,stateno=1200
trigger3 = root,movecontact



;---------------------------------------------------------------------------
; 421p: Flytrap
[Statedef 1300]
type    = S
movetype = A
physics = S
ctrl = 0
poweradd = ceil(45.0*fvar(11));*(prevstateno!=1900)
anim = 1300+1*(var(10)=2)+2*(var(10)>=3)
velset = 0,0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1 && (prevstateno!=1900)
trigger1 = (var(11):=20)||1
trigger1 = (var(12):=16)||1
trigger2 = var(10)=2 && (prevstateno!=1900)
trigger2 = (var(11):=30)||1
trigger2 = (var(12):=18)||1
trigger3 = var(10)>=3 && (prevstateno!=1900)
trigger3 = (var(11):=40)||1
trigger3 = (var(12):=20)||1

[State 1200, PA]
type = posadd
trigger1 = animelemtime(2)=0
x = 2

[State 1200, PA]
type = posadd
trigger1 = animelemtime(3)=0
x = 20

[State 1200, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)>=2
x = 6.0+6.0*(var(10)>=3)

[State 1200, AD]
type = attackdist
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 220,0
channel = 0


[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 1000, Hitdef]
type = HitDef
trigger1 = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=4
attr = S,SA
animtype  = Hard
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = AF
guardflag =
pausetime = 0,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-100
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -2.0
air.velocity = -2.0,-1.0
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 1300

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 1200, CS]
type = changestate
trigger1 = movehit
trigger1 = numtarget(1300)
value = 1301
ignorehitpause = 1
persistent = 0

;[State 200, Damage Dampen]
;type = varset
;trigger1 = movehit
;fvar(10) = fvar(10)*0.85
;ignorehitpause = 1
;persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = AnimElemTime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
persistent=0
ignorehitpause = 1

[State 1202, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 421p: Flytrap
[Statedef 1301]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1310
ctrl = 0
sprpriority = 1

[State 0, Width]
type = Width
trigger1 = 1
edge = 50,0
ignorehitpause = 1
;persistent = 

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1300,1
channel = 0

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 1000,0
channel = 0

[State 1201, TS]
type = targetstate
trigger1 = time = 0
trigger1 = numtarget(1300)
value = 1350

[State 1201, TS]
type = targetbind
trigger1 = time = 0
trigger1 = numtarget(1300)
id = 1300
pos = 44,-101

[State 1201, TS]
type = targetstate
trigger1 = animelemtime(3) = 0
trigger1 = numtarget(1300)
value = 1351

[State 1201, TS]
type = targetbind
trigger1 = animelemtime(3) = 0
trigger1 = numtarget(1300)
id = 1300
pos = 44,0

[State 1201, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 1201, TS]
type = targetstate
trigger1 = animelemtime(7) = 0
trigger1 = numtarget(1300)
value = 351;1352

[State 1201, HA]
type = hitadd
trigger1 = animelemtime(7)=0
value = 1

[State 1201, TLA]
type = targetlifeadd
trigger1 = animelemtime(7)=0
id = 1300
value = -ceil(60.0*fvar(11))

[State 1201, TLA]
type = poweradd
trigger1 = animelemtime(7)=0
value = ceil(60.0*1.6*fvar(11))

[State 1201, TLA]
type = targetpoweradd
trigger1 = animelemtime(7)=0
id = 1300
value = ceil(60.0*0.8*fvar(11))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemtime(7)=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil(100.0*0.6*fvar(11)*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0
anim = 8020+(random%2)
ID = 8000
pos = 51,-41
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 999999
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(7)=0
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 1201, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 1,11

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flytrap Hitstate
[Statedef 1350]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1250, CA]
type = changeanim2
trigger1 = time = 0
value = 1350

;---------------------------------------------------------------------------
; Flytrap Hitstate
[Statedef 1351]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1250, CA]
type = changeanim2
trigger1 = time = 0
value = 1351

;---------------------------------------------------------------------------
; Flytrap Hitstate
[Statedef 1352]
type    = S
movetype= H
physics = S
velset = -5,0
ctrl = 0
sprpriority = 0

[State 1250, CA]
type = changeanim2
trigger1 = time = 0
value = 1352

[State 1252, SS]
type = selfstate
trigger1 = animtime=0
value = ifelse(alive,5120,5150)

;---------------------------------------------------------------------------
; 623p: Flower Parasol Charge
[Statedef 1400]
type    = S
movetype = A
physics = S
ctrl = 0
poweradd = ceil(45.0*fvar(11))
anim = 1400+1*(var(10)=2)+2*(var(10)>=3)
velset = 0,0
juggle = 0
facep2 = 1

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=80)||1
trigger1 = (var(12):=16)||1
trigger2 = var(10)=2
trigger2 = (var(11):=90)||1
trigger2 = (var(12):=18)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=100)||1
trigger3 = (var(12):=20)||1

[State 1400, CS]
type = changestate
trigger1 = 1
value = 1401

;---------------------------------------------------------------------------
; 623p: Flower Parasol Charge
[Statedef 1401]
type    = S
movetype = A
physics = U;S
ctrl = 0
poweradd = 0
velset = 0,0
sprpriority = 1
movehitpersist=1

;[State 1300, PSND]
;type = posadd
;trigger1 = prevstateno=1400
;trigger1 = animelemtime(6)=0
;x = 15

[State 2000, Spellcard Effect]
type = helper
trigger1 = prevstateno=1400
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Petals"
id = 21100
stateno = 21100
pos = 100,-53
postype = p1
ownpal = 1
facing = 1
supermovetime=999
[State 0, Explod]
type = Explod
trigger1 = prevstateno=1400
trigger1 = animelemtime(5)=0
anim = 20000
ID = 20000
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1400, Armor Damage Reduction]
type = VarSet
triggerall = prevstateno = 1400
trigger1 = var(10)<=1
trigger1 = animelemtime(6)>=0 && animelemtime(12)<0
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0 && animelemtime(16)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(6)>=0 && animelemtime(15)<0
fvar(8) = life
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
triggerall = prevstateno = 1400
trigger1 = var(10)=2
trigger1 = animelemtime(6)>=0 && animelemtime(16)<0
attr = SCA,AA,AP
slot = 0
stateno = 1402
time = 1
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = var(10)>=3
trigger1 = animelemtime(6)>=0 && animelemtime(15)<0
attr = SCA,AP
slot = 0
stateno = 1402
time = 1
ignorehitpause = 1

[State 100, Effect]
type = helper
triggerall = animelemtime(6)%4=0
trigger1 = var(10)<=1
trigger1 = animelemtime(6)>=0 && animelemtime(12)<0
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0 && animelemtime(16)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(6)>=0 && animelemtime(15)<0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = 38,-42
postype = p1
stateno = 10100
ownpal = 1
facing = 1
pausemovetime = 99999999999

;Armor Flag
[State -2, Armor Flag]
type = varset
triggerall = prevstateno = 1400
trigger1 = var(10)=2
trigger1 = animelemtime(6)>=0 && animelemtime(16)<0
trigger2 = var(10)>=3
trigger2 = animelemtime(6)>=0 && animelemtime(15)<0
sysvar(3) = 1
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = 1400,0
channel = 0

[State 1300, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1400,10

[State 1400, STS]
type = statetypeset
trigger1 = var(10)<=1
trigger1 = AnimElemtime(6)>=0 && animelemtime(12)<0
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0 && animelemtime(16)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(6)>=0 && animelemtime(15)<0
physics = N
ignorehitpause = 1

[State 1400, STS]
type = statetypeset
trigger1 = var(10)<=1
trigger1 = AnimElemtime(12)>=0
trigger2 = var(10)=2
trigger2 = animelemtime(16)>=0
trigger3 = var(10)>=3
trigger3 = animelemtime(15)>=0
physics = S
ignorehitpause = 1

[State 1300, VS]
type = velset
trigger1 = var(10)<=1
trigger1 = AnimElemtime(6)>=0 && animelemtime(12)<0
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0 && animelemtime(16)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(6)>=0 && animelemtime(15)<0
x = 6.0+3.0*(var(10)>=2)+3.0*(var(10)>=3)

[State 1000, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = var(10)<=1
trigger1 = animelemtime(6)>=0 && animelemtime(12)<0
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0 && animelemtime(16)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(6)>=0 && animelemtime(15)<0
attr = S, SA
animtype  = Back;hard
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-50
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+20*(var(42)!=0)+3*(var(42)!=0)+var(34)*cond((var(42)!=0),2,1))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+20*(var(42)!=0)+3*(var(42)!=0)+var(34)*cond((var(42)!=0),2,1))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20*(var(42)!=0)+3*(var(42)!=0)+var(34)*cond((var(42)!=0),2,1))<=1,1,var(32))
ground.velocity = -6.0-4.0*(var(42)!=0),-(6.0+2.0*(var(42)!=0))*(var(10)>=3||(var(42)!=0))
air.velocity = -6.0-4.0*(var(42)!=0),-6.0-2.0*(var(42)!=0)
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 0+1*(var(10)>=3||(var(42)!=0))
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20*(var(42)!=0)+3*(var(42)!=0)+var(34)*cond((var(42)!=0),2,1))<=1,1,var(32))+10;hitstun+pausetime value
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
p2stateno = cond((var(42)!=0)&&var(15)=0&&sysvar(4)=0,260,-1)
p2getp1state = cond((var(42)!=0)&&var(15)=0&&sysvar(4)=0,1,0)
id = 1400

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8
ignorehitpause = 1
persistent = 0

[State 1400, STS]
type = statetypeset
trigger1 = movecontact||movereversed
trigger2 = var(10)<=1
trigger2 = animelemtime(12)>=0
trigger3 = var(10)=2
trigger3 = animelemtime(16)>=0
trigger4 = var(10)>=3
trigger4 = animelemtime(15)>=0
movetype = I
ignorehitpause = 1
;persistent=0

[State 1400, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 623p: Flower Parasol Charge - Armor State
[Statedef 1402]
type    = S
movetype= H;A
physics = S
ctrl = 0
sprpriority = 1
movehitpersist=1
hitdefpersist=1

;Armor Flag
[State -2, Armor Flag]
type = varset
trigger1 = 1
sysvar(3) = 1
ignorehitpause = 1

[State 1105, CS]
type = changestate
trigger1 = life<=0
value = 5000
ignorehitpause = 1

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.2-1.0)*ifElse((fvar(8)-life) < life,-(fvar(8)-life),0))

[State 1401, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 220,11
channel = 6

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 8030
ID = 8030
pos = 20,-55
postype = p1  ;p2,front,back,left,right
facing = -1
bindtime = 1
removetime = -2
scale = 2.0,2.0
sprpriority = 5
ownpal = 1
removeongethit = 1
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = anim
elem = animelemno(0)-1
ignorehitpause = 1 
;persistent = 

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AA,AP;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
ignorehitpause = 1
;persistent = 

[State 1201, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1
ignorehitpause = 1

[State 1105, CS]
type = changestate
trigger1 = time
trigger1 = gethitvar(hitshaketime)<=1
value = 1401
ignorehitpause = 1

;-----------------------
; Brilliance Kick FX
[Statedef 21400]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 21000
velset = 0,0

[State 21000, T]
type = Trans
trigger1 = 1
Trans = Addalpha
alpha = 256,256
ignorehitpause = 1

[State 21000, ASS]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=2
pos = -25,-15
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=3
pos = -30,-28
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=4
pos = -30,-60
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=5
pos = -28,-76
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=6
pos = -27,-77
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=7
pos = 37,-91
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=8
pos = 46,-11
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=9
pos = 31,-5
time = -1
ignorehitpause = 1

[State 1310, FX Bind]
type = BindToRoot
trigger1 = root,stateno = 1400
trigger1 = root,animelemno(0)=10
pos = 28,-5
time = -1
ignorehitpause = 1


[State 1300, Sparkle]
type = explod
trigger1 = 1;animelemtime(11)<0
persistent = 2
anim = 20630+(random%7)
ownpal = 1
pos = 0,0
random = 20,20
sprpriority = 5
vel = 2-(random%5),2-(random%5);0,2
scale = 1.2,1.2;0.7,0.7
;supermovetime = 999

[State 1310, Explod]
type = explod
trigger1 = 1
persistent = 5
anim = 20640+floor(7.0*random/1000.0)
postype = p1
pos = 0,0-(random%10)
vel = 2-(random%4),2-(random%4)
random = 30,30
scale = 0.5,0.5
sprpriority = 5
ignorehitpause = 1

[State 1201, CS]
type = changestate;destroyself
trigger1 = root,stateno = 1401
trigger2 = root,stateno != 1400
trigger3 = root,movetype = H
trigger4 = root,stateno = 1400
trigger4 = root,time <= 1
value = 20626

[State 1000, AD]
type = AngleDraw
trigger1 = 1
scale = 1.0+(2.0/3.0)*abs(cos(2.5*time)),1.0+(2.0/3.0)*abs(cos(2.5*time))
ignorehitpause = 1


;---------------------------------------------------------------------------
; Fantastic Spring Flowers
[Statedef 1800]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1800
poweradd = ceil(20.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 1

[State 1800, Distance Tracker]
type = varset
trigger1 = time = 0
var(11) = cond(numenemy,cond(p2dist x <=0,0,floor(p2dist x)),0)

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 0, AttackDist]
type = AttackDist
trigger1 = time>=0
value = 210
ignorehitpause = 1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 1200,0
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
name = "VinesNStuff"
id = 21800
stateno = 21800
pos = var(11),0
postype = p1
ownpal = 1
facing = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5) = 2
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;--------------------------
; Fantastic Spring Flower
[Statedef 21800]
movetype = A
physics = N
ctrl = 0
anim = 21800
sprpriority = 5

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=70)||1
trigger1 = (var(12):=14)||1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1100,10

[State 1010, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 80

[State 1102, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AP,AT
ignorehitpause = 1

[State 1102, HOR]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP,AT;,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21801
time = -1
ignorehitpause = 1

[State 1010, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1012, HD]
type = HitDef
trigger1 = animelemtime(1)>=0 && animelemtime(3)<0
trigger1 = movecontact = 0 && movereversed = 0
attr = S,SP
animtype  = medium
damage = ceil(var(11)*root,fvar(11)),ceil(var(12)*root,fvar(11))
hitflag = M
guardflag = L
getpower = ceil(var(11)*1.6*root,fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*root,fvar(11)),ceil(var(11)*0.2)
sparkno = s8020+(random%2)
guard.sparkno = S8030
pausetime = 0,6
guard.pausetime = 0,6
sparkxy = -10,0
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -1.0,-2.0
air.animtype = Back
airguard.velocity = -1.0,-2.0
air.velocity = -1.0,-2.0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 1800

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
trigger2 = animelemtime(3)=0
movetype = I
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = parentvaradd
triggerall = root,var(52)=2 ;Type-C Only
triggerall = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 2011, Helper Hit Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 1800
ignorehitpause =1

[State 1012, PVA]
type = parentvarset
trigger1 = movehit = 1
fvar(10) = root,fvar(10)*0.70

[State 1010, Zeeky]
type = changestate
trigger1 = animelemtime(7)=0
trigger2 = root,stateno != 1800
ignorehitpause = 1
value = 21801

[State 1010, Zeeky]
type = destroyself
trigger1 = frontedgedist <= -80
trigger2 = backedgedist <= -80

;--------------------------
; Fantastic Spring Flower
[Statedef 21801]
movetype = I
physics = N
ctrl = 0
sprpriority = 5
velset = 0,0
movehitpersist = 1

[State 1102, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AP,AT
ignorehitpause = 1

[State 1102, HOR]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP,AT;,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21801
time = -1
ignorehitpause = 1

[State 1011, T]
type = trans
trigger1 = animelemtime(7)>=0
ignorehitpause = 1
trans = addalpha
alpha = 256-floor(256.0*animelemtime(7)/10.0),floor(256.0*animelemtime(7)/10.0)

[State 1011, ASS]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1011, Zeeky]
type = changestate
trigger1 = animelemtime(7) >= 10
value = 999

;---------------------------------------------------------------------------
; Guard Cancel
[Statedef 1900]
type    = U;S
movetype= A
physics = N;S
velset = 0,0
;anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
;facep2 = 1

[State -2, Counterhit Explod]
type = Explod
trigger1 = time = 0
anim = 7920+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, Fufufu]
type = null;playsnd
trigger1 = time = 0
value = 1000,0
channel = 0

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 30
;ignorehitpause = 
;persistent = 

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 21900+2*(var(52)=2);1999
stateno = 21900;1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, PS]
type = poweradd
trigger1 = time = 0
value = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 20;0
anim = -1
sound = S4,3
p2defmul = 1
poweradd = 0;-1000
unhittable = 1
movetime = 20;30
darken = 0

[State 1900, CS]
type = changestate
trigger1 = time>=20
trigger1 = (var(10):=1)||1
trigger1 = (var(46):=1)||1
value = 1200

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 2999+2000*ishelper(21902)
velset = 0,0
sprpriority = 3;-1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

;[State 700, AD]
;type = angledraw
;trigger1 = 1
;value = 3.0*time*ifelse(ishelper(999),2.0,1.0)
;scale = ifelse(ishelper(999),0.35,0.7)+(time*ifelse(ishelper(999),0.2,0.1)),ifelse(ishelper(999),0.35,0.7)+(time*ifelse(ishelper(999),0.2,0.1))
[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = (0.5+0.15*var(0))*0.75,(0.5+0.15*var(0))*0.75

;[State 21900, Bomb Type A]
;type = palfx
;trigger1 = ishelper(21900)
;add = 256,0,0
;mul = 256,0,0
;time = -1
;ignorehitpause = 1

;[State 21900, Bomb Type B]
;type = palfx
;trigger1 = ishelper(21901)
;add = 0,256,0
;mul = 0,256,0
;time = -1
;ignorehitpause = 1

;[State 21900, Bomb Type C]
;type = palfx
;trigger1 = ishelper(21902)
;add = 256,256,0
;mul = 256,256,0
;time = -1
;ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70

;---------------------------------------------------------------------------
; Dash Cancel
[Statedef 1910]
type    = U;S
movetype= A
physics = N;S
velset = 0,0
;anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
;facep2 = 1

[State -2, Counterhit Explod]
type = Explod
trigger1 = time = 0
anim = 7930+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, Fufufu]
type = NULL;playsnd
trigger1 = time = 0
value = 1000,0
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 21902;1999
stateno = 21910;1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 0
supermovetime = 0

[State 1900, Decrease Spirit]
type = varadd
trigger1 = time = 0
var(54) = -floor(lifemax*0.9*0.5);cond(var(57)>0,floor(lifemax*0.9*0.333),floor(lifemax*0.9*0.5))

[State 1910, PSND]
type = playsnd
trigger1 = time=0
value = 4,3

[State 1900, CS]
type = changestate
trigger1 = 1
value = 100+10*(statetype=A)

;-----------------------
; Dash Cancel Use Effect
[Statedef 21910]
anim = 21910
velset = 0,0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varset
trigger1 = time = 0
var(0) = 8

[State 1999, Varadd]
type = varadd
trigger1 = animelemno(0)=1
var(0) = -1

[State 1999, Varadd]
type = varset
trigger1 = animelemtime(2)=0
var(0) = 0

[State 1999, Varadd]
type = varadd
trigger1 = animelemno(0)=2
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = (0.3*var(0))*0.75,(0.3*var(0))*0.75

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(animelemno(0)=1,0,floor(256.0*animelemtime(2)/20.0)),256
ignorehitpause = 1

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 28

;---------------------------------------------------------------------------
; Bomb (Type-A)
[Statedef 1920]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1920
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1920, Strike Invuln]
type = nothitby
trigger1 = time=0
time = 48
value = ,AA,AP
ignorehitpause = 1

[State 1900, Decrease Spirit]
type = varset
trigger1 = time = 0
var(54) = 0;-floor(lifemax*0.9*0.333)

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Bomb_FX"
id = 21920
stateno = 21920
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Bomb_FX"
id = 21921
stateno = 21920
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Bomb_FX"
id = 21922
stateno = 21920
pos = 0,-50
postype = p1
ownpal = 1
facing = 1

[State 1910, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 1920,10

[State 210, 1st Hitdef]
type = HitDef
triggerall = movecontact=0&&movereversed=0
trigger1 = animelemno(0)=[4,5]
attr = S,SA
animtype  = Hard
priority = 4,hit
damage    = 0,0
Hitflag = MAF
guardflag = MA
pausetime = 6,6
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -30,-50
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = low
ground.velocity = -8.5,-6.5
guard.velocity = -8.5
air.velocity = -8.5,-6.5
airguard.velocity = -4.5,-6.5
getpower = 1000,40
givepower = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)),20
yaccel = 0.5
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 1900

[State 1900, Increase Spirit]
type = varset
trigger1 = movehit
var(54) = floor(lifemax*0.9*0.25)
persistent=0
ignorehitpause = 1

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(6) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 1900, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;-----------------------
; Bomb Effect
[Statedef 21920]
anim = 21920
velset = 0,0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 21920, AD]
type = angledraw
trigger1 = 1
value = cond(ishelper(21920),0,cond(ishelper(21921),45,-45))
scale = 0.75*(time*0.3) , 0.35*(time*0.3)
ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/30.0),256
ignorehitpause = 1

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 30

;---------------------------------------------------------------------------
; Crush Attack (Type-A)
[Statedef 1940]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1940
poweradd = -500
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1910, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1940,10

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2)=0
anim = 21940
ID = 21940
pos = -4,-50
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
;pausemovetime = var(36)
removeongethit = 1
ignorehitpause = 1

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 220,0
channel = 0

[State 225, PA]
type = posadd
trigger1 = animelemtime(3) = 0
x = 20
[State 225, PA]
type = velset
trigger1 = animelemtime(3) = 0
x = 5.0

[State 220, 1]
type = PlaySnd
trigger1 = animelemtime(3) = 0
value = 0, 2

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=80)||1 ;80
trigger1 = (var(12):=0+16*(var(52)=1))||1

[State 210, 1st Hitdef]
type = HitDef
triggerall = movecontact=0&&movereversed=0
trigger1 = animelemno(0)=4
attr = S,SA
animtype  = Hard
priority = 4,hit
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
Hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8020+(random%2);S8030
sparkxy = -20,-40
hitsound   = s1,8
guardsound = s3,1
ground.type = High
air.type = low
ground.velocity = -6.5,-6.5
guard.velocity = -6.5
air.velocity = -6.5,-6.5
airguard.velocity = -6.5,-6.5
getpower = 0,0
givepower = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)),20
yaccel = 0.5
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 1940

[State -2, Counterhit Explod]
type = Explod
triggerall = numenemy
triggerall = numtarget(1940)
triggerall = target(1940),stateno = [120,155]
triggerall = target(1940),stateno != [7940,7943]
trigger1 = moveguarded
anim = 7910+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1940, PSND]
type = playsnd
trigger1 = moveguarded
value = 2,1
ignorehitpause = 1
persistent = 0

[State 1940, Guard Crush]
type = targetstate
trigger1 = moveguarded=1
trigger1 = numtarget(1940)
trigger1 = target(1940),stateno = [120,155]
trigger1 = target(1940),stateno != [7940,7943]
id = 1940
value = 7940
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(5) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movecontact;=1
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 1900, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;-------------------------
; Guard Crush
[Statedef 7940]
type    = U
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 7940, CS]
type = changestate
trigger1 = statetype = A
value = 7942

[State 7940, STS]
type = statetypeset
trigger1 = time = 0
statetype = S
physics = S

[State 7940, CA]
type = changeanim
trigger1 = 1;time = 0
value = 5300

[State 7940, CS]
type = changestate
trigger1 = hitshakeover=1
trigger2 = time > 60
value = 7941

;-------------------------
; Guard Crush
[Statedef 7941]
type    = S
movetype = H
physics = S

[State 7941, HVS]
type = hitvelset
trigger1 = time = 0
x = 1

[State 7941, CS]
type = selfstate
trigger1 = time>50
value = 0
ctrl = 1

;-------------------------
; Guard Crush - Air
[Statedef 7942]
type    = A
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 7940, CA]
type = changeanim
trigger1 = 1;time = 0
value = 5030

[State 7940, CS]
type = changestate
trigger1 = hitshakeover=1
trigger2 = time > 60
value = 7943

;-------------------------
; Guard Crush - Air
[Statedef 7943]
type    = A
movetype = H
physics = N
sprpriority = 0
velset = -2.0,-6.0

[State 7940, CA]
type = changeanim
trigger1 = time = 0
value = 5050

[State 7940, Grav]
type = veladd
trigger1 = time
y = 0.2

[State 7940, CS]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 5100