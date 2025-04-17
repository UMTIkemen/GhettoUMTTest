; _______________________________________
;| Edmond Honda by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;=======================<Standing Light Punch>========================
[Statedef 200]
type = S
physics = S
movetype = A
anim = 200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 200, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 1 + 10
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 86), map(sparky) := -58

[State 200, Target Combo]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_y)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = p2bodydist x < 35
trigger2 = random < 500
value = 210

[State 200, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Medium Punch>========================
[Statedef 210]
type = S
physics = S
movetype = A
anim = 210
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 210, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 210, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 94), map(sparky) := -64

[State 210, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = prevstateno = 700
trigger1 = map(juggle) < 1 || map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = -5.30, -5.30
ground.cornerpush.veloff = 0
guard.velocity = -7.51
guard.cornerpush.veloff = 0
air.velocity = -5.30, -5.30
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 94), map(sparky) := -64

[State 210, Extra Recovery]
type = assertspecial
trigger1 = prevstateno = 200
trigger1 = !map(customcombo)
trigger1 = animelemtime(4) >= 0
trigger1 = !(time % 2)
flag = animfreeze

[State 210, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Punch>========================
[Statedef 220]
type = S
physics = S
movetype = A
anim = 220
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 220, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 220, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 53), map(sparky) := -98

[State 220, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !movecontact && !movereversed
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 90, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 104), map(sparky) := -54

[State 220, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Light Kick>========================
[Statedef 230]
type = S
physics = S
movetype = A
anim = 230
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 230, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 230, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 1 + 10
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 86), map(sparky) := -8

[State 230, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Medium Kick>========================
[Statedef 240]
type = S
physics = S
movetype = A
anim = 240
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 240, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 240, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 46), map(sparky) := -39

[State 240, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 87), map(sparky) := -62

[State 240, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Medium Kick>========================
[Statedef 241]
type = S
physics = S
movetype = A
anim = 241
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 241, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 241, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 241, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 50), map(sparky) := -69
forcestand = 1

[State 241, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 50), map(sparky) := -86

[State 241, Type]
type = statetypeset
trigger1 = animelem = 5
movetype = I

[State 241, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Kick>========================
[Statedef 250]
type = S
physics = S
movetype = A
anim = 250
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 250, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 250, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 59), map(sparky) := -49
forcestand = 1

[State 250, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 87), map(sparky) := -91

[State 250, Type]
type = statetypeset
trigger1 = animelem = 5
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Harai-geri>========================
[Statedef 255]
type = S
physics = S
movetype = A
anim = 255
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 255, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 255, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 255, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = map(juggle) < 1 || map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 90, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
yaccel = 0.695
fall = 0
forcenofall = !map(customcombo)
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 80) * (map(sparkx.max) := 140), map(sparky) := -12

[State 255, Type]
type = statetypeset
trigger1 = animelem = 5
movetype = I

[State 255, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Crouching Light Punch>========================
[Statedef 400]
type = C
physics = C
movetype = A
anim = 400
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 400, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 400, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 1 + 10
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 99), map(sparky) := -41

[State 400, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 400, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Punch>========================
[Statedef 410]
type = C
physics = C
movetype = A
anim = 410
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 410, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 410, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 60) * (map(sparkx.max) := 104), map(sparky) := -48

[State 410, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Punch>========================
[Statedef 420]
type = C
physics = C
movetype = A
anim = 420
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 420, Pos]
type = posadd
trigger1 = animelem = 7
x = 36 * const(size.xscale)

[State 420, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 420, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52)
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
yaccel = 0.695
fall = 0
forcenofall = !map(customcombo)
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 80) * (map(sparkx.max) := 126), map(sparky) := -18

[State 420, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 420, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Light Kick>========================
[Statedef 430]
type = C
physics = C
movetype = A
anim = 430
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 430, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 430, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 1 + 10
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 90), map(sparky) := -6

[State 430, Target Combo]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_x)
trigger1 = command = "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = p2bodydist x < 40
trigger2 = random < 500
value = 400

[State 430, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 430, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Kick>========================
[Statedef 440]
type = C
physics = C
movetype = A
anim = 440
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 440, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 440, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 53), map(sparky) := -29

[State 440, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 85), map(sparky) := -54

[State 440, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Kick>========================
[Statedef 450]
type = C
physics = C
movetype = A
anim = 450
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 450, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 450, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 1 + 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -1.0, -8.0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
yaccel = 0.695
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 89), map(sparky) := -7

[State 450, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 450, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Jumping Light Punch>========================
[Statedef 600]
type = A
physics = N
movetype = A
anim = 600
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 600, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 600, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 1 + 10
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 81), map(sparky) := -55

[State 600, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 600, Accel]
type = gravity
trigger1 = 1

[State 600, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Medium Punch>========================
[Statedef 610]
type = A
physics = N
movetype = A
anim = 610
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 610, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 610, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hittime = 1 + 12 + 3 * map(counterhit)
ground.slidetime = 12 + 3 * map(counterhit)
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 53), map(sparky) := -123

[State 610, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !movecontact && !movereversed
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = High
ground.hittime = 1 + 12 + 3 * map(counterhit)
ground.slidetime = 12 + 3 * map(counterhit)
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 95), map(sparky) := -86

[State 610, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 610, Accel]
type = gravity
trigger1 = 1

[State 610, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Angled Jumping Hard Punch>========================
[Statedef 620]
type = A
physics = N
movetype = A
anim = 620
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 620, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 620, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12 + 4 * map(counterhit)
ground.slidetime = 12 + 4 * map(counterhit)
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 72), map(sparky) := -56

[State 620, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 620, Accel]
type = gravity
trigger1 = 1

[State 620, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Neutral Jumping Hard Punch>========================
[Statedef 621]
type = A
physics = N
movetype = A
anim = 620
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 621, Steer]
type = veladd
trigger1 = vel x > 0
x = ifelse(vel x > 0.125, -0.125, -vel x)

[State 621, Steer]
type = velset
trigger1 = animelem = 2
x = 2.5

[State 621, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 621, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 621, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12 + 4 * map(counterhit)
ground.slidetime = 12 + 4 * map(counterhit)
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 72), map(sparky) := -56

[State 621, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 621, Accel]
type = gravity
trigger1 = 1

[State 621, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Light Kick>========================
[Statedef 630]
type = A
physics = N
movetype = A
anim = 630
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 630, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 630, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 1 + 10
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 31), map(sparky) := -55

[State 630, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 630, Accel]
type = gravity
trigger1 = 1

[State 630, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Medium Kick>========================
[Statedef 640]
type = A
physics = N
movetype = A
anim = 640
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 640, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 640, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 640, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12 + 3 * map(counterhit)
ground.slidetime = 12 + 3 * map(counterhit)
guard.hittime = 1 + 13
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -45) * (map(sparkx.max) := 45), map(sparky) := -41

[State 640, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 640, Accel]
type = gravity
trigger1 = 1

[State 640, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Hard Kick>========================
[Statedef 650]
type = A
physics = N
movetype = A
anim = 650
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 650, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0

[State 650, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = map(juggle) < 1 || map(customcombo)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12 + 4 * map(counterhit)
ground.slidetime = 12 + 4 * map(counterhit)
guard.hittime = 1 + 16
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 97), map(sparky) := -38

[State 650, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 650, Accel]
type = gravity
trigger1 = 1

[State 650, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Throw Attempt>========================
[Statedef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 800, Strength]
type = mapset
trigger1 = !time
trigger1 = !AIlevel
map = "strength"
value = ifelse(map(cmd_kk), 1, 0)

[State 800, Button AI]
type = mapset
trigger1 = !time
trigger1 = AIlevel
map = "strength"
value = (random < 500)

[State 800, Tech Hit]
type = mapset
trigger1 = 1
map = "techhit"
value = 0

[State 800, Tech Hit]
type = mapset
trigger1 = numenemy
trigger1 = p2statetype = S
trigger1 = p2stateno = [0, 999] && p2stateno != [100, 119] && p2stateno != [200, 799] && p2, anim != 5300
map = "techhit"
value = 7

[State 800, Tech Hit Facing]
type = mapset
trigger1 = !time
map = "techhit_facing"
value = facing

[State 800, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(strength) = 0
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(p2bodydistx) <= ceil(30 * const(size.xscale))
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
fall = 1
fall.recover = 1
fall.xvelocity = -3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = ifelse((!AIlevel && command = "holdback") || (AIlevel && stagebackedge < stagefrontedge), 810, 805)
p2stateno = 806

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(strength) = 1
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(p2bodydistx) <= ceil(30 * const(size.xscale))
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
fall = 1
fall.recover = 1
fall.xvelocity = -3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = ifelse((!AIlevel && command = "holdback") || (AIlevel && stagebackedge < stagefrontedge), 805, 820)
p2stateno = 806

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 800
channel = 0

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 800, Type]
type = statetypeset
trigger1 = animelem = 3
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- PLAYER TURNS -----
[Statedef 805]
type = S
physics = S
movetype = A
anim = 805
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 805, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 806

[State 805, Throw]
type = targetfacing
trigger1 = !time
trigger1 = numtarget
value = -1

[State 805, Width]
type = width
trigger1 = 1
edge = ceil(24 * const(size.xscale)), ceil(24 * const(size.xscale))

[State 805, Turn]
type = turn
trigger1 = animelem = 3

[State 805, Turn]
type = targetfacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 805, Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0 || animelemtime(4) >= 0
pos = 52 * const(size.xscale), 0

[State 805, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
pos = 18 * const(size.xscale), 0

[State 805, End]
type = changestate
trigger1 = !numtarget
value = 0
ctrl = 1

[State 805, End]
type = changestate
trigger1 = animelemtime(4) >= 0
value = ifelse(map(strength), 820, 810)


;----- TARGET -----
[Statedef 806]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 806, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;=======================<Tawara Nage>========================
[Statedef 810]
type = S
physics = N
movetype = A
anim = 810
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 810, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 810, Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State 810, Turn]
type = turn
trigger1 = !time

[State 810, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 815

[State 810, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
edge = ceil(32 * const(size.xscale)), 0

[State 810, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = ceil(48 * const(size.xscale)), 0

[State 810, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
edge = ceil(121 * const(size.xscale)), 0

[State 810, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = -32 * const(size.xscale), -68 * const(size.yscale)

[State 810, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 10 * const(size.xscale), -80 * const(size.yscale)

[State 810, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 36 * const(size.xscale), -88 * const(size.yscale)

[State 810, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 4
;pos = ceil(121 * const(size.xscale)), floor(-3 * const(size.yscale))
pos = 96 * const(size.xscale), -3 * const(size.yscale)

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 4
value = floor(-140 * map(damagescaling))
dizzy = 0

[State 810, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 4
value = -ceil(120 * map(damagescaling)) * !map(customcombo)

[State 810, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 4
value = 40;givepower

[State 810, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 4
value = 100 * map(meterscaling);getpower

[State 810, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 4
value = 1

[State 810, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 4
value = 816

[State 810, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 1
channel = 0

[State 810, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 815]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 815, Anim]
type = changeanim2
trigger1 = !time
value = 815

[State 815, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 815, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 816, Anim]
type = changeanim
trigger1 = !time
value = 5050

[State 816, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 816, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 816, Vel]
type = velset
trigger1 = !time
x = -9.31
y = 0

[State 816, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 816, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 816, Anim]
type = changeanim
trigger1 = vel y > 0
trigger1 = pos y >= 25
trigger1 = selfanimexist(5051)
value = 5051

[State 816, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100


;=======================<Saba Ori>========================
[Statedef 820]
type = S
physics = N
movetype = A
anim = 820
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 820, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 820, Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State 820, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 827

[State 820, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 820, Width]
type = width
trigger1 = 1
edge = ceil(29 * const(size.xscale)), 0

[State 820, Bind 1]
type = targetbind
trigger1 = numtarget
pos = (64 * const(size.xscale)) - target, const(size.ground.back), -62 * const(size.yscale)

[State 820, End]
type = changestate
trigger1 = !animtime
value = 821


;----- Mashing -----
[Statedef 821]
type = S
physics = N
movetype = A
anim = 821
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 821, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 821, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 821, Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State 821, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 826

[State 821, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 821, Width]
type = width
trigger1 = 1
edge = ceil(29 * const(size.xscale)), 0

[State 821, Timer Start]
type = varset
trigger1 = !time
var(51) = 135

[State 821, Timer Round Over]
type = varset
trigger1 = roundstate != 2
var(51) = 0

[State 821, Timer Decrease]
type = varadd
trigger1 = hitcount
var(51) = -1

[State 821, Timer Decrease]; Should add -4, but that was designed for a stick
type = varadd
triggerall = numtarget
triggerall = hitcount
trigger1 = target, command = "U" || target, command = "D" || target, command = "B" || target, command = "F"; no diagonals
trigger2 = target, AIlevel > 0
trigger2 = random < (200 * (target, AIlevelF / 8.0))
var(51) = -2

[State 821, Timer Decrease]; Should add -1, but that was designed for a stick
type = varadd
triggerall = numtarget
triggerall = hitcount
trigger1 = target, command = "x" || target, command = "y" || target, command = "z"
trigger2 = target, command = "a" || target, command = "b" || target, command = "c"
trigger3 = target, AIlevel > 0
trigger3 = random < (200 * (target, AIlevelF / 8.0))
var(51) = -2

[State 821, Mashing]
type = varset
trigger1 = !time
var(12) = 0

[State 821, Mashing]
type = varadd
trigger1 = !AIlevel
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = !AIlevel && (command = "U" || command = "D" || command = "B" || command = "F")
trigger3 = AIlevel > 0
trigger3 = random < (750 * (AIlevelF / 8.0))
var(12) = 1
persistent = 2

[State 821, Anim Skip]
type = changeanim
triggerall = var(51) > 0
trigger1 = animelemtime(animelemno(0)) >= 0 && animelemtime(3) < 0
trigger1 = animelemtime(animelemno(0) + 1) >= -var(12)
trigger1 = 1 || var(12) := (var(12) + animelemtime(animelemno(0) + 1))
value = 821
elem = animelemno(0) + 1

[State 821, Anim Skip]
type = changeanim
triggerall = var(51) > 0
trigger1 = animelemtime(3) > 0
trigger1 = animelemtime(3) >= (8 - var(12))
trigger1 = 1 || var(12) := (var(12) + 8 - animelemtime(3))
;trigger2 = !animtime
value = 821
elem = 1

[State 821, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
trigger3 = AIlevel > 0
trigger3 = random < (750 * (AIlevelF / 8.0))
time = 1
add = 32, 32, 32

[State 821, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) < 0 || animelemtime(3) >= 0
value = 826

[State 821, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
value = 827

[State 821, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0 || animelemtime(3) >= 0
;pos = ceil(32 * const(size.xscale)), floor(-72 * const(size.yscale))
pos = (50 * const(size.xscale)) - target, const(size.ground.back), -72 * const(size.yscale)

[State 821, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
;pos = ceil(24 * const(size.xscale)), floor(-84 * const(size.yscale))
pos = (42 * const(size.xscale)) - target, const(size.ground.back), -84 * const(size.yscale)

[State 821, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 2 && !hitcount
value = floor(-60 * map(damagescaling))
dizzy = 0

[State 821, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 2 && hitcount
value = floor(-15 * map(damagescaling))
dizzy = 0

[State 821, Give Power]
type = targetpoweradd
trigger1 = hitcount = 1
trigger1 = numtarget
trigger1 = animelem = 2
value = 40;givepower

[State 821, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = hitcount = 1
trigger1 = animelem = 2
value = 100 * map(meterscaling);getpower

[State 821, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 2
value = 1

[State 821, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0

[State 821, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 2
value = 7, 3
channel = 2

[State 821, Spark]
type = helper
trigger1 = map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 2
helpertype = normal
stateno = 8010
ID = 8000
name = "Spark"
postype = p1
pos = ceil(28 * const(size.xscale)), floor(-86 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 821, Spark]
type = explod
trigger1 = !map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 2
anim = F 1
ID = 8000
postype = p1
pos = ceil(28 * const(size.xscale)), floor(-86 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 821, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 2
time = 10
freq = 180
ampl = 1

[State 821, End]
type = changestate
trigger1 = var(51) <= 0
trigger1 = !animtime
trigger2 = numtarget
trigger2 = !(target, alive)
trigger3 = time >= 180
value = 822


;----- Release -----
[Statedef 822]
type = S
physics = N
movetype = A
anim = 822
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 822, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
value = 826

[State 822, Width]
type = width
trigger1 = 1
edge = ceil(29 * const(size.xscale)), 0

[State 821, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = (50 * const(size.xscale)) - target, const(size.ground.back), -72 * const(size.yscale)

[State 822, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 2
pos = 16 * const(size.xscale), -32 * const(size.yscale)

[State 822, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 2
value = floor(-15 * map(damagescaling))
dizzy = 0
kill = 1

[State 822, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 2
value = -ceil(160 * map(damagescaling)) * !map(customcombo)

[State 822, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 2
value = 1

[State 822, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 828

[State 822, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0

[State 822, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 2
value = 7, 3
channel = 2

[State 822, Spark]
type = helper
trigger1 = map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 2
helpertype = normal
stateno = 8011
ID = 8000
name = "Spark"
postype = p1
pos = ceil(28 * const(size.xscale)), floor(-86 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 822, Spark]
type = explod
trigger1 = !map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 2
anim = F 2
ID = 8000
postype = p1
pos = ceil(28 * const(size.xscale)), floor(-86 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 822, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 2
time = 10
freq = 180
ampl = 1

[State 822, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 825]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 825, Anim]
type = changeanim2
trigger1 = !time
value = 825

[State 825, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 825, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 826, Anim]
type = changeanim2
trigger1 = !time
value = 826

[State 826, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 826, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
trigger3 = AIlevel > 0
trigger3 = random < (200 * (AIlevelF / 8.0))
time = 1
add = 96, 0, 0

[State 826, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 827]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 827, Anim]
type = changeanim2
trigger1 = !time
value = 827

[State 827, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 827, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
trigger3 = AIlevel > 0
trigger3 = random < (200 * (AIlevelF / 8.0))
time = 1
add = 96, 0, 0

[State 827, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 828]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 828, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 828, Anim]
type = changeanim
trigger1 = anim = 5030
trigger1 = !animtime
trigger1 = selfanimexist(5035)
value = 5035

[State 828, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5050
value = 5050

[State 828, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 828, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 828, Vel]
type = velset
trigger1 = !time
x = -2.17
y = -5.25;84

[State 828, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 828, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 828, Anim]
type = changeanim
trigger1 = vel y > 0
trigger1 = pos y >= 25
trigger1 = selfanimexist(5051)
value = 5051

[State 828, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100


;=======================<Target Escaped>========================
[Statedef 890]
type = S
physics = N
movetype = I
anim = 890
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 890, Tech Hit Facing]
type = turn
trigger1 = !time
trigger1 = facing != map(techhit_facing)

[State 890, Bind]
type = targetbind
trigger1 = !time
trigger1 = numtarget = 1
pos = (const(size.ground.front) + target, const(size.ground.front)), 0

[State 890, Width]
type = width
trigger1 = !time
trigger1 = numtarget = 1
edge = (target, const(size.ground.front) + target, const(size.ground.back)), 0

[State 890, P2 State]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 895

[State 890, Throw]
type = targetfacing
trigger1 = !time
trigger1 = numtarget
value = -1

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0

[State 890, Vel]
type = velset
trigger1 = 1
x = -1.281
y = 0

[State 890, Vel Corner]
type = velset
trigger1 = numenemy
trigger1 = p2, vel x < 0
trigger1 = p2, backedgedist <= 0
x = -2.562
y = 0

[State 890, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5000, 3
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 0, 890

[State 890, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Spark"
postype = p1
pos = const(size.ground.front), -48
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535

[State 890, End]
type = changestate
trigger1 = time >= 26
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5940), 5940, ifelse(selfanimexist(200), 200, 130))

[State 895, Anim]
type = changeanim
trigger1 = anim = 130
trigger1 = time >= 20
value = 140

[State 895, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = animtime = -1
value = 200
elem = animelemno(-1)

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0

[State 895, Vel]
type = velset
trigger1 = 1
x = -1.281
y = 0

[State 895, Vel Corner]
type = velset
trigger1 = numenemy
trigger1 = stateowner, vel x < 0
trigger1 = stateowner, backedgedist <= 0
x = -2.562
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 26
value = 0
ctrl = 1
