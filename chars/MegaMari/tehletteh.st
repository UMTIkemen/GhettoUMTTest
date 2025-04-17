;七星ゲージ制御ヘルパー------------
;ついでにAIをキャッチしてアイコン表示。これ自体はAI起動ヘルパーとは無関係
[Statedef 4000]
type = A
ctrl = 0
anim = 99999999
velset = 0,0
movetype = I
physics = N
sprpriority = 10

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

;AI探知 使うヘルパーvarは20にしておく
[State CatchAI]
type = Varset
trigger1 = parent,var(59) = [1,2];Easy 番号は1
var(20) = 1 + ifelse(teamside = 2,10,0);AIの起動を確認したら番号をセットする　２Ｐ側ならそれを示す
[State CatchAI]
type = Varset
trigger1 = parent,var(59) = [3,4];Normal 番号は2
var(20) = 2 + ifelse(teamside = 2,10,0);
[State CatchAI]
type = Varset
trigger1 = parent,var(59) = [5,6];Hard 番号は3
var(20) = 3 + ifelse(teamside = 2,10,0);
[State CatchAI]
type = Varset
trigger1 = parent,var(59) = [7,8];Lunatic 番号は4
var(20) = 4 + ifelse(teamside = 2,10,0);
[State CatchAI]
type = Varset
trigger1 = parent,var(59) = [9,10];Extra 番号は5
var(20) = 5 + ifelse(teamside = 2,10,0);
[State CatchAI]
type = Varset
trigger1 = parent,var(59) >= 11;Phantasm 番号は6
var(20) = 6 + ifelse(teamside = 2,10,0);

[State IconPos];ＡＩアイコンの表示位置
type = varset
trigger1 = parent,NumPartner;パートナーがいて
trigger1 = (partner,ID) > (parent,ID);パートナーＩＤがプレイヤーIDより大きい＝自分は1Pである
var(21) = 16;Y座標を上げる

[State AIONSnd];AI起動を知らせるサウンド
type = PlaySnd
trigger1 =  parent,var(59) >= 1;AIの起動を確認
value = 0,1100
;channel = 0;VC
persistent=0
ignorehitpause=1

;現在自分が1pか２ｐかによって位置を変化させる
[State Guage 1p]
type = explod
trigger1 = !NumExplod(11000)
trigger1 = teamside = 1;1p側
anim = 11000+var(20)
id = 11000
postype = left
;pos = -0,50;暫定
pos = 28,240-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State Guage 2p]
type = explod
trigger1 = !NumExplod(11000)
trigger1 = teamside = 2;2p側
anim = 11000+var(20)
id = 11000
postype = right
;pos = 0,50;暫定
pos = -28,240-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1


;---------------------------------------
;ストライカー関連
;アリス
[State -2,Alice_1p]
type = explod
triggerall = !NumExplod(1209)
triggerall = teamside = 1;1p側
;trigger1 = partner,name != "Alice-R";
trigger1 = parent,var(30) > 0;アリスタイマーが０じゃない
trigger2 = NumPartner > 0;パートナーが存在
trigger2 = partner,name = "Alice-R";ありすだったなら
trigger2 = parent,var(30) != -1;アリスタイマーが-1じゃない
anim = 1209
id = 1209
postype = left
;pos = -0,50;暫定
pos = 80,230-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State -2,Alice_2p]
type = explod
triggerall = !NumExplod(1209)
triggerall = teamside = 2;2p側
;trigger1 = partner,name != "Alice-R";
trigger1 = parent,var(30) > 0;アリスタイマーが０じゃない
trigger2 = NumPartner > 0;パートナーが存在
trigger2 = partner,name = "Alice-R";ありすだったなら
trigger2 = parent,var(30) != -1;アリスタイマーが-1じゃない
anim = 1209
id = 1209
postype = right
;pos = 0,50;暫定
pos = -80,230-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State COUNTERRESET  Alice]
type = removeexplod
triggerall = numexplod(1209)
trigger1 = parent,var(30) = 0;アリスタイマーが０
id = 1209;消去
[State COUNTERRESET  Alice]
type = removeexplod
triggerall = NumPartner > 0;パートナーが存在
triggerall = partner,name = "Alice-R";ありすだったなら
triggerall = numexplod(1209)
trigger1 = parent,var(30) >= -1;アリスタイマーが-1
id = 1209;消去

;スピリティア
[State -2,Spilitia_1p]
type = explod
trigger1 = !NumExplod(1219)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(31);ティアタイマーが０じゃない
anim = 12190
id = 1219
postype = left
;pos = -0,50;暫定
pos = 100,230-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State -2,Spilitia_2p]
type = explod
trigger1 = !NumExplod(1219)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(31);タイマーが０じゃない
anim = 12190
id = 1219
postype = right
;pos = 0,50;暫定
pos = -100,230-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State COUNTERRESET  Spilitia]
type = removeexplod
triggerall = numexplod(1219)
trigger1 = parent,var(31) <= 0;タイマーが０
id = 1219;消去

;スピリティア
[State -2,Patche_1p]
type = explod
trigger1 = !NumExplod(1229)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(32);パチュリータイマーが０じゃない
anim = 12290
id = 1229
postype = left
;pos = -0,50;暫定
pos = 120,230-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State -2,Patche_2p]
type = explod
trigger1 = !NumExplod(1229)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(32);タイマーが０じゃない
anim = 12290
id = 1229
postype = right
;pos = 0,50;暫定
pos = -120,230-var(21)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State COUNTERRESET  Patche]
type = removeexplod
triggerall = numexplod(1229)
trigger1 = parent,var(32) <= 0;タイマーが０
id = 1229;消去

;---------------------------------------
;こっから、七星の処理

[State Varset]
type = Varset
trigger1 = 1;Time = 0
var(10) = 0;X座標の値

[State Varset];相手が特定のゲージ持ちで、そのゲージが表示されている場合　単体
type = Varset
trigger1 = (Enemynear,name = "MegaMari")
trigger1 = (Enemynear,var(5) != 0)
var(10) = -10;避けたい時のX座標の値

[State Varset];相手が特定のゲージ持ちで、そのゲージが表示されている場合　複数
type = Varset
triggerall = NumEnemy >= 2;敵が複数の場合
trigger1 = (Enemynear(1),name = "MegaMari")
trigger1 = (Enemynear(1),var(5) != 0)
var(10) = -10;避けたい時のX座標の値　値は上のものと同じにするべき

[State Print]
type = DisplaytoClipBoard
trigger1 = 1
text = "EnemyVar = %d"
params = Enemynear,var(5)

[State Varset]
type = Varset
trigger1 = Time = 0
var(11) = 50;Y座標の値

[State Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State COUNTERRESET  1]
type = removeexplod
triggerall = numexplod(10000)
Trigger1 = var(0) != parent,var(41);現在のゲージ値に変動が出たら
id = 10000;一旦黙らせて再生成する

[State Varset  1]
type = varset
Trigger1 = var(0) != parent,var(41)
var(0) = parent,var(41)

;現在自分が1pか２ｐかによって位置を変化させる
[State Guage 1p]
type = explod
triggerall = parent,var(42) != 1;一撃技可能 
trigger1 = !NumExplod(10000)
;trigger1 = !parent,NumPartner;パートナーがいない時しか一撃技を使えない
;trigger1 = !enemy,NumPartner;
trigger1 = teamside = 1;1p側
anim = 10000+(parent,var(41))
id = 10000
postype = right;left
;pos = -0,50;暫定
pos = (-1*var(10)),var(11)
ownpal = 0
bindtime = -1
ignorehitpause = 1
;ontop = 1
sprpriority = 3
facing = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State Guagemove 1p]
type = ModifyExplod
trigger1 = NumExplod(10000)
trigger1 = teamside = 1;1p側
Id = 10000
postype = right;left
pos = (-1*var(10)),var(11)

[State Guage 2p]
type = explod
triggerall = parent,var(42) != 1;一撃技可能 
trigger1 = !NumExplod(10000)
;trigger1 = !parent,NumPartner;パートナーがいない時しか一撃技を使えない
;trigger1 = !enemy,NumPartner;
trigger1 = teamside = 2;2p側
anim = 10000+(parent,var(41))
id = 10000
postype = left
;pos = 0,50;暫定
pos = (1*var(10)),var(11)
ownpal = 0
bindtime = -1
ignorehitpause = 1
;ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State Guagemove 2p]
type = ModifyExplod
trigger1 = NumExplod(10000)
trigger1 = teamside = 2;2p側
Id = 10000
postype = left
pos = (1*var(10)),var(11)

[State Voice];貴様は終わった！
type = PlaySnd
triggerall = parent,var(42) != 1;一撃技可能 
triggerall = (parent,var(40));ボイスＯＫ
trigger1 = (parent,var(41)) >= 7;七星ゲージＭＡＸ 
;trigger1 = !parent,NumPartner;パートナーがいない時しか一撃技を使えない
;trigger1 = !enemy,NumPartner;
value = 1,23
;channel = 0;VC
persistent=0
ignorehitpause=1

[State Tehletteh];てーれってー中のいろいろ停止
type = AssertSpecial
trigger1 = parent,Stateno = [70001,70099]
flag = nokoslow
flag2 = nomusic
flag3 = timerfreeze
;------------

;---------------
;一撃必殺奥義２　長い砲身
[StateDef 72000]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Anim     = 245

;スーパー
[State Pow]
type = powerset
trigger1 = animelemTime(4) = 0
value = 0

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = animelemTime(4) >= 0
flag = noBG ;<-- removes the stage layer
flag = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = animelemTime(4) = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999

;カットイン！
[state 4002, 1]
type = explod
trigger1 = animelemTime(4) = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
supermovetime = 99999999
pausemovetime = 99999999


[state 4002, 1]
type = explod
trigger1 = animelemTime(4) = 0
anim = 3090;7000
id = 4050;7000
postype = p1
pos = 0,0;
ownpal = 1
removetime = 30
bindtime = -1
sprpriority = -2
supermove = 1
persistent = 0
supermovetime = 99999999
pausemovetime = 99999999


[State VOICE];
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemTime(2) = 0
value = 1,39;げっとだＺＥ
channnel = 0;VC
persistent = 0
[State VOICE];
type = PlaySnd
trigger1 = animelemTime(4) = 0
value = 0,40
persistent = 0

[State 3000, Super A]
type = Pause;SuperPause
trigger1 = animelemTime(4) = 0
;pos = 3,-52;
;anim = S4050;S***で自分のだったけ
;sound = S0,22;20, 0
;poweradd = -2000
time = 30;停止時間 (int)
movetime = 13;停止無視時間 (int)
;--------------

[State MUTEKI]
Type     = NotHitBy
Trigger1 = AnimElemTime(5) < 0
Value    = SCA

[State SPEED]
type = ChangeAnim
trigger1 = PrevStateNo = 230 || PrevStateNo = 235
trigger1 = time = 0
value = anim
elem = 4
[State SPEED]
type = null;ChangeAnim
trigger1 = PrevStateNo = 230 || PrevStateNo = 235
trigger1 = time = 10;8
value = anim
elem = 5

[State -1, HitDef]
Type = HitDef
Trigger1          = !MoveContACT
Trigger1          = 1
id = 70000
Attr              = S, SA
Damage            = 0,0			;ダメージ
sparkno = S4006;
hitsound   = S0,5
guardsound = S0,7
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
guardflag = MAF
guard.dist        = 193             ;相手がガード行動をとる距離
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 9, 10			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -30, -5			;エフェクト表示位置
Ground.Type       = Trip			;どこに当たるか 地上
Air.Type          = Trip			;どこに当たるか 空中
Ground.SlideTime  = 10				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -0.5,-50			;ヒット時の相手の移動 地上
Air.Velocity      = -0.5,-50			;ヒット時の相手の移動 空中
AirGuard.Velocity = -0.5,-50			;ヒット時の相手の移動 空中ガード
YAccel            = 0.4
Kill              = 0				;この攻撃で殺せるか
guard.kill 	= 0
fall.kill 	= 0
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0
;p1stateno = 72001
;p2stateno = 73000



[State Target]
type = Targetbind
trigger1 = movehit
pos = 110,0
persistent=0
ignorehitpause=1
[State target]
type = targetstate
trigger1 = movehit
value = 73000
persistent=0
ignorehitpause=1
[State -1]
Type     = ChangeState
triggerall = numtarget > 0
trigger1 = movehit
trigger1 = target,Stateno = 73000
Value    = 72001
Ctrl     = 0
ignorehitpause=1

[State Voice];ぼいす再生しま
type = PlaySnd
triggerall = var(40);ボイスＯＫ
;trigger1 = Random < 300;無音にするか、声出すかをランダムで決める
trigger1 = Animelem = 6
value = 1,7;ふんっ！
channel = 0;VC

;[State -1]
;Type     = PlaySnd
;Trigger1 = Time = 24
;Value    = s0, 2

[State North]
type = VarAdd;星ペナルティ
trigger1 = !movehit
Trigger1 = AnimTime = 0
trigger1 = var(41) >= 7
var(41) = -1
persistent=0
ignorehitpause=1
[State -1]
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 0
Ctrl     = 1
;-------------------------------

[StateDef 72001]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0

[State muteki]
type = nothitby
trigger1 = 1
value = sca


[State North]
type = Varset;当たったら一撃命中フラグセット
trigger1 = time = 0
var(41) = 8;8で一撃命中モード　次ラウンド全回復
persistent=0
ignorehitpause=1

[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = varset
Trigger1 = Time = 0
var(20) = 1;BGM停止

[State -3,STOPBGM HELPER]
type = Helper
Trigger1 = Time = 0
trigger1 = var(20) = 1;var20がオンになったら
trigger1 = !Numhelper(37000);かぶってないか確認
ID = 37000
Name = "STOPBGM HELPER"
Pos = 0,0
PosType = left;p1
StateNo = 37000
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[State HANTEI ATARI INTRO];BGM停止後、イントロ
type = PlaySnd
Trigger1 = Time = 0
value = 3,10;0083
channel = 2;BGMチャンネル
persistent = 0

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State -1]
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 72002
Ctrl     = 0
;-------------------------------

[StateDef 72002]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Anim = 72000

[State Air]
type = StateTypeSet
trigger1 = Animelemtime(2) > 0;飛び上がり以降
statetype = A
Physics  = N

[State Velset]
type = velset
trigger1 = Animelemtime(2) >= 0;飛び上がり以降
Y = -12
[State Velset]
type = velset
trigger1 = Animelemtime(2) = 0;飛び上がり
X = 5.5



[State Nex];Time = 55くらい？
type = ChangeState
trigger1 = Animelemtime(2) >= 0;飛び上がり以降
trigger1 = time = 58
value = 72003
;-------------------------------
[StateDef 72003]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset = 0.01,-0.05

[State yure]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = -4
phase = 0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0,42;がきょおん！

[State Target]
type = Targetvelset
trigger1 = time < 60
X = 0
Y = 0
[State TargetState]
type = TargetState
trigger1 = time = 0
value = 73001
[State Target]
type = Targetbind
trigger1 = time < 60
pos = 27,-160

[State Fire]
type = targetlifeadd
trigger1 = time = 60
value = -99999999
[State TargetState]
type = TargetState
trigger1 = time = 60
value = 73002

[State nex]
type = changeState
trigger1 = time = 60
value = 72004
;-------------------------------
[StateDef 72004]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
;anim = 72001

;爆発アニメ
[State 4500, Helper];ヘルパー扱い
type = Helper
trigger1 = time = 0
helpertype = Normal
name = "BOMB Helper"
ID = 72010
stateno = 72010
pos =  27,-160;
postype = p1
facing = 1
ownpal = 1
size.ground.back = 20;前ぶつかり判定 (int)
size.ground.front = 20;後ぶつかり判定 (int)
size.height = 0;縦ぶつかり判定

[State GRV]
type = gravity
trigger1 = time > 60
[State anim]
type = changeanim
trigger1 = time = 60
value = 72001

[State nex]
type = changeState
trigger1 = pos Y > 0
trigger1 = vel Y > 0
value = 72005

;-------------------------------
[StateDef 72005];着地・技終了
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
anim = 12
velset = 0,0

[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = varset
Trigger1 = Time = 0
Trigger1 = !WinKO;まだ勝負がついていない
var(20) = 0;BGM機動

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

[State Turn]
Type     = Turn
Trigger1 = P2Dist X < 0

[State Pos]
type = posset
trigger1 = time = 0
Y = 0

[State End]
type = changeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;爆発------------------------
[Statedef 72010]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 35113
sprpriority = 2

[State AssSP]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

;[State Angle]
;type = AngleDraw
;trigger1 = 1
;Scale = 1.5,1.5
;AngleDrawによる拡大はDosでは出来ない。

[state 4002, 1];爆風
type = explod
trigger1 = Time = 0
anim = 6000
pos = 0, 0
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 2,2
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 2
anim = 6000
pos = -60, 0
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 4
anim = 6000
pos = -40, -40
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 6
anim = 6000
pos = 0, -60
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 8
anim = 6000
pos = 40, -40
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 2
anim = 6000
pos = 60, 0
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 4
anim = 6000
pos = 40, 40
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 6
anim = 6000
pos = 0, 60
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2
[state 4002, 1];
type = explod
trigger1 = Time = 8
anim = 6000
pos = -40, 40
ownpal = 0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
facing = 1
scale = 1.5,1.5
vel = .1,-2

[State 605, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0, 17

[State DelHelper]
type = DestroySelf
trigger1 = time >= 8
;-------------------------------
;零距離・相手側１
[StateDef 73000]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 5030;上空ふっとび
velset = -.5,-20

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[State 750, 2]
type = AfterImagetime
trigger1 = time = 0
time = 0
[State 750, 2]
type = AfterImage
trigger1 = Time = 0
time = 22
trans = add1
timegap = 1
framegap = 3
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1


[State Vel];徐々にブレーキが
type = Veladd
trigger1 = Vel Y < -.4
Y = .7

[State Vel];徐々にブレーキが
type = Veladd
trigger1 = Vel X < -.1
X = .1

[State clip]
type = DisplayToClipboard
trigger1 = 1
text = "Vy = %f"
params = Vel Y

[State Next]
type = null;ChangeState
trigger1 = time >= 60
value = 71001
ctrl = 0
;-------------------------------
;零距離・相手側２
[StateDef 73001]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority = 6
velset = 0,0

[State Anim]
type = ChangeAnim2
trigger1 = time = 0
Value = 73000

;-------------------------------
;零距離・相手側３　死亡
[StateDef 73002]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority = 6
velset = 0,0

[State Inv];透明化
type = AssertSpecial
trigger1 = !Alive;死亡した
flag = NoShadow
flag2 = Invisible

[State Pos]
type = posset
trigger1 = time = 60
trigger1 = !Alive;死亡した
Y = 0

[State Next]
type = changeState
trigger1 = time > 60
trigger1 = !alive;死亡した
value = 5150
ctrl = 0

[State fall]
type = HitFallSet
trigger1 = time > 60
trigger1 = alive;まだ生きてる
value = 1
xvel = -2
yvel = -4.5
[State Next]
type = changeState
trigger1 = time > 60
trigger1 = alive;まだ生きてる
value = 73003;落下
;---------------
[StateDef 73003]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority = 1
anim = 5035

[State Gravity]
type = gravity
trigger1 = 1

[State fall]
type = HitFallSet
trigger1 = alive;まだ生きてる
value = 1
persistent = 0

[State Anm]
type = Changeanim
trigger1 = anim = 5035
trigger1 = animtime = 0
value = 5050


[State Next]
type = selfState
trigger1 = pos Y > 0
trigger1 = Vel Y > 0
value = 5110;落下
;---------------
;一撃必殺奥義　ドラゴンメテオ？
[StateDef 70000]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Anim     = 245

;スーパー
[State Pow]
type = powerset
trigger1 = animelemTime(4) = 0
value = 0

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = animelemTime(4) >= 0
flag = noBG ;<-- removes the stage layer
flag = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = animelemTime(4) = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999

;カットイン！
[state 4002, 1]
type = explod
trigger1 = animelemTime(4) = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
supermovetime = 99999999
pausemovetime = 99999999


[state 4002, 1]
type = explod
trigger1 = animelemTime(4) = 0
anim = 3090;7000
id = 4050;7000
postype = p1
pos = 0,0;
ownpal = 1
removetime = 30
bindtime = -1
sprpriority = -2
supermove = 1
persistent = 0
supermovetime = 99999999
pausemovetime = 99999999


[State VOICE];
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemTime(2) = 0
value = 1,39;げっとだＺＥ
channnel = 0;VC
persistent = 0
[State VOICE];
type = PlaySnd
trigger1 = animelemTime(4) = 0
value = 0,40
persistent = 0

[State 3000, Super A]
type = Pause;SuperPause
trigger1 = animelemTime(4) = 0
;pos = 3,-52;
;anim = S4050;S***で自分のだったけ
;sound = S0,22;20, 0
;poweradd = -2000
time = 30;停止時間 (int)
movetime = 13;停止無視時間 (int)
;--------------

[State MUTEKI]
Type     = NotHitBy
Trigger1 = AnimElemTime(5) < 0
Value    = SCA

[State SPEED]
type = ChangeAnim
trigger1 = PrevStateNo = 230 || PrevStateNo = 235
trigger1 = time = 0
value = anim
elem = 4
[State SPEED]
type = null;ChangeAnim
trigger1 = PrevStateNo = 230 || PrevStateNo = 235
trigger1 = time = 10;8
value = anim
elem = 5

[State -1, HitDef]
Type = HitDef
Trigger1          = !MoveContACT
Trigger1          = 1
id = 70000
Attr              = S, SA
Damage            = 0,0			;ダメージ
sparkno = S4006;
hitsound   = S0,5
guardsound = S0,7
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
guardflag = MAF
guard.dist        = 193             ;相手がガード行動をとる距離
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 9, 10			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -30, -5			;エフェクト表示位置
Ground.Type       = Trip			;どこに当たるか 地上
Air.Type          = Trip			;どこに当たるか 空中
Ground.SlideTime  = 10				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -0.5,-50			;ヒット時の相手の移動 地上
Air.Velocity      = -0.5,-50			;ヒット時の相手の移動 空中
AirGuard.Velocity = -0.5,-50			;ヒット時の相手の移動 空中ガード
YAccel            = 0.4
Kill              = 0				;この攻撃で殺せるか
guard.kill 	= 0
fall.kill 	= 0
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0
p1stateno = 70001
p2stateno = 71000

[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State Voice];ぼいす再生しま
type = PlaySnd
triggerall = var(40);ボイスＯＫ
;trigger1 = Random < 300;無音にするか、声出すかをランダムで決める
trigger1 = Animelem = 6
value = 1,7;ふんっ！
channel = 0;VC

;[State -1]
;Type     = PlaySnd
;Trigger1 = Time = 24
;Value    = s0, 2

[State North]
type = VarAdd;星ペナルティ
trigger1 = !movehit
Trigger1 = AnimTime = 0
trigger1 = var(41) >= 7
var(41) = -1
persistent=0
ignorehitpause=1
[State -1]
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 0
Ctrl     = 1
;-------------------------------

[StateDef 70001]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = varset
Trigger1 = Time = 0
var(20) = 1;BGM停止

[State -3,STOPBGM HELPER]
type = Helper
Trigger1 = Time = 0
trigger1 = var(20) = 1;var20がオンになったら
trigger1 = !Numhelper(37000);かぶってないか確認
ID = 37000
Name = "STOPBGM HELPER"
Pos = 0,0
PosType = left;p1
StateNo = 37000
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[State HANTEI ATARI INTRO];BGM停止後、イントロ
type = PlaySnd
Trigger1 = Time = 0
value = 3,1;テーレッテー
channel = 2;BGMチャンネル
persistent = 0

[State -1]
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 70002
Ctrl     = 0
;-------------------------------

[StateDef 70002]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Anim = 1010

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = animelemtime(5) >= 0
value = 0

[State upper]
type = Velset
trigger1 = animelemtime(5) = 0
Y = -18
X = 3

[State -1]
Type        = AfterImage
trigger1 = animelemtime(5) = 0
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
trigger1 = animelemtime(5) = 0
Value    = 0,36
Channel  = 1;SE

[State JumpAnim];ジャンプ時の衝撃波
Type = Explod
trigger1 = animelemtime(5) = 0
Anim = 4032;持ってるアニメを使う
Id = 4032
Postype = p1
Pos = 0,40
Ownpal = 1
Sprpriority = 5
Persistent = 0
Removeongethit = 0

[State TAIKIKEN]
type = Explod
;trigger1 = Time = 59
trigger1 = screenpos Y < -10
trigger1 = !Numexplod(15100)
anim = 15100;大気圏
id = 15100
postype = left
pos = 0,0
ownpal = 1
bindtime = -1
removetime = -1
ignorehitpause = 1
sprpriority = 5
;ontop = 1
facing = 1;
pausemovetime = 500
supermovetime = 500
scale = 1,1
supermovetime = 99999
pausemovetime = 99999


[State BGMSTOP]
type = AssertSpecial
trigger1 = time >= 70
flag = noshadow
flag2 = noBG
flag3 = noFG
[State Next]
type = ChangeState
trigger1 = time >= 70
value = 70003
ctrl = 0

;-------------------------------
;ふっとんだ相手に接近
[StateDef 70003]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 42
velset = 0,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State Face]
type = turn
trigger1 = Time = 0
trigger1 = facing = -1

[State Pos]
type = Posset
trigger1 = time = 0
X = -120
Y = 80
[State vel]
type = Velset
trigger1 = time = 0
X = 4.6
Y = -5

;たーげっとのIDは70000
;[State Target]

[State Next]
type = ChangeState
trigger1 = screenPos X = [100,320];まんなか
trigger1 = screenPos Y = [0,180]
value = 70004
ctrl = 0
;-------------------------------
;ふっとんだ相手を叩き落す
[StateDef 70004]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 70000
velset = 0,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State CRUSH!]
type = HitAdd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(14) = 0
value = 1;1ヒットづつ上昇
[State Hitspark]
type = Explod
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(14) = 0
anim = 4002
id = 4002
postype = p1
bindtime = 1
pos = floor(p2dist X),floor(Random%5)
scale = 1,1
ontop = 1
pausemovetime = 99999999
supermovetime = 99999999
[State Hitspark];
type = PlaySnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(7) = 0
value = 0,4;
channel = 1;SE
[State Hitspark];
type = PlaySnd
trigger1 = animelemtime(14) = 0
value = 0,5;
channel = 1;SE

[State Next]
type = ChangeState
trigger1 = animtime = 0
value = 70005
ctrl = 0
;-------------------------------
;元気玉１
[StateDef 70005]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 70001
velset = 0,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State -2, 3rd Charge]
type = playsnd
trigger1 = time = 5
value = S0,33;S246, 3;フルチャージ音ヲせっと

[State GENKIDAMA] 
type = Explod
trigger1 = time = 10
anim = 70005
id = 70005
;pos = 0,0
Postype     = P1
Pos         = 0,0
bindtime = 9999
vel = 0,0
scale = (time/50.0),(time/50.0)
ownpal = 0;1
removetime = -1
sprpriority = 6
ignorehitpause = 1
supermovetime = 99999999
pausemovetime = 99999999
[State LZ]
type = ModifyExplod
trigger1 = NumExplod(70005)
trigger1 = time = [0,50]
id = 70005;げんきだま拡大
Postype     = P1
Pos         = 0,0
scale = (time/50.0)+(Random/10000.0),(time/50.0)+(Random/10000.0)
[State LZ]
type = ModifyExplod
trigger1 = NumExplod(70005)
trigger1 = time > 50
id = 70005;げんきだま拡大
Postype     = P1
Pos         = 0,0
scale = 1.0+(Random/10000.0),1.0+(Random/10000.0)


[State Next]
type = ChangeState
trigger1 = time >= 100
value = 70006
ctrl = 0
;-------------------------------
;元気玉２・投下！
[StateDef 70006]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 70002
velset = 0,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State LZ]
type = ModifyExplod
trigger1 = NumExplod(70005)
trigger1 = animelemtime(1)=0
id = 70005;げんきだま拡大
Postype     = P1
Pos         = 180,-90
[State LZ]
type = ModifyExplod
trigger1 = NumExplod(70005)
trigger1 = animelemtime(2)=0
id = 70005;げんきだま拡大
Postype     = P1
Pos         = 240,-10
[State LZ]
type = ModifyExplod
trigger1 = NumExplod(70005)
trigger1 = animelemtime(3)=0
id = 70005;げんきだま拡大
Postype     = P1
Pos         = 260,100
vel = 3.2,12
bindtime = 1
sprpriority = 7

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemTime(3) = 0
value = 1,8;でりゃあ！
channel = 0;VC
[State 210, 1]
type = PlaySnd
trigger1 = animelemTime(3) = 0
value = 0,9;チャージ大

[State Next]
type = ChangeState
trigger1 = time >= 80
value = 70007
ctrl = 0
;-------------------------------
;元気玉３・相手に直撃
[StateDef 70007]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = -1
velset = 0,0

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State ***]
type = playsnd
trigger1 = Time = 0
value = 0,25;ぶぅぅぅぅ～～～～～ん
freqmul = 1.26

[State pos]
type = posset
trigger1 = Time = 0
X = 0
Y = -280


[State LZ]
type = RemoveExplod
trigger1 = NumExplod(70005)
trigger1 = time = 0
id = 70005;げんきだま拡大

[State Deltaiki]
type = removeexplod
trigger1 = time = 1
id = 15100;一旦地上にもどる


[State GENKIDAMA] 
type = Explod
trigger1 = time = 0
anim = 30070
id = 30070
;pos = 0,0
Postype     = P1
Pos         = 0,-300
bindtime = 1
vel = 0,20
scale = 3,3
ownpal = 0;1
removetime = -1
sprpriority = 7
ignorehitpause = 1
supermovetime = 99999999
pausemovetime = 99999999

[State LZ]
type = ModifyExplod
trigger1 = NumExplod(30070)
trigger1 = Time =30
id = 30070;げんきだま拡大
Postype     = P1
Pos         = 0,-Pos Y

[State JumpAnim];ジャンプ時の衝撃波
Type = Explod
trigger1 = Time =30
Anim = 4032;持ってるアニメを使う
Id = 4032
Postype = p1
Pos = 0,-Pos Y
scale = 3,3
removetime = 200
Ownpal = 1
Sprpriority = 7
Persistent = 0
Removeongethit = 0

[State CRUSH!]
type = EnvShake
trigger1 = Time = 30
time = 200
freq = 160
ampl = -10
phase = 0
persistent = 0
[State CRUSH!]
type = HitAdd
trigger1 = time >= 30
value = 1;1ヒットづつ上昇

[State FLASH]
type = AllPalFX
trigger1 = Time >= 180
time = 2
;add = 256,256,256
add = (Time - 180)*5,(Time - 180)*5,(Time - 180)*5


[State Next]
type = ChangeState
trigger1 = time >= 230;つぎへ
value = 70008
ctrl = 0
;-------------------------------
;元気玉４・きさまらが～
[StateDef 70008]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 70003;くちぱく
velset = 0,0


[State CRUSH!]
type = HitAdd
trigger1 = 1
value = 1;1ヒットづつ上昇

[State NOBG]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State LZ]
type = RemoveExplod
trigger1 = NumExplod(30070)
trigger1 = time = 0
id = 30070;げんきだま拡大

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State pos]
type = posset
trigger1 = Time = 0
X = -30
Y = -30

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 0
value = 1,26;貴様らがもがき苦しむ姿をもっと見たかったが、どうにもテメェらは終わってるようだＺＥ
channel = 0;VC
[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 400
value = 1,27;残念だったＮＡ！
channel = 0;VC
[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 475
value = 1,28;さあ、地獄へ落ちる時間だＺＥ
channel = 0;VC
;発射は630
[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 630
value = 1,16;バァーン！
channel = 0;VC

[State Anm2]
type = changeanim
trigger1 = time = 400
value = 140;ゆびさし
[State Anm2]
type = changeanim
trigger1 = time = 475
value = 70004;ゆびさし

;660で爆発

[State FLASH]
type = AllPalFX
trigger1 = Time >= 655
time = 2
add = 256,256,256

[State clip]
type = DisplayToClipboard
trigger1 = 1
text = "time = %d"
params = time


[State houki]
Type = Explod
Trigger1 = Time = 0
trigger1 = !numexplod(3045)
Anim = 1035;
ID = 3045
PosType = p1
Pos = 30,-6
ownpal = 1
Bindtime = 100
removetime = -1
Sprpriority = 6
Persistent = 0
Removeongethit = 0

[State TAIKIKEN]
type = Explod
trigger1 = Time = 0
trigger1 = !Numexplod(15100)
anim = 15100;大気圏
id = 15100
postype = left
pos = 0,0
ownpal = 1
bindtime = -1
removetime = -1
ignorehitpause = 1
sprpriority = 5
;ontop = 1
facing = 1;
pausemovetime = 500
supermovetime = 500
scale = 1,1
supermovetime = 99999
pausemovetime = 99999

[State Next]
type = ChangeState
trigger1 = time >= 660;つぎへ
value = 70009
ctrl = 0

;-------------------------------
;またイチローか
[StateDef 70009]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = -1
velset = 0,0

[State CRUSH!]
type = HitAdd
trigger1 = time = 0
value = 999;最後の一発

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State ***]
type = playsnd
trigger1 = Time = 0
value = 0,20;元気だまフィニッシュ

[State ***]
type = stopsnd
trigger1 = Time = 0
channel = 2;BGMチャンネル

[State ***]
type = playsnd
trigger1 = winKO;勝った場合
value = 3,2;ドリフ
;channel = 2;BGMチャンネル
persistent = 0

[State pos]
type = posset
trigger1 = Time = 0
X = 0
Y = -280


[State LZ]
type = RemoveExplod
trigger1 = NumExplod(3045)
trigger1 = time = 0
id = 3045;ほうき

[State Deltaiki]
type = removeexplod
trigger1 = time = 0
id = 15100;一旦地上にもどる

[State GUILE]
type = Explod
trigger1 = Time = 0
trigger1 = !Numexplod(15130)
anim = 15130;大気圏
id = 15130
postype = left
pos = 0,0
;ownpal = 0
bindtime = -1
removetime = -1
ignorehitpause = 1
sprpriority = 6
;ontop = 1
facing = 1;
pausemovetime = 500
supermovetime = 500
scale = 1,1

[State FLASH]
type = AllPalFX
trigger1 = Time >= 300;50*5 = 250
time = 1
;add = 256,256,256
add = (Time - 300)*5,(Time - 300)*5,(Time - 300)*5


[State Deltaiki]
type = removeexplod
trigger1 = time >= 350;勝利ポーズへ
id = 15130;ドリフけす

[State houki]
Type = Explod
trigger1 = winKO;勝った場合
trigger1 = time >= 350;勝利ポーズへ
trigger1 = !numexplod(3045)
Anim = 1035;
ID = 3045
PosType = p1
Pos = 30,-6
ownpal = 1
Bindtime = 100
removetime = -1
Sprpriority = 6
Persistent = 0
Removeongethit = 0

[State TAIKIKEN]
type = Explod
trigger1 = winKO;勝った場合
trigger1 = time >= 350;勝利ポーズへ
trigger1 = !Numexplod(15100)
anim = 15100;大気圏
id = 15100
postype = left
pos = 0,0
ownpal = 1
bindtime = -1
removetime = -1
ignorehitpause = 1
sprpriority = 5
;ontop = 1
facing = 1;
pausemovetime = 500
supermovetime = 500
scale = 1,1
supermovetime = 99999
pausemovetime = 99999

;[State Next]
;type = ChangeState
;trigger1 = winKO;勝った場合
;trigger1 = time >= 350;勝利ポーズへ
;value = 70010;勝利
;ctrl = 0

[State Next]
type = StateTypeSet
trigger1 = winKO;勝った場合
trigger1 = time = 350;勝利ポーズへ
statetype = S
movetype = I
physics = S
[State Next]
type = ctrlset
trigger1 = winKO;勝った場合
trigger1 = time = 350;勝利ポーズへ
value = 1


[State North]
type = Varset;星リセット
trigger1 = !winKO;勝負がついてないなら
trigger1 = time >= 350;降りてくる
var(41) = 0
persistent=0
[State BGMOFF]
type = varset
trigger1 = !winKO;勝負がついてないなら
trigger1 = time >= 350;降りてくる
var(20) = 0
[State Next]
type = ChangeState
trigger1 = !winKO;勝負がついてないなら
trigger1 = time >= 350;降りてくる
value = 50
ctrl = 1

;-------------------------------
;ＦＡＴＡＬ　ＫＯ
[StateDef 70010]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 941;ＨＡＨＡＨＡＨＡ
velset = 0,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = noshadow
flag2 = noBG
flag3 = noFG

[State North]
type = Varset;星リセット
trigger1 = 1
var(41) = 0
persistent=0

[State KO]
type = AssertSpecial
trigger1 = time <= 200
flag = roundnotover

[State FLASH]
type = AllPalFX
trigger1 = 1
time = 1
;add = 256,256,256
mul = 255,128,128

[State CRUSH!]
type = EnvShake
trigger1 = Time =0
time = 300
freq = 160
ampl = -10
phase = 0
persistent = 0

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State pos]
type = posset
trigger1 = Time = 0
X = -30
Y = -30

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,32;HAHAHAHAHAHAHA!!!
;loop = 1
channel = 0;VC
;-------------------------------
;テーレッテー相手側１
[StateDef 71000]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority = 6
Anim = 5030;上空ふっとび
velset = -.5,-20

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[State 750, 2]
type = AfterImagetime
trigger1 = time = 0
time = 0
[State 750, 2]
type = AfterImage
trigger1 = Time = 0
time = 22
trans = add1
timegap = 1
framegap = 3
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0


[State Next]
type = ChangeState
trigger1 = time >= 60
value = 71001
ctrl = 0
;-------------------------------

[StateDef 71001]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
velset = 0,0

[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State Face]
type = turn
trigger1 = Time = 0
trigger1 = facing = 1

[State Pos]
type = Posset
trigger1 = time = 0
X = 0
Y = 80
[State vel]
type = Velset
trigger1 = time = 0
X = -.4
Y = -1

[State clip]
type = DisplayToClipboard
trigger1 = 1
text = "time = %d"
params = time
;72 84 102
; 0 12 18

[State Next]
type = ChangeState
trigger1 = time >= 72
value = 71002
ctrl = 0
;-------------------------------
[StateDef 71002]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim = 5000
velset = 0,0


[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0


[State Anm]
type = changeanim
trigger1 = time = 12
value = 5010

[State Next]
type = ChangeState
trigger1 = time >= 34
value = 71003
ctrl = 0


;-------------------------------
[StateDef 71003]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim = 5050
velset = -3,20


[State muteki]
type = nothitby
trigger1 = 1
value = sca

[state 192, 2]
type = screenbound
trigger1 = 1
value = 0

[State vel]
type = Velset
trigger1 = time = 20
X = 0
Y = 0

[State 750, 2]
type = AfterImage
trigger1 = Time = 0
time = 22
trans = add1
timegap = 1
framegap = 3
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1

[State clip]
type = DisplayToClipboard
trigger1 = 1
text = "time = %d"
params = time
;220

[State Next]
type = ChangeState
trigger1 = time >= 214;しばらくしたら次へ
value = 71004
ctrl = 0
;-------------------------------
[StateDef 71004]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim = 5050
velset = 0,0


[State muteki]
type = nothitby
trigger1 = 1
value = sca

[State vel]
type = Posset
trigger1 = time = 0
X = 0
Y = -300
[State vel]
type = Velset
trigger1 = time = 0
X = 0
Y = 60

[State CRUSH!]
type = changeanim
trigger1 = Pos Y >= 0
value = 5170
persistent = 0
[State CRUSH!]
type = EnvShake
trigger1 = Pos Y >= 0
time = 30
freq = 60
ampl = -4
phase = 0
persistent = 0


[State vel]
type = Posset
trigger1 = Pos Y >= 0
Y = 0
[State vel]
type = Velset
trigger1 = Pos Y >= 0
Y = 0

[State Next]
type = ChangeState
trigger1 = Pos Y >= 0
value = 71005
ctrl = 0
;-------------------------------
[StateDef 71005]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority = 2
anim = 5170
velset = 0,-3


[State muteki]
type = nothitby
trigger1 = 1
value = sca

[State Grv]
type = gravity
trigger1 = Time > 2

[State vel]
type = Posset
trigger1 = Time = 0
Y = -10

[State vel]
type = Posset
trigger1 = Pos Y >= 0
Y = 0
[State vel]
type = Velset
trigger1 = Pos Y >= 0
Y = 0

[State clip]
type = DisplayToClipboard
trigger1 = 1
text = "time = %d"
params = time

[State Damage]
type = lifeadd
trigger1 = time > 25
value = -7
Kill = 0
;880で爆発　1200くらいで殺すか

[State Hidebu]
type = lifeadd
trigger1 = time >= 1000
value = -99999999

;自分がメガマリだった場合、ティウンフラグを消す
[State Hidebu]
type = varset
triggerall = authorname = "RockMARISA"
trigger1 = name = "MegaMari"
var(4) = 1
;

[State Change]
type = ChangeState
trigger1 = !Alive
trigger1 = time >= 1000
value = 5150;死んだらこっちへ

[State Ret]
type = SelfState
trigger1 = time >= 1100;いきてりゃそれでいい
trigger1 = Alive
value = 5110

;-------------------------------


;-------------------------------------------------
;愛乃シン用・所定位置へ
[StateDef 7600]
type    = S
movetype= A
physics = N
velset = 0,0
juggle = 0
poweradd= 0
anim = 100
ctrl = 0

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = 1
value = SCA

[State Push]
type = PlayerPush
trigger1 = 1
value = 0

;目標位置
;((partner,p2dist x*1.2)*(partner,facing))
;この目標位置が自分と比べてどちらかで反転を判断

[State Pos]
type = varset
trigger1 = 1
fvar(0) = (partner,Pos X) + (230*(partner,facing))

[State Turn]
type = turn
triggerall = time = 0
trigger1 = facing = 1;＞
trigger1 = fvar(0) < (Pos X)
trigger2 = facing = -1;＜
trigger2 = fvar(0) > (Pos X)

[State 100, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoWalk
Flag2 = NoAutoTurn

[State 100, VelSet]
Type = VelSet
Trigger1 = Time = 5
X = Const(Velocity.Run.Fwd.X)

[state a]
type = Veladd
trigger1 = Vel X <= 9.5
X = 0.1

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

[State 100, ChangeState]
Type = ChangeState
;trigger1 = time = 0
trigger1 = facing = 1;＞
trigger1 = fvar(0) < (Pos X);目標位置より値が少なくなったら
trigger2 = facing = -1;＜
trigger2 = fvar(0) > (Pos X);目標位置より値が大きくなったら
trigger3 = frontedgebodydist < 20
Value = 7601
;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[本体]ダッシュ　停止
;--------------------------------------------------
[StateDef 7601]
Type = S
MoveType = I
Physics = N
Anim = 101
Ctrl = 0
SprPriority = 1

[State Push]
type = PlayerPush
trigger1 = 1
value = 0

[State pos ]
type = posset
trigger1 = 1
X = fvar(0)

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = 1
value = SCA

[State 52, Turn]
Type = Turn
Trigger1 = Time = 0
Trigger1 = partner,facing = facing;向かい合ってない場合

[State 101, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoWalk
Flag2 = NoAutoTurn

[State 101, VelMul]
Type = VelMul
Trigger1 = 1
X = 0.92

[State 101, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 7602

;-----------------------------------------
;スタンバイ
[StateDef 7602]
Type = S
MoveType = I
Physics = N
Anim = 0
Ctrl = 0
SprPriority = 1

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = 1
value = SCA

[State 52, Turn]
Type = Turn
Trigger1 = Time = 0
Trigger1 = partner,facing = facing;向かい合ってない場合

[State 101, ChangeState]
Type = ChangeState
Trigger1 = time = 1
Value = 7603;獄屠拳

;フィニッシュ
[Statedef 7603]
;type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1050
sprpriority = 1
ctrl = 0

[State Push]
type = PlayerPush
trigger1 = 1
value = 0

[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = varset
Trigger1 = Time = 0
var(20) = 1;BGM停止

[State -3,STOPBGM HELPER]
type = Helper
Trigger1 = Time = 0
trigger1 = var(20) = 1;var20がオンになったら
trigger1 = !Numhelper(37000);かぶってないか確認
ID = 37000
Name = "STOPBGM HELPER"
Pos = 0,0
PosType = left;p1
StateNo = 37000
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[state a]
type = velset
trigger1 = time = 0
y = 0

[state a]
type = null;posset
trigger1 = time = 0
y = 0

[state a]
type = statetypeset
trigger1 = pos y < 0
value = A

;---------------------[コマンド判定]
[state a]
type = varset
trigger1 = time = 0
v = 5
value = 0

;---------------------[]
[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = 1
value = SCA

;---------------------[効果音]
[state a];南斗獄屠拳!!
type = null;playsnd
trigger1 = animelemtime(1) = 0;1枚目
value = 1100,0
channel = 0;vc

[state a];蹴り
type = null;playsnd
trigger1 = animelem = 6;11F
value = 1100,1
channel = 1;SE
;-----------------------
[state a]
type = posadd
;triggerall = var(5) = 2
trigger1 = animelemtime(3)>=0;time = 0
trigger1 = animelemtime(7)<=0;time = 0
x = 0;6
y = -8

[state a]
type = null;posadd
;triggerall = var(5) = 2
trigger1 = animelemtime(15)=[0,5];time = 0
x = 0;6
y = 48/5
[state a]
type = posadd
;triggerall = var(5) = 2
trigger1 = animelemtime(13)=[0,5];time = 0
x = 0;6
y = 48/5
;-------------[速度・１]
[state a]
type = statetypeset
trigger1 = time = 0
value = A

[state a]
type = velset
trigger1 = time = 0
x = 2+p2dist x*.01
;x = 3.5
y = 0

[state a]
type = veladd
triggerall = var(5) = 0
trigger1 = animelem = 6,<=0
x = 0.7


[state a]
type = veladd
triggerall = var(5) = 0
trigger1 = animelem = 7,>=0
x = -0.3

[state a]
type = velset
triggerall = var(5) = 0
trigger1 = vel x <= 0
x = 0

[state a]
type = veladd
triggerall = var(5) = 0
trigger1 = animelem = 5,>=0
trigger1 = animelem = 10,<=0
y = -0.7

[state a]
type = veladd
triggerall = var(5) = 0
trigger1 = animelem = 10,>=0
y = 0.8;5


;エフェクト関連
;アッパー
[State 5150, 6] 
type = Explod
trigger1 = animelem = 7
trigger1 = !numexplod(1055)
anim = 1055
id = 1055
Postype     = P1
Pos         = 48,-58
scale = .5,.5
vel = 0,0
ownpal = 1
removetime = -1
bindtime = -1
sprpriority = 4
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State 5150, 6] ;後ろ光
type = Explod
trigger1 = animelem = 7
trigger1 = !numexplod(1056)
anim = 1056
id = 1056
Postype     = P1
Pos         = -15,-40
scale = .5,.5
vel = -1,0
ownpal = 1
removetime = 32;終了時消滅
bindtime = 1
sprpriority = 4
ignorehitpause = 1
[State 5150, 6] ;後ろ光
type = Explod
trigger1 = animelem = 7
trigger1 = !numexplod(1057)
anim = 1057
id = 1057
Postype     = P1
Pos         = 0,-20
scale = .5,.5
vel = -.5,.5
ownpal = 1
removetime = 32;終了時消滅
bindtime = 1
sprpriority = 4
ignorehitpause = 1

[State DelExplod];アッパー消去
type = RemoveExplod
triggerall = numexplod(1055)
trigger1 = (var(15) = 0) && animelem = 13,>=0
trigger2 = (var(15) = 1) && animelem = 12,>=0
trigger3 = (var(15) = 2) && animelem = 11,>=0
ID = 1055



;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = WINKO
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 7604

[state a]
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1051
;---------------------------------------------------------------------------
;南斗獄屠拳・着地
[Statedef 7604]
type = S
physics = S
poweradd= 0
ctrl = 0
;anim = 106
sprpriority = 3
velset = 0,0

[State Push]
type = PlayerPush
trigger1 = 1
value = 0

[state a]
type = changeanim
trigger1 = screenpos x < 155
trigger2 = screenpos x > 165
value = 105
persistent = 0

[State 00]
type = PlaySnd
trigger1 = anim = 105
trigger1 = animelem = 2
Value    = 0,12;s2, 1
Channel = 6

[State 01]
type = VelSet
trigger1 = anim = 105
trigger1 = animelem = 2
x = -Abs((screenpos x=160)+pos x/4);8)
y = -4


[state a]
type = veladd
trigger1 = anim = 105
trigger1 = animelem = 2,>=0
y = 0.45

[State 00]
type = ChangeAnim
triggerall = anim = 105
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = 47

[state a]
type = posset
trigger1 = anim = 47
y = 0

[State 00]
type = PlaySnd
triggerall = anim = 47
trigger1 = animelem = 1
Value = 0,35;
;channel = 2;SE

[State 01]
type = VelSet
trigger1 = anim = 47
x = 0
y = 0

[State explod];着地エフェクト
type = Explod
triggerall = anim = 47
trigger1 = animelem = 1
anim = 4013
id = 4013
sprpriority = -5
postype = p1
pos = 0,0
bindtime = 1
supermove = 0
ignorehitpause = 0
under = 0
;scale = 0.7,0.7

[State 03] ;Prevent from turning
type = AssertSpecial
trigger1 = anim = 47
flag = NoAutoTurn

[State 00]
type = turn
trigger1 = anim = 47
trigger1 = animtime = 0

[State 00]
type = ChangeAnim
trigger1 = anim = 47
trigger1 = animtime = 0
value = 0


[state a]
type = changeanim
trigger1 = anim = 0
value = 941

[state a]
type = changeanim
trigger1 = prevstateno!=7603
trigger1 = time = 0
value = 941

[State Next]
type = StateTypeSet
trigger1 = winKO;勝った場合
trigger1 = time >= 100;勝利ポーズへ
statetype = S
movetype = I
physics = S
[State Next]
type = ctrlset
trigger1 = winKO;勝った場合
trigger1 = time >= 100;勝利ポーズへ
value = 1


[State 2000, 6];ははははははははは
type = PlaySnd
trigger1 = anim = 941
trigger1 = animelem = 1
value = 1,32;HAHAHAHAHAHAHA!!!
persistent = 0
channel = 0;VC

[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; 勝った動作1[一撃]
[Statedef 7605]
type = A
ctrl = 0
velset = 0,0
physics = S
sprpriority = 3

[State 2000, 6];ははははははははは
type = null;PlaySnd
trigger1 = animelem = 32
value = 1,32;HAHAHAHAHAHAHA!!!

[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 4]
type = AssertSpecial
trigger1 = time = [0,100]
flag = roundnotover






;-------------------------------------------------
;逃げるんだよォォォーーーーーーッ(鬼巫女)
[Statedef 75008]
type = S
movetype = I
physics = N
anim = 920
ctrl = 0
[State Intro]
type = Assertspecial
trigger1 = 1
flag = intro
[State nex]
type = changestate
trigger1 = var(45) = 9;開幕キンクリ
trigger1 = time = 0
;trigger2 = time = 300;鬼巫女通常
trigger2 = enemynear,stateno = 0;鬼巫女通常
value = 75009
;-------------------------------------------------
;逃げるんだよォォォーーーーーーッ(鬼巫女・２)
[Statedef 75009]
type = S
movetype = I
physics = N
anim = 0
ctrl = 0

[State Pause];
type = superPause;
darken = 0
anim = -1
trigger1 = time = 0
trigger1 = var(45) = 9
time = 220
movetime = 220

[State Intro]
type = Assertspecial
trigger1 = 1
flag = intro

[State Anim]
type = Changeanim
trigger1 = time = 30
value = 75080
[State JOJO];
type = PlaySnd
trigger1 = Time = 40
value = 0,34;
[State NorthStarGuage]
type = Helper
;triggerall = !numhelper(75081)
;trigger1 = Time = 40
trigger1 = Time = [40,50]
name = "100Yen"
sprpriority = 10
ID = 75081
Pos = 15,-40
PosType = p1
stateno = 75081
helpertype = normal
pausemovetime = 99999999
supermovetime = 99999999
size.xscale = .25
size.yscale = .25
bindtime = 1
keyctrl = 0 
ownpal = 1

[State nex]
type = changestate
trigger1 = time >= 90
value = 75001

;おさいせん
[Statedef 75081]
type = A
movetype = I
physics = N
anim = 75081
ctrl = 0

[State Intro]
type = Assertspecial
trigger1 = 1
flag = noshadow

[State Vel]
type = Velset
trigger1 = time = 0
X = (Random%40)/10.0
Y = -8
[State Vel]
type = Velset
trigger1 = time = 60
X = 0
Y = 0

[State Posset]
type = Varset
trigger1 = time = 0
fvar(0) = (Random%80)-40

[State pos]
type = posset
trigger1 = time >= 60
X = fvar(0)
[State pos]
type = posset
trigger1 = time = 60
Y = -300

[State Rakka]
type = gravity
trigger1 = time >= 240

[State Angle]
type = AngleSet
trigger1 = time = 0
value = 0
[State Angle]
type = AngleAdd
trigger1 = 1
value = 20
[State Angle]
type = AngleDraw
trigger1 = 1


[State COIN];
type = PlaySnd
trigger1 = Vel Y > 0
trigger1 = pos Y > -80
value = 199,0;
[State Del];賽銭箱に入る
type = destroyself
trigger1 = Vel Y > 0
trigger1 = pos Y > -80
;-------------------------------------------------
;逃げるんだよォォォーーーーーーッ
[Statedef 75000]
type = S
movetype = H
physics = N
anim = 920
ctrl = 0

[State Guage 1p]
type = explod
triggerall = numhelper(4000)
triggerall = time = 0
trigger1 = teamside = 2;2p側
anim = 10007
id = 10000
postype = right;left
;pos = -0,50;暫定
pos = (-1*(helper(4000),var(10))),(helper(4000),var(11))
ownpal = 0
bindtime = -1
ignorehitpause = 1
;ontop = 1
sprpriority = 3
facing = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State Guage 2p]
type = explod
triggerall = time = 0
trigger1 = teamside = 1;1p側
anim = 10007
id = 10000
postype = left
;pos = 0,50;暫定
pos = (1*(helper(4000),var(10))),(helper(4000),var(11))
ownpal = 0
bindtime = -1
ignorehitpause = 1
;ontop = 1
sprpriority = 3
facing = 1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State JOJO];
type = PlaySnd
trigger1 = Time = 0
value = 0,26;どーん


[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = varset
Trigger1 = Time = 0
trigger1 = numpartner = 0
var(20) = 1;BGM停止

[State -3,STOPBGM HELPER]
type = Helper
Trigger1 = Time = 0
trigger1 = numpartner = 0
ID = 37000
Name = "STOPBGM HELPER"
Pos = 0,0
PosType = left;p1
StateNo = 37000
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[State HANTEI ATARI INTRO];BGM停止後、イントロ
type = PlaySnd
Trigger1 = Time = 0
trigger1 = numpartner = 0
value = 3,1;テーレッテー
;channel = 2;BGMチャンネル
persistent = 0

[State nex]
type = changestate
trigger1 = time >= 80
value = 75001

;---------------------------------------------
;空の彼方へ
[Statedef 75001]
type    = L
movetype= H
physics = N
anim = 182

[State Intro]
type = Assertspecial
trigger1 = var(45) = 8
flag = intro

[State *,*];ワープアウト
type = PlaySnd
trigger1 = Time = 0;
value = 0,32;3,0
channel = 1;SEチャンネル
persistent = 0

[State KOVC]
type = Assertspecial
trigger1 = 1
flag = nokosnd

[State life]
type = lifeset
trigger1 = time = 30
value = 0

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State Pos]
type = posset
trigger1 = 1
Y = 0

[State nex]
type = changestate
trigger1 = time >= 60
value = 5150
