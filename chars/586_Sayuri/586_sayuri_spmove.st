;======================================================================
;======================================================================
; Super Move states file for "Sayuri Kurata"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Super Move 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; 236 + A

[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0

[State 1000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 1000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1000, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1000, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1000, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 1000, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(6) <= 1
var(17) = 1
ignorehitpause = 1

[State 1000, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(6) > 2
var(17) = 0
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 1000, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1000"
postype = p1
pos = 30,-20
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11000
ignorehitpause = 1

[State 1000, Explod]
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

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + B

[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0

[State 1010, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 1010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1010, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1010, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1010, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 1010, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(6) <= 1
var(17) = 1
ignorehitpause = 1

[State 1010, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(6) > 2
var(17) = 0
ignorehitpause = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 1010, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1010"
postype = p1
pos = 30,-80
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11000
ignorehitpause = 1

[State 1010, Explod]
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

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + C (Reinforce)

[Statedef 1020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0

[State 1020, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1020, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1020, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 1020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1020, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1020, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1020, VarSet];Flicker Instant Charge Flag
type = VarSet
triggerall = var(17) = 1
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 1
trigger2 = AnimElemTime(8) >= 1
var(16) = 1
ignorehitpause = 1

[State 1020, VarSet];Flicker Instant Charge Input Flag
type = VarSet
triggerall = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(5) <= 3
trigger2 = AnimElemTime(5) >= 5
trigger2 = AnimElemTime(9) <= 0
var(17) = 1
ignorehitpause = 1

[State 1020, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(5) = 4
trigger2 = AnimElemTime(9) > 1
var(17) = 0
ignorehitpause = 1

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s4,0

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimElemTime(8) = 1
value = s3,1
channel = 0

[State 1020, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1020_01"
postype = p1
pos = 30,-20
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11020
ignorehitpause = 1

[State 1020, Helper]
type = Helper
trigger1 = AnimElemTime(8) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1020_02"
postype = p1
pos = 30,-80
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11020
ignorehitpause = 1

[State 1020, Explod]
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

[State 1020, Explod]
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

[State 1020, Explod]
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

[State 1020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + A

[Statedef 1050]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0

[State 1050, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 1050, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1050, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1050, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1050, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1050, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 1050, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(6) <= 1
var(17) = 1
ignorehitpause = 1

[State 1050, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(6) > 2
var(17) = 0
ignorehitpause = 1

[State 1050, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0

[State 1050, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = -2
y = -6

[State 1050, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 1
y = 0.8*Const(Movement.yaccel)

[State 1050, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 1
physics = A

[State 1050, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 2
physics = N

[State 1050, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
physics = N

[State 1050, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) < 0
trigger1 = Pos Y > -10
y = -10

[State 1050, VelSet]
type = VelSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel X > 0
x = 1

[State 1050, VelSet]
type = VelSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel X < 0
x = -1

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 1050, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1050"
postype = p1
pos = 30,-50
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11050
ignorehitpause = 1

[State 1050, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 1050, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; 236 + B

[Statedef 1060]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0

[State 1060, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 1060, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1060, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1060, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1060, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1060, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 1060, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(6) <= 1
var(17) = 1
ignorehitpause = 1

[State 1060, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(6) > 2
var(17) = 0
ignorehitpause = 1

[State 1060, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0

[State 1060, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = -2
y = -6

[State 1060, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 1
y = 0.8*Const(Movement.yaccel)

[State 1060, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 1
physics = A

[State 1060, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 2
physics = N

[State 1060, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
physics = N

[State 1060, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) < 0
trigger1 = Pos Y > -10
y = -10

[State 1060, VelSet]
type = VelSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel X > 0
x = 1

[State 1060, VelSet]
type = VelSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel X < 0
x = -1

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 1060, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1060"
postype = p1
pos = 30,-50
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11060
ignorehitpause = 1

[State 1060, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 1060, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; 236 + C

[Statedef 1070]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0

[State 1070, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 1070, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1070, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1070, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1070, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1070, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(5) >= 1
var(16) = 1
ignorehitpause = 1

[State 1070, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(6) <= 1
var(17) = 1
ignorehitpause = 1

[State 1070, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(6) > 2
var(17) = 0
ignorehitpause = 1

[State 1070, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0

[State 1070, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = -2
y = -6

[State 1070, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 1
y = 0.8*Const(Movement.yaccel)

[State 1070, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 1
physics = A

[State 1070, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 2
physics = N

[State 1070, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
physics = N

[State 1070, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) < 0
trigger1 = Pos Y > -10
y = -10

[State 1070, VelSet]
type = VelSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel X > 0
x = 1

[State 1070, VelSet]
type = VelSet
trigger1 = Pos Y > -10
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel X < 0
x = -1

[State 1070, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = s3,1

[State 1070, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Shot_1070"
postype = p1
pos = 30,-50
pausemovetime = 0
supermovetime = 0
stateno = 11000
ID = 11070
ignorehitpause = 1

[State 1070, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 1070, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; 623 + A

[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
poweradd = 100

[State 1100, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1100, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 1100, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 35
ignorehitpause = 1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,3

[State 1100, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
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

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(7) <= 0
x = 12

[State 1100, VelSet]
type = VelAdd
trigger1 = Vel X > 0
trigger1 = AnimElemTime(7) >= 0
x = -3

[State 1100, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*75),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-8.5,-3.75
guard.velocity = -6
air.velocity = -4.5,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + B

[Statedef 1110]
type = S
movetype = A
physics = S
anim = 1110
ctrl = 0
poweradd = 100

[State 1110, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1110, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1110, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,3

[State 1110, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 10100
postype = p1
pos = -10,5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 2.5
y = -4

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 1
physics = N
statetype = A

[State 1110, Gravity]
type = Gravity
trigger1 = AnimElemTime(5) > 1

[State 1110, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = hard
ground.type = high
air.type = high
damage = floor(fvar(0)*50),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-7,0
guard.velocity = -3
air.velocity = -2.25,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0

[State 1110, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5) > 1
trigger1 = Pos Y >= 0
value = 1111

;----------------------------------------------------------------------
; 623 + B (Finish)

[Statedef 1111]
type = S
movetype = A
physics = S
anim = 1111
ctrl = 0
poweradd = 100
velset = 0,0

[State 1111, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1111, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1111, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1111, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1111, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1111, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
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

[State 1111, VelSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1111, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = hard
ground.type = high
air.type = high
damage = floor(fvar(0)*55),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-7,0
guard.velocity = -5
air.velocity = -2.25,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0

[State 1111, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + C

[Statedef 1120]
type = S
movetype = A
physics = S
anim = 1120
ctrl = 0
poweradd = 100

[State 1120, NotHitBy]
type = NotHitBy
trigger1 = Time < 16
value = SCA
time = 1
ignorehitpause = 1

[State 1120, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1120, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1120, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s4,0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,3

[State 1120, Explod]
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

[State 1120, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 10100
postype = p1
pos = -10,5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 1120, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 2.5
y = -4

[State 1120, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 1
physics = N
statetype = A

[State 1120, Gravity]
type = Gravity
trigger1 = AnimElemTime(5) > 1

[State 1120, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = hard
ground.type = high
air.type = high
damage = floor(fvar(0)*50),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -3
air.velocity = -2.25,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0

[State 1120, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5) > 1
trigger1 = Pos Y >= 0
value = 1121

;----------------------------------------------------------------------
; 623 + C (Finish)

[Statedef 1121]
type = S
movetype = A
physics = S
anim = 1121
ctrl = 0
poweradd = 100
velset = 0,0

[State 1121, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1121, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1121, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(7) > 0
fvar(3) = 0.08
ignorehitpause = 1

[State 1121, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1121, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
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

[State 1121, VelSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1121, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Hard
fall.animtype = hard
ground.type = high
air.type = high
damage = floor(fvar(0)*55),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -3
air.velocity = -2.25,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
ID = 1120

[State 1121, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s0,0

[State 1121, Explod]
type = Explod
trigger1 = AnimElemTime(9) = 0
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

[State 1121, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) >= 0
trigger1 = AnimElemTime(11) <= 0
x = 12

[State 1121, VelSet]
type = VelAdd
trigger1 = Vel X > 0
trigger1 = AnimElemTime(11) >= 0
x = -3

[State 1121, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 9
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*50),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-8.5,-3.75
guard.velocity = -6
air.velocity = -7,ifelse(EnemyNear,Vel Y <= 0,(-2.25+EnemyNear,Vel Y*0.75),-2.25)
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
ID = 1121
p2facing = 1

[State 1121, TargetState]
type = TargetState
trigger1 = AnimElemTime(9) = 1
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 45000
ignorehitpause = 1
persistent = 0

[State 1121, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 412 + A

[Statedef 1200]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0

[State 1200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 5
ignorehitpause = 1

[State 1200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.11
ignorehitpause = 1

[State 1200, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 10
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,5

[State 1200, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11200
ID = 11200
postype = p1
pos = 0,-50
facing = -1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1200, ChangeState]
type = ChangeState
trigger1 = Time >= 14
value = 1201

;----------------------------------------------------------------------
; 412 + A(Attack)

[Statedef 1201]
type = A
movetype = A
physics = N
anim = 1201
ctrl = 0
velset = 4,4

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11200

[State 1201, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 11201
ID = 11201
postype = p1
pos = 37,-27
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1201, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = Time = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = floor(fvar(0)*80),5
getpower = 70,20
givepower = 25,12
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-1,-5
guard.velocity = -3
air.velocity = -1,-5
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1

[State 1201, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 45030
ignorehitpause = 1
persistent = 0

[State 1201, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1202

;----------------------------------------------------------------------
; 412 + A(Landing)

[Statedef 1202]
type = A
movetype = A
physics = N
anim = 1202
ctrl = 0
velset = 0,0

[State 1202, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1202, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11201

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,1

[State 1202, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 412 + B

[Statedef 1210]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0

[State 1210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 5
ignorehitpause = 1

[State 1210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1210, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.10
ignorehitpause = 1

[State 1210, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,5

[State 1210, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11200
ID = 11210
postype = p1
pos = 0,-50
facing = -1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1210, ChangeState]
type = ChangeState
trigger1 = Time >= 14
value = 1211

;----------------------------------------------------------------------
; 412 + B(Attack)

[Statedef 1211]
type = A
movetype = A
physics = N
anim = 1201
ctrl = 0
velset = 4,4

[State 1211, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11210

[State 1211, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 11201
ID = 11211
postype = p1
pos = 37,-27
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1211, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = HitCount = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = floor(fvar(0)*40),5
getpower = 70,20
givepower = 25,12
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-1,-5
guard.velocity = -3
air.velocity = -1,-5
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1

[State 1211, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = P2StateNo = 45030
trigger1 = HitCount = 1
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = floor(fvar(0)*50),5
getpower = 70,20
givepower = 25,12
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-1,-5
guard.velocity = -3
air.velocity = -1,-5
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 1211, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 45030
ignorehitpause = 1
persistent = 0

[State 1211, ChangeState]
type = ChangeState
trigger1 = MoveGuarded
value = 1213
ignorehitpause = 1

[State 1211, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1212
ctrl = 0

;----------------------------------------------------------------------
; 412 + B(Landing)

[Statedef 1212]
type = A
movetype = A
physics = N
anim = 1202
velset = 0,0

[State 1212, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1212, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11211

[State 1212, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,1

[State 1212, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 412 + B(Guarded)

[Statedef 1213]
type = A
movetype = A
physics = N
anim = 1213
ctrl = 1
velset = -3,-6

[State 1213, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11211

[State 1213, VelAdd]
type = VelAdd
trigger1 = 1
y = 1.25*Const(Movement.yaccel)

[State 1213, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1212
ctrl = 1

;----------------------------------------------------------------------
; 412 + C

[Statedef 1220]
type = A
movetype = A
physics = N
anim = 1220
ctrl = 0
velset = 0,0

[State 1220, NotHitBy]
type = NotHitBy
trigger1 = Time < 33
value = SCA
time = 1
ignorehitpause = 1

[State 1220, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1220, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 5
ignorehitpause = 1

[State 1220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1220, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1220, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 1220, VarSet];Initialize
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s4,0

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,6

[State 1220, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11200
ID = 11220
postype = p1
pos = 0,-50
facing = -1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1220, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
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

[State 1220, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = var(10) = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = floor(fvar(0)*40),5
getpower = 70,20
givepower = 25,12
pausetime = 2,2
guard.pausetime = 2,2
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-1,-5
guard.velocity = -3
air.velocity = -1,-2.75
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(fvar(6))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1

[State 1220, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 45030
ignorehitpause = 1
persistent = 0

[State 1220, VarAdd]
type = VarAdd
trigger1 = MoveContact
trigger2 = MoveReversed
var(10) = 1
ignorehitpause = 1

[State 1220, ChangeState]
type = ChangeState
trigger1 = Time >= 38
value = 1221

;----------------------------------------------------------------------
; 412 + C(Attack)

[Statedef 1221]
type = A
movetype = A
physics = N
anim = 1201
ctrl = 0
velset = 5,5

[State 1221, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11220

[State 1221, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 11201
ID = 11221
postype = p1
pos = 37,-27
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1221, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 1221, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 1221, VarSet];Initialize
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 1221, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = var(10) < 2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = high
damage = floor(fvar(0)*40),5
getpower = 70,20
givepower = 25,12
pausetime = 2,2
guard.pausetime = 2,2
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*-1,-5
guard.velocity = -3
air.velocity = -1,-5
airguard.velocity = -2.8,-7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 1221, VarAdd]
type = VarAdd
trigger1 = MoveContact
trigger2 = MoveReversed
var(10) = 1
ignorehitpause = 1

[State 1221, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1222
ctrl = 0

;----------------------------------------------------------------------
; 412 + C(Landing)

[Statedef 1222]
type = A
movetype = A
physics = N
anim = 1202
velset = 0,0

[State 1222, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1222, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 11221

[State 1222, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,1

[State 1222, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + A or B or C

[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0

[State 1300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1300, VarSet]
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 1300, ReversalDef]
type = ReversalDef
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(6) < 0
reversal.attr = SCA, NA, SA, HA, AA
attr = S,ST
pausetime = 42,42
sparkno = S10260
hitsound = s1,7
p1stateno = 1310
p2stateno = 41310
p2facing = 1

[State 1300, ChangeState] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + A or B or C <Catch>

[Statedef 1310]
type = S
movetype = A
physics = S
anim = 1310
ctrl = 0

[State 1310, Helper]
type = Helper
triggerall = NumHelper(11310) = 0
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Helper"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 11310
ID = 11310
ignorehitpause = 1

[State 1310, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = Enemy,PrevStateNo
ignorehitpause = 1

[State 1310, VarSet]
type = VarSet
trigger1 = Time = 10
var(10) = 1
ignorehitpause = 1

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
pos = 30,0

[State 1310, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
value = 41310

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
pos = 10,-5

[State 1310, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
value = 41311

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
pos = -20,-100

[State 1310, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 41312

[State 1310, ChangeState]
type = Turn
trigger1 = AnimElemTime(11) = 0

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(11) >= 0
trigger1 = AnimElemTime(20) < 0
trigger1 = Time % 6 = 0
value = s0,1
channel = 3

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(20) = 0
value = s1,8
channel = 3

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + A or B or C <Counter>

[Statedef 1320]
type = S
movetype = A
physics = S
anim = 1320
ctrl = 0

[State 1320, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1320, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.05
ignorehitpause = 1

[State 1320, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1320, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 1
physics = A
statetype = A

[State 1320, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 2
y = -9

[State 1320, Explod]
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

[State 1320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,4

[State 1320, Hitdef]
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
damage = floor(fvar(0)*30),5
getpower = 70,20
givepower = 25,12
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,-7
guard.velocity = -3
air.velocity = 0,-7.5
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

[State 1320, NotHitBy]
type = NotHitBy
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1

[State 1320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;----------------------------------------------------------------------
; 41236 + A

[Statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0

[State 1400, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1400, Explod]
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

[State 1400, Width]
type = Width
trigger1 = 1
player = 15,0
ignorehitpause = 1

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(11) < 0
x = 5.5

[State 1400, VelMul]
type = VelMul
trigger1 = AnimElemTime(11) >= 0
x = 0.9

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 1400, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(5) = 0
attr = S,SA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*0),5
getpower = 70,20
givepower = 25,12
pausetime = 0,10
guard.pausetime = 5,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,8
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(10000*fvar(0)*0.75)
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1

[State 1400, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 1401
ignorehitpause = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 41236 + A

[Statedef 1401]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 6.25,0

[State 1401, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 1401, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1401, TargetState]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Time = 0
value = 41400
ignorehitpause = 1

[State 1401, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1401, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1401, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1401, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 1401, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 1402

;----------------------------------------------------------------------
; 41236 + A

[Statedef 1402]
type = S
movetype = A
physics = S
anim = 1402
ctrl = 0
velset = 0,0

[State 1402, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.10
ignorehitpause = 1

[State 1402, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41402

[State 1402, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 1402, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-100*fvar(0))
absolute = 0
kill = 1

[State 1402, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1402, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -40

[State 1402, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,-10

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,3

[State 1402, Explod]
type = Explod
trigger1 = Time = 0
anim = 10260
postype = p1
pos = 25,-45
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 1402, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 20
ampl = -8

[State 1402, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1403

;----------------------------------------------------------------------
; 41236 + A

[Statedef 1403]
type = A
movetype = A
physics = N
anim = 1403
ctrl = 0
velset = -6,-5

[State 1403, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41403

[State 1403, Gravity]
type = Gravity
trigger1 = Time > 1

[State 1403, ChangeState]
type = ChangeState
trigger1 = Time > 3
trigger1 = Pos Y >= 0
value = 1222
ctrl = 0

;----------------------------------------------------------------------
; 41236 + B

[Statedef 1410]
type = S
movetype = A
physics = S
anim = 1410
ctrl = 0

[State 1410, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1410, Explod]
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

[State 1410, Width]
type = Width
trigger1 = 1
player = 15,0
ignorehitpause = 1

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(13) < 0
x = 5.5

[State 1410, VelMul]
type = VelMul
trigger1 = AnimElemTime(13) >= 0
x = 0.9

[State 1410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 1410, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(5) = 0
attr = S,SA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*0),5
getpower = 70,20
givepower = 25,12
pausetime = 0,10
guard.pausetime = 5,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,8
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(10000*fvar(0)*0.75)
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
;p2stateno = 41400

[State 1410, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 1401
ignorehitpause = 1

[State 1410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 41236 + C

[Statedef 1420]
type = S
movetype = A
physics = S
anim = 1420
ctrl = 0

[State 1420, VarAdd]
type = VarAdd
trigger1 = Time = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1420, VarAdd]
type = VarAdd
trigger1 = Time = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1420, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1420, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = s4,0

[State 1420, Explod]
type = Explod
trigger1 = Time = 1
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

[State 1420, Explod]
type = Explod
trigger1 = Time % 3 = 0
trigger1 = AnimElemTime(5) >= 1
trigger1 = AnimElemTime(10) <= 1
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

[State 1420, Width]
type = Width
trigger1 = 1
player = 15,0
ignorehitpause = 1

[State 1420, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(14) < 0
x = 9.0

[State 1420, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) >= 0
trigger1 = AnimElemTime(16) < 0
x = 4.5

[State 1420, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 1420, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(13) = 0
physics = S

[State 1420, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(5) = 0
attr = S,SA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*0),5
getpower = 70,20
givepower = 25,12
pausetime = 0,10
guard.pausetime = 5,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,8
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = 9999
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
;p2stateno = 41400

[State 1420, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 20
ignorehitpause = 1

[State 1420, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 1421
ignorehitpause = 1

[State 1420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 41236 + C

[Statedef 1421]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 9.0,0

[State 1421, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1421, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1421, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1421, VarSet];Correction
type = VarAdd
trigger1 = Time = 0
fvar(2) = 0.02
ignorehitpause = 1

[State 1421, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 1421, TargetState]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Time = 0
value = 41400
ignorehitpause = 1

[State 1421, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 1422

;----------------------------------------------------------------------
; 41236 + C

[Statedef 1422]
type = S
movetype = A
physics = S
anim = 1402
ctrl = 0
velset = 0,0

[State 1422, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 1422, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -40

[State 1422, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 1422, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41402

[State 1422, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-135*fvar(0))
absolute = 0
kill = 1

[State 1422, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1422, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,-10

[State 1422, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 1422, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,3

[State 1422, Explod]
type = Explod
trigger1 = Time = 0
anim = 10260
postype = p1
pos = 25,-45
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 1422, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 20
ampl = -8

[State 1422, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1423

;----------------------------------------------------------------------
; 41236 + C

[Statedef 1423]
type = A
movetype = A
physics = N
anim = 1403
ctrl = 0
velset = -6,-5

[State 1423, TargetState]
type = TargetState
trigger1 = Time = 0
value = 45002

[State 1423, Gravity]
type = Gravity
trigger1 = Time > 1

[State 1423, ChangeState]
type = ChangeState
trigger1 = Time > 3
trigger1 = Pos Y >= 0
value = 1424
ctrl = 0

;----------------------------------------------------------------------
; 41236 + C(Landing)

[Statedef 1424]
type = S
movetype = A
physics = S
anim = 1202
velset = 0,0

[State 1424, CtrlSet]
type = CtrlSet
trigger1 = Time = 9
value = 1

[State 1424, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1424, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,1

[State 1424, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Eterny Special 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 6000]
type = S
movetype = A
physics = S
anim = 6000
ctrl = 0

[State 6000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6000, VarSet];Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 6000, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 6000, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 6000, Explod]
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

[State 6000, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -1000
ignorehitpause = 1

[State 6000, Explod]
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

[State 6000, Width]
type = Width
trigger1 = 1
player = 15,0
ignorehitpause = 1

[State 6000, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(12) < 0
x = 8.0

[State 6000, VelMul]
type = VelMul
trigger1 = AnimElemTime(12) >= 0
x = 0.9

[State 6000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 6000, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(6) = 0
attr = S,HA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*0),5
getpower = 0,0
givepower = 100,50
pausetime = 0,10
guard.pausetime = 5,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,8
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(10000*fvar(0)*0.75)
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
;p2stateno = 41400

[State 6000, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 6001
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 6001]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 8.0,0

[State 6001, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6001, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 6001, TargetState]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Time = 0
value = 41400
ignorehitpause = 1

[State 6001, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 6002

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 6002]
type = S
movetype = A
physics = S
anim = 1402
ctrl = 0
velset = 0,0

[State 6002, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.10
ignorehitpause = 1

[State 6002, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6002, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -40

[State 6002, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41402

[State 6002, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 6002, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-225*fvar(0))
absolute = 0
kill = 1

[State 6002, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,-10

[State 6002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 6002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,6

[State 6002, Explod]
type = Explod
trigger1 = Time = 0
anim = 16002
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6002, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 30
ampl = -12
freq = 90

[State 6002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1403

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 6010]
type = S
movetype = A
physics = S
anim = 6010
ctrl = 0

[State 6010, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6010, VarSet];Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 6010, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 6010, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 6010, Explod]
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

[State 6010, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -2000
ignorehitpause = 1

[State 6010, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 6010, Explod]
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

[State 6010, Width]
type = Width
trigger1 = 1
player = 15,0
ignorehitpause = 1

[State 6010, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(15) < 5
x = 8.0

[State 6010, VelMul]
type = VelMul
trigger1 = AnimElemTime(15) >= 5
x = 0.9

[State 6010, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 6010, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(6) = 0
attr = S,HA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*0),5
getpower = 0,0
givepower = 100,50
pausetime = 0,10
guard.pausetime = 5,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,8
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(10000*fvar(0)*0.75)
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
;p2stateno = 41400

[State 6010, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 6011
ignorehitpause = 1

[State 6010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 6011]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 9.0,0

[State 6011, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6011, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6011, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6011, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 6011, TargetState]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Time = 0
value = 41400
ignorehitpause = 1

[State 6011, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 6012

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 6012]
type = S
movetype = A
physics = S
anim = 1402
ctrl = 0
velset = 0,0

[State 6012, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.10
ignorehitpause = 1

[State 6012, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6012, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -40

[State 6012, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 6012, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41402

[State 6012, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-175*fvar(0))
absolute = 0
kill = ifelse(PrevStateNo = 6013,1,0)

[State 6012, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,-10

[State 6012, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 6012, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,6

[State 6012, Explod]
type = Explod
trigger1 = Time = 0
anim = 16002
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6012, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 30
ampl = -12
freq = 90

[State 6012, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PrevStateNo = 6011
value = 6013

[State 6012, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PrevStateNo = 6013
value = 1403

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 6013]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 0,0

[State 6013, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46013

[State 6013, VelSet]
type = VelSet
trigger1 = 1
x = 8.0

[State 6013, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 6013, Turn]
type = Turn
trigger1 = Time = 0

[State 6013, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 6012

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6020]
type = S
movetype = A
physics = S
anim = 6020
ctrl = 0

[State 6020, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6020, VarSet];Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.02
ignorehitpause = 1

[State 6020, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 6020, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 6020, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(5) > 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6020, Explod]
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

[State 6020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s4,4

[State 6020, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -3000
ignorehitpause = 1

[State 6020, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(14) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 6020, Explod]
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

[State 6020, Width]
type = Width
trigger1 = 1
player = 15,0
ignorehitpause = 1

[State 6020, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(18) < 5
x = 10.5

[State 6020, VelMul]
type = VelMul
trigger1 = AnimElemTime(18) >= 5
x = 0.9

[State 6020, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
physics = N

[State 6020, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElemTime(6) = 0
attr = S,HA
hitflag = MAF
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*0),5
getpower = 0,0
givepower = 100,50
pausetime = 0,10
guard.pausetime = 5,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-55+random%20
hitsound = s1,8
guardsound = s1,7
ground.slidetime = 10
ground.hittime = 22
guard.hittime = 20
air.hittime = 22
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = -4
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(10000*fvar(0)*0.75)
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p2facing = 1
;p2stateno = 41400

[State 6020, ChangeState]
type = ChangeState
triggerall = NumTarget
trigger1 = MoveHit
trigger1 = P2MoveType = H
value = 6021
ignorehitpause = 1

[State 6020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6021]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 10.25,0

[State 6021, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6021, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6021, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6021, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6021, VelSet]
type = VelSet
trigger1 = 1
x = 10.25

[State 6021, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 6021, TargetState]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Time = 0
value = 41400
ignorehitpause = 1

[State 6021, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 6022

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6022]
type = S
movetype = A
physics = S
anim = 1402
ctrl = 0
velset = 0,0

[State 6022, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.10
ignorehitpause = 1

[State 6022, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6022, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -40

[State 6022, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6022, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 6022, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41402

[State 6022, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-180*fvar(0))
absolute = 0
kill = 0

[State 6022, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,-10

[State 6022, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 6022, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,6

[State 6022, Explod]
type = Explod
trigger1 = Time = 0
anim = 16002
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6022, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 30
ampl = -12
freq = 90

[State 6022, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PrevStateNo = 6021
value = 6023

[State 6022, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PrevStateNo = 6023
value = 6024

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6023]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 0,0

[State 6023, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46013

[State 6023, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6023, VelSet]
type = VelSet
trigger1 = 1
x = 10.25

[State 6023, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 6023, Turn]
type = Turn
trigger1 = Time = 0

[State 6023, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 6022

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6024]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
velset = 0,0

[State 6024, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46013

[State 6024, VelSet]
type = VelSet
trigger1 = 1
x = 10.25

[State 6024, TargetBind]
type = TargetBind
trigger1 = 1
pos = 10,0

[State 6024, Turn]
type = Turn
trigger1 = Time = 0

[State 6024, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6024, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Time > 200
value = 6025

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6025]
type = S
movetype = A
physics = S
anim = 1402
ctrl = 0
velset = 0,0

[State 6025, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -40

[State 6025, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.10
ignorehitpause = 1

[State 6025, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6025, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 6025, TargetState]
type = TargetState
trigger1 = Time = 0
value = 41402

[State 6025, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6025, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-180*fvar(0))
absolute = 0
kill = 1

[State 6025, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,-10

[State 6025, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 6025, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,6

[State 6025, Explod]
type = Explod
trigger1 = Time = 0
anim = 16002
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6025, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 30
ampl = -12
freq = 90

[State 6025, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1403

;----------------------------------------------------------------------
; 6321463214 + A

[Statedef 6100]
type = S
movetype = A
physics = S
anim = 6100
ctrl = 0

[State 6100, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6100, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6100, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 6100, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(5) < 2
flag = NoBG
ignorehitpause = 1

[State 6100, Explod]
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

[State 6100, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,3]
value = SCA
time = 1
ignorehitpause = 1

[State 6100, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 6
value = SCA
time = 1
ignorehitpause = 1

[State 6100, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -1000
ignorehitpause = 1

[State 6100, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = 50,0
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6100, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = 70,-10
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6100, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = -70,0
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6100, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = -90,-10
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6100, Hitdef]
type = Hitdef
triggerall = EnemyNear,HitOver || P2StateNo != [150,155]
trigger1 = AnimElem = 6
attr = S,HT
hitflag = M
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, Miss
damage = 0,0
getpower = 0,0
givepower = 0,0
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
ground.velocity = (2.0-fvar(0))*-3,-4
guard.velocity = 0
air.velocity = -3,-4
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p1facing = 1
p2facing = 1
p1stateno = 6101
p2stateno = 46101
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 6100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 6321463214 + A <Success>

[Statedef 6101]
type = S
movetype = A
physics = S
anim = 6101
ctrl = 0

[State 6101, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 25,0

[State 6101, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 15,-110

[State 6101, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 46102

[State 6101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6101, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6102

;----------------------------------------------------------------------
; 6321463214 + A <Success>

[Statedef 6102]
type = S
movetype = A
physics = S
anim = 6102
ctrl = 0

[State 6102, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6102, TargetState]
type = TargetState
trigger1 = Time = 10
value = 46103

[State 6102, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = 0,30

[State 6102, VarRandom]
type = VarRandom
trigger1 = 1
v = 11
range = 0,1

[State 6102, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 6102, Helper]
type = Helper
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 30
trigger4 = Time = 40
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = var(10)*ifelse(var(11) = 1,1,-1),-1*random%10
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6102, Explod]
type = Explod
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 30
trigger4 = Time = 40
anim = 10260
postype = p2
pos = -10+random%20,random%20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6102, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 30
trigger4 = Time = 40
value = s1,2
channel = 2

[State 6102, EnvShake]
type = EnvShake
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 30
trigger4 = Time = 40
time = 10
ampl = -7

[State 6102, ChangeState]
type = ChangeState
trigger1 = Time >= 78
value = 6103

;----------------------------------------------------------------------
; 6321463214 + A <Finish>

[Statedef 6103]
type = S
movetype = A
physics = S
anim = 6103
ctrl = 0

[State 6103, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6103, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46104

[State 6103, TargetState]
type = TargetState
trigger1 = Time = 4
trigger2 = Time = 5
value = 46105

[State 6103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-135*fvar(0))
absolute = 0
kill = 1

[State 6103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 4
value = ceil(-50*fvar(0))
absolute = 0
kill = 1

[State 6103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 5
value = ceil(-50*fvar(0))
absolute = 0
kill = 1

[State 6102, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 3
fvar(3) = 0.09
ignorehitpause = 1

[State 6103, Projectile]
type = Projectile
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6103, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = s1,2
channel = 2

[State 6103, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = s1,5
channel = 5

[State 6103, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = 1

[State 6102, Explod]
type = Explod
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
anim = 10260
postype = p2
pos = -10+random%20,random%20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6103, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6103"
postype = p1
pos = 50,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6103, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6103"
postype = p1
pos = 70,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6103, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6103"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6103, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6103"
postype = p1
pos = -70,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6103, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6103"
postype = p1
pos = -90,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6103, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 6321463214 + B

[Statedef 6110]
type = S
movetype = A
physics = S
anim = 6100
ctrl = 0

[State 6110, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6110, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6110, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 43
movetime = 43
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 6110, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(6) < 2
flag = NoBG
ignorehitpause = 1

[State 6110, Explod]
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

[State 6110, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,3]
value = SCA
time = 1
ignorehitpause = 1

[State 6110, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -2000
ignorehitpause = 1

[State 6110, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = 50,0
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6110, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = 70,-10
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6110, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = -70,0
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6110, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = -90,-10
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6110, Hitdef]
type = Hitdef
triggerall = EnemyNear,HitOver || P2StateNo != [150,155]
trigger1 = AnimElem = 6
attr = S,HT
hitflag = M
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, miss
damage = 0,0
getpower = 0,0
givepower = 0,0
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
ground.velocity = (2.0-fvar(0))*-3,-4
guard.velocity = 0
air.velocity = -3,-4
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p1facing = 1
p2facing = 1
p1stateno = 6111
p2stateno = 46101
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 6110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 6321463214 + B <Success>

[Statedef 6111]
type = S
movetype = A
physics = S
anim = 6101
ctrl = 0

[State 6111, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 25,0

[State 6111, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 15,-110

[State 6111, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 46102

[State 6111, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6111, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6112

;----------------------------------------------------------------------
; 6321463214 + B <Success>

[Statedef 6112]
type = S
movetype = A
physics = S
anim = 6102
ctrl = 0

[State 6112, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 3
fvar(3) = 0.25
ignorehitpause = 1

[State 6112, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6112, TargetState]
type = TargetState
trigger1 = Time = 16
value = 46103

[State 6112, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = 0,70

[State 6112, VarRandom]
type = VarRandom
trigger1 = 1
v = 11
range = 0,1

[State 6112, Helper]
type = Helper
trigger1 = Time = [10,90]
trigger1 = Time % 8 = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = var(10)*ifelse(var(11) = 1,1,-1),-1*random%10
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6112, Explod]
type = Explod
trigger1 = Time = [10,90]
trigger1 = Time % 8 = 0
anim = 10260
postype = p2
pos = -10+random%20,random%20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6112, PlaySnd]
type = PlaySnd
trigger1 = Time = [10,90]
trigger1 = Time % 8 = 0
value = s1,2
channel = 2

[State 6112, EnvShake]
type = EnvShake
trigger1 = Time = [10,90]
trigger1 = Time % 8 = 0
time = 10
ampl = -7

[State 6112, ChangeState]
type = ChangeState
trigger1 = Time >= 114
value = 6113

;----------------------------------------------------------------------
; 6321463214 + B <Finish>

[Statedef 6113]
type = S
movetype = A
physics = S
anim = 6103
ctrl = 0

[State 6113, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6113, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46104

[State 6113, TargetState]
type = TargetState
trigger1 = Time = 4
trigger2 = Time = 5
value = 46105

[State 6113, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 3
fvar(3) = 0.09
ignorehitpause = 1

[State 6113, Projectile]
type = Projectile
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6113, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-245*fvar(0))
absolute = 0
kill = 1

[State 6113, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 4
value = ceil(-50*fvar(0))
absolute = 0
kill = 1

[State 6113, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 5
value = ceil(-50*fvar(0))
absolute = 0
kill = 1

[State 6113, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = s1,2
channel = 2

[State 6113, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = s1,5
channel = 5

[State 6113, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = 1

[State 6112, Explod]
type = Explod
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
anim = 10260
postype = p2
pos = -10+random%20,random%20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = 90,-10
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = 70,-5
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = 50,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = -50,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = -70,-5
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = -90,-10
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6113"
postype = p1
pos = -90,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6113, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 6321463214 + C

[Statedef 6120]
type = S
movetype = A
physics = S
anim = 6100
ctrl = 0

[State 6120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6120, SuperPause]
type = Pause
trigger1 = Time = 0
time = 1
movetime = 1

[State 6120, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(1) = 0
time = 44
movetime = 44
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 6120, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(6) < 2
flag = NoBG
ignorehitpause = 1

[State 6120, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(2) > 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6120, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10320
postype = p1
pos = -20,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = s4,4

[State 6120, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 6120, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -3000
ignorehitpause = 1

[State 6120, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = 50,0
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6120, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = 70,-10
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6120, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = -70,0
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6120, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = -90,-10
pausemovetime = 0
supermovetime = 0
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6120, Hitdef]
type = Hitdef
triggerall = EnemyNear,HitOver || P2StateNo != [150,155]
trigger1 = AnimElem = 6
attr = S,HT
hitflag = M
guardflag = 
priority = 1, Miss
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = 0,0
getpower = 0,0
givepower = 0,0
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
ground.velocity = (2.0-fvar(0))*-3,-4
guard.velocity = 0
air.velocity = -3,-4
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
p1facing = 1
p2facing = 1
p1stateno = 6121
p2stateno = 46101
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 6120, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 6321463214 + C <Success>

[Statedef 6121]
type = S
movetype = A
physics = S
anim = 6101
ctrl = 0

[State 6121, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6121, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 25,0

[State 6121, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 15,-110

[State 6121, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 46102

[State 6121, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6121, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6122

;----------------------------------------------------------------------
; 6321463214 + C <Success>

[Statedef 6122]
type = S
movetype = A
physics = S
anim = 6102
ctrl = 0

[State 6122, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 6122, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6122, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6122, TargetState]
type = TargetState
trigger1 = Time = 10
value = 46103

[State 6122, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = 0,100

[State 6122, VarRandom]
type = VarRandom
trigger1 = 1
v = 11
range = 0,1

[State 6122, Helper]
type = Helper
trigger1 = Time = [10,135]
trigger1 = Time % 5 = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6100"
postype = p1
pos = var(10)*ifelse(var(11) = 1,1,-1),-1*random%10
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6122, Explod]
type = Explod
trigger1 = Time = [10,135]
trigger1 = Time % 5 = 0
anim = 10260
postype = p2
pos = -10+random%20,random%20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6122, PlaySnd]
type = PlaySnd
trigger1 = Time = [10,135]
trigger1 = Time % 5 = 0
value = s1,2
channel = 2

[State 6122, EnvShake]
type = EnvShake
trigger1 = Time = [10,135]
trigger1 = Time % 5 = 0
time = 10
ampl = -7

[State 6122, ChangeState]
type = ChangeState
trigger1 = Time >= 170
value = 6123

;----------------------------------------------------------------------
; 6321463214 + C <Finish>

[Statedef 6123]
type = S
movetype = A
physics = S
anim = 6103
ctrl = 0

[State 6123, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6123, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6123, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 3
fvar(3) = 0.09
ignorehitpause = 1

[State 6123, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46104

[State 6123, TargetState]
type = TargetState
trigger1 = Time = 4
trigger2 = Time = 5
value = 46105

[State 6123, Projectile]
type = Projectile
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6123, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-345*fvar(0))
absolute = 0
kill = 1

[State 6123, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 4
value = ceil(-50*fvar(0))
absolute = 0
kill = 1

[State 6123, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 5
value = ceil(-50*fvar(0))
absolute = 0
kill = 1

[State 6123, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = s1,2
channel = 2

[State 6123, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = s1,5
channel = 5

[State 6123, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
value = 1

[State 6122, Explod]
type = Explod
trigger1 = Time = 0
trigger2 = Time = 4
trigger3 = Time = 5
anim = 10260
postype = p2
pos = -10+random%20,random%20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = 90,-9
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = 75,-6
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = 60,-3
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = 45,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = -45,0
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = -60,-3
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = -75,-6
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Magical_Thunder_6123"
postype = p1
pos = -90,-9
pausemovetime = 0
supermovetime = 0
stateno = 16102
ignorehitpause = 1

[State 6123, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236236 + A

[Statedef 6200]
type = S
movetype = A
physics = S
anim = 6200
ctrl = 0

[State 6200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6200, VarSet];Counter initialize
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 6200, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 6200, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(17) < 2
flag = NoBG
ignorehitpause = 1

[State 6200, Explod]
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

[State 6200, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -1000
ignorehitpause = 1

[State 6200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6201

;----------------------------------------------------------------------
; 236236 + A

[Statedef 6201]
type = S
movetype = A
physics = S
anim = 6201
ctrl = 0

[State 6201, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(5) = 0
var(10) = 1
ignorehitpause = 1

[State 6201, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 16205
postype = p1
pos = 117,-43
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6201, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s3,11
channel = 1

[State 6201, Helper]
type = Helper
trigger1 = var(10) = 0
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_6201_ROOT"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16251
ignorehitpause = 1

[State 6201, Helper]
type = Helper
trigger1 = var(10) != 0
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_6201_ROOT"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16250
ignorehitpause = 1

[State 6201, Helper]
type = Helper
trigger1 = var(10) = 1
trigger1 = AnimElemTime(5) = 8
helpertype = normal
ownpal = 1
name = "Magical_Agents_6201_001"
postype = p1
pos = 60,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 1
ignorehitpause = 1

[State 6201, Helper]
type = Helper
trigger1 = var(10) = 1
trigger1 = AnimElemTime(2) = 0
helpertype = normal
ownpal = 1
name = "Magical_Agents_6201_002"
postype = p1
pos = 80,10
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 2
ignorehitpause = 1

[State 6201, ChangeState]
type = ChangeState
trigger1 = var(10) = 8
value = 6202

;----------------------------------------------------------------------
; 236236 + A

[Statedef 6202]
type = S
movetype = A
physics = S
anim = 6202
ctrl = 0

[State 6202, ChangeState]
type = ChangeState
trigger1 = Time >= 40
value = 6203

;----------------------------------------------------------------------
; 236236 + A

[Statedef 6203]
type = S
movetype = A
physics = S
anim = 6203
ctrl = 0

[State 6203, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236236 + B

[Statedef 6210]
type = S
movetype = A
physics = S
anim = 6200
ctrl = 0

[State 6210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6210, VarSet];Counter initialize
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 6210, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 43
movetime = 43
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 6210, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(17) < 2
flag = NoBG
ignorehitpause = 1

[State 6210, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10310
postype = p1
pos = 10,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6210, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -2000
ignorehitpause = 1

[State 6210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6211

;----------------------------------------------------------------------
; 236236 + B

[Statedef 6211]
type = S
movetype = A
physics = S
anim = 6211
ctrl = 0

[State 6211, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(5) = 0
var(10) = 1
ignorehitpause = 1

[State 6211, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 16205
postype = p1
pos = 117,-43
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6211, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s3,11
channel = 1

[State 6211, Helper]
type = Helper
trigger1 = var(10) = 0
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_ROOT"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16251
ignorehitpause = 1

[State 6211, Helper]
type = Helper
trigger1 = var(10) != 0
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_ROOT"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16250
ignorehitpause = 1

[State 6211, Helper]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_001"
postype = p1
pos = 60,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 1
ignorehitpause = 1

[State 6211, Helper]
type = Helper
trigger1 = var(10) = 1
trigger1 = AnimElemTime(2) = 0
helpertype = normal
ownpal = 1
name = "Magical_Agents_002"
postype = p1
pos = 80,10
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 2
ignorehitpause = 1

[State 6211, Helper]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElemTime(5) = 2
helpertype = normal
ownpal = 1
name = "Magical_Agents_003"
postype = p1
pos = -25,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 3
ignorehitpause = 1

[State 6211, Helper]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElemTime(5) = 3
helpertype = normal
ownpal = 1
name = "Magical_Agents_004"
postype = p1
pos = -50,10
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 4
ignorehitpause = 1

[State 6211, ChangeState]
type = ChangeState
trigger1 = var(10) = 11
value = 6212

;----------------------------------------------------------------------
; 236236 + B

[Statedef 6212]
type = S
movetype = A
physics = S
anim = 6202
ctrl = 0

[State 6212, ChangeState]
type = ChangeState
trigger1 = Time >= 60
value = 6213

;----------------------------------------------------------------------
; 236236 + B

[Statedef 6213]
type = S
movetype = A
physics = S
anim = 6203
ctrl = 0

[State 6213, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

----------------------------------------------------------------------
; 236236 + C

[Statedef 6220]
type = S
movetype = A
physics = S
anim = 6200
ctrl = 0

[State 6220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6220, VarSet];Counter initialize
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 6220, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 46
movetime = 46
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 6220, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(17) < 2
flag = NoBG
ignorehitpause = 1

[State 6220, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10320
postype = p1
pos = 15,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6220, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(3) = 1
value = -3000
ignorehitpause = 1

[State 6220, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(3) > 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s4,4

[State 6220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6221

;----------------------------------------------------------------------
; 236236 + C

[Statedef 6221]
type = S
movetype = A
physics = S
anim = 6221
ctrl = 0

[State 6221, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(5) = 0
var(10) = 1
ignorehitpause = 1

[State 6221, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6221, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 16205
postype = p1
pos = 117,-43
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6221, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s3,11
channel = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 0
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_ROOT"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16251
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) != 0
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_ROOT"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16250
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 1
trigger1 = AnimElemTime(5) = 1
helpertype = normal
ownpal = 1
name = "Magical_Agents_001"
postype = p1
pos = 60,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 1
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElemTime(2) = 0
helpertype = normal
ownpal = 1
name = "Magical_Agents_002"
postype = p1
pos = 80,10
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 2
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElemTime(5) = 2
helpertype = normal
ownpal = 1
name = "Magical_Agents_003"
postype = p1
pos = -25,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 3
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElemTime(5) = 4
helpertype = normal
ownpal = 1
name = "Magical_Agents_004"
postype = p1
pos = -50,10
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 4
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 3
trigger1 = AnimElemTime(5) = 2
helpertype = normal
ownpal = 1
name = "Magical_Agents_005"
postype = p1
pos = 40,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 5
ignorehitpause = 1

[State 6221, Helper]
type = Helper
trigger1 = var(10) = 3
trigger1 = AnimElemTime(5) = 4
helpertype = normal
ownpal = 1
name = "Magical_Agents_006"
postype = p1
pos = -70,10
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 6
ignorehitpause = 1

[State 6221, ChangeState]
type = ChangeState
trigger1 = var(10) = 21
value = 6222

;----------------------------------------------------------------------
; 236236 + C

[Statedef 6222]
type = S
movetype = A
physics = S
anim = 6202
ctrl = 0

[State 6222, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6222, ChangeState]
type = ChangeState
trigger1 = Time >= 80
value = 6223

;----------------------------------------------------------------------
; 236236 + C

[Statedef 6223]
type = S
movetype = A
physics = S
anim = 6203
ctrl = 0

[State 6223, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6223, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2A2Z

[Statedef 7000]
type = S
movetype = A
physics = S
anim = 7000
ctrl = 0

[State 7000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 7000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7000, VarSet];Counter initialize
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 7000, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 7000, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(10) < 2
flag = NoBG
ignorehitpause = 1

[State 7000, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10320
postype = p1
pos = -10,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7000, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10330
postype = p1
pos = -10,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7000, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -3000
ignorehitpause = 1

[State 7000, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(2) > 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 7000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = s4,4

[State 7000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 7001

;----------------------------------------------------------------------
; 2A2Z

[Statedef 7001]
type = S
movetype = A
physics = N
anim = 7001
ctrl = 0

[State 7001, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 7001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.002
ignorehitpause = 1

[State 7001, VarSet]
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 7001, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 7001, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = ceil(P2Dist X)
y = ceil(P2Dist Y)-110

[State 7001, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0
y = Const(Movement.yaccel)

[State 7001, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HT
hitflag = MAF
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 7, Hit
damage = 0,0
getpower = 0,0
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
kill = 0
guard.kill = 0
yaccel = 0.4
p1facing = 1
p2facing = 1
p1stateno = 7003
p2stateno = 47003
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 7000, ChangeState]
type = ChangeState
trigger1 = Time > 5
trigger1 = Pos Y >= 0
value = 7002

;----------------------------------------------------------------------
; 2A2Z

[Statedef 7002]
type = S
movetype = A
physics = N
anim = 7002
ctrl = 0
velset = 0,0

[State 7002, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7002, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 7002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2A2Z

[Statedef 7003]
type = S
movetype = A
physics = N
anim = 7003
ctrl = 0
velset = 0,0

[State 7003, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7003, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 7004

;----------------------------------------------------------------------
; 2A2Z

[Statedef 7004]
type = S
movetype = A
physics = S
anim = 7004
ctrl = 0
velset = 0,0

[State 7004, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 7004, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7004, TargetState]
type = TargetState
trigger1 = Time = 0
value = 47004

[State 7004, Explod]
type = Explod
trigger1 = Time = 0
anim = 15110
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 7004, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,2

[State 7004, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,4

[State 7004, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 20
ampl = -8

[State 7004, HitAdd];Correction
type = HitAdd
trigger1 = Time = 0
value = 1

[State 7004, TargetBind]
type = TargetBind
trigger1 = Time = 0
pos = 0,0

[State 7004, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
value = s1,2
channel = 2

[State 7004, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
time = 5
ampl = -5

[State 7004, Explod]
type = Explod
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
anim = 10260
postype = p2
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 7004, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
var(10) = 1

[State 7004, HitAdd];Correction
type = HitAdd
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
value = 1

[State 7004, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
value = ceil(-12*fvar(0))
absolute = 0
kill = 0

[State 7004, Projectile]
type = Projectile
trigger1 = AnimElemTime(8) >= 0
trigger1 = Time % 3 = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 7004, ChangeState]
type = ChangeState
trigger1 = var(10) = 45
value = 7005

;----------------------------------------------------------------------
; 2A2Z

[Statedef 7005]
type = S
movetype = A
physics = S
anim = 7005
ctrl = 0
velset = 0,0

[State 7005, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7005, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
value = s1,2
channel = 2

[State 7005, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
time = 5
ampl = -5

[State 7005, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(14) = 0
anim = 10260
postype = p2
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2

[State 7005, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(14) = 0
value = s1,3
channel = 2

[State 7005, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
value = ceil(-12*fvar(0))
absolute = 0
kill = 0

[State 7005, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(14) = 0
value = ceil(-12*fvar(0))
absolute = 0
kill = 1

[State 7005, Projectile]
type = Projectile
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(14) = 0
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 7005, HitAdd];Correction
type = HitAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(14) = 0
value = 1

[State 7005, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(14) = 0
time = 60
ampl = -15

[State 7005, TargetState]
type = TargetState
trigger1 = AnimElemTime(18) = 0
value = 47005

[State 7005, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
