;---------------------------------------------------------------------------
; Lvl 1: Reflowering of Gensokyo
[Statedef 2000]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 2000+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
sprpriority = 1
facep2 = 1
juggle = 0

[State 2000, IKEMEN BUGFIX]
type = NotHitBy
trigger1 = time<=52
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 50
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)
unhittable = 1
movetime = 50
darken = 0

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Rage/Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0

;---System Stuff end---

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 2000,0
channel = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 220,0
channel = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 0,1

[State 800, CS]
type = changestate
trigger1 = numtarget(2000)
trigger1 = movehit
value = 2001
ignorehitpause = 1
persistent = 0

[State 800, IDDQD]
type = HitDef
triggerall = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
trigger1 = !((enemynear(0),stateno=[350,351]) && (p2movetype=H))
trigger1 = !movecontact && !movereversed
trigger1 = Animelemno(0)=3
attr = S,HT
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
;p1stateno = 2001;+1*(var(10)=1)
;fall = 1
;fall.recover = 0
id = 2000
numhits = 1
[State 800, IDDQD]
type = HitDef
triggerall = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
trigger1 = ((enemynear(0),stateno=[350,351]) && (p2movetype=H))
trigger1 = !movecontact && !movereversed
trigger1 = Animelemno(0)=3
attr = S,HT
hitflag = MAF
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
;p1stateno = 2001;+1*(var(10)=1)
;fall = 1
;fall.recover = 0
id = 2000
numhits = 1

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
movetype = I

[State 2000, Land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flower "Reflowering of Gensokyo"
[Statedef 2001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2001+floor(0*(fvar(8):=1.0))
ctrl = 0
sprpriority = 1

[State 1001, ST]
type = targetstate
trigger1 = time = 0
id = 2000
value = 2050

[State 1001, TB]
type = TargetBind
trigger1 = time = 0
id = 2000
pos = 25,0

[State 0, Width]
type = Width
trigger1 = animelemtime(3)<0
edge = 44,0
ignorehitpause=1

[State 0, Width]
type = Width
trigger1 = animelemtime(3)>=0
edge = 60,0
ignorehitpause=1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 2000,2
channel = 0

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1,0
channel = 3

[State 1001, ST]
type = targetstate
trigger1 = animelemtime(2) = 0
id = 2000
value = 2051

[State 1001, TB]
type = TargetBind
trigger1 = animelemtime(2) = 0
id = 2000
pos = 30,-17

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1,2
channel = 3

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(3)=0
value = -ceil(30.0*fvar(11)*cond(var(19)=1,0.85,1.0))
ID = 2000
kill = 0

[State 2002, TLA]
type = targetpoweradd
trigger1 = time = 0
value = ceil(30.0*0.8*fvar(11)*cond(var(19)=1,0.85,1.0))
id = 2000
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = time=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil(30.0*0.6*fvar(11)*cond(var(19)=1,0.85,1.0));*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

;[State 0, TargetLifeAdd]
;type = TargetLifeAdd
;trigger1 = animelemtime(5)=0||animelemtime(7)=0
;value = -1
;ID = 2000
;kill = 0

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(5)=0||animelemtime(7)=0
value = 1,7
channel = 3

[State 1001, PSND]
type = hitadd
trigger1 = animelemtime(5)=0||animelemtime(7)=0
value = 1

[State 1001, TB]
type = TargetBind
trigger1 = animelemtime(3) >= 0
id = 2000
pos = 35,0

[STate 2001, VS]
type = velset
trigger1 = animelemtime(3)>=0
x = 3.5

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3)>=0
trigger1 = (fvar(8):=0.5+0.05*floor(21.0*random/1000.0))||1
persistent = 10
anim = 22000+(random%3)
ID = 22000
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 999999
scale = fvar(8),fvar(8)
sprpriority = -1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time<180
value = 1
movecamera = 1,1
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time>=180
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 2001, CS]
type = changestate
triggerall = time >= 48
trigger1 = frontedgebodydist < 10
trigger2 = numtarget(2000)
trigger2 = target(2000),backedgebodydist < 10
value = 2002

;---------------------------------------------------------------------------
; Flower "Reflowering of Gensokyo"
[Statedef 2002]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2002
ctrl = 0
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 2002, TLA]
type = targetlifeadd
trigger1 = time = 0
value = -ceil(290.0*fvar(11)*cond(var(19)=1,0.85,1.0))
id = 2000
ignorehitpause = 1

[State 2002, TLA]
type = targetpoweradd
trigger1 = time = 0
value = ceil(290.0*0.8*fvar(11)*cond(var(19)=1,0.85,1.0))
id = 2000
ignorehitpause = 1

[State 2002, TLA]
type = hitadd
trigger1 = time = 0
value = 1
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = time=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil(290.0*0.6*fvar(11)*cond(var(19)=1,0.85,1.0));*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

[State 1001, Throw Flag]
type = varset
trigger1 = time=0
fvar(10)=fvar(10)*0.65+0*(var(4):=1)
ignorehitpause = 1
persistent = 0

[State 2002, PSND]
type = playsnd
trigger1 = time = 0
channel = 3
value = 1,8

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 40
freq = 120
ampl = -4
;phase = 90
;ignorehitpause = 
;persistent = 

[State 2000, PSND]
type = playsnd
trigger1 = time = 6
value = 2000,1
channel = 0


[State 1001, ST]
type = targetstate
trigger1 = time = 0
id = 2000
value = 2052

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 8020+(random%2)
ID = 8000
pos = 35,0
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

[State 2002, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
movetype = I
physics = N

[State 2002, VS]
type = velset
trigger1 = animelemtime(5)=0
x = -4.0
y = -3.0

[State 2002, Grav]
type = veladd
trigger1 = animelemtime(5)>0
y = 0.5

[State 2002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2003

;---------------------------------------------------------------------------
; Flower "Reflowering of Gensokyo"
[Statedef 2003]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1012
ctrl = 0
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 2003, PS]
type = posset
trigger1 = time = 0
y = 0

[State 2003, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flower "Reflowering of Gensokyo"
[Statedef 2050]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 2050, CA]
type = changeanim2
trigger1 = time = 0
value = 2050

;---------------------------------------------------------------------------
; Flower "Reflowering of Gensokyo"
[Statedef 2051]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
;persistent = 


[State 2050, CA]
type = changeanim2
trigger1 = time = 0
value = 2051

;---------------------------------------------------------------------------
; Flower "Reflowering of Gensokyo"
[Statedef 2052]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 2050, CA]
type = changeanim2
trigger1 = time = 0
value = 2052

[State 2052, SS]
type = selfstate
trigger1 = time>=130
value = ifelse(alive,5120,5150)







;---------------------------------------------------------------------------
; Lvl 1: Master Spark
[Statedef 2100]
type    = U
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 2100+1*(statetype=A)+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
sprpriority = 1
facep2 = 0;1
juggle = 0

[State 2100, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype!=A
statetype=S
physics=S

[State 2100, FaceP2]
type = turn
trigger1 = time = 0
trigger1 = statetype!=A
trigger1 = p2dist x < 0

[State 2100, VS]
type = varset
trigger1 = time=0
var(10)=cond(statetype!=A,1,2)

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,0
channel = 0

[State 2000, IKEMEN Nothitby]
type = NotHitBy
trigger1 = time<=50
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 50
anim = -1
sound = S4,0
p2defmul = 1
poweradd = cond(var(36),0,-1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2))
unhittable = 1
movetime = 50
darken = 0

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Rage/Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0
;---System Stuff end---

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N

[State 2200, VS]
type = velset
trigger1 = var(10)<=1
trigger1 = animelemtime(5) = 0
x = 0.0
y = -6.0

[State 2200, VS]
type = veladd
trigger1 = vel y < 0
trigger1 = var(10)<=1
trigger1 = animelemtime(10)<0
y = 0.5

[State 4000, Effect]
type = helper
trigger1 = var(10)<=1
trigger1 = animelemtime(9)=0
trigger2 = var(10)>=2
trigger2 = animelemtime(3)=0
helpertype = normal
name = "MasterSparkCharge"
ID = 22100
pos = 44,-22
postype = p1
stateno = 22100
ownpal = 1
facing = 1
supermovetime=50-animelemtime(1)

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(10) = -10
value = 2100,1
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(10) = 0
helpertype = normal
name = "Master Spark"
id = 22101
stateno = 22101
pos = 44,-22
postype = p1
ownpal = 1
facing = 1


[State 2000, PSND]
type = playsnd
trigger1 = projhit22110=1
value = 1,7
channel = 4

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = projhit22110=1||projguarded22110=1
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond((projhit22003=1),ceil(9.0*fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(2.0*cond(var(19)=1,0.85,1.0)))
ignorehitpause = 1

[State 2000, PSND]
type = varset
trigger1 = projhit22110=1
fvar(10) = fvar(10)*0.97

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && (projhit22110 = 1) && (p2stateno!=[6020,6110])
value =6020
ID = 22000
ignorehitpause =1

[State 2000, PSND]
type = playsnd
trigger1 = projguarded22110=1
value = 2,0
channel = 4



;======
[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID =2100
ignorehitpause =1

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(11)=0
movetype = I
ignorehitpause = 1

[State 2100, VA]
type = veladd
trigger1 = animelemtime(12)>=0
y = 0.5

[State 52, 5]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2003
ctrl = 0

[State 2100, AD]
type = angledraw
trigger1 = var(10)<=1
trigger1 = animelemno(0)=[9,11]
trigger2 = var(10)>=2
trigger2 = animelemno(0)=[3,11]
value = -20
ignorehitpause = 1


;---------------------------------------------------------------------------
; Master Spark FX
[Statedef 22100]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22100
ctrl = 0
sprpriority = 5

[State 24000, BTR]
type = bindtoparent
trigger1 = 1
pos = 29,-10;44,-22
ignorehitpause = 1

[State 24000, Scale]
type = angledraw
trigger1 = 1
scale = 1.5*ifelse(time<16,0.1+(0.9*time/16.0),1.0),1.5*ifelse(time<16,0.1+(0.9*time/16.0),1.0)
ignorehitpause = 1

[State 24000, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, Zeeky]
type = destroyself
trigger1 = root,stateno != 2100
trigger2 = root,stateno = 2100
trigger2 = root,animelemtime(11)>=0

;---------------------------------------------------------------------------
; Master Spark FX
[Statedef 22101]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22101
ctrl = 0
sprpriority = 5

[State 22110, VS]
type = varset
trigger1 = time=0
var(19) = root,var(19)

[State 4002, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,10
channel=4

[State 24000, BTR]
type = bindtoparent
trigger1 = 1
pos = 27,-8;44,-22
ignorehitpause = 1

[State 2400, AD]
type = angledraw
trigger1 = 1
value = -65;45
scale = 1.5,1.0
ignorehitpause = 1

[State 24102, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24102, TR]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22000, Damage]
type = null
triggerall = time = 0
trigger1 = (fvar(20):=15.0)||1
trigger1 = (fvar(21):=2.0)||1

[State 1000, 5]
type = Projectile
trigger1 = time>0
persistent = 3
attr = S, HP
projanim = 22110
projid = 22110
projremove = 1
projremovetime = 2
projscale = 1.0,1.0
projpriority = 9999
velocity = 0
offset = 0,0
animtype  = Hard
damage = ceil(fvar(20)*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(fvar(21)*root,fvar(11)*cond(var(19)=1,0.85,1.0))
priority  = 7,Hit
hitflag = MAFPD
guardflag = MA
pausetime = 0,4
sparkxy = floor(p2dist x)-5+floor(11.0*random/1000.0),floor(p2dist y)-5+floor(11.0*random/1000.0)
sparkno = s8010+(random%2)
guard.sparkno = s8030
hitsound   = -1;s1,8
guardsound = -1;s2,0
ground.type = High
ground.slidetime = cond((var(32):=32+root,var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+root,var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=27+root,var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=27+root,var(34))<=1,1,var(32))
air.hittime = cond((var(32):=34+root,var(34))<=1,1,var(32))
ground.velocity = -5.5,-10.5
guard.velocity = -5.5
air.velocity = -5.5, -10.5
airguard.velocity = -5.5, -10.5
down.velocity = -5.5,-8.5
fall = 1
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = ceil(fvar(20)*0.8*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(fvar(20)*0.2*cond(var(19)=1,0.85,1.0))
ownpal = 1
id = 2100
guard.dist = 320
p2facing = 1

[State 22101, Zeeky]
type = destroyself
trigger1 = root,movetype=H
trigger2 = root,alive=0

[State 24103, CS]
type = changestate
trigger1 = root,stateno != 2100
trigger2 = root,stateno = 2100
trigger2 = root,animelemtime(11)>=0
value = 22102

;---------------------------------------------------------------------------
; Master Spark FX
[Statedef 22102]
type    = A
movetype= I
physics = N
velset = 2.5*cos(-65.0*pi/180.0),-2.5*sin(-65.0*pi/180.0)
ctrl = 0
sprpriority = 5

[State 24001, VA]
type = veladd
trigger1 = time
x = 0.25*cos(-65.0*pi/180.0)
y = -0.25*sin(-65.0*pi/180.0)

[State 24102, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24102, TR]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 2400, AD]
type = angledraw
trigger1 = time
value = -65;45
scale = 1.5,1.0*(0.85**time)
ignorehitpause = 1

[State 22101, Zeeky]
type = destroyself
trigger1 = root,movetype=H
trigger2 = root,alive=0

[State 24001, Zeeky]
type = destroyself
trigger1 = time >= 29

;---------------------------------------------------------------------------
; Type A: Spell Trance
[Statedef 3000]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 3000+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 1900, Decrease Spirit]
type = varset
trigger1 = time = 0
var(54) = 0;

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time<=70
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 2999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,0
p2defmul = 1
;poweradd = -2000
unhittable = 1
movetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
trigger1 = (var(57):=power)||1
helpertype = normal
name = "Spell Trance"
id = 23000
stateno = 23000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Type C: Spell Overdrive
[Statedef 3010]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 3000+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time<=70
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 4999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
trigger1 = (var(57):=480)||1
helpertype = normal
name = "Spell Overdrive"
id = 23010
stateno = 23000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970
[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spell Overdrive"
id = 23010
stateno = 30010
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Spell Trance/Rage/Overdrive Helper
[StateDef 23000]
Type = A
MoveType = I
Physics = N
SprPriority = -1
anim = 1998
velset = 0,0

[State 23000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 30000, Spirit]
type = varset
trigger1 = ishelper(23010)||ishelper(23005)
trigger1 = time = 0
var(10) = root,power

[State 23000, T]
type = turn
trigger1 = facing != root,facing 

[State 23000, CA]
type = changeanim
trigger1 = root,movetype != H
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State 23000, Angleset]
type = angleset
trigger1 = 1
value = 0
ignorehitpause = 1

[State 23000, Angleset]
type = angleset
triggerall = root,stateno=2100
trigger1 = root,var(10)<=1
trigger1 = root,animelemno(0)=[9,11]
trigger2 = root,var(10)>=2
trigger2 = root,animelemno(0)=[3,11]
value = -20
ignorehitpause = 1

[State 23000, Flicker]
type = angledraw
trigger1 = 1
scale = 1.05+0.05*(time%2=0),1.05+0.05*(time%2=0)
ignorehitpause = 1

[State 23000, Invis]
type = assertspecial
trigger1 = root,movetype = H
trigger2 = root,stateno=1200
trigger3 = time=0
flag = invisible
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23000)
time = -1
add = 256,256,256
mul = 256,0,0
invertall = 0
color = 0
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23005)
time = -1
add = 256,256,256
mul = 0,256,0
invertall = 0
color = 0
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23010)
time = -1
add = 256,256,256
mul = 256,256,0
invertall = 0
color = 0
ignorehitpause = 1

[State 30000, Deplete Spirit]
type = parentvaradd
triggerall = root,var(52)=1
triggerall = root,var(57)>0
trigger1 = root,stateno!=[3000,3010]
trigger1 = !(root,stateno=2000 && root,time<=50)
trigger1 = !(root,stateno=2100 && root,time<=50)
var(57)=-3

[State 30000, Deplete Spirit]
type = parentvaradd
triggerall = root,var(52)=2||root,var(52)=2
triggerall = root,var(57)>0
trigger1 = root,stateno!=[3000,3010]
trigger1 = !(root,stateno=2000 && root,time<=50)
trigger1 = !(root,stateno=2100 && root,time<=50)
var(57)=-1

[State 30000, Spirit]
type = powerset
trigger1 = ishelper(23000)
value = root,var(57)

[State 30000, Spirit]
type = powerset
trigger1 = ishelper(23010);||ishelper(23010)
trigger1 = root,power>var(10)
value = var(10)

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,0

[State 23000, Zeeky]
type = destroyself
trigger1 = root,var(57)<=0
;trigger1 = root,stateno!=4000
trigger1 = root,stateno!=[2000,2299]

;---------------------------------------------------------------------------
; Last Word: True Master Spark
[Statedef 4000]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 4000+0*floor(var(11):=1)+0*floor(var(12):=0)+0*floor(var(19):=cond((var(57)>0 && var(52)=2),1,0))
sprpriority = 1
facep2 = 1
juggle = 0

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(4)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24000
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24001
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24002
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 4000;2999+1000*(var(52)=2)
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,1
p2defmul = 1
poweradd = 0;-1000*(var(52)=2);Deplete Power only if Type-B
unhittable = 1
movetime = 70

[State 2000, Spell Trance End]
type = varset
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=0
[State 2000, Type-a Deplete Spirit]
type = varset
trigger1 = time = 0
trigger1 = var(52)=1
var(54)=0

;--End System Stuff---
[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 2100,0
channel = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 800, CS]
type = changestate
trigger1 = numtarget(4000)
trigger1 = movehit
value = 4001
ignorehitpause = 1
persistent = 0

[State 800, No Fall Hitdef]
type = HitDef
trigger1 = numenemy
trigger1 = !(p2movetype=H && enemynear(0),hitfall=1)
trigger1 = Animelemtime(3)=0
trigger1 = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
attr = S,HT
hitflag = M;AF
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
;p1stateno = 4001;+1*(var(10)=1)
;fall = 1
;fall.recover = 0
id = 4000
numhits = 1
[State 800, Fall Hitdef]
type = HitDef
trigger1 = numenemy
trigger1 = (p2movetype=H && enemynear(0),hitfall=1)
trigger1 = Animelemtime(3)=0
trigger1 = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
attr = S,HT
hitflag = AF
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
;p1stateno = 4001;+1*(var(10)=1)
;fall = 1
;fall.recover = 0
id = 4000
numhits = 1

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
movetype = I

[State 2000, Land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "True Master Spark"
[Statedef 4001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4001;+0*(var(4):=1)
ctrl = 0
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 1001, ST]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4050

[State 1001, TB]
type = TargetBind
trigger1 = time = 0
id = 4000
pos = 25,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 80,0
ignorehitpause=1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 220,0
channel = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 0,1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1,11

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(3)=0
value = -ceil(40.0*fvar(11)*cond(var(19)=1,0.85,1.0))
ID = 4000
kill = 0

[State 2002, TLA]
type = targetpoweradd
trigger1 = animelemtime(3)=0
value = ceil(40.0*0.8*fvar(11)*cond(var(19)=1,0.85,1.0))
id = 2000
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemtime(3)=0
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil(40.0*0.6*fvar(11)*cond(var(19)=1,0.85,1.0));*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(3)=0
fvar(10) = fvar(10)*0.8
ignorehitpause = 1
persistent = 0


[State 0, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 8020+(random%2)
ID = 8000
pos = 33,-90
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

[State 1001, ST]
type = targetstate
trigger1 = animelemtime(3) = 0
id = 4000
value = 4051

[State 4001, CS]
type = changestate
trigger1 = animelemtime(5)=0
value = 4002

;---------------------------------------------------------------------------
; "True Master Spark"
[Statedef 4002]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4002+floor(0*(fvar(7):=1.0))
ctrl = 0
sprpriority = 1

[State 4002, AS]
type = Angleset
trigger1 = 1
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = 1
value = 0,0,0
under = 1

[State 4002, ASS]
type = assertspecial
trigger1 = 1
flag = nofg
flag2 = nobg
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
;persistent = 

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 4000,1
channel = 0

[State 4000, Effect]
type = helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "MasterSparkCharge"
ID = 24010
pos = 82,-61
postype = p1
stateno = 24010
ownpal = 1
facing = 1

[State 2000, PSND]
type = playsnd
trigger1 = time=120
value = 4000,2
channel = 0
[State 2000, PSND]
type = playsnd
trigger1 = time=120
value = 4000,2
channel = 1


[State 4002, VS]
type = velset
trigger1 = animelemtime(6)>=0
trigger1 = fvar(7)>0.25
x = -5.5*fvar(7)

[State 4002, Scale]
type = angledraw
trigger1 = animelemtime(6)>=0
scale = fvar(7),fvar(7)
ignorehitpause = 1

[State 4002, VM]
type = varset
trigger1 = animelemtime(6)>0
trigger1 = fvar(7)>0.25
fvar(7)=fvar(7)*0.98

[State 4002, VM]
type = varset
trigger1 = animelemtime(6)>0
trigger1 = fvar(7)<0.25
fvar(7)=0.25

[State 4002, VS]
type = velset
trigger1 = animelemtime(6)>=0
trigger1 = fvar(7)<=0.25
x = 0

[State 1001, ST]
type = targetstate
trigger1 = fvar(7)<=0.25
id = 4000
value = 4052
persistent = 0

[State 1001, ST]
type = targetbind
trigger1 = fvar(7)<=0.25
id = 4000
pos = 240,-300
persistent = 0

[State 4002, CS]
type = changestate
trigger1 = time>=144
value = 4003

;---------------------------------------------------------------------------
; "True Master Spark"
[Statedef 4003]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4003
ctrl = 0
sprpriority = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time=0
time = 300
freq = 120
ampl = -8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = 1
value = 0,0,0
under = 1

[State 4002, ASS]
type = assertspecial
trigger1 = 1
flag = nofg
flag2 = nobg
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 4002, Scale]
type = angledraw
trigger1 = time
scale = 0.25,0.25
ignorehitpause = 1

[State 4002, PSND]
type = playsnd
trigger1 = time = 0||time=80||time=160||time=240
value = 4000,11
channel=5
[State 4002, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,12
channel=6
[State 4002, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,12
channel=4

[State 1001, ST]
type = targetstate
trigger1 = time=0
id = 4000
value = 4053
persistent = 0

[State 1001, ST]
type = targetbind
trigger1 = time=0
id = 4000
pos = 240,0
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 22101
ID = 24001
pos = floor(20*0.25),ceil(-61.0*0.25)
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -1
pausemovetime = 999999
scale = 2.0,3.0
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4003, HitAdd]
type = targetlifeadd
trigger1 = time<=300
persistent = 5
id = 4000
value = -ceil(19.0*fvar(11)*cond(var(19)=1,0.85,1.0))
kill=ifelse(time=300,1,0)

[State 4003, HitAdd]
type = targetpoweradd
trigger1 = time<=300
persistent = 5
id = 4000
value = ceil(19.0*0.8*fvar(11)*cond(var(19)=1,0.85,1.0))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
trigger1 = var(54)<ceil(lifemax*0.9)
trigger1 = time<=300
var(54) = ceil(19.0*0.6*fvar(11)*cond(var(19)=1,0.85,1.0));*ifelse(var(42),1.25,1.0))
persistent=0
ignorehitpause = 1
persistent = 5

[State 200, Damage Dampen]
type = varset
trigger1 = time<=300
persistent = 5
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent = 0

[State 4003, HitAdd]
type = HitAdd
trigger1 = time<=300
persistent = 5
value = 1

[State 0, Explod]
type = Explod
trigger1 = time<=300
persistent = 5
anim = 8020+(random%2)
ID = 8000
pos = -20+floor(41.0*random/1000.0),-32+floor(41.0*random/1000.0)
postype = p2
facing = 1
removetime = -2
pausemovetime = 999999
scale = 2.0,2.0
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4003, APFX]
type = allpalfx
trigger1 = time>=290 && time<306
time = 2
add = floor(256.0*(time-290)/16.0),floor(256.0*(time-290)/16.0),floor(256.0*(time-290)/16.0)

[State 4003, APFX]
type = allpalfx
trigger1 = time>=306
time = 2
add = 256,256,256

[State 4003, CS]
type = changestate
trigger1 = time>=336;366+240
value = 4004

;---------------------------------------------------------------------------
; "True Master Spark"
[Statedef 4004]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0;+floor(0*(fvar(10):=0.2))+floor(0*(var(4):=1))
sprpriority = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=0
id = 24001

[State 4004, PS]
type = posset
trigger1 = time = 0
x = -80*facing
y = 0

[State 1001, ST]
type = targetstate
trigger1 = time=0
id = 4000
value = 4054
persistent = 0

[State 1001, ST]
type = targetbind
trigger1 = time=0
id = 4000
pos = 200,-400
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 4003, APFX]
type = allpalfx
trigger1 = time<16
time = 2
add = 256-floor(256.0*time/16.0),256-floor(256.0*time/16.0),256-floor(256.0*time/16.0)

[State 4004, CA]
type = changeanim
trigger1 = anim!=4004
trigger1 = target(4000),stateno = 6100
value = 4004

[State 4004, CS]
type = stopsnd
trigger1 = anim = 4004
trigger1 = animtime=0
channel = 7

[State 4004, CS]
type = changestate
trigger1 = anim = 4004
trigger1 = animtime=0
value = 0
ctrl = 1


;-----------------------
; Last Word Effect
[Statedef 24000]
anim = 24000
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
value = cond(ishelper(24000),0,cond(ishelper(24001),45,-45))
scale = 0.75*(time*0.3)*0.667,0.35*(time*0.3)*0.667
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
; True Masterspark FX
[Statedef 24010]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 24010
ctrl = 0
sprpriority = 5

[State 24000, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,10

[State 24000, VS]
type = varset
trigger1 = 1
fvar(0) = root,fvar(7)

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
pos = floor(82.0*fvar(0)),ceil(-61.0*fvar(0))
ignorehitpause = 1

[State 24000, Scale]
type = angledraw
trigger1 = 1
scale = 3.0*fvar(0)*ifelse(time<16,0.1+(0.9*time/16.0),1.0),3.0*fvar(0)*ifelse(time<16,0.1+(0.9*time/16.0),1.0)
ignorehitpause = 1

[State 24000, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, Zeeky]
type = destroyself
trigger1 = root,stateno = 4004

;---------------------------------------------------------------------------
; Masterspark Hit State
[Statedef 4050]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 2050, CA]
type = changeanim2
trigger1 = time = 0
value = 2050

;---------------------------------------------------------------------------
; MasterSpark Hitstate
[Statedef 4051]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent = 


[State 2050, CA]
type = changeanim2
trigger1 = time = 0
value = 4051

[State 4051, VS]
type = velset
trigger1 = animelemtime(6)>=0
x = -4
y = -20

;---------------------------------------------------------------------------
; MasterSpark Hitstate
[Statedef 4052]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent = 

[State 2050, CA]
type = changeanim2
trigger1 = time = 0
value = 4052

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 0.25,0.25
ignorehitpause = 1

[State 4051, VS]
type = velset
trigger1 = time=0
x = 0
y = 3;2

[State 4051, VS]
type = veladd
trigger1 = 1
x = 0
y = 0.135;125

;---------------------------------------------------------------------------
; MasterSpark Hitstate
[Statedef 4053]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent = 

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time
value = 0
scale = 0.25,0.25
ignorehitpause = 1

;---------------------------------------------------------------------------
; MasterSpark Hitstate
[Statedef 4054]
type    = A
movetype= H
physics = N
velset = 0,20
ctrl = 0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent = 

[State 0, AngleDraw]
type = veladd
trigger1 = 1
y = 0.5

[State 4054, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 6100

