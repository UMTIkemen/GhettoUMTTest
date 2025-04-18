;======================================================================
;======================================================================
; EX Mode states file for "Sayuri Kurata"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Basic Move 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Stand Strong Attack

[Statedef 100230]
type = S
movetype = A
physics = S
anim = 230
ctrl = 0
poweradd = 50

[State 100230, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 100230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 100230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 100230, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(5) < 0
fvar(3) = 0.06
ignorehitpause = 1

[State 100230, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(8) < 0
fvar(3) = 0.08
ignorehitpause = 1

[State 100230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = AnimElemTime(5) < 0
fvar(4) = 40
ignorehitpause = 1

[State 100230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(8) < 0
fvar(4) = 50
ignorehitpause = 1

[State 100230, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 100230, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = ceil(fvar(0)*40),0
getpower = 30,6
givepower = 12,5
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10210
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -2,0
guard.velocity = -6
air.velocity = -2.25,ifelse(EnemyNear,Vel Y <= 0,(-2.5+EnemyNear,Vel Y*0.75),-2.5)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-6.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6.0
guard.cornerpush.veloff = -6.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 100230, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 7
attr = S,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = ceil(fvar(0)*40),0
getpower = 30,6
givepower = 12,5
pausetime = 12,9
guard.pausetime = 12,12
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -7,0
guard.velocity = -6
air.velocity = -6.25,ifelse(EnemyNear,Vel Y <= 0,(-2.5+EnemyNear,Vel Y*0.75),-2.5)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-0
air.cornerpush.veloff = -7.0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -6.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
yaccel = 0.4

[State 100230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 100310]
type = C
movetype = A
physics = C
anim = 100310
ctrl = 0
poweradd = 35

[State 100310, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 100310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 100310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 100310, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 100310, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 100310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 100310, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = C,NA
hitflag = MAF
guardflag = L
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = ceil(fvar(0)*48),0
getpower = 35,7
givepower = 12,6
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -20+random%20,-60+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 14
air.hittime = 15
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -4.25,0
guard.velocity = -4.25
air.velocity = -3.25,ifelse(EnemyNear,Vel Y <= 0,(-2.5+EnemyNear,Vel Y*0.75),-2.5)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-4.4
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 100310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Strong Attack

[Statedef 100320]
type = C
movetype = A
physics = C
anim = 320
ctrl = 0
poweradd = 50

[State 100320, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 100320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 100320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 100320, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 100320, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 45
ignorehitpause = 1

[State 100320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 100320, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
damage = ceil(fvar(0)*60),0
getpower = 50,10
givepower = 15,9
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -20+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -1,-8
guard.velocity = -5
air.velocity = -1,-6
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 100320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Super Move 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; 236 + A

[Statedef 101000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
poweradd = 100

[State 101000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 101000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101000, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 101000, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 101000, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 101000, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(6) <= 1
var(17) = 1
ignorehitpause = 1

[State 101000, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(6) > 2
var(17) = 0
ignorehitpause = 1

[State 101000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 101000, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_111000"
postype = p1
pos = 30,-20
pausemovetime = 0
supermovetime = 0
stateno = 111000
ID = 111000
ignorehitpause = 1

[State 101000, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + B

[Statedef 101010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
poweradd = 100

[State 101010, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 101010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101010, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 101010, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 101010, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 101010, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(7) <= 1
var(17) = 1
ignorehitpause = 1

[State 101010, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(7) > 2
var(17) = 0
ignorehitpause = 1

[State 101010, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 101010, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1010"
postype = p1
pos = 30,-80
pausemovetime = 0
supermovetime = 0
stateno = 111000
ID = 111010
ignorehitpause = 1

[State 101010, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + C (Reinforce)

[Statedef 101020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
poweradd = 100

[State 101020, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 101020, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 101020, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 101020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101020, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 101020, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 101020, VarSet];Flicker Instant Charge Flag
type = VarSet
triggerall = var(17) = 1
trigger1 = AnimElemTime(4) >= 1
trigger1 = AnimElemTime(5) < 1
trigger2 = AnimElemTime(7) >= 1
trigger2 = AnimElemTime(9) <= 1
var(16) = 1
ignorehitpause = 1

[State 101020, VarSet];Flicker Instant Charge Input Flag
type = VarSet
triggerall = command = "22c"
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) <= 3
var(17) = 1
ignorehitpause = 1

[State 101020, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(5) = 4
trigger2 = AnimElemTime(9) = 2
var(17) = 0
ignorehitpause = 1

[State 101020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s4,0

[State 101020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimElemTime(8) = 1
value = s3,1
channel = 0

[State 101020, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1020_01"
postype = p1
pos = 30,-20
pausemovetime = 0
supermovetime = 0
stateno = 111000
ID = 111020
ignorehitpause = 1

[State 101020, Helper]
type = Helper
trigger1 = AnimElemTime(8) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1020_02"
postype = p1
pos = 30,-80
pausemovetime = 0
supermovetime = 0
stateno = 111000
ID = 111020
ignorehitpause = 1

[State 101020, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 1
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101020, Explod]
type = Explod
trigger1 = AnimElemTime(8) = 1
anim = 10100
postype = p1
pos = -10,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101020, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 10280
postype = p1
pos = 0,-40
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 101020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 412 + A

[Statedef 101200]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 100

[State 101200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 5
ignorehitpause = 1

[State 101200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.11
ignorehitpause = 1

[State 101200, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 10
ignorehitpause = 1

[State 101200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,5

[State 101200, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11200
ID = 101200
postype = p1
pos = 0,-50
facing = -1
bindtime = -1
removetime = -1
removeongethit = 1
trans = sub
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 101200, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = command != "holda"
trigger2 = Time > 120
value = 101201

;----------------------------------------------------------------------
; 412 + A(Attack)

[Statedef 101201]
type = A
movetype = A
physics = N
anim = 101201
ctrl = 0
velset = 0,0

[State 101201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(2) = 0
ID = 101200
ignorehitpause = 1

[State 101201, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
ownpal = 1
name = "Magical_Smash_111200"
postype = p1
pos = 0,-50
pausemovetime = 0
supermovetime = 0
stateno = 111200
ID = 111200
ignorehitpause = 1

[State 101201, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;----------------------------------------------------------------------
; 412 + B

[Statedef 101210]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 100

[State 101210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 5
ignorehitpause = 1

[State 101210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101210, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.11
ignorehitpause = 1

[State 101210, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 10
ignorehitpause = 1

[State 101210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,5

[State 101210, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11200
ID = 101210
postype = p1
pos = 0,-50
facing = -1
bindtime = -1
removetime = -1
removeongethit = 1
trans = sub
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 101210, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = command != "holdb"
trigger2 = Time > 120
value = 101211

;----------------------------------------------------------------------
; 412 + B(Attack)

[Statedef 101211]
type = A
movetype = A
physics = N
anim = 101201
ctrl = 0
velset = 0,0

[State 101211, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(2) = 0
ID = 101210
ignorehitpause = 1

[State 101211, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
ownpal = 1
name = "Magical_Smash_111210"
postype = p1
pos = 0,-50
pausemovetime = 0
supermovetime = 0
stateno = 111210
ID = 111210
ignorehitpause = 1

[State 101211, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;----------------------------------------------------------------------
; 412 + C

[Statedef 101220]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 100

[State 101220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 5
ignorehitpause = 1

[State 101220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101220, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.11
ignorehitpause = 1

[State 101220, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 10
ignorehitpause = 1

[State 101220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,5

[State 101220, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11200
ID = 101220
postype = p1
pos = 0,-50
facing = -1
bindtime = -1
removetime = -1
removeongethit = 1
trans = sub
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 101220, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = command != "holdc"
trigger2 = Time > 120
value = 101221

;----------------------------------------------------------------------
; 412 + C(Attack)

[Statedef 101221]
type = A
movetype = A
physics = N
anim = 101201
ctrl = 0
velset = 0,0

[State 101221, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(2) = 0
ID = 101220
ignorehitpause = 1

[State 101221, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
ownpal = 1
name = "Magical_Smash_111220"
postype = p1
pos = 0,-50
pausemovetime = 0
supermovetime = 0
stateno = 111220
ID = 111220
ignorehitpause = 1

[State 101221, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; 214 + A

[Statedef 101300]
type = S
movetype = A
physics = S
velset = 0,0
anim = 101300
ctrl = 0

[State 101300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 101300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101300, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.05
ignorehitpause = 1

[State 101300, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 101300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = A
statetype = A

[State 101300, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 0
y = -6

[State 101300, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11320
ID = 11320
postype = p1
pos = 0,20
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 101300, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = ceil(fvar(0)*45),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -0.8,-8
guard.velocity = -3
air.velocity = -0.8,-7
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 101300, NotHitBy]
type = Null;NotHitBy
trigger1 = Time < 10
value = SCA
time = 1
ignorehitpause = 1

[State 101300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; 214 + B

[Statedef 101310]
type = S
movetype = A
physics = S
velset = 0,0
anim = 101310
ctrl = 0

[State 101310, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 101310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101310, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.055
ignorehitpause = 1

[State 101310, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 101310, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = A
statetype = A

[State 101310, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 0
y = -8

[State 101310, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11320
ID = 11320
postype = p1
pos = 0,20
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 101310, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = ceil(fvar(0)*55),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -0.8,-8
guard.velocity = -3
air.velocity = -0.8,-7
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 101310, NotHitBy]
type = Null;NotHitBy
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1

[State 101310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; 214 + C

[Statedef 101320]
type = S
movetype = A
physics = S
velset = 0,0
anim = 101320
ctrl = 0

[State 101320, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 101320, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 101320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 101320, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 2
anim = 10280
postype = p1
pos = 0,-40
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 101320, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 101320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101320, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.045
ignorehitpause = 1

[State 101320, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 45
ignorehitpause = 1

[State 101320, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = A
statetype = A

[State 101320, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 0
y = -8

[State 101320, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11320
ID = 11320
postype = p1
pos = 0,20
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101320, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 111320
ID = 111320
postype = p1
pos = -5,-50
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 101320, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = ceil(fvar(0)*55),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -0.8,-8
guard.velocity = -3
air.velocity = -0.8,-7
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 101320, NotHitBy]
type = NotHitBy
trigger1 = Time < 8
value = SCA
time = 1
ignorehitpause = 1

[State 101320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; 214 + A

[Statedef 101350]
type = A
movetype = A
physics = N
anim = 101350
ctrl = 0

[State 101350, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 101350, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101350, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101350, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.05
ignorehitpause = 1

[State 101350, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 101350, VelSet]
type = VelSet
trigger1 = Time = 0
x = Vel X/2
y = 0

[State 101350, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
y = -6

[State 101350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.35

[State 101350, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11320
ID = 11320
postype = p1
pos = 0,20
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101350, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 101350, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = ceil(fvar(0)*45),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -0.8,-8
guard.velocity = -3
air.velocity = -0.8,-7
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 101350, NotHitBy]
type = Null;NotHitBy
trigger1 = Time < 7
value = SCA
time = 1
ignorehitpause = 1

[State 101350, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; 214 + B

[Statedef 101360]
type = A
movetype = A
physics = N
anim = 101300
ctrl = 0

[State 101360, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 101360, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101360, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101360, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.055
ignorehitpause = 1

[State 101360, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 101360, VelSet]
type = VelSet
trigger1 = Time = 0
x = Vel X/2
y = 0

[State 101360, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
y = -8

[State 101360, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.35

[State 101360, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11320
ID = 11320
postype = p1
pos = 0,20
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101360, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 101360, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = ceil(fvar(0)*50),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -0.8,-8
guard.velocity = -3
air.velocity = -0.8,-7
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 101360, NotHitBy]
type = Null;NotHitBy
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1

[State 101360, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; 214 + C

[Statedef 101370]
type = A
movetype = A
physics = N
velset = 0,0
anim = 101320
ctrl = 0

[State 101370, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 101370, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 101370, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 101370, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 2
anim = 10280
postype = p1
pos = 0,-40
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 101370, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 101370, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101370, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101370, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.045
ignorehitpause = 1

[State 101370, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 45
ignorehitpause = 1

[State 101370, VelSet]
type = VelSet
trigger1 = Time = 0
x = Vel X/2
y = 0

[State 101370, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
y = -8

[State 101370, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.35

[State 101370, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11320
ID = 11320
postype = p1
pos = 0,20
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101370, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 111320
ID = 111320
postype = p1
pos = -5,-50
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 0
sprpriority = 3

[State 101370, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 101370, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = ceil(fvar(0)*55),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -0.8,-8
guard.velocity = -3
air.velocity = -0.8,-7
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 101370, NotHitBy]
type = NotHitBy
trigger1 = Time < 8
value = SCA
time = 1
ignorehitpause = 1

[State 101370, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;----------------------------------------------------------------------
; 63214 + A

[Statedef 101400]
type = S
movetype = A
physics = S
anim = 101400
ctrl = 0
velset = 0,0
poweradd = 100

[State 101400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101400, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,8

[State 101400, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101400, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
ownpal = 1
name = "Magical_Card_101400"
postype = p1
pos = 70,-5
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111401
ignorehitpause = 1

[State 101400, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 2
helpertype = normal
ownpal = 1
name = "Magical_Card_101400"
postype = p1
pos = 90,-2
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111402
ignorehitpause = 1

[State 101400, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 4
helpertype = normal
ownpal = 1
name = "Magical_Card_101400"
postype = p1
pos = 80,1
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111403
ignorehitpause = 1

[State 101400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 63214 + B

[Statedef 101410]
type = S
movetype = A
physics = S
anim = 101400
ctrl = 0
velset = 0,0
poweradd = 100

[State 101410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101410, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,8

[State 101410, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101410, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
ownpal = 1
name = "Magical_Card_101410"
postype = p1
pos = 120,-5
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111401
ignorehitpause = 1

[State 101410, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 2
helpertype = normal
ownpal = 1
name = "Magical_Card_101410"
postype = p1
pos = 140,-2
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111402
ignorehitpause = 1

[State 101410, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 4
helpertype = normal
ownpal = 1
name = "Magical_Card_101410"
postype = p1
pos = 130,1
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111403
ignorehitpause = 1

[State 101410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 63214 + C

[Statedef 101420]
type = S
movetype = A
physics = S
anim = 101400
ctrl = 0
velset = 0,0
poweradd = 100

[State 101420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 101420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 101420, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,8

[State 101420, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 101420, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
ownpal = 1
name = "Magical_Card_101420"
postype = p1
pos = 170,-5
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111401
ignorehitpause = 1

[State 101420, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 2
helpertype = normal
ownpal = 1
name = "Magical_Card_101420"
postype = p1
pos = 190,-2
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111402
ignorehitpause = 1

[State 101420, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 4
helpertype = normal
ownpal = 1
name = "Magical_Card_101420"
postype = p1
pos = 180,1
pausemovetime = 0
supermovetime = 0
stateno = 111400
ID = 111403
ignorehitpause = 1

[State 101420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Eterny Special 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 106000]
type = S
movetype = A
physics = S
anim = 106000
ctrl = 0

[State 106000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 106000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 106000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 106000, VarSet];Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 106000, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0

[State 106000, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 106000, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10300
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 106000, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -1000
ignorehitpause = 1

[State 106000, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106000, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 2
player = 14,14

[State 106000, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(5) >= 1
value = 0

[State 106000, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 12

[State 106000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 106000, NotHitBy]
type = NotHitBy
trigger1 = Time < 45
value = SCA
time = 1
ignorehitpause = 1

[State 106000, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(5) = 1
attr = S,HA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*0),5
getpower = 0,0
givepower = 100,50
pausetime = 0,5
guard.pausetime = 5,5
sparkno = S10290
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,6
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
p2stateno = 146001

[State 106000, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 106002
ignorehitpause = 1

[State 106000, ChangeState]
type = ChangeState
trigger1 = Time > 60
trigger2 = MoveGuarded
trigger3 = MoveReversed
value = 106001
ignorehitpause = 1

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 106001]
type = S
movetype = A
physics = N
velset = 12,0
anim = 106001
ctrl = 0

[State 106001, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) < 0
value = 0
ignorehitpause = 1

[State 106001, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
trigger1 = Vel X > 0
x = 0.8

[State 106001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 106002]
type = S
movetype = A
physics = N
velset = 8,0
anim = 106002
ctrl = 0

[State 106002, TargetState]
type = TargetState
trigger1 = Numtarget
trigger1 = Time = 0
value = 146001
ignorehitpause = 1

[State 106002, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106002, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 10
x = 0.5

[State 106002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 106003

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 106003]
type = S
movetype = A
physics = S
velset = 0,0
anim = 106003
ctrl = 0

[State 106003, PlaySnd]
type = PlaySnd
trigger1 = Time >= 9
trigger1 = Time % 6 = 0
value = s0,1
channel = 1

[State 106003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106003, ChangeState]
type = ChangeState
trigger1 = Time > 90
value = 106004

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 106004]
type = S
movetype = A
physics = S
velset = 0,0
anim = 106004
ctrl = 0

[State 106004, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 106004, Projectile]
type = Projectile
trigger1 = AnimElemTime(3) = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 106004, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 10290
postype = p2
pos = 0,-60
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106004, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0
value = 146002

[State 106004, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0
value = ceil(-180*fvar(0))
absolute = 0
kill = 1

[State 106004, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106004, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,6

[State 106004, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,8

[State 106004, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 106010]
type = S
movetype = A
physics = S
anim = 106000
ctrl = 0

[State 106010, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 106010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 106010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 106010, VarSet];Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 106010, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0

[State 106010, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 106010, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10310
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 106010, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -2000
ignorehitpause = 1

[State 106010, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106010, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 2
player = 14,14

[State 106010, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(5) >= 1
value = 0

[State 106010, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 14

[State 106010, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 106010, NotHitBy]
type = NotHitBy
trigger1 = Time < 45
value = SCA
time = 1
ignorehitpause = 1

[State 106010, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(5) = 1
attr = S,HA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*0),5
getpower = 0,0
givepower = 100,50
pausetime = 0,5
guard.pausetime = 5,5
sparkno = S10290
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,6
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
p2stateno = 146001

[State 106010, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 106012
ignorehitpause = 1

[State 106010, ChangeState]
type = ChangeState
trigger1 = Time > 60
trigger2 = MoveGuarded
trigger3 = MoveReversed
value = 106011
ignorehitpause = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 106011]
type = S
movetype = A
physics = N
velset = 14,0
anim = 106001
ctrl = 0

[State 106011, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) < 0
value = 0
ignorehitpause = 1

[State 106011, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
trigger1 = Vel X > 0
x = 0.8

[State 106011, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 106012]
type = S
movetype = A
physics = N
velset = 8,0
anim = 106002
ctrl = 0

[State 106012, TargetState]
type = TargetState
trigger1 = Numtarget
trigger1 = Time = 0
value = 146001
ignorehitpause = 1

[State 106012, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 10
x = 0.5

[State 106012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106012, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 106013

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 106013]
type = S
movetype = A
physics = S
velset = 0,0
anim = 106003
ctrl = 0

[State 106013, PlaySnd]
type = PlaySnd
trigger1 = Time >= 9
trigger1 = Time % 6 = 0
value = s0,1
channel = 1

[State 106013, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106013, ChangeState]
type = ChangeState
trigger1 = Time > 90
value = 106014

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 106014]
type = S
movetype = A
physics = S
velset = 0,0
anim = 106004
ctrl = 0

[State 106014, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 106014, Projectile]
type = Projectile
trigger1 = AnimElemTime(3) = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 106014, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 10290
postype = p2
pos = 0,-60
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106014, HitEffect]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Effect"
postype = p2
pos = 0,-60
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 116010
ID = 1
ignorehitpause = 1

[State 106014, HitEffect]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Effect"
postype = p2
pos = 0,-60
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 116010
ID = 2
ignorehitpause = 1

[State 106014, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0
value = 146002

[State 106014, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0
value = ceil(-300*fvar(0))
absolute = 0
kill = 1

[State 106014, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106014, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,6

[State 106004, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,8

[State 106014, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 106020]
type = S
movetype = A
physics = S
anim = 106000
ctrl = 0

[State 106020, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 106020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 106020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 106020, VarSet];Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 106020, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0

[State 106020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s4,4

[State 106020, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 106020, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10320
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 106020, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -3000
ignorehitpause = 1

[State 106020, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 10100
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106020, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(3) >= 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106020, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 2
player = 14,14

[State 106020, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(5) >= 1
value = 0

[State 106020, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 16

[State 106020, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 106020, NotHitBy]
type = NotHitBy
trigger1 = Time < 52
value = SCA
time = 1
ignorehitpause = 1

[State 106020, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(5) = 1
attr = S,HA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*0),5
getpower = 0,0
givepower = 100,50
pausetime = 0,5
guard.pausetime = 5,5
sparkno = S10290
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,6
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
p2stateno = 146001

[State 106020, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 106022
ignorehitpause = 1

[State 106020, ChangeState]
type = ChangeState
trigger1 = Time > 60
trigger2 = MoveGuarded
trigger3 = MoveReversed
value = 106021
ignorehitpause = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 106021]
type = S
movetype = A
physics = N
velset = 16,0
anim = 106001
ctrl = 0

[State 106021, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106021, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) < 0
value = 0
ignorehitpause = 1

[State 106021, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
trigger1 = Vel X > 0
x = 0.8

[State 106021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 106022]
type = S
movetype = A
physics = N
velset = 8,0
anim = 106002
ctrl = 0

[State 106022, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106022, TargetState]
type = TargetState
trigger1 = Numtarget
trigger1 = Time = 0
value = 146001
ignorehitpause = 1

[State 106022, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 10
x = 0.5

[State 106022, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106022, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 106023

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 106023]
type = S
movetype = A
physics = S
velset = 0,0
anim = 106003
ctrl = 0

[State 106023, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106023, PlaySnd]
type = PlaySnd
trigger1 = Time >= 9
trigger1 = Time % 6 = 0
value = s0,1
channel = 1

[State 106023, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106023, ChangeState]
type = ChangeState
trigger1 = Time > 90
value = 106024

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 106024]
type = S
movetype = A
physics = S
velset = 0,0
anim = 106004
ctrl = 0

[State 106024, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(3) = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 106024, Projectile]
type = Projectile
trigger1 = AnimElemTime(3) = 1
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 106024, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10290
postype = p2
pos = 0,-60
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106024, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 16002
postype = p
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 106024, HitEffect]
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "Effect"
postype = p2
pos = 0,-60
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 116010
ID = 1
ignorehitpause = 1

[State 106024, HitEffect]
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "Effect"
postype = p2
pos = 0,-60
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 116010
ID = 2
ignorehitpause = 1

[State 106024, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 1
value = 146022

[State 106024, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 1
value = ceil(-350*fvar(0))
absolute = 0
kill = 1

[State 106024, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106024, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 106024, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s1,6

[State 106024, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s1,8

[State 106024, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s2,3

[State 106024, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 214214 + A

[Statedef 106100]
type = S
movetype = A
physics = S
anim = 106100
ctrl = 0

[State 106100, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 106100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 106100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 106100, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 106100, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0

[State 106100, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(10) < 2
flag = NoBG
ignorehitpause = 1

[State 106100, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10300
postype = p1
pos = -20,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 106100, NotHitBy]
type = NotHitBy
trigger1 = Time < 45
value = SCA
time = 1
ignorehitpause = 1

[State 106100, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -1000
ignorehitpause = 1

[State 106100, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = 0,80

[State 106100, VarSet]
type = VarSet
trigger1 = Time = 0
var(11) = 0

[State 106100, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(11) >= 1
var(11) = 1

[State 106100, Helper]
type = Helper
triggerall = AnimElemTime(11) >= 0
trigger1 = var(11) % 10 = 0
helpertype = normal
ownpal = 1
name = "Magical_Indignation_106100"
postype = p1
pos = 80-var(10),0
pausemovetime = 0
supermovetime = 0
stateno = 116100
ID = 116100
ignorehitpause = 1

[State 106100, ChangeState]
type = ChangeState
trigger1 = var(11) > 40
value = 106101

;----------------------------------------------------------------------
; 214214 + A

[Statedef 106101]
type = S
movetype = A
physics = S
anim = 106101
ctrl = 0

[State 106101, BGPalFX]
type = BGPalFX
trigger1 = PrevStateNo = 106120
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106101, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 214214 + B

[Statedef 106110]
type = S
movetype = A
physics = S
anim = 106100
ctrl = 0

[State 106110, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 106110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 106110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 106110, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 106110, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0

[State 106110, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(10) < 2
flag = NoBG
ignorehitpause = 1

[State 106110, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10310
postype = p1
pos = -20,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 106110, NotHitBy]
type = NotHitBy
trigger1 = Time < 50
value = SCA
time = 1
ignorehitpause = 1

[State 106110, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -2000
ignorehitpause = 1

[State 106110, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = 0,100

[State 106110, VarSet]
type = VarSet
trigger1 = Time = 0
var(11) = 0

[State 106110, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(11) >= 1
var(11) = 1

[State 106110, Helper]
type = Helper
triggerall = AnimElemTime(11) >= 0
trigger1 = var(11) % 8 = 0
helpertype = normal
ownpal = 1
name = "Magical_Indignation_106110"
postype = p1
pos = 100-var(10),0
pausemovetime = 0
supermovetime = 0
stateno = 116100
ID = 116100
ignorehitpause = 1

[State 106110, ChangeState]
type = ChangeState
trigger1 = var(11) > 64
value = 106101

;----------------------------------------------------------------------
; 214214 + C

[Statedef 106120]
type = S
movetype = A
physics = S
anim = 106100
ctrl = 0

[State 106120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 106120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 106120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 106120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 106120, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0

[State 106120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = s4,4
ignorehitpause = 1

[State 106120, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(10) < 2
flag = NoBG
ignorehitpause = 1

[State 16120, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(5) > 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 106120, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10320
postype = p1
pos = 0,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 106120, NotHitBy]
type = NotHitBy
trigger1 = Time < 60
value = SCA
time = 1
ignorehitpause = 1

[State 106120, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -3000
ignorehitpause = 1

[State 106120, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = 0,100

[State 106120, VarSet]
type = VarSet
trigger1 = Time = 0
var(11) = 0

[State 106120, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(11) >= 1
var(11) = 1

[State 106120, Helper]
type = Helper
triggerall = AnimElemTime(11) >= 0
trigger1 = var(11) % 5 = 0
helpertype = normal
ownpal = 1
name = "Magical_Indignation_106120"
postype = p1
pos = 100-var(10),0
pausemovetime = 0
supermovetime = 0
stateno = 116100
ID = 116100
ignorehitpause = 1

[State 106120, ChangeState]
type = ChangeState
trigger1 = var(11) > 100
value = 106101

