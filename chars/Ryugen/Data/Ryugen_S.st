;-| Special Attacks |----------------------------------------------------
;------------------------------------------------------------------------
;黒竜石 : A
;------------------------------------------------------------------------
[Statedef 1000]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1000, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1000, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1000, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1000, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[攻撃]

[State 1000, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Floating_Rock"
ID = 1005
Pos = IfElse(FrontEdgeBodyDist <= 50,FrontEdgeBodyDist,50), -160
PosType = P1
Facing = 1
StateNo = 1005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1000, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : B
;------------------------------------------------------------------------
[Statedef 1010]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1010, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1010, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1010, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1010, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[攻撃]

[State 1010, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Floating_Rock"
ID = 1015
Pos = IfElse(FrontEdgeBodyDist <= 50,FrontEdgeBodyDist,50), -20
PosType = P1
Facing = 1
StateNo = 1015
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1010, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : C
;------------------------------------------------------------------------
[Statedef 1020]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1020, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1020, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1020, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1020, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[攻撃]

[State 1020, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Floating_Rock"
ID = 1025
Pos = IfElse(FrontEdgeBodyDist <= 50,FrontEdgeBodyDist,50), -160
PosType = P1
Facing = 1
StateNo = 1005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1020, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : D
;------------------------------------------------------------------------
[Statedef 1030]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1030, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1030, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1030, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1030, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[攻撃]

[State 1030, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Floating_Rock"
ID = 1035
Pos = IfElse(FrontEdgeBodyDist <= 50,FrontEdgeBodyDist,50), -20
PosType = P1
Facing = 1
StateNo = 1015
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1030, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : Aヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1005];黒竜石登場
Physics = N
Ctrl = 0
Anim = 1005
VelSet = 0,15
SprPriority = 3

;Var(0)  = 発生保証の消失判定
;Var(1)  = 本体のPrevStateNo記憶
;Var(2)  = コンボ補正計算フラグ

;FVar(0) = 飛び道具からのコンボ補正通知

;----------------------------[初期処理]

[State 1005, 黒竜石の使用通知]
Type = ParentVarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 10
Value = (Root,Var(10) | 32)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1005, SE : 黒竜石呼出]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 0
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1005, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1005, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1005, 本体のPrevStateNo記憶]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 1
Value = Root,PrevStateNo
Persistent = 0
IgNoreHitPause = 1

[State 1005, Effect : 黒電撃]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 6021
ID = 6021
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -1
Scale = 0.5, 0.5
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 1005, Effect : 白粒子]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 60100
ID = 60100
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -1
Scale = 1, 1
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 1005, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1005, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1005, フェードイン]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 128 + (128 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1)),128 - (128 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1))
Persistent = 1
IgNoreHitPause = 1

[State 1005, 減速]
Type = VelMul
Trigger1 = 1
Y = 0.91

[State 1005, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger1 = Var(0)
Value = 1009

[State 1005, ステート変更]
Type = ChangeState
TriggerAll = IsHelper(1025)
Trigger1 = AnimTime = 0
Value = 1007

[State 1005, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Value = 1006

;------------------------------------------------------------------------
[Statedef 1006];黒竜石移動
MoveType= A
Physics = N
Ctrl = 0
Anim = 1006
VelSet = 8,Vel Y
SprPriority = 5

;----------------------------[コンボ補正]

[State 1006, 始動補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1006, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.76
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1006, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State 1006, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1006, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
TriggerAll = Root,PrevStateNo = 1000 || Root,PrevStateNo = 1010 || Root,PrevStateNo = 1020
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1006, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1006, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1006, 一部打撃と飛び道具以外無敵]
Type = HitBy
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Value = SCA,SA,HA,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1006, 黒竜石消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1009
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1006, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1006, 残像]
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

[State 1006, 減速]
Type = VelMul
Trigger1 = 1
X = 0.90

[State 1006, 上昇]
Type = VelAdd
Trigger1 = 1
Y = -0.26

[State 1006, 減速]
Type = VelMul
Trigger1 = Time >= 30
Y = 0.83

[State 1006, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = FrontEdgeBodyDist <= 0
X = FrontEdgeBodyDist

[State 1006, 光粒子エフェクト(白玉)]
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

[State 1006, 光粒子エフェクト(黒玉)]
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

[State 1006, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = Time = 0
Trigger2 = MoveContact = 12
Attr = S,SP
HitFlag = MAP
GuardFlag = MA
AffectTeam = E
AnimType = Heavy
Priority = 5,Hit
Damage = 50 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 3
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 18
Ground.HitTime = 18
Air.HitTime = 18
Guard.SlideTime = 14
Guard.HitTime = 14
Guard.CtrlTime = 14
AirGuard.CtrlTime = 14
YAccel = .55
Ground.Velocity = -2, -8
Guard.Velocity = -3
Air.Velocity = -2, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Root,Var(10) & 4),22,0)
ID = 1000
Kill = 1
Guard.Kill = 0
PalFx.Time = 50
PalFx.Mul = 64,0,128
Persistent = 1

[State 1006, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,21,100)
Persistent = 1
IgNoreHitPause = 1

[State 1006, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1000)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1000),Pos X - Pos X) * Facing),-40 + Floor(Target(1000),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 1
IgNoreHitPause = 1

[State 1006, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(7001) = 0
TriggerAll = NumTarget(1000)
Trigger1 = MoveHit = 1
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
Persistent = 1
IgNoreHitPause = 1

[State 1006, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 1
IgNoreHitPause = 1

[State 1006, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Var(0)
Value = 1009

[State 1006, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Time = 40
Value = 1007

;------------------------------------------------------------------------
[Statedef 1007];黒竜石ビーム待機
MoveType= A
Physics = N
Ctrl = 0
Anim = 1007
VelSet = 0,0
SprPriority = 3

;----------------------------[コンボ補正]

[State 1007, 始動補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1007, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.76
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1007, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State 1007, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1007, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
TriggerAll = Root,PrevStateNo = 1000 || Root,PrevStateNo = 1010 || Root,PrevStateNo = 1020
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1007, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1007, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1007, 一部打撃と飛び道具以外無敵]
Type = HitBy
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Value = SCA,SA,HA,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1007, 黒竜石消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1009
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1007, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1007, SE : 黒竜石停滞]
Type = PlaySnd
Trigger1 = Time % 30 = 0
Value = 1000, 3
Volume = -255
Channel = 1

[State 1007, 黒竜石 : 丸エフェクト]
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

[State 1007, 光粒子エフェクト(白玉)]
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
Vel = 1 - Random % 20 * 0.1, 0.5 + Random % 20 * 0.1
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

[State 1007, 光粒子エフェクト(黒玉)]
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
Vel = 1 - Random % 20 * 0.1, 0.5 + Random % 20 * 0.1
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

[State 1007, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = Time = 0
Trigger2 = MoveContact = 12
Attr = S,SP
HitFlag = MAP
GuardFlag = MA
AffectTeam = E
AnimType = Heavy
Priority = 5,Hit
Damage = 50 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 3
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 18
Ground.HitTime = 18
Air.HitTime = 18
Guard.SlideTime = 14
Guard.HitTime = 14
Guard.CtrlTime = 14
AirGuard.CtrlTime = 14
YAccel = .55
Ground.Velocity = -2, -8
Guard.Velocity = -3
Air.Velocity = -2, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Root,Var(10) & 4),22,0)
ID = 1000
Kill = 1
Guard.Kill = 0
PalFx.Time = 50
PalFx.Mul = 64,0,128
Persistent = 1

[State 1007, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,21,100)
Persistent = 1
IgNoreHitPause = 1

[State 1007, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1000)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1000),Pos X - Pos X) * Facing),-40 + Floor(Target(1000),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 1
IgNoreHitPause = 1

[State 1007, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(7001) = 0
TriggerAll = NumTarget(1000)
Trigger1 = MoveHit = 1
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
Persistent = 1
IgNoreHitPause = 1

[State 1007, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 1
IgNoreHitPause = 1

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Root,RoundState != 2
Trigger2 = EnemyNear(Root,Var(57)),Alive = 0
Trigger3 = EnemyNear(Root,Var(57)),Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
Value = 1009

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = MoveContact || MoveReversed
Value = 1009

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) <= 0
TriggerAll = Time >= 10
Trigger1 = IsHelper(1005)
Trigger1 = Root,Command != "hold_x"
Trigger2 = IsHelper(1015)
Trigger2 = Root,Command != "hold_y"
Trigger3 = IsHelper(1025)
Trigger3 = Root,Command != "hold_a"
Trigger4 = IsHelper(1035)
Trigger4 = Root,Command != "hold_b"
Trigger5 = IsHelper(1075)
Trigger5 = Root,Command != "hold_x"
Trigger5 = Root,Command != "hold_y"
Trigger6 = IsHelper(1076)
Trigger6 = Root,Command != "hold_x"
Trigger6 = Root,Command != "hold_y"
Trigger7 = IsHelper(1077)
Trigger7 = Root,Command != "hold_a"
Trigger8 = IsHelper(1078)
Trigger8 = Root,Command != "hold_b"
Value = 1008

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType = A
Trigger1 = IsHelper(1005)
Trigger2 = IsHelper(1015)
Trigger3 = IsHelper(1025)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1035)
Trigger4 = P2BodyDist Y = [0,60]
Trigger5 = IsHelper(1025)
Trigger5 = P2BodyDist Y = [0,60]
Value = 1008

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType != H
TriggerAll = EnemyNear(Root,Var(57)),MoveType = A || EnemyNear(Root,Var(57)),StateNo >= 200
Trigger1 = IsHelper(1005)
Trigger2 = IsHelper(1015)
Trigger3 = IsHelper(1025)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1035)
Trigger4 = P2BodyDist Y = [0,60]
Trigger5 = IsHelper(1025)
Trigger5 = P2BodyDist Y = [0,60]
Value = 1008

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType != H
TriggerAll = EnemyNear(Root,Var(57)),MoveType = A || EnemyNear(Root,Var(57)),StateNo < 200
Trigger1 = IsHelper(1005)
Trigger1 = (Random + GameTime) % 5 = 0
Trigger2 = IsHelper(1015)
Trigger2 = (Random + GameTime) % 5 = 0
Trigger3 = IsHelper(1025)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1035)
Trigger4 = P2BodyDist Y = [0,60]
Trigger5 = IsHelper(1025)
Trigger5 = P2BodyDist Y = [0,60]
Value = 1008

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType = H
Trigger1 = IsHelper(1005)
Trigger2 = IsHelper(1015)
Trigger3 = IsHelper(1025)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1035)
Trigger4 = P2BodyDist Y = [0,60]
Trigger5 = IsHelper(1025)
Trigger5 = P2BodyDist Y = [0,60]
Value = 1008

[State 1007, ステート変更(CPU)]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType = A
Trigger1 = IsHelper(1075)
Trigger2 = IsHelper(1076)
Trigger3 = IsHelper(1077)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1078)
Trigger4 = EnemyNear(Root,Var(57)),StateType != A
Value = 1008

[State 1007, ステート変更(CPU)]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType != H
TriggerAll = EnemyNear(Root,Var(57)),MoveType = A || EnemyNear(Root,Var(57)),StateNo >= 200
Trigger1 = IsHelper(1075)
Trigger2 = IsHelper(1076)
Trigger3 = IsHelper(1077)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1078)
Trigger4 = EnemyNear(Root,Var(57)),StateType != A
Trigger5 = IsHelper(1077) || IsHelper(1078)
Trigger5 = P2BodyDist Y = [0,60]
Value = 1008

[State 1007, ステート変更(CPU)]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType != H
TriggerAll = EnemyNear(Root,Var(57)),MoveType = A || EnemyNear(Root,Var(57)),StateNo < 200
Trigger1 = IsHelper(1075)
Trigger1 = (Random + GameTime) % 5 = 0
Trigger2 = IsHelper(1076)
Trigger3 = IsHelper(1077)
Trigger3 = EnemyNear(Root,Var(57)),StateType != A
Trigger4 = IsHelper(1078)
Trigger4 = EnemyNear(Root,Var(57)),StateType != A
Value = 1008

[State 1007, ステート変更(CPU)]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType != A
TriggerAll = EnemyNear(Root,Var(57)),StateType != L
TriggerAll = EnemyNear(Root,Var(57)),MoveType = H
Trigger1 = IsHelper(1075)
Trigger2 = IsHelper(1076)
Trigger3 = IsHelper(1077)
Trigger4 = IsHelper(1078)
Value = 1008

[State 1007, ステート変更(CPU)]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = Root,Var(59) > 0
TriggerAll = (Root,Var(59) > 5) || (Root,Var(50) <= Root,Var(59) * 133 && (Random + GameTime) % 1000 <= 133)
TriggerAll = Time >= 10
TriggerAll = EnemyNear(Root,Var(57)),Alive
TriggerAll = EnemyNear(Root,Var(57)),Life
TriggerAll = EnemyNear(Root,Var(57)),StateType = A
TriggerAll = EnemyNear(Root,Var(57)),MoveType = H
Trigger1 = IsHelper(1075)
Trigger1 = EnemyNear(Root,Var(57)),StateNo = [5030,5079]
Trigger1 = EnemyNear(Root,Var(57)),HitFall
Trigger1 = Root,P2BodyDist X > IfElse(Root,Var(43) > 40,120,140)
Trigger2 = IsHelper(1076)
Trigger2 = EnemyNear(Root,Var(57)),StateNo = [5030,5079]
Trigger2 = EnemyNear(Root,Var(57)),HitFall
Trigger2 = Root,P2BodyDist X > IfElse(Root,Var(43) > 40,120,140)
Trigger3 = IsHelper(1077)
Trigger3 = EnemyNear(Root,Var(57)),StateNo = [5030,5079]
Trigger3 = EnemyNear(Root,Var(57)),HitFall
Trigger3 = Root,P2BodyDist X > IfElse(Root,Var(43) > 40,120,140)
Trigger3 = P2BodyDist Y = [0,60]
Trigger4 = IsHelper(1078)
Trigger4 = EnemyNear(Root,Var(57)),StateNo = [5030,5079]
Trigger4 = EnemyNear(Root,Var(57)),HitFall
Trigger4 = Root,P2BodyDist X > IfElse(Root,Var(43) > 40,120,140)
Trigger4 = P2BodyDist Y = [0,60]
Trigger5 = IsHelper(1075) || IsHelper(1076) || IsHelper(1077) || IsHelper(1078)
Trigger5 = EnemyNear(Root,Var(57)),HitFall = 0
Value = 1008

[State 1007, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Time >= 60 * 3
Value = 1008

;------------------------------------------------------------------------
[Statedef 1008];黒竜石ビーム発射
MoveType= A
Physics = N
Ctrl = 0
Anim = 1008
VelSet = 0,0
SprPriority = 3

;----------------------------[初期処理]

[State 1008, BOSS]
Type = ChangeAnim
TriggerAll = IsHelper
TriggerAll = Time = 0
Trigger1 = IsHelper(1076)
Trigger2 = IsHelper(1078)
Value = 1009

;----------------------------[動作処理]

[State 1008, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
Trigger1 = FVar(0)
Trigger1 = Var(2) = 0
Trigger1 = Var(2) := 1
FV = 0
Value = Root,FVar(0) * FVar(0)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1008, SE : ビーム発射待機]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 1
Persistent = 0
IgNoreHitPause = 1

[State 1008, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1008, 一部打撃と飛び道具以外無敵]
Type = HitBy
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Value = SCA,SA,HA,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1008, 黒竜石消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1009
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1008, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1008, 黒竜石 : 丸エフェクト]
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

[State 1008, ABヘルパー呼出]
Type = Helper
TriggerAll = IsHelper
TriggerAll = AnimElem = 2
Trigger1 = IsHelper(1005)
Trigger2 = IsHelper(1015)
HelperType = Normal
Name = "Beam"
ID = IfElse(IsHelper(1015),10150,10050)
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10050
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

[State 1008, CDヘルパー呼出]
Type = Helper
TriggerAll = IsHelper
TriggerAll = AnimElem = 2
Trigger1 = IsHelper(1025)
Trigger2 = IsHelper(1035)
HelperType = Normal
Name = "Beam"
ID = IfElse(IsHelper(1035),10350,10250)
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10250
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

[State 1008, ヘルパー呼出]
Type = Helper
TriggerAll = IsHelper(1075)
Trigger1 = Time = 0
HelperType = Normal
Name = "Beam"
ID = 10750
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10050
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
Persistent = 1

[State 1008, ヘルパー呼出]
Type = Helper
TriggerAll = IsHelper(1076)
Trigger1 = Time % 6 = 0
HelperType = Normal
Name = "Beam"
ID = 10760 + (Time % 18 != 0)
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10050
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
Persistent = 1

[State 1008, ヘルパー呼出]
Type = Helper
TriggerAll = IsHelper(1077)
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Beam"
ID = 10770
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10250
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
Persistent = 1

[State 1008, ヘルパー呼出]
Type = Helper
TriggerAll = IsHelper(1078)
Trigger1 = Time = 0
Trigger2 = Time = 10
Trigger3 = Time = 20
Trigger4 = Time = 30
Trigger5 = Time = 40
Trigger6 = Time = 50
HelperType = Normal
Name = "Beam"
ID = 10780
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 10250
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
Persistent = 1

[State 1008, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Root,RoundState != 2
Trigger2 = EnemyNear(Root,Var(57)),Alive = 0
Trigger3 = EnemyNear(Root,Var(57)),Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
Value = 1009

[State 1008, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Value = 1009

;------------------------------------------------------------------------
[Statedef 1009];黒竜石退場
MoveType= I
Physics = N
Ctrl = 0
Anim = 1005
VelSet = 0,0

;----------------------------[初期処理]

[State 1009, 黒竜石の使用許可通知]
Type = ParentVarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 10
Value = (Root,Var(10) | 32) - 32
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1009, 残像消失]
Type = AfterImageTime
TriggerAll = IsHelper
Trigger1 = Time = 0
Time = 0

[State 1009, 丸エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(6001)
Trigger1 = Time = 0
ID = 6001

[State 1009, 黒電撃エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(6021)
Trigger1 = Time = 0
ID = 6021

[State 1009, 白粒子エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(60100)
Trigger1 = Time = 0
ID = 60100

;----------------------------[動作処理]

[State 1009, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
Trigger1 = FVar(0)
Trigger1 = Var(2) = 0
Trigger1 = Var(2) := 1
FV = 0
Value = Root,FVar(0) * FVar(0)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1009, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1009, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1009, フェードアウト : 透過]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256 - (256 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1)),(256 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1))
Persistent = 1
IgNoreHitPause = 1

[State 1009, フェードアウト : 伸縮]
Type = AngleDraw
Trigger1 = 1
Value = 0
Scale = 0.01 * (-AnimTime * 100 / (AnimElemTime(1) - AnimTime)),1 + 0.05 * (AnimElemTime(1) * 100 / (AnimElemTime(1) - AnimTime))

[State 1009, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = AnimTime = 0

;------------------------------------------------------------------------
;黒竜石 : Bヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1015];黒竜石登場
Physics = N
Ctrl = 0
Anim = 1005
VelSet = 0,-15
SprPriority = 3

;Var(0)  = 発生保証の消失判定
;Var(1)  = 本体のPrevStateNo記憶
;Var(2)  = コンボ補正計算フラグ

;FVar(0) = 飛び道具からのコンボ補正通知

;----------------------------[初期処理]

[State 1015, 黒竜石の使用通知]
Type = ParentVarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 10
Value = (Root,Var(10) | 32)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1015, SE : 黒竜石呼出]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 0
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1015, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1015, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1015, 本体のPrevStateNo記憶]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 1
Value = Root,PrevStateNo
Persistent = 0
IgNoreHitPause = 1

[State 1015, Effect : 黒電撃]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 6021
ID = 6021
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -1
Scale = 0.5, 0.5
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 1015, Effect : 白粒子]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 60100
ID = 60100
Pos = 0, 0
PosType = P1
BindTime = -1
ReMoveTime = -1
Scale = 1, 1
SprPriority = 2
OwnPal = 1
ReMoveOnGetHit = 1
Persistent = 0
IgNoreHitPause = 1

[State 1015, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1015, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1015, フェードイン]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 128 + (128 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1)),128 - (128 / (AnimElemTime(1) - AnimTime) * AnimElemTime(1))
Persistent = 1
IgNoreHitPause = 1

[State 1015, 減速]
Type = VelMul
Trigger1 = 1
Y = 0.91

[State 1015, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger1 = Var(0)
Value = 1009

[State 1015, ステート変更]
Type = ChangeState
TriggerAll = IsHelper(1035)
Trigger1 = AnimTime = 0
Value = 1007

[State 1015, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Value = 1016

;------------------------------------------------------------------------
[Statedef 1016];黒竜石移動
MoveType= A
Physics = N
Ctrl = 0
Anim = 1006
VelSet = 8,Vel Y
SprPriority = 5

;----------------------------[コンボ補正]

[State 1016, 始動補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1016, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.76
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1016, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State 1016, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1016, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
TriggerAll = Root,PrevStateNo = 1100 || Root,PrevStateNo = 1110 || Root,PrevStateNo = 1120
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1016, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = RoundState != 2
Trigger2 = Root,Alive = 0
Trigger3 = Root,Life = 0
Trigger4 = Root,StateNo = 3010
Trigger5 = Root,StateNo = [3110,3115]
Trigger6 = Root,StateNo = [3510,3515]
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1016, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1016, 一部打撃と飛び道具以外無敵]
Type = HitBy
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Value = SCA,SA,HA,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1016, 黒竜石消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1009
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1016, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1016, 残像]
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

[State 1016, 減速]
Type = VelMul
Trigger1 = 1
X = 0.90

[State 1016, 上昇]
Type = VelAdd
Trigger1 = 1
Y = 0.26

[State 1016, 減速]
Type = VelMul
Trigger1 = Time >= 30
Y = 0.83

[State 1016, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = FrontEdgeBodyDist <= 0
X = FrontEdgeBodyDist

[State 1016, 光粒子エフェクト(白玉)]
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

[State 1016, 光粒子エフェクト(黒玉)]
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

[State 1016, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = Time = 0
Trigger2 = MoveContact = 12
Attr = S,SP
HitFlag = MAP
GuardFlag = MA
AffectTeam = E
AnimType = Heavy
Priority = 5,Hit
Damage = 50 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 3
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 18
Ground.HitTime = 18
Air.HitTime = 18
Guard.SlideTime = 14
Guard.HitTime = 14
Guard.CtrlTime = 14
AirGuard.CtrlTime = 14
YAccel = .55
Ground.Velocity = -2, -8
Guard.Velocity = -3
Air.Velocity = -2, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 22 + IfElse((Root,Var(10) & 4),22,0)
ID = 1000
Kill = 1
Guard.Kill = 0
PalFx.Time = 50
PalFx.Mul = 64,0,128
Persistent = 1

[State 1016, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,21,100)
Persistent = 1
IgNoreHitPause = 1

[State 1016, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1000)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1000),Pos X - Pos X) * Facing),-40 + Floor(Target(1000),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
Persistent = 1
IgNoreHitPause = 1

[State 1016, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(7001) = 0
TriggerAll = NumTarget(1000)
Trigger1 = MoveHit = 1
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
Persistent = 1
IgNoreHitPause = 1

[State 1016, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 1
IgNoreHitPause = 1

[State 1016, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Var(0)
Value = 1009

[State 1016, ステート変更]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Time = 40
Value = 1007

;------------------------------------------------------------------------
[Statedef 10050];ビーム攻撃判定の発生中
MoveType= A
Physics = N
Ctrl = 0
Anim = 6015
SprPriority = 2
FaceP2 = 1

;FVar(0) = 相手距離計算
;FVar(1) = 相手高さ計算

;FVar(10) = X乱数
;FVar(11) = Y乱数

;----------------------------[]

[State 10050, 消失]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Trigger1 = ScreenPos X != [-20,339]
Trigger2 = ScreenPos Y <= -20
Value = 10000

;----------------------------[初期処理]

[State 10050, 角度乱数]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Time = 0
Trigger1 = IsHelper(10760) || IsHelper(10761)
FV = 10
Value = -180 + ((Random + GameTime) % 360) + 0.0000001

[State 10050, 角度乱数]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Time = 0
Trigger1 = IsHelper(10760) || IsHelper(10761)
FV = 11
Value = ((Random + GameTime) % 180) + 0.0000001

[State 10050, 相手距離]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
FV = 0
Value = P2Dist X + 0.0000001
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State 10050, 相手高さ]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
FV = 1
Value = P2Dist Y + EnemyNear(Root,Var(57)),Const(Size.Mid.Pos.Y) + 0.0000001
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

;----------------------------[コンボ補正]

[State 10050, コンボ補正]
Type = ParentVarSet
Trigger1 = MoveHit
FV = 0
Value = 0.92
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 10050, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State 10050, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 10050, SE : ビーム発射]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 2
Persistent = 0
IgNoreHitPause = 1

[State 10050, 軌道]
Type = AngleSet
TriggerAll = IsHelper
TriggerAll = Anim = 6015
Trigger1 = Time = 0
Value = (Atan(FVar(0) / FVar(1)) * 180 / Pi) + (180 * (FVar(1) > 0))

[State 10050, 軌道]
Type = AngleSet
TriggerAll = IsHelper
TriggerAll = Anim = 6015
TriggerAll = Time = 0
Trigger1 = IsHelper(10751) || IsHelper(10761)
Value = (Atan(FVar(10) / FVar(11)) * 180 / Pi) + (180 * (FVar(11) > 0))

[State 10050, CPU性能軌道]
Type = AngleSet
TriggerAll = Anim = 6012
Trigger1 = Time = 0
Value = 180 + 90

[State 10050, 発射速度]
Type = VelSet
TriggerAll = IsHelper
TriggerAll = Anim = 6015
Trigger1 = Time = 0
X = (FVar(0) / (Abs(FVar(0)) + Abs(FVar(1)))) * IfElse(Root,Var(31) > 0,4,3)
Y = ((FVar(1)) / (Abs(FVar(0)) + Abs(FVar(1)))) * IfElse(Root,Var(31) > 0,4,3)

[State 10050, 発射速度]
Type = VelSet
TriggerAll = IsHelper
TriggerAll = Anim = 6015
TriggerAll = Time = 0
Trigger1 = IsHelper(10751) || IsHelper(10761)
X = (FVar(10) / (Abs(FVar(10)) + Abs(FVar(11)))) * IfElse(Root,Var(31) > 0,4,3)
Y = ((FVar(11)) / (Abs(FVar(10)) + Abs(FVar(11)))) * IfElse(Root,Var(31) > 0,4,3)

[State 10050, 発射速度 : BOSS]
Type = VelSet
TriggerAll = Anim = 6012
Trigger1 = Time = 0
X = Abs(Cos(Atan(Abs(90 - 90 + 0.0000001) / Abs(90 + 0.0000001)))) * 2
Y = Abs(Sin(Atan(Abs(90 - 90 + 0.0000001) / Abs(90 + 0.0000001)))) * 2

;----------------------------[]

[State 10050, 角度描画]
Type = AngleDraw
Trigger1 = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 1
IgNoreHitPause = 1

[State 10050, 透過処理]
Type = Trans
Trigger1 = 1
Trans = Add
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 1
IgNoreHitPause = 1

[State 10050, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 10050, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 10050, 一部飛び道具以外無敵]
Type = HitBy
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Value = SCA,SP,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 10050, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 10051
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 10050, 加速]
Type = VelSet
Trigger1 = AnimElem = 4
X = Vel X * 6
Y = Vel Y * 6
Persistent = 0

[State 10050, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time % 2 = 0
Anim = 6010
ID = 6010
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -0.5 - Random % 20 * 0.1
Accel = 0, 0.055
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

;----------------------------[攻撃]

[State 10050, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 76 + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10050, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = IsHelper(10760) = 0
TriggerAll = IsHelper(10761) = 0
TriggerAll = Root,Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 60 + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10050, ヒット定義]
Type = HitDef
TriggerAll = IsHelper(10760) || IsHelper(10761)
TriggerAll = Root,Var(31) > 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 26 + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 0, 0
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10050, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,20,100)
Persistent = 0
IgNoreHitPause = 1

[State 10050, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1000)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8000,8010)
ID = 8000
Pos = -10 + Floor((Target(1000),Pos X - Pos X) * Facing),-10
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

[State 10050, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 10050, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Pos Y >= 0
Trigger2 = MoveContact || MoveReversed
Value = 10051

;------------------------------------------------------------------------
[Statedef 10051];ビーム退場
MoveType= I
Physics = N
Ctrl = 0
Anim = 10000
VelSet = 0,0
SprPriority = 2

;----------------------------[動作処理]

[State 10051, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 10051, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 10051, 消失エフェクト]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 6005
ID = 6005
Pos = 0,-10
PosType = P1
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 2
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 10051, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = AnimTime = 0

;------------------------------------------------------------------------
[Statedef 10250];ビーム攻撃判定の発生中
MoveType= A
Physics = N
Ctrl = 0
Anim = 6013
VelSet = 0,0
SprPriority = 2
FaceP2 = IsHelper(10770) || IsHelper(10780)

;----------------------------[]

[State 10250, 消失]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Trigger1 = ScreenPos X != [-20,339]
Trigger2 = ScreenPos Y <= -20
Value = 10000

;----------------------------[初期処理]

[State 10250, 延長アニメ]
Type = ChangeAnim
TriggerAll = IsHelper(10250) = 0
TriggerAll = IsHelper(10350) = 0
TriggerAll = IsHelper(10770) = 0
TriggerAll = IsHelper(10780) = 0
Trigger1 = Time = 0
Value = 6014

;----------------------------[コンボ補正]

[State 10250, コンボ補正]
Type = ParentVarSet
Trigger1 = MoveHit
FV = 0
Value = 0.92
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 10250, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State 10250, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 9999
IgNoreHitPause = 1

[State 10250, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 11
Trigger2 = MoveContact || MoveReversed
MoveType = I

[State 10250, SE : ビーム発射]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1000, 2
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 10250, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 10250, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 10250, 一部飛び道具以外無敵]
Type = Null;HitBy
Trigger1 = IsHelper
Value = SCA,SP,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 10250, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 10000
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 10250, ヘルパー呼出]
Type = Helper
TriggerAll = IsHelper(10250) || IsHelper(10350) || IsHelper(10770) || IsHelper(10780)
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Beam"
ID = IfElse(IsHelper(10250),10251,IfElse(IsHelper(10350),10351,IfElse(IsHelper(10770),10771,10781)))
Pos = 260, 0
PosType = P1
Facing = 1
StateNo = 10250
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
Persistent = 1

[State 10250, 光粒子エフェクト(白玉)]
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

[State 10250, 光粒子エフェクト(白玉)]
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

[State 10250, 光粒子エフェクト(白玉)]
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

[State 10250, 光粒子エフェクト(白玉)]
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

;----------------------------[攻撃]

[State 10250, ヒット定義]
Type = HitDef
TriggerAll = IsHelper(10250) || IsHelper(10350)
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 76 + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Guard.Velocity = -2
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10250, ヒット定義]
Type = HitDef
TriggerAll = IsHelper(10770) || IsHelper(10780)
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = (28 + 28 * IsHelper(10770)) + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Guard.Velocity = -2
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80 * IsHelper(10770), 60 * IsHelper(10770)
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10250, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = IsHelper(10251) || IsHelper(10351)
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !Parent,MoveContact && !Parent,MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 3, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = 76 + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Guard.Velocity = -2
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10250, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = IsHelper(10771) || IsHelper(10781)
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !Parent,MoveContact && !Parent,MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 3, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Medium
Priority = 4,Hit
Damage = (28 + 28 * IsHelper(10771)) + IfElse((Root,Var(10) & 4),12,0), 8
PauseTime = 1, 10 + IfElse((Root,Var(10) & 4),8,0)
Guard.PauseTime = 1, 10
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
Guard.Velocity = -2
Air.Velocity = -4, -4 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80 * IsHelper(10771), 60 * IsHelper(10771)
GivePower = 40, 30
Fall = 0
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 18 + IfElse((Root,Var(10) & 4),18,0)
ID = 1000
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 10250, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,20,100)
Persistent = 0
IgNoreHitPause = 1

[State 10250, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1000)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,6005,8010)
ID = 8000
Pos = -10 + Floor((Target(1000),Pos X - Pos X) * Facing),-10
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

[State 10250, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 10250, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Value = 10000

;------------------------------------------------------------------------
;龍の灯火 : A
;------------------------------------------------------------------------
[Statedef 1100]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1100, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1100, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1100, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

;----------------------------[動作処理]

[State 1100, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1100, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

;----------------------------[攻撃]

[State 1100, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(1105) = 0
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1105
Pos = 80, 0
PosType = P1
Facing = 1
StateNo = 1105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1100, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1100, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;龍の灯火 : 空中下降
;------------------------------------------------------------------------
[Statedef 1101]
Type    = A
MoveType= I
Physics = A
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 44
SprPriority = 2

[State 1101, 操作受付]
Type = CtrlSet
Trigger1 = Time = 7
Value = 1

;------------------------------------------------------------------------
;龍の灯火 : B
;------------------------------------------------------------------------
[Statedef 1110]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1110, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1110, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1110, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

;----------------------------[動作処理]

[State 1110, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1110, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

;----------------------------[攻撃]

[State 1110, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(1115) = 0
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1115
Pos = 120, 0
PosType = P1
Facing = 1
StateNo = 1105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1110, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1110, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;龍の灯火 : C
;------------------------------------------------------------------------
[Statedef 1120]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = 80
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1120, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1120, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1120, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

;----------------------------[動作処理]

[State 1120, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1120, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

;----------------------------[攻撃]

[State 1120, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(1125) = 0
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1125
Pos = 160, 0
PosType = P1
Facing = 1
StateNo = 1105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1120, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1120, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;龍の灯火 : EX
;------------------------------------------------------------------------
[Statedef 1150]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = -500
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1150, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1150, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1150, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

[State 1150, SE : 超必殺]
Type = PlaySnd
Trigger1 = Time = 0
Value = 5, 0
Persistent = 0

[State 1150, Effect : 超必殺]
Type = Explod
Trigger1 = Time = 0
Anim = 8300
ID = 8300
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
ReMoveTime = 30
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 1
Under = 0
Persistent = 0

;----------------------------[動作処理]

[State 1150, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1150, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

;----------------------------[攻撃]

[State 1150, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(1155) = 0
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1155
Pos = IfElse(FrontEdgeBodyDist <= 80,FrontEdgeBodyDist,80), 0
PosType = P1
Facing = 1
StateNo = 1155
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1150, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1150, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;射出ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1155]
MoveType= I
Physics = N
Ctrl = 0
Anim = 10000
VelSet = 0,0
SprPriority = 3

;----------------------------[動作処理]

[State 1155, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1155, 不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Flag2 = Invisible
Persistent = 1
IgNoreHitPause = 1

[State 1155, 座標指定]
Type = PosSet
TriggerAll = IsHelper
Trigger1 = Time = 0
Y = 0

;----------------------------[]

[State 1155, ヘルパー呼出]
Type = Helper
TriggerAll = IsHelper
Trigger1 = Time % 10 = 0
HelperType = Normal
Name = "Frame"
ID = 1156
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 1105
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1155, 座標指定]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = Time % 10 = 0
X = 40

[State 1155, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = FrontEdgeBodyDist <= 0
X = FrontEdgeBodyDist

[State 1155, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Time >= 20
Value = 10000

;------------------------------------------------------------------------
;飛び道具ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1105]
MoveType= A
Physics = N
Ctrl = 0
Anim = 6050
VelSet = 0,0
SprPriority = 3

;Var(0)  = 発生保証の消失判定
;Var(1)  = 本体のPrevStateNo記憶

;----------------------------[初期処理]

[State 1105, 本体のPrevStateNo記憶]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 1
Value = Root,PrevStateNo
Persistent = 0
IgNoreHitPause = 1

[State 1105, 座標指定]
Type = PosSet
TriggerAll = IsHelper
Trigger1 = Time = 0
Y = 0

[State 1105, 振動]
Type = EnvShake
TriggerAll = IsHelper
Trigger1 = Time = 0
Time = 10
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 1105, 始動補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) != [200,4999]
Trigger1 = MoveHit
Trigger1 = AnimElem = 13
FV = 0
Value = Root,FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1105, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) = [200,4999]
Trigger1 = MoveHit
Trigger1 = AnimElem = 13
FV = 0
Value = Root,FVar(0) * 0.76
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1105, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1105, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1105, 音の方向補正]
Type = PosAdd
Trigger1 = ScreenPos X != [-20,339]
X = 160
Persistent = 0
IgNoreHitPause = 1

[State 1105, SE : 魔法]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1100, 0
Persistent = 0
IgNoreHitPause = 1

[State 1105, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 13
MoveType = I

;----------------------------[ヘルパー処理]

[State 1105, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1105, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1105, 一部飛び道具以外無敵]
Type = HitBy
Trigger1 = IsHelper
Value = SCA,SP,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1105, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1106
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1105, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1105, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger2 = ScreenPos X != [-20,339]
Trigger3 = ScreenPos Y <= -20
Value = 10000

;----------------------------[攻撃]

[State 1105, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = IsHelper(1156) = 0
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 4
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Up
Priority = 5,Hit
Damage = 40 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 9
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = 0, -8
Guard.Velocity = 0
Air.Velocity = 0, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1100
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1105, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = IsHelper(1156) = 0
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 10
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Up
Priority = 5,Hit
Damage = 40 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 9
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = 0, -8
Guard.Velocity = 0
Air.Velocity = 0, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 80, 60
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1100
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1105, ヒット定義]
Type = HitDef
TriggerAll = IsHelper(1156)
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 4, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = DiagUp
Priority = 5,Hit
Damage = 60 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 9
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -4, -8
Guard.Velocity = 0
Air.Velocity = -4, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 0, 0
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1100
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1105, SE : ヒット音, Part1]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = IsHelper(1156) = 0
TriggerAll = !MoveReversed
TriggerAll = AnimElem = 4, > 0
TriggerAll = AnimElem = 10, <= 0
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,7,100)
Persistent = 0
IgNoreHitPause = 1

[State 1105, SE : ヒット音, Part2]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = IsHelper(1156) = 0
TriggerAll = !MoveReversed
TriggerAll = AnimElem = 10, > 0
TriggerAll = AnimTime <= 0
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,7,100)
Persistent = 0
IgNoreHitPause = 1

[State 1105, SE : ヒット音, EX]
Type = PlaySnd
TriggerAll = IsHelper(1156)
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,7,100)
Persistent = 0
IgNoreHitPause = 1

[State 1105, Effect : ヒットスパーク, Part1]
Type = Explod
TriggerAll = IsHelper
TriggerAll = IsHelper(1156) = 0
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1100)
TriggerAll = AnimElem = 4, > 0
TriggerAll = AnimElem = 10, <= 0
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1100),Pos X - Pos X) * Facing),-40 + Floor(Target(1100),Pos Y - Pos Y)
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

[State 1105, Effect : ヒットスパーク, Part2]
Type = Explod
TriggerAll = IsHelper
TriggerAll = IsHelper(1156) = 0
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1100)
TriggerAll = AnimElem = 10, > 0
TriggerAll = AnimTime <= 0
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1100),Pos X - Pos X) * Facing),-40 + Floor(Target(1100),Pos Y - Pos Y)
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

[State 1105, Effect : ヒットスパーク, EX]
Type = Explod
TriggerAll = IsHelper(1156)
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1100)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1100),Pos X - Pos X) * Facing),-40 + Floor(Target(1100),Pos Y - Pos Y)
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

[State 1105, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 1105, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Var(0)
Value = 1106
IgNoreHitPause = 1

;------------------------------------------------------------------------
[Statedef 1106]
MoveType= I
Physics = N
Ctrl = 0
Anim = 10000
VelSet = 0,0
SprPriority = 2

;----------------------------[動作処理]

[State 1106, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1106, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1106, 消失エフェクトA]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 6052
ID = 6052
Pos = 0,0
PosType = P1
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 1106, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = AnimTime = 0

;------------------------------------------------------------------------
;暗黒 : ガードキャンセル
;------------------------------------------------------------------------
[Statedef 1200]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1200
PowerAdd = -500
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1200, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1200, 無敵]
Type = NotHitBy
TriggerAll = Var(31) <= 0
Trigger1 = Time = 0
Value = SCA,AA,AP,AT
Time = 10

[State 1200, 無敵]
Type = NotHitBy
TriggerAll = Var(31) > 0
Trigger1 = Time = 0
Value = SCA,AA,AP,AT
Time = 20

;----------------------------[動作処理]

[State 1200, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1200, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 7
MoveType = I

[State 1200, SE : 超必殺]
Type = PlaySnd
Trigger1 = Time = 0
Value = 5, 0
Persistent = 0

[State 1200, Effect : 超必殺]
Type = Explod
Trigger1 = Time = 0
Anim = 8300
ID = 8300
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
ReMoveTime = 30
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 1
Under = 0
Persistent = 0

;----------------------------[攻撃]

[State 1200, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 4
HelperType = Normal
Name = "Frame"
ID = 1205
Pos = 80, -20
PosType = P1
Facing = 1
StateNo = 1205
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1200, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;射出ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1205]
MoveType= I
Physics = N
Ctrl = 0
Anim = 10000
VelSet = 0,0
SprPriority = 3

;----------------------------[動作処理]

[State 1205, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1205, 不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Flag2 = Invisible
Persistent = 1
IgNoreHitPause = 1

;----------------------------[]

[State 1205, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Frame"
ID = 1206
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 1206
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 20
Size.Ground.Front = 20
Size.Air.Back = 20
Size.Air.Front = 20
Size.Height = 45
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1205, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 10
HelperType = Normal
Name = "Frame"
ID = 1206
Pos = 0, -60
PosType = P1
Facing = 1
StateNo = 1206
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 20
Size.Ground.Front = 20
Size.Air.Back = 20
Size.Air.Front = 20
Size.Height = 45
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1205, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 20
HelperType = Normal
Name = "Frame"
ID = 1206
Pos = 0, -120
PosType = P1
Facing = 1
StateNo = 1206
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 20
Size.Ground.Front = 20
Size.Air.Back = 20
Size.Air.Front = 20
Size.Height = 45
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1205, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Time >= 20
Value = 10000

;------------------------------------------------------------------------
;飛び道具ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1206]
MoveType= A
Physics = N
Ctrl = 0
Anim = 1206
VelSet = 0,0
SprPriority = 3

;Var(0)  = 発生保証の消失判定
;Var(1)  = 本体のPrevStateNo記憶

;----------------------------[初期処理]

[State 1206, 本体のPrevStateNo記憶]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 1
Value = Root,PrevStateNo
Persistent = 0
IgNoreHitPause = 1

[State 1206, 振動]
Type = EnvShake
TriggerAll = IsHelper
Trigger1 = Time = 0
Time = 10
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

;----------------------------[ダメージ補正]

[State 1206, 補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
Trigger1 = MoveHit
Trigger1 = AnimElem = 21
FV = 0
Value = Root,FVar(0) * 0.33
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1206, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1206, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1206, 音の方向補正]
Type = PosAdd
Trigger1 = ScreenPos X != [-20,339]
X = 160
Persistent = 0
IgNoreHitPause = 1

[State 1206, SE : 魔法]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1100, 0
Persistent = 0
IgNoreHitPause = 1

[State 1206, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 21
MoveType = I

;----------------------------[ヘルパー処理]

[State 1206, 発生保証の消失判定]
Type = VarSet
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = Root,PalNo != 12
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1206, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1206, 一部飛び道具以外無敵]
Type = HitBy
TriggerAll = IsHelper
Trigger1 = Root,Var(31) <= 0
Value = SCA,SP,HP
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1206, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1207
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1206, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1206, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger2 = ScreenPos X != [-20,339]
Trigger3 = ScreenPos Y <= -20
Value = 10000

;----------------------------[攻撃]

[State 1206, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = Root,Var(31) <= 0
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2
Trigger2 = AnimElem = 8
Trigger3 = AnimElem = 14
Trigger4 = AnimElem = 20
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Up
Priority = 5,Hit
Damage = 12 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 7 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 7
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 18
Guard.HitTime = 18
Guard.CtrlTime = 18
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = 0, -8
Guard.Velocity = 0
Air.Velocity = 0, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 0, 0
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1206, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = Root,Var(31) > 0
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 2
Trigger2 = AnimElem = 8
Trigger3 = AnimElem = 14
Trigger4 = AnimElem = 20
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Up
Priority = 5,Hit
Damage = 20 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 7 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 7
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 18
Guard.HitTime = 18
Guard.CtrlTime = 18
AirGuard.CtrlTime = 18
YAccel = .55
Ground.Velocity = 0, -8
Guard.Velocity = 0
Air.Velocity = 0, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 0, 0
GivePower = 40, 30
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1200
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1206, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,7,100)
IgNoreHitPause = 1

[State 1206, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1200)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1200),Pos X - Pos X) * Facing),-40 + Floor(Target(1200),Pos Y - Pos Y)
PosType = P1
Random = 10, 20
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
OwnPal = 1
IgNoreHitPause = 1

[State 1206, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 1206, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Var(0)
Value = 1207
IgNoreHitPause = 1

;------------------------------------------------------------------------
[Statedef 1207]
MoveType= I
Physics = N
Ctrl = 0
Anim = 10000
VelSet = 0,0
SprPriority = 2

;----------------------------[動作処理]

[State 1207, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1207, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1207, 消失エフェクト]
Type = Explod
TriggerAll = IsHelper
Trigger1 = Time = 0
Anim = 1207
ID = 1207
Pos = 0,0
PosType = P1
ReMoveTime = -2
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 3
OwnPal = 1
Persistent = 0
IgNoreHitPause = 1

[State 1207, 消失]
Type = DestroySelf
TriggerAll = IsHelper
Trigger1 = AnimTime = 0

;------------------------------------------------------------------------
;黒竜石 : CPU-A
;------------------------------------------------------------------------
[Statedef 1075]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = 160
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1075, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1075, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1075, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1075, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[攻撃]

[State 1075, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 1075
Pos = IfElse(FrontEdgeBodyDist <= 40,FrontEdgeBodyDist,40), -180
PosType = P1
Facing = 1
StateNo = 1005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1075, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 10
HelperType = Normal
Name = "Floating_Rock"
ID = 1075
Pos = IfElse(FrontEdgeBodyDist <= 80,FrontEdgeBodyDist,80), -140
PosType = P1
Facing = 1
StateNo = 1005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1075, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : CPU-B
;------------------------------------------------------------------------
[Statedef 1076]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = -500
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1076, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1076, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1076, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1076, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

[State 1076, SE : 超必殺]
Type = PlaySnd
Trigger1 = Time = 0
Value = 5, 0
Persistent = 0

[State 1076, Effect : 超必殺]
Type = Explod
Trigger1 = Time = 0
Anim = 8300
ID = 8300
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
ReMoveTime = 30
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 1
Under = 0
Persistent = 0

;----------------------------[攻撃]

[State 1076, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Floating_Rock"
ID = 1076
Pos = IfElse(FrontEdgeBodyDist <= 50,FrontEdgeBodyDist,50), -160
PosType = P1
Facing = 1
StateNo = 1005
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1076, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : CPU-C
;------------------------------------------------------------------------
[Statedef 1077]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = 160
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1077, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1077, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1077, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1077, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

;----------------------------[攻撃]

[State 1077, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 0
HelperType = Normal
Name = "Floating_Rock"
ID = 1077
Pos = -40, -20
PosType = P1
Facing = 1
StateNo = 1015
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1077, ヘルパー呼出]
Type = Helper
Trigger1 = Time = 10
HelperType = Normal
Name = "Floating_Rock"
ID = 1077
Pos = -80, -60
PosType = P1
Facing = 1
StateNo = 1015
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1077, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;黒竜石 : CPU-D
;------------------------------------------------------------------------
[Statedef 1078]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1000
PowerAdd = -500
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1078, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1078, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1078, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 10
MoveType = I

[State 1078, 前方に余白]
Type = Width
Trigger1 = 1
Player = 20,0

[State 1078, SE : 超必殺]
Type = PlaySnd
Trigger1 = Time = 0
Value = 5, 0
Persistent = 0

[State 1078, Effect : 超必殺]
Type = Explod
Trigger1 = Time = 0
Anim = 8300
ID = 8300
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
ReMoveTime = 30
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 1
Under = 0
Persistent = 0

;----------------------------[攻撃]

[State 1078, ヘルパー呼出]
Type = Helper
Trigger1 = AnimElem = 2
HelperType = Normal
Name = "Floating_Rock"
ID = 1078
Pos = IfElse(BackEdgeBodyDist <= 50,-BackEdgeBodyDist,-50), -20
PosType = P1
Facing = 1
StateNo = 1015
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
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

[State 1078, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;龍の灯火 : CPU-A
;------------------------------------------------------------------------
[Statedef 1175]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = 160
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1175, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1175, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1175, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

;----------------------------[動作処理]

[State 1175, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1175, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

;----------------------------[攻撃]

[State 1175, ヘルパー呼出]
Type = Helper
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1180
Pos = IfElse(FrontEdgeBodyDist <= 80,FrontEdgeBodyDist,80), 0
PosType = P1
Facing = 1
StateNo = 1180
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1175, ヘルパー呼出]
Type = Helper
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1185
Pos = 260, 0
PosType = P1
Facing = 1
StateNo = 1185
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1175, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1175, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;龍の灯火 : CPU-B
;------------------------------------------------------------------------
[Statedef 1176]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = 160
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1176, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1176, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1176, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

;----------------------------[動作処理]

[State 1176, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1176, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

;----------------------------[攻撃]

[State 1176, ヘルパー呼出]
Type = Helper
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1181
Pos = 260, 0
PosType = P1
Facing = 1
StateNo = 1180
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1176, ヘルパー呼出]
Type = Helper
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1185
Pos = IfElse(FrontEdgeBodyDist <= 80,FrontEdgeBodyDist,80), 0
PosType = P1
Facing = 1
StateNo = 1185
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1176, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1176, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;龍の灯火 : CPU-C
;------------------------------------------------------------------------
[Statedef 1177]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1100
PowerAdd = -500
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1177, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

[State 1177, 状態変更]
Type = StateTypeSet
TriggerAll = Pos Y
Trigger1 = Time = 0
StateType = A

[State 1177, アニメ切替]
Type = ChangeAnim
TriggerAll = StateType = A
Trigger1 = Time = 0
Value = 1101

;----------------------------[動作処理]

[State 1177, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1177, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 10
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 15
MoveType = I

[State 1177, 無敵]
Type = NotHitBy
Trigger1 = Time = 0
Value = SCA,AA,AP,AT
Time = 16

[State 1177, SE : 超必殺]
Type = PlaySnd
Trigger1 = Time = 0
Value = 5, 0
Persistent = 0

[State 1177, Effect : 超必殺]
Type = Explod
Trigger1 = Time = 0
Anim = 8300
ID = 8300
Pos = 0, Const(Size.Mid.Pos.Y)
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
ReMoveTime = 30
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Scale = 0.5, 0.5
SprPriority = 9
OnTop = 1
Shadow = 0, 0, 0
OwnPal = 1
ReMoveOnGetHit = 1
Under = 0
Persistent = 0

;----------------------------[攻撃]

[State 1177, ヘルパー呼出]
Type = Helper
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = Anim = 1101
Trigger2 = AnimElem = 12
HelperType = Normal
Name = "Frame"
ID = 1182
Pos = IfElse(FrontEdgeBodyDist <= 80,FrontEdgeBodyDist,80), 0
PosType = P1
Facing = 1
StateNo = 1180
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1177, 専用の空中下降へ]
Type = ChangeState
TriggerAll = StateType = A
Trigger1 = AnimTime = 0
Value = 1101

[State 1177, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = (StateType = A) * 51
Ctrl = 1

;------------------------------------------------------------------------
;射出ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1180]
MoveType= I
Physics = N
Ctrl = 0
Anim = 10000
VelSet = 0,0
SprPriority = 3

;Var(0)  = ランダム座標

;----------------------------[動作処理]

[State 1180, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1180, 不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Flag2 = Invisible
Persistent = 1
IgNoreHitPause = 1

[State 1180, 座標指定]
Type = PosSet
TriggerAll = IsHelper
Trigger1 = Time = 0
Y = 0

[State 1180, 自分振り向く]
Type = Turn
TriggerAll = IsHelper(1181)
Trigger1 = Time = 0
Persistent = 0

;----------------------------[]

[State 1180, ヘルパー呼出]
Type = Helper
Trigger1 = IsHelper(1182) = 0
Trigger1 = Time % 10 = 0
Trigger2 = IsHelper(1182)
Trigger2 = Time % 30 = 0
HelperType = Normal
Name = "Frame"
ID = IfElse(IsHelper(1182),1186,1185)
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 1185
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = 0.5
Size.YScale = 0.5
Size.Ground.Back = 15
Size.Ground.Front = 15
Size.Air.Back = 15
Size.Air.Front = 15
Size.Height = 180
Size.Proj.DoScale = 1
Size.Head.Pos = 0, 0
Size.Mid.Pos = 0, 0
Size.ShadowOffSet = 0

[State 1180, 座標指定]
Type = PosAdd
TriggerAll = IsHelper(1180)
Trigger1 = Time % 10 = 0
X = 40

[State 1180, 座標指定]
Type = PosAdd
TriggerAll = IsHelper(1181)
Trigger1 = Time % 10 = 0
X = 40

[State 1180, 乱数]
Type = VarRandom
TriggerAll = IsHelper(1182)
Trigger1 = Time % 30 = 0
V = 0
Range = -160,160

[State 1180, 座標指定]
Type = PosSet
TriggerAll = IsHelper(1182)
Trigger1 = Time % 30 = 0
X = Var(0)

[State 1180, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = FrontEdgeBodyDist <= 0
X = FrontEdgeBodyDist

[State 1180, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = BackEdgeBodyDist <= 0
X = -BackEdgeBodyDist

[State 1180, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = IsHelper(1182) = 0
Trigger1 = Time >= 30
Trigger2 = IsHelper(1182)
Trigger2 = Time >= 120
Value = 10000

;------------------------------------------------------------------------
;飛び道具ヘルパー(HELPER)
;------------------------------------------------------------------------
[Statedef 1185]
MoveType= A
Physics = N
Ctrl = 0
Anim = 6050
VelSet = 0,0
SprPriority = 3

;Var(0)  = 発生保証の消失判定
;Var(1)  = 本体のPrevStateNo記憶

;----------------------------[初期処理]

[State 1185, 本体のPrevStateNo記憶]
Type = VarSet
TriggerAll = IsHelper
Trigger1 = Time = 0
V = 1
Value = Root,PrevStateNo
Persistent = 0
IgNoreHitPause = 1

[State 1185, 座標指定]
Type = PosSet
TriggerAll = IsHelper
Trigger1 = Time = 0
Y = 0

[State 1185, 振動]
Type = EnvShake
TriggerAll = IsHelper
Trigger1 = Time = 0
Time = 10
Freq = 90
Ampl = -3
Phase = 90
Persistent = 0
IgNoreHitPause = 1

;----------------------------[コンボ補正]

[State 1185, 始動補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) != [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.84
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1185, コンボ補正]
Type = ParentVarSet
TriggerAll = IsHelper
TriggerAll = Var(1) = [200,4999]
Trigger1 = MoveHit
FV = 0
Value = Root,FVar(0) * 0.94
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
Persistent = 0
IgNoreHitPause = 1

[State 1185, 攻撃力補正]
Type = AttackMulSet
Trigger1 = IsHelper
Value = 1.0 * Root,FVar(0) * Root,FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1185, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = Ceil((Const(Size.Proj.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1185, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = FrontEdgeBodyDist <= 0
Trigger1 = Time = 0
X = FrontEdgeBodyDist

[State 1185, 座標補正]
Type = PosAdd
TriggerAll = IsHelper
Trigger1 = BackEdgeBodyDist <= 0
Trigger1 = Time = 0
X = -BackEdgeBodyDist

[State 1185, SE : 魔法]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1100, 0
Persistent = 0
IgNoreHitPause = 1

[State 1185, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 13
MoveType = I

;----------------------------[ヘルパー処理]

[State 1185, 発生保証の消失判定]
Type = Null;VarSet
TriggerAll = IsHelper
Trigger1 = Root,MoveType = H
Trigger1 = Root,StateNo != [120,159]
Trigger2 = Root,StateType = L
V = 0
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State 1185, 無敵]
Type = NotHitBy
Trigger1 = IsHelper
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1185, 飛び道具消失へ]
Type = HitOverRide
Trigger1 = IsHelper
Attr = SCA,AA,AP,AT
Slot = 0
StateNo = 1106
Time = 1
ForceAir = 0
Persistent = 1
IgNoreHitPause = 1

[State 1185, 影を不可視化]
Type = AssertSpecial
Trigger1 = IsHelper
Flag = NoShadow
Persistent = 1
IgNoreHitPause = 1

[State 1185, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = AnimTime = 0
Trigger2 = ScreenPos X != [-20,339]
Trigger3 = ScreenPos Y <= -20
Value = 10000

;----------------------------[攻撃]

[State 1185, ヒット定義]
Type = HitDef
TriggerAll = IsHelper
TriggerAll = IsHelper(1186) = 0
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 4, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = DiagUp
Priority = 5,Hit
Damage = 32 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 9
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = -4, -8
Guard.Velocity = 0
Air.Velocity = -4, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 240, 200
GivePower = 60, 40
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1100
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1185, ヒット定義]
Type = HitDef
TriggerAll = IsHelper(1186)
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Root,Var(10) & 8)
Trigger1 = AnimElem = 4, >= 0
Attr = S,SP
HitFlag = MAFP
GuardFlag = MA
AffectTeam = E
AnimType = Up
Priority = 5,Hit
Damage = 92 + IfElse((Root,Var(10) & 4),16,0), 6
PauseTime = 1, 3 + IfElse((Root,Var(10) & 4),10,0)
Guard.PauseTime = 1, 9
SparkNo = -1
Guard.SparkNo = -1
HitSound = -1
GuardSound = -1
Ground.Type = High
Air.Type = High
Ground.SlideTime = 20
Ground.HitTime = 20
Air.HitTime = 20
Guard.SlideTime = 12
Guard.HitTime = 12
Guard.CtrlTime = 12
AirGuard.CtrlTime = 12
YAccel = .55
Ground.Velocity = 0, -8
Guard.Velocity = 0
Air.Velocity = 0, -7 + Root,FVar(2)
AirGuard.Velocity = 0, 2
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
GetPower = 0, 0
GivePower = 60, 40
SprPriority = 3
Fall = 1
Air.Fall = 1
Fall.Recover = 0
Fall.RecoverTime = 99 + IfElse((Root,Var(10) & 4),99,0)
ID = 1100
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1185, SE : ヒット音]
Type = PlaySnd
TriggerAll = IsHelper
TriggerAll = !MoveReversed
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,7,100)
Persistent = 0
IgNoreHitPause = 1

[State 1185, Effect : ヒットスパーク]
Type = Explod
TriggerAll = IsHelper
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1100)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = -10 + Floor((Target(1100),Pos X - Pos X) * Facing),-40 + Floor(Target(1100),Pos Y - Pos Y)
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

[State 1185, カウンターヒット演出]
Type = EnvColor
TriggerAll = IsHelper
TriggerAll = (Root,Var(10) & 4)
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 1185, 消失ステートへ]
Type = ChangeState
TriggerAll = IsHelper
Trigger1 = Var(0)
Value = 1106
IgNoreHitPause = 1

;------------------------------------------------------------------------
;命の蝋燭 : CPU
;------------------------------------------------------------------------
[Statedef 1500]
Type    = S
MoveType= A
Physics = N
Juggle  = 0
VelSet = 0,0
Ctrl = 0
Anim = 1500
PowerAdd = 100
SprPriority = 2
FaceP2 = 1

;----------------------------[初期処理]

[State 1500, 先行入力 : 有効時間の初期化]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Time = 0
V = 1
Value = 0
IgNoreHitPause = 1

;----------------------------[動作処理]

[State 1500, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1500, 相手ガード認識範囲]
Type = AttackDist
Trigger1 = AnimElem = 4, > 0
Value = Ceil((Const(Size.Attack.Dist) * 1) * (Const(Size.XScale) * 2))
IgNoreHitPause = 1

[State 1500, SE : 振り音]
Type = PlaySnd
Trigger1 = AnimElem = 5
Value = 0, 5
Persistent = 0
IgNoreHitPause = 1

[State 1500, 攻撃判定の無力化]
Type = StateTypeSet
Trigger1 = AnimElem = 6
MoveType = I

[State 1500, ヘルパー呼出]
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

[State 1500, ヘルパー呼出]
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

;----------------------------[暗転]

[State 1500, 無敵]
Type = NotHitBy
Trigger1 = Time = 0
Value = SCA,AA,AP,AT
Time = 10

;----------------------------[攻撃]

[State 1500, ヒット定義]
Type = HitDef
TriggerAll = !MoveContact && !MoveReversed
TriggerAll = !(Var(10) & 8)
TriggerAll = EnemyNear(Var(57)),StateNo != [120,159]
Trigger1 = AnimElem = 3
Attr = S,ST
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
ID = 1500
Kill = 0
Guard.Kill = 0
Persistent = 1

[State 1500, ヒット定義]
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
ID = 1501
Kill = 1
Guard.Kill = 0
Persistent = 1

[State 1500, ステート奪取]
Type = TargetState
TriggerAll = NumTarget(1500)
TriggerAll = Target(1500),IsHelper = 0
Trigger1 = MoveHit
Value = 1520
ID = 1500
Persistent = 0
IgNoreHitPause = 1

[State 1500, 投げ成立ステートへ]
Type = ChangeState
TriggerAll = NumTarget(1500)
Trigger1 = Target(1500),StateNo = 1520
Value = 1510
Persistent = 0
IgNoreHitPause = 1

[State 1500, SE : ヒット音]
Type = PlaySnd
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1501)
Trigger1 = MoveContact = 1
Value = 1, IfElse(MoveHit,1,100)
Persistent = 0
IgNoreHitPause = 1

[State 1500, Effect : ヒットスパーク]
Type = Explod
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1501)
Trigger1 = MoveContact = 1
Anim = IfElse(MoveHit,8002,8012)
ID = 8000
Pos = 20 + Floor((Target(1501),Pos X - Pos X) * Facing),-60 + Floor(Target(1501),Pos Y - Pos Y)
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

[State 1500, カウンターヒット演出]
Type = EnvColor
TriggerAll = (Var(10) & 4)
TriggerAll = !MoveReversed
TriggerAll = NumTarget(1501)
Trigger1 = MoveHit = 1
Value = 255,255,255
Under = 1
Time = 1
MoveTime = 1
Persistent = 0
IgNoreHitPause = 1

[State 1500, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;命の蝋燭 : 投げ成立
;------------------------------------------------------------------------
[Statedef 1510]
Type    = S
MoveType= A
Physics = N
VelSet = 0,0
Ctrl = 0
Anim = 1510
PowerAdd = 0

;----------------------------[動作処理]

[State 1510, 闇玉エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(6300)
Trigger1 = AnimElemTime(38) = 0
Trigger2 = AnimElem = 38, < 0
Trigger2 = NumTarget(1500) = 0
Trigger3 = AnimElem = 38, < 0
Trigger3 = NumTarget(1500)
Trigger3 = Target(1500),StateNo != 1520
ID = 6300
IgNoreHitPause = 1

[State 1510, ぐるぐる光玉エフェクト消去]
Type = Null;ReMoveExplod
TriggerAll = NumExplod(6301)
Trigger1 = AnimElemTime(38) = 0
Trigger2 = AnimElem = 38, < 0
Trigger2 = NumTarget(1500) = 0
Trigger3 = AnimElem = 38, < 0
Trigger3 = NumTarget(1500)
Trigger3 = Target(1500),StateNo != 1520
ID = 6301
IgNoreHitPause = 1

[State 1510, 相手がいない場合は退去]
Type = ChangeState
TriggerAll = AnimElem = 38, < 0
Trigger1 = NumTarget(1500) = 0
Trigger2 = NumTarget(1500)
Trigger2 = Target(1500),StateNo != 1520
Value = 0
Ctrl = 1

[State 1510, 振動]
Type = EnvShake
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Time = 15
Freq = 90
Ampl = -3
Phase = 90

[State 1510, 振動]
Type = EnvShake
Trigger1 = AnimElemTime(38) = 0
Time = 15
Freq = 90
Ampl = -10
Phase = 90

[State 1510, SE : ヒット音]
Type = PlaySnd
Trigger1 = Time = 0
Value = 3000, 0
Persistent = 0

[State 1510, SE : ｺﾞｫｫｫ]
Type = PlaySnd
Trigger1 = AnimElemTime(7) = 0
Value = 3000, 1

[State 1510, SE : ｺﾞｫｫｫ]
Type = PlaySnd
TriggerAll = AnimElemTime(7) >= 0
TriggerAll = AnimElemTime(28) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = 3000, 2

[State 1510, SE : ﾊﾞｰﾝ]
Type = PlaySnd
Trigger1 = AnimElemTime(38) = 0
Value = 3000, 3
Persistent = 0

[State 1510, SE : ﾊﾞｰﾝ]
Type = PlaySnd
Trigger1 = AnimElemTime(38) = 0
Value = 3000, 4
Persistent = 0

[State 1510, 画面端に余白を作る]
Type = Width
Trigger1 = AnimElem = 38, < 0
Edge = 60,0

[State 1510, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1510, 無敵]
Type = NotHitBy
Trigger1 = AnimElem = 38, < 0
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1510, Effect : ぐるぐる光玉]
Type = Explod
;TriggerAll = NumExplod(6301) = 0
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
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

[State 1510, Effect : 闇玉]
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

[State 1510, Effect : 黒ボール]
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

[State 1510, Effect : 黒火柱]
Type = Explod
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
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

[State 1510, Effect : 白火柱]
Type = Explod
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
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

[State 1510, Effect : 黒波紋]
Type = Explod
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
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

[State 1510, Effect : 黒煙爆発]
Type = Explod
TriggerAll = NumExplod(6303) = 0
Trigger1 = AnimElemTime(38) = 0
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

[State 1510, Effect : 黒煙爆発]
Type = Explod
TriggerAll = NumExplod(6304) = 0
Trigger1 = AnimElemTime(38) = 0
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

[State 1510, Effect : 黒波紋]
Type = Explod
TriggerAll = AnimElemTime(37) >= 0
TriggerAll = AnimElemTime(40) < 0
Trigger1 = AnimElemTime(37) = 0
Trigger2 = AnimElemTime(37) = 6
Trigger3 = AnimElemTime(37) = 12
Trigger4 = AnimElemTime(37) = 18
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

[State 1510, ヘルパー呼出]
Type = Helper
TriggerAll = NumHelper(7001) = 0
TriggerAll = NumTarget(1500)
Trigger1 = AnimElemTime(38) = 0
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

[State 1510, 掴んだ相手の位置 : Elem = 1]
Type = TargetBind
Trigger1 = AnimElemTime(3) < 0
Time = 1
ID = 1500
Pos = 80, 0

[State 1510, 掴んだ相手の位置 : Elem = 2]
Type = TargetBind
Trigger1 = AnimElemTime(3) >= 0
Trigger1 = AnimElemTime(4) < 0
Time = 1
ID = 1500
Pos = 60, -100

[State 1510, 掴んだ相手の位置 : Elem = 3]
Type = TargetBind
Trigger1 = AnimElemTime(4) >= 0
Trigger1 = AnimElemTime(5) < 0
Time = 1
ID = 1500
Pos = 70, -130

[State 1510, 掴んだ相手の位置 : Elem = 4]
Type = TargetBind
Trigger1 = AnimElemTime(5) >= 0
Trigger1 = AnimElemTime(6) < 0
Time = 1
ID = 1500
Pos = 70, -145

[State 1510, 掴んだ相手の位置 : Elem = 5]
Type = TargetBind
Trigger1 = AnimElemTime(6) >= 0
Trigger1 = AnimElemTime(38) < 0
Time = 1
ID = 1500
Pos = 55, -155

[State 1510, 掴んだ相手の位置 : Elem = 6]
Type = TargetBind
Trigger1 = AnimElemTime(38) = 0
Time = 1
ID = 1500
Pos = 70, -170

[State 1510, ゲージ回収]
Type = PowerAdd
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = 20

[State 1510, ゲージ回収]
Type = PowerAdd
Trigger1 = AnimElemTime(38) = 0
Value = 120

[State 1510, 掴んだ相手のゲージ増減]
Type = TargetPowerAdd
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = 10
ID = 1500

[State 1510, 掴んだ相手のゲージ増減]
Type = TargetPowerAdd
Trigger1 = AnimElemTime(38) = 0
Value = 60
ID = 1500

[State 1510, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
Trigger1 = AnimElemTime(7) >= 0
Trigger1 = AnimElemTime(38) < 0
Trigger1 = AnimElemTime(7) % 20 = 0
Value = -Floor(28 * Const(Data.Attack) / 100 * FVar(0) * FVar(1))
ID = 1500
Kill = 0

[State 1510, 掴んだ相手のライフ増減]
Type = TargetLifeAdd
Trigger1 = AnimElemTime(38) = 0
Value = -Floor(128 * Const(Data.Attack) / 100 * FVar(0) * FVar(1))
ID = 1500
Kill = 1

[State 1510, 掴んだ相手のステート変更]
Type = TargetState
Trigger1 = AnimElemTime(38) = 0
Value = 1521
ID = 1500

[State 1510, コンボ補正]
Type = VarSet
Trigger1 = AnimElemTime(38) = 0
FV = 0
Value = FVar(0) * 0.75
Persistent = 0

[State 1510, 待機状態へ]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;------------------------------------------------------------------------
;命の蝋燭 : 相手拘束状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 1520]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
Ctrl = 0
PowerAdd = 0

;----------------------------[動作処理]

[State 1520, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 1520, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1520, 喰らい中のアニメ指定]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 1520

[State 1520, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 1520, ステート返還直前に着陸]
Type = PosSet
Trigger1 = !GetHitVar(IsBound)
Y = 0
IgNoreHitPause = 1

[State 1520, ステート返還]
Type = SelfState
Trigger1 = !GetHitVar(IsBound)
Value = 5000
IgNoreHitPause = 1

;------------------------------------------------------------------------
;命の蝋燭 : 相手吹っ飛び状態(ENEMY)
;------------------------------------------------------------------------
[Statedef 1521]
Type    = A
MoveType= H
Physics = N
VelSet = -3,-8
Ctrl = 0
Anim = 5035
PowerAdd = 0

;----------------------------[動作処理]

[State 1521, ヘルパーを掴んでしまった場合の対策]
Type = DestroySelf
Trigger1 = IsHelper
IgNoreHitPause = 1

[State 1521, 無敵]
Type = NotHitBy
Trigger1 = 1
Value = SCA,AA,AP,AT
Time = 1
Persistent = 1
IgNoreHitPause = 1

[State 1521, ぶつかり判定の消失]
Type = PlayerPush
Trigger1 = 1
Value = 0
IgNoreHitPause = 1

[State 1521, 縦スクロール固定]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0
IgNoreHitPause = 1

[State 1521, 重力]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 1521, 身体を紫に]
Type = PalFX
Trigger1 = 1
Time = 1
Mul = 64,0,128

[State 1521, 喰らい中のアニメ指定]
Type = ChangeAnim
TriggerAll = Anim != [5050,5069]
TriggerAll = SelfAnimExist(5050)
Trigger1 = !SelfAnimExist(5035)
Trigger2 = AnimTime = 0
Value = 5050
Persistent = 0
IgNoreHitPause = 1

;----------------------------[]

[State 1521, 相手のステートを返還]
Type = SelfState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value = 5100

