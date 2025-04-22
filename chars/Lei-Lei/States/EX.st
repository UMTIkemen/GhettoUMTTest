; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;===================================< EXTRA SPECIAL STATES >===================================
;============================================================================================

;======================< CHUUKADAN >=============================
[Statedef 2000]
type = S
physics = S
movetype = A
anim = 2000
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 2000, Strength]
type = varset
trigger1 = !time
var(10) = 5

[State 2000, bomb]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 2004
ID = 2005
name = "Bomb"
postype = p1
pos = 88, -90
ownpal = 1

[State 2000, snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 0
channel = 0
[State 2000, spinsnd]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
channel = 1

[State 2000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- < DETONATE > ---
[Statedef 2002]
type = S
movetype = I
physics = S
anim = 2002
velset = 0, 0
ctrl = 0
[State 2002, snd]
type = playsnd
trigger1 = animelem = 3
value = 5000, 0
channel = 0
[State 2002, snd]
type = playsnd
trigger1 = animelem = 3 && numhelper(2005)
trigger1 = (helper(2005), rootdist x != [ -155, 155])
value = 4, 9
channel = 0
[State 2002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< JIREITOU >=============================
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -2000
facep2 = 1

[State 3200, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 3200, snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 4
value = 4, 1
channel = 0
volume = 200

[State 3200, bound]
type = screenbound
trigger1 = anim = 1200 && animelemtime(6) >= 0 && backedgedist < 50 && numhelper(3205)
trigger1 = helper(3205), var(3)
value = 0

[State 3200, snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 5
value = 4, 2
channel = 0
[State 3200, snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 5
value = 1, 3
channel = 1

[State 3200, Blade]
type = helper
trigger1 = anim = 1200 && animelem = 6
helpertype = normal
stateno = 3205
ID = 3205
name = "Blade"
postype = p1
pos = 25, 0
ownpal = 1
size.shadowoffset = -3

[State 3200, NHB]
type = nothitby
trigger1 = anim = 1200 && animelemtime(6) < 0
time = 1
value = SCA

[State 3200, Offscreen]
type = changestate
trigger1 = anim = 1200 && animelemtime(6) > 0 && backedgedist <= -25
trigger1 = !numhelper(3205) || time >= 240
value = 115

[State 3200, End]
type = changeanim
trigger1 = anim = 1200 && animelemtime(6) > 0 && backedgedist > -25
trigger1 = !numhelper(3205) || time >= 240
value = 1201
persistent = 0

[State 3200, End]
type = changestate
trigger1 = anim = 1201 && !animtime
value = 0
ctrl = 1


;======================< TENRAIHA >=============================
[Statedef 3400]
type = S
physics = S
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -3000
facep2 = 1

[State 3400, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 7

[State 3400, snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 7
channel = 0
volume = 200

[State 3400, width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(17) < 0
player = 20, 0

[State 3400, shockwave]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 3405
ID = 3405
name = "Shockwave"
postype = p1
pos = 106, 0
size.xscale = 1
size.yscale = 1
[State 3400, dust]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 3406
ID = 3406
name = "Red Dust"
postype = p1
pos = 106, 0
size.xscale = 2
ownpal = 1

[State 3400, snd]
type = playsnd
trigger1 = animelem = 9
value = 5, 3
[State 3400, Shake]
type = envshake
trigger1 = animelem = 9
time = 24
freq = 90
ampl = 12

[State 3400, hit]
type = hitdef
trigger1 = !movecontact && !movereversed
trigger1 = animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
trigger1 = var(11) := -1
attr = S, HA
damage = 146, 7
animtype = Hard
guardflag = H
hitflag = MAFD
priority = 4, Hit
pausetime = 4, 12
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 5), -90, ifelse((animelem = 6), -74, ifelse((animelem = 7), -54, ifelse((animelem = 8), -30, -13))))
hitsound = s2, 3
guardsound = s2, 0
ground.type = Low
ground.hittime = 16
ground.slidetime = 16
ground.velocity = 0, 0
air.type = Low
air.velocity = -2.5, -5
getpower = 0
givepower = 36, 36
envshake.time = 6
envshake.ampl = 5
air.fall = 1
fall.recover = 0
persistent = 0
yaccel = 0.5
forcestand = 1

[State 3400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< BOWLING >=============================
[Statedef 3500]
type = S
physics = S
movetype = A
anim = 3500
ctrl = 0
velset = 0, 0
juggle = 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3500, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3500, hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !var(38)
trigger1 = p2dist x >= 0 && p2bodydist x <= 36
ID = 3500
attr = S, HT
hitflag = M-
priority = 7, Miss
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3501
animtype = Diagup
ground.velocity = -4.5, -9
air.velocity = -4.5, -9
fall = 1
fall.recover = 0
[State 3500, hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = numenemy
trigger1 = (enemynear, movetype = H) || enemynear, stateno = 40
attr = S, HT
hitflag = 

[State 3500, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 0
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 3500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 3501]
type = S
physics = N
movetype = A
anim = 3501
ctrl = 0
velset = 0, 0
sprpriority = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 3505

[State 3501, grabsnd]
type = playsnd
trigger1 = !time
value = 0, 800

[State 3501, Anim]
type = changeanim
trigger1 = !time && frontedgebodydist >= backedgebodydist
value = 3501
elem = 4
[State 3501, turn]
type = turn
trigger1 = !time && frontedgebodydist < backedgebodydist
[State 3501, width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(23) < 0
edge = 70, 0
[State 3501, throw]
type = targetfacing
trigger1 = animelemtime(21) < 0
value = -1
[State 3501, throw]
type = targetfacing
trigger1 = animelemtime(21) >= 0
value = 1
persistent = 0

[State 3501, throw]
type = targetstate
trigger1 = animelem = 4
value = 3506
[State 3501, snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 11
channel = 0

[State 3501, bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -28, 0
[State 3501, bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 0, 0
[State 3501, bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 36, 0

[State 3501, bind squish]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(8) < 0
pos = 63, -27
[State 3501, bind spin]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(22) < 0
pos = -4, -58
[State 3501, bind 22]
type = targetbind
trigger1 = animelem = 22
pos = 94, 0

[State 3501, hurt]
type = targetlifeadd
trigger1 = animelem = 11 || animelem = 15 || animelem = 19
value = -ceil(20 * fvar(12))
kill = 0
[State 3501, givepower]
type = targetpoweradd
trigger1 = animelem = 11 || animelem = 15 || animelem = 19
value = 36

[State 3501, throw]
type = targetstate
trigger1 = animelem = 22
value = 3507
[State 3501, snd]
type = playsnd
trigger1 = animelem = 21
value = 3, 6
channel = 0
[State 3501, snd]
type = playsnd
trigger1 = animelem = 22
value = 5, 17
[State 3501, ball]
type = helper
trigger1 = animelemtime(22) >= 0 && numtarget && !numhelper(3510)
trigger1 = target, stateno = 3507
helpertype = normal
stateno = 3510
ID = 3510
name = "Bowling Ball"
postype = p1
pos = 94, 0
facing = 1
ownpal = 1
persistent = 0

[State 3501, targetpos]
type = varset
trigger1 = animelemtime(22) < 0
fvar(20) = 0;94
[State 3501, targetpos]
type = varset
trigger1 = animelemtime(22) >= 0 && numtarget
trigger1 = target, stateno = 3507
fvar(20) = (target, pos x)
[State 3501, targetanim]
type = varset
trigger1 = numtarget
trigger1 = target, stateno = 3507
var(35) = target, selfanimexist(7688)

[State 3501, throw]
type = targetstate
triggerall = animelemtime(22) >= 0 && numtarget
triggerall = target, stateno = 3507
trigger1 = numhelper(3511)
trigger1 = helper(3511), stateno = 3512
trigger2 = (target, facing = 1) && (target, pos x >= 100)
trigger3 = (target, facing = -1) && (target, pos x <= -100)
trigger4 = target, time >= 180
value = 3508

[State 3501, pin]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 3511
ID = 3511
name = "Pin"
postype = back
pos = 320, 0
facing = -1
ownpal = 1

[State 3501, spin]
type = playsnd
trigger1 = animelem = 11 || animelem = 15 || animelem = 19
value = 1, 6
channel = 1

[State 3501, Anim]
type = changeanim
trigger1 = animelemtime(24) >= 0 && animelemtime(25) < 0 && numtarget
trigger1 = target, stateno = 3507
value = 3501
elem = 24
[State 3501, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 3505]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 2
[State 3505, Anim]
type = changeanim2
trigger1 = !time
value = 3505

[Statedef 3506]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0
[State 3506, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0
[State 3506, Anim]
type = changeanim2
trigger1 = !time && !selfanimexist(7689)
value = 3506
[State 3506, Anim]
type = changeanim
trigger1 = time <= 19 && selfanimexist(7689)
value = 7689
elem = 1
[State 3506, Anim]
type = changeanim
trigger1 = (time = [20, 23]) && selfanimexist(7689)
value = 7689
elem = 2
[State 3506, Anim]
type = changeanim2
trigger1 = time >= 24
value = 3506
elem = 3
[State 3506, fade]
type = palfx
trigger1 = time >= 24 && !selfanimexist(7688)
add = -255, -255, -255
time = 2

[Statedef 3507]
type = C
physics = N
movetype = H
velset = 12, 0
ctrl = 0
sprpriority = 3
[State 3507, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 1
[State 3507, Pos]
type = posset
trigger1 = 1
y = -1
[State 3507, Anim]
type = changeanim2
trigger1 = !selfanimexist(7688)
value = 3507
[State 3506, Anim]
type = changeanim
trigger1 = selfanimexist(7688)
value = 7688
elem = 1
[State 3507, End]
type = changestate
trigger1 = time >= 180 && frontedgedist <= 0
value = 3508
[State 3507, fade]
type = palfx
trigger1 = !selfanimexist(7688)
add = -255, -255, -255
time = 2

[Statedef 3508]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5030

[State 3508, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3508, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 6

[State 3508, Anim]
type = changeanim
trigger1 = anim != 5052 && selfanimexist(5052)
value = 5052
[State 3508, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime && selfanimexist(5035)
trigger2 = anim = 5035 && !animtime
value = ifelse((anim = 5030), 5035, 5050)
[State 3508, fade]
type = palfx
trigger1 = !time && !selfanimexist(7688)
add = -255, -255, -255
sinadd = 255, 255, 255, 80
time = 20
[State 3508, hurt]
type = lifeadd
trigger1 = !time
value = -120
kill = 1
persistent = 0
[State 3508, Vel]
type = velset
trigger1 = !time
x = -4
y = -12
persistent = 0
[State 3508, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 3508, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100
