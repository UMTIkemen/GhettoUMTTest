[StateDef -2]

;-| System |------------------------------------------------------
;------------------------------------------------------------------------
;キャラシステム運用
;------------------------------------------------------------------------

[State -2, 空中ジャンプ回数初期化]
Type = VarSet
Trigger1 = StateType != A
V = 4
Value = 1
IgNoreHitPause = 1

[State -2, レバーニュートラル検知]
Type = VarSet
TriggerAll = Var(59) <= 0
Trigger1 = Command != "holdfwd"
Trigger1 = Command != "holdback"
Trigger1 = Command != "holdup"
Trigger1 = Command != "holddown"
V = 10
Value = (Var(10) | 1) - 1
IgNoreHitPause = 1

[State -2, レバー入力検知]
Type = VarSet
TriggerAll = Var(59) <= 0
TriggerAll = StateNo = 40 || StateNo = 45
Trigger1 = Command = "holdfwd"
Trigger2 = Command = "holdback"
Trigger3 = Command = "holdup"
Trigger4 = Command = "holddown"
V = 10
Value = (Var(10) | 1)
IgNoreHitPause = 1

[State -2, カウンターヒット判定]
Type = VarSet
Trigger1 = 1
V = 10
Value = (Var(10) | 4) - 4 + 4 * EnemyNear(Var(57)),MoveType = A

[State -2, 追撃不可判定ON]
Type = VarSet
Trigger1 = MoveContact || MoveReversed
Trigger1 = EnemyNear(Var(57)),StateType = L
Trigger1 = EnemyNear(Var(57)),MoveType = H
V = 10
Value = (Var(10) | 8)
IgNoreHitPause = 1

[State -2, 追撃不可判定OFF]
Type = VarSet
Trigger1 = EnemyNear(Var(57)),MoveType != H
Trigger2 = EnemyNear(Var(57)),StateNo = [120,159]
V = 10
Value = (Var(10) | 8) - 8
IgNoreHitPause = 1

[State -2, 黒竜石の使用状態OFF]
Type = VarSet
Trigger1 = NumHelper(1005) + NumHelper(1015) + NumHelper(1025) + NumHelper(1035) = 0
Trigger1 = NumHelper(1075) + NumHelper(1076) + NumHelper(1077) + NumHelper(1078) = 0
V = 10
Value = (Var(10) | 32) - 32
IgNoreHitPause = 1

[State -2, ボスモードフラグ]
Type = VarSet
Trigger1 = Var(32) > 0
Trigger1 = Var(59) > 0
V = 31
Value = 1

[State -2, 暗転感知]
Type = VarAdd
TriggerAll = Var(59) > 0
TriggerAll = !IsHelper
Trigger1 = EnemyNear(Var(57)),StateType != L
Trigger1 = EnemyNear(Var(57)),MoveType != H
Trigger1 = EnemyNear(Var(57)),MoveType = A || EnemyNear(Var(57)),StateNo >= 200
Trigger1 = EnemyNear(Var(57)),Time
Trigger2 = Var(49) := 0
V = 49
Value = 1
IgNoreHitPause = 1

[State -2, コンボ補正初期化]
Type = VarSet
Trigger1 = EnemyNear(Var(57)),MoveType != H
Trigger2 = EnemyNear(Var(57)),StateNo = [120,159]
FV = 0
Value = 1.0
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, コンボ補正の下限保持]
Type = VarSet
Trigger1 = FVar(0) < 0.01
FV = 0
Value = 0.01
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 逆根性補正, Lv1]
Type = VarSet
Trigger1 = Ceil(1000 * EnemyNear(Var(57)),Life / EnemyNear(Var(57)),LifeMax) >= 400
FV = 1
Value = 1.0
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 逆根性補正, Lv2]
Type = VarSet
Trigger1 = Ceil(1000 * EnemyNear(Var(57)),Life / EnemyNear(Var(57)),LifeMax) < 400
Trigger1 = Ceil(1000 * EnemyNear(Var(57)),Life / EnemyNear(Var(57)),LifeMax) >= 150
FV = 1
Value = 0.87
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, ネバリ補正, Lv3]
Type = VarSet
Trigger1 = Ceil(1000 * EnemyNear(Var(57)),Life / EnemyNear(Var(57)),LifeMax) < 150
FV = 1
Value = 0.75
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 攻撃力補正]
Type = AttackMulSet
Trigger1 = 1
Value = 1.0 * FVar(0) * FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 攻撃力補正 : ゴールドカラー]
Type = AttackMulSet
Trigger1 = PalNo = 12
Value = 1.8 * FVar(0) * FVar(1)
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 高度補正初期化]
Type = VarSet
Trigger1 = EnemyNear(Var(57)),MoveType != H
Trigger2 = EnemyNear(Var(57)),StateNo = [120,159]
FV = 2
Value = 0
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 高度補正]
Type = VarAdd
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
FV = 2
Value = 0.2

[State -2, 高度補正]
Type = VarAdd
TriggerAll = EnemyNear(Var(57)),GetHitVar(HitCount) > 8
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
FV = 2
Value = 0.4

[State -2, 高度補正]
Type = VarAdd
TriggerAll = EnemyNear(Var(57)),GetHitVar(HitCount) > 12
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
FV = 2
Value = 0.6

[State -2, 高度補正]
Type = VarAdd
TriggerAll = EnemyNear(Var(57)),GetHitVar(HitCount) > 16
TriggerAll = !MoveReversed
Trigger1 = MoveHit = 1
FV = 2
Value = 1

[State -2, ターゲット落下速度補正]
Type = TargetVelAdd
TriggerAll = NumTarget(200)
Trigger1 = Target(200),StateType = A
Trigger1 = Target(200),HitShakeOver
Trigger1 = Target(200),Pos Y < 0
Trigger1 = Target(200),StateNo = [120,159]
Y = .45
ID = 200
IgNoreHitPause = 1

[State -2, ターゲット落下速度補正]
Type = TargetVelAdd
TriggerAll = NumTarget(230)
Trigger1 = Target(230),StateType = A
Trigger1 = Target(230),HitShakeOver
Trigger1 = Target(230),Pos Y < 0
Trigger1 = Target(230),StateNo = [120,159]
Y = .45
ID = 230
IgNoreHitPause = 1

[State -2, ターゲット落下速度補正]
Type = TargetVelAdd
TriggerAll = NumTarget(400)
Trigger1 = Target(400),StateType = A
Trigger1 = Target(400),HitShakeOver
Trigger1 = Target(400),Pos Y < 0
Trigger1 = Target(400),StateNo = [120,159]
Y = .45
ID = 400
IgNoreHitPause = 1

[State -2, ターゲット落下速度補正]
Type = TargetVelAdd
TriggerAll = NumTarget(600)
Trigger1 = Target(600),StateType = A
Trigger1 = Target(600),HitShakeOver
Trigger1 = Target(600),Pos Y < 0
Trigger1 = Target(600),StateNo = [120,159]
Y = .45
ID = 600
IgNoreHitPause = 1

[State -2, 相殺ヘルパー呼出]
Type = Null;Helper
TriggerAll = NumHelper(8400) = 0
TriggerAll = Time = 1
Trigger1 = StateNo = 220
Trigger2 = StateNo = 230
Trigger3 = StateNo = 420
Trigger4 = StateNo = 430
Trigger5 = StateNo = 620
Trigger6 = StateNo = 630
HelperType = Normal
Name = "ReversalDef_Helper"
ID = 8400
Pos = 0, 0
PosType = P1
Facing = 1
StateNo = 8400
KeyCtrl = 0
OwnPal = 1
SuperMoveTime = 0
PauseMoveTime = 0
Size.XScale = Const(Size.XScale)
Size.YScale = Const(Size.YScale)
Size.Ground.Back = Const(Size.Ground.Back)
Size.Ground.Front = Const(Size.Ground.Front)
Size.Air.Back = Const(Size.Air.Back)
Size.Air.Front = Const(Size.Air.Front)
Size.Height = Const(Size.Height)
Size.Proj.DoScale = Const(Size.Proj.DoScale)
Size.Head.Pos = Const(Size.Head.Pos.X), Const(Size.Head.Pos.Y)
Size.Mid.Pos = Const(Size.Mid.Pos.X), Const(Size.Mid.Pos.Y)
Size.ShadowOffSet = Const(Size.ShadowOffSet)

[State -2, ブラックカラー選択 : パワーゲージ常時MAX]
Type = PowerSet
Trigger1 = PalNo = 11
Value = PowerMax
IgNoreHitPause = 1

[State -2, ボスモード補正]
Type = VarSet
Trigger1 = Var(31) > 0
Trigger2 = 0 && FVar(5) := 1.0
FV = 5
Value = 100 * 100 / 133 * 0.01
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, ゴールドカラー補正]
Type = VarSet
Trigger1 = PalNo = 12
Trigger2 = 0 && FVar(6) := 1.0
FV = 6
Value = 100 * 100 / 167 * 0.01
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647
IgNoreHitPause = 1

[State -2, 一撃目補正]
Type = LifeAdd
TriggerAll = Alive && Life
TriggerAll = StateNo != [120,159]
TriggerAll = HitShakeOver = 0
TriggerAll = Var(15) - Life > 1
Trigger1 = Var(31) > 0
Trigger2 = PalNo = 12
Value = Floor((Var(15) - Life) - Floor((Var(15) - Life) * (1.0 * FVar(5) * FVar(6))))
Absolute = 1
IgNoreHitPause = 1

[State -2, 喰らい直前のライフ値記憶]
Type = VarSet
Trigger1 = 1
V = 15
Value = Life
IgNoreHitPause = 1

[State -2, 防御力補正]
Type = DefenceMulSet
TriggerAll = HitShakeOver
Trigger1 = Var(31) > 0
Trigger2 = PalNo = 12
Value = 1.0 * FVar(5) * FVar(6)

[State -2, ライフ自動回復(ゴールドカラー)]
Type = LifeAdd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = PalNo = 12
TriggerAll = RoundState = 2
TriggerAll = StateNo != 5900
TriggerAll = !(StateNo = 0 && Ctrl = 0)
TriggerAll = StateType != L
TriggerAll = MoveType != H
TriggerAll = StateNo != [120,159]
Trigger1 = GameTime % 20 = 0
Value = 4
Kill = 0
Absolute = 1
IgNoreHitPause = 1

;------------------------------------------------------------------------
;演出処理
;------------------------------------------------------------------------

[State -2, 空中強攻撃エフェクト消去]
Type = ReMoveExplod
TriggerAll = NumExplod(6020)
Trigger1 = StateNo != 620
ID = 6020
IgNoreHitPause = 1

[State -2, 打ち落とし攻撃エフェクト消去1]
Type = ReMoveExplod
TriggerAll = NumExplod(6302)
Trigger1 = StateNo != 630
Trigger2 = StateNo = 630
Trigger2 = AnimElem = 10, > 0
ID = 6302
IgNoreHitPause = 1

[State -2, 打ち落とし攻撃エフェクト消去2]
Type = ReMoveExplod
TriggerAll = NumExplod(6304)
Trigger1 = StateNo != 630
Trigger2 = StateNo = 630
Trigger2 = AnimElem = 10, > 0
ID = 6304
IgNoreHitPause = 1

[State -2, 残像消失]
Type = AfterImageTime
TriggerAll = MoveType != H
Trigger1 = StateNo != 100
Trigger1 = StateNo != 105
Trigger1 = StateNo != 110
Trigger1 = StateNo != 115
Trigger1 = StateNo != 700
Time = 0

[State -2, 光粒子エフェクト(白玉)]
Type = Explod
TriggerAll = GameTime % 50 = 0
Trigger1 = StateNo = [0,109]
Trigger1 = StateType != A
Anim = 6010
ID = 6010
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -4.5 + Random % 10 * 0.1
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

[State -2, 光粒子エフェクト(黒玉)]
Type = Explod
TriggerAll = GameTime % 50 = 24
Trigger1 = StateNo = [0,109]
Trigger1 = StateType != A
Anim = 6011
ID = 6011
Pos = 0, 0
PosType = P1
Facing = 1
VFacing = 1
BindTime = 1
Vel = 1 - Random % 20 * 0.1, -4.5 + Random % 10 * 0.1
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

[State -2, SE : 足音]
Type = PlaySnd
Trigger1 = Anim = 20
Trigger1 = AnimElem = 9
Trigger2 = Anim = 20
Trigger2 = AnimElem = 17
Trigger3 = Anim = 21
Trigger3 = AnimElem = 10
Trigger4 = Anim = 21
Trigger4 = AnimTime = 0
Value = 20, 0

[State -2, Voice : 00]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
TriggerAll = (Random + GameTime) % 2 = 0
Trigger1 = StateNo = 210
Trigger1 = AnimElem = 3
Trigger2 = StateNo = 220
Trigger2 = AnimElem = 5
Trigger3 = StateNo = 230
Trigger3 = AnimElem = 5
Trigger4 = StateNo = 410
Trigger4 = AnimElem = 5
Trigger5 = StateNo = 420
Trigger5 = AnimElem = 5
Trigger6 = StateNo = 430
Trigger6 = AnimElem = 6
Trigger7 = StateNo = 600
Trigger7 = AnimElem = 4
Trigger8 = StateNo = 620
Trigger8 = AnimElem = 5
Trigger9 = StateNo = 630
Trigger9 = AnimElem = 6
Value = 10, 0
;Volume = 255
Channel = 0

[State -2, Voice : 00]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = StateNo = 232
Trigger1 = AnimElem = 2
Trigger2 = StateNo = 810
Trigger2 = AnimElem = 8
Value = 10, 0
Channel = 0

[State -2, Voice : 01]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
TriggerAll = (Random + GameTime) % 2 = 0
Trigger1 = 0
Value = 10, 1
Channel = 0

[State -2, Voice : 02]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
TriggerAll = (Random + GameTime) % 2 = 0
Trigger1 = 0
Value = 10, 2
Channel = 0

[State -2, Voice : 03]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
TriggerAll = (Random + GameTime) % 2 = 0
Trigger1 = 0
Value = 10, 3
Channel = 0

[State -2, Voice : 04]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = StateNo = 1000 || StateNo = 1010 || StateNo = 1020 || StateNo = 1030
Trigger1 = Time = 1
Trigger2 = StateNo = 1075 || StateNo = 1076 || StateNo = 1077 || StateNo = 1078
Trigger2 = Time = 1
Value = 10, 4
Channel = 0

[State -2, Voice : 05]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = 0
Value = 10, 5
Channel = 0

[State -2, Voice : 06]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = StateNo = 1100 || StateNo = 1110 || StateNo = 1120 || StateNo = 1150
Trigger1 = Anim = 1100
Trigger1 = AnimElem = 7
Trigger2 = StateNo = 1175 || StateNo = 1176 || StateNo = 1177
Trigger2 = AnimElem = 7
Value = 10, 6
Channel = 0

[State -2, Voice : 07]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = StateNo = 3010
Trigger1 = Time = 1
Value = 10, 7
Channel = 0

[State -2, Voice : 08]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = StateNo = 3100
Trigger1 = Time = 1
Trigger2 = StateNo = 3500
Trigger2 = Time = 1
Value = 10, 8
Channel = 0

[State -2, Voice : 09]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
Trigger1 = StateNo = 181
Trigger1 = Time = 1
Value = 10, 9 + (Random + GameTime) % 2
Channel = 0

[State -2, Voice : 11]
Type = PlaySnd
TriggerAll = !IsHelper
TriggerAll = Alive && Life
TriggerAll = MoveType != H
TriggerAll = StateNo = 3511
TriggerAll = NumTarget(3100)
Trigger1 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 1
Trigger1 = Time = 180
Trigger2 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 2
Trigger2 = Time = 210
Trigger3 = NumHelper(31110) + NumHelper(31111) + NumHelper(31112) = 3
Trigger3 = Time = 240
Trigger4 = Time = 730
Value = 10, 11
Channel = 0

;------------------------------------------------------------------------
;黒竜石
;------------------------------------------------------------------------

[State -2, ヘルパー呼出]
Type = Null;Helper
TriggerAll = NumHelper(6000) = 0
Trigger1 = StateNo = 0
Trigger1 = Ctrl
HelperType = Normal
Name = "Floating_Rock_A"
ID = 6000
Pos = 0, -20
PosType = P1
Facing = 1
StateNo = 6190
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

[State -2, ヘルパー呼出]
Type = Null;Helper
TriggerAll = NumHelper(6001) = 0
Trigger1 = StateNo = 0
Trigger1 = Ctrl
HelperType = Normal
Name = "Floating_Rock_B"
ID = 6001
Pos = 30, -20
PosType = P1
Facing = 1
StateNo = 6190
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

[State -2, ヘルパー呼出]
Type = Null;Helper
TriggerAll = NumHelper(6002) = 0
Trigger1 = StateNo = 0
Trigger1 = Ctrl
HelperType = Normal
Name = "Floating_Rock_C"
ID = 6002
Pos = -30, -20
PosType = P1
Facing = 1
StateNo = 6190
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


