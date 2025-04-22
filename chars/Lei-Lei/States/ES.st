; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=================================< ENHANCED SPECIAL STATES >====================================
;==============================================================================================

;========================< ANKIHOU >=============================
[Statedef 1050]
type = S
physics = S
movetype = A
anim = 1050
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 1050, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1050, width]
type = width
trigger1 = animelemtime(4) = 0 || animelemtime(11) = 0 || animelemtime(18) = 0
value = 75, 0

[State 1050, weapon]
type = helper
trigger1 = animelemtime(4) = 1 || animelemtime(11) = 1 || animelemtime(18) = 1
helpertype = normal
stateno = 1055
ID = 1055
name = "Spiked Ball"
postype = p1
pos = 103, 0
ownpal = 1

[State 1055, spinsnd]
type = playsnd
trigger1 = animelem = 4
value = 3, 8
channel = 0
[State 1055, spinsnd]
type = playsnd
trigger1 = animelem = 11
value = 3, 7
channel = 0
[State 1055, spinsnd]
type = playsnd
trigger1 = animelem = 18
value = 3, 3
channel = 0
[State 1055, spinsnd]
type = playsnd
trigger1 = animelemtime(4) = 1 || animelemtime(11) = 1 || animelemtime(18) = 1
value = 5, 6

[State 1050, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================< SENPUUBU >=============================
;--- START ---
[Statedef 1120]
type = U
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = (statetype != A)

[State 1120, statetype]
type = statetypeset
trigger1 = !time && statetype != A
statetype = S
physics = S
[State 1120, statetype]
type = statetypeset
trigger1 = !time && statetype = A
statetype = A
physics = N

[State 1120, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1120, swingvar]
type = varset
trigger1 = var(32)
var(32) = 0

[State 1120, dust]
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
[State 1120, dust]
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

[State 1120, snd]
type = playsnd
trigger1 = animelem = 17
value = 3, 0
channel = 0
[State 1120, snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 0

[State 1120, Push]
type = playerpush
trigger1 = animelemtime(7) >= 0 || statetype = A
value = 0

[State 1120, pos12 -15]
type = posadd
trigger1 = animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15
x = ifelse((animelem = 12), 25, ifelse((animelem = 13), 5, 4))
y = ifelse((animelem = 12), -3, ifelse((animelem = 13), -1, ifelse((animelem = 14), -4, -3)))
[State 1120, pos16 -19]
type = posadd
trigger1 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 19
x = ifelse((animelem = 16), 7, ifelse((animelem = 17), 4, ifelse((animelem = 18), -21, 3)))
y = ifelse((animelem = 16), -4, ifelse((animelem = 17), -2, ifelse((animelem = 18), -29, -5)))
[State 1120, pos20 -21]
type = posadd
trigger1 = animelem = 20 || animelem = 21
x = ifelse((animelem = 20), 8, -14)
y = 2

[State 1120, statetype]
type = statetypeset
trigger1 = animelemtime(12) >= 0
statetype = A
physics = N

[State 1120, End]
type = changestate
trigger1 = !animtime
value = 1121


;--- SWING ---
[Statedef 1121]
type = A
physics = N
movetype = A
anim = 1101
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1121, swingvar]
type = varadd
trigger1 = !time
var(31) = 1

[State 1121, Push]
type = playerpush
trigger1 = anim = 1101
value = 0
[State 1121, screenbound]
type = screenbound
trigger1 = anim = 1101
value = 0
movecamera = 1, 1
[State 1121, width]
type = width
trigger1 = anim = 1101
edge = 50, 0

[State 1121, claw]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1105
ID = 1125
name = "Senpuubu Claw"
postype = p1

[State 1121, pos1 -4]
type = posadd
trigger1 = anim = 1101 && (animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4)
x = ifelse((animelem = 1), -1, ifelse((animelem = 2), 0, ifelse((animelem = 3), 3, 4)))
y = ifelse((animelem = 1), -7, ifelse((animelem = 2), 4, ifelse((animelem = 3), 4, 5)))
[State 1121, pos5 -8]
type = posadd
trigger1 = anim = 1101 && (animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8)
x = ifelse((animelem = 5), 3, ifelse((animelem = 6), 5, ifelse((animelem = 7), 7, 22)))
y = ifelse((animelem = 5), 4, ifelse((animelem = 6), 5, ifelse((animelem = 7), 8, 11)))
[State 1121, pos9 -12]
type = posadd
trigger1 = anim = 1101 && (animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12)
x = ifelse((animelem = 9), 4, ifelse((animelem = 10), 9, ifelse((animelem = 11), 5, 18)))
y = ifelse((animelem = 9), 3, ifelse((animelem = 10), 5, ifelse((animelem = 11), 2, 8)))
[State 1121, pos13 -16]
type = posadd
trigger1 = anim = 1101 && (animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16)
x = ifelse((animelem = 13), 11, ifelse((animelem = 14), 8, ifelse((animelem = 15), 15, 37)))
y = ifelse((animelem = 13), 5, ifelse((animelem = 14), 2, ifelse((animelem = 15), 3, 0)))
[State 1121, pos17 -20]
type = posadd
trigger1 = anim = 1101 && (animelem = 17 || animelem = 18 || animelem = 19 || animelem = 20)
x = ifelse((animelem = 17), 11, ifelse((animelem = 18), 12, ifelse((animelem = 19), 11, 14)))
y = ifelse((animelem = 17), 0, ifelse((animelem = 18), -1, ifelse((animelem = 19), -1, -3)))
[State 1121, pos21 -24]
type = posadd
trigger1 = anim = 1101 && (animelem = 21 || animelem = 22 || animelem = 23 || animelem = 24)
x = ifelse((animelem = 21), 21, ifelse((animelem = 22), 7, ifelse((animelem = 23), 25, 5)))
y = ifelse((animelem = 21), -4, ifelse((animelem = 22), -4, ifelse((animelem = 23), -3, -2)))
[State 1121, pos25 -28]
type = posadd
trigger1 = anim = 1101 && (animelem = 25 || animelem = 26 || animelem = 27 || animelem = 28)
x = ifelse((animelem = 25), 2, ifelse((animelem = 26), 12, ifelse((animelem = 27), 5, 3)))
y = ifelse((animelem = 25), -1, ifelse((animelem = 26), -9, ifelse((animelem = 27), -2, -4)))
[State 1121, pos29 -32]
type = posadd
trigger1 = anim = 1101 && (animelem = 29 || animelem = 30 || animelem = 31 || animelem = 32)
x = ifelse((animelem = 29), 2, ifelse((animelem = 30), 5, ifelse((animelem = 31), 4, 3)))
y = ifelse((animelem = 29), -2, ifelse((animelem = 30), -5, ifelse((animelem = 31), -5, -6)))
[State 1121, pos33 -36]
type = posadd
trigger1 = anim = 1101 && (animelem = 33 || animelem = 34 || animelem = 35 || animelem = 36)
x = ifelse((animelem = 33), 3, ifelse((animelem = 34), -3, ifelse((animelem = 35), -3, -4)))
y = ifelse((animelem = 33), -4, ifelse((animelem = 34), 4, ifelse((animelem = 35), 6, 5)))
[State 1121, pos37 -40]
type = posadd
trigger1 = anim = 1101 && (animelem = 37 || animelem = 38 || animelem = 39 || animelem = 40)
x = ifelse((animelem = 37), -5, ifelse((animelem = 38), -2, ifelse((animelem = 39), -3, -5)))
y = ifelse((animelem = 37), 5, ifelse((animelem = 38), 2, ifelse((animelem = 39), 4, 2)))
[State 1121, pos41 -44]
type = posadd
trigger1 = anim = 1101 && (animelem = 41 || animelem = 42 || animelem = 43 || animelem = 44)
x = ifelse((animelem = 41), -12, ifelse((animelem = 42), -2, ifelse((animelem = 43), -5, -25)))
y = ifelse((animelem = 41), 9, ifelse((animelem = 42), 1, ifelse((animelem = 43), 2, 3)))
[State 1121, pos45 -48]
type = posadd
trigger1 = anim = 1101 && (animelem = 45 || animelem = 46 || animelem = 47 || animelem = 48)
x = ifelse((animelem = 45), -7, ifelse((animelem = 46), -21, ifelse((animelem = 47), -14, -11)))
y = ifelse((animelem = 45), 4, ifelse((animelem = 46), 4, ifelse((animelem = 47), 3, 1)))
[State 1121, pos49 -52]
type = posadd
trigger1 = anim = 1101 && (animelem = 49 || animelem = 50 || animelem = 51 || animelem = 52)
x = ifelse((animelem = 49), -12, ifelse((animelem = 50), -11, ifelse((animelem = 51), -37, -15)))
y = ifelse((animelem = 49), 1, ifelse((animelem = 50), 0, ifelse((animelem = 51), 0, -3)))
[State 1121, pos53 -56]
type = posadd
trigger1 = anim = 1101 && (animelem = 53 || animelem = 54 || animelem = 55 || animelem = 56)
x = ifelse((animelem = 53), -8, ifelse((animelem = 54), -11, ifelse((animelem = 55), -18, -5)))
y = ifelse((animelem = 53), -2, ifelse((animelem = 54), -5, ifelse((animelem = 55), -8, -2)))
[State 1121, pos57 -60]
type = posadd
trigger1 = anim = 1101 && (animelem = 57 || animelem = 58 || animelem = 59 || animelem = 60)
x = ifelse((animelem = 57), -9, ifelse((animelem = 58), -4, ifelse((animelem = 59), -22, -7)))
y = ifelse((animelem = 57), -5, ifelse((animelem = 58), -3, ifelse((animelem = 59), -11, -7)))
[State 1121, pos61 -64]
type = posadd
trigger1 = anim = 1101 && (animelem = 61 || animelem = 62 || animelem = 63 || animelem = 64)
x = ifelse((animelem = 61), -5, ifelse((animelem = 62), -3, ifelse((animelem = 63), -4, -3)))
y = ifelse((animelem = 61), -5, ifelse((animelem = 62), -4, ifelse((animelem = 63), -5, -4)))
[State 1121, pos65]
type = posadd
trigger1 = anim = 1101 && animelem = 65
y = -4

[State 1121, snd]
type = playsnd
trigger1 = animelem = 9 || animelem = 42
value = 5, 14

[State 1121, velvar]
type = varset
trigger1 = anim = 1101
var(0) = animelemtime(1)
[State 3100, swingthvar]
type = varadd
trigger1 = anim = 1101 && !animtime
var(32) = 1

[State 1121, Anim]
type = changeanim
triggerall = anim = 1101
trigger1 = !animtime && var(32) >= 2
trigger2 = !AIlevel && (command = "a" || command = "b" || command = "c")
trigger3 = AIlevel && numhelper(1105)
trigger3 = helper(1125), movehit = 2 && random < 350
trigger4 = animelemtime(34) < 0 && frontedgedist <= -100
trigger5 = animelemtime(34) >= 0 && backedgedist <= -50
value = 1102
[State 1121, Ctrl]
type = ctrlset
trigger1 = anim = 1102
value = 1

[State 1121, Vel]
type = velset
trigger1 = anim = 1102 && animelem = 1
x = ifelse(var(0) > 46, -3, 3)
y = ifelse(var(0) < 22, 2, ifelse(var(0) < 46, -4, ifelse(var(0) < 63, 2, -4)))
[State 1121, statetype]
type = statetypeset
trigger1 = anim = 1102
statetype = A
physics = A

[State Idle]
type = statetypeset
trigger1 = anim = 1102
movetype = I


;========================< JIREITOU >=============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State 1220, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1220, snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 5
value = 3, 2
channel = 0
[State 1220, snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 5
value = 1, 3
channel = 1

[State 1205, Snd]
type = playsnd
triggerall = anim = 1200
trigger1= time = 10
trigger2= time = 16 && var(10) >= 2
trigger3= time = 22 && var(10) >= 3
value = 5, 5
channel = 2

[State 1220, Blade]
type = helper
trigger1 = anim = 1200 && time = 10
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = 0, 0
ownpal = 1
size.shadowoffset = -3

[State 1220, Blade]
type = helper
trigger1 = anim = 1200 && time = 16
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = 70, 0
ownpal = 1
size.shadowoffset = -3

[State 1220, Blade]
type = helper
trigger1 = anim = 1200 && time = 16
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = -70, 0
facing = -1
ownpal = 1
size.shadowoffset = -3

[State 1220, Blade]
type = helper
trigger1 = anim = 1200 && time = 22
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = 140, 0
ownpal = 1
size.shadowoffset = -3

[State 1220, Blade]
type = helper
trigger1 = anim = 1200 && time = 22
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = -140, 0
facing = -1
ownpal = 1
size.shadowoffset = -3

[State 1220, End]
type = changeanim
trigger1 = anim = 1200 && animelemtime(6) > 0
trigger1 = !numhelper(1225) && time >= 12
value = 1201
persistent = 0

[State 1220, End]
type = changestate
trigger1 = anim = 1201 && !animtime
value = 0
ctrl = 1


;========================< HENKYOUKI >=============================
[Statedef 1320]
type = U
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = (statetype != A)

[State 1320, statetype]
type = statetypeset
trigger1 = !time && statetype != A
statetype = S
physics = S
[State 1320, statetype]
type = statetypeset
trigger1 = !time && statetype = A
statetype = A
physics = N
[State 1320, Anim]
type = changeanim
trigger1 = !time
value = ifelse((statetype != A), 1300, 1301)

[State 1320, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1320, width]
type = width
trigger1 = animelemtime(5) = 0
value = 20, 0

[State 1320, dust]
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
[State 1320, dust]
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

[State 1320, snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 2
channel = 0
[State 1320, snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 12

[State 1320, Shake]
type = envshake
trigger1 = animelem = 5
time = 12
freq = 60
ampl = 6

[State 1320, soundwave]
type = helper
trigger1 = animelemtime(5) = 1
helpertype = normal
stateno = 1325
ID = 1325
name = "Soundwave"
postype = p1
pos = 67, ifelse((anim = 1300), -41, -56)
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
[State 1320, dust]
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
scale = 1, 1
pausemovetime = -1
supermovetime = -1

[State 1320, statetype]
type = statetypeset
trigger1 = anim = 1301 && animelemtime(23) >= 0
physics = A
[State 1320, End]
type = changestate
trigger1 = anim = 1300 && !animtime
value = 0
ctrl = 1


;===========< POUNCE >==========
[Statedef 1460]
type = A
movetype = A
physics = N
anim = 1450
velset = 0, 0
poweradd = -1000
sprpriority = 1
ctrl = 0
juggle = 0
facep2 = 1

[State 1460, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1460, Push]
type = playerpush
trigger1 = anim != 1451 || vel y < 0
value = 0
ignorehitpause = 1

[State 1460, Vel]
type = velset
trigger1 = numenemy
trigger1 = anim = 1450 && animelem = 2
x = (p2dist x / 34.0)
y = -7.5

[State 1460, Vel]
type = turn
trigger1 = anim = 1450 && vel x < 0
persistent = 0
[State 1460, Vel]
type = velset
trigger1 = anim = 1450 && vel x > 10
x = 10

[State 1460, Accel]
type = gravity
trigger1 = anim = 1450 && animelemtime(2) >= 0
[State 1460, Vel]
type = velmul
trigger1 = anim = 1450 && vel y > 0
y = 1.1

[State 1460, snd]
type = playsnd
trigger1 = anim = 1450 && animelem = 4
value = 3, 8
channel = 0

[State 1460, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1455
ID = 1455
sprpriority = 2
postype = p1
bindtime = -1
removetime = 300
removeongethit = 1
[State 1460, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1456
ID = 1455
sprpriority = 0
postype = p1
bindtime = -1
removetime = 300
removeongethit = 1

[State 1460, spin]
type = playsnd
trigger1 = anim = 1450 && animelemtime(10) >= 0 && !(gametime % 9)
value = 1, 9
channel = 1
ignorehitpause = 1

[State 1460, hit]
type = hitdef
trigger1 = anim = 1450 && !(time % 6)
trigger1 = var(11) := 2 && var(12) := -25
attr = A, SA
damage = 14, 0
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
getpower = 0
givepower = 36, 36
fall = (p2statetype = L)
fall.recover = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
ID = 1460
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1460, Pos]
type = posset
trigger1 = anim = 1450 && vel y > 0 && pos y >= 0 && movehit && numtarget(1460)
trigger1 = target(1460), statetype = L
x = ceil(target(1460), pos x) - 16 * facing
y = 0
ignorehitpause = 1
[State 1460, Vel]
type = velset
trigger1 = anim = 1450 && vel y > 0 && pos y >= 0 && movehit && numtarget(1460)
trigger1 = target(1460), statetype = L
x = 0
y = 0
ignorehitpause = 1

[State 1460, Anim]
type = changeanim
trigger1 = anim = 1450 && movehit && hitcount >= 12
value = 1451
[State 1460, Vel]
type = velset
trigger1 = anim = 1451
x = -5
y = -5
persistent = 0
[State 1460, sts]
type = statetypeset
trigger1 = anim = 1451
statetype = A
physics = A
movetype = I

[State 1460, removepouncefx]
type = removeexplod
trigger1 = anim = 1450 && vel y > 0 && pos y >= 0
ID = 1455
[State 1460, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 10
value = 52
