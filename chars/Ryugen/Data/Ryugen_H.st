;-| Hyper Attacks |------------------------------------------------------
;------------------------------------------------------------------------
;命の蝋燭
;------------------------------------------------------------------------
[Statedef 3000]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3000
PowerAdd = 0
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 3000, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 3000, 始動補正]
Type = VarSet
TriggerAll = Var(31) <= 0
Trigger1 = EnemyNear(Var(57)),MoveType = H
FV = 0
Value = FVar(0) * 0.78
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 3000, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 3000, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = AnimElem = 4, > 0
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 3000, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 5
Persistent = 0
IgNoreHitPause = 1

[State 3000, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 6
MoveType = I

;----------------------------[暗転]

[State 3000, 無敵]
Type = NotHitBy
Trigger1 = AnimElem = 4
Value = SCA,AA,AP,AT
Time = 40

[State 3000, 暗転の時間停止]
Type = Pause
Trigger1 = AnimElem = 4
Time = 40
MoveTime = 40

[State 3000, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(39000) = 0
Trigger1 = AnimElem = 4
HelperType = Normal
Name = "SuperPause"
ID = 39000
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
StateNo = 39000
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Size.XScale = 0.5
Size.YScale = 0.5

[State 3000, ゲージ消費]
Type = PowerAdd
Trigger1 = AnimElem = 4
Value = -1000

[State 3000, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 5
HelperType = Normal
Name = "Effect_Helper"
ID = 3005
Pos = 20,-95
PosType = P1
Facing = 1
StateNo = 3005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Persistent = 0
IgNoreHitPause = 1

[State 3000, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 5
HelperType = Normal
Name = "Effect_Helper"
ID = 3005
Pos = 20,-60
PosType = P1
Facing = 1
StateNo = 3005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Persistent = 0
IgNoreHitPause = 1

;----------------------------[攻撃]

[State 3000, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
TriggerAll = EnemyNear(Var(57)),StateNo != [120,159]
Trigger1 = AnimElem = 3
Attr = S,HT
HitFlag = M
GuardFlag = 
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
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
P1SprPriority = 2
P2SprPriority = 1
P1Facing = 1
P2Facing = 1
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 3000
Kill = 0
Guard.Kill = 0
Persistent = 1

[State 3000, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
Trigger1 = AnimElemNo(0) = 5
Attr = S,HA
HitFlag = MA
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 5,Hit
Damage = 68 + IfElse((Var(10) & 4),12,0), 0
PauseTime = 20, 20 + IfElse((Var(10) & 4),12,0)
Guard.PauseTime = 22, 22
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = Low
Air.Type = Low
Ground.SlideTime = 25
Ground.HitTime = 25
Air.HitTime = 25
Guard.SlideTime = 24
Guard.HitTime = 24
Guard.CtrlTime = 24
AirGuard.CtrlTime = 24
YAccel = .55
Ground.Velocity = -11
Guard.Velocity = -10
Air.Velocity = -5, -2 + FVar(2)
AirGuard.Velocity = -2, -2
Ground.CornerPush.VelOff = -7
Guard.CornerPush.VelOff = -8
Air.CornerPush.VelOff = -4
GetPower = 0, 0
GivePower = 60, 45
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 28 + IfElse((Var(10) & 4),28,0)
ID = 3001
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 3000, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3000)
TriggerAll = Target(3000),IsHelper = 0
Trigger1 = MoveHit
Value = 3020
ID = 3000
Persistent = 0
IgNoreHitPause = 1

[State 3000, 投げ成立ステートへ]
Type = ChangeState
TriggerAll = NumTarget(3000)
Trigger1 = Target(3000),StateNo = 3020
Value = 3010
Persistent = 0
IgNoreHitPause = 1

[State 3000, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
TriggerAll = NumTarget(3001)
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,1,100)
Persistent = 0
IgNoreHitPause = 1

[State 3000, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(3001)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(3001),Pos X - Pos X) * Facing),-60 + Floor(Target(3001),Pos Y - Pos Y)
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

[State 3000, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
TriggerAll = NumTarget(3001)
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 3000, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;命の蝋燭 : ビームエフェクト
;------------------------------------------------------------------------
[Statedef 3005]
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 6020
SprPriority = 5

;----------------------------[]

[State 3005, CPU性能軌道]
Type = AngleSet
Trigger1 = Time = 0
Value = -10

[State 3005, 角度描画]
Type = AngleDraw
Trigger1 = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 1
IgNoreHitPause = 1

[State 3005, 透過処理]
Type = Trans
Trigger1 = 1
Trans = Sub
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 1
IgNoreHitPause = 1

[State 3005, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 3005, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3005, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 10000
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 3005, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger2 = Root,MoveType = H

;------------------------------------------------------------------------
;命の蝋燭 : 投げ成立
;------------------------------------------------------------------------
[Statedef 3010]
Type    = S
MoveType= A
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 3010
PowerAdd = 0

;----------------------------[暗転]

[State 3010, 暗転の時間停止]
Type = Pause
Trigger1 = AnimElem = 6
Time = 40
MoveTime = 40
Persistent = 0

[State 3010, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(39000) = 0
Trigger1 = AnimElem = 6
HelperType = Normal
Name = "SuperPause"
ID = 39000
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
StateNo = 39000
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Size.XScale = 0.5
Size.YScale = 0.5
Persistent = 0

[State 3010, ゲージ消費]
Type = PowerAdd
Trigger1 = AnimElem = 6
Value = -1000
Persistent = 0

;----------------------------[動作処理]

[State 3010, 闇玉エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(6300)
Trigger1 = AnimElemTime(50) = 0
Trigger2 = AnimElem = 50, < 0
Trigger2 = NumTarget(3000) = 0
Trigger3 = AnimElem = 50, < 0
Trigger3 = NumTarget(3000)
Trigger3 = Target(3000),StateNo != 3020
ID = 6300
IgNoreHitPause = 1

[State 3010, ぐるぐる光玉エフェクト消去]
Type = Null;ReMoveExplod
TriggerAll = NumExplod(6301)
Trigger1 = AnimElemTime(50) = 0
Trigger2 = AnimElem = 50, < 0
Trigger2 = NumTarget(3000) = 0
Trigger3 = AnimElem = 50, < 0
Trigger3 = NumTarget(3000)
Trigger3 = Target(3000),StateNo != 3020
ID = 6301
IgNoreHitPause = 1

[State 3010, 相手がいない場合は退去]
Type = ChangeState
TriggerAll = AnimElem = 50, < 0
Trigger1 = NumTarget(3000) = 0
Trigger2 = NumTarget(3000)
Trigger2 = Target(3000),StateNo != 3020
Value = 0
Ctrl = 1

[State 3010, 振動]
Type = EnvShake
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Time = 15
Freq = 90
Ampl = -3
Phase = 90

[State 3010, 振動]
Type = EnvShake
Trigger1 = AnimElemTime(50) = 0
Time = 15
Freq = 90
Ampl = -10
Phase = 90

[State 3010, SE : ヒット音]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3000, 0
Persistent = 0

[State 3010, SE : ｺﾞｫｫｫ]
Type = PlaySnd
Trigger1 = AnimElemTime(7) = 0
Value = 3000, 1

[State 3010, SE : ｺﾞｫｫｫ]
Type = PlaySnd
TriggerAll = AnimElemTime(7) >= 0
TriggerAll = AnimElemTime(40) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = 3000, 2

[State 3010, SE : ﾊﾞｰﾝ]
Type = PlaySnd
Trigger1 = AnimElemTime(50) = 0
Value = 3000, 3
Persistent = 0

[State 3010, SE : ﾊﾞｰﾝ]
Type = PlaySnd
Trigger1 = AnimElemTime(50) = 0
Value = 3000, 4
Persistent = 0

[State 3010, 画面端に余白を作る]
Type = Width
Trigger1 = AnimElem = 50, < 0
Edge = 60,0

[State 3010, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 3010, 無敵]
Type = NotHitBy
Trigger1 = AnimElem = 50, < 0
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3010, Effect : ぐるぐる光玉]
Type = Explod
;TriggerAll = NumExplod(6301) = 0
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 30 = 0
Anim = 6301
ID = 6301
Pos = 60, -155
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 4
OwnPal = 1
ReMoveOnGetHit = 1

[State 3010, Effect : 闇玉]
Type = Null;Explod
TriggerAll = NumExplod(6300) = 0
Trigger1 = AnimElemTime(7) = 0
Anim = 6300
ID = 6300
Pos = 60, -155
PosType = P1
BindTime = 1
ReMoveTime = -1
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1

[State 3010, Effect : 黒ボール]
Type = Null;Explod
TriggerAll = NumExplod(3011) = 0
Trigger1 = AnimElemTime(43) = 0
Anim = 3011
ID = 3011
Pos = 60, -155
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1

[State 3010, Effect : 黒火柱]
Type = Explod
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Anim = 6051
ID = 6051
Pos = 55, 0
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1

[State 3010, Effect : 白火柱]
Type = Explod
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Anim = 6050
ID = 6050
Pos = 55, 0
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1

[State 3010, Effect : 黒波紋]
Type = Explod
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 10 = 0
Anim = 6305
ID = 6305
Pos = 60, -155
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 1

[State 3010, Effect : 黒煙爆発]
Type = Explod
TriggerAll = NumExplod(6303) = 0
Trigger1 = AnimElemTime(50) = 0
Anim = 6303
ID = 6303
Pos = 60, -150
PosType = P1
BindTime = 1
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1

[State 3010, Effect : 黒煙爆発]
Type = Explod
TriggerAll = NumExplod(6304) = 0
Trigger1 = AnimElemTime(50) = 0
Anim = 6303
ID = 6304
Pos = 100, -200
PosType = P1
Facing = -1
VFacing = -1
BindTime = 1
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1

[State 3010, Effect : 黒波紋]
Type = Explod
TriggerAll = AnimElemTime(49) >= 0
TriggerAll = AnimElemTime(52) < 0
Trigger1 = AnimElemTime(49) = 0
Trigger2 = AnimElemTime(49) = 6
Trigger3 = AnimElemTime(49) = 12
Trigger4 = AnimElemTime(49) = 18
Anim = 6093
ID = 6093
Pos = 60, -155
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
ReMoveOnGetHit = 0

[State 3010, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(7001) = 0
TriggerAll = NumTarget(3000)
Trigger1 = AnimElemTime(50) = 0
HelperType = Normal
Name = "Effect_Helper"
ID = 7001
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 7001
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5

[State 3010, 掴んだ相手の位置 : Elem = 1]
Type = TargetBind
Trigger1 = AnimElemTime(3) < 0
Time = 1
ID = 3000
Pos = 80, 0

[State 3010, 掴んだ相手の位置 : Elem = 2]
Type = TargetBind
Trigger1 = AnimElemTime(3) >= 0
Trigger1 = AnimElemTime(4) < 0
Time = 1
ID = 3000
Pos = 60, -100

[State 3010, 掴んだ相手の位置 : Elem = 3]
Type = TargetBind
Trigger1 = AnimElemTime(4) >= 0
Trigger1 = AnimElemTime(5) < 0
Time = 1
ID = 3000
Pos = 70, -130

[State 3010, 掴んだ相手の位置 : Elem = 4]
Type = TargetBind
Trigger1 = AnimElemTime(5) >= 0
Trigger1 = AnimElemTime(6) < 0
Time = 1
ID = 3000
Pos = 70, -145

[State 3010, 掴んだ相手の位置 : Elem = 5]
Type = TargetBind
Trigger1 = AnimElemTime(6) >= 0
Trigger1 = AnimElemTime(50) < 0
Time = 1
ID = 3000
Pos = 55, -155

[State 3010, 掴んだ相手の位置 : Elem = 6]
Type = TargetBind
Trigger1 = AnimElemTime(50) = 0
Time = 1
ID = 3000
Pos = 70, -170

[State 3010, 掴んだ相手のゲージ増減]
Type = TargetPowerAdd
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = 10
ID = 3000

[State 3010, 掴んだ相手のゲージ増減]
Type = TargetPowerAdd
Trigger1 = AnimElemTime(50) = 0
Value = 60
ID = 3000

[State 3010, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(50) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = -Floor(28 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.33,0.33,FVar(0)))
ID = 3000
Kill = 0

[State 3010, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
Trigger1 = AnimElemTime(50) = 0
Value = -Floor(128 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.33,0.33,FVar(0)))
ID = 3000
Kill = 1

[State 3010, 掴んだ相手のステート変更]
Type = TargetState
Trigger1 = AnimElemTime(50) = 0
Value = 3021
ID = 3000

[State 3010, コンボ補正]
Type = VarSet
Trigger1 = AnimElemTime(50) = 0
FV = 0
Value = FVar(0) * 0.75
Persistent = 0

[State 3010, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;命の蝋燭 : 相手拘束状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 3020]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0

;----------------------------[動作処理]

[State 3020, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 3020, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3020, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 3020

[State 3020, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 3020, ステート返還直前に着陸]
Type = PosSet
Trigger1 = !GetHitVar(IsBound)
Y = 0
IgNoreHitPause = 1

[State 3020, ステート返還]
Type = SelfState
Trigger1 = !GetHitVar(IsBound)
Value = 5000
IgNoreHitPause = 1

;------------------------------------------------------------------------
;命の蝋燭 : 相手吹っ飛び状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 3021]
Type    = A
MoveType= H
Physics = N
VelSet = -3,-8
Ctrl = 0
Anim = 5035
PowerAdd = 0

;----------------------------[動作処理]

[State 3021, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 3021, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3021, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 3021, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 3021, 重力]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 3021, 身体を紫に]
Type = PalFX
Trigger1 = 1
Time = 1
Mul = 64,0,128

[State 3021, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5050,5069]
TriggerAll = SelfAnimExist(5050)
Trigger1 = !SelfAnimExist(5035)
Trigger2 = AnimTime = 0
Value = 5050
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 3021, 相手のステートを返還]
Type = SelfState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value = 5100

;------------------------------------------------------------------------
;異界のさけめ
;------------------------------------------------------------------------
[Statedef 3100]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3100
PowerAdd = -1000
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 3100, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 3100, コンボ補正]
Type = VarSet
TriggerAll = Var(31) <= 0
Trigger1 = EnemyNear(Var(57)),MoveType = H
FV = 0
Value = FVar(0) * 0.75
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 3100, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 3100, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 8
MoveType = I

[State 3100, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[暗転]

[State 3100, 無敵]
Type = NotHitBy
Trigger1 = Time = 0
Value = SCA,AA,AP,AT
Time = 40

[State 3100, 暗転の時間停止]
Type = Pause
Trigger1 = Time = 0
Time = 40
MoveTime = 40

[State 3100, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(39000) = 0
Trigger1 = Time = 0
HelperType = Normal
Name = "SuperPause"
ID = 39000
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
StateNo = 39000
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Size.XScale = 0.5
Size.YScale = 0.5

;----------------------------[攻撃]

[State 3100, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3105
Pos = 60, -130
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3100, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3106
Pos = 60, -40
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3100, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3107
Pos = 70, -65
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3100, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3108
Pos = 70, -105
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3100, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3100)
TriggerAll = Target(3100),IsHelper = 0
Trigger1 = ProjHitTime(3105) = 1
Value = 3120
ID = 3100
IgNoreHitPause = 1

[State 3100, 成立ステートへ]
Type = ChangeState
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo = 3120
Value = 3110
IgNoreHitPause = 1

[State 3100, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 3105];黒竜石登場
Physics = N
Ctrl = 0
Anim = 1005
VelSet = 0,0
SprPriority = 3

;Var(0)  = 発生保証の消失判定

;----------------------------[初期処理]

[State 3105, SE : 黒竜石呼出]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 0
Volume = -64
Persistent = 0
IgNoreHitPause = 1

[State 3105, 初速度]
Type = VelSet
TriggerAll = IsHelper(3105)
Trigger1 = Time = 0
X = 3
Y = 9

[State 3105, 初速度]
Type = VelSet
TriggerAll = IsHelper(3106)
Trigger1 = Time = 0
X = 3
Y = -9

[State 3105, 初速度]
Type = VelSet
TriggerAll = IsHelper(3107)
Trigger1 = Time = 0
X = -3
Y = -9

[State 3105, 初速度]
Type = VelSet
TriggerAll = IsHelper(3108)
Trigger1 = Time = 0
X = -3
Y = 9

;----------------------------[動作処理]

[State 3105, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 3105, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 3105, Effect : 黒電撃]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 6021
ID = 6021
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -1
SuperMoveTime = 40
PauseMoveTime = 40
Scale = 0.5, 0.5
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 3105, Effect : 白粒子]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 60100
ID = 60100
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -1
SuperMoveTime = 40
PauseMoveTime = 40
Scale = 1, 1
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 3105, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3105, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 3105, フェードイン]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 128 + (128 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1)),128 - (128 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1))
Persistent = 1
IgNoreHitPause = 1

[State 3105, 減速]
Type = VelMul
Trigger1 = 1
X = 0.90
Y = 0.90

[State 3105, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger1 = Var(0)
Value = 1009

[State 3105, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Value = 3106

;------------------------------------------------------------------------
[Statedef 3106];黒竜石移動
MoveType= A
Physics = N
Ctrl = 0
Anim = 3106
VelSet = 0,0
SprPriority = 5

;----------------------------[動作処理]

[State 3106, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 3106, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 3106, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 3106, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3106, 黒竜石消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1009
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 3106, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 3106, 残像]
Type = AfterImage
Trigger1 = IsHelper
Trigger1 = Time = 0
Time = -1
Length = 10
;PalColor = 256
;PalInvertall = 0
;PalBright = 0,0,0
PalContrast = 32,32,32
;PalPostBright = 0,0,0
;PalAdd = 0,0,0
;PalMul = 1,1,1
TimeGap = 1
FrameGap = 4
Trans = Add1

[State 3106, 停止]
Type = VelSet
Trigger1 = 1
X = 0
Y = 0

[State 3106, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 12 = 0
Anim = 6010
ID = 6010
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = -0.5 - Random % 10 * 0.1, 0.5 + Random % 10 * 0.1
Accel = 0, 0.075
Random = 0, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 3106, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 12 = 6
Anim = 6011
ID = 6011
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = -0.5 - Random % 10 * 0.1, 0.5 + Random % 10 * 0.1
Accel = 0, 0.075
Random = 0, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 3106, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Var(0)
Value = 1009

[State 3106, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Time = 40
Value = 3107

;------------------------------------------------------------------------
[Statedef 3107];黒竜石ビーム発射
MoveType= A
Physics = N
Ctrl = 0
Anim = 3107
VelSet = 0,0
SprPriority = 3

;----------------------------[動作処理]

[State 3107, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 3107, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 3107, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 3107, SE : ビーム発射待機]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 1
Volume = -64
Persistent = 0
IgNoreHitPause = 1

[State 3107, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3107, 黒竜石消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1009
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 3107, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 3107, 黒竜石 : 丸エフェクト]
Type = Explod
TriggerAll = IsHelper
Trigger1 = NumExplod(6001) = 0
Anim = 6001
ID = 6001
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 4
OwnPal = 1
ReMoveOnGetHit = 0

[State 3107, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Beam"
ID = 31050
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 31050
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 5
Size.Ground.Front = 5
Size.Air.Back = 5
Size.Air.Front = 5
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0
Persistent = 0

[State 3107, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger2 = Var(0)
Trigger3 = Root,StateNo = 3110
Trigger4 = Root,StateNo = 3510
Value = 1009

;------------------------------------------------------------------------
[Statedef 31050];ビーム攻撃判定の発生中
MoveType= A
Physics = N
Ctrl = 0
Anim = 31050
VelSet = 0,0
SprPriority = 2

;Var(0) = Proj射出判定

;----------------------------[動作処理]

[State 31050, Proj射出判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Root,ProjContact3105 = 1
V = 0
Value = 1
IgNoreHitPause = 1

[State 31050, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State 31050, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 9999
IgNoreHitPause = 1

[State 31050, 攻撃判定の無力化]
Type = StateTypeSet
TriggerAll = IsHelper
Trigger1 = AnimElem = 11
Trigger2 = Root,ProjContact3105 = 1
MoveType = I

[State 31050, SE : ビーム発射]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 2
Volume = -64
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 31050, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 31050, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 31050, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
Trigger1 = Root,ProjContactTime(3105) = 1
Value = 1, IfElse(Root,ProjHitTime(3105) = 1,3100,100)
Volume = -32
Persistent = 0
IgNoreHitPause = 1

[State 31050, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Root,ProjContactTime(3105) = 1
Anim = IfElse(Root,ProjHitTime(3105) = 1,6005,8010)
ID = 8000
Pos = -10,-40
PosType = P2
Facing = -1
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

[State 31050, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
Trigger1 = Root,ProjHitTime(3105) = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 31050, 延長ビーム]
Type = Explod
Trigger1 = Time = 0
Anim = 31051
ID = 31051
Pos = 260, 0
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1

[State 31050, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 3 = 1
Anim = 6010
ID = 6010
Pos = 40, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = -1 - Random % 10 * 0.1, -3 - Random % 10 * 0.1
Accel = 0, 0.055
Random = 30, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 31050, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 4 = 2
Anim = 6010
ID = 6010
Pos = 100, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = -1 - Random % 10 * 0.1, -2.5 - Random % 10 * 0.1
Accel = 0, 0.055
Random = 40, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 31050, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 5 = 3
Anim = 6010
ID = 6010
Pos = 160, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = -1 - Random % 10 * 0.1, -2 - Random % 10 * 0.1
Accel = 0, 0.055
Random = 50, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 31050, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 6 = 4
Anim = 6010
ID = 6010
Pos = 240, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = -1 - Random % 10 * 0.1, -1.5 - Random % 10 * 0.1
Accel = 0, 0.055
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

[State 31050, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Root,ProjContactTime(3105) = 1
Value = 31051

[State 31050, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Value = 10000

[State 31050, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 10000
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

;----------------------------[攻撃]

[State 31050, ヒット定義]
Type = Projectile
TriggerAll = IsHelper
TriggerAll = Var(0) = 0
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElemTime(1) >= 2
ProjID = 3105
ProjAnim = 31052
ProjScale = 1, 1
ProjReMove = 1
ProjReMoveTime = 1
Velocity = Vel X, Vel Y
ProjHits = 1
ProjPriority = 6
OffSet = 0, 0
PosType = P1
SuperMoveTime = 0
PauseMoveTime = 0

Attr = S,HP
HitFlag = MAF
GuardFlag = MA
AffectTeam = E
AnimType = Hard
Priority = 6,Hit
Damage = 20, 2
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
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 3100
Kill = 0
Guard.Kill = 0
HitOnce = 1
NumHits = 0
Persistent = 1

;------------------------------------------------------------------------
[Statedef 31051];ビーム後隙
MoveType= I

[State 31051, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 31051, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 31051, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 10000
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 31051, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = AnimTime = 0

;------------------------------------------------------------------------
;異界のさけめ : 成立
;------------------------------------------------------------------------
[Statedef 3110]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3110
PowerAdd = 0
SprPriority = 0

;----------------------------[動作処理]

[State 3110, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo = 3120
Value = 3121
ID = 3100
IgNoreHitPause = 1

[State 3110, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3110, 余白を作る]
Type = Width
Trigger1 = 1
Player = 0,30

[State 3110, 立ち位置補正]
Type = PosAdd
Trigger1 = BackEdgeBodyDist <= 70
Trigger1 = Time = 0
X = 70 - BackEdgeBodyDist

[State 3110, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 3110, 振動]
Type = EnvShake
Trigger1 = Time = 0
Time = 5
Freq = 90
Ampl = -4
Phase = 90

[State 3110, フラッシュ]
Type = EnvColor
Trigger1 = Time = 0
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1

[State 3110, 相手振り向かせる]
Type = TargetFacing
Trigger1 = NumTarget(3100)
Value = -1
ID = 3100
Persistent = 0

[State 3110, ヘルパー呼出]
Type = Helper
TriggerAll = NumEnemy
TriggerAll = Enemy(0),StateType = A
TriggerAll = Enemy(0),MoveType = H
TriggerAll = Enemy(0),StateNo = 3121
Trigger1 = Time = 50
HelperType = Normal
Name = "P1_Soul"
ID = 31110
Pos = Floor((Enemy(0),Pos X - Pos X) * Facing), Floor((Enemy(0),Pos Y + Enemy(0),Const(Size.Mid.Pos.Y)) - Pos Y)
PosType = P1
Facing = 1
StateNo = 31110
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3110, ヘルパー呼出]
Type = Helper
TriggerAll = NumEnemy >= 2
TriggerAll = Enemy(1),StateType = A
TriggerAll = Enemy(1),MoveType = H
TriggerAll = Enemy(1),StateNo = 3121
Trigger1 = Time = 50
HelperType = Normal
Name = "P2_Soul"
ID = 31111
Pos = Floor((Enemy(1),Pos X - Pos X) * Facing), Floor((Enemy(1),Pos Y + Enemy(1),Const(Size.Mid.Pos.Y)) - Pos Y)
PosType = P1
Facing = 1
StateNo = 31110
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3110, ヘルパー呼出]
Type = Helper
TriggerAll = NumPartner
TriggerAll = Partner,StateType = A
TriggerAll = Partner,MoveType = H
TriggerAll = Partner,StateNo = 3121
Trigger1 = Time = 50
HelperType = Normal
Name = "Partner_Soul"
ID = 31112
Pos = Floor((Partner,Pos X - Pos X) * Facing), Floor((Partner,Pos Y + Partner,Const(Size.Mid.Pos.Y)) - Pos Y)
PosType = P1
Facing = 1
StateNo = 31110
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3110, 掴んだ相手のステート変更]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = Time = 50
Value = 3122
ID = 3100

[State 3110, 掴んだ相手のステート変更]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 1
Trigger1 = Time = 160
Trigger2 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 2
Trigger2 = Time = 190
Trigger3 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 3
Trigger3 = Time = 220
Trigger4 = Time = 800
Value = 3125
ID = 3100

[State 3110, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = NumTarget(3100)
Trigger1 = Time >= 50
Trigger1 = Time % 10 = 0
Value = -Floor(2 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.33,0.33,FVar(0)))
ID = 3100
Kill = 0

[State 3110, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = Var(31) <= 0
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Value = -Floor(200 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.33,0.33,FVar(0)))
ID = 3100
Kill = 1

[State 3110, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = Var(31) > 0
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Value = -Floor(250 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.5,0.5,FVar(0)))
ID = 3100
Kill = 1

[State 3110, 相手上空へ]
Type = TargetBind
Trigger1 = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Time = 1
ID = 3100
Pos = IfElse(FrontEdgeBodyDist >= 60,60,-60), -640

[State 3110, ステート変更]
Type = ChangeState
Trigger1 = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Trigger2 = NumTarget(3100) = 0
Value = 3115

;------------------------------------------------------------------------
;異界のさけめ : 終了
;------------------------------------------------------------------------
[Statedef 3115]
Type    = S
MoveType= I
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3115
PowerAdd = 0
SprPriority = 0

[State 3115, 不可視化]
Type = AssertSpecial
Trigger1 = Time = 0
Trigger2 = Time = 5
Flag = NoShadow
Flag2 = Invisible

[State 3115, フラッシュ]
Type = EnvColor
Trigger1 = Time = 0
Trigger2 = Time = 5
Value = 255,255,255
Under = 1
Time = 3
MoveTime = 3

[State 3115, 黒化]
Type = PalFX
Trigger1 = Time = 0
Trigger2 = Time = 5
Time = 2
Mul = 0,0,0

[State 3115, SE : フィニッシュ]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3115, 0

[State 3115, SE : フィニッシュ+]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3115, 1

[State 3115, SE : フィニッシュ+]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3115, 2

[State 3115, 振動]
Type = EnvShake
Trigger1 = Time = 0
Time = 30
Freq = 90
Ampl = -10
Phase = 90

[State 3115, 中央へ]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 3115, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;魂 : ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 31110]
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 31110
PowerAdd = 0
SprPriority = 5

[State 31110, Effect]
Type = Explod
Trigger1 = IsHelper
Anim = 31111
ID = 31111
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 5
OwnPal = 1
ReMoveOnGetHit = 1

[State 31110, SE : 魂出現]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3111, 0
Persistent = 0

[State 31110, SE : 魂出現+]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3111, 1
Persistent = 0

[State 31110, 振動]
Type = EnvShake
Trigger1 = Time = 0
Time = 5
Freq = 90
Ampl = -4
Phase = 90

[State 31110, フラッシュ]
Type = EnvColor
Trigger1 = Time = 0
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1

[State 31110, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 31110, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 31110, 初速度]
Type = VelSet
TriggerAll = IsHelper
Trigger1 = Time = 0
Y = -16

[State 31110, 減速]
Type = VelMul
Trigger1 = 1
Y = 0.80

[State 31110, 初速度]
Type = VelSet
TriggerAll = IsHelper
Trigger1 = Time = 20
X = 0
Y = 0

[State 31110, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 2 = 0
Anim = 6010
ID = 6010
Pos = 0, 0
PosType = P1
Facing = IfElse(Random % 2,1,-1)
VFacing = IfElse(Random % 2,1,-1)
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -1.5 + Random % 40 * 0.1
Accel = 0, 0.075
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 31110, ステート変更]
Type = ChangeState
Trigger1 = IsHelper(31110)
Trigger1 = Time = 50
Trigger2 = IsHelper(31111)
Trigger2 = Time = 80
Trigger3 = IsHelper(31112)
Trigger3 = Time = 110
Trigger4 = IsHelper(31111)
Trigger4 = NumHelper(31110) = 0
Trigger4 = Time = 50
Trigger5 = IsHelper(31112)
Trigger5 = NumHelper(31110) = 0
Trigger5 = NumHelper(31111) = 0
Trigger5 = Time = 50
Trigger6 = IsHelper(31112)
Trigger6 = NumHelper(31110) + NumHelper(31111) = 1
Trigger6 = Time = 80
Value = 31111

;------------------------------------------------------------------------
[Statedef 31111]
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 31110
PowerAdd = 0
SprPriority = 5

;Var(0)  = 乱数

;FVar(0) = 本体距離計算
;FVar(1) = 本体高さ計算
;FVar(2) = 相手方向

[State 31111, Effect]
Type = Explod
Trigger1 = IsHelper
Anim = 31111
ID = 31111
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 5
OwnPal = 1
ReMoveOnGetHit = 1

[State 31111, SE : 魂回収]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3111, 2
Persistent = 0

[State 31111, 振動]
Type = EnvShake
Trigger1 = Time = 0
Time = 5
Freq = 90
Ampl = -4
Phase = 90

[State 31111, フラッシュ]
Type = EnvColor
Trigger1 = Time = 0
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1

[State 31111, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 31111, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 31111, 初期角度乱数]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 0
Value = -45 + (Random % 90)

[State 31111, 本体距離]
Type = VarSet
Trigger1 = IsHelper
FV = 0
Value = RootDist X - 35 + 0.0000001
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State 31111, 本体高さ]
Type = VarSet
Trigger1 = IsHelper
FV = 1
Value = RootDist Y - 185 + 0.0000001
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State 31111, 相手方向]
Type = VarSet
Trigger1 = IsHelper
FV = 2
Value = -(Atan(FVar(0) / FVar(1)) * 180 / Pi) - IfElse(FVar(1) > 0,-90,90) + Var(0)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State 31111, ホーミング]
Type = VelSet
Trigger1 = IsHelper
X = FVar(0) / (30 - Time)
Y = FVar(1) / (30 - Time)

[State 31111, 初速度]
Type = VelAdd
Trigger1 = IsHelper
X = -Cos((Pi / 180) * FVar(2)) * 10
Y = -Sin((Pi / 180) * FVar(2)) * 10

[State 31111, 停止]
Type = VelSet
TriggerAll = IsHelper
Trigger1 = Time >= 30
X = 0
Y = 0

[State 31111, 最終位置]
Type = BindToRoot
TriggerAll = IsHelper
Trigger1 = Time >= 30
Pos = -35,-185

[State 31111, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 2 = 0
Anim = 6010
ID = 6010
Pos = 0, 0
PosType = P1
Facing = IfElse(Random % 2,1,-1)
VFacing = IfElse(Random % 2,1,-1)
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -1.5 + Random % 40 * 0.1
Accel = 0, 0.075
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 31111, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = Root,StateNo != [3110,3111]
Trigger1 = Root,StateNo != [3510,3511]

;------------------------------------------------------------------------
;異界のさけめ : 相手拘束状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 3120]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0
SprPriority = 3

;----------------------------[動作処理]

[State 3120, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 3120, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3120, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 3120

[State 3120, ステート返還]
Type = SelfState
Trigger1 = HitOver
Value = IfElse(Pos Y = 0,5000,5050)

;------------------------------------------------------------------------
;異界のさけめ : 相手拘束状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 3121]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0
SprPriority = 3

;----------------------------[動作処理]

[State 3121, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 3121, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3121, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 3120

[State 3121, ステート返還]
Type = SelfState
Trigger1 = Time = 800
Value = 5050

;------------------------------------------------------------------------
;異界のさけめ : 相手拘束状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 3122]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0

;----------------------------[動作処理]

[State 3122, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 3122, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3122, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 3122

[State 3122, ステート返還]
Type = SelfState
Trigger1 = Time = 800
Value = 5050

;------------------------------------------------------------------------
;異界のさけめ : 相手吹っ飛び状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 3125]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0

;----------------------------[動作処理]

[State 3125, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 3125, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3125, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 3125, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != 5050
Trigger1 = SelfAnimExist(5050)
Value = 5050

[State 3125, スクロール不可]
Type = ScreenBound
Trigger1 = 1
Value = 0
MoveCamera = 0,0
IgNoreHitPause = 1

[State 3125, 座標指定]
Type = PosSet
Trigger1 = Time = 0
Y = -640

[State 3125, 重力]
Type = VelAdd
Trigger1 = 1
Y = 0.35

;----------------------------[]

[State 3125, 相手のステートを返還]
Type = SelfState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value = 5100

;------------------------------------------------------------------------
;MAX異界のさけめ
;------------------------------------------------------------------------
[Statedef 3500]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3100
PowerAdd = -2000
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 3500, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 3500, コンボ補正]
Type = VarSet
TriggerAll = Var(31) <= 0
Trigger1 = EnemyNear(Var(57)),MoveType = H
FV = 0
Value = FVar(0) * 0.75
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 3500, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 3500, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 8
MoveType = I

[State 3500, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[暗転]

[State 3500, 無敵]
Type = NotHitBy
Trigger1 = Time = 0
Value = SCA,AA,AP,AT
Time = 40

[State 3500, 暗転の時間停止]
Type = Pause
Trigger1 = Time = 0
Time = 40
MoveTime = 40

[State 3500, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(39500) = 0
Trigger1 = Time = 0
HelperType = Normal
Name = "SuperPause"
ID = 39500
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
StateNo = 39000
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Size.XScale = 0.5
Size.YScale = 0.5

;----------------------------[攻撃]

[State 3500, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3105
Pos = 60, -130
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3500, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3106
Pos = 60, -40
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3500, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3107
Pos = 70, -65
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3500, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 3108
Pos = 70, -105
PosType = P1
Facing = 1
StateNo = 3105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 40
PauseMoveTime = 40
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 12
Size.Ground.Front = 12
Size.Air.Back = 12
Size.Air.Front = 12
Size.Height = 20
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3500, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3100)
TriggerAll = Target(3100),IsHelper = 0
Trigger1 = ProjHitTime(3105) = 1
Value = 3120
ID = 3100
IgNoreHitPause = 1

[State 3500, 成立ステートへ]
Type = ChangeState
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo = 3120
Value = 3510
IgNoreHitPause = 1

[State 3500, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;MAX異界のさけめ : 成立
;------------------------------------------------------------------------
[Statedef 3510]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3510
PowerAdd = 0
SprPriority = -1

;----------------------------[動作処理]

[State 3510, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo = 3120
Value = 3121
ID = 3100
IgNoreHitPause = 1

[State 3510, 透過処理]
Type = Trans
Trigger1 = NumHelper(35100)
Trigger1 = Helper(35100),StateNo = 35100
Trans = AddAlpha
Alpha = 256 - Helper(35100),Var(0), Helper(35100),Var(0)

[State 3510, 黒化]
Type = PalFX
Trigger1 = NumHelper(35100)
Trigger1 = Helper(35100),StateNo = 35100
Time = 1
Mul = 256 - Helper(35100),Var(10),256 - Helper(35100),Var(10),256 - Helper(35100),Var(10)

[State 3510, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 3510, スクロール不可]
Type = ScreenBound
Trigger1 = 1
Value = 0
MoveCamera = 0,0
IgNoreHitPause = 1

[State 3510, 余白を作る]
Type = Width
Trigger1 = 1
Player = 0,30

[State 3510, 立ち位置補正]
Type = PosAdd
Trigger1 = BackEdgeBodyDist <= 70
Trigger1 = Time = 0
X = 70 - BackEdgeBodyDist

[State 3510, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 3510, 振動]
Type = EnvShake
Trigger1 = Time = 0
Time = 5
Freq = 90
Ampl = -4
Phase = 90

[State 3510, フラッシュ]
Type = EnvColor
Trigger1 = Time = 0
Trigger2 = Time = 90
Trigger3 = Time = 120
Trigger4 = Time = 170
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1

[State 3510, SE : ﾊﾞﾁﾊﾞﾁｯ]
Type = PlaySnd
Trigger1 = Time = 90
Trigger2 = Time = 120
Trigger3 = Time = 170
Value = 3111, 2
Volume = -128

[State 3510, SE : ｺﾞﾛｺﾞﾛ]
Type = PlaySnd
TriggerAll = Time
Trigger1 = Time % 50 = 0
Value = 3100, 0
Volume = 255
Channel = 1

[State 3510, 振動]
Type = EnvShake
Trigger1 = Time >= 50
Trigger1 = Time % 10 = 0
Time = 10
Freq = 90
Ampl = -4
Phase = 90

[State 3510, 相手振り向かせる]
Type = TargetFacing
Trigger1 = NumTarget(3100)
Value = -1
ID = 3100
Persistent = 0

[State 3510, 残像ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(10001) = 0
Trigger1 = Time >= 50
HelperType = Normal
Name = "AfterImage_Helper"
ID = 10001
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10001
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State 3510, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 50
HelperType = Normal
Name = "jimen"
ID = 35100
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 35100
KeyCtrl = 0
OwnPal = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3510, ヒット定義]
Type = Projectile
TriggerAll = !(Var(10) & 8)
Trigger1 = Time = 100
ProjID = 3105
ProjAnim = 31100
ProjScale = 1, 1
ProjReMove = 1
ProjReMoveTime = 1
Velocity = 0, 0
ProjHits = 1
ProjPriority = 6
OffSet = 0, 0
PosType = P1
SuperMoveTime = 0
PauseMoveTime = 0

Attr = S,HT
HitFlag = MFD
GuardFlag = 
AffectTeam = B
AnimType = Hard
Priority = 6,Hit
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
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Var(10) & 4),99,0)
ID = 3100
Kill = 0
Guard.Kill = 0
NumHits = 0
Persistent = 0

[State 3510, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3100)
TriggerAll = Target(3100),IsHelper = 0
Trigger1 = ProjHitTime(3105) = 1
Value = 3121
ID = 3100
IgNoreHitPause = 1

[State 3510, ステート変更]
Type = ChangeState
Trigger1 = NumHelper(35100)
Trigger1 = Helper(35100),StateNo = 35101
Trigger2 = Time = 400
Value = 3511

;------------------------------------------------------------------------
;MAX異界のさけめ : 演出
;------------------------------------------------------------------------
[Statedef 3511]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3511
PowerAdd = 0
SprPriority = -1

[State 3511, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = Target(3100),StateNo = 3120
Value = 3121
ID = 3100
IgNoreHitPause = 1

[State 3511, SE : ｺﾞﾛｺﾞﾛ]
Type = PlaySnd
Trigger1 = Time % 50 = 0
Value = 3100, 0
Volume = 255
Channel = 1

[State 3511, 振動]
Type = EnvShake
TriggerAll = Time
Trigger1 = Time % 5 = 0
Time = 5
Freq = 90
Ampl = -2
Phase = 90

[State 3511, スクロール不可]
Type = ScreenBound
Trigger1 = 1
Value = 0
MoveCamera = 0,0
IgNoreHitPause = 1

[State 3511, 中央へ]
Type = PosSet
Trigger1 = 1
X = 0
Y = 0
IgNoreHitPause = 1

[State 3511, ヘルパー呼出]
Type = Helper
TriggerAll = NumEnemy
TriggerAll = Enemy(0),StateType = A
TriggerAll = Enemy(0),MoveType = H
TriggerAll = Enemy(0),StateNo = 3121
Trigger1 = Time = 60
HelperType = Normal
Name = "P1_Soul"
ID = 31110
Pos = Floor((Enemy(0),Pos X - Pos X) * Facing), Floor((Enemy(0),Pos Y + Enemy(0),Const(Size.Mid.Pos.Y)) - Pos Y)
PosType = P1
Facing = 1
StateNo = 31110
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3511, ヘルパー呼出]
Type = Helper
TriggerAll = NumEnemy >= 2
TriggerAll = Enemy(1),StateType = A
TriggerAll = Enemy(1),MoveType = H
TriggerAll = Enemy(1),StateNo = 3121
Trigger1 = Time = 60
HelperType = Normal
Name = "P2_Soul"
ID = 31111
Pos = Floor((Enemy(1),Pos X - Pos X) * Facing), Floor((Enemy(1),Pos Y + Enemy(1),Const(Size.Mid.Pos.Y)) - Pos Y)
PosType = P1
Facing = 1
StateNo = 31110
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3511, ヘルパー呼出]
Type = Helper
TriggerAll = NumPartner
TriggerAll = Partner,StateType = A
TriggerAll = Partner,MoveType = H
TriggerAll = Partner,StateNo = 3121
Trigger1 = Time = 60
HelperType = Normal
Name = "Partner_Soul"
ID = 31112
Pos = Floor((Partner,Pos X - Pos X) * Facing), Floor((Partner,Pos Y + Partner,Const(Size.Mid.Pos.Y)) - Pos Y)
PosType = P1
Facing = 1
StateNo = 31110
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 0
Size.Ground.Front = 0
Size.Air.Back = 0
Size.Air.Front = 0
Size.Height = 0
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 3511, 掴んだ相手のステート変更]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = Time = 60
Value = 3122
ID = 3100

[State 3511, 掴んだ相手のステート変更]
Type = TargetState
TriggerAll = NumTarget(3100)
Trigger1 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 1
Trigger1 = Time = 250
Trigger2 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 2
Trigger2 = Time = 280
Trigger3 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 3
Trigger3 = Time = 310
Trigger4 = Time = 800
Value = 3125
ID = 3100

[State 3511, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = NumTarget(3100)
Trigger1 = Time >= 60
Trigger1 = Time % 10 = 0
Value = -Floor(2 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.33,0.33,FVar(0)))
ID = 3100
Kill = 0

[State 3511, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = Var(31) <= 0
Trigger1 = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Value = -Floor(400 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.33,0.33,FVar(0)))
ID = 3100
Kill = 1

[State 3511, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
TriggerAll = Var(31) > 0
Trigger1 = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Value = -Floor(450 * Const(Data.Attack) / 100 * FVar(1) * IfElse(FVar(0) <= 0.5,0.5,FVar(0)))
ID = 3100
Kill = 1

[State 3511, 相手上空へ]
Type = TargetBind
Trigger1 = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Time = 1
ID = 3100
Pos = IfElse(FrontEdgeBodyDist >= 60,60,-60), -640

[State 3511, ステート変更]
Type = ChangeState
Trigger1 = NumTarget(3100)
Trigger1 = Target(3100),StateNo != [3120,3122]
Trigger2 = NumTarget(3100) = 0
Value = 3515

;------------------------------------------------------------------------
;MAX異界のさけめ : 終了
;------------------------------------------------------------------------
[Statedef 3515]
Type    = S
MoveType= I
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 3115
PowerAdd = 0
SprPriority = 0

[State 3515, 不可視化]
Type = AssertSpecial
Trigger1 = Time = 0
Trigger2 = Time = 5
Flag = NoShadow
Flag2 = Invisible

[State 3515, フラッシュ]
Type = EnvColor
Trigger1 = Time = 0
Trigger2 = Time = 5
Value = 255,255,255
Under = 1
Time = 3
MoveTime = 3

[State 3515, 黒化]
Type = PalFX
Trigger1 = Time = 0
Trigger2 = Time = 5
Time = 2
Mul = 0,0,0

[State 3515, SE : フィニッシュ]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3115, 0
Channel = 1

[State 3515, SE : フィニッシュ+]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3115, 1

[State 3515, SE : フィニッシュ+]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3115, 2

[State 3515, 振動]
Type = EnvShake
Trigger1 = Time = 0
Time = 30
Freq = 90
Ampl = -10
Phase = 90

[State 3515, フラッシュ]
Type = EnvColor
Trigger1 = Time = 1
Value = 255,255,255
Under = 1
Time = 2
MoveTime = 2

[State 3515, 黒化]
Type = PalFX
Trigger1 = Time = 0
Time = 2
Mul = 0,0,0

[State 3515, 中央へ]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 3515, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;地面の裂けヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 35100]
Ctrl = 0
Anim = 6306
SprPriority = -5

;Var(0) = 暗転処理用
;Var(1) = 明転処理用

;Var(10) = 本体パレット用

;FVar(0) = 拡大処理用

;----------------------------[ヘルパー処理]

[State 35100, 中央へ]
Type = PosSet
Trigger1 = Time = 0
X = 0
Y = 0

[State 35100, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 35100, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 35100, 拡大処理]
Type = Null
TriggerAll = IsHelper
Trigger1 = Time = 0
Trigger1 = FVar(0) := 1 || 1
Trigger2 = Time >= 56
Trigger2 = FVar(0) := FVar(0) + 0.03 || 1

[State 35100, 暗転処理]
Type = Null
TriggerAll = IsHelper
Trigger1 = Time = 0
Trigger1 = Var(0) := 0 || 1
Trigger2 = Time >= 100
Trigger2 = Var(0) := Var(0) + 12 || 1

[State 35100, 暗転処理]
Type = Null
TriggerAll = IsHelper
Trigger1 = Time = 0
Trigger1 = Var(10) := 0 || 1
Trigger2 = Time = [1,9]
Trigger2 = Var(10) := Var(10) + 12 || 1
Trigger3 = Time >= 80
Trigger3 = Var(10) := Var(10) + 12 || 1

[State 35100, 背景暗転]
Type = BGPalFX
Trigger1 = IsHelper
Time = 1
Mul = 256 - Var(0),256 - Var(0),256 - Var(0)

[State 35100, 暗転]
Type = Null;Explod
Trigger1 = IsHelper
Anim = 8500
ID = 8500
Pos = 0, -120
PosType = Back
BindTime = -1
ReMoveTime = -2
Scale = 2, 2
SprPriority = 9
OnTop = 1
OwnPal = 1
ReMoveOnGetHit = 1
Under = 1
Trans = AddAlpha
Alpha = Var(0),256 - Var(0)

[State 35100, 角度描画]
Type = AngleDraw
Trigger1 = IsHelper
Scale = FVar(0),FVar(0)

[State 35100, 透過処理]
Type = Trans
Trigger1 = 1
Trans = Sub

[State 35100, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time < 50
Trigger1 = Time % 6 = 0
Anim = 6011
ID = 6011
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -4.5 + Random % 10 * 0.1
Accel = 0, 0.075
Random = 20, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 35100, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time >= 30
Trigger1 = Time % 6 = 0
Anim = 6011
ID = 6011
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -5.5 + Random % 20 * 0.1
Accel = 0, 0.075
Random = 80, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.25, 0.25
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 35100, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time >= 50
Trigger1 = Time % 2 = 0
Anim = 6011
ID = 6011
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -5.5 + Random % 30 * 0.1
Accel = 0, 0.075
Random = 160, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.5, 0.5
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 35100, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time >= 70
Trigger1 = Time % 2 = 0
Anim = 6011
ID = 6011
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -6.5 + Random % 30 * 0.1
Accel = 0, 0.075
Random = 320, 0
ReMoveTime = -2
SuperMoveTime = 0
PauseMoveTime = 0
Scale = 0.5, 0.5
SprPriority = 3
OnTop = 0
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 0

[State 35100, ステート変更]
Type = ChangeState
Trigger1 = Time = 120
Value = 35101

;------------------------------------------------------------------------
[Statedef 35101]
Ctrl = 0
Anim = 10000
SprPriority = -5

;----------------------------[ヘルパー処理]

[State 35101, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 35101, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 35101, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoBarDisplay
Flag2 = NoBG
Flag3 = NoFG
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 1
IgNoreHitPause = 1

[State 35101, 黒粒子エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(6011)
Trigger1 = Time = 0
ID = 6011

[State 35101, 暗転処理]
Type = Null
TriggerAll = IsHelper
Trigger1 = Time = 0
Trigger1 = Var(0) := 256 || 1
Trigger2 = Var(0) := Var(0) - 6 || 1
Trigger3 = Time >= 42
Trigger3 = Var(0) := 0 || 1

[State 35100, 明転処理]
Type = Null
TriggerAll = IsHelper
Trigger1 = Time = 0
Trigger1 = Var(1) := 0 || 1
Trigger2 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 1
Trigger2 = Time >= 180
Trigger2 = Var(1) := Var(1) + 12 || 1
Trigger3 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 2
Trigger3 = Time >= 210
Trigger3 = Var(1) := Var(1) + 12 || 1
Trigger4 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 3
Trigger4 = Time >= 240
Trigger4 = Var(1) := Var(1) + 12 || 1
Trigger5 = Time >= 780
Trigger5 = Var(1) := Var(1) + 12 || 1

[State 35101, 暗転]
Type = Null;Explod
Trigger1 = IsHelper
Anim = 8500
ID = 8500
Pos = 0, -120
PosType = Back
BindTime = -1
ReMoveTime = -2
Scale = 2, 2
SprPriority = 9
OnTop = 1
OwnPal = 1
ReMoveOnGetHit = 1
Under = 1
Trans = AddAlpha
Alpha = Var(0),256 - Var(0)

[State 35101, 背景暗転]
Type = BGPalFX
Trigger1 = IsHelper
Time = 1
Mul = Var(0),Var(0),Var(0)

[State 35101, 明転]
Type = Null;Explod
Trigger1 = IsHelper
Anim = 8501
ID = 8501
Pos = 0, -120
PosType = Back
BindTime = -1
ReMoveTime = -2
Scale = 2, 2
SprPriority = 9
OnTop = 1
OwnPal = 1
ReMoveOnGetHit = 1
Under = 1
Trans = AddAlpha
Alpha = Var(1),256 - Var(1)

[State 35101, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = Root,StateNo != [3110,3111]
Trigger1 = Root,StateNo != [3510,3511]
