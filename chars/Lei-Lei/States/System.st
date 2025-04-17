; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMON STATES >========================================
;==============================================================================================

;====================< STANDING >====================
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && !animtime
value = 0

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, Skywalker]
type = changestate
triggerall = pos y < 0
trigger1 = !numenemy
trigger2 = numenemy = 1
trigger2 = (enemy, name = "M -NES Game 1" + enemy, name = "M -NES Game 2" + enemy, name = "M -GB Game 1" + enemy, authorname = "Bane84") < 2
trigger3 = numenemy >= 2
trigger3 = (enemy(0), name = "M -NES Game 1" + enemy(0), name = "M -NES Game 2" + enemy(0), name = "M -GB Game 1" + enemy(0), authorname = "Bane84") < 2
trigger3 = (enemy(1), name = "M -NES Game 1" + enemy(1), name = "M -NES Game 2" + enemy(1), name = "M -GB Game 1" + enemy(1), authorname = "Bane84") < 2
value = 50


;====================< CROUCHING >====================
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0

[State 10, Anim]
type = changeanim
trigger1 = !time && anim = 12
value = 10
elem = ifelse(animelemtime(4) >= 0, 1, 4 - animelemno(0))
[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10

[State 10, End]
type = changestate
trigger1 = !animtime
value = 11


[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11

[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 12, Anim]
type = changeanim
trigger1 = !time && anim = 10
value = 12
elem = 4 - animelemno(0)
[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12

[State 12, End]
type = changestate
trigger1 = command = "holddown" && command != "holdup"
value = 10
[State 12, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< WALKING >====================
[Statedef 20]
type = S
physics = S
movetype = I
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


;===================< JUMPING >================
[Statedef 40]
type = S
physics = S
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 40, Var]
type = varset
trigger1 = !time && AIlevel
var(9) = ifelse((p2dist x > 240 || p2dist y > 180 || random < 100), 3, 1)
[State 40, Var]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))
[State 40, Var]
type = varset
trigger1 = !time && !AIlevel
var(9) = ifelse(command = "highjump", 3, 1)
[State 40, Var]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))
[State 40, Var]
type = varset
trigger1 = !AIlevel && var(9) != 3 && command != "holdup"
trigger2 = AIlevel && var(9) != 3 && random < 100
var(9) = 2

[State 40, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 40, Vel]
type = velset
trigger1 = !animtime && var(9) != 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(var(9) = 2, 0.75, 1) * const(velocity.jump.y)
[State 40, Vel]
type = velset
trigger1 = !animtime && var(9) = 3
x = ifelse(sysvar(1) = 0, const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(!sysvar(1), 1.15, 1) * const(velocity.jump.y)
[State 40, Vel]
type = velset
trigger1 = !animtime && prevstateno = 100 && sysvar(1) = 1
trigger1 = var(9) := 3
x = const(velocity.runjump.fwd.x)
[State 40, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[Statedef 50]
type = A
physics = A

[State 50, Snd]
type = playsnd
trigger1 = !time
value = 0, ifelse(var(9) = 3, 41, 40)

[State 50, Anim]
type = changeanim
trigger1 = var(9) != 2
value = ifelse(!(vel x), 41, ifelse((vel x) > 0, 42, 43))
persistent = 0
[State 50, Anim]
type = changeanim
trigger1 = var(9) = 2
value = ifelse(!(vel x), 51, ifelse((vel x) > 0, 52, 53))
elem = animelemno(0)
persistent = 0

[State 50, No Guard]
type = assertspecial
trigger1 = var(9) = 2
flag = noairguard


[Statedef 51]
type = A
physics = A
[State 51, null]
type = null
trigger1 = 1


[Statedef 52]
type = S
physics = S
ctrl = 0
anim = ifelse(vel y > 11, 48, 47)
movehitpersist = 1

[State 52, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, anim48]
type = changeanim
trigger1 = !time && (prevstateno = 1100 || (prevstateno = [1450, 1499]))
value = 48

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 52, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 52, Ctrl]
type = ctrlset
trigger1 = !time
trigger1 = prevstateno != [200, 4999]
value = 1
[State 52, Ctrl]
type = ctrlset
trigger1 = time >= 1
trigger1 = prevstateno < 1000
value = 1
[State 52, guard]
type = changestate
trigger1 = command = "holdback"
trigger1 = inguarddist && (prevstateno != [200, 4999])
value = 120

[State 52, No walking]
type = assertspecial
trigger1 = time <= 2 || (prevstateno = [200, 4999])
flag = nowalk
[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================< FORWARD DASH >==========================
[Statedef 100]
type = S
physics = N
anim = 100
ctrl = 1
sprpriority = 1

[State 100, as]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[State 100, Vel]
type = velset
trigger1 = animelemtime(7) < 0 || animelemtime(16) >= 0
x = 0
[State 100, Vel]
type = velset
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
x = const(velocity.run.fwd.x)
[State 100, Vel]
type = velmul
trigger1 = animelemtime(10) >= 0 || animelemtime(16) < 0
x = 0.8

[State 100, Fade]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 103
ID = 103
name = "Illusion"
postype = p1
ownpal = 1

[State 100, Dust]
type = explod
trigger1 = time = 9 || time = 15 || time = 21
anim = 7107
ID = 7107
sprpriority = -2
postype = p1
vel = 0.1, 0
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 100, Dust]
type = explod
trigger1 = animelem = 17
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 100, Snd]
type = playsnd
trigger1 = animelem = 17
value = 0, 52
volume = -150

[State 100, End]
type = changestate
trigger1 = !animtime
value = ifelse((frontedgebodydist < 5), 0, ifelse(command = "holdfwd", 100, 0))
ctrl = 1


;========================< BACK DASH >==========================
[Statedef 105]
type = A
movetype = I
physics = S
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Vel]
type = velset
trigger1 = anim = 105
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 102, Snd]
type = playsnd
trigger1 = time = 1
value = 0, 105
[State 105, Dust]
type = explod
trigger1 = time = 1
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
vel = -1, 0
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 105, End]
type = changeanim
trigger1 = anim = 105 && time >= 15
value = 106
persistent = 0

[State 105, Snd]
type = playsnd
trigger1 = anim = 106
value = 0, 52
persistent = 0
[State 105, Dust]
type = explod
trigger1 = anim = 106
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
pos = -20, 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 105, End]
type = changestate
trigger1 = anim = 106 && !animtime
value = 0
ctrl = 1


;========================< AIR RUN >==========================
[Statedef 110]
type = A
physics = A
anim = 110
ctrl = 1
sprpriority = 1

[State 110, Turn]
type = turn
trigger1 = !AIlevel && !time
trigger1 = command = "BB" || command = "airdashb"
trigger2 = AIlevel && !time && random < 100

[State 110, Assert]
type = assertspecial
trigger1 = 1
flag = noairguard

[State 110, Vel]
type = velset
trigger1 = animelemtime(12) < 0
x = 4.5
y = 0

[State 110, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 6 || animelem = 10
value = 0, 110
freqmul = 0.8 + (random / 2500.0)
[State 110, Dust]
type = explod
trigger1 = animelem = 2 || animelem = 6 || animelem = 10
anim = 7107
ID = 7107
sprpriority = 0
postype = p1
pos = ifelse((animelem = 2 || animelem = 10), 15, 11), ifelse((animelem = 2 || animelem = 10), -24, -18)
vel = 0, 0
accel = 0, 0.05
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 110, Stop]
type = changeanim
trigger1 = animelemtime(12) < 0 && time >= 8 && command = "holdback"
value = 110
elem = 12


;========================< OFF SCREEN >==========================
[Statedef 115]
type = S
physics = S
anim = 115
ctrl = 0
sprpriority = 1
[State 115, bound]
type = screenbound
trigger1 = anim = 115
value = 0
movecamera = 0, 1
[State 115, width]
type = width
trigger1 = 1
value = 10
[State 115, as]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn
[State 115, Turn]
type = velset
trigger1 = anim = 115 && (pos x != [ -240, 240]) && (frontedgedist < backedgedist)
x = ifelse(backedgedist < -160, 9, 6)
[State 115, Vel]
type = velset
trigger1 = anim = 115
x = ifelse(backedgedist < -160, 12, 6)
[State 115, steps]
type = playsnd
trigger1 = anim = 115 && (animelem = 4 || animelem = 8)
value = 0, 100
[State 115, change]
type = changeanim
trigger1 = anim = 115 && (pos x = [ -120, 120])
value = 116
persistent = 0
[State 115, steps]
type = playsnd
trigger1 = anim = 116
value = 0, 101
persistent = 0
[State 115, End]
type = changestate
trigger1 = anim = 116 && !animtime
value = 0
ctrl = 1


;==========< DODGE >==========
[Statedef 710]
type = S
physics = S
movetype = I
anim = 710
velset = 0, 0
ctrl = 0
sprpriority = -1
[State 710, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, ifelse(random < 500, 6, 9)
channel = 0
[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, NHB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 710, fadeout]
type = trans
trigger1 = time <= 15
trans = addalpha
alpha = 256 -17 * time, 17 * time
[State 710, fadein]
type = trans
trigger1 = time = [15, 30]
trans = addalpha
alpha = 17 * (time -15), 256 -17 * (time -15)

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< SIDESTEP >==========
[Statedef 720]
type = S
physics = S
movetype = I
anim = 720
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 720, Turn]
type = turn
trigger1 = !time && command = "holdback"
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, ifelse(random < 500, 6, 9)
channel = 0
[State 720, Vel]
type = velset
trigger1 = 1
x = 4
[State 720, Push]
type = playerpush
trigger1 = 1
value = 0

[State 720, fadeout]
type = trans
trigger1 = time <= 12
trans = addalpha
alpha = 256 -21 * time, 21 * time
[State 720, fadein]
type = trans
trigger1 = time = [12, 24]
trans = addalpha
alpha = 21 * (time -12), 256 -21 * (time -12)

[State 720, HB]
type = hitby
trigger1 = animelemtime(7) < 0
value = SCA, AT
time = 1
[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< ZERO COUNTER >==========
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
ctrl = 0
velset = 0, 0
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 750, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "Counter_P"), 2, 1)
ignorehitpause = 1
[State 750, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2statetype = A), 1, ifelse((p2statetype = C), 2, ifelse(random < 500, 1, 2)))
ignorehitpause = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0
[State 750, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7250
ID = 7250
postype = p1
pos = 46, -46
ownpal = 1
persistent = 0
supermovetime = 999
[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 20
movetime = 20
anim = -1
sound = s7, 1
p2defmul = 1
darken = 0
[State 520, End]
type = changestate
trigger1 = time >= 20
value = ifelse(var(10) = 1, 1200, 240)


;==========< GUARD >==========
;--- START ---
[Statedef 120]
type = U
physics = U
[State 120, Vel]
type = velset
trigger1 = !time && statetype != A
x = 0
y = 0
[State 120, Anim]
type = changeanim
trigger1 = !time
value = 120 + (statetype = C) + (statetype = A) * 2
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 120, End]
type = changestate
trigger1 = !animtime || AIlevel
value = 130 + (statetype = C) + (statetype = A) * 2
[State 120, Stop]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- STAND GUARD (guarding) ---
[Statedef 130]
type = S
physics = S
[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype = C)
value = 131
[State 130, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140

[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52
[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

;--- CROUCH GUARD (guarding) ---
[Statedef 131]
type = C
physics = C
[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype != C)
value = 130
[State 131, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- AIR GUARD (guarding) ---
[Statedef 132]
type = A
physics = N
[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132
[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 132, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52
[State 132, stop guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- GUARD (end) ---
[Statedef 140]
type = U
physics = U
ctrl = 1
[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 140, 5]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51

;--- SGUARDHIT (shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0
[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150
[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 150, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 150, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- SGUARDHIT2 (knocked back) ---
[Statedef 151]
type = S
movetype = H
physics = S
anim = 150
[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 151, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 151, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1

;--- CGUARDHIT (shaking) ---
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0
[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151
[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 152, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 152, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- CGUARDHIT2 (knocked back) ---
[Statedef 153]
type = C
movetype = H
physics = C
anim = 151
[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 153, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 153, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1

;--- AGUARDHIT (shaking) ---
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0
[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152
[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155

;--- AGUARDHIT2 (knocked away) ---
[Statedef 155]
type = A
movetype = H
physics = N
anim = 152
[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 155, Vel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 155, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52


;==========< CHEAP K.O. >==========
[Statedef 5950]
type = S
physics = S
movetype = H
anim = 5950
velset = 0, 0
ctrl = 0
[State 5950, NHB]
type = nothitby
trigger1 = 1
value = SCA
[State 5950, Pos]
type = posset
trigger1 = 1
y = 0
[State 5950, Type]
type = statetypeset
trigger1 = animelem = 7
statetype = L
physics = C
[State 5950, Snd]
type = playsnd
trigger1 = animelem = 7
value = 0, 53
[State 5950, End]
type = changestate
trigger1 = animelemtime(8) >= 0
value = 5150


;==========< TAUNT >==========
[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
velset = 0, 0
ctrl = 0
[State 195, Snd]
type = playsnd
trigger1 = anim = 195 && animelem = 3
value = 3, 5
channel = 0
[State 195, End]
type = changeanim
trigger1 = anim = 195 && animelemtime(5) >= 0 && command != "holdstart"
value = 196
[State 195, End]
type = changestate
trigger1 = anim = 196 && !animtime
value = 0
ctrl = 1


;========================< ANKIHOU TAUNT >=============================
[Statedef 197]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
anim = 1001
[State 197, width]
type = width
trigger1 = animelem = 6
value = 50, 0
[State 197, panda]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1005
ID = 1005
name = "Panda!"
postype = p1
pos = 88, -90
ownpal = 1
[State 197, Snd]
type = playsnd
trigger1 = anim = 1001 && animelem = 4
value = 4, 9
channel = 0
[State 197, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< LOSE (Time over) >==========
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0, 0
[State 170, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 4
channel = 0


;==========< DRAW GAME (Time over) >==========
;--- < Lei-Lei > ---
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0, 0
sprpriority = -1
[State 175, ball]
type = helper
trigger1 = animelem = 2 && !numhelper(176)
helpertype = normal
stateno = 176
ID = 176
name = "Iron Ball"
postype = p1
pos = 9, -18

[State 175, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 5
channel = 1
[State 175, Snd]
type = playsnd
trigger1 = animelem = 7
value = 2, 4
volume = -100

;--- < IRON BALL > ---
[Statedef 176]
type = S
physics = N
anim = 176
velset = 1, 1
sprpriority = -2

[State 176, Accel]
type = veladd
trigger1 = pos y < 0
y = 0.45
[State 176, Snd]
type = playsnd
trigger1 = animelemtime(2) < 0 && vel y > 0 && pos y >= 0
value = 5, 4
volume = -100
persistent = 0
[State 176, Anim]
type = changeanim
trigger1 = animelemtime(2) < 0 && vel y > 0 && pos y >= 0
value = 176
elem = 2
[State 176, Vel]
type = velset
trigger1 = vel y > 0 && pos y >= 0
trigger1 = root, anim = 175 && root, animelemtime(7) < 0
x = 0
y = 0
[State 176, Pos]
type = posset
triggerall = pos y >= 0
trigger1 = root, anim = 175 && root, animelemtime(7) < 0
trigger2 = animelemtime(2) > 0 && vel y > 0
y = 0
[State 176, Vel]
type = velmul
trigger1 = animelemtime(2) > 0 && vel y >= 0 && pos y >= 0
x = 0.8
y = 0
[State 176, kicked]
type = velset
trigger1 = root, anim = 175 && root, animelem = 7
x = 3
y = -6
[State 176, Spark]
type = explod
trigger1 = root, anim = 175 && root, animelem = 7
anim = 6003
sprpriority = 5
postype = p1
pos = 0, -8
removetime = -2
ownpal = 1
scale = 0.5, 0.5
[State 176, Spark]
type = explod
trigger1 = root, anim = 175 && root, animelem = 7
anim = 6006
sprpriority = 5
postype = p1
pos = 0, -8
removetime = -2
ownpal = 1
scale = 0.5, 0.5


;==========< INITIALIZE >==========
[Statedef 5900]
type = S
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted
value = 0
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted
fvalue = 0

[State 5900, Palette]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, palno

[State 5900, End]
type = changestate
trigger1 = !time
value = ifelse(roundno = 1, 190, 0)


;==========< PREINTRO >==========
[Statedef 190]
type = S
ctrl = 0
velset = 0, 0

[State 190, vsServbot]
type = changestate
triggerall = !time && numenemy
triggerall = enemy, name = "Servbot" && enemy, authorname = "Mature4evr"
trigger1 = teammode = single
trigger1 = enemy, teammode = single
trigger2 = teammode = single
trigger2 = enemy, teammode = turns
trigger3 = teammode = turns
trigger3 = enemy, teammode = single
trigger4 = teammode = turns
trigger4 = enemy, teammode = turns
value = 199

[State 190, intro]
type = changestate
trigger1 = !time
value = ifelse(random < 500, 191, 192)


;==========< INTRO 1 >==========
[Statedef 192]
type = S
physics = N
anim = 192
[State 192, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 192, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1
pos = 0, 0
facing = 1
[State 192, bound]
type = screenbound
trigger1 = 1
value = 0
[State 192, Pos]
type = posset
trigger1 = !time
x = 320 * facing
[State 192, Vel]
type = velset
trigger1 = animelemtime(2) < 0
x = -const(velocity.run.fwd.x)

[State 192, Dust]
type = explod
trigger1 = !(time % 9) && animelemtime(2) < 0
anim = 7107
ID = 7107
sprpriority = -1
postype = p1
vel = 0.1, 0
removetime = -2
scale = 0.5, 0.5
ownpal = 1

[State 192, Anim]
type = changeanim
trigger1 = time && animelemtime(2) < 0 && numhelper(7650)
trigger1 = (helper(7650), rootdist x) < 25
value = 192
elem = 2
[State 192, Vel]
type = velset
trigger1 = animelem = 2
x = (helper(7650), rootdist x) / -12.0
[State 192, Pos]
type = posset
trigger1 = numhelper(7650) && animelemtime(11) >= 0
x = ceil(helper(7650), pos x)
[State 192, Vel]
type = velset
trigger1 = numhelper(7650) && animelemtime(11) >= 0
x = 0

[State 192, Snd]
type = playsnd
trigger1 = animelem = 6
value = 3, 0
channel = 0
[State 193, Snd]
type = playsnd
trigger1 = animelem = 10
value = 0, 52
[State 193, Dust]
type = explod
trigger1 = animelem = 10
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5
[State 192, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< INTRO 2 >==========
[Statedef 191]
type = S
anim = 191
[State 191, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 191, linlin]
type = helper
trigger1 = !time && !numhelper(6000)
helpertype = normal
stateno = 6015
ID = 6000
name = "Lin -Lin"
postype = p1
pos = -55, 0
[State 191, hat]
type = explod
trigger1 = animelem = 4
anim = 6016
ID = 6016
sprpriority = 1
postype = p1
pos = -10, -113
vel = 0, -2
accel = 0, 0.34
removetime = 19
ownpal = 1
scale = const(size.xscale), const(size.yscale)
[State 50, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 4
channel = 0
[State 191, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< INTRO vs SERVBOT by Mature4evr >==========
[Statedef 199]
type = S
anim = 199
[State 199, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 199, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 4
channel = 0
[State 199, Snd]
type = playsnd
trigger1 = animelem = 12
value = 3, 6
channel = 0
[State 199, Snd]
type = playsnd
trigger1 = animelem = 12
value = 1, 5
channel = 1
[State 199, Snd]
type = playsnd
trigger1 = animelem = 17
value = 4, 8
channel = 0
[State 199, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< WIN POSE DECIDER >==========
[Statedef 180]
type = S

[State 180, Quote]
type = victoryquote
trigger1 = 1
value = 1 + (random % 12)

[State 180, win]
type = changestate
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = ifelse(command = "holdz", 184, ifelse(command = "holdy", 183, 181))

[State 180, win]
type = changestate
trigger1 = command = "holda" || command = "holdb" || command = "holdc"
value = ifelse(command = "holdc", 184, ifelse(command = "holdc", 183, 181))

[State 180, winpose]
type = changestate
trigger1 = 1
value = ifelse(random < 333, 181, ifelse(random < 500, 183, 184))


;==========< WIN 1 >==========
[Statedef 181]
type = S
anim = ifelse(random < 500, 181, 182)
[State 181, Assert]
type = assertspecial
trigger1 = time < 180
flag = roundnotover
[State 181, Snd]
type = playsnd
trigger1 = anim = 181 && animelem = 12
trigger2 = anim = 182 && animelem = 13
value = 4, 5


;==========< WIN 3 >==========
[Statedef 183]
type = S
anim = 183
[State 183, Assert]
type = assertspecial
trigger1 = time < 180
flag = roundnotover

[State 183, Anim]
type = changeanim
trigger1 = !time && frontedgebodydist >= 100
value = 183
elem = 4
[State 183, Anim]
type = turn
trigger1 = !time && frontedgebodydist < 100

[State 183, linlin]
type = helper
trigger1 = !time && !numhelper(6000)
helpertype = normal
stateno = 6010
ID = 6000
name = "Lin -Lin"
postype = p1
pos = -1, -66

[State 183, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0 && numhelper(6000)
trigger1 = (helper(6000), anim = 6010) && (helper(6000), animelem = 6)
value = 183
elem = 5

[State 183, Snd]
type = playsnd
trigger1 = animelem = 8
value = 4, 6


;==========< WIN 4 >==========
[Statedef 184]
type = S
anim = 184
[State 184, Assert]
type = assertspecial
trigger1 = time < 180
flag = roundnotover
[State 184, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 9
channel = 0
[State 184, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
channel = 1


;==========< CONTINUE? >==========
[Statedef 5500]
type = S
ctrl = 0
velset = 0, 0
[State 5500, Anim]
type = changeanim
trigger1 = !time
value = 5500


;==========< FALL RECOVERY >==========
[Statedef 5200]
type = A
movetype = H
physics = N
[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050
[State 5200, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5201

[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0
[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0
[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 5201, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5000, 0
channel = 0
[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5201, Dust]
type = playsnd
trigger1 = !time
value = 0, 101
[State 5201, Dust]
type = explod
trigger1 = !(time % 6) && abs(vel x) >= 1
anim = 7103
sprpriority = 3
postype = p1
pos = 0, 0
vel = 1, 0
scale = 1, 1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, 3
channel = 0

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5210, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5210, Vel]
type = velset
trigger1 = !time
x = ifelse((command = "holdfwd" && command != "holdback"), 4, ifelse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;========================< GET UP SLIDE >==========================
[Statedef 5230]
type = C
physics = N
anim = 5230
ctrl = 0
velset = ifelse(command = "holdback", -5, 5), 0
sprpriority = 1

[State 5230, Push]
type = playerpush
trigger1 = animelemtime(6) < 0
value = 0
[State 5230, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1

[State 5230, Snd]
type = playsnd
trigger1 = !time
value = 5, 11

[State 5230, fadein]
type = trans
trigger1 = animelemtime(2) = [0, 16]
trans = addalpha
alpha = 12 * (animelemtime(2)), ceil(256 -12 * (animelemtime(2)))
[State 5230, Fade]
type = helper
trigger1 = !time
helpertype = normal
stateno = 5231
ID = 5231
name = "Illusion"
postype = p1
ownpal = 1
[State 5230, No Shadow]
type = assertspecial
trigger1 = animelemtime(6) < 0
flag = noshadow

[State 5230, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
physics = S
[State 5230, End]
type = changestate
trigger1 = !animtime
value = ifelse((frontedgebodydist < 5), 0, ifelse(command = "holdfwd", 100, 0))
ctrl = 1


;==========< TARGET SAFE FALL >==========
[Statedef 5205]
type = A
physics = N
movetype = H

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60
value = 5210


;===========================================================================
;===============================< -2 STATES >=================================
;===========================================================================
[Statedef -2]

[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Blood]
type = helper
trigger1 = movetype = A && hitdefattr = SCA, AA && var(11) > 0
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), var(12) -floor(p2dist y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
pausemovetime = 999
supermovetime = 999
ignorehitpause = 1

[State -2, Counter FX]
type = helper
trigger1 = !numhelper(7400) && var(29)
trigger1 = movehit = 1 && numtarget && !(hitdefattr = SCA, AT)
helpertype = normal
stateno = 7400
ID = 7400
name = "Counter"
postype = left
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(29) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
var(38) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(38) = 1
ignorehitpause = 1

[State -2, attackvarbyhits]
type = varset
trigger1 = numenemy
fvar(10) = ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause = 1
[State -2, attackvarbyhitsreset]
type = varset
trigger1 = numenemy
trigger1 = (enemynear, movetype != H)
trigger2 = !numenemy
fvar(10) = 1
ignorehitpause = 1

[State -2, dampenervar]
type = varset
trigger1 = 1
fvar(12) = fvar(10) + (var(29) * 0.2)
ignorehitpause = 1
[State -2, dampener]
type = attackmulset
trigger1 = 1
value = fvar(12)
ignorehitpause = 1

[State -2, Free Juggling]
type = assertspecial
trigger1 = roundstate != 2 || numtarget(3500)
flag = nojugglecheck
ignorehitpause = 1

[State -2, resetsenpuubucount]
type = varset
trigger1 = var(31) && statetype != A
var(31) = 0

[State -2, removehoutengekifx]
type = removeexplod
trigger1 = numexplod(1400) && anim != 1410
ID = 1400
[State -2, removepouncefx]
type = removeexplod
trigger1 = numexplod(1455) && anim != 1450
ID = 1455

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "AI = %d Damage = %f"
params = AIlevel, fvar(12)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy PotS - http://www.mugenguild.com/pots/"
ignorehitpause = 1


;===========================================================================
;===============================< -3 STATES >=================================
;===========================================================================
[Statedef -3]

[State -3, Gametime Var]
type = varset
trigger1 = 1
var(58) = gametime
ignorehitpause = 1

[State -3, Shadows]
type = afterimage
triggerall = time = 1
trigger1 = stateno = 50 && var(9) = 3
time = 2
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 120, 120, 120
palpostbright = 0, 0, 0
trans = add1

[State -3, ES Snd]
type = playsnd
trigger1 = (stateno = [1000, 1999]) && time = 1 && movetype = A && var(10) = 4
trigger1 = stateno != 1121
value = 7, 6
ignorehitpause = 1
[State -3, ES Flash]
type = palfx
trigger1 = (stateno = [1000, 1999]) && movetype = A && var(10) = 4
trigger1 = anim != 1102
time = 1
add = 8 * (gametime % 5), 8 * (gametime % 5), 8 * (gametime % 5)
mul = 128, 256, 512
color = 0
ignorehitpause = 1
[State -3, ES Flash]
type = palfx
trigger1 = (stateno = [1000, 1999]) && movetype = A && var(10) = 4
trigger1 = !(gametime % 5)
trigger1 = anim != 1102
time = 1
ignorehitpause = 1

[State -3, EXSnd]
type = playsnd
trigger1 = (stateno = [2000, 4999]) && time = 1 && movetype = A
trigger1 = stateno != 1121 && stateno != 3501
value = 7, 6
ignorehitpause = 1
[State -3, EXFlash]
type = palfx
trigger1 = stateno = 2000 || stateno = 3200 || stateno = 3400 || (stateno = [3500, 3501])
time = 1
mul = 256 + ceil(cos(gametime / 10.0 * pi) * 128), 256 + ceil(sin(gametime / 10.0 * pi) * 128), 256 + ceil(-cos(gametime / 10.0 * pi) * 128)
color = 0
ignorehitpause = 1
[State -3, EXFlash]
type = palfx
trigger1 = stateno = 2000 || stateno = 3200 || stateno = 3400 || (stateno = [3500, 3501])
trigger1 = ((gametime % 20) = [8, 9]) || ((gametime % 20) = [18, 19])
time = 1
color = 256
ignorehitpause = 1

[State -3, AfterImagePersist]
type = afterimagetime
trigger1 = stateno = 50 && var(9) = 3 && vel y < -1
time = 2

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H && numenemy = 1
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)) , 0]
trigger1 = p2statetype = S
trigger1 = p2dist y >= (enemynear, const(size.height) - 33)
trigger2 = p2statetype = C
trigger2 = p2dist y >= (enemynear, const(size.height) - 54)
trigger3 = p2statetype = L
trigger3 = p2dist y >= 9
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < (250 * (AIlevel ** 2 / 64.0))
value = 5000, (random % 2)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, (random % 2)
channel = 0
ignorehitpause = 1

[State -3, Cheap KO]
type = changestate
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5950
ignorehitpause = 1

[State -3, Super Finish]
type = helper
triggerall = winKO && !numhelper(7600)
trigger1 = (movehit = [1, 4]) && numtarget && (stateno = [3000, 4999])
trigger2 = stateno = 3501 && numtarget
trigger3 = numhelper(2025)
trigger3 = helper(2025), var(3)
trigger4 = numhelper(3105)
trigger4 = helper(3105), var(3)
trigger5 = numhelper(3205)
trigger5 = helper(3205), var(3)
trigger6 = numhelper(3405)
trigger6 = helper(3405), var(3)
trigger7 = numhelper(3410)
trigger7 = helper(3410), var(3)
helpertype = normal
stateno = 7600
ID = 7600
name = "KO FX"
postype = left
pos = 160, -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999
