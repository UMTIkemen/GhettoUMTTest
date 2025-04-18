;======================================================================
;======================================================================
; Helper states file for "Sayuri Kurata"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Special Moves
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Super Moves
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; 236 + A or B or C <Star>

[Statedef 11000]
type = A
movetype = A
physics = N
anim = 11000
ctrl = 0
sprpriority = 3

[State 11000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 11000, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 11001
time = -1
ignorehitpause = 1

[State 11000, NotHitBy]
type = NotHitBy
trigger1 = var(2) = 0
value = ,AA,AT
time = -1
ignorehitpause = 1

[State 11000, NotHitBy]
type = NotHitBy
trigger1 = var(2) != 0
value = SCA
time = -1
ignorehitpause = 1

[State 11000, VarSet]
type = VarSet
trigger1 = IsHelper(11050)
var(2) = 1
ignorehitpause = 1

[State 11000, VarSet]
type = VarSet
trigger1 = IsHelper(11060)
var(2) = 2
ignorehitpause = 1

[State 11000, VarSet]
type = VarSet
trigger1 = IsHelper(11070)
var(2) = 3
ignorehitpause = 1

[State 11000, VelSet]
type = VelSet
triggerall = Time = 0
trigger1 = var(2) = [0,1]
x = 0.9
y = 0

[State 11000, VelAdd]
type = VelAdd
trigger1 = var(2) = [0,1]
x = 0.1
ignorehitpause = 0

[State 11000, VelSet]
type = VelSet
triggerall = Time = 0
trigger1 = var(2) = 2
x = 0.6
y = 0.3

[State 11000, VelAdd]
type = VelAdd
trigger1 = var(2) = 2
x = 0.06
y = 0.03
ignorehitpause = 0

[State 11000, VelSet]
type = VelSet
triggerall = Time = 0
trigger1 = var(2) = 3
x = 0.3
y = 0.6

[State 11000, VelAdd]
type = VelAdd
trigger1 = var(2) = 3
x = 0.03
y = 0.06
ignorehitpause = 0

[State 11000, VelSet]
type = VelSet
trigger1 = var(0) != 0
x = 0
y = 0
ignorehitpause = 1

[State 11000, StateTypeSet]
type = StateTypeSet
trigger1 = MoveReversed
movetype = I
ignorehitpause = 1

[State 11000, StateTypeSet]
type = StateTypeSet
trigger1 = var(0) != 0
movetype = I
ignorehitpause = 1

[State 11000, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = var(0) = 0
trigger1 = HitCount < 1
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(40*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 10,5
guard.pausetime = 10,5
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-10
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -2,-6
guard.velocity = -3
air.velocity = -2,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(10*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1

[State 11000, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 45030
ignorehitpause = 1

[State 11000, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 11000, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 11000, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 8
ignorehitpause = 1

[State 11000, VarSet]
type = VarSet
trigger1 = MoveContact
var(0) = 1
ignorehitpause = 1

[State 11000, VarSet]
type = VarSet
trigger1 = MoveReversed
var(0) = 2
ignorehitpause = 1

[State 11000, VarAdd]
type = VarAdd
trigger1 = var(0) = 1
var(1) = 1
ignorehitpause = 1

[State 11000, VarAdd]
type = VarAdd
trigger1 = var(0) = 2
var(1) = 3
ignorehitpause = 1

[State 11000, ChangeState]
type = ChangeState
trigger1 = var(1) >= 10
value = 11001
ignorehitpause = 1

[State 11000, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State -3, DisplayToClipBoard]
type = DisplayToClipBoard
trigger1 = 1
text = "var(0) = %d var(1) = %d"
params = var(0),var(1)
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11000, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -200

;----------------------------------------------------------------------
; 236 + A or B or C <Star - Fall>

[Statedef 11001]
type = A
movetype = I
physics = N
anim = 11000
ctrl = 0
velset = -3,-3
sprpriority = 3

[State 11001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 11001, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 11001
time = -1
ignorehitpause = 1

[State 11001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 11001, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25
ignorehitpause = 0

[State 11001, DestroySelf]
type = DestroySelf
trigger1 = Pos Y > 50

;----------------------------------------------------------------------
; 214 + A or B or C <Effect>

[Statedef 11310]
type = S
movetype = I
physics = N
anim = 99990
ctrl = 0
velset = 0,0

[State 11310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 11310, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 11310
time = -1
ignorehitpause = 1

[State 11310, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 11310, Explod]
type = Explod
trigger1 = Time = 0
anim = 11310
postype = p1
pos = 0,-50
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 11310, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,2
persistent = 0
ignorehitpause = 1

[State 11310, DestroySelf]
type = DestroySelf
trigger1 = Root,Var(10) = 1

;----------------------------------------------------------------------
; 6321463214 + A or B or C <Thunder>

[Statedef 16100]
type = A
movetype = A
physics = N
anim = 16100
ctrl = 0
sprpriority = 3

[State 16100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16100, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16100
time = -1
ignorehitpause = 1

[State 16100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16100, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = Time = 0
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = low
air.type = low
damage = ceil(50*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 0,10
guard.pausetime = 0,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-70
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 0
fall.recovertime = ceil(10000*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1

[State 16100, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 16100, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16100, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 9
ignorehitpause = 1

[State 16100, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 16101
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 16100, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 45030
ignorehitpause = 1
persistent = 0

[State 16100, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16100, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 6321463214 + A or B or C <Thunder(Effect)>

[Statedef 16102]
type = A
movetype = A
physics = N
anim = 16100
ctrl = 0
sprpriority = 3

[State 16102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16102, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16102
time = -1
ignorehitpause = 1

[State 16102, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16102, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 16101
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 16102, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 236236 + A or B or C <Agent(Appear)>

[Statedef 16200]
type = S
movetype = A
physics = N
anim = 99990
ctrl = 0
sprpriority = 3

[State 16200, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16200
time = -1
ignorehitpause = 1

[State 16200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16200, VarSet]
type = VarSet
trigger1 = IsHelper(1)
var(0) = 1
ignorehitpause = 1

[State 16200, VarSet]
type = VarSet
trigger1 = IsHelper(2)
var(0) = 2
ignorehitpause = 1

[State 16200, VarSet]
type = VarSet
trigger1 = IsHelper(3)
var(0) = 3
ignorehitpause = 1

[State 16200, VarSet]
type = VarSet
trigger1 = IsHelper(4)
var(0) = 4
ignorehitpause = 1

[State 16200, VarSet]
type = VarSet
trigger1 = IsHelper(5)
var(0) = 5
ignorehitpause = 1

[State 16200, VarSet]
type = VarSet
trigger1 = IsHelper(6)
var(0) = 6
ignorehitpause = 1

[State 16200, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 5
value = 16200

[State 16200, SprPriority]
type = SprPriority
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 6
value = -4

[State 16200, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 6
value = 16201

[State 16200, SprPriority]
type = SprPriority
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 5
value = 4

[State 16200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 16201

;----------------------------------------------------------------------
; 236236 + A or B or C <Agent(Standing)>

[Statedef 16201]
type = S
movetype = A
physics = N
anim = 16200+var(0)*10
ctrl = 0

[State 16201, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16201
time = -1
ignorehitpause = 1

[State 16201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16201, ChangeState]
type = ChangeState
trigger1 = Time = 35
value = 16202

;----------------------------------------------------------------------
; 236236 + A or B or C <Agent(Attack)>

[Statedef 16202]
type = S
movetype = A
physics = N
anim = 16201+var(0)*10
ctrl = 0

[State 16202, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16202
time = -1
ignorehitpause = 1

[State 16202, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16202, Explod]
type = Explod
triggerall = AnimElemTime(1) = 0
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 5
anim = 16206
postype = p1
pos = 67,-94
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16202, Explod]
type = Explod
triggerall = AnimElemTime(1) = 0
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 6
anim = 16206
postype = p1
pos = 55,-52
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16202, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 1
helpertype = normal
name = "Magical_Agents_6201"
postype = p1
pos = 0,-40
pausemovetime = 0
supermovetime = 0
stateno = 16250
ID = 16251
ignorehitpause = 1

[State 16202, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 1
helpertype = normal
ownpal = 1
name = "Sound"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30200
ID = 2
ignorehitpause = 1

[State 16202, VarAdd]
type = VarAdd
trigger1 = Time = 0
var(1) = 1
ignorehitpause = 1

[State 16202, ChangeState]
type = ChangeState
triggerall = Time > 20
trigger1 = Root,StateNo != [6220,6229]
trigger1 = var(1) < 3
trigger2 = Root,StateNo = [6220,6229]
trigger2 = var(1) < 5
value = 16203

[State 16202, ChangeState]
type = ChangeState
trigger1 = Time > 40
trigger1 = Root,StateNo != [6220,6229]
trigger1 = var(1) = 3
trigger2 = Time > 40
trigger2 = var(1) = 5
value = 16204

[State 16203, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [6200,6229]
value = 16204

;----------------------------------------------------------------------
; 236236 + A or B or C <Agent(Standing(2))>

[Statedef 16203]
type = S
movetype = A
physics = N
anim = 16202+var(0)*10
ctrl = 0

[State 16203, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16203
time = -1
ignorehitpause = 1

[State 16203, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16203, ChangeState]
type = ChangeState
trigger1 = Time = 43
value = 16202

[State 16203, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [6200,6229]
value = 16204

;----------------------------------------------------------------------
; 236236 + A or B or C <Disappear>

[Statedef 16204]
type = S
movetype = A
physics = N
ctrl = 0

[State 16204, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16204
time = -1
ignorehitpause = 1

[State 16204, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16204, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 5
value = 16202

[State 16204, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 6
value = 16203

[State 16204, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 236236 + A or B or C <Colision>

[Statedef 16250]
type = A
movetype = A
physics = N
anim = 16207
ctrl = 0
sprpriority = 3

[State 16250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16250, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16250
time = -1
ignorehitpause = 1

[State 16250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16250, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = HitCount < 1
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(ifelse(isHelper(16250),14,23)*root,fvar(0)),4
getpower = 0,0
givepower = 25,12
pausetime = 10,5
guard.pausetime = 10,5
sparkno = S10260
guard.sparkno = S10270
sparkxy = -10+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
persistent = 0

[State 16250, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31002
ignorehitpause = 1

[State 16250, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16250, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = ifelse(isHelper(16250),5,1)
ignorehitpause = 1

[State 16250, Correction]
type = Helper
trigger1 = IsHelper(16251)
trigger1 = NumHelper(16252) = 0
trigger1 = MoveHit
helpertype = normal
name = "HitCount"
postype = p2
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16251
ID = 16252
ignorehitpause = 1

[State 16250, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 46207
ignorehitpause = 1
persistent = 0

[State 16250, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16250, DestroySelf]
type = DestroySelf
trigger1 = Time > 2

;----------------------------------------------------------------------
; 236236 + A or B or C <Dummy>

[Statedef 16251]
type = A
movetype = A
physics = N
anim = 16208
ctrl = 0
sprpriority = 3

[State 16251, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16251, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 16251
time = -1
ignorehitpause = 1

[State 16251, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16251, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = var(0) = 0
trigger1 = HitCount < 1
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(0*root,fvar(0)),0
getpower = 0,0
givepower = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 0
fall.recovertime = ceil(10000*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
numhits = 0
persistent = 0

[State 16251, TargetState]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,StateNo != [120,155]
value = 46207
ignorehitpause = 1
persistent = 0

[State 16251, ChangeAnim]
type = ChangeAnim
trigger1 = MoveHit
value = 99990
ignorehitpause = 1
persistent = 0

[State 16251, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16251, DestroySelf]
type = DestroySelf
trigger1 = P2MoveType != H

;----------------------------------------------------------------------
; Special Intro 1 <Agent(Appear)>

[Statedef 14100]
type = S
movetype = A
physics = N
anim = 99990
ctrl = 0
sprpriority = 3

[State 14100, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 14100
time = -1
ignorehitpause = 1

[State 14100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 14100, VarSet]
type = VarSet
trigger1 = IsHelper(1)
var(0) = 1
ignorehitpause = 1

[State 14100, VarSet]
type = VarSet
trigger1 = IsHelper(2)
var(0) = 2
ignorehitpause = 1

[State 14100, VarSet]
type = VarSet
trigger1 = IsHelper(3)
var(0) = 3
ignorehitpause = 1

[State 14100, VarSet]
type = VarSet
trigger1 = IsHelper(4)
var(0) = 4
ignorehitpause = 1

[State 14100, VarSet]
type = VarSet
trigger1 = IsHelper(5)
var(0) = 5
ignorehitpause = 1

[State 14100, VarSet]
type = VarSet
trigger1 = IsHelper(6)
var(0) = 6
ignorehitpause = 1

[State 14100, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 5
value = 16200

[State 14100, SprPriority]
type = SprPriority
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 6
value = -4

[State 14100, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 6
value = 16201

[State 14100, SprPriority]
type = SprPriority
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 5
value = 4

[State 14100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 14101

;----------------------------------------------------------------------
; Special Intro 1 <Agent(Standing)>

[Statedef 14101]
type = S
movetype = A
physics = N
anim = 16200+var(0)*10
ctrl = 0

[State 14101, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 14101
time = -1
ignorehitpause = 1

[State 14101, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 14101, ChangeState]
type = ChangeState
trigger1 = Root,StateNo = 4104
trigger2 = RoundState = 2
value = 14102

;----------------------------------------------------------------------
; Special Intro 1 <Disappear>

[Statedef 14102]
type = S
movetype = A
physics = N
ctrl = 0

[State 14102, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 14102
time = -1
ignorehitpause = 1

[State 14102, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 14102, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 1
trigger2 = var(0) = 3
trigger3 = var(0) = 5
value = 16202

[State 14102, ChangeAnim]
type = ChangeAnim
triggerall = Time = 1
trigger1 = var(0) = 2
trigger2 = var(0) = 4
trigger3 = var(0) = 6
value = 16203

[State 14102, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


;======================================================================
;======================================================================
; Helpers for EX Mode
;======================================================================
;======================================================================


;----------------------------------------------------------------------
; 236 + A or B or C <Star>

[Statedef 111000]
type = A
movetype = A
physics = N
anim = 11000
ctrl = 0
sprpriority = 3

[State 111000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111000, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 11001
time = -1
ignorehitpause = 1

[State 111000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AA,AT
time = -1
ignorehitpause = 1

[State 111000, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0.9
y = 0

[State 111000, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
ignorehitpause = 0

[State 111000, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
triggerall = var(0) = 0
triggerall = var(3) > 0
trigger1 = Time % 3 = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(20*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 5,5
guard.pausetime = 5,5
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-10
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -2,-6
guard.velocity = -3
air.velocity = -2,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(10*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 111000, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 111000, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 111000, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 4
ignorehitpause = 1

[State 111000, VarSet]
type = VarSet
trigger1 = Time = 0
var(4) = 0
ignorehitpause = 1

[State 111000, VarSet]
type = VarSet
trigger1 = Time = 0
var(3) = 1
ignorehitpause = 1

[State 111000, VarAdd]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(4) = 0
trigger1 = Time % 25 = 0
var(3) = 1
ignorehitpause = 0

[State 111000, VarSet]
type = VarAdd
trigger1 = MoveContact
trigger2 = MoveReversed
var(3) = -1
ignorehitpause = 1

[State 111000, VarSet]
type = VarSet
triggerall = var(3) = 0
trigger1 = MoveContact
trigger2 = MoveReversed
var(0) = 1
ignorehitpause = 1

[State 111000, VarSet]
type = VarSet
trigger1 = MoveContact
trigger2 = MoveReversed
var(4) = 1
ignorehitpause = 1

[State 111000, VarAdd]
type = VarAdd
trigger1 = var(0) = 1
var(1) = 1
ignorehitpause = 1

[State 111000, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 111000, ChangeState]
type = ChangeState
trigger1 = var(1) >= 5
value = 11001

[State 111000, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -200

;----------------------------------------------------------------------
; 412 + A <Shot>

[Statedef 111200]
type = A
movetype = A
physics = N
anim = 111200
ctrl = 0
velset = 3,4
sprpriority = 3

[State 111200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111200, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP, AA, AT
slot = 0
stateno = 111201
time = -1
ignorehitpause = 1

[State 111000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 111200, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)
ignorehitpause = 1

[State 111200, AngleSet]
type = AngleSet
trigger1 = 1
value = var(1)
ignorehitpause = 1

[State 111200, VarRandom]
type = VarRandom
trigger1 = Time % 2 = 0
v = 1
range = 0,360
ignorehitpause = 1

[State 111200, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 111200, VarSet]
type = VarSet
trigger1 = Time = 0
fvar(1) = 0.8
ignorehitpause = 1

[State 111200, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(70*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 0,5
guard.pausetime = 0,5
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-10
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(10*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 111200, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 111200, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 111200, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 8
ignorehitpause = 1

[State 111200, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 5
trigger2 = MoveContact
trigger3 = MoveReversed
value = 111201
ignorehitpause = 1

[State 111200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

;----------------------------------------------------------------------
; 412 + A or B or C <Disappear>

[Statedef 111201]
type = A
movetype = A
physics = N
anim = 111200
ctrl = 0
velset = 0,0
sprpriority = 3

[State 111201, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111201, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP
slot = 0
stateno = 111201
time = -1
ignorehitpause = 1

[State 111201, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)
ignorehitpause = 1

[State 111201, VarAdd]
type = VarAdd
trigger1 = Time > 0
trigger1 = Time % 2 = 0
fvar(1) = -0.1
ignorehitpause = 1

[State 111201, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 111201, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;----------------------------------------------------------------------
; 412 + B <Shot>

[Statedef 111210]
type = A
movetype = A
physics = N
anim = 111200
ctrl = 0
velset = 5,4
sprpriority = 3

[State 111210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111210, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP, AA, AT
slot = 0
stateno = 111211
time = -1
ignorehitpause = 1

[State 111000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 111210, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)
ignorehitpause = 1

[State 111210, AngleSet]
type = AngleSet
trigger1 = 1
value = var(1)
ignorehitpause = 1

[State 111210, VarRandom]
type = VarRandom
trigger1 = Time % 2 = 0
v = 1
range = 0,360
ignorehitpause = 1

[State 111210, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 111210, VarSet]
type = VarSet
trigger1 = Time = 0
fvar(1) = 0.8
ignorehitpause = 1

[State 111210, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(70*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 0,5
guard.pausetime = 0,5
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-10
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(10*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 111210, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 111210, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 111210, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 8
ignorehitpause = 1

[State 111210, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 5
trigger2 = MoveContact
trigger3 = MoveReversed
value = 111201
ignorehitpause = 1

[State 111210, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

;----------------------------------------------------------------------
; 412 + C <Shot>

[Statedef 111220]
type = A
movetype = A
physics = N
anim = 111200
ctrl = 0
velset = 7,4
sprpriority = 3

[State 111220, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111220, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP, AA, AT
slot = 0
stateno = 111221
time = -1
ignorehitpause = 1

[State 111000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 111220, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)
ignorehitpause = 1

[State 111220, AngleSet]
type = AngleSet
trigger1 = 1
value = var(1)
ignorehitpause = 1

[State 111220, VarRandom]
type = VarRandom
trigger1 = Time % 2 = 0
v = 1
range = 0,360
ignorehitpause = 1

[State 111220, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 111220, VarSet]
type = VarSet
trigger1 = Time = 0
fvar(1) = 0.8
ignorehitpause = 1

[State 111220, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(70*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 0,5
guard.pausetime = 0,5
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-10
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(10*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 111220, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 111220, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 111220, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 8
ignorehitpause = 1

[State 111220, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 5
trigger2 = MoveContact
trigger3 = MoveReversed
value = 111201
ignorehitpause = 1

[State 111220, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

;----------------------------------------------------------------------
; 41236 + A or B or C <Card>

[Statedef 111400]
type = A
movetype = A
physics = N
anim = 111400
ctrl = 0
velset = 0,0
sprpriority = -7

[State 111400, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111400, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT
slot = 0
stateno = 111400
time = -1
ignorehitpause = 1

[State 111400, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP, AA, AT
slot = 0
stateno = 111400
time = -1
ignorehitpause = 1

[State 111400, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 111400, PosAdd]
type = PosAdd
trigger1 = Time = 1
x = 15
y = 5

[State 111400, Helper]
type = Helper
trigger1 = isHelper(111401)
trigger1 = AnimElemTime(4) = 7
helpertype = normal
name = "Spark"
postype = p1
pos = -10,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 111401
ID = 0
ignorehitpause = 1

[State 111400, Helper]
type = Helper
trigger1 = isHelper(111402)
trigger1 = AnimElemTime(4) = 5
helpertype = normal
name = "Spark"
postype = p1
pos = 10,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 111401
ID = 0
ignorehitpause = 1

[State 111400, Helper]
type = Helper
trigger1 = isHelper(111403)
trigger1 = AnimElemTime(4) = 2
helpertype = normal
name = "Spark"
postype = p1
pos = 0,-2
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 111401
ID = 1
ignorehitpause = 1

[State 111400, DestroySelf]
type = DestroySelf
trigger1 = Time > 40

;----------------------------------------------------------------------
; 41236 + A or B or C <Card>

[Statedef 111401]
type = A
movetype = A
physics = N
anim = 99990
ctrl = 0
velset = 0,0

[State 111401, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 111401, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT
slot = 0
stateno = 111401
time = -1
ignorehitpause = 1

[State 111401, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP, AA, AT
slot = 0
stateno = 111401
time = -1
ignorehitpause = 1

[State 111401, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 111401, PlaySnd]
type = PlaySnd
trigger1 = isHelper(1)
trigger1 = Time = 9
value = s3,9
persistent = 0
ignorehitpause = 1

[State 111401, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 8
value = 111402

[State 111401, Explod]
type = Explod
trigger1 = Time = 0
anim = 111404
ID = 111404
postype = p1
pos = 0,-1600
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 1
anim = 111404
ID = 111404
postype = p1
pos = 0,-1440
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 2
anim = 111404
ID = 111404
postype = p1
pos = 0,-1280
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 3
anim = 111404
ID = 111404
postype = p1
pos = 0,-1120
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 4
anim = 111404
ID = 111404
postype = p1
pos = 0,-960
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 5
anim = 111404
ID = 111404
postype = p1
pos = 0,-800
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 6
anim = 111404
ID = 111404
postype = p1
pos = 0,-640
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 7
anim = 111404
ID = 111404
postype = p1
pos = 0,-480
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 8
anim = 111404
ID = 111404
postype = p1
pos = 0,-320
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 9
anim = 111404
ID = 111404
postype = p1
pos = 0,-160
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 10
anim = 111404
ID = 111404
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Explod]
type = Explod
trigger1 = Time = 11
anim = 111403
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
persistent = 0
ignorehitpause = 1

[State 111401, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(30*root,fvar(0)),5
getpower = 50,25
givepower = 25,12
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = 10,-10
hitsound = -1,0
guardsound = -1,0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(10*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 111401, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 111401, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 111401, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 4
ignorehitpause = 1

[State 111401, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 111401, DestroySelf]
type = DestroySelf
trigger1 = Time > 5
trigger1 = NumExplod(111403) = 0
trigger1 = NumExplod(111404) = 0

;----------------------------------------------------------------------
; 2141236 + A or B or C - Ring

[Statedef 116010]
type = A
movetype = I
physics = N
anim = 116010
ctrl = 0
sprpriority = 4

[State 116010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 116010, AngleDraw]
type = AngleDraw
trigger1 = isHelper(1)
value = var(1)
scale = fvar(0),fvar(0)/5

[State 116010, AngleDraw]
type = AngleDraw
trigger1 = isHelper(2)
value = var(1)
scale = fvar(0),fvar(0)/5

[State 116010, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 255-var(0),256

[State 116010, VarAdd];Angle initialize
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(1)
v = 1
range = 10,80

[State 116010, VarAdd];Angle initialize
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(2)
v = 1
range = 100,170

[State 116010, VarAdd];Scale initialize
type = VarSet
trigger1 = Time = 0
fvar(0) = 0.5

[State 116010, VarAdd];Scale
type = VarAdd
trigger1 = Time = [1,10]
fvar(0) = 0.1

[State 116010, VarAdd];Scale
type = VarAdd
trigger1 = Time > 10
fvar(0) = 0.01

[State 116010, VarAdd];Transition
type = VarAdd
trigger1 = Time = [10,35]
var(0) = 10

[State 116010, DestroySelf]
type = DestroySelf
trigger1 = Time > 35

;----------------------------------------------------------------------
; 214214 + A

[Statedef 116100]
type = A
movetype = A
physics = N
anim = 116100
ctrl = 0
velset = 0,0

[State 116100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 116100, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT
slot = 0
stateno = 116100
time = -1
ignorehitpause = 1

[State 116100, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP, AA, AT
slot = 0
stateno = 116100
time = -1
ignorehitpause = 1

[State 116100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 116100, Explod]
type = Explod
trigger1 = Time = 5
anim = 16101
ID = 16101
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2
ignorehitpause = 1

[State 116100, EnvShake]
type = EnvShake
trigger1 = Time = 5
time = 10
ampl = -5
freq = 90

[State 116100, Helper]
type = Helper
trigger1 = Time = 3
helpertype = normal
ownpal = 1
name = "Sound"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30200
ID = 1
ignorehitpause = 1

[State 116100, Hitdef]
type = Hitdef
trigger1 = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
damage = ceil(40*root,fvar(0)),5
getpower = 0,0
givepower = 25,12
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,ceil((EnemyNear,ScreenPos Y-ScreenPos Y)-70+random%20)
hitsound = -1,0
guardsound = -1,0
ground.hittime = 23
ground.slidetime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -1,-6
guard.velocity = -3
air.velocity = -1,-6
airguard.velocity = -3,-3
fall.recover = 1
fall.recovertime = ceil(20*root,fvar(2)*root,fvar(8))+32
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
p2facing = 1
p2stateno = 45030

[State 116100, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31004
ignorehitpause = 1

[State 116100, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 116100, Correction]
type = Helper
;trigger1 = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 5
ignorehitpause = 1

[State 116100, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 116100, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

