;-| Basic Attacks |------------------------------------------------------
;------------------------------------------------------------------------
;立ち弱攻撃
;------------------------------------------------------------------------
[Statedef 200]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 200
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 200, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 200, 始動補正]
Type = VarSet
TriggerAll = PrevStateNo != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.85
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 200, コンボ補正]
Type = VarSet
TriggerAll = PrevStateNo = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.92
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 200, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 200, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 3
Value = 0, 0
Persistent = 0
IgNoreHitPause = 1

[State 200, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 4
MoveType = I

;----------------------------[攻撃]

[State 200, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
Trigger1 = AnimElemNo(0) = 3
Attr = S,NA			;SCA,NA,NP,NT,SA,SP,ST,HA,HP,HT
HitFlag = MAF		;HLMAFDP+-
GuardFlag = MA		;HLMA
AffectTeam = E		;EBF
AnimType = Light	;Light,Medium,Hard,Back,Up,DiagUp,Heavy
Air.AnimType = Light
Fall.AnimType = Back
Priority = 3,Hit	;Hit,Miss,Dodge
Damage = 26 + IfElse((Var(10) & 4),4,0), 0
PauseTime = 14, 14 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
SparkXY = 0, 0
HitSound = -1
GuardSound = -1
Ground.Type = High	;High,Low,Trip,Non
Air.Type = High
Ground.SlideTime = 16
Ground.HitTime = 16
Air.HitTime = 16
Guard.SlideTime = 15
Guard.HitTime = 15
Guard.CtrlTime = 15
AirGuard.HitTime = 15
AirGuard.CtrlTime = 15
Down.HitTime = 1
YAccel = .55
Ground.Velocity = -7, 0
Guard.Velocity = -8
Air.Velocity = -7, -4 + FVar(2)
AirGuard.Velocity = -6, -4
Down.Velocity = -3, -1
Ground.CornerPush.VelOff = -10
Guard.CornerPush.VelOff = -11
Air.CornerPush.VelOff = -7
AirGuard.CornerPush.VelOff = -8
Down.CornerPush.VelOff = -11
Air.Juggle = 0
SprPriority = 1
Fall = 0
Air.Fall = 0
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Var(10) & 4),18,0)
Fall.Damage = 0
ID = 200
HitOnce = 0
Kill = 1
Guard.Kill = 0
NumHits = 1
GetPower = 40, 30
GivePower = 20, 15

[State 200, ヒット定義];BOSS
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
Trigger1 = AnimElemNo(0) = 3
Attr = S,NA			;SCA,NA,NP,NT,SA,SP,ST,HA,HP,HT
HitFlag = MAF		;HLMAFDP+-
GuardFlag = MA		;HLMA
AffectTeam = E		;EBF
AnimType = Light	;Light,Medium,Hard,Back,Up,DiagUp,Heavy
Air.AnimType = Light
Fall.AnimType = Back
Priority = 4,Hit	;Hit,Miss,Dodge
Damage = 26 + IfElse((Var(10) & 4),4,0), 0
PauseTime = 14, 14 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
SparkXY = 0, 0
HitSound = -1
GuardSound = -1
Ground.Type = High	;High,Low,Trip,Non
Air.Type = High
Ground.SlideTime = 16
Ground.HitTime = 16
Air.HitTime = 16
Guard.SlideTime = 15
Guard.HitTime = 15
Guard.CtrlTime = 15
AirGuard.HitTime = 15
AirGuard.CtrlTime = 15
Down.HitTime = 1
YAccel = .55
Ground.Velocity = -7, 0
Guard.Velocity = -8
Air.Velocity = -7, -4 + FVar(2)
AirGuard.Velocity = -6, -4
Down.Velocity = -3, -1
Ground.CornerPush.VelOff = -10
Guard.CornerPush.VelOff = -11
Air.CornerPush.VelOff = -7
AirGuard.CornerPush.VelOff = -8
Down.CornerPush.VelOff = -11
Air.Juggle = 0
SprPriority = 1
Fall = 0
Air.Fall = 0
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Var(10) & 4),18,0)
Fall.Damage = 0
ID = 200
HitOnce = 0
Kill = 1
Guard.Kill = 0
NumHits = 1
GetPower = 40, 30
GivePower = 20, 15

[State 200, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,10,100)
Persistent = 0
IgNoreHitPause = 1

[State 200, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(200)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8000,8010)
ID = 8000
Pos = 10 + Floor((Target(200),Pos X - Pos X) * Facing),-50
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 200, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 200, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;立ち中攻撃
;------------------------------------------------------------------------
[Statedef 210]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 210
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 210, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 210, 始動補正]
Type = VarSet
TriggerAll = PrevStateNo != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.76
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 210, コンボ補正]
Type = VarSet
TriggerAll = PrevStateNo = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.82
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 210, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 210, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 3
Value = 0, 1
Persistent = 0
IgNoreHitPause = 1

[State 210, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 4
MoveType = I

;----------------------------[攻撃]

[State 210, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 3
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 68 + IfElse((Var(10) & 4),8,0), 0
PauseTime = 16, 16 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 18, 18
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 17
Ground.HitTime = 17
Air.HitTime = 17
Guard.SlideTime = 16
Guard.HitTime = 16
Guard.CtrlTime = 16
AirGuard.CtrlTime = 16
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -8
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -13
Guard.CornerPush.VelOff = -14
Air.CornerPush.VelOff = -12
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 210, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 3
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 48 + IfElse((Var(10) & 4),8,0), 2
PauseTime = 16, 16 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 18, 18
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 17
Ground.HitTime = 17
Air.HitTime = 17
Guard.SlideTime = 16
Guard.HitTime = 16
Guard.CtrlTime = 16
AirGuard.CtrlTime = 16
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -8
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -13
Guard.CornerPush.VelOff = -14
Air.CornerPush.VelOff = -12
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 210, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Time = 8
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 210, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,10,100)
Persistent = 0
IgNoreHitPause = 1

[State 210, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(200)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8001,8011)
ID = 8000
Pos = 10 + Floor((Target(200),Pos X - Pos X) * Facing),-70
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 210, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 210, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;立ち強攻撃
;------------------------------------------------------------------------
[Statedef 220]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 220
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 220, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 220, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.82
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 220, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 220, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 4
Persistent = 0
IgNoreHitPause = 1

[State 220, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 8
MoveType = I

[State 220, 前方に余白]
Type = Width
Trigger1 = 1
Player = 16,0

[State 220, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 7
Value = 52, 0
Persistent = 0
IgNoreHitPause = 1

[State 220, 振りのエフェクト]
Type = Explod
Trigger1 = AnimElem = 7
Anim = 8052
ID = 8052
Pos = 90,0
PosType = P1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = -2
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 220, 振動]
Type = EnvShake
Trigger1 = AnimElem = 7
Time = 12
Freq = 90
Ampl = -4
Phase = 90
Persistent = 0
IgNoreHitPause = 1

;----------------------------[ヒットポーズ処理]

[State 220, ヒットポーズ中のアニメ切り替え]
Type = ChangeAnim
Trigger1 = MoveContact = 1
Value = Anim
Elem = 7
Persistent = 0
IgNoreHitPause = 1

;----------------------------[攻撃]

[State 220, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = [5,7]
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 98 + IfElse((Var(10) & 4),12,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 27
Ground.HitTime = 27
Air.HitTime = 27
Guard.SlideTime = 26
Guard.HitTime = 26
Guard.CtrlTime = 26
AirGuard.CtrlTime = 26
YAccel = .55
Ground.Velocity = -11
Guard.Velocity = -10
Air.Velocity = -5, 9 + FVar(2)
AirGuard.Velocity = -2, 9
Ground.CornerPush.VelOff = -17
Guard.CornerPush.VelOff = -18
Air.CornerPush.VelOff = -15
GetPower = 120, 90
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 220, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = [5,7]
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 118 + IfElse((Var(10) & 4),12,0), 2
PauseTime = 20, 20 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 27
Ground.HitTime = 27
Air.HitTime = 27
Guard.SlideTime = 26
Guard.HitTime = 26
Guard.CtrlTime = 26
AirGuard.CtrlTime = 26
YAccel = .55
Ground.Velocity = -11
Guard.Velocity = -10
Air.Velocity = -5, 9 + FVar(2)
AirGuard.Velocity = -2, 9
Ground.CornerPush.VelOff = -17
Guard.CornerPush.VelOff = -18
Air.CornerPush.VelOff = -15
GetPower = 120, 90
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 220, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,11,100)
Persistent = 0
IgNoreHitPause = 1

[State 220, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(200)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(200),Pos X - Pos X) * Facing),-50 + Floor(Target(200),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 220, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 220, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;吹っ飛ばし攻撃
;------------------------------------------------------------------------
[Statedef 230]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 230
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 230, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 230, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.80
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 230, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 230, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 4
Persistent = 0
IgNoreHitPause = 1

[State 230, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 6
MoveType = I

[State 230, ボタンニュートラル検知 : 初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 10
Value = (Var(10) | 2) - 2
IgNoreHitPause = 1

[State 230, ボタンニュートラル検知]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Command != "hold_b"
V = 10
Value = (Var(10) | 2)
IgNoreHitPause = 1

[State 230, AI]
Type = VarSet
TriggerAll = Var(59) > 0
TriggerAll = (Var(59) > 5) || (Var(50) <= Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = NumHelper(60000)
TriggerAll = NumHelper(66666)
Trigger1 = RoundState != 2
Trigger2 = EnemyNear(Var(57)),Alive = 0
Trigger3 = EnemyNear(Var(57)),Life = 0
Trigger4 = P2Dist X < 0
Trigger5 = EnemyNear(Var(57)),MoveType = A
Trigger6 = InGuardDist || Helper(66666),Var(54)
Trigger7 = EnemyNear(Var(57)),StateType = A
Trigger7 = EnemyNear(Var(57)),MoveType = H
V = 10
Value = (Var(10) | 2)
IgNoreHitPause = 1

;----------------------------[ヒットポーズ処理]

[State 230, ヒットポーズ中のアニメ切り替え]
Type = ChangeAnim
Trigger1 = MoveContact = 1
Value = Anim
Elem = AnimElemNo(0) + 1
Persistent = 0
IgNoreHitPause = 1

;----------------------------[攻撃]

[State 230, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 120 + IfElse((Var(10) & 4),16,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 14
Ground.HitTime = 14
Air.HitTime = 14
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -5, -9
Guard.Velocity = -7
Air.Velocity = -4, -7 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -14
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 230, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 150 + IfElse((Var(10) & 4),16,0), 6
PauseTime = 20, 20 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 14
Ground.HitTime = 14
Air.HitTime = 14
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -5, -9
Guard.Velocity = -7
Air.Velocity = -4, -7 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -14
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 230, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Time = 12
Freq = 90
Ampl = -4
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 230, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,11,100)
Persistent = 0
IgNoreHitPause = 1

[State 230, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(200)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(200),Pos X - Pos X) * Facing),-110
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 230, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 230, タメ状態へ]
Type = ChangeState
TriggerAll = AnimElem = 4
Trigger1 = !(Var(10) & 2)
Value = 231

[State 230, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : タメ状態
;------------------------------------------------------------------------
[Statedef 231]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 231
PowerAdd = 0
SprPriority = 2

;----------------------------[初期処理]

[State 231, タメ時間の初期化]
Type = VarSet
Trigger1 = Time = 0
V = 5
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 231, タメ時間の蓄積]
Type = VarAdd
Trigger1 = Time > 0
V = 5
Value = 1
IgNoreHitPause = 1

[State 231, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 231, 点滅]
Type = PalFX
Trigger1 = AnimElem = 12
Trigger2 = AnimElem = 14
Trigger3 = AnimElem = 16
Time = 1
Add = 128,128,128
;Mul = 256,256,256
;SinAdd = 256,256,256,10
;Invertall = 0
;Color = 256

[State 231, タメ攻撃へ]
Type = ChangeState
TriggerAll = AnimElem = 4, > 0
Trigger1 = Var(59) <= 0
Trigger1 = Command != "hold_b"
Trigger2 = AnimTime = 0
Value = 232

[State 231, AI]
Type = ChangeState
TriggerAll = Var(59) > 0
TriggerAll = (Var(59) > 5) || (Var(50) <= Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = NumHelper(60000)
TriggerAll = NumHelper(66666)
TriggerAll = AnimElem = 4, > 0
Trigger1 = RoundState != 2
Trigger2 = EnemyNear(Var(57)),Alive = 0
Trigger3 = EnemyNear(Var(57)),Life = 0
Trigger4 = P2Dist X < 0
Trigger5 = EnemyNear(Var(57)),MoveType = A
Trigger6 = InGuardDist || Helper(66666),Var(54)
Value = 232

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : タメ攻撃
;------------------------------------------------------------------------
[Statedef 232]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 232
PowerAdd = 0
SprPriority = 2

;----------------------------[動作処理]

[State 232, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.80
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 232, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 232, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 2
Value = 0, 4
Persistent = 0
IgNoreHitPause = 1

[State 232, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 3
MoveType = I

;----------------------------[ヒットポーズ処理]

[State 232, ヒットポーズ中のアニメ切り替え]
Type = ChangeAnim
Trigger1 = MoveContact = 1
Value = Anim
Elem = AnimElemNo(0) + 1
Persistent = 0
IgNoreHitPause = 1

;----------------------------[攻撃]

[State 232, ヒット定義 : 小タメ]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Var(5) = [1,23]
Trigger1 = AnimElemNo(0) = 2
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 126 + (Var(5) / 2 / 6 * 6) + IfElse((Var(10) & 4),16,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 14
Ground.HitTime = 14
Air.HitTime = 14
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -5, -10
Guard.Velocity = -7
Air.Velocity = -4, -8 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -14
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 232, ヒット定義 : 中タメ]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Var(5) = [24,47]
Trigger1 = AnimElemNo(0) = 2
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 126 + (Var(5) / 2 / 6 * 6) + IfElse((Var(10) & 4),16,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 14
Ground.HitTime = 14
Air.HitTime = 14
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -5, -11
Guard.Velocity = -8
Air.Velocity = -5, -9 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -14
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 232, ヒット定義 : 最大タメ]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Var(5) >= 48
Trigger1 = AnimElemNo(0) = 2
Attr = S,NA
HitFlag = MAF
GuardFlag = M
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 140 + IfElse((Var(10) & 4),16,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 23
Ground.HitTime = 23
Air.HitTime = 23
Guard.SlideTime = 22
Guard.HitTime = 22
Guard.CtrlTime = 22
AirGuard.CtrlTime = 22
YAccel = .55
Ground.Velocity = -8, -12
Guard.Velocity = -8
Air.Velocity = -8, -10
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = -8
AirGuard.CornerPush.VelOff = -6
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 230
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 232, ヒット定義 : 小タメ]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Var(5) = [1,23]
Trigger1 = AnimElemNo(0) = 2
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 156 + (Var(5) / 2 / 6 * 6) + IfElse((Var(10) & 4),16,0), 6
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 14
Ground.HitTime = 14
Air.HitTime = 14
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -5, -10
Guard.Velocity = -7
Air.Velocity = -4, -8 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -14
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 232, ヒット定義 : 中タメ]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Var(5) = [24,47]
Trigger1 = AnimElemNo(0) = 2
Attr = S,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 156 + (Var(5) / 2 / 6 * 6) + IfElse((Var(10) & 4),16,0), 6
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 14
Ground.HitTime = 14
Air.HitTime = 14
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -5, -11
Guard.Velocity = -8
Air.Velocity = -5, -9 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -14
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 232, ヒット定義 : 最大タメ]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Var(5) >= 48
Trigger1 = AnimElemNo(0) = 2
Attr = S,NA
HitFlag = MAF
GuardFlag = M
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 170 + IfElse((Var(10) & 4),16,0), 6
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 23
Ground.HitTime = 23
Air.HitTime = 23
Guard.SlideTime = 22
Guard.HitTime = 22
Guard.CtrlTime = 22
AirGuard.CtrlTime = 22
YAccel = .55
Ground.Velocity = -8, -12
Guard.Velocity = -8
Air.Velocity = -8, -10
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = -8
AirGuard.CornerPush.VelOff = -6
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 230
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 232, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Time = 12
Freq = 90
Ampl = -4
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 232, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,11,100)
Persistent = 0
IgNoreHitPause = 1

[State 232, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(200)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(200),Pos X - Pos X) * Facing),-110
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 232, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(230)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(230),Pos X - Pos X) * Facing),-110
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 232, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 232, 相手壁バウンド状態へ]
Type = TargetState
TriggerAll = Var(5) >= 48
Trigger1 = NumTarget(230)
Trigger1 = MoveHit
Value = 23300
ID = 230
Persistent = 0
IgNoreHitPause = 1

[State 232, 相手ガードブレイク状態へ]
Type = TargetState
TriggerAll = Var(5) >= 48
Trigger1 = NumTarget(230)
Trigger1 = MoveGuarded
Value = 23310
ID = 230
Persistent = 0
IgNoreHitPause = 1

[State 232, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : 壁バウンドヒットストップ状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 23300]
Type    = A
MoveType= H
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 5030
PowerAdd = 0
SprPriority = 2

;----------------------------[動作処理]

[State 23300, ヒットポーズ演出]
Type = OffSet
Trigger1 = Time % 4 = 0
X = 1

[State 23300, ヒットポーズ演出]
Type = OffSet
Trigger1 = Time % 4 = 2
X = -1

[State 23300, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5030,5035]
Trigger1 = SelfAnimExist(5035)
Value = 5035
Persistent = 0
IgNoreHitPause = 1

[State 23300, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Anim != [5030,5035]
Value = 233
Persistent = 0
IgNoreHitPause = 1

[State 23300, Freeze Anim]
Type = ChangeAnim
Trigger1 = Time > 0
Value = Anim
IgNoreHitPause = 1

[State 23300, 相手吹っ飛び状態へ]
Type = ChangeState
Trigger1 = HitShakeOver
Value = 23301

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : 壁バウンド吹っ飛び状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 23301]
Type    = A
MoveType= H
Physics = N
Ctrl = 0
Anim = 5035
SprPriority = 2

;----------------------------[初期処理]

[State 23301, 吹っ飛び速度の適用]
Type = HitVelSet
Trigger1 = Time = 0
X = 1
Y = 1

;----------------------------[動作処理]

[State 23301, 重力]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 23301, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5050,5069]
TriggerAll = SelfAnimExist(5050)
Trigger1 = !SelfAnimExist(5035)
Trigger2 = AnimTime = 0
Value = 5050
Persistent = 0
IgNoreHitPause = 1

[State 23301, 相手壁激突の状態へ]
Type = ChangeState
Trigger1 = FrontEdgeBodyDist <= 10
Trigger2 = BackEdgeBodyDist <= 10
Trigger3 = Time >= 120
Value = 23302

[State 23301, 相手のステートを返還]
Type = SelfState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value = 5100

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : 壁激突の状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 23302]
Type    = A
MoveType= H
Physics = N
Juggle  = 0
Ctrl = 0
Anim = 5030
PowerAdd = 0
SprPriority = 2

;----------------------------[動作処理]

[State 23302, 座標の固定]
Type = PosFreeze
Trigger1 = 1
Value = 1

[State 23302, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 23302, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5030,5035]
Trigger1 = SelfAnimExist(5035)
Value = 5035
Persistent = 0
IgNoreHitPause = 1

[State 23302, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Anim != [5030,5035]
Value = 233
Persistent = 0
IgNoreHitPause = 1

[State 23302, Freeze Anim]
Type = ChangeAnim
Trigger1 = Time > 0
Value = Anim
IgNoreHitPause = 1

[State 23302, Effect : 壁激突]
Type = GameMakeAnim
Trigger1 = Time = 0
Value = 72
Pos = 0, 0
Under = SysVar(1) <= 14
Persistent = 0
IgNoreHitPause = 1

[State 23302, SE : 激突音]
Type = PlaySnd
Trigger1 = Time = 0
Value = F7, 2
Persistent = 0
IgNoreHitPause = 1

[State 23302, バウンドするように速度を反射]
Type = VelSet
Trigger1 = Time >= 12
X = -Vel X * 0.55
Y = Vel Y - 0.35 * Time
Persistent = 0

[State 23302, 相手のステートを返還]
Type = SelfState
Trigger1 = Time >= 12
Value = 5050

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : ガードブレイクのヒットストップ状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 23310]
Type    = U
MoveType= H
Physics = N
Juggle  = 0
Ctrl = 0
Anim = 5000 + (StateType = C) * 10 + (StateType = A) * 20
PowerAdd = 0
SprPriority = 2

;----------------------------[動作処理]

[State 23310, ヒットポーズ演出]
Type = OffSet
Trigger1 = Time % 4 = 0
X = 1

[State 23310, ヒットポーズ演出]
Type = OffSet
Trigger1 = Time % 4 = 2
X = -1

[State 23310, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5000,5030]
Trigger1 = SelfAnimExist(5002 + (SelfAnimExist(5002) * StateType != C) * 10 + (StateType = C) * 20)
Value = 5002 + (SelfAnimExist(5002) * StateType != C) * 10 + (StateType = C) * 20
Persistent = 0
IgNoreHitPause = 1

[State 23310, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5000,5030]
Trigger1 = SelfAnimExist(5001 + (SelfAnimExist(5001) * StateType != C) * 10 + (StateType = C) * 20)
Value = 5001 + (SelfAnimExist(5001) * StateType != C) * 10 + (StateType = C) * 20
Persistent = 0
IgNoreHitPause = 1

[State 23310, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Anim != [5000,5030]
Value = 233
Persistent = 0
IgNoreHitPause = 1

[State 23310, Freeze Anim]
Type = ChangeAnim
Trigger1 = Time > 0
Value = Anim
IgNoreHitPause = 1

[State 23310, 相手のけぞり状態へ]
Type = ChangeState
Trigger1 = HitShakeOver
Value = 23311

;------------------------------------------------------------------------
;吹っ飛ばし攻撃 : ガードブレイクのけぞり状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 23311]
Type    = U
MoveType= H
Physics = N
Ctrl = 0
SprPriority = 2

;----------------------------[動作処理]

[State 23311, 吹っ飛び速度の適用]
Type = HitVelSet
TriggerAll = StateType = A
Trigger1 = Time = 0
X = 1
Y = 1

[State 23311, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim = [5000,5030]
Trigger1 = Time = 0
Trigger1 = SelfAnimExist(Anim + 5)
Value = Anim + 5
Persistent = 0
IgNoreHitPause = 1

[State 23311, 相手のステートを返還]
Type = SelfState
Trigger1 = HitOver
Value = (StateType = C) * 11 + (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;しゃがみ弱攻撃
;------------------------------------------------------------------------
[Statedef 400]
Type    = C
MoveType= A
Physics = C
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 400
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 400, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 400, 始動補正]
Type = VarSet
TriggerAll = PrevStateNo != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 400, コンボ補正]
Type = VarSet
TriggerAll = PrevStateNo = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.92
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 400, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 400, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 4
Value = 0, 0
Persistent = 0
IgNoreHitPause = 1

[State 400, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 5
MoveType = I

;----------------------------[攻撃]

[State 400, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
Trigger1 = AnimElemNo(0) = 4
Attr = C,NA
HitFlag = M
GuardFlag = L
AffectTeam = E
AnimType = Light
Priority = 3,Hit
Damage = 27 + IfElse((Var(10) & 4),4,0), 0
PauseTime = 10, 10 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 15
Ground.HitTime = 15
Air.HitTime = 14
Guard.SlideTime = 14
Guard.HitTime = 14
Guard.CtrlTime = 14
AirGuard.CtrlTime = 14
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -9
Air.CornerPush.VelOff = -6
GetPower = 40, 30
GivePower = 20, 15
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 8 + IfElse((Var(10) & 4),18,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 400, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
Trigger1 = AnimElemNo(0) = 4
Attr = C,NA
HitFlag = MAF
GuardFlag = L
AffectTeam = E
AnimType = Light
Priority = 3,Hit
Damage = 27 + IfElse((Var(10) & 4),4,0), 2
PauseTime = 10, 10 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 15
Ground.HitTime = 15
Air.HitTime = 14
Guard.SlideTime = 14
Guard.HitTime = 14
Guard.CtrlTime = 14
AirGuard.CtrlTime = 14
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -9
Air.CornerPush.VelOff = -6
GetPower = 40, 30
GivePower = 20, 15
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Var(10) & 4),18,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 400, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,0,100)
Persistent = 0
IgNoreHitPause = 1

[State 400, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(400)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8000,8010)
ID = 8000
Pos = 10 + Floor((Target(400),Pos X - Pos X) * Facing),-20 + Floor(Target(400),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 400, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 400, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

;------------------------------------------------------------------------
;しゃがみ中攻撃
;------------------------------------------------------------------------
[Statedef 410]
Type    = C
MoveType= A
Physics = C
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 410
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 410, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 410, 始動補正]
Type = VarSet
TriggerAll = PrevStateNo != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.76
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 410, コンボ補正]
Type = VarSet
TriggerAll = PrevStateNo = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.82
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 410, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 410, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 1
Persistent = 0
IgNoreHitPause = 1

[State 410, ヒットポーズ中のアニメ切り替え]
Type = ChangeAnim
Trigger1 = MoveContact = 1
Value = Anim
Elem = 8
Persistent = 0
IgNoreHitPause = 1

[State 410, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 8
MoveType = I

;----------------------------[攻撃]

[State 410, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 51 + IfElse((Var(10) & 4),8,0), 0
PauseTime = 12, 12 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 14, 14
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 16
Air.HitTime = 13
Guard.SlideTime = 15
Guard.HitTime = 15
Guard.CtrlTime = 15
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -7
Air.Velocity = -6, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -11
Air.CornerPush.VelOff = -7
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 410, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = [6,7]
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 47 + IfElse((Var(10) & 4),8,0), 0
PauseTime = 12, 12 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 14, 14
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 15
Ground.HitTime = 15
Air.HitTime = 12
Guard.SlideTime = 14
Guard.HitTime = 14
Guard.CtrlTime = 14
AirGuard.CtrlTime = 11
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -7
Air.Velocity = -6, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -11
Air.CornerPush.VelOff = -7
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 410, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = [5,7]
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 51 + IfElse((Var(10) & 4),8,0), 2
PauseTime = 12, 12 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 14, 14
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 16
Air.HitTime = 13
Guard.SlideTime = 15
Guard.HitTime = 15
Guard.CtrlTime = 15
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -7
Air.Velocity = -6, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -11
Air.CornerPush.VelOff = -7
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 410, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Time = 8
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 410, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,0,100)
Persistent = 0
IgNoreHitPause = 1

[State 410, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(400)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8001,8011)
ID = 8000
Pos = 10 + Floor((Target(400),Pos X - Pos X) * Facing),-20 + Floor(Target(400),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 410, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 410, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

;------------------------------------------------------------------------
;しゃがみ強攻撃
;------------------------------------------------------------------------
[Statedef 420]
Type    = C
MoveType= A
Physics = C
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 420
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 420, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 420, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.82
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 420, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 420, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 4
Persistent = 0
IgNoreHitPause = 1

[State 420, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 6
MoveType = I

;----------------------------[攻撃]

[State 420, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 4,Hit
Damage = 91 + IfElse((Var(10) & 4),12,0), 0
PauseTime = 14, 14 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 19
Guard.SlideTime = 18
Guard.HitTime = 18
Guard.CtrlTime = 18
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -7
Air.Velocity = -2, -8 + FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -12
GetPower = 120, 90
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 420, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 4,Hit
Damage = 111 + IfElse((Var(10) & 4),12,0), 2
PauseTime = 14, 14 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 19
Guard.SlideTime = 18
Guard.HitTime = 18
Guard.CtrlTime = 18
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = -8
Guard.Velocity = -7
Air.Velocity = -2, -8 + FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = -16
Air.CornerPush.VelOff = -12
GetPower = 120, 90
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 420, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Time = 8
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 420, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,1,100)
Persistent = 0
IgNoreHitPause = 1

[State 420, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(400)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(400),Pos X - Pos X) * Facing),-100
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 420, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 420, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

;------------------------------------------------------------------------
;足払い
;------------------------------------------------------------------------
[Statedef 430]
Type    = C
MoveType= A
Physics = C
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 430
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 430, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 430, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.79
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 430, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 430, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 6
Value = 52, 0
Persistent = 0
IgNoreHitPause = 1

[State 430, 振りのエフェクト]
Type = Explod
Trigger1 = AnimElem = 6
Anim = 8052
ID = 8052
Pos = 90,0
PosType = P1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = -2
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 430, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 7
MoveType = I

[State 430, 前進]
Type = PosAdd
Trigger1 = AnimElem = 4
Trigger2 = AnimElem = 5
X = 14

[State 430, 振動]
Type = EnvShake
Trigger1 = AnimElem = 6
Time = 12
Freq = 90
Ampl = -4
Phase = 90
Persistent = 0
IgNoreHitPause = 1

;----------------------------[攻撃]

[State 430, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 6
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 126 + IfElse((Var(10) & 4),16,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Trip
Air.Type = Trip
Ground.SlideTime = 24
Ground.HitTime = 24
Air.HitTime = 20
Guard.SlideTime = 23
Guard.HitTime = 23
Guard.CtrlTime = 23
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = -2, -9
Guard.Velocity = -7
Air.Velocity = -3, -9 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -20
Air.CornerPush.VelOff = -15
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 430, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 6
Attr = C,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 156 + IfElse((Var(10) & 4),16,0), 6
PauseTime = 20, 20 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Trip
Air.Type = Trip
Ground.SlideTime = 24
Ground.HitTime = 24
Air.HitTime = 20
Guard.SlideTime = 23
Guard.HitTime = 23
Guard.CtrlTime = 23
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = -2, -9
Guard.Velocity = -7
Air.Velocity = -3, -9 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -20
Air.CornerPush.VelOff = -15
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 400
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 430, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(400)
Trigger1 = MoveHit
Value = 5600
ID = 400
Persistent = 0
IgNoreHitPause = 1

[State 430, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,11,100)
Persistent = 0
IgNoreHitPause = 1

[State 430, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(400)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(400),Pos X - Pos X) * Facing),-20 + Floor(Target(400),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 430, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 430, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

;------------------------------------------------------------------------
;空中弱攻撃
;------------------------------------------------------------------------
[Statedef 600]
Type    = A
MoveType= A
Physics = A
Juggle  = 0
Ctrl = 0
Anim = 600
PowerAdd = 0
SprPriority = 2

;----------------------------[初期処理]

[State 600, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 600, 始動補正]
Type = VarSet
TriggerAll = PrevStateNo != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 600, コンボ補正]
Type = VarSet
TriggerAll = PrevStateNo = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.92
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 600, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 600, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 4
Value = 0, 0
Persistent = 0
IgNoreHitPause = 1

[State 600, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 5
MoveType = I

[State 600, 空中ダッシュ慣性補正]
Type = VelMul
Trigger1 = PrevStateNo = 110 || PrevStateNo = 115
X = 0.92

;----------------------------[攻撃]

[State 600, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 4
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Light
Priority = 3,Hit
Damage = 23 + IfElse((Var(10) & 4),4,0), 0
PauseTime = 10, 10 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 10
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -8, -4 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 40, 30
GivePower = 20, 15
Fall = 0
Air.Fall = 0
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Var(10) & 4),18,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 600, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 4
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Light
Priority = 3,Hit
Damage = 23 + IfElse((Var(10) & 4),4,0), 2
PauseTime = 10, 10 + IfElse((Var(10) & 4),8,0)
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 10
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -8, -4 + FVar(2)
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 40, 30
GivePower = 20, 15
Fall = 0
Air.Fall = 0
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Var(10) & 4),18,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 600, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,0,100)
Persistent = 0
IgNoreHitPause = 1

[State 600, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8000,8010)
ID = 8000
Pos = 10 + Floor((Target(600),Pos X - Pos X) * Facing),-80 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 600, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 600, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 51
Ctrl = 1

;------------------------------------------------------------------------
;空中中攻撃
;------------------------------------------------------------------------
[Statedef 610]
Type    = A
MoveType= A
Physics = A
Juggle  = 0
Ctrl = 0
Anim = 610
PowerAdd = 0
SprPriority = 2

;----------------------------[初期処理]

[State 610, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 610, 始動補正]
Type = VarSet
TriggerAll = PrevStateNo != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.75
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 610, コンボ補正]
Type = VarSet
TriggerAll = PrevStateNo = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.83
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 610, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 610, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 4
Value = 0, 1
Persistent = 0
IgNoreHitPause = 1

[State 610, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 7
MoveType = I

[State 610, 空中ダッシュ慣性補正]
Type = VelMul
Trigger1 = PrevStateNo = 110 || PrevStateNo = 115
X = 0.92

;----------------------------[攻撃]

[State 610, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
Trigger1 = AnimElem = 4
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 14 + IfElse((Var(10) & 4),2,0), 0
PauseTime = 4, 4 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 6, 6
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 8
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -9
Guard.Velocity = -10
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -4
Air.CornerPush.VelOff = -2
GetPower = 20, 10
GivePower = 10, 5
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 610, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
Trigger1 = AnimElem = 5
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 14 + IfElse((Var(10) & 4),2,0), 0
PauseTime = 4, 4 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 6, 6
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 8
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -9
Guard.Velocity = -10
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -4
Air.CornerPush.VelOff = -2
GetPower = 20, 10
GivePower = 10, 5
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 610, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
Trigger1 = AnimElem = 6
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 18 + IfElse((Var(10) & 4),4,0), 0
PauseTime = 12, 12 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 14, 14
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 8
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -9
Guard.Velocity = -10
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -12
Air.CornerPush.VelOff = -6
GetPower = 40, 30
GivePower = 20, 15
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 610, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
Trigger1 = AnimElem = 4
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 14 + IfElse((Var(10) & 4),2,0), 2
PauseTime = 4, 4 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 6, 6
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 8
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -9
Guard.Velocity = -10
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -4
Air.CornerPush.VelOff = -2
GetPower = 20, 10
GivePower = 10, 5
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 610, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
Trigger1 = AnimElem = 5
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 14 + IfElse((Var(10) & 4),2,0), 2
PauseTime = 4, 4 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 6, 6
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 8
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -9
Guard.Velocity = -10
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -4
Air.CornerPush.VelOff = -2
GetPower = 20, 10
GivePower = 10, 5
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 610, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
Trigger1 = AnimElem = 6
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 18 + IfElse((Var(10) & 4),4,0), 2
PauseTime = 12, 12 + IfElse((Var(10) & 4),10,0)
Guard.PauseTime = 14, 14
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 10
Ground.HitTime = 10
Air.HitTime = 8
Guard.SlideTime = 6
Guard.HitTime = 6
Guard.CtrlTime = 6
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -9
Guard.Velocity = -10
Air.Velocity = -4, -4 + FVar(2)
AirGuard.Velocity = -7, 2
Ground.CornerPush.VelOff = -12
Air.CornerPush.VelOff = -6
GetPower = 40, 30
GivePower = 20, 15
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 610, SE : ヒット音, Part1]
Type = PlaySnd
TriggerAll = !MoveReversed
TriggerAll = AnimElem = 4, > 0
TriggerAll = AnimElem = 5, <= 0
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,50,100)
Persistent = 0
IgNoreHitPause = 1

[State 610, SE : ヒット音, Part2]
Type = PlaySnd
TriggerAll = !MoveReversed
TriggerAll = AnimElem = 5, > 0
TriggerAll = AnimElem = 6, <= 0
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,50,100)
Persistent = 0
IgNoreHitPause = 1

[State 610, SE : ヒット音, Part3]
Type = PlaySnd
TriggerAll = !MoveReversed
TriggerAll = AnimElem = 6, > 0
TriggerAll = AnimTime <= 0
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,50,100)
Persistent = 0
IgNoreHitPause = 1

[State 610, Effect : ヒットスパーク, Part1]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
TriggerAll = AnimElem = 4, > 0
TriggerAll = AnimElem = 5, <= 0
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8003,8011)
ID = 8000
Pos = 10 + Floor((Target(600),Pos X - Pos X) * Facing),-60 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 610, Effect : ヒットスパーク, Part2]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
TriggerAll = AnimElem = 5, > 0
TriggerAll = AnimElem = 6, <= 0
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8003,8011)
ID = 8000
Pos = 10 + Floor((Target(600),Pos X - Pos X) * Facing),-60 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 610, Effect : ヒットスパーク, Part3]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
TriggerAll = AnimElem = 6, > 0
TriggerAll = AnimTime <= 0
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8003,8011)
ID = 8000
Pos = 10 + Floor((Target(600),Pos X - Pos X) * Facing),-60 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 610, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 610, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 51
Ctrl = 1

;------------------------------------------------------------------------
;空中強攻撃
;------------------------------------------------------------------------
[Statedef 620]
Type    = A
MoveType= A
Physics = A
Juggle  = 0
Ctrl = 0
Anim = 620
PowerAdd = 0
SprPriority = 2

;----------------------------[初期処理]

[State 620, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 620, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.81
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 620, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 620, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 5
Persistent = 0
IgNoreHitPause = 1

[State 620, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 6
MoveType = I

[State 620, 空中ダッシュ慣性補正]
Type = VelMul
Trigger1 = PrevStateNo = 110 || PrevStateNo = 115
X = 0.92

;----------------------------[攻撃]

[State 620, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Hard
Priority = 4,Hit
Damage = 85 + IfElse((Var(10) & 4),12,0), 0
PauseTime = 14, 14 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 12
Ground.HitTime = 12
Air.HitTime = 14
Guard.SlideTime = 8
Guard.HitTime = 8
Guard.CtrlTime = 8
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -9, -2 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 120, 90
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 620, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 5
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Hard
Priority = 4,Hit
Damage = 105 + IfElse((Var(10) & 4),12,0), 2
PauseTime = 14, 14 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 12
Ground.HitTime = 12
Air.HitTime = 14
Guard.SlideTime = 8
Guard.HitTime = 8
Guard.CtrlTime = 8
AirGuard.CtrlTime = 6
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -9, -2 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 120, 90
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 620, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Time = 8
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 620, Effect : 黒ビーム1]
Type = Explod
Trigger1 = AnimElem = 2
Anim = 6020
ID = 6020
Pos = 50,-125
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 620, Effect : 黒ビーム2]
Type = Explod
Trigger1 = AnimElem = 2
Anim = 6020
ID = 6020
Pos = 50,-90
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 620, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,1,100)
Persistent = 0
IgNoreHitPause = 1

[State 620, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(600),Pos X - Pos X) * Facing),-100 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 620, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 620, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 51
Ctrl = 1

;------------------------------------------------------------------------
;打ち落とし攻撃
;------------------------------------------------------------------------
[Statedef 630]
Type    = A
MoveType= A
Physics = A
Juggle  = 0
Ctrl = 0
Anim = 630
PowerAdd = 0
SprPriority = 2

;----------------------------[初期処理]

[State 630, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 630, コンボ補正]
Type = VarSet
Trigger1 = MoveHit
FV = 0
Value = FVar(0) * 0.80
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 630, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 630, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 6
Value = 0, 5
Persistent = 0
IgNoreHitPause = 1

[State 630, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 9
MoveType = I

[State 630, 空中ダッシュ慣性補正]
Type = VelMul
Trigger1 = PrevStateNo = 110 || PrevStateNo = 115
X = 0.92

;----------------------------[攻撃]

[State 630, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = 6
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 122 + IfElse((Var(10) & 4),16,0), 0
PauseTime = 14, 14 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 24
Ground.HitTime = 24
Air.HitTime = 20
Guard.SlideTime = 23
Guard.HitTime = 23
Guard.CtrlTime = 23
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = -4, -7
Guard.Velocity = -7
Air.Velocity = -9, -2 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 630, ヒット定義]
Type = HitDef
TriggerAll = Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = [7,8]
Attr = A,NA
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 3,Hit
Damage = 32 + IfElse((Var(10) & 4),8,0), 0
PauseTime = 10, 10 + IfElse((Var(10) & 4),5,0)
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 5
Ground.HitTime = 5
Air.HitTime = 3
Guard.SlideTime = 4
Guard.HitTime = 4
Guard.CtrlTime = 4
AirGuard.CtrlTime = 2
YAccel = .55
Ground.Velocity = -4
Guard.Velocity = -5
Air.Velocity = -4, -2 + FVar(2)
AirGuard.Velocity = -5, -4
Ground.CornerPush.VelOff = -4
Air.CornerPush.VelOff = -2
GetPower = 160, 120
GivePower = 120, 90
Fall = 0
Air.Fall = 0
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Var(10) & 4),22,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 630, ヒット定義]
Type = HitDef
TriggerAll = Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = AnimElemNo(0) = [6,8]
Attr = A,NA
HitFlag = MAF
GuardFlag = HA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 152 + IfElse((Var(10) & 4),16,0), 6
PauseTime = 14, 14 + IfElse((Var(10) & 4),14,0)
Guard.PauseTime = 16, 16
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 24
Ground.HitTime = 24
Air.HitTime = 20
Guard.SlideTime = 23
Guard.HitTime = 23
Guard.CtrlTime = 23
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = -4, -7
Guard.Velocity = -7
Air.Velocity = -9, -2 + FVar(2)
AirGuard.Velocity = -8, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 160, 120
GivePower = 120, 90
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 600
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 630, 振動]
Type = EnvShake
TriggerAll = !MoveReversed
TriggerAll = MoveContact = 1
Trigger1 = AnimElem = 7, <= 0
Trigger2 = Var(31) > 0
Time = 12
Freq = 90
Ampl = -4
Phase = 90
Persistent = 0
IgNoreHitPause = 1

[State 630, Effect : ぐるぐる斬光]
Type = Explod
TriggerAll = NumExplod(6302) = 0
Trigger1 = AnimElem = 5
Anim = 6302
ID = 6302
Pos = 85, -75
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 630, Effect : 闇玉]
Type = Explod
TriggerAll = NumExplod(6304) = 0
Trigger1 = AnimElem = 5
Anim = 6304
ID = 6304
Pos = 85, -75
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 630, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
TriggerAll = MoveContact = 1
Trigger1 = AnimElem = 7, <= 0
Trigger2 = Var(31) > 0
Value = 1, IfElse(MoveHit,2,100)
Persistent = 0
IgNoreHitPause = 1

[State 630, SE : ヒット音]
Type = PlaySnd
TriggerAll = Var(31) <= 0
TriggerAll = !MoveReversed
TriggerAll = AnimElem = 7, > 0
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,5,101)
Persistent = 0
IgNoreHitPause = 1

[State 630, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
TriggerAll = MoveContact = 1
Trigger1 = AnimElem = 7, <= 0
Trigger2 = Var(31) > 0
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(600),Pos X - Pos X) * Facing),-60 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 630, Effect : ヒットスパーク]
Type = Explod
TriggerAll = Var(31) <= 0
TriggerAll = !MoveReversed
TriggerAll = NumTarget(600)
TriggerAll = AnimElem = 7, > 0
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8000,8010)
ID = 8000
Pos = 20 + Floor((Target(600),Pos X - Pos X) * Facing),-60 + Floor(Target(600),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 630, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = AnimElemTime(5) % 4 = 0
Trigger1 = AnimElemTime(5) > 0
Trigger1 = AnimElemTime(10) <= 0
Anim = 6010
ID = 6010
Pos = 95, -75
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 2 - Random % 30 * 0.1, -3.5 + Random % 10 * 0.1
Accel = 0, 0.085
Random = 60, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 630, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = AnimElemTime(5) % 4 = 2
Trigger1 = AnimElemTime(5) > 0
Trigger1 = AnimElemTime(10) <= 0
Anim = 6011
ID = 6011
Pos = 95, -75
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 2 - Random % 30 * 0.1, -3.5 + Random % 10 * 0.1
Accel = 0, 0.085
Random = 60, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 630, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 630, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 51
Ctrl = 1

;------------------------------------------------------------------------
;通常投げ : 掴み(前入力)
;------------------------------------------------------------------------
[Statedef 800]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 800
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 800, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 800, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 800, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 3
MoveType = I

;----------------------------[]

[State 800, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
TriggerAll = EnemyNear(Var(57)),StateType != A
TriggerAll = EnemyNear(Var(57)),StateNo != [120,159]
Trigger1 = AnimElemNo(0) = 2
Attr = S,NT
HitFlag = MFD
GuardFlag = 
AffectTeam = B
AnimType = Light
Priority = 3,Hit
Damage = 0, 0
PauseTime = 0, 0
Guard.PauseTime = 0, 0
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 30
Ground.HitTime = 30
Air.HitTime = 30
Guard.SlideTime = 26
Guard.HitTime = 26
Guard.CtrlTime = 26
AirGuard.CtrlTime = 26
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -4, -8
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 40, 30
GivePower = 20, 15
Guard.Dist = 0
P1SprPriority = 1
P2SprPriority = 2
P1Facing = 1
P2Facing = 1
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = IfElse(EnemyNear(Var(57)),StateType = L,1,30 + (Var(10) & 4) * 30)
ID = 800
Kill = 0
Guard.Kill = 0
Persistent = 1

[State 800, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(800)
TriggerAll = Target(800),IsHelper = 0
Trigger1 = MoveHit
Value = 820
ID = 800
Persistent = 0
IgNoreHitPause = 1

[State 800, 投げ成立ステートへ]
Type = ChangeState
TriggerAll = NumTarget(800)
Trigger1 = Target(800),StateNo = 820
Value = 810
Persistent = 0
IgNoreHitPause = 1

[State 800, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;通常投げ : 掴み(後ろ入力)
;------------------------------------------------------------------------
[Statedef 801]
Type    = S
MoveType= A
Physics = S
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 800
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 801, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 801, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 801, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 3
MoveType = I

;----------------------------[]

[State 801, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
TriggerAll = EnemyNear(Var(57)),StateType != A
TriggerAll = EnemyNear(Var(57)),StateNo != [120,159]
Trigger1 = AnimElemNo(0) = 2
Attr = S,NT
HitFlag = MFD
GuardFlag = 
AffectTeam = B
AnimType = Light
Priority = 3,Hit
Damage = 0, 0
PauseTime = 0, 0
Guard.PauseTime = 0, 0
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 30
Ground.HitTime = 30
Air.HitTime = 30
Guard.SlideTime = 26
Guard.HitTime = 26
Guard.CtrlTime = 26
AirGuard.CtrlTime = 26
YAccel = .55
Ground.Velocity = -6
Guard.Velocity = -7
Air.Velocity = -4, -8
AirGuard.Velocity = -6, -4
Ground.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 0, 0
GivePower = 0, 0
Guard.Dist = 0
P1SprPriority = 1
P2SprPriority = 2
P1Facing = 1
P2Facing = 1
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = IfElse(EnemyNear(Var(57)),StateType = L,1,30 + (Var(10) & 4) * 30)
ID = 800
Kill = 0
Guard.Kill = 0
Persistent = 1

[State 801, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(800)
TriggerAll = Target(800),IsHelper = 0
Trigger1 = MoveHit
Value = 820
ID = 800
Persistent = 0
IgNoreHitPause = 1

[State 801, 投げ成立ステートへ]
Type = ChangeState
TriggerAll = NumTarget(800)
Trigger1 = Target(800),StateNo = 820
Value = 810
Persistent = 0
IgNoreHitPause = 1

[State 801, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;通常投げ : 投げ成立
;------------------------------------------------------------------------
[Statedef 810]
Type    = S
MoveType= A
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 810
PowerAdd = 120

;----------------------------[動作処理]

[State 810, 相手がいない場合は退去]
Type = ChangeState
TriggerAll = AnimElem = 8, < 0
Trigger1 = NumTarget(800) = 0
Trigger2 = NumTarget(800)
Trigger2 = Target(800),StateNo != 820
Value = 0
Ctrl = 1

[State 810, 自分振り向く]
Type = Turn
TriggerAll = PrevStateNo = 801
Trigger1 = AnimElem = 5
Persistent = 0

[State 810, 相手振り向かせる]
Type = TargetFacing
TriggerAll = PrevStateNo = 801
TriggerAll = NumTarget(800)
Trigger1 = AnimElem = 5
Value = -1
Persistent = 0

[State 810, SE : 掴み]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 10
Persistent = 0

[State 810, SE : 放り投げ]
Type = PlaySnd
Trigger1 = AnimElem = 8
Value = 0, 12
Persistent = 0

[State 810, 画面端に余白を作る]
Type = Width
Trigger1 = AnimElem = 8, < 0
Edge = 60,0

[State 810, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 810, 無敵]
Type = NotHitBy
Trigger1 = AnimElem = 8, < 0
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 810, 掴んだ相手の位置 : Elem = 1]
Type = TargetBind
Trigger1 = AnimElemTime(2) < 0
Time = 1
ID = 800
Pos = 90, 0

[State 810, 掴んだ相手の位置 : Elem = 2]
Type = TargetBind
Trigger1 = AnimElemTime(2) >= 0
Trigger1 = AnimElemTime(3) < 0
Time = 1
ID = 800
Pos = 80, 0

[State 810, 掴んだ相手の位置 : Elem = 3]
Type = TargetBind
Trigger1 = AnimElemTime(3) >= 0
Trigger1 = AnimElemTime(4) < 0
Time = 1
ID = 800
Pos = 70, -120

[State 810, 掴んだ相手の位置 : Elem = 4]
Type = TargetBind
Trigger1 = AnimElemTime(4) >= 0
Trigger1 = AnimElemTime(5) < 0
Time = 1
ID = 800
Pos = 0, -170

[State 810, 掴んだ相手の位置 : Elem = 5]
Type = TargetBind
Trigger1 = AnimElemTime(5) >= 0
Trigger1 = AnimElemTime(6) < 0
Time = 1
ID = 800
Pos = 0, -160

[State 810, 掴んだ相手の位置 : Elem = 6]
Type = TargetBind
Trigger1 = AnimElemTime(6) >= 0
Trigger1 = AnimElemTime(7) < 0
Time = 1
ID = 800
Pos = 0, -140

[State 810, 掴んだ相手の位置 : Elem = 7]
Type = TargetBind
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(8) < 0
Time = 1
ID = 800
Pos = 30, -150

[State 810, 掴んだ相手の位置 : Elem = 8]
Type = TargetBind
Trigger1 = AnimElemTime(8) = 0
Time = 1
ID = 800
Pos = 80, -150

[State 3010, 掴んだ相手のゲージ増減]
Type = TargetPowerAdd
Trigger1 = AnimElemTime(8) = 0
Value = 80
ID = 800

[State 810, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = Var(31) <= 0
Trigger1 = AnimElemTime(8) = 0
Value = -Floor(100 * Const(Data.Attack) / 100 * FVar(0) * FVar(1))
ID = 800

[State 810, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = Var(31) > 0
Trigger1 = AnimElemTime(8) = 0
Value = -Floor(180 * Const(Data.Attack) / 100 * FVar(0) * FVar(1))
ID = 800

[State 810, 掴んだ相手のステート変更]
Type = TargetState
Trigger1 = AnimElemTime(8) = 0
Value = 815821
ID = 800

[State 810, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(815) = 0
Trigger1 = AnimElem = 8
HelperType = Normal
Name = "Sound&Spark"
ID = 815
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 815
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Size.XScale = 0.5
Size.YScale = 0.5

[State 810, コンボ補正]
Type = VarSet
Trigger1 = AnimElemTime(8) = 0
FV = 0
Value = FVar(0) * 0.80
Persistent = 0

[State 810, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;通常投げ : ヒット音&ヒットスパーク代行ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 815]
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 10000

;----------------------------[動作処理]

[State 815, 本体に追従]
Type = BindToRoot
Trigger1 = IsHelper
Pos = 0,0
IgNoreHitPause = 1

;----------------------------[]

[State 815, SE : ヒット音, Part1]
Type = PlaySnd
Trigger1 = NumEnemy
Trigger1 = Enemy(0),StateNo = 815821
Trigger1 = Enemy(0),NumTarget(815821)
Trigger1 = Enemy(0),MoveContact
Trigger1 = Enemy(0),HitCount = 1
Trigger2 = NumEnemy >= 2
Trigger2 = Enemy(1),StateNo = 815821
Trigger2 = Enemy(1),NumTarget(815821)
Trigger2 = Enemy(1),MoveContact
Trigger2 = Enemy(1),HitCount = 1
Trigger3 = NumPartner
Trigger3 = Partner,StateNo = 815821
Trigger3 = Partner,NumTarget(815821)
Trigger3 = Partner,MoveContact
Trigger3 = Partner,HitCount = 1
Trigger4 = NumEnemy
Trigger4 = Enemy(0),StateNo = 821821
Trigger4 = Enemy(0),NumTarget(821821)
Trigger4 = Enemy(0),MoveContact
Trigger4 = Enemy(0),HitCount = 1
Trigger5 = NumEnemy >= 2
Trigger5 = Enemy(1),StateNo = 821821
Trigger5 = Enemy(1),NumTarget(821821)
Trigger5 = Enemy(1),MoveContact
Trigger5 = Enemy(1),HitCount = 1
Trigger6 = NumPartner
Trigger6 = Partner,StateNo = 821821
Trigger6 = Partner,NumTarget(821821)
Trigger6 = Partner,MoveContact
Trigger6 = Partner,HitCount = 1
Value = 1, 2
Persistent = 0
IgNoreHitPause = 1

[State 815, SE : ヒット音, Part2]
Type = PlaySnd
Trigger1 = NumEnemy
Trigger1 = Enemy(0),StateNo = 815821
Trigger1 = Enemy(0),NumTarget(815821)
Trigger1 = Enemy(0),MoveContact
Trigger1 = Enemy(0),HitCount = 2
Trigger2 = NumEnemy >= 2
Trigger2 = Enemy(1),StateNo = 815821
Trigger2 = Enemy(1),NumTarget(815821)
Trigger2 = Enemy(1),MoveContact
Trigger2 = Enemy(1),HitCount = 2
Trigger3 = NumPartner
Trigger3 = Partner,StateNo = 815821
Trigger3 = Partner,NumTarget(815821)
Trigger3 = Partner,MoveContact
Trigger3 = Partner,HitCount = 2
Trigger4 = NumEnemy
Trigger4 = Enemy(0),StateNo = 821821
Trigger4 = Enemy(0),NumTarget(821821)
Trigger4 = Enemy(0),MoveContact
Trigger4 = Enemy(0),HitCount = 2
Trigger5 = NumEnemy >= 2
Trigger5 = Enemy(1),StateNo = 821821
Trigger5 = Enemy(1),NumTarget(821821)
Trigger5 = Enemy(1),MoveContact
Trigger5 = Enemy(1),HitCount = 2
Trigger6 = NumPartner
Trigger6 = Partner,StateNo = 821821
Trigger6 = Partner,NumTarget(821821)
Trigger6 = Partner,MoveContact
Trigger6 = Partner,HitCount = 2
Value = 1, 2
Persistent = 0
IgNoreHitPause = 1

[State 815, SE : ヒット音, Part3]
Type = PlaySnd
Trigger1 = NumEnemy
Trigger1 = Enemy(0),StateNo = 815821
Trigger1 = Enemy(0),NumTarget(815821)
Trigger1 = Enemy(0),MoveContact
Trigger1 = Enemy(0),HitCount = 3
Trigger2 = NumEnemy >= 2
Trigger2 = Enemy(1),StateNo = 815821
Trigger2 = Enemy(1),NumTarget(815821)
Trigger2 = Enemy(1),MoveContact
Trigger2 = Enemy(1),HitCount = 3
Trigger3 = NumPartner
Trigger3 = Partner,StateNo = 815821
Trigger3 = Partner,NumTarget(815821)
Trigger3 = Partner,MoveContact
Trigger3 = Partner,HitCount = 3
Trigger4 = NumEnemy
Trigger4 = Enemy(0),StateNo = 821821
Trigger4 = Enemy(0),NumTarget(821821)
Trigger4 = Enemy(0),MoveContact
Trigger4 = Enemy(0),HitCount = 3
Trigger5 = NumEnemy >= 2
Trigger5 = Enemy(1),StateNo = 821821
Trigger5 = Enemy(1),NumTarget(821821)
Trigger5 = Enemy(1),MoveContact
Trigger5 = Enemy(1),HitCount = 3
Trigger6 = NumPartner
Trigger6 = Partner,StateNo = 821821
Trigger6 = Partner,NumTarget(821821)
Trigger6 = Partner,MoveContact
Trigger6 = Partner,HitCount = 3
Value = 1, 2
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 815, P2ヒットスパーク, Part1]
Type = Explod
TriggerAll = NumEnemy
Trigger1 = Enemy(0),StateNo = 815821
Trigger1 = Enemy(0),NumTarget(815821)
Trigger1 = Enemy(0),MoveContact
Trigger1 = Enemy(0),HitCount = 1
Trigger2 = Enemy(0),StateNo = 821821
Trigger2 = Enemy(0),NumTarget(821821)
Trigger2 = Enemy(0),MoveContact
Trigger2 = Enemy(0),HitCount = 1
Anim = IfElse(Enemy(0),MoveHit,8002,8012)
ID = 8000
Pos = Floor((Enemy(0),Pos X - Pos X) * Facing),-20 + Floor(Enemy(0),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, P2ヒットスパーク, Part2]
Type = Explod
TriggerAll = NumEnemy
Trigger1 = Enemy(0),StateNo = 815821
Trigger1 = Enemy(0),NumTarget(815821)
Trigger1 = Enemy(0),MoveContact
Trigger1 = Enemy(0),HitCount = 2
Trigger2 = Enemy(0),StateNo = 821821
Trigger2 = Enemy(0),NumTarget(821821)
Trigger2 = Enemy(0),MoveContact
Trigger2 = Enemy(0),HitCount = 2
Anim = IfElse(Enemy(0),MoveHit,8002,8012)
ID = 8000
Pos = Floor((Enemy(0),Pos X - Pos X) * Facing),-20 + Floor(Enemy(0),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, P2ヒットスパーク, Part3]
Type = Explod
TriggerAll = NumEnemy
Trigger1 = Enemy(0),StateNo = 815821
Trigger1 = Enemy(0),NumTarget(815821)
Trigger1 = Enemy(0),MoveContact
Trigger1 = Enemy(0),HitCount = 3
Trigger2 = Enemy(0),StateNo = 821821
Trigger2 = Enemy(0),NumTarget(821821)
Trigger2 = Enemy(0),MoveContact
Trigger2 = Enemy(0),HitCount = 3
Anim = IfElse(Enemy(0),MoveHit,8002,8012)
ID = 8000
Pos = Floor((Enemy(0),Pos X - Pos X) * Facing),-20 + Floor(Enemy(0),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, P4ヒットスパーク, Part1]
Type = Explod
TriggerAll = NumEnemy >= 2
Trigger1 = Enemy(1),StateNo = 815821
Trigger1 = Enemy(1),NumTarget(815821)
Trigger1 = Enemy(1),MoveContact
Trigger1 = Enemy(1),HitCount = 1
Trigger2 = Enemy(1),StateNo = 821821
Trigger2 = Enemy(1),NumTarget(821821)
Trigger2 = Enemy(1),MoveContact
Trigger2 = Enemy(1),HitCount = 1
Anim = IfElse(Enemy(1),MoveHit,8002,8012)
ID = 8000
Pos = Floor((Enemy(1),Pos X - Pos X) * Facing),-20 + Floor(Enemy(1),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, P4ヒットスパーク, Part2]
Type = Explod
TriggerAll = NumEnemy >= 2
Trigger1 = Enemy(1),StateNo = 815821
Trigger1 = Enemy(1),NumTarget(815821)
Trigger1 = Enemy(1),MoveContact
Trigger1 = Enemy(1),HitCount = 2
Trigger2 = Enemy(1),StateNo = 821821
Trigger2 = Enemy(1),NumTarget(821821)
Trigger2 = Enemy(1),MoveContact
Trigger2 = Enemy(1),HitCount = 2
Anim = IfElse(Enemy(1),MoveHit,8002,8012)
ID = 8000
Pos = Floor((Enemy(1),Pos X - Pos X) * Facing),-20 + Floor(Enemy(1),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, P4ヒットスパーク, Part3]
Type = Explod
TriggerAll = NumEnemy >= 2
Trigger1 = Enemy(1),StateNo = 815821
Trigger1 = Enemy(1),NumTarget(815821)
Trigger1 = Enemy(1),MoveContact
Trigger1 = Enemy(1),HitCount = 3
Trigger2 = Enemy(1),StateNo = 821821
Trigger2 = Enemy(1),NumTarget(821821)
Trigger2 = Enemy(1),MoveContact
Trigger2 = Enemy(1),HitCount = 3
Anim = IfElse(Enemy(1),MoveHit,8002,8012)
ID = 8000
Pos = Floor((Enemy(1),Pos X - Pos X) * Facing),-20 + Floor(Enemy(1),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, パートナーヒットスパーク, Part1]
Type = Explod
TriggerAll = NumPartner
Trigger1 = Partner,StateNo = 815821
Trigger1 = Partner,NumTarget(815821)
Trigger1 = Partner,MoveContact
Trigger1 = Partner,HitCount = 1
Trigger2 = Partner,StateNo = 821821
Trigger2 = Partner,NumTarget(821821)
Trigger2 = Partner,MoveContact
Trigger2 = Partner,HitCount = 1
Anim = IfElse(Partner,MoveHit,8002,8012)
ID = 8000
Pos = Floor((Partner,Pos X - Pos X) * Facing),-20 + Floor(Partner,Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, パートナーヒットスパーク, Part2]
Type = Explod
TriggerAll = NumPartner
Trigger1 = Partner,StateNo = 815821
Trigger1 = Partner,NumTarget(815821)
Trigger1 = Partner,MoveContact
Trigger1 = Partner,HitCount = 2
Trigger2 = Partner,StateNo = 821821
Trigger2 = Partner,NumTarget(821821)
Trigger2 = Partner,MoveContact
Trigger2 = Partner,HitCount = 2
Anim = IfElse(Partner,MoveHit,8002,8012)
ID = 8000
Pos = Floor((Partner,Pos X - Pos X) * Facing),-20 + Floor(Partner,Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 815, パートナーヒットスパーク, Part3]
Type = Explod
TriggerAll = NumPartner
Trigger1 = Partner,StateNo = 815821
Trigger1 = Partner,NumTarget(815821)
Trigger1 = Partner,MoveContact
Trigger1 = Partner,HitCount = 3
Trigger2 = Partner,StateNo = 821821
Trigger2 = Partner,NumTarget(821821)
Trigger2 = Partner,MoveContact
Trigger2 = Partner,HitCount = 3
Anim = IfElse(Partner,MoveHit,8002,8012)
ID = 8000
Pos = Floor((Partner,Pos X - Pos X) * Facing),-20 + Floor(Partner,Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 815, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = NumEnemy >= 2
Trigger1 = NumPartner
Trigger1 = Root,MoveType != H
Trigger1 = Root,NumTarget(800) = 0
Trigger1 = Enemy(0),MoveType != H
Trigger1 = Enemy(1),MoveType != H
Trigger1 = Partner,MoveType != H
Trigger2 = Root,StateNo = 810
Trigger2 = Root,AnimElemTime(7) >= 0
Trigger2 = Root,AnimElemTime(8) < 0
Trigger3 = Time > 150

;------------------------------------------------------------------------
;通常投げ : 相手拘束状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 820]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0

;----------------------------[動作処理]

[State 820, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 820, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 820, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 820

[State 820, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 820, ステート返還直前に着陸]
Type = PosSet
Trigger1 = !GetHitVar(IsBound)
Y = 0
IgNoreHitPause = 1

[State 820, ステート返還]
Type = SelfState
Trigger1 = !GetHitVar(IsBound)
Value = 5000
IgNoreHitPause = 1

;------------------------------------------------------------------------
;通常投げ : 相手吹っ飛び状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 815821]
Type    = A
MoveType= H
Physics = N
VelSet = -3,-8
Ctrl = 0
Anim = 5035
PowerAdd = 0

;----------------------------[動作処理]

[State 815821, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 815821, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 815821, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 815821, 重力]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 815821, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 821

[State 815821, 喰らい中のアニメ指定]
Type = Null;ChangeAnim
TriggerAll = Anim != [5050,5069]
TriggerAll = SelfAnimExist(5050)
Trigger1 = !SelfAnimExist(5035)
Trigger2 = AnimTime = 0
Value = 5050
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 815821, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Time = 0
Attr = A,NA
HitFlag = MAF
GuardFlag = 
AffectTeam = B
AnimType = Hard
Priority = 7,Hit
Damage = 100, 0
PauseTime = 12, 12
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 30
Ground.HitTime = 30
Air.HitTime = 30
Guard.SlideTime = 26
Guard.HitTime = 26
Guard.CtrlTime = 26
AirGuard.CtrlTime = 26
YAccel = .55
Ground.Velocity = 0
Guard.Velocity = 0
Air.Velocity = 0, 2
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 200, 160
GivePower = 160, 120
Guard.Dist = 0
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99
ID = 815821
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 815821, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(815821)
Trigger1 = MoveHit
Value = 821821
ID = 815821
Persistent = 0
IgNoreHitPause = 1

[State 815821, 相手振り向かせる]
Type = TargetFacing
TriggerAll = NumTarget(815821)
TriggerAll = MoveHit
Trigger1 = Facing != Target(815821),Facing
Value = -1
ID = 815821
Persistent = 0
IgNoreHitPause = 1

[State 815821, 相手のステートを返還]
Type = SelfState
TriggerAll = HitShakeOver
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value = 5100

;------------------------------------------------------------------------
;通常投げ : 相手吹っ飛び状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 821821]
Type    = A
MoveType= H
Physics = N
VelSet = -3,0
Ctrl = 0
Anim = 5035
PowerAdd = 0

;----------------------------[動作処理]

[State 821821, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 821821, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 821821, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 821821, 重力]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 821821, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 821

[State 821821, 喰らい中のアニメ指定]
Type = Null;ChangeAnim
TriggerAll = Anim != [5050,5069]
TriggerAll = SelfAnimExist(5050)
Trigger1 = !SelfAnimExist(5035)
Trigger2 = AnimTime = 0
Value = 5050
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 821821, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
Trigger1 = Time = 0
Attr = A,NA
HitFlag = MAF
GuardFlag = 
AffectTeam = B
AnimType = Hard
Priority = 7,Hit
Damage = 100, 0
PauseTime = 12, 12
Guard.PauseTime = 12, 12
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 30
Ground.HitTime = 30
Air.HitTime = 30
Guard.SlideTime = 26
Guard.HitTime = 26
Guard.CtrlTime = 26
AirGuard.CtrlTime = 26
YAccel = .55
Ground.Velocity = 0
Guard.Velocity = 0
Air.Velocity = 0, 2
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 200, 160
GivePower = 160, 120
Guard.Dist = 0
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99
ID = 821821
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 821821, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(821821)
Trigger1 = MoveHit
Value = 821821
ID = 821821
Persistent = 0
IgNoreHitPause = 1

[State 821821, 相手振り向かせる]
Type = TargetFacing
TriggerAll = NumTarget(821821)
TriggerAll = MoveHit
Trigger1 = Facing != Target(821821),Facing
Value = -1
ID = 821821
Persistent = 0
IgNoreHitPause = 1

[State 821821, 相手のステートを返還]
Type = SelfState
TriggerAll = HitShakeOver
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value = 5100
