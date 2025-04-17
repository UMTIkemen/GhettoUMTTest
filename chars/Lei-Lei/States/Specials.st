; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< SPECIAL STATES >=======================================
;============================================================================================

;======================< ANKIHOU >=============================
[Statedef 1000]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72
facep2 = 1

[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "qcfz", 3, ifelse(command = "qcfy", 2, 1))
[State 1000, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(p2dist x < 100, 3, ifelse(p2dist x < 200, 1, 2))

[State 1000, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 1, 1000, 1001)

[State 1000, width]
type = width
trigger1 = anim = 1000 && animelemtime(4) = 0
value = 75, 0
[State 1000, width]
type = width
trigger1 = anim = 1001 && animelemtime(6) = 0
value = 50, 0

[State 1000, weapon]
type = helper
trigger1 = anim = 1000 && animelemtime(4) = 1 && var(10) = 1
helpertype = normal
stateno = 1005
ID = 1005
name = "Object"
postype = p1
pos = 103, -24
ownpal = 1
[State 1000, weapon]
type = helper
trigger1 = anim = 1001 && animelemtime(6) = 1 && var(10) = 2
helpertype = normal
stateno = 1005
ID = 1005
name = "Object"
postype = p1
pos = 88, -90
ownpal = 1
[State 1000, weapon]
type = helper
trigger1 = anim = 1001 && animelemtime(6) = 1 && var(10) = 3
helpertype = normal
stateno = 1005
ID = 1005
name = "Object"
postype = p1
pos = 56, -101
ownpal = 1

[State 1000, Snd]
type = playsnd
trigger1 = anim = 1000 && animelem = 3
trigger2 = anim = 1001 && animelem = 5
value = 3, 6
channel = 0

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< SENPUUBU >=============================
;--- START ---
[Statedef 1100]
type = U
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72
facep2 = (statetype != A)

[State 1100, statetype]
type = statetypeset
trigger1 = !time && statetype != A
statetype = S
physics = S
[State 1100, statetype]
type = statetypeset
trigger1 = !time && statetype = A
statetype = A
physics = N

[State 1100, Strength]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1100, Dust]
type = explod
trigger1 = (statetype = A) && animelem = 3
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = 16, 8
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 1100, Dust]
type = explod
trigger1 = (statetype = A) && animelem = 3
anim = 7107
ID = 7107
sprpriority = -2
postype = p1
pos = 59, 2
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 17
value = 3, 0
channel = 0
[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 0

[State 1100, Push]
type = playerpush
trigger1 = animelemtime(7) >= 0 || statetype = A
value = 0

[State 1100, statetype]
type = statetypeset
trigger1 = animelemtime(12) >= 0
statetype = A
physics = N

[State 1100, pos12 -15]
type = posadd
trigger1 = animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15
x = ifelse((animelem = 12), 25, ifelse((animelem = 13), 5, 4))
y = ifelse((animelem = 12), -3, ifelse((animelem = 13), -1, ifelse((animelem = 14), -4, -3)))
[State 1100, pos16 -19]
type = posadd
trigger1 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 19
x = ifelse((animelem = 16), 7, ifelse((animelem = 17), 4, ifelse((animelem = 18), -21, 3)))
y = ifelse((animelem = 16), -4, ifelse((animelem = 17), -2, ifelse((animelem = 18), -29, -5)))
[State 1100, pos20 -21]
type = posadd
trigger1 = animelem = 20 || animelem = 21
x = ifelse((animelem = 20), 8, -14)
y = 2

[State 1100, End]
type = changestate
trigger1 = !animtime
value = 1101


;--- SWING ---
[Statedef 1101]
type = A
physics = N
movetype = A
anim = 1101
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1101, swingvar]
type = varadd
trigger1 = !time
var(31) = 1

[State 1101, Push]
type = playerpush
trigger1 = anim = 1101
value = 0
[State 1101, screenbound]
type = screenbound
trigger1 = anim = 1101
value = 0
movecamera = 1, 1
[State 1101, width]
type = width
trigger1 = anim = 1101
edge = 50, 0

[State 1101, claw]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1105
ID = 1105
name = "Senpuubu Claw"
postype = p1

[State 1101, pos1 -4]
type = posadd
trigger1 = anim = 1101 && (animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4)
x = ifelse((animelem = 1), -1, ifelse((animelem = 2), 0, ifelse((animelem = 3), 3, 4)))
y = ifelse((animelem = 1), -7, ifelse((animelem = 2), 4, ifelse((animelem = 3), 4, 5)))
[State 1101, pos5 -8]
type = posadd
trigger1 = anim = 1101 && (animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8)
x = ifelse((animelem = 5), 3, ifelse((animelem = 6), 5, ifelse((animelem = 7), 7, 22)))
y = ifelse((animelem = 5), 4, ifelse((animelem = 6), 5, ifelse((animelem = 7), 8, 11)))
[State 1101, pos9 -12]
type = posadd
trigger1 = anim = 1101 && (animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12)
x = ifelse((animelem = 9), 4, ifelse((animelem = 10), 9, ifelse((animelem = 11), 5, 18)))
y = ifelse((animelem = 9), 3, ifelse((animelem = 10), 5, ifelse((animelem = 11), 2, 8)))
[State 1101, pos13 -16]
type = posadd
trigger1 = anim = 1101 && (animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16)
x = ifelse((animelem = 13), 11, ifelse((animelem = 14), 8, ifelse((animelem = 15), 15, 37)))
y = ifelse((animelem = 13), 5, ifelse((animelem = 14), 2, ifelse((animelem = 15), 3, 0)))
[State 1101, pos17 -20]
type = posadd
trigger1 = anim = 1101 && (animelem = 17 || animelem = 18 || animelem = 19 || animelem = 20)
x = ifelse((animelem = 17), 11, ifelse((animelem = 18), 12, ifelse((animelem = 19), 11, 14)))
y = ifelse((animelem = 17), 0, ifelse((animelem = 18), -1, ifelse((animelem = 19), -1, -3)))
[State 1101, pos21 -24]
type = posadd
trigger1 = anim = 1101 && (animelem = 21 || animelem = 22 || animelem = 23 || animelem = 24)
x = ifelse((animelem = 21), 21, ifelse((animelem = 22), 7, ifelse((animelem = 23), 25, 5)))
y = ifelse((animelem = 21), -4, ifelse((animelem = 22), -4, ifelse((animelem = 23), -3, -2)))
[State 1101, pos25 -28]
type = posadd
trigger1 = anim = 1101 && (animelem = 25 || animelem = 26 || animelem = 27 || animelem = 28)
x = ifelse((animelem = 25), 2, ifelse((animelem = 26), 12, ifelse((animelem = 27), 5, 3)))
y = ifelse((animelem = 25), -1, ifelse((animelem = 26), -9, ifelse((animelem = 27), -2, -4)))
[State 1101, pos29 -32]
type = posadd
trigger1 = anim = 1101 && (animelem = 29 || animelem = 30 || animelem = 31 || animelem = 32)
x = ifelse((animelem = 29), 2, ifelse((animelem = 30), 5, ifelse((animelem = 31), 4, 3)))
y = ifelse((animelem = 29), -2, ifelse((animelem = 30), -5, ifelse((animelem = 31), -5, -6)))
[State 1101, pos33 -36]
type = posadd
trigger1 = anim = 1101 && (animelem = 33 || animelem = 34 || animelem = 35 || animelem = 36)
x = ifelse((animelem = 33), 3, ifelse((animelem = 34), -3, ifelse((animelem = 35), -3, -4)))
y = ifelse((animelem = 33), -4, ifelse((animelem = 34), 4, ifelse((animelem = 35), 6, 5)))
[State 1101, pos37 -40]
type = posadd
trigger1 = anim = 1101 && (animelem = 37 || animelem = 38 || animelem = 39 || animelem = 40)
x = ifelse((animelem = 37), -5, ifelse((animelem = 38), -2, ifelse((animelem = 39), -3, -5)))
y = ifelse((animelem = 37), 5, ifelse((animelem = 38), 2, ifelse((animelem = 39), 4, 2)))
[State 1101, pos41 -44]
type = posadd
trigger1 = anim = 1101 && (animelem = 41 || animelem = 42 || animelem = 43 || animelem = 44)
x = ifelse((animelem = 41), -12, ifelse((animelem = 42), -2, ifelse((animelem = 43), -5, -25)))
y = ifelse((animelem = 41), 9, ifelse((animelem = 42), 1, ifelse((animelem = 43), 2, 3)))
[State 1101, pos45 -48]
type = posadd
trigger1 = anim = 1101 && (animelem = 45 || animelem = 46 || animelem = 47 || animelem = 48)
x = ifelse((animelem = 45), -7, ifelse((animelem = 46), -21, ifelse((animelem = 47), -14, -11)))
y = ifelse((animelem = 45), 4, ifelse((animelem = 46), 4, ifelse((animelem = 47), 3, 1)))
[State 1101, pos49 -52]
type = posadd
trigger1 = anim = 1101 && (animelem = 49 || animelem = 50 || animelem = 51 || animelem = 52)
x = ifelse((animelem = 49), -12, ifelse((animelem = 50), -11, ifelse((animelem = 51), -37, -15)))
y = ifelse((animelem = 49), 1, ifelse((animelem = 50), 0, ifelse((animelem = 51), 0, -3)))
[State 1101, pos53 -56]
type = posadd
trigger1 = anim = 1101 && (animelem = 53 || animelem = 54 || animelem = 55 || animelem = 56)
x = ifelse((animelem = 53), -8, ifelse((animelem = 54), -11, ifelse((animelem = 55), -18, -5)))
y = ifelse((animelem = 53), -2, ifelse((animelem = 54), -5, ifelse((animelem = 55), -8, -2)))
[State 1101, pos57 -60]
type = posadd
trigger1 = anim = 1101 && (animelem = 57 || animelem = 58 || animelem = 59 || animelem = 60)
x = ifelse((animelem = 57), -9, ifelse((animelem = 58), -4, ifelse((animelem = 59), -22, -7)))
y = ifelse((animelem = 57), -5, ifelse((animelem = 58), -3, ifelse((animelem = 59), -11, -7)))
[State 1101, pos61 -64]
type = posadd
trigger1 = anim = 1101 && (animelem = 61 || animelem = 62 || animelem = 63 || animelem = 64)
x = ifelse((animelem = 61), -5, ifelse((animelem = 62), -3, ifelse((animelem = 63), -4, -3)))
y = ifelse((animelem = 61), -5, ifelse((animelem = 62), -4, ifelse((animelem = 63), -5, -4)))
[State 1101, pos65]
type = posadd
trigger1 = anim = 1101 && animelem = 65
y = -4

[State 1101, Snd]
type = playsnd
trigger1 = animelem = 9 || animelem = 42
value = 5, 14

[State 1101, velvar]
type = varset
trigger1 = anim = 1101
var(0) = animelemtime(1)

[State 1101, Anim]
type = changeanim
triggerall = anim = 1101
trigger1 = !animtime
trigger2 = !AIlevel && (command = "a" || command = "b" || command = "c")
trigger3 = AIlevel && numhelper(1105)
trigger3 = helper(1105), movehit = 2 && random < 350
trigger4 = animelemtime(34) < 0 && frontedgedist <= -50
trigger5 = animelemtime(34) >= 0 && backedgedist <= 0
trigger6 = AIlevel
trigger6 = inguarddist && (p2stateno = [3000, 4999])
value = 1102
[State 1101, Ctrl]
type = ctrlset
trigger1 = anim = 1102
value = 1

[State 1101, Vel]
type = velset
trigger1 = anim = 1102 && animelem = 1
x = ifelse(var(0) > 46, -3, 3)
y = ifelse(var(0) < 22, 2, ifelse(var(0) < 46, -4, ifelse(var(0) < 63, 2, -4)))
[State 1101, statetype]
type = statetypeset
trigger1 = anim = 1102
statetype = A
physics = A

[State Idle]
type = statetypeset
trigger1 = anim = 1102
movetype = I


;======================< JIREITOU >=============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 72 * prevstateno != 750
facep2 = 1

[State 1200, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "dfc", 3, ifelse(command = "dfb", 2, 1))
[State 1200, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(random < 667, 2, 3)
[State 1200, Strength]
type = varset
trigger1 = !time && prevstateno = 750
var(10) = 1

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 5
value = 3, 2
channel = 0
[State 1200, Snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 5
value = 1, 3
channel = 1

[State 1205, Snd]
type = playsnd
triggerall = anim = 1200
trigger1= time = 10
trigger2= time = 15 && var(10) >= 2
trigger3= time = 20 && var(10) >= 3
value = 5, 5
channel = 2

[State NHB -ZC]
type = nothitby
trigger1 = prevstateno = 750 && time < 12
value = SCA
time = 1

[State 1200, Blade]
type = helper
trigger1 = anim = 1200 && time = 10 && var(10) = 1
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = ifelse(prevstateno = 750, 36, 18), 0
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = helper
trigger1 = anim = 1200 && time = 10 && var(10) = 2
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
facing = -1
pos = -36, 0
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = helper
trigger1 = anim = 1200 && time = 15 && var(10) = 2
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = 36, 0
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = helper
trigger1 = anim = 1200 && time = 10 && var(10) = 3
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = -54, 0
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = helper
trigger1 = anim = 1200 && time = 15 && var(10) = 3
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = 18, 0
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = helper
trigger1 = anim = 1200 && time = 20 && var(10) = 3
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = 90, 0
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = null
trigger1 = anim = 1200 && animelem = 6 && var(10) = 2
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = 35, 0
ownpal = 1
size.shadowoffset = -3
[State 1200, Blade]
type = null
trigger1 = anim = 1200 && animelem = 6 && var(10) = 2
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = -35, 0
facing = -1
ownpal = 1
size.shadowoffset = -3

[State 1200, Blade]
type = null
trigger1 = anim = 1200 && animelem = 6 && var(10) = 3
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = 0, 0
ownpal = 1
size.shadowoffset = -3
[State 1200, Blade]
type = null
trigger1 = anim = 1200 && time = 20 && var(10) = 3
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = 70, 0
ownpal = 1
size.shadowoffset = -3
[State 1200, Blade]
type = null
trigger1 = anim = 1200 && time = 20 && var(10) = 3
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = -70, 0
facing = -1
ownpal = 1
size.shadowoffset = -3

[State 1200, End]
type = changeanim
trigger1 = anim = 1200 && animelemtime(6) > 0
trigger1 = !numhelper(1205) && time >= 12
value = 1201
persistent = 0

[State 1200, End]
type = changestate
trigger1 = anim = 1201 && !animtime
value = 0
ctrl = 1


;======================< HENKYOUKI >=============================
[Statedef 1300]
type = U
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72
facep2 = (statetype != A)

[State 1300, statetype]
type = statetypeset
trigger1 = !time && statetype != A
statetype = S
physics = S
[State 1300, statetype]
type = statetypeset
trigger1 = !time && statetype = A
statetype = A
physics = N
[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse((statetype != A), 1300, 1301)

[State 1300, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "qcbz", 3, ifelse(command = "qcby", 2, 1))
[State 1300, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = 3

[State 1300, width]
type = width
trigger1 = animelemtime(5) = 0
value = 20, 0

[State 1300, Dust]
type = explod
trigger1 = (anim = 1301) && animelem = 2
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = -15, -13
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 1300, Dust]
type = explod
trigger1 = (anim = 1301) && animelem = 2
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = 68, -13
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 11
channel = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 2

[State 1300, Shake]
type = envshake
trigger1 = animelem = 5
time = 8
fre = 60
ampl = 4

[State 1300, soundwave]
type = helper
trigger1 = animelemtime(5) = 1
helpertype = normal
stateno = 1305
ID = 1305
name = "Soundwave"
postype = p1
pos = 67, ifelse((anim = 1300), -41, -56)
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
[State 1300, Dust]
type = explod
trigger1 = anim = 1300 && animelemtime(5) = 1
trigger2 = anim = 1301 && animelemtime(5) = 1 && pos y >= -25
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
pos = 63, 0
removetime = -2
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1

[State 1300, statetype]
type = statetypeset
trigger1 = anim = 1301 && animelemtime(23) >= 0
physics = A
[State 1300, End]
type = changestate
trigger1 = anim = 1300 && !animtime
value = 0
ctrl = 1


;======================< HOUTENGEKI >=============================
[Statedef 1400]
type = S
physics = S
movetype = A
juggle = 15
velset = 0, 0
ctrl = 0
anim = 1400
sprpriority = 1
facep2 = 1

[State 1400, Strength]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1400, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 1400, Hit]
type = hitdef
trigger1 = !time
trigger1 = !var(38)
trigger1 = p2dist x >= 0 && p2bodydist x <= 32
attr = S, ST
hitflag = M-
priority = 7, Miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1405
guard.dist = 0
fall = 1

[State 1400, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 1
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 1400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 1405]
type = S
movetype = A
physics = S
anim = 1405
poweradd = 80
ctrl = 0

[State Throw]
type = targetstate
trigger1 = !time
value = 1406

[State 1405, grabsnd]
type = playsnd
trigger1 = !time
value = 0, 800
[State 1405, throw]
type = targetstate
trigger1 = !time
value = 1406

[State 1405, throwsnd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0
[State 1405, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1

[State 1405, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 65, 0
[State 1405, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 48, -103
[State 1405, Bind 3]
type = targetbind
trigger1 = animelem = 3
pos = -8, -140

[State 1405, hurt]
type = targetlifeadd
trigger1 = animelem = 3
value = -40
[State 1405, throw]
type = targetstate
trigger1 = animelem = 3
value = 1407

[State 1405, End]
type = changestate
trigger1 = !animtime
value = 1410


;--- SPINNING ---
[Statedef 1410]
type = C
movetype = A
physics = C
anim = 1410
ctrl = 0

[State 1410, throw]
type = targetstate
trigger1 = numtarget && target, vel y > 0
trigger1 = target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
value = 1411
[State 1410, throw]
type = targetstate
trigger1 = numtarget && target, time && target, vel y > 0
trigger1 = target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
value = 1412

[State 1405, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = target, stateno = 1412
pos = 3, -(target, const(size.air.front) + 38)

[State 1410, spin]
type = playsnd
trigger1 = animelemtime(3) >= 0 && !(time % 9)
value = 1, 9
channel = 1
ignorehitpause = 1
[State 1410, spin]
type = playsnd
trigger1 = animelem = 3
value = 5, 16

[State 1410, claws]
type = explod
trigger1 = animelem = 3
anim = 1401
ID = 1400
sprpriority = 2
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
[State 1410, claws]
type = explod
trigger1 = animelem = 3
anim = 1402
ID = 1400
sprpriority = 0
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1

[State 1410, hurt]
type = targetlifeadd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = -16
[State 1410, hurt]
type = targetpoweradd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = 10
[State 1410, Hit]
type = hitadd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = 1
[State 1410, HitSound]
type = playsnd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = 2, 9
[State 1410, Sparks]
type = explod
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
removetime = -2
ownpal = 1
pausemovetime = 300
supermovetime = 300
[State 1410, Blood]
type = helper
triggerall = animelemtime(3) >= 0 && numtarget && var(11) := 2
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1

[State 1410, End]
type = targetstate
trigger1 = hitcount >= 9 || !numtarget || time >= 180
value = 1416
[State 1410, End]
type = changestate
trigger1 = hitcount >= 9 || !numtarget || time >= 180
value = 1415


;--- END ---
[Statedef 1415]
type = S
movetype = I
physics = S
anim = 1415
ctrl = 0
[State 1415, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 1406]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 1406, Anim]
type = changeanim2
trigger1 = !time
value = 1406
[State 1406, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0


[Statedef 1407]
type = A
movetype = H
physics = N
velset = 0, -10
sprpriority = 2
[State 1407, Accel]
type = gravity
trigger1 = 1
[State 1407, fix]
type = posadd
trigger1 = animelem = 3
y = -const(size.mid.pos.y)
[State 1407, Turn]
type = turn
trigger1 = animelem = 3
persistent = 0
[State 1407, Anim]
type = changeanim2
trigger1 = animelemtime(3) > 0 && vel y >= 2
value = 1406
elem = 7
persistent = 0
[State 1407, hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


[Statedef 1411]
type = A
movetype = H
physics = N
velset = 0, -6
sprpriority = 0
[State 1407, fix]
type = posadd
trigger1 = !time
y = ceil(const(size.mid.pos.y) / 2)
[State 1411, Accel]
type = gravity
trigger1 = 1
[State 1411, Anim]
type = changeanim2
trigger1 = !time
value = 1411
[State 1411, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0


[Statedef 1412]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 1412, Anim]
type = changeanim2
trigger1 = !time
value = 1412
[State 1412, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0


[Statedef 1416]
type = A
movetype = H
physics = N
velset = -4.5, -4.5
[State 1416, Accel]
type = gravity
trigger1 = 1
[State 1416, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5052), 5052, 5030)
[State 1416, hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


;=========< POUNCE >==========
[Statedef 1450]
type = A
movetype = A
physics = N
anim = 1450
velset = 0, 0
poweradd = 72
sprpriority = 1
ctrl = 0
juggle = 0
facep2 = 1

[State 1450, Strength]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1450, Push]
type = playerpush
trigger1 = anim != 1451 || vel y < 0
value = 0
ignorehitpause = 1

[State 1450, Vel]
type = velset
trigger1 = numenemy
trigger1 = anim = 1450 && animelem = 2
x = (p2dist x / 34.0)
y = -7.5

[State 1450, Vel]
type = turn
trigger1 = anim = 1450 && vel x < 0
persistent = 0
[State 1450, Vel]
type = velset
trigger1 = anim = 1450 && vel x > 10
x = 10

[State 1450, Accel]
type = gravity
trigger1 = anim = 1450 && animelemtime(2) >= 0
[State 1450, Vel]
type = velmul
trigger1 = anim = 1450 && vel y > 0
y = 1.1

[State 1450, Snd]
type = playsnd
trigger1 = anim = 1450 && animelem = 4
value = 3, 8
channel = 0

[State 1450, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1455
ID = 1455
sprpriority = 2
postype = p1
bindtime = -1
removetime = 300
removeongethit = 1
[State 1450, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1456
ID = 1455
sprpriority = 0
postype = p1
bindtime = -1
removetime = 300
removeongethit = 1

[State 1450, spin]
type = playsnd
trigger1 = anim = 1450 && animelemtime(10) >= 0 && !(gametime % 9)
value = 1, 9
channel = 1
ignorehitpause = 1

[State 1450, Hit]
type = hitdef
trigger1 = anim = 1450 && !(time % 6)
trigger1 = var(11) := 2 && var(12) := -25
attr = A, SA
damage = 10, 0
animtype = Hard
guardflag = HA
hitflag = FD
priority = 4, Hit
pausetime = 0, 0
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -25
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -4, -4
down.velocity = 0, 0
down.hittime = 30
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
fall = (p2statetype = L)
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 3
ID = 1450
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
forcestand = 1

[State 1450, Pos]
type = posset
trigger1 = anim = 1450 && vel y > 0 && pos y >= 0 && movehit && numtarget(1450)
trigger1 = target(1450), statetype = L
x = ceil(target(1450), pos x) - 16 * facing
y = 0
ignorehitpause = 1
[State 1450, Vel]
type = velset
trigger1 = anim = 1450 && vel y > 0 && pos y >= 0 && movehit && numtarget(1450)
trigger1 = target(1450), statetype = L
x = 0
y = 0
ignorehitpause = 1

[State 1450, Anim]
type = changeanim
trigger1 = anim = 1450 && movehit && hitcount >= 6
value = 1451
[State 1450, Vel]
type = velset
trigger1 = anim = 1451
x = -5
y = -5
persistent = 0
[State 1450, Type]
type = statetypeset
trigger1 = anim = 1451
statetype = A
physics = A
movetype = I

[State 1450, removepouncefx]
type = removeexplod
trigger1 = vel y > 0 && pos y >= 10
ID = 1455
[State 1450, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 10
value = 52
