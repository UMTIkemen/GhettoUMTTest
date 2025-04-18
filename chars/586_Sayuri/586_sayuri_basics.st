;======================================================================
;======================================================================
; Basic states file for "Sayuri Kurata"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Intro and Matchover
;----------------------------------------------------------------------
;170 		- TimeOver
;180 		- WinPose State Selector
;181 		- WinPose 1
;190 		- Introduction State Selector
;191 to 192	- Introduction 1

[Statedef 170]
type = S
movetype = I
physics = S
anim = 170
ctrl = 0
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[Statedef 180]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0

[State 180, ChangeState]
type = ChangeState
triggerall = RoundState != 0
trigger1 = Time = 0
value = 3000

[Statedef 190]
type = S
movetype = I
physics = S
anim = 99990
ctrl = 0
velset = 0,0

[State 190, Helper]
type = Helper
trigger1 = RoundsExisted = 0
trigger1 = Time = 0
name = "Mode_Select"
ID = 50010
stateno = 50010
pos = 0,-40
postype = p1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
persistent = 0

[State 190, ChangeState]
type = ChangeState
trigger1 = var(15) = 1
value = 4100

[State 190, ChangeState]
type = ChangeState
trigger1 = Time > 0
trigger1 = var(15) = 0
value = 4000

;----------------------------------------------------------------------
; Basic Moves
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Stand Light Attack

[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0
poweradd = 20

[State 200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 200, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 200, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = S,NA
hitflag = MAF
guardflag = M
animtype = light
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*20),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 9
air.hittime = 10
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-4,0
guard.velocity = -5
air.velocity = -3,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-3.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Medium Attack(Near)

[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
poweradd = 35

[State 210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 2
ignorehitpause = 1

[State 210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 210, VarSet];Damage Correction
type = VarSet
trigger1 = 1
fvar(3) = 0.07
ignorehitpause = 1

[State 210, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 210, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 2
attr = S,NA
hitflag = MAF
guardflag = L
animtype = medium
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*41),0
getpower = 35,7
givepower = 12,5
pausetime = 12,15
guard.pausetime = 12,15
sparkno = S10210
guard.sparkno = S10270
sparkxy = -30+random%20,-30+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -5
air.velocity = -3,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-6.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6.0
guard.cornerpush.veloff = -6.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Medium Attack(far)

[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
ctrl = 0
poweradd = 35

[State 220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 2
ignorehitpause = 1

[State 220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 220, VarSet];Damage Correction
type = VarSet
trigger1 = 1
fvar(3) = 0.07
ignorehitpause = 1

[State 220, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 220, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 5
attr = S,NA
hitflag = MAF
guardflag = M
animtype = light
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*45),0
getpower = 35,7
givepower = 12,5
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10210
guard.sparkno = S10270
sparkxy = -30+random%20,-70+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 16
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-5.75,0
guard.velocity = -6
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-4.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.0
guard.cornerpush.veloff = -4.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Strong Attack

[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
ctrl = 0
poweradd = 50

[State 230, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 230, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(5) < 0
fvar(3) = 0.06
ignorehitpause = 1

[State 230, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(8) < 0
fvar(3) = 0.08
ignorehitpause = 1

[State 230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = AnimElemTime(5) < 0
fvar(4) = 40
ignorehitpause = 1

[State 230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(8) < 0
fvar(4) = 45
ignorehitpause = 1

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 230, Hitdef]
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
damage = floor(fvar(0)*30),0
getpower = 30,6
givepower = 12,5
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10210
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-2.5,0
guard.velocity = -6
air.velocity = 0,-2.5
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-6.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6.0
guard.cornerpush.veloff = -6.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 230, Hitdef]
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
damage = floor(fvar(0)*45),0
getpower = 30,6
givepower = 12,5
pausetime = 12,9
guard.pausetime = 12,12
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-7,-3.5
guard.velocity = -6
air.velocity = -6.25,ifelse(EnemyNear,Vel Y <= 0,(-2.5+EnemyNear,Vel Y*0.75),-2.5)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-0
air.cornerpush.veloff = -7.0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -6.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
yaccel = 0.4

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 300]
type = C
movetype = A
physics = C
anim = 300
ctrl = 0
poweradd = 20

[State 300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 300, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 300, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 300, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 2
attr = C,NA
hitflag = MAF
guardflag = L
animtype = light
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*20),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 9
guard.hittime = 8
air.hittime = 9
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-4.25,0
guard.velocity = -4.25
air.velocity = -3,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-4.4
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 310]
type = C
movetype = A
physics = C
anim = 310
ctrl = 0
poweradd = 35

[State 310, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 310, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 310, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 310, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*43),0
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
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -4.25
air.velocity = -3,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-4.4
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Strong Attack

[Statedef 320]
type = C
movetype = A
physics = C
anim = 320
ctrl = 0
poweradd = 50

[State 320, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 320, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 320, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 320, Hitdef]
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
damage = floor(fvar(0)*60),0
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
ground.velocity = (2.0-fvar(0))*-7.5,0
guard.velocity = -5
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-10
air.cornerpush.veloff = 0
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Ariel Light Attack

[Statedef 400]
type = A
movetype = A
physics = N
anim = 400
ctrl = 0
poweradd = 20

[State 400, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 400, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 400, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 400, VarSet]
type = VarSet
trigger1 = PrevStateNo = [100,101]
var(12) = 1
ignorehitpause = 1

[State 400, VelAdd]
type = VelAdd
trigger1 = var(12) = 0
y = 0.4

[State 400, VelAdd]
type = VelAdd
trigger1 = var(12) = 1
y = 0.4*0.6

[State 400, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 400, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 400, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*20),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-30+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 9
air.hittime = 10
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-3,0
guard.velocity = -3
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-0.2
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 400, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Ariel Medium Attack

[Statedef 410]
type = A
movetype = A
physics = N
anim = 410
ctrl = 0
poweradd = 35

[State 410, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 2
ignorehitpause = 1

[State 410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 410, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 410, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 410, VarSet]
type = VarSet
trigger1 = PrevStateNo = [100,101]
var(12) = 1
ignorehitpause = 1

[State 410, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 410, VelAdd]
type = VelAdd
trigger1 = var(12) = 0
y = 0.4

[State 410, VelAdd]
type = VelAdd
trigger1 = var(12) = 1
y = 0.4*0.6

[State 410, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 410, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 2
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*43),0
getpower = 35,7
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10210
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-3.5,0
guard.velocity = -3
air.velocity = -2.75,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = fvar(17)-0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35

[State 410, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Ariel Strong Attack

[Statedef 420]
type = A
movetype = A
physics = N
anim = 420
ctrl = 0
poweradd = 50

[State 420, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 420, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 420, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 420, VarSet]
type = VarSet
trigger1 = PrevStateNo = [100,101]
var(12) = 1
ignorehitpause = 1

[State 420, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 420, VelAdd]
type = VelAdd
trigger1 = var(12) = 0
y = 0.4

[State 420, VelAdd]
type = VelAdd
trigger1 = var(12) = 1
y = 0.4*0.6

[State 420, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 420, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*62),0
getpower = 50,10
givepower = 15,9
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-4,0
guard.velocity = -4
air.velocity = -2.25,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
ground.cornerpush.veloff = fvar(17)-0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.325

[State 420, Hitdef]
type = Hitdef
triggerall = var(4) = 1
triggerall = var(1) = 0
trigger1 = AnimElem = 5
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*55),0
getpower = 50,10
givepower = 15,9
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-4,0
guard.velocity = -4
air.velocity = -2.0,ifelse(EnemyNear,Vel Y <= 0,(-3.5+EnemyNear,Vel Y*0.25),-2.75)
ground.cornerpush.veloff = fvar(17)-0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.325

[State 420, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52

[State 420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Throw - Start

[Statedef 500]
type = S
movetype = A
physics = S
anim = 500
ctrl = 0
getpower = 70

[State 500, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 500, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 500, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 500, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 500, Hitdef]
type = Hitdef
trigger1 = AnimElem = 2
attr = S,NT
hitflag = M-
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, Miss
damage = 0,0
getpower = 70,0
givepower = 50,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = -1
sparkxy = -8,-50
hitsound = S1,8
guardsound = -1,0
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p1facing = 1
p2facing = 1
p1stateno = 510
p2stateno = 40501
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Throw - Success

[Statedef 510]
type = S
movetype = A
physics = S
anim = 510
ctrl = 0

[State 510, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 510, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = ceil(-115*fvar(0))
absolute = 0
kill = 1

[State 510, Projectile]
type = Projectile
trigger1 = AnimElemTime(4) = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(3) < 0
pos = 30,0

[State 510, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
value = 40502

[State 510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
pos = 10,-5

[State 510, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
value = 40503

[State 510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
pos = -20,-100

[State 510, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 40504

[State 510, ChangeState]
type = Turn
trigger1 = AnimTime = 0

[State 510, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Ariel Throw - Start

[Statedef 520]
type = A
movetype = A
physics = A
anim = 520
ctrl = 0
getpower = 70

[State 520, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 520, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 520, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 520, Hitdef]
type = Hitdef
trigger1 = AnimElem = 1
attr = A,NT
hitflag = A-
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, Miss
damage = 0,0
getpower = 70,0
givepower = 50,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = -1
sparkxy = -8,-70
hitsound = S1,8
guardsound = -1,0
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p1facing = 1
p2facing = 1
p1stateno = 530
p2stateno = 40530
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 520, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 420

;----------------------------------------------------------------------
; Ariel Throw - Success

[Statedef 530]
type = A
movetype = A
physics = N
anim = 530
ctrl = 0
velset = 0,0

[State 530, Effect]
type = Explod
trigger1 = Time = 12
anim = 10530
ID = 530
postype = p1
pos = 25,-90
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
sprpriority = 2

[State 530, PlaySnd]
type = PlaySnd
trigger1 = Time >= 12
trigger1 = Time % 4 = 0
value = s3,7
channel = 1
ignorehitpause = 1

[State 530, TargetBind]
type = TargetBind
trigger1 = 1
pos = 25,-90

[State 530, ChangeState]
type = ChangeState
trigger1 = Time = 65
value = 531

;----------------------------------------------------------------------
; Ariel Throw - Finish

[Statedef 531]
type = A
movetype = A
physics = N
anim = 531
ctrl = 0
velset = 0,0

[State 531, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 530

[State 531, TargetBind]
type = TargetBind
trigger1 = Time = 0
pos = 20,-75

[State 531, TargetBind]
type = TargetBind
trigger1 = Time = 4
pos = 25,-55

[State 531, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 4
value = ceil(-120*fvar(0))
absolute = 0
kill = 1

[State 531, TargetState]
type = TargetState
trigger1 = Time = 4
value = 40531

[State 531, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; Instant Charge

[Statedef 600]
type = S
movetype = A
physics = S
anim = 600
ctrl = 0
velset = 0,0

[State 600, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
ignorehitpause = 1

[State 600, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 600, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 600, Pause]
type = Pause 
trigger1 = Time = 0
time = 30
movetime = 30
ignorehitpause = 1

[State 600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 600, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 600, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 600, VarSet]
type = Null;VarSet
trigger1 = Time = 0
fvar(2) = fvar(2)*(1.0-fvar(1))
ignorehitpause = 1

[State 600, VarSet];Damage Correction
type = VarAdd
trigger1 = Time = 0
trigger1 = fvar(16) = 3
fvar(2) = fvar(15)/200
persistent = 0
ignorehitpause = 1

[State 600, VarSet];RainForce Gauge initialize
type = VarSet
trigger1 = Time = 1
fvar(15) = 0
ignorehitpause = 1

[State 600, VarSet];Flicker Instant Charge Flag initialize
type = VarSet
trigger1 = Time = 2
trigger1 = var(16) = 1
var(16) = 0
ignorehitpause = 1

[State 600, VarSet];Correction
type = Null;VarSet
trigger1 = Time = 2
fvar(18) = 1
ignorehitpause = 1

[State 600, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
ignorehitpause = 1

[State 600, Explod]
type = Explod
trigger1 = Time = 0
anim = 10600
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 600, Explod]
type = Explod
trigger1 = Time = 0
anim = 10601
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 600, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11320
ignorehitpause = 1

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Instant Charge

[Statedef 610]
type = A
movetype = A
physics = N
anim = 610
ctrl = 0

[State 610, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
ignorehitpause = 1

[State 610, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 610, Pause]
type = Pause 
trigger1 = Time = 0
time = 30
movetime = 30
ignorehitpause = 1

[State 610, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 610, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 610, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 610, VarSet]
type = Null;VarSet
trigger1 = Time = 0
fvar(2) = fvar(2)*(1.0-fvar(1))
ignorehitpause = 1

[State 610, VarSet];Damage Correction
type = VarAdd
trigger1 = Time = 0
trigger1 = fvar(16) = 3
fvar(2) = fvar(15)/200
persistent = 0
ignorehitpause = 1

[State 610, VarSet];RainForce Gauge initialize
type = VarSet
trigger1 = Time = 1
fvar(15) = 0
ignorehitpause = 1

[State 610, VarSet];Flicker Instant Charge Flag initialize
type = VarSet
trigger1 = Time = 2
trigger1 = var(16) = 1
var(16) = 0
ignorehitpause = 1

[State 610, VarSet];Correction
type = Null;VarSet
trigger1 = Time = 2
fvar(18) = 1
ignorehitpause = 1

[State 610, VarSet];Air Jump flag initialize
type = Null;VarSet
trigger1 = Time = 0
var(5) = 0

[State 610, VarSet];Air Dash flag initialize
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 610, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(20) = Vel X
ignorehitpause = 1

[State 610, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(21) = Vel Y
ignorehitpause = 1

[State 610, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = 0

[State 610, VelSet]
type = VelSet
trigger1 = Time = 30
x = fvar(20)
y = fvar(21)

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 30
statetype = A
physics = A

[State 610, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
ignorehitpause = 1

[State 610, Explod]
type = Explod
trigger1 = Time = 0
anim = 10600
postype = p1
pos = 0,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 610, Explod]
type = Explod
trigger1 = Time = 0
anim = 10601
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 610, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11320
ignorehitpause = 1

[State 610, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 111320
ignorehitpause = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;---------------------------------------------------------------------------
; WinPose 1

[Statedef 3000]
type = S
movetype = I
physics = S
anim = 3000
ctrl = 0
velset = 0,0
sprpriority = 5

[State 3000, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 90
flag = RoundNotOver

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Intro 1

[Statedef 4000]
type = S
movetype = I
physics = S
anim = 4000
ctrl = 0
velset = 0

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4000, VarSet]	;Transition
type = VarSet
trigger1 = Time = 0
var(10) = 0

[State 4000, VarSet]	;Transition
type = VarSet
trigger1 = Time = 0
var(11) = 256

[State 4000, VarSet]	;Transition
type = VarAdd
trigger1 = Time = [15,46]
var(10) = 8

[State 4000, VarSet]	;Transition
type = VarAdd
trigger1 = Time = [15,46]
var(11) = -8

[State 4000, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = var(10),var(11)

[State 4000, ChangeState]
type = ChangeState
trigger1 = Time >= 80
value = 4001

[Statedef 4001]
type = S
movetype = I
physics = S
anim = 4001
ctrl = 0
velset = 0

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Special Intro 1

[Statedef 4100]
type = S
movetype = I
physics = S
anim = 4100
ctrl = 0
velset = 0
sprpriority = 7

[State 4100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4100, Helper]
type = Helper
trigger1 = Time = 20
helpertype = normal
ownpal = 1
name = "Magical_Agents_001"
postype = p1
pos = -30,0
pausemovetime = 0
supermovetime = 0
stateno = 14100
ID = 1
ignorehitpause = 1

[State 4100, Helper]
type = Helper
trigger1 = Time = 25
helpertype = normal
ownpal = 1
name = "Magical_Agents_002"
postype = p1
pos = -50,10
pausemovetime = 0
supermovetime = 0
stateno = 14100
ID = 2
ignorehitpause = 1

[State 4100, Helper]
type = Helper
trigger1 = Time = 30
helpertype = normal
ownpal = 1
name = "Magical_Agents_003"
postype = p1
pos = -10,0
pausemovetime = 0
supermovetime = 0
stateno = 14100
ID = 3
ignorehitpause = 1

[State 4100, Helper]
type = Helper
trigger1 = Time = 35
helpertype = normal
ownpal = 1
name = "Magical_Agents_004"
postype = p1
pos = -90,10
pausemovetime = 0
supermovetime = 0
stateno = 14100
ID = 4
ignorehitpause = 1

[State 4100, Helper]
type = Helper
trigger1 = Time = 40
helpertype = normal
ownpal = 1
name = "Magical_Agents_005"
postype = p1
pos = -70,0
pausemovetime = 0
supermovetime = 0
stateno = 14100
ID = 5
ignorehitpause = 1

[State 4100, Helper]
type = Helper
trigger1 = Time = 45
helpertype = normal
ownpal = 1
name = "Magical_Agents_006"
postype = p1
pos = -60,10
pausemovetime = 0
supermovetime = 0
stateno = 14100
ID = 6
ignorehitpause = 1

[State 4100, ChangeState]
type = ChangeState
trigger1 = Time >= 60
value = 4101

[Statedef 4101]
type = S
movetype = I
physics = S
anim = 4101
ctrl = 0
velset = 0

[State 4101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4101, ChangeState]
type = ChangeState
trigger1 = Time >= 30
value = 4102

[Statedef 4102]
type = S
movetype = I
physics = S
anim = 4102
ctrl = 0
velset = 0

[State 4102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4102, ChangeState]
type = ChangeState
trigger1 = Time > 80
trigger1 = Enemy,StateNo = 0
value = 4103

[Statedef 4103]
type = S
movetype = I
physics = S
anim = 4103
ctrl = 0
velset = 0

[State 4103, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4103, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 4104
ctrl = 0

[Statedef 4104]
type = S
movetype = I
physics = S
anim = 4104
ctrl = 0
velset = 0

[State 4104, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4103, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

