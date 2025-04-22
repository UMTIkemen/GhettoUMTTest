; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================< BLOOD SPARKS >=============================
;--- CONTROLLER ---
[Statedef 7050]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 5
[State 7050, Var]
type = varset
trigger1 = !time
var(11) = parent, var(11)
ignorehitpause = 1
[State 7050, Reset]
type = parentvarset
trigger1 = !time
trigger1 = playerIDexist(parent, ID)
var(11) = 0
ignorehitpause = 1

[State 7050, drop]
type = helper
trigger1 = var(11) > 0 && random < 500
helpertype = normal
stateno = 7051
ID = 7050
name = "Drop"
postype = p1
facing = ifelse(var(11) = 2, (-1 + (random < 500) * 2), -1)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
ignorehitpause = 1
[State 7050, drop]
type = helper
trigger1 = var(11) > 0 && random < 500
helpertype = normal
stateno = 7051
ID = 7050
name = "Drop"
postype = p1
facing = ifelse(var(11) = 2, (-1 + (random < 500) * 2), -1)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
ignorehitpause = 1
[State 7050, drop]
type = helper
trigger1 = var(11) = 2
helpertype = normal
stateno = 7051
ID = 7050
name = "Drop"
postype = p1
facing = (-1 + (random < 500) * 2)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
ignorehitpause = 1

[State 7050, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7050, End]
type = destroyself
trigger1 = !var(11) || time >= 1 || root, numhelper >= 24


;--- < DROP > ---
[Statedef 7051]
physics = N
velset = 0, 0
anim = 7051
sprpriority = 3
[State 7051, Accel]
type = gravity
trigger1 = 1
[State 7051, Vel]
type = velset
trigger1 = !time
x = 4 + (random / 250.0)
y = -4 -(random / 250.0)

[State 7051, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 128

[State 7051, End]
type = destroyself
trigger1 = frontedgedist < -40
value = 7052
[State 7051, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -5
value = 7052


[Statedef 7052]
physics = N
velset = 0, 0
anim = 7052
sprpriority = -2
[State 7052, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 7052, Pos]
type = posset
trigger1 = 1
y = 0

[State 7052, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 7052, Trans]
type = trans
trigger1 = animelemtime(4) < 0
trans = addalpha
alpha = 256, 128
[State 7052, fadeout]
type = trans
trigger1 = animelemtime(4) = [0, 20]
trans = addalpha
alpha = ceil(256 -12.8 * animelemtime(4)), ceil(128 + 6.4 * animelemtime(4))
[State 7052, End]
type = destroyself
trigger1 = !animtime
value = 7052


;========================< ANKIHOU OBJECTS >=============================
[Statedef 1005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = anim != 1004
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = anim = 1004
time = -1
value = SCA, NA, SA, HA, NP, SP, HP
ignorehitpause = 1

[State 1005, animvar]
type = varrandom
trigger1 = !time && !prevstateno && !(root, var(30)) && root, stateno != 197
v = 0
range = 1, 6

[State 1005, Anim]
type = changeanim
trigger1 = !time && !prevstateno && !(root, var(30)) && root, stateno != 197
value = ifelse(random < 200, 1019, 1004 + var(0))
[State 1005, Anim]
type = changeanim
trigger1 = !time && !prevstateno && (root, var(30) = 1) && root, stateno != 197
value = ifelse(random < 500, 1018, 1019)
[State 1005, Anim]
type = changeanim
trigger1 = !time && !prevstateno && (root, var(30) = 2) && root, stateno != 197
value = ifelse(random < 333, 1020, ifelse(random < 500, 1021, 1023))
[State 1005, pandaanim]
type = changeanim
trigger1 = !time && !prevstateno && root, stateno = 197
value = 1004

[State 1005, shurikenvar]
type = parentvarset
trigger1 = !time
trigger1 = playerIDexist(parent, ID)
trigger1 = anim = 1018 || anim = 1019
var(30) = ifelse(!(parent, var(30)), 1, 2)
[State 1005, dizzyingvar]
type = parentvarset
trigger1 = !time
trigger1 = playerIDexist(parent, ID)
trigger1 = anim = 1020 || anim = 1021 || anim = 1023
var(30) = 0

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Vel]
type = velset
trigger1 = !time && anim != 1004
x = ifelse(var(10) = 3, 0.5, ifelse(var(10) = 2, 6, 5))
y = ifelse(var(10) = 3, -15, ifelse(var(10) = 2, -9, -5))
[State 1005, Vel]
type = velset
trigger1 = !time && anim = 1004
x = 6
y = -9

[State 1005, Accel]
type = gravity
trigger1 = 1

[State 1005, spinsnd]
type = playsnd
trigger1 = anim = 1005 || anim = 1006 || anim = 1019
trigger1 = !(time % 12)
value = 1, 7
channel = 1
[State 1005, spinsnd]
type = playsnd
trigger1 = anim = 1007 || anim = 1009 || anim = 1010 || anim = 1018
trigger1 = !(time % 12)
value = 1, 1
channel = 1
[State 1005, spinsnd]
type = playsnd
trigger1 = anim = 1008
trigger1 = !(time % 9)
value = 1, 1
channel = 1
[State 1005, spinsnd]
type = playsnd
trigger1 = anim = 1004 || anim = 1020 || anim = 1021 || anim = 1023
trigger1 = !(time % 12)
value = 1, 2
channel = 1

[State 1005, HitSound]
type = playsnd
trigger1 = anim = 1010 || anim = 1018
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 2
persistent = 0
ignorehitpause = 1
[State 1005, HitSound]
type = playsnd
trigger1 = anim = 1020 || anim = 1023
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 3
persistent = 0
ignorehitpause = 1
[State 1005, HitSound]
type = playsnd
trigger1 = anim = 1004
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 4
persistent = 0
ignorehitpause = 1
[State 1005, HitSound]
type = playsnd
trigger1 = anim = 1021
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 6
persistent = 0
ignorehitpause = 1
[State 1005, HitSound]
type = playsnd
trigger1 = anim = 1005 || anim = 1006 || anim = 1007 || anim = 1008 || anim = 1009 || anim = 1019
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 8
persistent = 0
ignorehitpause = 1

[State 1005, blood]
type = varset
trigger1 = anim = 1005 || anim = 1006 || anim = 1007 || anim = 1008 || anim = 1019
var(11) = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(10) != 3
trigger1 = anim < 1020
priority = 4, Hit
attr = S, SP
damage = ceil(83 * root, fvar(12)), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1.5 * vel x, 0
ground.cornerpush.veloff = 0
air.velocity = -vel x, -2
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 2
air.fall = 1
fall.recover = 1
fall.recovertime = 28
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(10) = 3
trigger1 = anim < 1020
priority = 4, Hit
attr = S, SP
damage = ceil(83 * root, fvar(12)), 7
animtype = Hard
hitflag = MAF
guardflag = HA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1.5 * vel x, 0
ground.cornerpush.veloff = 0
air.velocity = -vel x, -2
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 2
air.fall = 1
fall.recover = 1
fall.recovertime = 28
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(10) != 3
trigger1 = anim >= 1020
priority = 4, Hit
attr = S, SP
damage = ceil(83 * root, fvar(12)), 7
animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4.5, -3
ground.cornerpush.veloff = 0
air.velocity = -4.5, -3
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
ID = 1020
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(10) = 3
trigger1 = anim >= 1020
priority = 4, Hit
attr = S, SP
damage = ceil(83 * root, fvar(12)), 7
animtype = Back
hitflag = MAF
guardflag = HA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4.5, -3
ground.cornerpush.veloff = 0
air.velocity = -4.5, -3
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
ID = 1020
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1005, p2state]
type = targetstate
trigger1 = var(10) = 3 && anim >= 1020
trigger1 = movehit && numtarget
trigger1 = (target, stateno = 5000) || (target, stateno = 5010) || (target, stateno = 5020)
value = 1115020
ignorehitpause = 1

[State 1005, target]
type = targetstate
trigger1 = movehit && numtarget(1020)
trigger1 = !(target(1020), ishelper)
value = 1115020
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = anim = 1004
priority = 1, Hit
attr = S, SP
damage = ceil(28 * root, fvar(12)), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1.5 * vel x, 0
ground.cornerpush.veloff = 0
air.velocity = -vel x, -2
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 2
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 28

[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
[State 1005, Blood]
type = helper
trigger1 = movehit && numtarget && var(11) > 0
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1
persistent = 0

[State 1005, End]
type = changestate
trigger1 = movecontact || pos y >= -10
value = 1006
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1006]
type = A
physics = N
movetype = I
velset = -.66 * vel x, vel y
ctrl = 0
sprpriority = 1
[State 1006, Anim]
type = changeanim
trigger1 = anim = 1021
value = 1022
persistent = 0
[State 1006, Accel]
type = gravity
trigger1 = 1
[State 1006, End]
type = destroyself
trigger1 = pos y >= -10


;========================< ANKIHOU SPIKED BALL >=============================
[Statedef 1055]
type = C
physics = N
movetype = A
anim = 1055
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1
[State 1055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1056
ignorehitpause = 1

[State 1055, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1055, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1055, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1055, Vel]
type = velset
trigger1 = 1
x = 5
y = 0

[State 1055, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1055, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(ifelse(p2statetype = L, 7, 76) * root, fvar(12)), 7
animtype = Hard
hitflag = MAFD
guardflag = L
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
down.hittime = 20
down.velocity = 0, 0
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 2
air.fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 1055, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y) -17
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1055, End]
type = changestate
trigger1 = movecontact
value = 1056
ignorehitpause = 1
[State 1055, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1056]
type = A
physics = N
movetype = I
anim = 1056
velset = -.33 * vel x, 0
ctrl = 0
sprpriority = 1
[State 1056, fadeout]
type = trans
trigger1 = time >= 12
trans = addalpha
alpha = ceil(256 -10.7 * (time -12)), ceil(10.7 * (time -12))
[State 1056, End]
type = destroyself
trigger1 = time >= 36


;========================< SENPUUBU CLAW >=============================
[Statedef 1105]
type = A
physics = N
movetype = A
anim = 1105
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 1105, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AT
stateno = 5000
ignorehitpause = 1

[State 1105, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)
[State 1105, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1105, Bind]
type = bindtoroot
trigger1 = 1
pos = 2, -65

[State 1105, Hit]
type = hitdef
trigger1 = var(10) <= 3 && !(time % 20) && hitcount < 4
priority = 4, Hit
attr = A, SA
damage = ceil(35 * root, fvar(12)), 7
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 6
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -15, 0
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = ifelse(p2dist x > 0, -10, 10), 0
ground.cornerpush.veloff = 0
air.velocity = ifelse(p2dist x > 0, -5, 5), -5
down.velocity = 0, 0
p2facing = ifelse(p2dist x >= 0, 1, -1)
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = -1
air.fall = 1
fall.recover = 1
fall.recovertime = 20
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1105, Hit]
type = hitdef
trigger1 = var(10) = 4 && !(time % 16) && hitcount < 8
priority = 4, Hit
attr = A, SA
damage = ceil(35 * root, fvar(12)), 7
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 6
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -15, 0
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = ifelse(p2dist x > 0, -10, 10), 0
ground.cornerpush.veloff = 0
air.velocity = ifelse(p2dist x > 0, -5, 5), -5
down.velocity = 0, 0
p2facing = ifelse(p2dist x >= 0, 1, -1)
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = -1
air.fall = 1
fall.recover = 0
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1105, Blood]
type = helper
trigger1 = movehit && numtarget && var(11) := 2
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1

[State 1105, End]
type = destroyself
trigger1 = var(10) <= 3 && (root, stateno != 1101 || root, anim != 1101)
trigger2 = var(10) = 4 && (root, stateno != 1121 || root, anim != 1101)


;========================< JIREITOU BLADE >=============================
[Statedef 1205]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 1205, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AT
stateno = 5000
ignorehitpause = 1

[State 1205, Anim]
type = changeanim
trigger1 = anim != 1205
value = 1205

[State 1205, spr]
type = sprpriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 1205, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 1205, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger2 = numhelper(1205)
trigger2 = helper(1205), var(3)
trigger3 = numhelper(1225)
trigger3 = helper(1225), var(3)
var(3) = 1
ignorehitpause = 1

[State 1205, Kanji]
type = explod
trigger1 = !time
anim = 1206
ID = 1206
postype = p1
facing = ifelse(facing = 1, 1, -1)
pos = ifelse(facing = 1, 0, 5)
removetime = -2
bindtime = -1

[State 1205, Pos]
type = posset
trigger1 = 1
y = 0

[State sts]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 1205, Hit]
type = hitdef
trigger1 = var(10) != 4
trigger1 = !movecontact && !movereversed
attr = S, SA
damage = ceil(ifelse(p2movetype = H, 20, 100) * root, fvar(12)), 10
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ceil(p2dist y - 60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -12
ground.cornerpush.veloff = 0
air.velocity = -3, -12
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144) * (root, prevstateno != 750), 36 * (root, prevstateno != 750)
givepower = 36, 36
sprpriority = -1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
guard.velocity = -12.97
fall = 1
fall.recover = 1
fall.recovertime = 58
yaccel = 0.5
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5

[State 1205, Hit]
type = hitdef
trigger1 = var(10) = 4
trigger1 = !movecontact && !movereversed
attr = S, SA
damage = ceil(ifelse(p2movetype = H, 30, 120) * root, fvar(12)), 10
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ceil(p2dist y - 60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -10
ground.cornerpush.veloff = 0
air.velocity = -6, -10
down.velocity = 0, 0
getpower = 0
givepower = 36, 36
sprpriority = -1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
guard.velocity = -12.97
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5

[State 1205, Blood]
type = helper
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1
persistent = 0

[State 1205, End]
type = destroyself
trigger1 = !animtime


;========================< SOUND WAVE >=============================
[Statedef 1305]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1305, nothitby]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1305, HB]
type = hitby
trigger1 = !var(5) && (time % 2)
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT, HP
stateno = 1306
ignorehitpause = 1
[State 1305, HitOverride]
type = hitoverride
trigger1 = !var(5) && (time % 2)
time = 1
attr = SCA, NP, SP
stateno = 1308
ignorehitpause = 1

[State 1305, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305
[State 1305, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1305, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1305, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1305, timevar]
type = varadd
trigger1 = 1
var(4) = 1

[State 1305, Vel]
type = velset
trigger1 = !time && !prevstateno
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 4.5, 3))
y = 0
[State 1305, Vel]
type = velmul
trigger1 = 1
x = 0.9
y = 0

[State 1305, particles]
type = explod
trigger1 = 1
vel = -.5 + (random < 500), 0
accel = 0, 0.05
anim = 1308
sprpriority = 3
postype = p1
pos = -15, 0
random = 30, 60
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1305, Shadows]
type = afterimage
trigger1 = !time && !prevstateno
time = 999
timegap = 1
framegap = 4
length = 12
palcontrast = 30, 60, 120
trans = add

[State 1305, Type]
type = statetypeset
trigger1 = movecontact
movetype = I

[State 1305, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 11
persistent = 0
ignorehitpause = 1

[State 1305, Hit]
type = hitdef
trigger1 = !var(3)
priority = 7, Hit
attr = S, SA
damage = ceil(111 * root, fvar(12)), 14
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 46
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1305, Reversal]
type = reversaldef
trigger1 = !var(5) && (time % 2)
reversal.attr = SCA, NP, SP
priority = 7, Hit
p1stateno = 1308
p2stateno = 1330
sparkno = -1
pausetime = 0, 0
numhits = 0
p1sprpriority = 4

[State 1305, Sparks]
type = explod
trigger1 = movecontact && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -(target, const(size.ground.front) -10) * facing + 160), ceil(screenpos y)
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1305, End]
type = changestate
trigger1 = var(4) >= 20
value = 1306
[State 1305, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 1306]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 1306, nothitby]
type = hitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1306, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1306, Shadows]
type = afterimagetime
trigger1 = 1
time = 0
[State 1306, palfx]
type = palfx
trigger1 = !time
time = 24
sinadd = -255, -255, -255, 106
[State 1306, End]
type = destroyself
trigger1 = time >= 24


;--- Reflect ---
[Statedef 1308]
type = A
physics = N
movetype = I
ctrl = 0
[State 1308, nothitby]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1308, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1308, reflected]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1315
ID = 1315
name = "Reflected"
postype = p1
pos = 25, 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1308, End]
type = changestate
trigger1 = 1
value = 1305


;========================< EX SOUND WAVE >=============================
[Statedef 1325]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1325, nothitby]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1325, HB]
type = hitby
trigger1 = !var(5) && (time % 2)
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1325, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1326
ignorehitpause = 1
[State 1305, HitOverride]
type = hitoverride
trigger1 = !var(5) && (time % 2)
time = 1
attr = SCA, AP
stateno = 1328
ignorehitpause = 1

[State 1325, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 1305
[State 1325, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1325, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 1325, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1325, timevar]
type = varadd
trigger1 = 1
var(4) = 1

[State 1325, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 6
[State 1325, Vel]
type = velmul
trigger1 = 1
x = 0.95

[State 1325, Shadows]
type = afterimage
trigger1 = !time && !prevstateno
time = 999
timegap = 1
framegap = 4
length = 12
palcontrast = 30, 60, 120
trans = add

[State 1325, particles]
type = explod
trigger1 = 1
vel = -.5 + (random < 500), 0
accel = 0, 0.05
anim = 1308
sprpriority = 3
postype = p1
pos = -15, 0
random = 30, 60
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1325, Type]
type = statetypeset
trigger1 = movecontact && var(2) >= 4
movetype = I

[State 1325, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 11
channel = 1
persistent = 0
ignorehitpause = 1

[State 1325, Hit]
type = hitdef
trigger1 = var(2) <= 3
priority = 4, Hit
attr = S, SA
damage = ceil(56 * root, fvar(12)), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 6, 10
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
air.fall = 1
fall.recover = 0
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1325, Reversal]
type = reversaldef
trigger1 = !var(5) && (time % 2)
reversal.attr = SCA, AP
priority = 7, Hit
p1stateno = 1328
p2stateno = 1330
sparkno = -1
pausetime = 0, 0
numhits = 0
p1sprpriority = 4

[State 1325, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1325, End]
type = changestate
trigger1 = movecontact
value = 1325
ignorehitpause = 1
[State 1325, End]
type = changestate
trigger1 = var(4) >= 45
value = 1306
ignorehitpause = 1
[State 1325, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


;--- Reflect ---
[Statedef 1328]
type = A
physics = N
movetype = I
ctrl = 0
[State 1328, nothitby]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1328, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1328, reflected]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1315
ID = 1315
name = "Reflected"
postype = p1
pos = 25, 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1328, End]
type = changestate
trigger1 = 1
value = 1325


;========================< RANDOM PROJECTILE >=============================
[Statedef 1315]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1315, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1316
ignorehitpause = 1
[State 1315, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1315, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1315, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 1315

[State 1315, Strength]
type = varset
trigger1 = !time
var(10) = 3
[State 1315, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1315, Vel]
type = velset
trigger1 = 1
x = 6

[State 1315, colorvar]
type = varrandom
trigger1 = !time
v = 15
range = 1, 6

[State 1315, palfx]
type = palfx
trigger1 = !time && var(15) = 1
sinadd = 255, 0, 0
mul = 1000, 256, 256
time = 999999
ignorehitpause = 1
[State 1315, palfx]
type = palfx
trigger1 = !time && var(15) = 2
sinadd = 0, 255, 0
mul = 256, 1000, 256
time = 999999
ignorehitpause = 1
[State 1315, palfx]
type = palfx
trigger1 = !time && var(15) = 3
sinadd = 0, 0, 255
mul = 256, 256, 1000
time = 999999
ignorehitpause = 1
[State 1315, palfx]
type = palfx
trigger1 = !time && var(15) = 4
sinadd = 100, 50, 0
mul = 1000, 512, 256
time = 999999
ignorehitpause = 1
[State 1315, palfx]
type = palfx
trigger1 = !time && var(15) = 5
sinadd = 100, 0, 100
mul = 512, 256, 512
time = 999999
ignorehitpause = 1
[State 1315, palfx]
type = palfx
trigger1 = !time && var(15) = 6
sinadd = 0, 100, 100
mul = 256, 512, 512
time = 999999
ignorehitpause = 1

[State 1315, Shadows]
type = afterimage
trigger1 = !time && !prevstateno && var(15) = 1
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 200, 50, 50
trans = add
[State 1315, Shadows]
type = afterimage
trigger1 = !time && !prevstateno && var(15) = 2
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 50, 200, 50
trans = add
[State 1315, Shadows]
type = afterimage
trigger1 = !time && !prevstateno && var(15) = 3
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 50, 50, 200
trans = add
[State 1315, Shadows]
type = afterimage
trigger1 = !time && !prevstateno && var(15) = 4
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 150, 100, 25
trans = add
[State 1315, Shadows]
type = afterimage
trigger1 = !time && !prevstateno && var(15) = 5
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 150, 25, 150
trans = add
[State 1315, Shadows]
type = afterimage
trigger1 = !time && !prevstateno && var(15) = 6
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 25, 150, 150
trans = add

[State 1315, particles]
type = explod
trigger1 = !(time % 3)
vel = -.5 + (random < 500), 0
accel = 0, 0.05
anim = 1317
sprpriority = 3
postype = p1
pos = -15, 0
random = 30, 60
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1315, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 11
persistent = 0
ignorehitpause = 1

[State 1315, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = 83, 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -2
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 16
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 1315, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1315, End]
type = changestate
trigger1 = movecontact
value = 1316
ignorehitpause = 1
[State 1315, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1316]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
anim = 1316
sprpriority = 4
[State 1316, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1316, End]
type = destroyself
trigger1 = !animtime


;========================< REFLECTED HELPER >=============================
[Statedef 1330]
type = S
movetype = A
ctrl = 0
sprpriority = 4
hitdefpersist = 1

[State 1330, nothelper]
type = selfstate
trigger1 = !ishelper
value = 5000
ignorehitpause = 1
[State 1330, nothelperprojectile]
type = selfstate
trigger1 = !(hitdefattr = SCA, NP, SP, HP)
value = prevstateno
ignorehitpause = 1

[State 1330, removefx]
type = removeexplod
trigger1 = numexplod
ignorehitpause = 1
[State 1330, End]
type = destroyself
trigger1 = 1
ignorehitpause = 1


;========================< CHUUKADAN >=============================
;--- THROWN ---
[Statedef 2004]
type = A
physics = N
movetype = I
ctrl = 0
velset = 3, -3
sprpriority = 2
[State 2004, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 2004, Vel]
type = velset
trigger1 = !time && var(10) = 6
x = 2 + (random / 250.0)
y = -2 -(random / 250.0)

[State 2004, colorvar]
type = varset
trigger1 = !time
var(1) = ifelse((random < 750 || var(10) = 6), 1, 2)
[State 2004, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(1) = 1, 2005, 2035)

[State 2004, Snd]
type = playsnd
trigger1 = !time
value = 5, 13
channel = 2
loop = 1

[State 2004, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 2015
ignorehitpause = 1
[State 2004, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, AA
ignorehitpause = 1

[State 2004, timervar]
type = varset
trigger1 = !time
var(0) = ifelse(var(1) = 1, 599, 239)
[State 2004, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1
[State 2004, timer]
type = helper
trigger1 = !time
helpertype = normal
stateno = 2090
ID = 2090
name = "Timer"
postype = p1
facing = ifelse(facing = 1, 1, -1)
ownpal = 1

[State 2004, hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = (root, stateno = [200, 285]) || root, stateno = 1101
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger1 = ((pos y - root, pos y) = [ -50, 50])
value = 2016
[State 2004, hit by partner]
type = changestate
trigger1 = numpartner
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [ -50, 50])
value = 2017

[State 2004, Accel]
type = gravity
trigger1 = 1
[State 2004, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 18
trigger2 = vel x < 0 && backedgedist <= 18
x = -1

[State 2004, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010
[State 2004, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- IDLE ---
[Statedef 2005]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 2
[State 2005, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2005, hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = (root, stateno = [200, 285]) || root, stateno = 1101
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger1 = ((pos y - root, pos y) = [ -50, 50])
value = 2016
[State 2005, hit by partner]
type = changestate
trigger1 = numpartner
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [ -50, 50])
value = 2017

[State 2005, Pos]
type = posset
trigger1 = 1
y = 0

[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005
value = 2005
[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006
value = 2006
[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007
value = 2007

[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035
value = 2035
[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036
value = 2036

[State 2005, poing]
type = playsnd
trigger1 = !time
value = 5, 7
[State 2005, Dust]
type = explod
trigger1 = !time
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5

[State 2005, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020
[State 2005, detonate]
type = changestate
trigger1 = roundstate = 4 && var(0) <= 0
value = 2030


;--- BOUNCING ---
[Statedef 2010]
type = S
physics = N
movetype = I
ctrl = 0
sprpriority = 2
[State 2010, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2010, xvar]
type = varset
trigger1 = !time
fvar(1) = vel x
[State 2010, yvar]
type = varset
trigger1 = !time
fvar(2) = vel y

[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2010 && time < 6
value = 2010
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2011 && time < 6
value = 2011
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2012 && time < 6
value = 2012
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2040 && time < 6
value = 2040
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2041 && time < 6
value = 2041

[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && time >= 6
value = 2005
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && time >= 6
value = 2006
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && time >= 6
value = 2007
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && time >= 6
value = 2035
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && time >= 6
value = 2036

[State 2010, Vel]
type = velset
trigger1 = time < 6
x = 0
y = 0
[State 2010, Pos]
type = posset
trigger1 = time < 6
y = 0
[State 2010, Vel]
type = velset
trigger1 = time = 6
x = 0.5 * fvar(1)
y = -.5 * fvar(2)
[State 2010, Accel]
type = gravity
trigger1 = time >= 6
[State 2010, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 18
trigger2 = vel x < 0 && backedgedist <= 18
x = -1
[State 2010, poing]
type = playsnd
trigger1 = !time
value = 5, 7
[State 2010, Dust]
type = explod
trigger1 = !time
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5

[State 2010, land]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5 && time > 6
value = 2005
[State 2010, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- HIT by Enemy ---
[Statedef 2015]
type = A
physics = N
movetype = H
anim = ifelse(var(1) = 1, 2015, 2045)
ctrl = 0
sprpriority = 2
[State 2015, timervar]
type = varadd
trigger1 = 1
var(0) = -1
ignorehitpause = 1

[State 2015, Turn]
type = turn
trigger1 = !time && p2dist x >= 0
[State 2015, hitvel]
type = velset
trigger1 = !time
x = 5
y = -5

[State 2015, hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A && time
triggerall = (root, stateno = [200, 285]) || root, stateno = 1101
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger1 = ((pos y - root, pos y) = [ -50, 50])
value = 2016
[State 2015, hit by partner]
type = changestate
trigger1 = numpartner && time
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [ -50, 50])
value = 2017

[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && vel y >= 0
value = 2005
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && vel y >= 0
value = 2006
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && vel y >= 0
value = 2007
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && vel y >= 0
value = 2035
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && vel y >= 0
value = 2036

[State 2015, Accel]
type = gravity
trigger1 = 1
[State 2015, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 18
trigger2 = vel x < 0 && backedgedist <= 18
x = -1
[State 2015, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010
[State 2015, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- HIT by Lei-Lei ---
[Statedef 2016]
type = A
physics = N
movetype = H
anim = ifelse(var(1) = 1, 2015, 2045)
ctrl = 0
sprpriority = 2
[State 2016, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2016, Turn]
type = turn
trigger1 = !time && rootdist x >= 0
[State 2016, hitvel]
type = velset
trigger1 = !time
x = 5
y = -5

[State 2016, hit by partner]
type = changestate
trigger1 = numpartner && time
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [ -50, 50])
value = 2017

[State 2016, Sparks]
type = explod
trigger1 = !time
anim = ifelse((root, stateno = [2000, 4999]), 7030, ifelse((root, stateno = [1000, 1999]), 7020, 7010)) + (random % 8)
ID = 7000
sprpriority = 5
postype = p1
pos = 10, -22
removetime = -2
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
[State 2016, Snd]
type = playsnd
trigger1 = !time
value = 2, ifelse((root, stateno = [2000, 4999]), 3, ifelse((root, stateno = [1000, 1999]), 2, 1))

[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && vel y >= 0
value = 2005
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && vel y >= 0
value = 2006
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && vel y >= 0
value = 2007
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && vel y >= 0
value = 2035
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && vel y >= 0
value = 2036

[State 2016, Accel]
type = gravity
trigger1 = 1
[State 2016, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 18
trigger2 = vel x < 0 && backedgedist <= 18
x = -1
[State 2016, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010
[State 2016, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- HIT by Partner ---
[Statedef 2017]
type = A
physics = N
movetype = H
anim = ifelse(var(1) = 1, 2015, 2045)
ctrl = 0
sprpriority = 2
[State 2017, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2017, Turn]
type = turn
trigger1 = !time && ((partner, pos x) -pos x) >= 0
[State 2017, hitvel]
type = velset
trigger1 = !time
x = 5
y = -5

[State 2017, hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A && time
triggerall = (root, stateno = [200, 285]) || root, stateno = 1101
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger1 = ((pos y - root, pos y) = [ -50, 50])
value = 2016

[State 2017, Sparks]
type = explod
trigger1 = !time
anim = f0 + ifelse((partner, hitdefattr = SCA, HA), 3, ifelse((partner, hitdefattr = SCA, SA), 2, 1))
sprpriority = 5
postype = p1
pos = 10, -22
removetime = -2
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
[State 2017, Snd]
type = playsnd
trigger1 = !time
value = f5, ifelse((partner, hitdefattr = SCA, HA), 2, ifelse((partner, hitdefattr = SCA, SA), 1, 0))

[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && vel y >= 0
value = 2005
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && vel y >= 0
value = 2006
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && vel y >= 0
value = 2007
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && vel y >= 0
value = 2035
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && vel y >= 0
value = 2036

[State 2017, Accel]
type = gravity
trigger1 = 1
[State 2017, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 18
trigger2 = vel x < 0 && backedgedist <= 18
x = -1
[State 2017, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010

[State 2017, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- EXPLODE ---
[Statedef 2020]
type = U
physics = N
movetype = A
anim = ifelse(var(1) = 1, 2020, 2050)
ctrl = 0
velset = 0, 0
sprpriority = 2
[State 2020, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 8
channel = 2
[State 2020, explosion]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 2025
ID = 2025
name = "Explosion"
postype = p1
pos = 0, 0
ownpal = 1
[State 2020, End]
type = destroyself
trigger1 = !animtime


;--- ROUND OVER ---
[Statedef 2030]
type = S
physics = N
movetype = I
anim = ifelse(var(1) = 1, 2030, 2060)
ctrl = 0
velset = 0, 0
sprpriority = 2
[State 2020, Snd]
type = stopsnd
trigger1 = !time
value = 5, 8
channel = 2
[State 2030, Pos]
type = posset
trigger1 = 1
y = 0


;--- TIMER ---
[Statedef 2090]
type = A
physics = N
movetype = I
anim = 2090
ctrl = 0
sprpriority = 5
[State 2090, End]
type = destroyself
trigger1 = parent, var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
[State 2090, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 2090, Anim]
type = changeanim
trigger1 = anim != (2090 + floor(parent, var(0) / 60))
value = 2090 + floor(parent, var(0) / 60)
[State 2090, Bind]
type = bindtoparent
trigger1 = 1
pos = ifelse((parent, facing = 1), 14, -14), -7


;========================< BOMB EXPLOSION >=============================
[Statedef 2025]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 2025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 2025
ignorehitpause = 1
[State 2025, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 2025, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)
[State 2025, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 2025

[State 2025, Strength]
type = varset
trigger1 = !time
var(1) = 4
[State 2025, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 2025, Shadows]
type = afterimage
trigger1 = !time && !prevstateno
time = 999
timegap = 1
framegap = 1
length = 2
palmul = 0.5, 0.5, 0.5
palcontrast = 90, 0, 0
trans = add
[State 2025, Shake]
type = envshake
trigger1 = !time && !prevstateno
time = 12
freq = 120
ampl = 12

[State 2025, Dust]
type = explod
trigger1 = animelem = 3
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
pos = 0, -40
vel = 0, -4
removetime = -2
ownpal = 1
scale = 3, 1

[State 2025, Dust]
type = explod
trigger1 = !time
anim = 6053
sprpriority = 2
postype = p1
pos = -10, -ceil(pos y)
vel = 2, 0
removetime = -2
ownpal = 1
[State 2025, Dust]
type = explod
trigger1 = !time
anim = 6053
sprpriority = 2
postype = p1
pos = 10, -ceil(pos y)
vel = -2, 0
facing = -1
removetime = -2
ownpal = 1

[State 2025, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 2025, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 3
persistent = 0
ignorehitpause = 1

[State 2025, Hit]
type = hitdef
trigger1 = !time && !prevstateno
priority = 4, Hit
attr = S, SA
damage = ceil(243 * root, fvar(12)), 30
animtype = Up
hitflag = MAFD
guardflag = M
affectteam = B
pausetime = 0, 6
sparkno = -1
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -15
ground.cornerpush.veloff = 0
air.velocity = 0, -15
guard.velocity = -12.97
fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.color = 32
palfx.sinadd = 80, 25, 0, 8
palfx.mul = 512, 256, 128
palfx.time = 70
sprpriority = 4
ID = 2025
yaccel = 0.5
forcestand = 1

[State 2025, target]
type = targetstate
trigger1 = movehit && numtarget(2025)
trigger1 = !(target(2025), ishelper)
trigger1 = (target(2025), stateno != 7697) && (target(2025), selfanimexist(7697))
value = 7697
ignorehitpause = 1

[State 2025, Sparks]
type = explod
trigger1 = movecontact && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 2025, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = (target, ID) != (root, ID)
trigger1 = (target, time = 0) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0
[State 2025, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7181) < 1
trigger1 = (target, ID) = (root, ID)
trigger1 = (root, time = 0) && (root, movetype = H)
helpertype = normal
stateno = 7181
ID = 7181
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0
[State 2025, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && numpartner
trigger1 = (target, ID) = (partner, ID)
trigger1 = (partner, time = 0) && (partner, movetype = H)
helpertype = normal
stateno = 7182
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 2025, End]
type = destroyself
trigger1 = !animtime


;========================< JIREITOU BLADE DISPENSER >=============================
[Statedef 3205]
type = S
physics = N
movetype = I
ctrl = 0
anim = 9741

[State 3205, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 3205, Vel]
type = velset
trigger1 = 1
x = 7.2

[State 3205, Pos]
type = posset
trigger1 = 1
y = 0

[State 3205, Var]
type = varset
trigger1 = !time
var(0) = 4

[State 3205, Mashing]
type = varadd
trigger1 = (root, command = "a") || (root, command = "b") || (root, command = "c")
var(2) = 1

[State 3205, Var]
type = varadd
trigger1 = var(0) > 0
trigger1 = var(2) >= 3 && var(1) < 4
var(0) = 1
[State 3205, Var]
type = varadd
trigger1 = var(2) >= 3 && var(1) < 4
var(1) = 1
[State 3205, Var]
type = varset
trigger1 = var(2) >= 3
var(2) = 0

[State 3205, Snd]
type = playsnd
trigger1 = !(time % 10) && var(0) > 0
value = 5, 5
channel = 2

[State 3205, Blade]
type = helper
trigger1 = !(time % 10) && var(0) > 0
helpertype = normal
stateno = 3206
ID = 3206
name = "Blade"
postype = p1
ownpal = 1
size.shadowoffset = -3

[State 3205, Var]
type = varadd
trigger1 = !(time % 10) && var(0) > 0
var(0) = -1

[State 3205, End]
type = destroyself
trigger1 = var(0) <= 0
trigger1 = !numhelper(3206)


;========================< JIREITOU BLADE >=============================
[Statedef 3206]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3205
velset = 0, 0
sprpriority = -1

[State 3206, spr]
type = sprpriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 3206, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AT
stateno = 5000
ignorehitpause = 1

[State 3206, Kanji]
type = explod
trigger1 = !time
anim = 3206
ID = 3206
postype = p1
facing = ifelse(facing = 1, 1, -1)
pos = ifelse(facing = 1, 0, 5)
removetime = -2
bindtime = -1

[State 3206, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 3206, Pos]
type = posset
trigger1 = 1
y = 0

[State 3206, movehitvar]
type = parentvarset
trigger1 = movehit && numtarget
trigger1 = playerIDexist(parent, ID)
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State sts]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 3206, Hit]
type = hitdef
trigger1 = !movecontact && !movereversed
attr = S, HA 
damage = ceil(40 * root, fvar(12)), 7
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit 
pausetime = 0, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ceil(p2dist y - 60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -9, -2.5
ground.cornerpush.veloff = 0
air.velocity = -9, -2.5
down.velocity = 0, 0
getpower = 0
givepower = 36, 36
sprpriority = -1
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.velocity = -12.97
fall = 1
fall.recover = 0
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5

[State 3206, Hit]
type = hitdef
trigger1 = playerIDexist(parent, ID)
trigger1 = parent, var(0) <= 0
trigger1 = !movecontact && !movereversed
attr = S, HA 
damage = ceil(40 * root, fvar(12)), 7
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit 
pausetime = 0, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ceil(p2dist y - 60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
air.velocity = -4, -8
down.velocity = 0, 0
getpower = 0
givepower = 36, 36
sprpriority = -1
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.velocity = -12.97
fall = 1
fall.recover = 0
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5

[State 3206, Blood]
type = helper
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1
persistent = 0

[State 3206, End]
type = destroyself
trigger1 = !animtime


;========================< SHOCKWAVE >=============================
[Statedef 3405]
type = C
physics = N
movetype = A
ctrl = 0
anim = 3405
velset = 0, 0

[State 3405, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AT
stateno = 5000
ignorehitpause = 1

[State 3405, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 3405, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 3405, Hit]
type = hitdef
trigger1 = !time
trigger1 = var(11) := -1
priority = 4, Hit
attr = C, HA
damage = ceil(28 * root, fvar(12)), 7
animtype = Hard
hitflag = MFD
guardflag = L
pausetime = 0, 0
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
hitsound = -1
guardsound = s2, 0
ground.type = Trip
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -8
ground.cornerpush.veloff = 0
air.type = Trip
air.velocity = 0, -8
getpower = 0
givepower = 36, 36
guard.velocity = -12.97
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 3405, ball]
type = helper
trigger1 = !(time % 9) && !(root, movecontact)
helpertype = normal
stateno = 3410
ID = 3410
name = "Spiked Ball"
postype = p1
pos = ceil((random / 4.0) -125), 0
facing = 2 * (random < 500) -1
ownpal = 1
[State 3405, ball]
type = helper
trigger1 = !(time % 9) && (root, movecontact)
helpertype = normal
stateno = 3410
ID = 3410
name = "Spiked Ball"
postype = p1
pos = ceil((random / 10.0) -50), 0
facing = 2 * (random < 500) -1
ownpal = 1

[State 3405, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = time >= 90


;========================< TENRAIHA SPIKED BALL >=============================
[Statedef 3410]
type = A
physics = N
movetype = A
anim = 3410
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3410, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3410
ignorehitpause = 1
[State 3410, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3410, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 3410, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 3410, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3410, Pos]
type = posset
trigger1 = !time
y = -ceil(screenpos y) -20
[State 3410, Accel]
type = gravity
trigger1 = 1

[State 3410, poing]
type = playsnd
trigger1 = vel y > 0 && pos y >= 0 && anim = 3410
value = 5, 10
volume = -150
[State 3410, Dust]
type = explod
trigger1 = vel y > 0 && pos y >= 0 && anim = 3410
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5

[State 3410, Vel]
type = velset
trigger1 = vel y > 0 && pos y >= 0 && !var(0)
trigger1 = var(0) := 1
x = 1 + (random / 333)
y = -.5 * vel y
[State 3410, Vel]
type = velmul
trigger1 = vel y > 0 && pos y >= 0 && var(0)
x = 0.75
y = -.75
[State 3410, Vel]
type = velmul
trigger1 = movecontact
x = ifelse(p2dist x >= 0, -1, 1)
y = ifelse((vel y > 0 && p2dist y > 0), -.5, 0.75)
persistent = 0

[State 3410, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 3
persistent = 0
ignorehitpause = 1

[State sts]
type = statetypeset
trigger1 = root, movetype = H
trigger2 = movecontact || movereversed
movetype = I

[State 3410, Hit]
type = hitdef
trigger1 = !movecontact && !var(0)
priority = 4, Hit
attr = S, HP
damage = ceil(26 * root, fvar(12)), 7
animtype = Back
hitflag = MAFD
guardflag = HA
pausetime = 0, 6
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, -16
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -5
ground.cornerpush.veloff = 0
air.velocity = 0, -5
down.velocity = 0, 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1

[State 3410, Hit]
type = hitdef
trigger1 = !movecontact && var(0)
priority = 4, Hit
attr = S, HP
damage = ceil(26 * root, fvar(12)), 7
animtype = Back
hitflag = MAFD
guardflag = M
pausetime = 0, 6
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, -16
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -5
ground.cornerpush.veloff = 0
air.velocity = 0, -5
down.velocity = 0, 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 3410, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y) -16
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 3410, Anim]
type = changeanim
trigger1 = anim = 3410 && time >= 90
value = 3411
[State 3410, fadeout]
type = trans
trigger1 = anim = 3411
trans = addalpha
alpha = ceil(256 -7.1 * (animelemtime(1))), ceil(7.1 * animelemtime(1))

[State 3410, Assert]
type = assertspecial
trigger1 = anim = 3411
flag = noshadow
[State 3410, End]
type = destroyself
trigger1 = anim = 3411 && !animtime


;========================< BOWLING BALL >=============================
[Statedef 3510]
type = C
physics = N
movetype = A
velset = 12, 0
anim = 3510
sprpriority = 3
[State 3510, Assert]
type = assertspecial
trigger1 = root, var(35)
flag = invisible
[State 3510, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 3510, Pos]
type = posset
trigger1 = time
x = root, fvar(20)
ignorehitpause = 1

[State 3510, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
[State 3510, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3510, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(0) = 1
ignorehitpause = 1

[State 3510, Dust]
type = explod
trigger1 = !(time % 2)
anim = 7103
ID = 7103
sprpriority = 4
postype = p1
pos = -10, -ceil(pos y)
scale = 1, 1

[State 3510, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 11
persistent = 0
ignorehitpause = 1

[State 3510, Hit]
type = hitdef
trigger1 = !var(0)
priority = 4, Hit
attr = C, HP
damage = ceil(116 * root, fvar(12)), 7
animtype = Back
hitflag = MAFD
guardflag = L
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = Trip
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -9
ground.cornerpush.veloff = 0
air.type = Trip
air.velocity = -3, -9
down.velocity = -3, -9
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = 3
guard.velocity = -12.97
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 3510, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y) -17
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 3510, End]
type = destroyself
trigger1 = (facing = 1 && pos x >= 100) || (facing = -1 && pos x <= -100)
trigger2 = numhelper(3511)
trigger2 = helper(3511), stateno != 3511
trigger3 = time >= 180


;========================< PIN >=============================
[Statedef 3511]
physics = N
velset = 0, 0
anim = ifelse(random < 200, 3512, 3511)
sprpriority = 2
[State 3511, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 3511, Pos]
type = posset
trigger1 = animelemtime(2) < 0
x = -640 * facing
[State 3511, Pos]
type = posset
trigger1 = animelem = 2
x = -140 * facing
[State 3511, Pos]
type = posset
trigger1 = animelemtime(2) >= 0 && animelemtime(2) < 20
x = -140 * facing
y = (animelemtime(2) * 5) -100 -24; + ifelse((anim = 3512), -27, -24)

[State 3511, Pos]
type = posset
trigger1 = animelemtime(2) >= 20
y = ifelse((anim = 3512), -27, -24)

[State 3511, fadein]
type = trans
trigger1 = animelemtime(2) >= 0 && animelemtime(2) < 20
trans = addalpha
alpha = ceil(12.8 * animelemtime(2)), ceil(256 -12.8 * animelemtime(2))

[State 3511, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = (root, animelemtime(22) > 0 || root, stateno != 3501) && root, numtarget
trigger1 = (facing = 1 && (root, fvar(20) -pos x <= 40)) || (facing = -1 && (root, fvar(20) -pos x >= -40))
value = 3512
[State 3511, End]
type = changestate
trigger1 = animelemtime(2) >= 0 && root, stateno != 3501
value = 3513


[Statedef 3512]
physics = N
velset = -5 -(random % 5), -20
sprpriority = 3
[State 3512, Snd]
type = playsnd
trigger1 = !time
value = 5, 18
[State 3512, Angle]
type = angleadd
trigger1 = 1
value = 15
[State 3512, Angle]
type = angledraw
trigger1 = 1
[State 3512, fadeout]
type = trans
trigger1 = time >= 60
trans = addalpha
alpha = ceil(256 -4.25 * (time -60)), ceil(4.25 * (time -60))
[State 3512, Vel]
type = velmul
trigger1 = vel y > 0 && pos y >= -24
x = 0.75
y = -.75
[State 3512, Vel]
type = velmul
trigger1 = vel x < 0 && backedgedist <= 12
trigger2 = vel x > 0 && frontedgedist <= 12
x = -1
[State 3512, gravity]
type = veladd
trigger1 = 1
y = 0.75
[State 3512, End]
type = destroyself
trigger1 = time >= 120


[Statedef 3513]
physics = N
velset = 0, 0
sprpriority = 3
[State 3513, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -4.25 * time), ceil(4.25 * time)
[State 3513, End]
type = destroyself
trigger1 = time >= 60


;========================< RED DUST >=============================
[Statedef 3406]
physics = N
anim = 9741
[State 3406, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 3406, Dust]
type = explod
trigger1 = !time
anim = 7501;3406
ID = 3406
sprpriority = -2
postype = p1
removetime = 16
pausemovetime = ifelse((parent, stateno = 6100), 300, 0)
supermovetime = ifelse((parent, stateno = 6100), 300, 0)
[State 3406, Fade]
type = palfx
trigger1 = !time
mul = 384, 384, 384
sinadd = -255, -255, -255, 64
time = 16
[State 3406, Shrink]
type = modifyexplod
trigger1 = 1
ID = 3406
scale = 0.2 + (0.05 * time) * const(size.xscale), 0.05 + (0.0125 * time) * const(size.yscale)
[State 3406, End]
type = destroyself
trigger1 = time >= 17


;========================< DASH FX >=============================
[Statedef 103]
physics = N
velset = 0, 0
anim = 103
sprpriority = 1
[State 103, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 103, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -12 * time), 12 * time
[State 103, End]
type = destroyself
trigger1 = time >= 20


;========================< GET UP SLIDE FX >=============================
[Statedef 5231]
physics = N
velset = 0, 0
anim = 5231
sprpriority = 1
[State 5231, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 5231, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -12 * time), 12 * time
[State 5231, End]
type = destroyself
trigger1 = time >= 20


;========================< RED FIRE >=============================
;--- < ENEMY > ---
[Statedef 7180]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
removetime = -2
scale = 0.5, 0.5
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H || enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 120


;--- < Lei-Lei > ---
[Statedef 7181]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7181, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7181, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7181
sprpriority = 3
postype = p1
random = 40, 40
vel = -.2, -.75
removetime = -2
scale = 0.5, 0.5
ownpal = 1
[State 7181, Pos]
type = bindtoroot
trigger1 = 1
pos = 0, -33
[State 7181, End]
type = destroyself
trigger1 = time >= 120
trigger2 = root, ctrl || (root, movetype != H) || (root, statetype = L)


;--- < PARTNER > ---
[Statedef 7182]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7182, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7182, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7181
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (partner, const(size.mid.pos.x)), (partner, const(size.mid.pos.y)) + 10
random = 40, 40
vel = -.2, -.75
removetime = -2
scale = 0.5, 0.5
ownpal = 1
[State 7182, Pos]
type = posadd
trigger1 = 1
x = ceil(pos x -(partner, pos x))
y = ceil(pos x -(partner, pos x))
[State 7182, End]
type = destroyself
trigger1 = time >= 120
trigger2 = !numpartner
trigger3 = numpartner
trigger3 = partner, ctrl || (partner, movetype != H) || (partner, statetype = L)


;========================< JUMP DUST >=============================
[Statedef 7100]
physics = N
velset = 0, 0
anim = 9741
[State 7100, Bind]
type = bindtoroot
trigger1 = time
[State 7100, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 7101
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
[State 7100, End]
type = destroyself
trigger1 = time >= 7


;========================< ZERO COUNTER CHARGE >=============================
[Statedef 7250]
physics = N
velset = 0, 0
anim = 9741

[State 7250, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 20
add = -255, -128, -64
sinadd = 255, 128, 64, 80
persistent = 0
[State 7250, palfx]
type = palfx
trigger1 = !time
time = 20
sinadd = -255, -255, -255, 80

[State 7250, Dust]
type = explod
trigger1 = !time
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = 30
ownpal = 1
[State 7250, thunder]
type = explod
trigger1 = !time
anim = 7250
ID = 7250
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
removetime = -2
supermovetime = 30
ownpal = 1
[State 7250, Circle]
type = explod
trigger1 = !time
anim = 7251
ID = 7251
sprpriority = 3
postype = p1
removetime = 20
supermovetime = 30

[State 7250, Shrink]
type = modifyexplod
trigger1 = numexplod(7251)
ID = 7251
scale = 0.2 + (0.09 * time), 0.2 + (0.09 * time)
[State 7250, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7250, End]
type = destroyself
trigger1 = time >= 20


;========================< COUNTER F.X. >=============================
[Statedef 7400]
type = A
physics = N
anim = 9741

[State 7400, superchargebgpalfx]
type = allpalfx
trigger1 = !time
time = 8
add = 255, 255, 255
sinadd = -255, -255, -255, 32

[State 7400, slow]
type = pause
trigger1 = time < 8
time = 1

[State 7400, End]
type = destroyself
trigger1 = time >= 8


;========================< SUPER FINISH >=============================
[Statedef 7600]
type = A
velset = 0, 0
anim = 9741
[State 7600, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 7600, Snd]
type = playsnd
trigger1 = !time
value = 7, 5
channel = 1

[State 7600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 7600, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 7600, MvC]
type = explod
trigger1 = !time
anim = 7601
ID = 7601
ontop = 1
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Fade]
type = modifyexplod
trigger1 = numexplod(7601)
ID = 7601
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 7600, Circle]
type = explod
trigger1 = !time
anim = 7600
ID = 7600
sprpriority = -255
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Scale]
type = modifyexplod
trigger1 = numexplod(7600)
ID = 7600
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 7600, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 7600, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
flag3 = globalnoshadow

[State 7600, End]
type = destroyself
trigger1 = roundstate < 3


;========================< LIN -LIN >=============================
;--- < FLASH > ---
[Statedef 6005]
physics = N
anim = 9741
[State 6005, FX]
type = explod
trigger1 = !time
anim = 7500
ID = 6005
sprpriority = 3
postype = p1
removetime = 15
[State 6005, Fade]
type = palfx
trigger1 = !time
time = 15
sinadd = -280, -280, -280, 60
[State 6005, Shrink]
type = modifyexplod
trigger1 = 1
ID = 6005
scale = 1.5 -.1 * time, 1.5 -.1 * time
[State 6005, Safety]
type = removeexplod
trigger1 = time >= 15
[State 6005, End]
type = destroyself
trigger1 = time >= 15


;--- < INTRO 2 > ---
[Statedef 6015]
type = A
physics = N
anim = 6015
sprpriority = -1

[State 6015, Snd]
type = playsnd
trigger1 = anim = 6015 && animelem = 2
value = 6, 0

[State 6015, Vel]
type = velset
trigger1 = anim = 6001
x = 1.7
y = -12
persistent = 0
[State 6015, Pos]
type = posadd
trigger1 = anim = 6015 && !animtime
y = -65
[State 6015, Accel]
type = veladd
trigger1 = anim = 6001
y = 0.75

[State 6015, Anim]
type = changeanim
trigger1 = anim = 6015 && !animtime
value = 6001

[State 6015, Snd]
type = playsnd
trigger1 = anim = 6015 && animelem = 6
value = 5, 9
[State 6015, Flash]
type = helper
trigger1 = anim = 6015 && animelem = 6
helpertype = normal
stateno = 6005
ID = 6005
name = "Lin -Lin Flash"
postype = p1
pos = 0, -65
ownpal = 1
persistent = 0

[State 6015, Shadows]
type = afterimage
trigger1 = anim = 6001
time = 999
timegap = 1
framegap = 1
length = 12
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 120, 120, 120
palpostbright = 0, 0, 0
trans = add
persistent = 0

[State 6015, spr]
type = sprpriority
trigger1 = anim = 6001
value = 1
ignorehitpause = 1
[State 6015, Type]
type = statetypeset
trigger1 = anim = 6015
type = S
physics = S
[State 6015, Type]
type = statetypeset
trigger1 = anim = 6001
type = A
physics = N
[State 6015, End]
type = destroyself
trigger1 = anim = 6001 && time >= 109


;--- < WIN 3 > ---
[Statedef 6010]
type = A
physics = N
anim = 6000
sprpriority = -1

[State 6010, Vel]
type = velset
trigger1 = !time && anim = 6000
x = 3
y = -12
[State 6010, Accel]
type = veladd
trigger1 = anim = 6000
y = 0.75

[State 6010, Anim]
type = changeanim
trigger1 = anim = 6000 && animelemtime(8) < 0 && vel y > 0 && pos y >= -70
value = 6000
elem = 8
[State 6010, Snd]
type = playsnd
trigger1 = anim = 6000 && animelemtime(8) = 5
value = 5, 9
[State 6010, Flash]
type = helper
trigger1 = anim = 6000 && animelemtime(8) = 5
helpertype = normal
stateno = 6005
ID = 6005
name = "Lin -Lin Flash"
postype = p1
ownpal = 1
persistent = 0

[State 6010, Anim]
type = changeanim
trigger1 = anim = 6000 && animelemtime(8) >= 10
value = 6010
[State 6010, Pos]
type = posset
trigger1 = anim = 6010
y = 0
[State 6010, Vel]
type = velset
trigger1 = anim = 6000 && animelemtime(8) >= 0
trigger2 = anim = 6010
x = 0
y = 0
[State 6010, Type]
type = statetypeset
trigger1 = anim = 6010
type = S
physics = S

[State 6010, Snd]
type = playsnd
trigger1 = anim = 6010 && animelem = 9
value = 6, 1

[State 6010, Shadows]
type = afterimage
trigger1 = !time && anim = 6000
time = 999
timegap = 1
framegap = 1
length = 12
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 120, 120, 120
palpostbright = 0, 0, 0
trans = add
[State 6010, Shadows]
type = afterimagetime
trigger1 = anim = 6010
time = 0


;========================< CAMERA CONTROL >=============================
[Statedef 7650]
physics = N
velset = 0, 0
anim = 9741
[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 7650, End]
type = destroyself
trigger1 = roundstate = 2
