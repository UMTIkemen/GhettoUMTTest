; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< NORMAL STATES >========================================
;============================================================================================

;=========< Standing Light Punch >==========
[Statedef 200]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = ifelse(p2bodydist x <= (const(size.xscale) * 25), 201, 200)
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0
[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 7
channel = 1

[State 200, Hit]
type = hitdef
triggerall = p2stateno != [5020, 5050]
triggerall = var(11) := 1 && var(12) := -53
trigger1 = anim = 200 && animelem = 2
trigger2 = anim = 201 && animelem = 2
attr = S, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 200), -54, -52)
hitsound = s2, 7
guardsound = s2, 0
ground.type = High
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 72, 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Medium Punch >==========
[Statedef 205]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 205
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 205, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 8
channel = 1

[State 205, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3
trigger1 = var(11) := 1 && var(12) := -66
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -66
hitsound = s2, 8
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71, 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 205, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Medium Punch 2 >==========
[Statedef 207]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 207
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 207, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 207, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = S, NA
damage = 50, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -69
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97, 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
movetype = I

[State 207, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Hard Punch >==========
[Statedef 210]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = ifelse((prevstateno != 505 && p2bodydist x <= (const(size.xscale) * 25)), 211, 210)
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State 210, width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(12) < 0
player = 35, 0
ignorehitpause = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0
[State 210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
[State 210, Snd]
type = playsnd
trigger1 = anim = 210 && animelem = 2
value = 5, 1

[State 210, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = anim = 210 && (animelem = 3 || animelem = 6 || animelem = 9)
trigger1 = var(11) := 1 && var(12) := -27
attr = S, NA
damage = 24, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -27
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 210, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = anim = 211 && animelem = 3
trigger1 = var(11) := 1 && var(12) := -30
attr = S, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -30
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97, 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = anim = 210 && animelemtime(11) >= 0
trigger2 = anim = 211 && animelemtime(4) >= 0
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Hard Punch 2 >==========
[Statedef 212]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 212
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State 212, width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(12) < 0
player = 35, 0
ignorehitpause = 1

[State 212, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 8
channel = 0
[State 212, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 9
channel = 1
[State 212, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 0

[State 212, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = !movecontact && !movereversed
trigger1 = animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8
trigger1 = var(11) := 1 && var(12) := ifelse((animelem = 4), -30, ifelse((animelem = 5), -99, ifelse((animelem = 6), -122, ifelse((animelem = 7), -159, -178))))
attr = S, NA
damage = 75, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((animelem = 4), -30, ifelse((animelem = 5), -99, ifelse((animelem = 6), -122, ifelse((animelem = 7), -159, -178))))
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97, 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.velocity = -4, -8
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 212, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Light Kick >==========
[Statedef 215]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 215
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0
[State 215, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 215, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = S, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -61
hitsound = s2, 4
guardsound = s2, 0
ground.type = High
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 72, 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 215, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Medium Kick >==========
[Statedef 220]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 220
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 220, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 5
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 6
trigger1 = var(11) := -1
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -77
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71, 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Hard Kick >==========
[Statedef 225]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 225
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State 225, width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
player = 50, 0
ignorehitpause = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0
[State 225, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1

[State 225, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 4
trigger1 = var(11) := 1 && var(12) := -61
attr = S, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -61
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97, 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Crouchin Light Punch >==========
[Statedef 230]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 230
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0
[State 230, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 7
channel = 1

[State 230, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := 1 && var(12) := -36
attr = C, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -36
hitsound = s2, 7
guardsound = s2, 0
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5, -7
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = 72, 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 230, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Medium Punch >==========
[Statedef 235]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 235
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State 235, width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
player = 40, 0
ignorehitpause = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 8
channel = 1

[State 235, Hit]
type = hitdef
triggerall = p2stateno != [5020, 5050]
trigger1 = animelem = 4
trigger1 = var(11) := 1 && var(12) := -20
trigger2 = animelem = 5 && !movecontact && !movereversed
trigger2 = var(11) := 1 && var(12) := -78
attr = C, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((animelem = 4), -20, -78)
hitsound = s2, 8
guardsound = s2, 0
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71, 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5, -7
down.velocity = -3, -3
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 235, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Hard Punch >==========
[Statedef 240]
type = C
movetype = A
physics = N
juggle = ifelse(numtarget, 15, 8)
anim = 240
velset = 0, 0
poweradd = 18 * (prevstateno != 750)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 240, width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
player = 30, 0
ignorehitpause = 1
[State 240, Type]
type = statetypeset
trigger1 = animelemtime(13) >= 0
physics = C
[State 240, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
x = 3

[State 240, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 11
channel = 0
[State 240, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 9
channel = 1

[State NHB -ZC]
type = nothitby
trigger1 = prevstateno = 750 && animelemtime(2) < 0
value = SCA
time = 1

[State 240, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = !movecontact && !movereversed && movetype = A
trigger1 = var(11) := 1 && var(12) := -22
attr = C, NA
damage = 65, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -22
hitsound = s2, 9
guardsound = s2, 0
ground.type = Trip
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -1, -8.24
air.type = Low
air.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * prevstateno != 750, 36 * prevstateno != 750
givepower = 36, 36
fall = 1
yaccel = 0.677
fall.recover = 1
fall.recovertime = 120

[State 240, Hit]
type = hitdef
trigger1 = prevstateno = 750
trigger1 = !movecontact && !movereversed && movetype = A
trigger1 = var(11) := 1 && var(12) := -22
attr = C, SA
damage = 65, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -22
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -5, -6.2
air.type = Low
air.velocity = -5, -6.2
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0, 0
givepower = 36, 36
fall = 1
yaccel = 0.6
fall.recover = 1
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
movetype = I

[State 240, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Light Kick >==========
[Statedef 245]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 245
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0
[State 245, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 245, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = C, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -4
hitsound = s2, 4
guardsound = s2, 0
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5, -7
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = 72, 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 245, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Medium Kick >==========
[Statedef 250]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 250
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 250, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -12
hitsound = s2, 5
guardsound = s2, 0
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71, 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5, -7
down.velocity = -3, -3
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Hard Kick >==========
[Statedef 255]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 255
velset = 0, 0
poweradd = 18
sprpriority = 1
ctrl = 0
facep2 = 1

[State 255, Pos]
type = posadd
trigger1 = !time
x = ceil(25 * const(size.xscale))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0
[State 255, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State 255, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = C, NA
damage = 60, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -93
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -4, -8
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 255, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Air Light Punch >==========
[Statedef 260]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 260
poweradd = 0
sprpriority = 1
ctrl = 0

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0
[State 260, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
channel = 1

[State 260, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := 1 && var(12) := -55
attr = A, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -55
hitsound = s2, 7
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -5.62
guard.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 72, 36
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 260, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I


;=========< Air Medium Punch >==========
[Statedef 265]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 265
poweradd = 18
sprpriority = 1
ctrl = 0

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 265, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 265, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = A, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -57
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -8.71
guard.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 265, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I


;=========< Air Hard Punch >==========
[Statedef 270]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 270
poweradd = 18
sprpriority = 1
ctrl = 0

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0
[State 270, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 9
channel = 1

[State 270, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = anim = 270 && (animelem = 3 || animelem = 8 || animelem = 13)
trigger1 = var(11) := 1 && var(12) := -62
attr = A, NA
damage = 24, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -62
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 270, Type]
type = statetypeset
trigger1 = animelemtime(15) >= 0
movetype = I


;=========< Air Light Kick >==========
[Statedef 275]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 275
poweradd = 0
sprpriority = 1
ctrl = 0

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0
[State 275, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 275, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = A, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -75
hitsound = s2, 4
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -5.62
guard.cornerpush.veloff = 0;-9.83
air.type = High
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 72, 36
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 275, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I


;=========< Air Medium Kick >==========
[Statedef 280]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 280
poweradd = 18
sprpriority = 1
ctrl = 0

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0
[State 280, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 280, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = A, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -64
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -8.71
guard.cornerpush.veloff = 0;-13.38
air.type = High
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144), 36
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 280, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I


;=========< Air Hard Kick >==========
[Statedef 285]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 285
poweradd = 18
sprpriority = 1
ctrl = 0

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0
[State 285, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State 285, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = A, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -27
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216), 36
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 285, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I


;=========================================================================
;===============================< THROWS >==================================
;=========================================================================
;========< THROW CONTROLLER >==========
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 800
juggle = 0
sprpriority = 1
facep2 = 1
poweradd = 18

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0
[State 800, Tech Hit]
type = varset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 12

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !var(38)
trigger1 = var(11) := -1
attr = S, NT 
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s0, 800
p1facing = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), -1, 1)
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 803, 801) 
guard.dist = 0
animtype = Up
ground.velocity = 3, -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.damage = 20
fall.envshake.time = 12
fall.envshake.freq = 60
fall.envshake.ampl = 5
ID = 800

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 0
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State Width]
type = width
trigger1 = 1
edge = 30, 0

[State 801, Bind 1]
type = targetbind
trigger1 = 1
pos = 68, 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = 810
ctrl = 0

;--- PLAYER TURNS ---
[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = 1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 804

[State Width]
type = width
trigger1 = 1
edge = 30, 30

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -68, 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -28, 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0
[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 36, 0
[State 803, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 68, 0

[State 803, spr]
type = sprpriority
trigger1 = 1
value = 1 -2 * (animelemtime(2) >= 0 && animelemtime(5) < 0)
[State 803, End]
type = changestate
trigger1 = !animtime
value = 810
ctrl = 0


;--- TARGET ---
[Statedef 802]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


[Statedef 804]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 804, Anim]
type = changeanim2
trigger1 = !time
value = 804
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;========< THROW ======
;--- PLAYER ---
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
ctrl = 0

[State 810, throw]
type = targetstate
trigger1 = !time
value = 811
[State 810, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 3
value = 3, 2
channel = 0
[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1

[State 810, width]
type = width
trigger1 = animelemtime(2) < 0
edge = 80, 0

[State 810, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 65, 0
[State 810, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 48, -103
[State 810, Bind 3]
type = targetbind
trigger1 = animelem = 3
pos = -8, -140

[State 810, hurt]
type = targetlifeadd
trigger1 = animelem = 3
value = -ceil(65 * fvar(12))
[State 810, hurt]
type = targetpoweradd
trigger1 = animelem = 3
value = 36
[State 810, hurt]
type = poweradd
trigger1 = animelem = 3
value = 72
[State 810, throw]
type = targetstate
trigger1 = animelem = 3
value = 812

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0 
ctrl = 1

;--- TARGET ---
[Statedef 811]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 811, Anim]
type = changeanim2
trigger1 = !time
value = 811

[State 811, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[Statedef 812]
type = A
movetype = H
physics = N
velset = 3, -11
sprpriority = 2

[State 812, Turn]
type = turn
trigger1 = !time

[State 812, fix]
type = posadd
trigger1 = !time
y = -const(size.mid.pos.y)

[State 812, Accel]
type = gravity
trigger1 = 1

[State 812, End]
type = selfstate
trigger1 = 1
value = 5020

[State 812, hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


;========< HOUTEN >==========
[Statedef 850]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 850
sprpriority = 1
poweradd = 18

[State 850, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 850, Hit]
type = hitdef
trigger1 = !time
trigger1 = !var(38)
trigger1 = var(11) := -1
attr = A, NT 
hitflag = AF
priority = 1, Miss
sparkno = -1
hitsound = s0, 800
p1facing = ifelse(vel x >= 0, 1, -1)
p2facing = 1
p1stateno = 860 
guard.dist = 0 
numhits = 0 
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 850, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 0
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I


;--- PLAYER ---
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
juggle = 15
sprpriority = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 865

[State 860, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 860, width]
type = width
trigger1 = 1
edge = 40, 40

[State 860, spr]
type = sprpriority
trigger1 = 1
value = 1 -2 * (animelemtime(3) >= 0)

[State 860, throw]
type = targetstate
trigger1 = !time
value = 865
[State 860, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 860, Vel]
type = velset
trigger1 = animelemtime(2) < 0 && vel y > -1
y = -1
[State 860, Accel]
type = gravity
trigger1 = 1
[State 860, accel]
type = velmul
trigger1 = animelemtime(2) > 0 && vel y > 1
y = 1.1

[State 860, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 71, -70
[State 860, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 15, -67
[State 860, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0
pos = 0, 0

[State 860, End]
type = changestate
trigger1 = animelemtime(2) > 0 && vel y > 0 && pos y >= -5
value = 861


;--- HIT FLOOR ---
[Statedef 861]
type = A
physics = N
movetype = A
anim = 861
ctrl = 0
velset = 0, 0
sprpriority = -1
[State 861, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn
[State 861, throw]
type = targetstate
trigger1 = !time
value = 866
[State 861, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0
[State 861, Vel]
type = velset
trigger1 = animelem = 2
x = -4
y = -6
[State 861, Snd]
type = playsnd
trigger1 = !time
value = 3, 8
channel = 0
[State 861, Snd]
type = playsnd
trigger1 = !time
value = 5, 15
[State 861, Snd]
type = playsnd
trigger1 = !time
value = 2, 9

[State 861, Shake]
type = envshake
trigger1 = !time
time = 12
freq = 120
ampl = 6
[State 861, Dust]
type = explod
trigger1 = !time
anim = 6050
ID = 6050
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
ownpal = 1
scale = 1, 1
[State 861, Hit]
type = hitadd
trigger1 = !time && numtarget
value = 1
[State 861, Sparks]
type = explod
trigger1 = !time && numtarget
anim = 6020 + (random % 8)
ID = 6000
sprpriority = 5
postype = p2
ownpal = 1
pausemovetime = 300
supermovetime = 300
[State 861, bloodsparks]
type = helper
trigger1 = time <= 5 && numtarget && var(11) := 2
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = 0, 0
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1


[State 861, Bind 1]
type = targetbind
trigger1 = animelem = 1
pos = 0, 0
[State 861, hurt]
type = targetlifeadd
trigger1 = animelem = 1
value = -ceil(125 * fvar(12))
[State 861, hurt]
type = targetpoweradd
trigger1 = animelem = 1
value = 36
[State 810, hurt]
type = poweradd
trigger1 = animelem = 1
value = 72

[State 861, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
value = A
physics = A


;--- TARGET ---
[Statedef 865]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0
[State 865, Anim]
type = changeanim2
trigger1 = !time
value = 865
[State 865, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0


;--- TARGET HIT FLOOR ---
[Statedef 866]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0
velset = 0, 0
[State 866, Anim]
type = changeanim2
trigger1 = !time
value = 866
[State 866, Vel]
type = posset
trigger1 = 1
y = 0
[State 866, End]
type = selfstate
trigger1 = time >= 39
value = 5120
ctrl = 1


;===========< Target Escaped >==========
[Statedef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 890, Bind]
type = targetbind
trigger1 = !time && numtarget
pos = 0, 0
[State 890, p2state]
type = targetstate
trigger1 = !time && numtarget
value = 895
[State 890, Throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[State 890, Pos]
type = posadd
trigger1 = !time
x = 24

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
x = -1.425
y = 0

[State 890, Snd]
type = playsnd
trigger1 = time = 2
value = 5000, 0
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 7, 3

[State 890, FX]
type = explod
trigger1 = !time
anim = 7000
ID = 7000
sprpriority = 5
postype = p1
pos = 0, -55
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 890, End]
type = changestate
trigger1 = time >= 27
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5945), 5945, 130)
[State 895, Anim]
type = changeanim
trigger1 = !time && !selfanimexist(5945) && selfanimexist(5910)
value = 5910
[State 895, Anim]
type = changeanim
trigger1 = time >= 20 && anim = 130
value = 140

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
x = -1.425
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 27
value = 0
ctrl = 1
