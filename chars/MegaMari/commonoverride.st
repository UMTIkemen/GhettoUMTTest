;以前は３つだったステートファイルを一つにまとめました。

;---------------------------------------------------------------------------
;guard.cns	;ガード関連をちびっと
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, Hi to Lo]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = S
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = C
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[State 120, Stop Guarding]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
trigger1 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = command = "holddown"
value = 131

[State 130, Hi to Lo]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType != A
TriggerAll = Time > 0
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
value = 131

[State 130, Stop Guarding]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[State 130, Stop Guarding]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
trigger1 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = command != "holddown"
value = 130

[State 131, Lo to Hi]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType != A
TriggerAll = Time > 0
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
value = 130

[State 131, Stop Guarding]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[State 131, Stop Guarding]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
trigger1 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 132, 6]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
triggerAll = sysvar(0)
Trigger1 = InGuardDist || Abs(P2Dist X) < 60
Trigger1 = EnemyNear,HitDefAttr = SCA,AA,AP
;Projectile形式飛び道具対策(別にProjectileそのものが防げるようになるわけではない。)
Trigger2 = InGuardDist
Trigger2 = Enemy,NumProj > 0
;突進系対策
Trigger3 = !InGuardDist
Trigger3 = EnemyNear,Vel X > 0
Trigger3 = EnemyNear,HitDefAttr = SC,AA
;ヘルパー対策
Trigger4 = InGuardDist
Trigger4 = NumHelper(99998)
Trigger4 = Enemy,NumHelper > Helper(99998),Var(0) || P2StateNo = Helper(99998),Var(55)
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[State 132, Stop Guarding]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
trigger1 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 140, Hi to Lo]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = S
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = C
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = S
physics = S

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
;---------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Time = 0
postype = p1
pos = 25,-55
anim = 4025
sprpriority = 2

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
;triggerall = !var(59)
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
triggerall = !var(59)
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
triggerall = !var(59)
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, Hi to Lo]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = S
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = C
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3
;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, Hi to Lo]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = S
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = C
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Time = 0
postype = p1
pos = 20,-30
anim = 4025
sprpriority = 2

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
;triggerall = !var(59)
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
triggerall = !var(59)
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
triggerall = !var(59)
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, Hi to Lo]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = S
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = C
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = S
physics = S


[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4
;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
TriggerAll = !Var(59)
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, Hi to Lo]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = S
Trigger1 = Enemy,NumProj > 0
Trigger2 = EnemyNear,HitDefAttr = C,AA,AP || EnemyNear,HitDefAttr = SA,AP
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y <= 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y <= 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,MoveType != A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
TriggerAll = StateType = C
Trigger1 = EnemyNear,HitDefAttr = A,AA
Trigger2 = EnemyNear,HitDefAttr = S,AA
Trigger2 = EnemyNear,Time > 20
Trigger2 = EnemyNear,StateType = S
Trigger3 = EnemyNear,HitDefAttr = S,AA
Trigger3 = EnemyNear,Time <= 20
Trigger3 = EnemyNear,Vel Y > 0
Trigger4 = EnemyNear,StateType != S
Trigger4 = EnemyNear,HitDefAttr = S,AA
Trigger4 = EnemyNear,Time > 20
Trigger4 = EnemyNear,Vel Y > 0
Trigger5 = NumHelper(99998)
Trigger5 = EnemyNear,StateType = A
Trigger5 = Enemy,NumHelper > Helper(99998),Var(0)
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Time = 0
postype = p1
pos = 15,-52
anim = 4025
sprpriority = 2

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
TriggerAll = !Var(59)
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 155, 6]
type = ChangeState
TriggerAll = Var(59) && RoundState = 2
TriggerAll = Random < 100 * Var(59)
triggerAll = sysvar(0)
Trigger1 = InGuardDist || Abs(P2Dist X) < 60
Trigger1 = EnemyNear,HitDefAttr = SCA,AA,AP
;Projectile形式飛び道具対策(別にProjectileそのものが防げるようになるわけではない。)
Trigger2 = InGuardDist
Trigger2 = Enemy,NumProj > 0
;突進系対策
Trigger3 = !InGuardDist
Trigger3 = EnemyNear,Vel X > 0
Trigger3 = EnemyNear,HitDefAttr = SC,AA
;ヘルパー対策
Trigger4 = InGuardDist
Trigger4 = NumHelper(99998)
Trigger4 = Enemy,NumHelper > Helper(99998),Var(0) || P2StateNo = Helper(99998),Var(55)
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52


;-------------------------
;アドバンシングガードもどき
[Statedef 160]
type    = S
movetype= I
physics = N
Poweradd = 0
velset = 10,0
ctrl = 0
Anim = 80100;射撃アニメでわかりやすく

[State VelSet1]
Type = Velset
Trigger1 = Time = 0
x = .7

[State VelSet2]
Type = Velset
Trigger1 = Time = 10
x = 0

[State Width]
Type = Width
Trigger1 = 1
Value = 10,0

[State ***]
Type = NotHitBy
Trigger1 =1
Value = SCA
Time = 1

[State GuardSound];バスター音でいいっしょ。
Type = PlaySnd
Trigger1 = Time = 2
Value = S0,8
channel = 1;SE

[State GuardSound];うるせえ！てめぇは黙ってろ
Type = PlaySnd
Trigger1 = Time = 2
Value = S1,36
channel = 0;VC

;へるぱーだったとこ(発動Time = 0)
[State CallHELPER];当たり判定のついた透明アニメで相手を押し出す
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "ADVGUARD Pusser Stelth Wall"
PosType = p1
Pos = -50,0
StateNo = 163
Ownpal = 1
Size.Height = 200
Size.Ground.Back = 30
SIze.Ground.Front = 30

;エフェクト
[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Time = 0
postype = p1
pos = 60,-50
anim = 4025
sprpriority = 2

[State EndState]
Type = ChangeState
Trigger1 = Time = 20
Value = 130;150;
Ctrl = 1

;---
[Statedef 161];しゃがみ
type    = C
movetype= I
physics = N
Poweradd = 0
velset = 10,0
ctrl = 0
Anim = 81100;射撃アニメでわかりやすく

[State VelSet1]
Type = Velset
Trigger1 = Time = 0
x = .7

[State VelSet2]
Type = Velset
Trigger1 = Time = 10
x = 0

[State Width]
Type = Width
Trigger1 = 1
Value = 10,0

[State ***]
Type = NotHitBy
Trigger1 =1
Value = SCA
Time = 1

[State GuardSound];バスター音でいいっしょ。
Type = PlaySnd
Trigger1 = Time = 2
Value = S0,8
channel = 1;SE

[State GuardSound];うるせえ！てめぇは黙ってろ
Type = PlaySnd
Trigger1 = Time = 2
Value = S1,36
channel = 0;VC

;へるぱーだったとこ(発動Time = 0)
[State CallHELPER];当たり判定のついた透明アニメで相手を押し出す
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "ADVGUARD Pusser Stelth Wall"
PosType = p1
Pos = -50,0
StateNo = 163
Ownpal = 1
Size.Height = 200
Size.Ground.Back = 30
SIze.Ground.Front = 30

;エフェクト
[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Time = 0
postype = p1
pos = 60,-28
anim = 4025
sprpriority = 2

[State EndState]
Type = ChangeState
Trigger1 = Time = 20
Value = 131;152
Ctrl = 1

;---
[Statedef 162];空中
type    = A
movetype= I
physics = N
Poweradd = 0
velset = 10,0
ctrl = 0
Anim = 82100;射撃アニメでわかりやすく

[State VelSet1]
Type = Velset
Trigger1 = Time = 0
x = .7

[State VelSet2]
Type = Velset
Trigger1 = Time = 10
x = 0

[State Width]
Type = Width
Trigger1 = 1
Value = 10,0

[State ***]
Type = NotHitBy
Trigger1 =1
Value = SCA
Time = 1

[State GuardSound];バスター音でいいっしょ。
Type = PlaySnd
Trigger1 = Time = 2
Value = S0,8
channel = 1;SE

[State GuardSound];うるせえ！てめぇは黙ってろ
Type = PlaySnd
Trigger1 = Time = 2
Value = S1,36
channel = 0;VC

;へるぱーだったとこ(発動Time = 0)
[State CallHELPER];当たり判定のついた透明アニメで相手を押し出す
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "ADVGUARD Pusser Stelth Wall"
PosType = p1
Pos = -80,0
StateNo = 163
Ownpal = 1
Size.Height = 200
Size.Ground.Back = 30
SIze.Ground.Front = 30

;エフェクト
[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Time = 0
postype = p1
pos = 60,-52
anim = 4025
sprpriority = 2

[State EndState]
Type = ChangeState
Trigger1 = Time = 20
Value = 132;154
Ctrl = 1

;-----
[Statedef 163];アドバンシングで押し出すためのヘルパー
Type = S
MoveType = I
Physics = N
PowarAdd = 0
Ctrl = 0
Anim = 90000
;どうせステルスだろ・・・

[State Posset]
Type = Posset
Trigger1 = Time = 0
Y =  0

[State Push]
Type = Playerpush
Trigger1 = Time >= 0
Value = 1

[State Velset]
Type = Velset
Trigger1 = Time = [0,4];[0,10]
X = 30

[State Velset]
Type = Velset
Trigger1 = Time = [5,7];[11,13]
X = 20

[State Velset]
Type = Velset
Trigger1 = Time >= 8;14
X = 10

[State ***]
Type = NotHitBy
Trigger1 =1
Value = SCA
Time = 1

[State EndHELPER]
Type = DestroySelf
Trigger1 = Time >= 12;18


;---------------------------------------------------------------------------
;dash.cns	;だっしゅ+じゃんぷ関連
;---------------------------------------------------------------------------
;----------
;緊急回避
;※※※※※※※※※※※※※※※※※※※※前避けの開始
[Statedef 2200]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 3,0
anim = 2200
sprpriority = 2

[State Voice]
Type = PlaySnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 0
Value = 1,7;ふんっ！
Channel = 0;VC

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = animtime = 0
value = 2210
ctrl = 0

;※※※※※※※※※※※※※※※※※※※※前避けの回転
[Statedef 2210]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 51222;2210
sprpriority = -2

[State Velset]
type = Velset
trigger1 = 1;ステートが次に進むまで
X = 5

[State Atari]
type = PlayerPush
trigger1 = 1
value = 0
[State Atari]
type = Hitby
trigger1 = 1
value = SCA,AT
time = 1
ignorehitpause = 0

[State 750, 2]
type = AfterImage
trigger1 = Time = 3
time = 22
trans = add1
timegap = 1
framegap = 3
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = Time > 20;animtime = 0
value = 2220
ctrl = 0

;※※※※※※※※※※※※※※※※※※※※前避けの終了
[Statedef 2220]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 2250
sprpriority = 2

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1









;※※※※※※※※※※※※※※※※※※※※後避けの開始
[Statedef 2250]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = -3,0
anim = 2250;←前避けの３にあたるスプライト
sprpriority = 2

[State Voice]
Type = PlaySnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 0
Value = 1,7;ふんっ！
Channel = 0;VC

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = animtime = 0
value = 2260
ctrl = 0

;※※※※※※※※※※※※※※※※※※※※後避けの回転
[Statedef 2260]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
;velset = 0,0
anim = 51221;2210;←前避けの２にあたるスプライト
sprpriority = -2

[State Velset]
type = Velset
trigger1 = 1;ステートが次に進むまで
X = -5

[State Atari]
type = PlayerPush
trigger1 = 1
value = 0
[State Atari]
type = Hitby
trigger1 = 1
value = SCA,AT
time = 1
ignorehitpause = 0

[State 750, 2]
type = AfterImage
trigger1 = Time = 3
time = 22
trans = add1
timegap = 1
framegap = 3
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = Time > 20;animtime = 0
value = 2270
ctrl = 0

;※※※※※※※※※※※※※※※※※※※※後避けの終了
[Statedef 2270]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 2200;←前避けの１にあたるスプライト
sprpriority = 2

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Jump Start
;じゃんぷに追加命令を。ハイジャンプ
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State -1, AI]
Type = ChangeState
TriggerAll = Var(59) && RoundState = 2
TriggerAll = PrevStateNo != 100 && PrevStateNo != 215
Trigger1 = Time = 0
Value = 0
Ctrl = 1
IgnoreHitPause = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holdfwd"
;trigger2 = PrevStateno = 100
sysvar(1) = 1

[State 40, 3]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holdback"
;trigger2 = PrevStateno = 105
sysvar(1) = -1

[State 40, 2] 
type = VarSet 
triggerall = var(59) && RoundState = 2 
trigger1 = BackEdgeBodyDist <= 20 && (p2statetype = L || (p2statetype !=A && p2movetype != A)) 
trigger2 = p2statetype != A && p2movetype != H 
trigger3 = p2statetype = A && p2movetype = H 
sysvar(1) = 1 

[State 40, 3] 
type = VarSet 
triggerall = var(59) && RoundState = 2 
trigger1 = p2statetype = L && BackEdgeBodyDist > 20 && enemynear,NumProj = 0 
sysvar(1) = -1 

;ここらへんからハイジャンプ関連を

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
Trigger1 = var(3) = 0;V3をハイジャンプ用に見立てる。丁度空いててよかっぱ～
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
Trigger1 = var(3) = 1;ふらぐ立ってるなら、y加速をぎゅんぎゅん
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = -12;-15;こんくらいかな 高すぎると一部の面でないとはみでる
;y = ifelse(Sysvar(1) != 0,const(velocity.jump.y)*1.5,-14);-15;こんくらいかな

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
Trigger1 = var(3) = 2;高速ジャンプ
trigger1 = (PrevStateno != 100) && (prevstateno != 105)
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x)*2, const(velocity.jump.back.x)*2))
y = const(velocity.jump.y)*0.8;-15;こんくらいかな

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
Trigger1 = var(3) = 2;ダッシュからの移行
trigger1 = PrevStateno = 100;[100,106]
x = const(velocity.runjump.fwd.x)
y = const(velocity.jump.y)*0.8;-15;こんくらいかな

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
Trigger1 = var(3) = 2;ダッシュからの移行
trigger1 = PrevStateno = 105
x = const(velocity.runjump.back.x)
y = const(velocity.jump.y)*0.8;-15;こんくらいかな


[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)


[State Flag,set]
type = varset
trigger1 = time = 0
var(3) = 0

[State Flagset]
type = varset
triggerall = !var(59)
trigger1 = Command = "highjump"
trigger1 = Command != "holdfwd"
trigger1 = Command != "holdback"
trigger2 = PrevStateno = 215;210;開始技からこっちへ来たなら
;trigger3 = PrevStateno != [100,106];ダッシュ中もありにするべきか・・・？
var(3) = 1

[State Flagset]
type = varset
triggerall = !var(59)
triggerall = PrevStateno != 215;誤作動防止
trigger1 = Command = "dashjump"
;trigger2 = Command = "holdfwd"
;trigger2 = Command = "holdback"
trigger2 = PrevStateno = 100||prevstateno = 105;ダッシュ中もありにするべきか・・・？
trigger3 = Command = "highjump"
trigger3 = (Command = "holdfwd")||(Command = "holdback")
var(3) = 2

[State Flagset]
type = varset
triggerall = var(59) && RoundState = 2
trigger1 = PrevStateno = 215;210;開始技からこっちへ来たなら
Trigger2 = StateType != A && Ctrl
Trigger2 = P2StateType = A && P2MoveType = H
Trigger2 = P2BodyDist X = [0,90]
Trigger2 = P2BodyDist Y < -120
Trigger2 = enemynear,vel Y = [-1,1]
var(3) = 1

[State Flagset]
type = varset
triggerall = var(59) && RoundState = 2
triggerall = PrevStateno != 215;誤作動防止
trigger1 = PrevStateno = 100||prevstateno = 105;ダッシュ中もありにするべきか・・・？
var(3) = 2

[State *]
type = explod
trigger1 = var(3) = 2
Anim = 4013;着地したエフェクト
ID = 4013
PosType = p1
Pos = 0,0
ownpal = 1
Bindtime = 1
Sprpriority = -2
Persistent = 0
Removeongethit = 0


[State JUMP,Sound]
Type = PlaySnd
Triggerall = AnimTime = 0
Trigger1 = var(3) = 0
Value = 0,34;ジャンプ音
;Channel = 1;SE

[State HIJUMP,Sound]
Type = PlaySnd
Trigger1 = AnimTime = 0
Trigger1 = var(3) >= 1;= 1
Value = 0,12;ダッシュ音
;Value = 0,36;チャロンジャンプ
;Channel = 1;SE

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;[State 50, 1]
;type = VarSet
;trigger1 = Time = 0
;Trigger1 = Vel x = 0
;var(1) = 0

;[State 50, 1]
;type = VarSet
;triggerall = Time = 0
;Trigger1 = Vel x > 0
;Trigger2 = Vel x < 0
;var(1) = 1

[State Turn]
Type     = Turn
Trigger1 = P2Dist X < 0
Trigger1 = var(3) = 1

[State VelAdd]
Type = VelAdd
triggerall = !var(59)
Trigger1 = var(3) = 1
Trigger1 = Command = "holdback"
Trigger1 = Vel x > -1.5
X = -.05

[State VelAdd]
Type = VelAdd
triggerall = !var(59)
Trigger1 = var(3) = 1
Trigger1 = Command = "holdfwd"
Trigger1 = Vel x < 3
X = .15

[State VelAdd]
Type = VelAdd
triggerall = var(59) && RoundState = 2
Trigger1 = var(3) = 1
Trigger1 = Vel x > -1.5
Trigger1 = P2MoveType = A
X = -.05

[State VelAdd]
Type = VelAdd
triggerall = var(59) && RoundState = 2
Trigger1 = var(3) = 1
Trigger1 = Vel x < 3
Trigger1 = P2BodyDist X > 0
X = .15

[State VelAdd]
Type = VelAdd
Trigger1 = var(3) = 1
Y = -.08;-.14

[State JumpAnim];ジャンプ時の衝撃波
Type = Explod
Trigger1 = Time = 2
Trigger1 = var(3) = 1
Trigger1 = prevstateno != 45;空中でジャンプしたんじゃないなら
Anim = 4032;持ってるアニメを使う
Id = 4032
Postype = p1
Pos = 0,40
Ownpal = 1
Sprpriority = 5
Persistent = 0
Removeongethit = 0

[State -1]
Type        = AfterImage
Trigger1    = Time = 0;2
Trigger1 = var(3) >= 1 ;= 1
Time        = 18
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 0,220,40;0  , 0  , 150
;PalAdd      = 0  , 0  , 0
;PalMul      = .5 , .5 , .5
Peresistent = 1

[State Change]
Type = ChangeState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y > 0
Value = 52

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
;FaceP2 = 1
ctrl = 0
anim = 47

[State Turn]
Type     = Turn
Trigger1 = P2Dist X < 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = prevstateno != [1010,1011];あっぱー着地の時は硬直を長く
trigger1 = prevstateno != [1050,1059];
triggerall = Time = 3
value = 1
[State 52, 3]
type = CtrlSet
trigger1 = prevstateno = [1010,1011];あっぱー着地の時は硬直を長く
trigger2 = prevstateno = [1050,1059];
triggerall = Time = 12
value = 1

[state 200, 1];Var(0)初期化
type = varset
trigger1 = time = 0
var(0) = 0

[State Snd_chakuti];着地音
Type = PlaySnd
Trigger1 = Time = 0
Value = 0,35;
;channel = 1;SE

[State Chakuti_Effect]
Type = Explod
Trigger1 = Time = 0
Anim = 4013;着地したエフェクト
ID = 4013
PosType = p1
Pos = 0,0
ownpal = 1
Bindtime = 1
Sprpriority = -2
Persistent = 0
Removeongethit = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Jump Land
[Statedef 641]
type    = S
physics = S
;FaceP2 = 1
ctrl = 0
anim = 641;47

[State Turn]
Type     = Turn
Trigger1 = P2Dist X < 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State Snd_chakuti];着地音
Type = PlaySnd
Trigger1 = Time = 0
Value = 0,15;爆発音
;channel = 1;SE

[State Chakuti_Effect]
Type = Explod
Trigger1 = Time = 0
Anim = 4032;着地したエフェクト
ID = 4013
PosType = p1
Pos = 0,0
ownpal = 1
Bindtime = 1
Sprpriority = -2
Persistent = 0
Removeongethit = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;ダッシュに音と残像をつける。
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
Ctrl = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State -1]
Type        = AfterImage
Trigger1    = Time = 2
Time        = 46
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 0,220,40;0  , 0  , 150
;PalAdd      = 0  , 0  , 0
;PalMul      = .5 , .5 , .5
Peresistent = 1

[State -1]
Type     = PlaySnd
Trigger1 = Time = 4
Value    = 0,12;s2, 1
Channel  = 1;SE

[state 192, 2]
type = screenbound
trigger1 = prevstateno = 710;吹き飛ばしエフェクトから来たなら、まだ相手にカメラ向ける
value = 0

[State 100, 4]
type = ChangeState
triggerall = !var(59)
triggerall = time >= 10;40;途中でジャンプコマンドが来たらジャンプへ移行
trigger1 = Command = "holdup"
value = 40

[State 100, 4]
type = ChangeState
;triggerall = time >= 30
;triggerall = time <= 40
;trigger1 = command != "holdfwd"
;trigger1 = prevstateno != 710;エリアルふっとばしステートからのダッシュならキャンセル不可
trigger1 = time >= 25;40
trigger2 = prevstateno = 710;
trigger2 = time >= 15;
value = 101

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 101]
type    = S
physics = C
anim = 101
Ctrl = 1

[State -1]
Type     = AfterImageTime
Trigger1 = Time = 0
Time     = 0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
Ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = S;A
ctrl = 0
anim = 105
sprpriority = 1

[State -1]
Type     = StateTypeSet
Trigger1 = Time = 2;4
Type     = A
Physics  = N

[State 105, 1]
type = VelSet
trigger1 = Time = 2;0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State -1]
Type     = VelAdd
Trigger1 = Time >= 2;4
Y        = 0.3

;[State 105, 2]
;type = CtrlSet
;trigger1 = Time = 2
;value = 1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 4;6;0
trigger1 = Pos Y >= 0
value = 106

[State -1]
Type     = PlaySnd
Trigger1 = Time = 4
Value    = 0,12;s2, 1
Channel  = 1;SE

[State -1]
Type        = AfterImage
Trigger1    = Time = 2
Time        = 18
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 0,220,40;0  , 0  , 150
;PalAdd      = 0  , 0  , 0
;PalMul      = .5 , .5 , .5
Peresistent = 1

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106;47

[State -1]
Type     = AfterImageTime
Trigger1 = Time = 0
Time     = 0

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 0;7
value = 0
ctrl = 1


;--------------------------
;エリアルふっとばし用
[statedef 6100]
type = A
Movetype = H
Physics = N
Anim = 5012
Velset = 0,0

[State Anim]
Type = ChangeAnim
trigger1 = Hitshakeover
Value = 5051

[State to6101]
Type = ChangeState
trigger1 = HitShakeOver
Value = 6101

;---
[Statedef 6101]
type = A
Movetype = H
Physics = N
Ctrl = 0

[State HitVel]
type = HitVelSet
trigger1 = Time = 0
X = 1
Y = 1

[State VelAdd]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State change]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059]
trigger1 = Anim != 5090
value = 5035

[State To6102]
type = ChangeState
trigger1 = Hitover
trigger2 = AnimTime = 0
trigger3 = vel Y > 0
trigger3 = Pos Y >= 10
trigger4 = Time = 0
trigger4 = Anim != 5035 ;&& Anim != 5235
value = 6102

;ふっとび復帰
[StateDef 6102]
type = A
Movetype = H
Physics = N

[State AnimChange]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5051
persistent = 0

[State Veladd]
Type = VelAdd
trigger1 = 1
Y = .42

[State SelfState]
Type = SelfState
triggerall = Alive = 1
trigger1 =(Time = 15)|| (Vel Y >= 0)
Value = 5040

[State SelfState]
Type = SelfState
triggerall = Alive = 0
trigger1 =(Time = 15)|| (Vel Y >= 0)
Value = 5050

[State SelfState]
Type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051+var(40),5059]) || (anim = [5061,5069]), 0, 25)
Value = 5100
;-----
;エリアルしない場合のステート700台もありだけど、簡易エリアルからの派生でしか
;ふっとばしが出ないようにするんで、割愛。
;-----
;エリアルで画面端まで吹っ飛ばした時
[Statedef 710]
Type = S
physics = S
juggle = 0
Velset = 0,0
Ctrl = 0
Anim = 0
PowerAdd = 0
Sprpriority = 2

[State NotHit]
Type = NotHitBy
trigger1 = 1
Value = SCA
Time = 2
ignoreHitPause = 1

[State Assert]
Type = AssertSpecial
trigger1 = 1
flag = invisible

[State PosSet];座標セットしてダッシュ地点にする
type = PosSet
trigger1 = Facing = -1
X = 200
Y = 0

[State PosSet]
type = PosSet
trigger1 = Facing = 1
X = -200
Y = 0

[State Scr];吹っ飛ばした相手にカメラを向ける
Type = Screenbound
trigger1 = 1
Value = 0
movecamera = 0,0

[State GEKITOTZ1]
type = Null;Explod
trigger1 = p2StateNo = 328
persistent = 0
Anim = 4033;6012
pos = 0,0;-80,-5;座標ちがうので修正
postype = p2
sprpriority = 5
Velocity = 0,0
BindTime = 1
ownpal = 1

[State GEKITOTZ2]
type = Explod
trigger1 = p2StateNo = 328 && p2movetype = h
persistent = 0
Anim = 4032;6012
pos = 0,0;-80,-5;座標ちがうので修正
postype = p2
sprpriority = 5
Velocity = 0,0
BindTime = 1
ownpal = 1

[State Shake]
Type = EnvShake
trigger1 = p2StateNo = 328
Persistent = 0
Time = 15
Freq = 70
Ampl = -4

[State Sound];地面激突音
Type = PlaySnd
trigger1 = p2StateNo = 328
persistent = 0
Value = 0,17
;channel = 1;SE;ここはチャンネル一緒にしないほうがいい。

[state 200, 1];Var(0)初期化
type = varset
Trigger1 = p2StateNo = 328
Trigger2 = Time = 40
var(0) = 0

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = numexplod(15060)
flag = noBG ;<-- removes the stage layer
flag = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1
[State remexp]
type = removeexplod
triggerall = numexplod(15060)
Trigger1 = p2StateNo = 328
Trigger2 = Time = 40
;ますぱ
trigger3 = prevstateno = 3002
Trigger3 = Time = 0
trigger4 = prevstateno = 3007
Trigger4 = Time = 20
trigger5 = prevstateno = 3022
Trigger5 = Time = 0
;げっと技
trigger6 = prevstateno = 1050;ひえいけん
Trigger6 = Time = 0
trigger7 = prevstateno = 35010;覇王翔吼拳
Trigger7 = Time = 0
trigger8 = prevstateno = [35202,35203];タンクローリー
Trigger8 = Time = 0
id = 15060

[State To100];ダッシュへ移行
Type = ChangeState
Trigger1 = p2StateNo = 328
Trigger2 = Time = 40
trigger3 = prevstateno = 3002
Trigger3 = Time = 0
trigger4 = prevstateno = 3007
Trigger4 = Time = 20
trigger5 = prevstateno = 1050;ひえいけん
Trigger5 = Time = 0
trigger6 = prevstateno = [35202,35203];タンクローリー
Trigger6 = Time = 0
Value = 100

;------
;吹っ飛ばされた相手のステート
; aerial raved a
[statedef 715]
movetype= h
physics = n
velset = 0,0
ctrl = 0

[state 710,1]
type = selfstate
trigger1 = time = 0 && pos y >= 0 && command != "holddown"
value = 5000

[state 710,2]
type = selfstate
trigger1 = time = 0 && pos y >= 0 && command = "holddown"
value = 5010

[state 710,3]
type = statetypeset
trigger1 = time = 1
value = a

[state 710,4]
type = changeanim
trigger1 = 1
value = 5012;+(200*var(40))

[state 710,5]
type = changestate
trigger1 = hitshakeover
value = 716
;---------------------------------------------------------------------------
; aerial raved b
[statedef 716]
type    = a
movetype= h
physics = n
ctrl = 0

[state 711, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 711, 2]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[State Velinv]
type = VelMul
trigger1 = backedgedist <= 1
x = -.1

[state 711, 3]
type = changestate
trigger1 = animtime = 0 || time >= 10
value = 717

[state 711, 4]
type = screenbound
trigger1 = 1 
value = 1
movecamera = 1,1

[state 711, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060;+(200*var(40))
value = 5060;+(200*var(40))

[state 711, 6]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 328
;---------------------------------------------------------------------------
; aerial raved c
[statedef 717]
type    = a
movetype= h
physics = n
ctrl = 0

[state 712, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 712, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060;+(200*var(40))
value = 5060;+(200*var(40))

[state 711, 2]
type = changeanim
trigger1 = anim != 5060
trigger1 = selfanimexist(5061) && anim != 5061;+(200*var(40))
value = 5061;+(200*var(40))

[state 712, 3]
type = screenbound
trigger1 = 1 
value = 1
movecamera = 1,1

[state 712, 3]
type = changestate
trigger1 = pos y >= 10 && vel y > 0 
value = 328

;---------------------------------------------------------------------------
; tripped (shaking)
[statedef 326]
type    = a
movetype= h
physics = n
velset = 0,0

[state 326, 1]
type = changeanim 
trigger1 = 1
value = 5070;+(200*var(40))

[state 326, 2]
type = changestate
trigger1 = hitshakeover
value = 327

[state 326, 3]
type = ForcefeeDBack
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

[state 326,4]
type = nothitby
trigger1 = 1
value = sca, aa, ap, at, na, np, nt, sa, sp, st, ha, hp, ht
time = 2
ignorehitpause = 1

[state 326,5]
type = playerpush
trigger1 = 1
value = 0
;---------------------------------------------------------------------------
; tripped (fall through air)
[statedef 327]
type    = a
movetype= h
physics = n

[state 327, 1]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 327, 2] ;acceleration
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 327, 3] ;hit ground
trigger1 = vel y > 0
trigger1 = pos y >= 15
type = changestate
value = 328

[state 327,4]
type = nothitby
trigger1 = 1
value = sca, aa, ap, at, na, np, nt, sa, sp, st, ha, hp, ht
time = 2
ignorehitpause = 1

[state 327,5]
type = playerpush
trigger1 = 1
value = 0
;---------------------------------------------------------------------------
; trip liedown
[statedef 328]
type    = l
movetype= h
physics = n

[state 328, envshake]
type = Fallenvshake
trigger1 = time = 0

[state 328, 2] ;hit ground anim (normal)
type = changeanim
trigger1 = time = 0
value = 5170;+var(40)

[state 328, 4]
type = hitfalldamage
trigger1 = time = 0

[state 328, 5]
type = posset
trigger1 = time = 0
y = 0

[state 328, var]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = Floor(vel y)

[state 328, 6]
type = playsnd
triggerall = prevstateno != [715,720]
trigger1 = time = 0 && !sysvar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 328, 6]
type = playsnd
triggerall = prevstateno = 720
trigger1 = time = 0 && !sysvar(0)
value = F7, 2

[state 328, 8]
type = velset
trigger1 = 1
x = 0
y = 0

[state 200, 1];Var(0)初期化
;FAYさんの指摘でＯＦＦ
type = null;varset
trigger1 = time = 0
var(0) = 0

[state 328, 9]
type = changeanim
persistent = 0
triggerall = anim = 5170;+var(40)
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110;+(200*var(40))

[state 328, 11] ;if just Died
type = selfstate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground Frame
trigger3 = anim = 5110+(200*var(40))
trigger4 = time = 20
value = 5150

[state 328, 12]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 328, 13] ;friction
type = velmul
trigger1 = 1
x = 0.85

[state 328,16]
type = playerpush
trigger1 = 1
value = 0

[state 328,17]
type = nothitby
trigger1 = time = 0
value = sca, aa, ap, at, na, np, nt, sa, sp, st, ha, hp, ht
time = 0
ignorehitpause = 1

[state 250,13]
type = envshake
trigger1 = time = 0 && prevstateno = 720
persistent = 0
time = 15
freq = 70
ampl = -4

[state 328,18]
type = selfstate
trigger1 = alive && time = 20 && (prevstateno != [700,709]) && prevstateno != 720
trigger2 = alive && time = 20 && prevstateno = [700,709]
trigger3 = alive && time = 20 && prevstateno = 720
value = 5120

;---------------------------------------------------------------------------
; landing anim
[statedef 460]
type    = a
movetype= a
physics = n;a
ctrl = 1 ;ifelse(var(3)=1,1,0)

[State grv]
type = gravity
trigger1 = 1

;[state hee]
;type = changeanim
;trigger1 = time = 0
;value = 460

[state 710,5]
type = screenbound
trigger1 = p2stateno = [715,717]
trigger2 = p2stateno = 328
value = 0
movecamera = 0,0

[state 460, 7]
type = veladd
triggerall = !var(59)
trigger1 = var(3) = 1
trigger1 = command = "holdback"
trigger1 = vel x > -1.5
x = -.15

[state 460, 8]
type = veladd
triggerall = !var(59)
trigger1 = var(3) = 1
trigger1 = command = "holdfwd"
trigger1 = vel x < 3
x = .15

[state 460, 7]
type = veladd
triggerall = var(59) && RoundState = 2
Trigger1 = var(3) = 1
Trigger1 = Vel x > -1.5
Trigger1 = P2MoveType = A
x = -.15

[state 460, 8]
type = veladd
triggerall = var(59) && RoundState = 2
Trigger1 = var(3) = 1
Trigger1 = Vel x < 3
Trigger1 = P2BodyDist X > 0
x = .15

[state 460, 9]
type = veladd
trigger1 = var(3) = 1
y = -0.14

[State GEKITOTZ1]
type = Null;Explod
trigger1 = p2StateNo = 328
persistent = 0
Anim = 4033;6012
pos = 0,0;-80,-5;座標ちがうので修正
postype = p2
sprpriority = 5
Velocity = 0,0
BindTime = 1
ownpal = 1

[State GEKITOTZ2]
type = Explod
trigger1 = p2StateNo = 328 && p2movetype = h
persistent = 0
Anim = 4032;6012
pos = 0,0;-80,-5;座標ちがうので修正
postype = p2
sprpriority = 5
Velocity = 0,0
BindTime = 1
ownpal = 1

[State Ver0Set]
Type = Varset
trigger1 = p2StateNo = 328
var(0) = 0

[State Shake]
Type = EnvShake
trigger1 = p2StateNo = 328
Persistent = 0
Time = 15
Freq = 70
Ampl = -4

[State Sound];地面激突音
Type = PlaySnd
trigger1 = p2StateNo = 328
persistent = 0
Value = 0,17
;channel = 1;SE;ここはチャンネル一緒にしないほうがいい。

[State 810, Width 2-11]
type = Width
trigger1 = 1;
edge = 60,0

[state 460, 1]
type = turn
trigger1 = p2dist x < 0
trigger1 = var(3) = 1

;ヒップアタックアニメだったら、地面についたら別の着地アニメに
[State Ctrl]
type = CtrlSet
trigger1 = Anim = 640
Value = 0

[State -1]
Type     = ChangeState
;Trigger1 = Time >= 20]
Trigger1 = Anim = 640
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value    = 641

[State Change]
Type = ChangeState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y > 0
Value = 52

;---------------------------



;---------------------------------------------------------------------------
;tiuntiun.cns;ﾃｨｳﾝﾃｨｳﾝﾃｨｳﾝﾃｨｳﾝﾃｨｳﾝﾃｨｳﾝ　その他やられ関連
;---------------------------------------------------------------------------

;ﾃｨｳﾝﾃｨｳﾝ関連や、やられカットインなどなど。
[Statedef 15000];ヘルパーでやられ演出を。できれば節約したい
type     = S
physics  = S
movetype = I
;facing = 1
anim = 9999;1208
ctrl = 0

[State remexp]
type = removeexplod
trigger1 = time = 0;
id = 15060

[State -2, Finish Explod KO]
type = explod
triggerall = Time = 1 ;Time <= 0;
trigger1 = winko;勝ったときか
trigger2 = loseko;まけたとき
anim = 15000;17009
id = 15000
pos = 0,0
postype = left
removetime = 50
sprpriority = 5
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1
bindtime = -1

[State 4500, Explod];さらに、自分が特定の技を発動中だった時
type = Explod
triggerall = time = 0
trigger1 = parent,Stateno != [3500,3509]
trigger1 = parent,Stateno = [3000,4999]
trigger2 = (parent,Stateno = [35010,35999]) && (parent,Stateno != 35082)&& (parent,Stateno != 35212)
trigger3 = parent,Stateno = [30400,30410];あくせる
trigger4 = parent,Stateno = [72000,72010];0083
anim = 15050;9012;ハイパーフィニッシュエフェクト。
id = 15050;
postype = left;p1
pos = 0,0
sprpriority = -5
bindtime = -1
supermovetime = 60
ownpal = 1

[State WPNKO 1];特殊武器でKOした時 音声編
type = playsnd
triggerall = Time = 4 ;Time <= 0;
triggerall = (parent,var(5)) > 0;特殊武器装備中かつ
triggerall = parent,Stateno = [35010,35999];その武器でフィニッシュ
trigger1 = winko;勝ったときか
trigger2 = loseko;まけたとき
value = S3500+(parent,var(5)),99
persistent = 0;

[State WPNKO 2];特殊武器でKOした時 画像編
type = Explod
triggerall = time = 0
triggerall = (parent,var(5)) > 0;特殊武器装備中かつ
triggerall = parent,Stateno = [35010,35999];その武器でフィニッシュ
triggerall = AnimExist(35009+((parent,var(5))*10))
trigger1 = winko;勝ったときか
anim = 35009+((parent,var(5))*10)+ifelse((parent,var(5)=13)&&(Random%2),30000,0)
id = 35009;
pos = 0,0
postype = left
removetime = 150
sprpriority = 5
ontop = 1
bindtime = -1

[State -2, Finish Explod KO SND]
type = playsnd
triggerall = Time = 1 ;Time <= 0;
trigger1 = winko;勝ったときか
trigger2 = loseko;まけたとき
trigger2 = enemy,name != "MegaMari"
value = S0,18
channel = 3;1;SE
persistent = 0;

[State whee]
type = RemoveExplod
trigger1 = time >= 120
id = 15000

[State FinishEffect]
type = AssertSpecial
trigger1 = Numexplod(15050)
trigger2 = Numexplod(65071);羅生門
trigger3 = Numexplod(35009);武器名
flag = nobardisplay
flag2 = nomusic

[State *,*];ＫＯなんで、BGMを解除する
type = ParentVarSet
trigger1 = Time = 0;time >= 50
trigger1 = parent,Stateno != [72000,72010];0083
var(20) = 0

[State WPNRem];以上の処理が終わったら、武器を解除しておく。武器は次Ｒに持ち越すことはできない
type = parentVaradd
triggerall = time >= 5
Trigger1 = parent,var(5) > 0;装備中だったなら
var(6) = 0
[State WPNRem];
type = parentvarset
triggerall = time >= 5
Trigger1 = parent,var(5) > 0;装備中だったなら
var(5) = 0;この状態へ


[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State ChangeState!]
type = DestroySelf
trigger1 = RoundState != 3;RoundState = 0 || RoundState = 1
;Animtime = 0 || time >= 50

;---------------------
;じょじょ風やられカット　呼び出しは-2-3にて
[Statedef 6010];
type     = S
physics  = S
movetype = I
;facing = 1
anim = -1;1208
ctrl = 0

[State 1211, Exclamation];自分が死んだとき
type = Explod
;triggerall =Alive = 0;自分が死んでるなら、自分用
trigger1 = Time = 0 && NumExplod(8003) = 0 ;&& root, facing = 1
;trigger1 = 1
anim = 10060;8004
id = 8003
name = "YARARE NORMAL"
pos = IfElse(root, Facing = 1, 170, 140),220
postype = back
facing = IfElse(root, Facing = 1, 1, -1)
sprpriority = -4;-1;-18
scale = (root, Const(size.xscale)), (root, Const(size.yscale))
bindtime = -1;-1
supermovetime = -1
pausemovetime = -1
persistent = 0
ignorehitpause = 1

[State that starts the inverted effect]
type           = PalFX
;trigger1 = !Alive;通常の場合
trigger1       = Time = 24 ;12
add            = 0,0,0
;sinadd         = 300,300,300,180;486 ;324 ;270
sinadd         = 300,300,300,486 ;324 ;270
time           = 96 ;50 ;42
ignorehitpause = 1

[State whee]
type = RemoveExplod
;trigger1 = !Alive;通常の場合
trigger1 = time >= 120;70;120
id = 8003

[State ChangeState!]
type = DestroySelf
trigger1 = time >= 121
trigger1 = RoundState = 4
;trigger1 = RoundState = 0 || RoundState = 1
;Animtime = 0 || time >= 50

;---------------------
;じょじょ風やられカット　呼び出しは-2-3にて
[Statedef 6011];本家まりさ用
type     = S
physics  = S
movetype = I
;facing = 1
anim = -1;1208
ctrl = 0

[State 1211, Exclamation];本家まりさが死んだとき
type = Explod
triggerall = enemynear,stateno = 1253;winko;自分が勝ってて、かつ相手が本家まりさ
triggerall = enemynear,name="Marisa Kirisame"
trigger1 = Time = 0 && NumExplod(8003) = 0 ;&& root, facing = 1
anim = 10060;8004
id = 8003
name = "YARARE OTHER"
pos = IfElse(root, Facing = 1, 140, 170),220
postype = back
facing = IfElse(root, Facing = 1, -1, 1)
sprpriority = -4;-1;-18
scale = (root, Const(size.xscale)), (root, Const(size.yscale))
bindtime = -1
ownpal = 1
supermovetime = -1
pausemovetime = -1
persistent = 0
ignorehitpause = 1

[State whee]
type = RemoveExplod
trigger1 = enemynear,stateno = 1253;winko;自分が勝ってて、かつ相手が本家まりさ
trigger1 = enemynear,name="Marisa Kirisame"
trigger1 = time >= 180;120
id = 8003

[State ChangeState!]
type = DestroySelf
trigger1 = time >= 121
trigger1 = RoundState = 4
;trigger1 = RoundState = 0 || RoundState = 1
;Animtime = 0 || time >= 50

;-------------------------------------------
;ダウン関連
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
triggerall = !numexplod(6800);ティウン
;triggerall = !var(4);ティウン
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
triggerall = !numexplod(6800);ティウン
;triggerall = !var(4);ティウン
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20
;---------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
;trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
triggerall = !numexplod(6800);ティウン
;triggerall = !var(4);ティウン
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
triggerall = !numexplod(6800);ティウン
;triggerall = !var(4);ティウン
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;-------------------------------------------
;うけみ関連。5000番台なんでなんとなくここに
[Statedef 5120]
type    = L
movetype= I
physics = N

[State To5122]
type = Changestate
TriggerAll = !Var(59)
triggerall = time = 0
triggerall = Anim != 5111
trigger1 = command = "holdback"
value = 5122

[State To5123]
type = Changestate
TriggerAll = !Var(59)
triggerall = time = 0
triggerall = Anim != 5111
trigger1 = command = "holdfwd"
value = 5123

[State To5122]
type = Changestate
TriggerAll = Var(59) && RoundState = 2
triggerall = time = 0
triggerall = Anim != 5111
trigger1 = P2BodyDist X > 0
value = 5122

[State To5123]
type = Changestate
TriggerAll = Var(59) && RoundState = 2
triggerall = time = 0
triggerall = Anim != 5111
trigger1 = P2BodyDist X < 0
value = 5123

[State To5124]
type = Changestate
TriggerAll = !Var(59)
triggerall = time = 0
triggerall = Anim = 5111
trigger1 = command = "holdback"
value = 5124

[State To5125]
type = Changestate
TriggerAll = !Var(59)
triggerall = time = 0
triggerall = Anim = 5111
trigger1 = command = "holdfwd"
value = 5125

[State To5124]
type = Changestate
TriggerAll = Var(59) && RoundState = 2
triggerall = time = 0
triggerall = Anim = 5111
trigger1 = P2BodyDist X > 0
value = 5124

[State To5125]
type = Changestate
TriggerAll = Var(59) && RoundState = 2
triggerall = time = 0
triggerall = Anim = 5111
trigger1 = P2BodyDist X < 0
value = 5125

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

;[State 5120, 2]
;type = VelSet
;trigger1 = Time = 0
;x = 0;元々

[State 5120, 2]
type = VelSet
trigger1 = animelemtime(6)=0
x = 1.6;魔理沙用
[State 5120, 2]
type = VelSet
trigger1 = animelemtime(9)=0
x = 0;魔理沙用

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;11
ctrl = 1

;-----
[Statedef 5122]
Type = L
MoveType = I
Physics = N
Ctrl = 0
Velset = 0,0,0

[State Rollig]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 51221

[State VelAdd]
Type = VelAdd
trigger1 = Time = 3
X = -8

[State Nohit]
Type = NotHitBy
Trigger1 = time >= 0
Value = SCA
Time = 1

[State HitFall]
Type = HitFallSet
Trigger1 = animtime = 0
value = 1

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value = , NT,ST,HT
Time = 12

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value2 = SCA
Time = 3

[State 5122]
Type = ChangeState
Trigger1 = Time = 30
Value = 11
ctrl = 1

;-----
[Statedef 5124]
Type = L
MoveType = I
Physics = N
Ctrl = 0
Velset = 0,0,0

[State Rollig]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 51221

[State VelAdd]
Type = VelAdd
trigger1 = Time = 3
X = -8

[State Nohit]
Type = NotHitBy
Trigger1 = time >= 0
Value = SCA
Time = 1

[State HitFall]
Type = HitFallSet
Trigger1 = animtime = 0
value = 1

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value = ,NT,ST,HT
Time = 12

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value2 = SCA
Time = 3

[State 5122-]
Type = ChangeState
Trigger1 = Time = 30
Value = 11
ctrl = 1

;-----
[Statedef 5123]
Type = L
MoveType = I
Physics = N
Ctrl = 0
Velset = 0,0,0

[State Rollig]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 51222

[State VelAdd]
Type = VelAdd
trigger1 = Time = 2
X = 8

[State Nohit]
Type = NotHitBy
Trigger1 = time = 0
Value = SCA
Time = 1

[State HitFall]
Type = HitFallSet
Trigger1 = animtime = 0
value = 1

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value = ,NT,ST,HT
Time = 12

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value2 = SCA
Time = 3

[State 5122-]
Type = ChangeState
Trigger1 = Time = 30
Value = 11
ctrl = 1

;-----
[Statedef 5125]
Type = L
MoveType = I
Physics = N
Ctrl = 0
Velset = 0,0,0

[State Rollig]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 51222

[State VelAdd]
Type = VelAdd
trigger1 = Time = 2
X = 8

[State Nohit]
Type = NotHitBy
Trigger1 = time = 0
Value = SCA
Time = 1

[State HitFall]
Type = HitFallSet
Trigger1 = animtime = 0
value = 1

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value = ,NT,ST,HT
Time = 12

[State ***]
Type = NotHitBy
Trigger1 = animtime = 0
Value2 = SCA
Time = 3

[State 5122-]
Type = ChangeState
Trigger1 = Time = 30
Value = 11
ctrl = 1

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

;うおおおおっ、ぐふぁっ
[State DEAD,VOICE]
type = Null;Playsnd
triggerall = var(40);ボイスＯＫ
triggerall = Time = 0
triggerall = !MatchOver
trigger1 = LoseKO;!Alive
value = 1,14;うおおおおっぐふぁ
channel=0;VC
persistent = 0
;F2でやるとティウン前に鳴ってしまう・・・暫定配置
;少し方針を変える為にOFF。

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
trigger1 = (anim+10) != 5060;5060には移行しない
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_LIEDEAD
;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State Inv];ゲット技5番目のとどめ用など
type = AssertSpecial
triggerall = !Alive
trigger1 = prevstateno = 35052
trigger2 = prevstateno = 35062
trigger3 = prevstateno = [73000,73009]
trigger4 = prevstateno = 35270
trigger5 = var(45) >= 5;狂判定
flag = NoShadow
flag2 = Invisible

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
trigger1 = MatchOver 
trigger1 = TeamMode = single
trigger2 = TeamMode = simul;まっちおーばーか、シングル以外か
trigger3 = TeamMode = turns
triggerall = !Alive;LoseKO
triggerall = Time = 0
triggerall = Anim = [5140,5149]
triggerall = SelfAnimExist(anim+10)
value = anim+10

;-----
[State 5150, AssertSpecial]
type = AssertSpecial
trigger1 = MatchOver 
trigger1 = TeamMode = single
trigger2 = TeamMode = simul;まっちおーばーか、シングル以外か
trigger3 = TeamMode = turns
triggerall = !Alive;LoseKO
flag = NoShadow
flag2 = Invisible

[State 5150, Anim]
type = ChangeAnim
trigger1 = MatchOver 
trigger1 = TeamMode = single
trigger2 = TeamMode = simul;まっちおーばーか、シングル以外か
trigger3 = TeamMode = turns
triggerall = !Alive;LoseKO
triggerall = Time <= 0
triggerall = Anim != 5150
value = 5150

[State 5150, 0]
type = NotHitBy
trigger1 = MatchOver 
trigger1 = TeamMode = single
trigger2 = TeamMode = simul;まっちおーばーか、シングル以外か
trigger3 = TeamMode = turns
triggerall = !Alive;LoseKO
value = SCA
time = 1

[State 5150, PosSet]
type = PosSet
trigger1 = MatchOver 
trigger1 = TeamMode = single
trigger2 = TeamMode = simul;まっちおーばーか、シングル以外か
trigger3 = TeamMode = turns
triggerall = !Alive;LoseKO
y = 0

[State 5150, VelSet]
type = VelSet
trigger1 = MatchOver 
trigger1 = TeamMode = single
trigger2 = TeamMode = simul;まっちおーばーか、シングル以外か
trigger3 = TeamMode = turns
triggerall = !Alive;LoseKO
y = 0
;------ティウン後

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0


[State -1]
type = notHitBy
;triggerall = !Alive
trigger1 = var(45) >= 5
value = SCA
time = 1

[State FLASH]
type = PalFX
triggerall = !Alive
trigger1 = prevstateno = 35062
time = 1
add = 256,256,256

;---------------------------------------------------------------------------
; Player Death KO
[Statedef 5151]
type = U
movetype = H
physics = N
anim = 5010;5000
sprpriority = -5
velset = 0,0

[State 5150, 0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5150, StopSnd]
type = StopSnd
trigger1 = 1
channel = 4;チャージ音消去
persistent = 0

[State 5150, PlaySnd]
type = Null;PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time <= 0
persistent = 0
value = 1,13;うおおおおおおお・・・　だったけど今は仕様変更
channel = 0;VC

[State 5150, Sound]
type = PlaySnd
;trigger1 = Anim = 5010;5000
;trigger1 = AnimTime = 0
trigger1 = Time <= 0
value = 0,13;11,10ティウン
channel = 1;SE


;--------------------
[State 5150, 6] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
id=6800;ティウン判定用
pos = -4+floor(10*cos(1*pi/4)),-30+floor(10*sin(1*pi/4))
vel = 2*cos(1*pi/4),2*sin(1*pi/4)
removetime = 800
sprpriority = 7

[State 5150, 7] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(2*pi/4)),-30+floor(10*sin(2*pi/4))
vel = 2*cos(2*pi/4),2*sin(2*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 8] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(3*pi/4)),-30+floor(10*sin(3*pi/4))
vel = 2*cos(3*pi/4),2*sin(3*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 9] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(4*pi/4)),-30+floor(10*sin(4*pi/4))
vel = 2*cos(4*pi/4),2*sin(4*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 10] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(5*pi/4)),-30+floor(10*sin(5*pi/4))
vel = 2*cos(5*pi/4),2*sin(5*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 11] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(6*pi/4)),-30+floor(10*sin(6*pi/4))
vel = 2*cos(6*pi/4),2*sin(6*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 12] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(7*pi/4)),-30+floor(10*sin(7*pi/4))
vel = 2*cos(7*pi/4),2*sin(7*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 13] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(8*pi/4)),-30+floor(10*sin(8*pi/4))
vel = 2*cos(8*pi/4),2*sin(8*pi/4)
removetime = 800
sprpriority = 3

[State 5150, 14] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(1*pi/8)),-30+floor(10*sin(1*pi/8))
vel = 1*cos(1*pi/8),1*sin(1*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 15] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(3*pi/8)),-30+floor(10*sin(3*pi/8))
vel = 1*cos(3*pi/8),1*sin(3*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 16] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(5*pi/8)),-30+floor(10*sin(5*pi/8))
vel = 1*cos(5*pi/8),1*sin(5*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 17] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(7*pi/8)),-30+floor(10*sin(7*pi/8))
vel = 1*cos(7*pi/8),1*sin(7*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 18] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(9*pi/8)),-30+floor(10*sin(9*pi/8))
vel = 1*cos(9*pi/8),1*sin(9*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 19] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(11*pi/8)),-30+floor(10*sin(11*pi/8))
vel = 1*cos(11*pi/8),1*sin(11*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 20] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(13*pi/8)),-30+floor(10*sin(13*pi/8))
vel = 1*cos(13*pi/8),1*sin(13*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 21] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(15*pi/8)),-30+floor(10*sin(15*pi/8))
vel = 1*cos(15*pi/8),1*sin(15*pi/8)
removetime = 800
sprpriority = 3

[State 5150, 22] ;Dead Explod
type = Explod
trigger1 = Time = 0
anim = 6800;4028
pos = -4+floor(10*cos(9*pi/8)),-30+floor(10*sin(9*pi/8))
vel = 1*cos(9*pi/8),1*sin(9*pi/8)
removetime = 800
sprpriority = 3
;--------------------


[State 5150, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 5010;5000
trigger1 = AnimTime = 0
trigger2 = Anim != 5010;5000
StateType = L

[State 5150, AssertSpecial]
type = AssertSpecial
trigger1 = Anim = 5010;5000
trigger1 = AnimTime = 0
trigger2 = Anim != 5010;5000
flag = NoShadow
flag2 = Invisible

[State 5150, Anim]
type = ChangeAnim
trigger1 = Anim = 5010;5000
trigger1 = AnimTime = 0
value = 5110

[state 5150 , varset];多重ティウンストッパー
type = varset
trigger1=1;
var(4) = 1;

[state 5150, State]
type = ChangeState
;trigger1 = Time >= 25
trigger1 = Time > 25
value = 5150

;----------------
;[Statedef 5152]
;type = U

;関連する-2-3はstatedef.cnsにて



