[StateDef -3]

[State -3, デバッグ]
Type = DisplayToClipBoard
Trigger1 = 1
Text = "P2BodyDist X=%d,P2BodyDist Y=%d,Pos Y=%d,PrevStateNo=%d,P2StateNo=%d \n"
Params = Floor(P2BodyDist X),Floor(P2BodyDist Y),Floor(Pos Y),PrevStateNo,EnemyNear(Var(57)),StateNo
IgNoreHitPause = 1

[State -3, デバッグ]
Type = AppendToClipBoard
Trigger1 = 1
Text = "Vel X=%d,Vel Y=%d,%d,%d,%f"
Params = Ceil(EnemyNear(Var(57)),Vel X),Ceil(EnemyNear(Var(57)),Vel Y),Var(41),Var(42),FVar(2)
IgNoreHitPause = 1

[State -3, System_Helper]
Type = Null;Helper
TriggerAll = IsHelper = 0
TriggerAll = NumHelper(60906 + ID) = 0
Trigger1 = StateNo = 5900
Name = "System"
ID = 60906 + ID
Pos = 0, 9999
StateNo = 99999
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State -3, AI_Activate]
Type = Helper
TriggerAll = IsHelper = 0
TriggerAll = NumHelper(94444 + ID) = 0
TriggerAll = RoundState <= 2
TriggerAll = Alive
Trigger1 = Var(59) = 0
HelperType = Normal
Name = "AI"
StateNo = 99999
ID = 94444 + ID
Pos = 9999,9999
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, Safety]
Type = ChangeState
TriggerAll = IsHelper
TriggerAll = IsHelper(94444 + Root,ID)
Trigger1 = StateNo != 99999
Value = 99999
Ctrl = 0

[State -3, Option_Helper]
Type = Helper
TriggerAll = IsHelper = 0
TriggerAll = NumHelper(99999 + ID) = 0
Trigger1 = StateNo = 5900
Name = "Option"
ID = 99999 + ID
Pos = 9999, 9999
StateNo = 99999
OwnPal = 1
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State -3, AI用画面端検知ヘルパー]
Type = Helper
TriggerAll = IsHelper = 0
TriggerAll = NumHelper(60000) = 0
Trigger1 = Alive
Name = "StageEdge_Search"
ID = 60000
Pos = 0,9999
PosType = P1
Facing = 1
StateNo = 60000
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State -3, AI用飛び道具探知ヘルパー]
Type = Helper
TriggerAll = IsHelper = 0
TriggerAll = NumHelper(66666) = 0
Trigger1 = Alive
Name = "Proj_Search"
StateNo = 66666
ID = 66666
Pos = 9999,9999
SuperMoveTime = 2147483647
PauseMoveTime = 2147483647

[State -3, AI_ON]
Type = VarSet
TriggerAll = Var(59) <= 0
TriggerAll = !IsHelper
TriggerAll = RoundState <= 2
Trigger1 = Command = "CPU1" || Command = "CPU2" || Command = "CPU3"
Trigger2 = Command = "CPU4" || Command = "CPU5" || Command = "CPU6"
Trigger3 = Command = "CPU7" || Command = "CPU8" || Command = "CPU9"
Trigger4 = Command = "CPU10" || Command = "CPU11" || Command = "CPU12"
Trigger5 = Command = "CPU13" || Command = "CPU14" || Command = "CPU15"
Trigger6 = Command = "CPU16" || Command = "CPU17" || Command = "CPU18"
Trigger7 = Command = "CPU19" || Command = "CPU20" || Command = "CPU21"
Trigger8 = Command = "CPU22" || Command = "CPU23" || Command = "CPU24"
Trigger9 = Command = "CPU25" || Command = "CPU26" || Command = "CPU27"
Trigger10 = Command = "CPU28" || Command = "CPU29" || Command = "CPU30"
Trigger11 = Command = "a" ^^ Command = "a2"
Trigger12 = Command = "b" ^^ Command = "b2"
Trigger13 = Command = "c" ^^ Command = "c2"
Trigger14 = Command = "x" ^^ Command = "x2"
Trigger15 = Command = "y" ^^ Command = "y2"
Trigger16 = Command = "z" ^^ Command = "z2"
Trigger17 = Command = "start" ^^ Command = "start2"
Trigger18 = Command = "fwd" ^^ Command = "fwd2"
Trigger18 = Command = "holdfwd" ^^ Command = "holdfwd2"
Trigger19 = Command = "back" ^^ Command = "back2"
Trigger19 = Command = "holdback" ^^ Command = "holdback2"
Trigger20 = Command = "up" ^^ Command = "up2"
Trigger20 = Command = "holdup" ^^ Command = "holdup2"
Trigger21 = Command = "down" ^^ Command = "down2"
Trigger21 = Command = "holddown" ^^ Command = "holddown2"
Trigger22 = Var(59) = 0
Trigger22 = IsHomeTeam
Trigger22 = TeamSide = 2 || MatchNo > 1
Trigger23 = Var(59) = 0
Trigger23 = PalNo = 7
V = 59
Value = 1
Persistent = 1
IgNoreHitPause = 1

[State -3, コマンド暴発防止]
Type = AssertSpecial
Trigger1 = 1
Flag = NoStandGuard
Flag2 = NoCrouchGuard
Flag3 = NoAirGuard
IgNoreHitPause = 1

[State -3, コマンド暴発防止]
Type = AssertSpecial
Trigger1 = Var(59) > 0
Flag = NoWalk
IgNoreHitPause = 1

[State -3, 固定乱数]
Type = VarRandom
TriggerAll = Var(59) > 0
Trigger1 = StateNo < 200
Trigger1 = Time % 10 = Time > 0
Trigger2 = StateNo >= 200
Trigger2 = Time = 1
V = 50
Range = 0,999
IgNoreHitPause = 1

[State -3, リダイレクト相手取得]
Type = VarSet
TriggerAll = !IsHelper
TriggerAll = RoundState = 2
Trigger1 = NumEnemy = 1
Trigger2 = NumEnemy >= 2
Trigger2 = EnemyNear(0),Alive
Trigger2 = EnemyNear(0),Life
Trigger2 = NumTarget = 0
Trigger3 = NumEnemy >= 2
Trigger3 = EnemyNear(1),Alive = 0
Trigger4 = NumEnemy >= 2
Trigger4 = EnemyNear(1),Life = 0
Trigger5 = NumEnemy >= 2
Trigger5 = EnemyNear(1),Alive
Trigger5 = EnemyNear(1),Life
Trigger5 = NumTarget = 1
Trigger5 = EnemyNear(1),ID != Target,ID
Trigger6 = NumEnemy >= 2
Trigger6 = NumTarget >= 2
V = 57
Value = 0
IgNoreHitPause = 1

[State -3, リダイレクト相手取得(タッグ戦)]
Type = VarSet
TriggerAll = !IsHelper
TriggerAll = RoundState = 2
TriggerAll = NumEnemy >= 2
TriggerAll = EnemyNear(1),Alive
TriggerAll = EnemyNear(1),Life
Trigger1 = EnemyNear(0),Alive = 0
Trigger2 = EnemyNear(0),Life = 0
Trigger3 = NumTarget = 1
Trigger3 = EnemyNear(0),ID != Target,ID
V = 57
Value = 1
IgNoreHitPause = 1

[State -3, 前方端]
Type = VarSet
Trigger1 = NumHelper(60000)
V = 41
Value = Helper(60000),Var(54)
IgNoreHitPause = 1

[State -3, 後方端]
Type = VarSet
Trigger1 = NumHelper(60000)
V = 42
Value = Helper(60000),Var(55)
IgNoreHitPause = 1

[State -3, 相手画面端]
Type = VarSet
Trigger1 = NumHelper(60000)
V = 43
Value = Helper(60000),Var(56)
IgNoreHitPause = 1

[State -3, 飛び道具探知変数代入]
Type = VarSet
TriggerAll = Var(59) > 0
Trigger1 = NumHelper(66666)
V = 48
Value = Helper(66666),Var(58)
IgNoreHitPause = 1

[State -2, タッグ時手持ち無沙汰フラグON]
Type = VarAdd
TriggerAll = Var(59) > 0
TriggerAll = !IsHelper
TriggerAll = RoundState = 2
Trigger1 = NumEnemy >= 2
Trigger2 = NumPartner
V = 28
Value = 1
IgNoreHitPause = 1

[State -2, タッグ時手持ち無沙汰フラグOFF]
Type = VarSet
TriggerAll = Var(59) > 0
TriggerAll = !IsHelper
Trigger1 = RoundState != 2
Trigger2 = MoveType = H
Trigger2 = StateNo != [120,159]
Trigger3 = NumEnemy = 1
Trigger3 = NumPartner = 0
Trigger4 = NumTarget
Trigger5 = NumPartner
Trigger5 = (Partner,MoveType = H) || (Partner,StateNo = [120,159]) || (Partner,StateNo = [5000,5499]) || (Partner,Alive = 0) || (Partner,NumTarget = 0)
Trigger6 = Enemy(0),Alive
Trigger6 = (Enemy(0),MoveType != H) || (Enemy(0),StateNo = [120,159]) || (Enemy(0),StateNo = [5000,5499])
Trigger7 = NumEnemy >= 2
Trigger7 = Enemy(1),Alive
Trigger7 = (Enemy(1),MoveType != H) || (Enemy(1),StateNo = [120,159]) || (Enemy(1),StateNo = [5000,5499])
V = 28
Value = 0
IgNoreHitPause = 1

[State -3, チーム対戦後は学習初期化]
Type = VarRangeSet
TriggerAll = TeamMode = Turns
Trigger1 = StateNo = 5900
Value = 0
First = 51
Last = 56

[State -3, 起き攻め行動乱数スイッチON]
Type = VarSet
TriggerAll = Var(59) > 0
TriggerAll = RoundState = 2
TriggerAll = EnemyNear(Var(57)),Alive
TriggerAll = EnemyNear(Var(57)),Life
TriggerAll = EnemyNear(Var(57)),StateType = L
Trigger1 = Var(47) = -2
V = 47
Value = -1

[State -3, 起き攻め行動乱数決定]
Type = VarRandom
TriggerAll = Var(59) > 0
TriggerAll = RoundState = 2
Trigger1 = Var(47) = -1
V = 47
Range = 0,999

[State -3, 起き攻め行動乱数スイッチOFF]
Type = VarSet
TriggerAll = Var(59) > 0
TriggerAll = RoundState = 2
Trigger1 = EnemyNear(Var(57)),StateType != L
V = 47
Value = -2











