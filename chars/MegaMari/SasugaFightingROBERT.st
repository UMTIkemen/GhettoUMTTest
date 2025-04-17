;すてーと35000台・ゲット武器関連と、武器ゲット技をまとめ。
;35000台から現在武器に応じて派生する。35010台から特殊武器。
;ゲット技は別管轄とする。（こちらは3500台。）
;sffは35**で管理し、0番は武器アイコン、1番は武器名とする 以後必要に応じて差し込んでく
;これの999番にフィニッシュ時のカットインを入れる。
;airにて35**#で画像管理。35**0アイコン、**1武器名、以下略。**9はフィニッシュカット。
;enemyNear,nameで掴んだ敵を判定するつもり。
;相手のステートも監視して、同キャラでのBGM重複を避けたほうがいいか。
;36000番はエネルギーが切れたあとの処理担当。ステート-2-3で発動させる。
;とりがーは名前と特殊武器を管理するVer(*)で。

;ここでは都合上パワーＭＡＸ関連もまとめておく。

;日本の外の皆さんへ
;「Sasuga Fighting ROBERT」は「SUPER FIGHTING ROBOT」の空耳です。
;To you outside Japan
;"Sasuga Fighting ROBERT" is a mishearing of "SUPER FIGHTING ROBOT". 

[Statedef 860]
type = S
physics = S
movetype = I
anim = 2001
ctrl = 0
poweradd = -1000;
velset = 0,0

[State MAXSound]
type = PlaySnd
Trigger1 = Time = 0
Value = 0,21
Channel = 1;SE

[State MAXVOICE]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 0
Value = 1,19;死のメッセージカードだ！
Channel = 0;VC


[State -1];ちょっとこりたいとこ
type = Explod
Trigger1 = Time = 0
postype = p1
pos = -18,-85
anim = 4004
sprpriority = 3

;5int	サブゲージ・現在の装備武器判定　0は無装備　-1はパワーＭＡＸ　1-*****はそれぞれの武器
;6int	サブゲージ　0-3000
;7int	サブゲージ関連で使うかもしれない

[State VarSet1]
Type = Varset
Trigger1 = Time = 0
var(5) = -1

[State VarSet2]
Type = Varset
Trigger1 = Time = 0
var(6) = 3000;ゲージ上限の３０００をセット

[State GuageON]
type = Helper
trigger1 = Time = 0;
trigger1 = !Numhelper(10010)
ID = 10010
Name = "SubPower Guage"
Pos = 0,0
PosType = left;p1
StateNo = 10010
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1
;facing = facing*ifelse(teamside=1,1,-1);２ｐ側なら逆を向く

[State return]
type = ChangeState
Trigger1 = Time > 30;一定時間を過ぎたら
value = 0
ctrl = 1

;---------------------------------
[Statedef 10010]
ctrl = 0
anim = 99999999;10010
ownpal = 1

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State Offset]
type = Varset
trigger1 = Time = 0
var(10) = 0;通常のオフセットは0である

;　partner,***で色々調べてゲージ可変を可能にしたい！
;　または、制限をかけるか・・・？
[State Offset]
type = Varset
trigger1 = Time = 0
trigger1 = NumPartner ;パートナーがいます　Teammodeでの判定は推奨されない？
trigger1 = (partner,ID) < (parent,ID);パートナーＩＤがプレイヤーIDより小さい＝自分は3Pである
var(10) = 16;

[State GuageFRAME 1p]
type = explod
trigger1 = !NumExplod(10010)
trigger1 = teamside = 1;1p側
anim = 10010;ゲージフレーム
id = 10010
postype = left
pos = 45,35+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 5
facing = 1
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State GuageFRAME_B 1p]
type = explod
trigger1 = !NumExplod(10016)
trigger1 = teamside = 1;1p側
anim = 10013;ゲージフレームバック
id = 10016
postype = left
pos = 45,35+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
sprpriority = 3
facing = 1
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State GuageFRAME 2p]
type = explod
trigger1 = !NumExplod(10010)
trigger1 = teamside = 2;2p側
anim = 10010;ゲージフレーム
id = 10010
postype = right;left
pos = -45,35+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 5
facing = -1
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State GuageFRAME_b 2p]
type = explod
trigger1 = !NumExplod(10016)
trigger1 = teamside = 2;2p側
anim = 10013;ゲージフレームバック
id = 10016
postype = right;left
pos = -45,35+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
sprpriority = 3
facing = -1
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State Guagebar 1p]
type = explod
trigger1 = !Numexplod(10011)
trigger1 = teamside = 1;1p側
anim = 10011;ゲージばー
id = 10011
postype = left
pos = 133,40+var(10);暫定
sprpriority = 4
bindtime = -1
ignorehitpause = 1
ontop = 1
facing = -1;反対を向かす
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State Guagebar 2p]
type = explod
trigger1 = !Numexplod(10011)
trigger1 = teamside = 2;2p側
anim = 10011;ゲージばー
id = 10011
postype = right
pos = -133,40+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
sprpriority = 4
facing = 1;反対を向かす
pausemovetime = -1
supermobetime = -1
scale = 1,1

;あいこん
[State COUNTERRESET  10]
type = removeexplod
triggerall = numexplod(10012)
Trigger1 = var(15) != parent,var(5);前回と違っているか？
id = 10012;あいこんを一旦黙らせる

[State Varset 10]
type = varset
Trigger1 = var(15) != parent,var(5);前回と違っているか？
var(15) = parent,var(5)

[State MAXICON 1p]
type = explod
trigger1 = !Numexplod(10012)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(5) = -1;ＭＡＸ状態である
anim = 10012;MAXあいこん
id = 10012
postype = left
pos = 50,37+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 6
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State MAXICON 2p]
type = explod
trigger1 = !Numexplod(10012)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(5) = -1;ＭＡＸ状態である
anim = 10012;MAXあいこん
id = 10012
postype = right
pos = -76,37+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 6
facing = 1;反対を向かす
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State AXELICON 1p]
type = explod
trigger1 = !Numexplod(10012)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(5) = -2;AXEL状態である
anim = 10014;AXELあいこん
id = 10012
postype = left
pos = 50,37+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 6
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State AXELICON 2p]
type = explod
trigger1 = !Numexplod(10012)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(5) = -2;AXEL状態である
anim = 10014;AXELあいこん
id = 10012
postype = right
pos = -76,37+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
sprpriority = 6
facing = 1;反対を向かす
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNICON 1p]
type = explod
trigger1 = !Numexplod(10012)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35000+((parent,var(5))*10);ぶきアイコン
id = 10012;アイコンIDを共用したほうが効率がよさげ
postype = left
pos = 65,37+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
sprpriority = 4
ontop = 1
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNICON 2p]
type = explod
trigger1 = !Numexplod(10012)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35000+((parent,var(5))*10);ぶきアイコン
id = 10012;アイコンIDを共用したほうが効率がよさげ
anim = 10012;MAXあいこん
id = 10012
postype = right
pos = -76,37+var(10);暫定
sprpriority = 4
bindtime = -1
ignorehitpause = 1
ontop = 1
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNNAME 1p]
type = explod
trigger1 = !Numexplod(10013)
trigger1 = NumPartner = 0;パートナーがいない場合
trigger1 = teamside = 1;1p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35001+((parent,var(5))*10);ぶきの名前
id = 10013;武器名ＩＤは10013にする
postype = left
pos = 46,52+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
sprpriority = 4
ontop = 1
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNNAME 2p]
type = explod
trigger1 = !Numexplod(10013)
trigger1 = NumPartner = 0;パートナーがいない場合
trigger1 = teamside = 2;2p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35001+((parent,var(5))*10);ぶきの名前
id = 10013;武器名ＩＤは10013にする
postype = right
pos = -138,52+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
sprpriority = 4
ontop = 1
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

;カウンターに関しては、Helper側でvarを持つ。
;15 現在のゲージモード　0 ノーマル　1~武器　-1 MAX -2 AXEL
;2　現在の残量
;0　１の位　1 10の位
;前回の値を保存し、今回の値が違ってた場合カウンターを更新させる。

;消費量　3000/var7
;現在ＥＮ/消費量

[State COUNTERWPN]
type = varset
Trigger1 = var(2) != floor( abs(parent,var(6)) / ( abs(3000.0) /abs(parent,var(7)) ) )
var(2) = floor(abs(parent,var(6)) / ( abs(3000.0) /abs(parent,var(7))))
[State COUNTERWPN]
type = varset
Trigger1 = var(2) >= abs(parent,var(7))
var(2) = abs(parent,var(7))

[State COUNTERRESET  1]
type = removeexplod
triggerall = numexplod(10014)
Trigger1 = var(0) != abs(var(2))%10;１の位は前回と違っているか？
id = 10014;1の位のカウンターを一旦黙らせる

[State COUNTERRESET  10]
type = removeexplod
triggerall = numexplod(10015)
Trigger1 = var(1) != floor(abs(var(2))*.1)%10;10の位は前回と違っているか？
id = 10015;10の位のカウンターを一旦黙らせる

[State Varset  1]
type = varset
Trigger1 = var(0) != abs(var(2))%10;１の位は前回と違っているか？
var(0) = abs(var(2))%10;

[State Varset 10]
type = varset
Trigger1 = var(1) != floor(abs(var(2))*.1)%10;10の位は前回と違っているか？
var(1) = floor(abs(var(2))*.1)%10

[State WPNCOUNTER_1 1p]
type = explod
trigger1 = !Numexplod(10014)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35000+var(0);ぶきかうんたー１の位
id = 10014;アイコンID 1の位は10014
postype = left
pos = 57,38+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNCOUNTER_10 1p]
type = explod
trigger1 = !Numexplod(10015)
trigger1 = teamside = 1;1p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35000+var(1);ぶきかうんたー10の位
id = 10015;アイコンID 1の位は10014
postype = left
pos = 52,38+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNCOUNTER_1 2p]
type = explod
trigger1 = !Numexplod(10014)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35000+var(0);ぶきかうんたー１の位
id = 10014;アイコンID 1の位は10014
postype = right
pos = -54,38+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNCOUNTER_10 2p]
type = explod
trigger1 = !Numexplod(10015)
trigger1 = teamside = 2;2p側
trigger1 = parent,var(5) > 0;武器装備状態である
anim = 35000+var(1);ぶきかうんたー10の位
id = 10015;アイコンID 1の位は10014
postype = right
pos = -59,38+var(10);暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State Guagemove]
type = ModifyExplod
trigger1 = NumExplod(10011)
Id = 10011
scale = ifelse((parent,var(6)) > 3000,1.0,(parent,var(6))/3000.0),1
ignorehitpause = 1
;ぱわーＭＡＸのゲージはState-2-3でやっとく！

[State GuageDelete]
type = Removeexplod;ふれーむ消去
triggerall = NumExplod(10010);10010番
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10010

[State GuageDelete]
type = Removeexplod;ばー消去
triggerall = NumExplod(10011);10011番
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10011

[State GuageDelete]
type = Removeexplod;アイコン消去
triggerall = NumExplod(10012);10012番
trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10012

[State GuageDelete]
type = Removeexplod;ぶきねーむ消去
triggerall = NumExplod(10013);10013番
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10013

[State GuageDelete]
type = Removeexplod;カウンター消去
triggerall = NumExplod(10014);10014番
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10014

[State GuageDelete]
type = Removeexplod;カウンター消去
triggerall = NumExplod(10015);10015番
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10015

[State GuageDelete]
type = Removeexplod;バック消去
triggerall = NumExplod(10016);10016番
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー
trigger2 = RoundState >= 3;勝負が決まった場合ゲージ消去
id = 10016

[State EndGuage];ゲージ消滅
type = Destroyself
;trigger1 = parent,var(5) = -1
;trigger1 = (parent,var(6)) <= 0 ;パワーＭＡＸのときはゲージがなくなったら消えます　暫定処理
;trigger1 = (parent , var(6)) <= 0
trigger1 = (parent , var(5)) = 0;装備状態がノーマルならきえまそー

[State MAX2];MAX2用
type = PalFX
trigger1 = parent,var(5) = -1
trigger1 = parent,var(6) > 0;var6がある
trigger1 = parent,life < 300;ピンチ
trigger1 = Time%4 = 0
time = 2
add = 80,80,80

[State -2,AxelBG];AXEL用
type = BGPalFX
trigger1 = parent,var(5) = -2;あくせる
;trigger1 = parent,var(6) >= 0;var6がある
trigger1 = gameTime % 2 = 0;TimeMod = 2,0
time = 2;目にやさしくしたい時は値を２にした上で下の魔砲虹のownpalを０にしてください
add = 80,80,80
;mul = 128,64,256;256-((Time % 16)*8),256-(((Time + 11) % 32)*8),256-(((Time + 22) % 32)*8)
;color = 0;グレースケール
color = 96;色彩うすめに。

[State Clip]
type = null;DisplayToClipboard
trigger1 = NumPartner ;パートナーがいます　Teammodeでの判定は推奨されない？
text = "parent = %d partner = %d\nVar10 = %d"
params = (parent,ID),(partner,ID),var(10)

;--------------------------------------------------------------
[Statedef 3500];武器ゲット技
type    = S
movetype= A
physics = N
velset = 0,0
anim = 80001

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0


[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
trigger1 = Time = 0
pos = 48, -50
anim = S4050;S***で自分のだったけ
sound = S0,22;20, 0
poweradd = 0;-1000
time = 60;停止時間 (int)
;movetime = 60;停止無視時間 (int)

[State VarInit]
type = Varset;このステートに来たということはVar5は0ということになるけど、念のため
Trigger1 = Time = 0
var(5) = 0

;FAY418氏のステート
[State VarSet 武器をセット]
type = varset
trigger1 = var(5) = 0
trigger1 = time = 0
var(5) = var(9)

[State VarSet 武器を奪う]
type = varset
trigger1 = target,name = "MegaMari"	;奪う
trigger1 = target,authorname = "RockMARISA"
trigger1 = target,var(5) > 0		;お前なんか装備してるじゃねえか
trigger1 = var(5) = 0			;自分は装備してないな…
trigger1 = time = 0
var(5) = target,var(5)			;よこせ！

[State VerSet OHAOH 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 1;覇王翔吼拳である
var(7) = 3;3発撃てる

[State VerSet SHORYU 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 2;真昇竜である
var(7) = 2;2発

[State VerSet SHE-VENOM 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 3;べのむまりさである
var(7) = 3;3発

[State VerSet DARKANGEL 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 4;だーくえんじぇるである
var(7) = 3;3発

[State VerSet STRIDER 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 5;サイファーである
var(7) = 2;2発

[State VerSet XMAS 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 6;くりすますである
var(7) = 1;1発

[State VerSet RASING 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 7;れいじんぐである
var(7) = 3;3発
[State VerSet RASHOMON];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 8;れいじんぐである
var(7) = 2;2発

[State VerSet KAIBA 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 9;社長である
var(7) = 1;1発

[State VerSet HERO(lol) 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 10;(笑)である
var(7) = 2;2発

[State VerSet HYPERBOMB 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 11;ぼむである
var(7) = 6;6発

[State VerSet ROCKS 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 12;うたである
var(7) = 3;3発

[State VerSet OROCHINAGI 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 13;おろちである
var(7) = 3;3発

[State VerSet YAMIDOUKOKU 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 14;神父である
var(7) = 1;3発

[State VerSet UNSOU 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 15;運送である
var(7) = 2;3発

[State VerSet JAGIGIGI 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 16;じゃぎである
var(7) = 2;3発

[State VerSet KEEEEEEEEEN!!!!! 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 17;ヒエイケンである
var(7) = 2;3発

[State VerSet KEEEEEEEEEN!!!!! 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 18;残悔である
var(7) = 1;一発

[State VerSet KEEEEEEEEEN!!!!! 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 19;天破活殺である
var(7) = 2;２発

[State VerSet WRRYYYYYYYYYY 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 20;タンクである
var(7) = 1;1発

[State VerSet SIOGOROSI 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 21;春菊である
var(7) = 1;1発

[State VerSet SIOGOROSI 2];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 22;味噌煮である
var(7) = 1;1発

[State VerSet OIi?];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 23;おいィ？
var(7) = 1;1発

[State VerSet GAREGGA];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 24;ドッゴラァ
var(7) = 2;2発

[State VerSet GENOCIDE];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 25;審査員
var(7) = 2;2発

[State VerSet ICHIGO];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 26;いやっほーぅ！
var(7) = 2;2発

[State VerSet IWBTG];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 27;GAMEOVER
var(7) = 1;1発

[State VerSet DRAK];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 28;おいィ
var(7) = 1;1発

[State VerSet SUGOI];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 29;反射
var(7) = 10;10発

[State VerSet 891];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 30;厄
var(7) = 1;1発

[State VerSet KRAUSER-SAN];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 31;１秒間１０カイザー
var(7) = 3;３発

[State VerSet HAMMER];もう一つ設定が必要なので、var(5)をトリガーにして発動させる
type = Varset
Trigger1 = var(5) = 32;ハンマー状態
var(7) = 1;1発

;現在、武器は３０種類。以下随時更新

[State VarSet]	;奪った場合使用回数依存
type = varset
trigger1 = target,name = "MegaMari"
trigger1 = target,authorname = "RockMARISA"
trigger1 = var(5) > 0
v = 7
value = target,var(7)

[State Guage];装備できたならゲージを発生させる
type = Varset;げーじ残量にプラス
Trigger1 = var(5) > 0;1以上だった場合
var(6) = 1;3000

[State GuageON]
type = Helper
Trigger1 = var(5) > 0;武器をそうびしている状態なら
trigger1 = Time = 1;
trigger1 = !Numhelper(10010)
ID = 10010
Name = "SubPower Guage"
Pos = 0,0
PosType = left;p1
StateNo = 10010
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1
;facing = facing*ifelse(teamside=1,1,-1);２ｐ側なら逆を向く

[State Pause];すーぱーぽーず後、通常のポーズをちょっとだけ
type = Pause;装備したかどうかでポーズ時間を変動さしる
trigger1 = time = 0
time = 30
movetime = 30

[State HANTEI SUKA];いずれの条件にも当てはまらなかった場合
type = Explod;すかごぶりん
Trigger1 = var(5) = 0;これ以前のステートで変動が無かった場合
Trigger1 = Time = 1
anim = 3500
id = 3500
postype = LEFT
pos = 60, 10
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = 30
supermove = 1
persistent = 0
scale = 2,2

[State HANTEI SUKA];いずれの条件にも当てはまらなかった場合
type = PlaySnd;
Trigger1 = var(5) = 0;これ以前のステートで変動が無かった場合
Trigger1 = Time = 1
value = S0,37;ブー

[State HANTEI ATARI];
type = Explod;装備した場合
Trigger1 = var(5) > 0;武器をそうびしている状態なら
Trigger1 = Time = 1
anim = 3501
id = 3501
postype = p1
pos = 20, -60
sprpriority = -3
ownpal = 1
ontop = 1
bindtime = -1
removetime = 30
supermove = 1
pausemovetime = 99999999
persistent = 0
scale = 1,1

[State HANTEI ATARI 2];上のにエフェクトかけます
type = ModifyExplod
trigger1 = Time < 28
trigger1 = Numexplod(3501)
ID = 3501
pausemovetime = 99999999
scale = 1.0-(Time/30.0),1.0-(Time/30.0)

[State HANTEI ATARI 3];エフェクトもういっこ！
type = Explod
Trigger1 = var(5) > 0;武器をそうびしている状態なら
trigger1 = Time = 20
ID = 3502
anim = 4004
postype = p1
pos = 20, -60
sprpriority = 3
ownpal = 1
ontop = 1
bindtime = -1
supermove = 1
pausemovetime = 99999999
persistent = 0
scale = 1,1


[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = varset
;Trigger1 = var(5) > 0;1以上＝装備した場合
Trigger1 = Time = 1
var(20) = 1;BGM停止

[State -3,STOPBGM HELPER]
type = Helper
Trigger1 = Time = 1
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
Trigger1 = var(5) > 0;1以上＝装備した場合
Trigger1 = var(5) != 27;特定の技の場合は例外
Trigger1 = Time = 1
value = 3,5;3
channel = 2;BGMチャンネル
persistent = 0
[State HANTEI IWBTG];
type = PlaySnd
Trigger1 = var(5) = 27;特定の技の場合
Trigger1 = Time = 1
value = 3527,10
channel = 2;BGMチャンネル
loop = 1
persistent = 0

;上の後、はずれだったならもどる

[State HANTEI SUKA];いずれの条件にも当てはまらなかった場合
type = StopSnd;
Trigger1 = var(5) = 0;これ以前のステートで変動が無かった場合
Trigger1 = Time = 1
channel = 2;BGMチャンネル

[State HANTEI ATARI BGMON];BGM停止解除
type = varset
Trigger1 = var(5) = 0;これ以前のステートで変動が無かった場合
Trigger1 = Time = 1
var(20) = 0;BGM停止

[State Change]
type = Removeexplod
trigger1 = Time = 30;1
ID = 3500

[State Change]
type = Removeexplod
trigger1 = Time = 30;1
ID = 3501

[State Change]
type = ChangeState
trigger1 = Time = 30;1
value = 3501
ctrl = 0

;---------------------------------
[Statedef 3501];武器ゲット技・判定後
type    = S
movetype= A
physics = N
anim = 80002

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 5
Trigger1 = var(5) > 0;武器が装備されてる
value = 1,ifelse(random < 555,5,6);りゃっ！えいっ！
channel = 0;VC

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
Trigger1 = var(5) = 0;武器が装備されてない
value = 1,45;チッ・・・！
channel = 0;VC

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 17

[State JumpAnim];
Type = Explod
trigger1 = AnimElem = 7
Anim = 4032;持ってるアニメを使う
Id = 4032
Postype = p2
Pos = 0,0
Ownpal = 1
Sprpriority = -1
Persistent = 0
Removeongethit = 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
;trigger1 = AnimElem = 1
pos = 25,-20;28, 0

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
edge = 60,0

[State 810, Bind 2]
type = TargetBind
;trigger1 = AnimElemTime(2) < 0
trigger1 = AnimElem = 2
pos = 20,-25;0,0;28, 0

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -35,-15;0,0;28, 0

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 20,-70;0,0;28, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 50,-65;0,0;28, 0

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 7
pos = 55,0;0,0;28, 0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 6;11
value = -78

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 6;11
value = 821

[State 810, Turn 12]
type = Turn;反対を向く！
trigger1 = AnimElem = 3;12

[State 810, Pos 15]
type = PosAdd
trigger1 = AnimElem = 6;15
x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(5) <= 0;装備してないならそのまま終了
value = 0
;value = 3501;武器入手ステート
ctrl = 1

[State 810, State Wpn]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(5) > 0;装備してるなら次のステートへ
value = 3502;武器入手ステート
ctrl = 0

;---------------------------------
[Statedef 3502];武器ゲット技・げっとだぜ
type    = S
movetype= A
physics = N
anim = 900;すぺるかーど

[State Pause];すーぱーぽーず後、通常のポーズをちょっとだけ
type = Pause;装備したかどうかでポーズ時間を変動さしる
trigger1 = time = 0
time = 80;190;252
movetime = 80;190;252

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State Animbind]
type = Null;ChangeAnim
trigger1 = Time = [25,80]
value = 900
elem = 3;3こま目をしばらく続行

[State Guage];装備できたならゲージを発生させる
type = Varadd;げーじ残量にプラス
trigger1 = !(target,name = "MegaMari")
trigger1 = !(target,authorname = "RockMARISA")
Trigger1 = var(5) > 0;1以上だった場合
var(6) = 38;16;3000

[State Guage]					;装備できたならゲージを発生させる
type = Varadd					;げーじ残量にプラス
trigger1 = target,name = "MegaMari"		;奪った
trigger1 = target,authorname = "RockMARISA"
Trigger1 = var(5) > 0				;1以上だった場合
var(6) = ceil(380 / (30000 / target,var(6)))	;残量に応じたスピードに

[State GuagePlus];回復音
type = PlaySnd
trigger1 = Time % 5 = 1
value = 0,38
;channel = 4;SE臨時
volume = -100
;persistent = 0

[State *,*];じゃきいいいいん
type = PlaySnd
trigger1 = AnimElem = 5;Time = 120;
value = 0,31;3,0
channel = 1;SEチャンネル
persistent = 0

[State *,*];ゲットだぜ！
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 5;Time = 120;
value = 1,39;3,0
channel = 0;VCチャンネル
persistent = 0

[State SasugaFightingROBERT];流石ファイティングロバート
type = PlaySnd
Trigger1 = var(5) != 27;特定の技の場合は例外
trigger1 = Time = 10;190;252
value = 3,4
channel = 2;BGMチャンネル
volume = -150
loop = 1
persistent = 0

[State Guage];装備できたならゲージを発生させる
type = Varset;げーじ残量にプラス
Trigger1 = var(5) > 0;1以上だった場合
trigger1 = Time >= 80;190;252;ころあいを見て通常状態に
var(6) = 3000

[State Guage]					;装備できたならゲージを発生させる
type = Varset					;げーじ残量にプラス
trigger1 = target,name = "MegaMari"		;奪った
trigger1 = target,authorname = "RockMARISA"
Trigger1 = var(5) > 0				;1以上だった場合
trigger1 = Time >= 80				;190;252;ころあいを見て通常状態に
var(6) = target,var(6)				;相手の残量に依存

[State 810, State End]
type = ChangeState
trigger1 = Time >= 80;190;252;ころあいを見て通常状態に
value = 0
ctrl = 1


;---------------------------------
[Statedef 3503];武器ゲット技・手動バージョン
type    = S
movetype= A
physics = N
ctrl = 0
anim = 900;すぺるかーど
velset = 0,0

;ゲージを消費してランダムに装備。ただしこれで装備した場合弾数は１で固定となる

[State HANTEI ATARI BGMSTOP];BGMを停止させる
type = Null;varset
trigger1 = Animelemtime(3) = 0;3こま目
var(20) = 1;BGM停止

[State -3,STOPBGM HELPER]
type = Helper
trigger1 = Animelemtime(3) = 0;3こま目
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
type = Null;PlaySnd
trigger1 = Animelemtime(3) = 0;3こま目
value = 3,5
channel = 2;BGMチャンネル
persistent = 0

;上の後、はずれだったならもどる

[State HANTEI ATARI BGMON];BGM停止解除
type = varset
Trigger1 = var(5) = 0;これ以前のステートで変動が無かった場合
trigger1 = Time >= 60
var(20) = 0;BGM停止

[State HANTEI ATARI INTRO];流石ファイティングロバート
type = Null;PlaySnd
Trigger1 = var(5) > 0;武器を装備したなら
trigger1 = Time >= 60
value = 3,4
channel = 2;BGMチャンネル
loop = 1
persistent = 0

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Animelemtime(3) = 0;[0,30];3こま目
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = Animelemtime(3) = 0;3こま目
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = Animelemtime(3) = 0;3こま目
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
persistent = 0

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
trigger1 = Animelemtime(3) = 0;3こま目
pos = 28, -43
anim = S4050;S***で自分のだったけ
sound = S0,22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
;movetime = 60;停止無視時間 (int)

[State WPNSET];ランダム装備
type = varrandom
trigger1 = Animelemtime(6) = 0;6こま目
v = 5
range = 1,32;現在実装されているナンバーまで。
[State WPNSET2];再抽選
type = varrandom;やばそうなものがヒットした時再抽選を行う
triggerall = Animelemtime(6) = 0;6こま目
trigger1 = var(5) = 6;みさいる
trigger2 = var(5) = 27;相手が至近距離の場合、引いた瞬間に爆発するｗ
v = 5
range = 1,32;現在実装されているナンバーまで。
[State WPNSET2];特定条件で装備を遠慮したいものを排除する。この場合パワーMAXに変化。
type = Null;varset
;trigger1 = var(5) = 3;3はsimulだとやばそうなので
;trigger1 = var(5) = 6;みさいる
trigger1 = teammode = simul
var(5) = -1
[State WPNSET DEBUGMODE];デバッグ用　特定の武器の動作を見たい時なんかに
Type = null;varset;Nullを外せば使える
trigger1 = Animelemtime(6) = 0;6こま目
var(5) = 8;ここに装備させたい武器の番号を入れる
[State BULLET];弾数は１
type = varset
trigger1 = var(5) > 0;装備されている
;var(7) = 98;実験 割り切れない数を設定した時どうするかを考えなくてはならない　対応した処理をHelperに差し込むか
var(7) = (Random % 3) + 1;これで弾数が1~3となる
;var(7) = 1;弾数１
persistent = 0
[State BULLET];特定技の場合
type = varset
trigger1 = var(5) = 29;流影陣
var(7) = var(7)*5;５倍にする
;var(7) = 1;弾数１
persistent = 0
;(3000/var(7))が割り切れる数であることが条件

[State Pause]
type = pause
trigger1 = Animelemtime(3) = 0;3こま目
time = 24;停止時間 (int)
movetime = 24;停止無視時間 (int)

[State Guage];装備できたならゲージを発生させる
type = Varset;げーじ残量にプラス
Trigger1 = var(5) > 0;1以上だった場合
trigger1 = Animelemtime(6) = 0;6こま目
var(6) = 3000

[State HANTEI IWBTG BGMSTOP];BGMを停止させる
type = varset
Trigger1 = var(5) = 27;特定の技の場合
trigger1 = Animelemtime(6) = 0;6こま目
var(20) = 1;BGM停止
[State -3,STOPBGM HELPER]
type = Helper
Trigger1 = var(5) = 27;特定の技の場合
trigger1 = Animelemtime(6) = 0;6こま目
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
[State HANTEI IWBTG];
type = PlaySnd
Trigger1 = var(5) = 27;特定の技の場合
trigger1 = Animelemtime(6) = 0;6こま目
value = 3527,10
channel = 2;BGMチャンネル
loop = 1
persistent = 0

[State MAXSound]
type = PlaySnd
trigger1 = Animelemtime(6) = 0;6こま目
Value = 0,21
Channel = 1;SE

[State MAXVOICE]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelemtime(6) = 0;6こま目
Value = 1,42;ドローカード！
Channel = 0;VC

[State -1];ちょっとこりたいとこ
type = Explod
trigger1 = Animelemtime(6) = 0;6こま目
postype = p1
pos = -18,-85
anim = 4004
sprpriority = 3

[State POW];
type = PowerAdd
trigger1 = Animelemtime(6) = 0;6こま目
value = -1000

[State GuageON]
type = Helper
Trigger1 = var(5) != 0;武器をそうびしている状態なら
trigger1 = Animelemtime(6) = 0;6こま目
trigger1 = !Numhelper(10010)
ID = 10010
Name = "SubPower Guage"
Pos = 0,0
PosType = left;p1
StateNo = 10010
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1
;facing = facing*ifelse(teamside=1,1,-1);２ｐ側なら逆を向く

[State 810, State End]
type = ChangeState
trigger1 = Time >= 60
value = 0
ctrl = 1

;---------------------------------
[Statedef 3600];特殊武器投棄・「手札を墓地に捨ててやるぜ！」
type    = S
movetype= A
physics = N
ctrl = 0
anim = 3600;かーど投げ！
velset = 0,0

[State MUTEKI]
type = NotHitBy
trigger1 = time = 0
value = SCA

[State MAXVOICE]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = time = 0
Value = 1,46;手札を墓地に捨ててやるぜ
Channel = 0;VC

[State 3000, Super A]
type = SuperPause
trigger1 = animelemtime(2) = 0
pos = 0, -56
anim = S4050;S***で自分のだったけ
sound = S0,22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)

[State BUSTER]
type = Projectile
trigger1 = Animelemtime(4) = 0
id = 3600;敵判定用
projid = 3600
projanim = 3601
projhitanim = -1
;projhits = var(0)
projhits = 1
projmisstime = 2
projpriority = 30
projremove = 0;あたっても消えない
projremovetime = 10;アニメ終わった頃に消える
offset = 104,-55
velocity = 0, 0
accel = 0,0
attr = S, SP
animtype = Medium
damage    = 80,3
hitflag = MAFD
guardflag = MAF
pausetime = 3,0
sparkno = S4002
guard.sparkno = S4023
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -15
airguard.velocity = -5
air.velocity = -13,-3
air.juggle = 9
air.fall = 1
hitonce = 1

[State WPNSUB]
type = Varset
trigger1 = Animelemtime(4) = 0
Trigger1 = var(6) != 0
var(6) = 0

[State Varset]
type = varset
trigger1 = Animelemtime(4) = 0
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State BGMOFF]
type = varset
trigger1 = Animelemtime(4) = 0
var(20) = 0

[State BGMOFF]
type = StopSnd
trigger1 = Animelemtime(4) = 0
channel = 2;BGM

[State 810, State End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------
[Statedef 35000];武器発動技
type    = S
movetype= A
physics = S
ctrl = 0
;地上での特殊武器発動

[State WPNDRIVE]
type = ChangeState
trigger1 = var(5) > 0;ちゃんと武器は装備しているか？
value = 35000+(var(5)*10);1なら、35000+(1*10)=35010へ飛ぶ
ctrl = 0

[State WPN...?]
type = ChangeState
trigger1 = Time > 0;ちゃんと武器は装備しているか？
value = 0;装備してないんじゃんよ～もどれ。
ctrl = 1

;---------------------------------
[Statedef 35010];覇王翔吼拳
;sffは35**で管理し、0番は武器アイコン、1番は武器名とする 以後必要に応じて差し込んでく
;airにて35**#で画像管理。35**0アイコン、**1武器名、以下略。
type    = S
movetype= A
physics = S
ctrl = 0
anim = 35012;つまり、アクションアニメは35012以降となる

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;[State Vartes]
;type = varset
;trigger1 = 1
;var(6) = var(7)

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0


[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10


[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
trigger1 = Time = 0
pos = 3,-52;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
movetime = 50;停止無視時間 (int)

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
trigger1 = !numexplod(15060)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State TUKAWAZARUWOENAI];使わざるを得ない
type = PlaySnd
trigger1 = Time = 0
value = 3501,0
channel = 0;VCチャンネル
persistent = 0

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 19
value = 1,8;でりゃあ！
channel = 0;VC

[State 4500, Explod]
type = Explod
trigger1 = Animelem = 19
ID = 4010;995
postype = P1
pos = -15,0
anim = 4010;995;バスターのケムリにする
scale = 2,2;.5,.5
supermovetime = 99999
pausemovetime = 99999
ontop = 1
ownpal = 1
removetime = -2
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 19
value = 0,43;チャージＸ８
;channel=1;SE
[State SYOUKOUKEN];飛び道具　覇王翔吼拳
type = projectile
trigger1 = Animelem = 19
ProjID = 35010
projanim = 35014;
projhitanim = 35015;
projscale = 1.8,1.8;すけーるでかい
offset = 40,-48
velocity = 20,0
projremovetime = -1
projedgebound = 180
projstagebound = 180
attr = A,HP
animtype = back
getpower = 0,0
givepower = 50,25
damage = 250,10;当たるのは一発だけど、でかいダメージ
guardflag = HA
hitflag = MAF
pausetime = 0,20
sparkno = 4006;
hitsound = S3501,1;ぱこおおおおおん！！！！！
guardsound = S0,7
ground.type = trip
ground.slidetime = 15
ground.hittime = 30
ground.velocity = -20,-8;-8,-4
guard.velocity = -3
air.velocity = -20,-8;-7.5,-3.5
airguard.velocity = -2,-1
air.juggle = 3
projpriority = 3


[State remexp]
type = null;removeexplod
trigger1 = projhittime(35010) > 0;当たった
trigger1 = backedgebodydist <= -20
id = 15060

[state 451,6]
type = screenbound
trigger1 = projhittime(35010) > 0;当たった
trigger1 = Animelemtime(19) > 30;0;発射後
value = 0

[state 451,6]
type = changestate
trigger1 = projhittime(35010) > 0;当たった
;trigger1 = AnimTime = 0
trigger1 = backedgebodydist <= -20
value = 710
ctrl = 1

[State North]
type = null;VarAdd;当たったら星を奪う
trigger1 = projhittime(35010) = 1
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1


[State remexp]
type = removeexplod
trigger1 = animtime = 0;
id = 15060

[State Return]
type = ChangeState
trigger1 = animtime = 0;アニメおわった？
value = 0;もどれ。
ctrl = 1

;------------------------------
[Statedef 35020];真・昇竜拳
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35022;1111

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

;ココラニ特殊背景関連の記述を？
[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
;trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State -1]
Type     = NotHitBy
Trigger1 = animelem = 1
Value    = , AP;AA
Time     = 2

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 3
value = 1,5;
channel = 0;VC

[State 220, 3]
type = Explod
trigger1 = AnimElem = 3
anim = 4010;手前のケムリオブジェクト。
sprpriority = 5

;アッパー
[State 5150, 6] 
type = Explod
trigger1 = Time = 5;animelem = 3
trigger1 = !numexplod(1101)
anim = 1101
id = 1101
Postype     = P1
Pos         = 40,-135
vel = 0,0
ownpal = 1
removetime = -1
bindtime = -1
sprpriority = 4
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State DelExplod];アッパー消去
type = RemoveExplod
trigger1 = numexplod(1101) && AnimElem >= 5
Trigger2 = Animelem = 1;Time = 3
Trigger2 = MoveHit;上のアタリ判定が当たったら発動！
ID = 1101

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
Trigger1	  = Animelem = 2;Time = 1;準備動作
Attr              = A, SA
Damage            = 50, 5			;ダメージ
AnimType          = Heavy			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
sparkno = S4004;エリアルエフェクトにする
guard.dist        = 113             ;相手がガード行動をとる距離
hitsound   = S0,18;キマったことを示すサウンド
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 50,51			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = 0,-6.5			;ヒット時の相手の移動 地上
Air.Velocity      = 0,-6.5			;ヒット時の相手の移動 空中
AirGuard.Velocity = 0,-6.5			;ヒット時の相手の移動 空中ガード
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0
kill = 0;まだKOしない
p1stateno = 35021

;[State SHIN!]
;type = null;changestate
;Trigger1 = Animelem = 1;Time = 3
;Trigger1 = MoveHit;上のアタリ判定が当たったら発動！
;value = 35021

[State -1, HitDef]
Type = NULL;HitDef;ここのアタリ判定はなくす。
;Trigger1          = !MoveContACT
Trigger1	  = Time = 4;一段目
Attr              = A, SA
Damage            = 25, 5			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
sparkno = S4002;必殺エフェクト２
hitsound   = S0,5;5,0
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 8, 6			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -1,-11			;ヒット時の相手の移動 地上
Air.Velocity      = -1,-11			;ヒット時の相手の移動 空中
AirGuard.Velocity = -1,-11			;ヒット時の相手の移動 空中ガード
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
Trigger1	  = Time >= 5;二段目
Attr              = A, SA
Damage            = 65, 5			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
sparkno = S4002;必殺エフェクト２
hitsound   = S0,5;5,0
guard.dist        = 113             ;相手がガード行動をとる距離
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 8, 6			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -1,-11			;ヒット時の相手の移動 地上
Air.Velocity      = -1,-11			;ヒット時の相手の移動 空中
AirGuard.Velocity = -1,-11			;ヒット時の相手の移動 空中ガード
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0

[State -1]
Type     = VelSet
Trigger1 = Time = 4;10;飛ぶのがそんくらい
X        = 3

[State -1]
Type     = VelSet
Trigger1 = Time = 5;11
X        = 5

[State -1]
Type     = VelSet
Trigger1 = Time = 6;11
X        = 8

[State -1]
Type     = VelMul
Trigger1 = Time >= 10;18
X        = 0.9

[State -1]
Type     = VelSet
Trigger1 = Time = 5;10
Y        = -6

[State -1]
Type      = StateTypeSet
Trigger1  = Time = 10
StateType = A
Physics   = A

[State -1]
Type     = PlaySnd
Trigger1 = Time = 4;9
Value    = s0, 12;ダッシュ
Channel = 1;SE


[State remexp]
type = removeexplod
trigger1 = numexplod(15060) && AnimElem >= 5
id = 15060

[State -1]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 52

;------------------------------
[Statedef 35021];真・昇竜拳その２！
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 1011

[State BG]
type = BGPalFX
trigger1 = AnimElemtime(7) < 0
time = 1
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10
ignorehitpause = 1
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = AnimElemtime(7) < 0
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1


[State ]
type = changeanim
trigger1 = Time = 0
value = 1011
elem = 4

[State ]
type = PosAdd
trigger1 = time = 0
x = 15

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 5
value = 1,8;でりゃあ！！！
channel = 0;VC

[State 220, 3]
type = Explod
trigger1 = AnimElem = 2
anim = 4010;手前のケムリオブジェクト。
sprpriority = 5

;アッパー
[State 5150, 6] 
type = Explod
trigger1 = Time = 5;animelem = 2
trigger1 = !numexplod(1101)
anim = 1101
id = 1101
Postype     = P1
Pos         = 10,-135
vel = 0,0
ownpal = 1
removetime = -1
bindtime = -1
sprpriority = 4
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State DelExplod];アッパー消去
type = RemoveExplod
trigger1 = numexplod(1101) && AnimElem >= 8
ID = 1101

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
;Trigger1	  = Time = 1;準備動作
Trigger1	  = Animelem = 4
Attr              = A, SA
Damage            = 150, 5			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
guard.dist        = 100             ;相手がガード行動をとる距離
sparkno = S4004;エリアルエフェクトにする
hitsound   = S0,18;キマったことを示すサウンド
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 50,51			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = 0,-6.5			;ヒット時の相手の移動 地上
Air.Velocity      = 0,-6.5			;ヒット時の相手の移動 空中
AirGuard.Velocity = 0,-6.5			;ヒット時の相手の移動 空中ガード
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0
kill = 0;まだKOしない

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
Trigger1	  = Animelem = 5
Attr              = A, SA
Damage            = 200, 5			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
guard.dist        = 100             ;相手がガード行動をとる距離
sparkno = S4004;エリアルエフェクトにする
hitsound   = S0,18;キマったことを示すサウンド
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 9,10;50,51			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -2,-61			;ヒット時の相手の移動 地上
Air.Velocity      = -2,-61			;ヒット時の相手の移動 空中
AirGuard.Velocity = -2,-61			;ヒット時の相手の移動 空中ガード
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0
yaccel =  2

[State North]
type = VarAdd;当たったら星を奪う
trigger1 = animelemtime(5) = 0
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State -1]
Type     = VelSet
Trigger1 = Time = 4
X = 3

[State -1]
Type     = VelSet
Trigger1 = Time = 5;10
Y        = -6

[State -1]
Type      = StateTypeSet
Trigger1  = Time = 10
StateType = A
Physics   = A

[State -1]
Type     = PlaySnd
;Trigger1 = Time = 4;9
Trigger1  = Animelem = 5
Value    = s0, 36;ちゃろんじゃんぷ
Channel = 1;SE
lowpriority = 1

[State remexp]
type = removeexplod
trigger1 = numexplod(15060) && AnimElem >= 8
id = 15060

[State -1]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 52

;------------------------------
[Statedef 35030];ヴェノム魔理沙　その１
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 800;射撃アニメ

[State WPNSUB]
type = Varadd
Trigger1 = Animelem = 3;Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Animelem = 3;Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Animelem = 3;Time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
;Trigger1 = Animelem = 3;Time = 0
Trigger1 = Time = 2
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 40;停止時間 (int)
movetime = 8;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 7
value = 0,43;チャージＸ８
;channel=1;SE

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 7
value = 1,15;発射せりふ「バーン！」
channel=0;vc

[State BUSTER]
type = Projectile
trigger1 = Animelem = 7
id = 35030;敵判定用
projid = 35030
projanim = 3002;10050;
projhitanim = 3010;1003
;projhits = var(0)
projhits = 1
projremovetime = 10;消えるまでの時間射程時間 (int)
offset = 40,-48
velocity = 10, 0
;accel = .2,0
; HitDef
attr = S, SP
animtype = Medium
damage    = 0,0;この攻撃自体にダメージは無い
hitflag = MAFD
guardflag = MAF
pausetime = 3,6
sparkno = S4001
guard.sparkno = S4023
;sparkxy = 69,-47;-35
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -5
airguard.velocity = -5
air.velocity = -5
air.juggle = 9
air.fall = 1
hitonce = 1
;p1stateno = 65030;当たったら次のステートへ
p2stateno = 66030;当たったら相手のステートを制御する

[State NEXT]
type = ChangeState
Trigger1 = ProjHitTime(35030) != -1 && ProjHitTime(35030) < 5
Value = 35031;65030;当たったら次のステートへ

[State -1]
Type     = NotHitBy
Trigger1 = animelem = 1
Value    = , AP;AA
Time     = 2

[State NEXT]
type = ChangeState
trigger1 = Time >= 40
;Trigger1 = Animelem = 7;Animtime = 0
Value = 35031;失敗時

;------------------------------
[Statedef 35031];ヴェノム魔理沙　撃ち終わり
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 801;射撃アニメ

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
Trigger1 = ProjHitTime(35030) != -1
Trigger1 = target(35030),Stateno = 66030;相手に当たったかどうか、相手のステートで判別する
value = SCA

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
Trigger1 = ProjHitTime(35030) != -1
Trigger1 = target(35030),Stateno = 66030;相手に当たったかどうか、相手のステートで判別する
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 810, Width 2-11]
type = Width
Trigger1 = ProjHitTime(35030) != -1
Trigger1 = target(35030),Stateno = 66030;相手に当たったかどうか、相手のステートで判別する
edge = 180,0

[State HAZURE]
type = ChangeState
Trigger1 = Animtime = 0
Trigger1 = ProjHitTime(35030) != -1
Trigger1 = target(35030),Stateno = 66030;相手に当たったかどうか、相手のステートで判別する
Value = 65030;当たったら次のステートへ

[State Return]
type = ChangeState
Trigger1 = Animtime = 0
;Trigger1 = ProjHitTime(35030) = -1
value = 0
Ctrl = 1
;------------------------------
[Statedef 65030];ヴェノム魔理沙　その２
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
Anim      = 35032;魔理沙大変身

[State EnemyID]
type = Varset
Trigger1 = Time = 0
var(8) = 35030

;[State 810, Width 2-11]
;type = Width
;Trigger1 = Time = 0
;edge = 180,0

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time = 0
trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = -1;300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State Symbiote]
type = Playsnd
;Trigger1 = Animtime != 0
Trigger1 = AnimElemNo(0) <= 16
Trigger1 = Time % 16 = 0
value = 3503,0;ぐちょっ
;channel = 1;SE

[State Voice]
type = Playsnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 0
value = 1,11;うわっ
channel = 0;VC

[State EnemyPosset]
type = TargetBind
trigger1 = Time = 10
ID = var(8)
pos = 180,0

[State Next];次のステートへ
type = ChangeState
Trigger1 = Animtime = 0
value = 65031

;------------------------------
[Statedef 65031];ヴェノム魔理沙　その２
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
Anim      = 65020;魔理沙だっしゅ

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
Time        = 50
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 180,180,180;0  , 0  , 150
PalAdd      = 0  , 0  , 0
PalMul      = .5 , .5 , .5
Peresistent = 1

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State DashSND]
type = PlaySnd
Trigger1 = Time = 0
value = 0,12;ダッシュ
channel = 1;SE

[State MOVE]
type = velset
Trigger1 = 1
X = 8

[State Next]
type = ChangeState
Trigger1 = facing = 1;右向き
Trigger1 = Screenpos X >= (target(35030),Screenpos X)-40
Trigger2 = facing = -1;左向き
Trigger2 = Screenpos X <= (target(35030),Screenpos X)+40
value = 65032

;------------------------------
[Statedef 65032];ヴェノム魔理沙　その３
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
velset = 0,0
Anim      = 65021;魔理沙らっしゅ１

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
Time        = 50
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 180,180,180;0  , 0  , 150
PalAdd      = 0  , 0  , 0
PalMul      = .5 , .5 , .5
Peresistent = 1

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State TargetState]
type = TargetState
trigger1 = AnimelemTime(3) = 0
trigger2 = AnimelemTime(5) = 0
;trigger3 = AnimelemTime(7) = 0
ID = var(8)
value = 66031;その場で食らう

[State TargetState]
type = TargetState
trigger1 = AnimelemTime(7) = 0
ID = var(8)
value = 66032;すこしのけぞる

[State HitSpark]
type = explod
trigger1 = AnimelemTime(3) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(7) = 0
anim = ifelse(Random<555,4002,4005)
pos = 30,-50
postype = p1
sprpriority = 5

[State HitFlash]
type = AllPalfx
trigger1 = AnimelemTime(3) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(7) = 0
time = 2
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256

[State HitSnd];攻撃時のサウンド
type = PlaySnd
trigger1 = AnimelemTime(3) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(7) = 0
value = 0,ifelse(Random<555,4,5)

[State WEBSnd];ウェブロープ音
type = PlaySnd
trigger1 = AnimelemTime(8) = 0
value = 3503,1;ウェブロープ

[State Damage];相手に与えるダメージ
type = TargetLifeAdd
trigger1 = AnimelemTime(3) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(7) = 0
value = -20
ID = var(8)
kill = 0;この段階ではＫＯしない

[State Velset]
type = Velset
Trigger1 = AnimelemTime(7) = 0;3撃目で距離を離す
x = -1

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(8) = 0
ID = var(8)
pos = 190,0

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(9) = 0
ID = var(8)
pos = 160,0

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(10) = 0
ID = var(8)
pos = 100,0

[State 810, Width 2-11]
type = Width
trigger1 = Time = 0
trigger2 = AnimelemTime(8) = 0
trigger3 = AnimelemTime(9) = 0
trigger4 = AnimelemTime(10) = 0
edge = 180,0

[State EnemyPosset]
type = TargetBind
trigger1 = Time = 0
ID = var(8)
pos = 40,0

;[State EnemyPosset];ウェブで引っ張る
;type = TargetBind
;trigger1 = AnimTime = 0;アニメーションが一通り終わったら
;ID = var(8)
;pos = 60,0;近くまで引き寄せる

[State Next]
type = ChangeState
trigger1 = AnimTime = 0;アニメーションが一通り終わったら
value = 65033;次のラッシュヘ

;------------------------------
[Statedef 65033];ヴェノム魔理沙　その４
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
velset = 0,0
Anim      = 65022;魔理沙らっしゅ２

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
Time        = 50
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 180,180,180;0  , 0  , 150
PalAdd      = 0  , 0  , 0
PalMul      = .5 , .5 , .5
Peresistent = 1

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State TargetState]
type = TargetState
trigger1 = AnimelemTime(2) = 0
trigger2 = AnimelemTime(5) = 0
ID = var(8)
value = 66031;その場で食らう

[State TargetState]
type = TargetState
trigger1 = AnimelemTime(8) = 0
ID = var(8)
value = 66032;すこしのけぞる

[State HitSpark]
type = explod
trigger1 = AnimelemTime(2) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(8) = 0
anim = ifelse(Random<555,4002,4005)
pos = 30,-50
postype = p1
sprpriority = 5

[State HitFlash]
type = AllPalfx
trigger1 = AnimelemTime(2) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(8) = 0
time = 2
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256

[State HitSnd];攻撃時のサウンド
type = PlaySnd
trigger1 = AnimelemTime(2) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(8) = 0
value = 0,ifelse(Random<555,4,5)

[State WEBSnd];ウェブロープ音
type = PlaySnd
trigger1 = AnimelemTime(9) = 0
value = 3503,1;ウェブロープ

[State Damage];相手に与えるダメージ
type = TargetLifeAdd
trigger1 = AnimelemTime(2) = 0
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(8) = 0
value = -20
ID = var(8)
kill = 0;この段階ではＫＯしない

[State Velset]
type = Velset
Trigger1 = AnimelemTime(8) = 0;3撃目で距離を離す
x = -1

[State EnemyPosset]
type = TargetBind
trigger1 = Time = 0
ID = var(8)
pos = 40,0

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(9) = 0
ID = var(8)
pos = 180,0

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(10) = 0
ID = var(8)
pos = 150,-10

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(11) = 0
ID = var(8)
pos = 80,-5

[State 810, Width 2-11]
type = Width
trigger1 = AnimelemTime(9) = 0
trigger2 = AnimelemTime(10) = 0
trigger3 = AnimelemTime(11) = 0
edge = 130,0

;[State EnemyPosset];ウェブで引っ張る
;type = TargetBind
;trigger1 = AnimTime = 0;アニメーションが一通り終わったら
;ID = var(8)
;pos = 60,0;近くまで引き寄せる

[State Next]
type = ChangeState
trigger1 = AnimTime = 0;アニメーションが一通り終わったら
value = 65034;次のラッシュヘ

;------------------------------
[Statedef 65034];ヴェノム魔理沙　その５
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
velset = 0,0
Anim      = 65023;魔理沙らっしゅ３　腕組み

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State EnemyPosset]
type = TargetBind
trigger1 = Time = 5
ID = var(8)
pos = 120,10

[State 810, Width 2-11]
type = Width
trigger1 = Time = 5
edge = 150,0

[State KAGE]
type = explod;影より不意打ち。黒い水溜り
trigger1 = Time = 5
trigger1 = !Numexplod(65024)
anim = 65024;黒い水溜り
ID = 65024
pos = 90,-8
postype = p1
sprpriority = -3
removetime = 69;32;存在する時間
;removetime = -1;永続

[State KIBA]
type = explod;影より不意打ち。かみつき
trigger1 = Time = 5
trigger1 = !Numexplod(65025)
anim = 65025;襲い掛かる影
ID = 65025
pos = 90,0
postype = p1
sprpriority = 3
removetime = 69;-2;アニメーション一回で消えます
;removetime = -1;永続

[State Symbiote]
type = Playsnd
trigger1 = Numexplod(65025);かみつきアニメが発生している間
Trigger1 = Time % 16 = 0
value = 3503,0;ぐちょっ
;channel = 1;SE

[State TargetState]
type = TargetState
Trigger1 = Time < 69
trigger1 = Numexplod(65025);かみつきアニメが発生している間
trigger1 = Time % 8 = 0;8フレームに一回くらい
ID = var(8)
value = 66031;その場で食らう

[State HitSpark]
type = explod
trigger1 = Numexplod(65025);かみつきアニメが発生している間
trigger1 = Time % 8 = 0;8フレームに一回くらい
anim = ifelse(Random<555,4002,4005)
;pos = 90,-50
pos = 120+((Random % 10)-5),-50+((Random % 10)-5)
postype = p1
sprpriority = 5

[State HitFlash]
type = AllPalfx
trigger1 = Numexplod(65025);かみつきアニメが発生している間
trigger1 = Time % 8 = 0;8フレームに一回くらい
time = 2
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256

[State Damage];相手に与えるダメージ
type = TargetLifeAdd
trigger1 = Numexplod(65025);かみつきアニメが発生している間
trigger1 = Time % 8 = 0;8フレームに一回くらい
value = -8
ID = var(8)
kill = 0;この段階ではＫＯしない

[State HitSnd];攻撃時のサウンド
type = PlaySnd
trigger1 = Numexplod(65025);かみつきアニメが発生している間
trigger1 = Time % 8 = 0;8フレームに一回くらい
value = 0,ifelse(Random<555,4,5)

[State Upper];敵さんを上空にホップさせる
type = targetstate
Trigger1 = Time = 69
value = 66033;上空へほっぷする

[State Next]
type = ChangeState
Trigger1 = Time = 125;相手が落ちてきたところを・・・
value = 65035;次のラッシュで拾うっ！

;------------------------------
[Statedef 65035];ヴェノム魔理沙　その５
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
velset = 0,0
Anim      = 65026;魔理沙らっしゅ４　ヴェノムバイト

[State TargetVel]
type = TargetVelset
trigger1 = AnimElemNo(0) != 1
Y = 10.5;敵さんを下に落としまっす
X = -2;少し押し出しまっす

[State Symbiote]
type = Playsnd
trigger1 = Animelemtime(2) = 0
trigger2 = Animelemtime(7) = 0
value = 3503,0;ぐちょっ
;channel = 1;SE

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
Time        = 50
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 180,180,180;0  , 0  , 150
PalAdd      = 0  , 0  , 0
PalMul      = .5 , .5 , .5
Peresistent = 1

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State MOVE]
type = velset
Trigger1 = Time <= 32;着地するまで
X = 2

[State LANDING]
type = explod;着地時の飛び散り
trigger1 = Animelemtime(10) = 0
trigger1 = !Numexplod(65028)
anim = 65028;
ID = 65028
pos = 0,0
postype = p1
sprpriority = 3
removetime = -2;アニメーション一回で消えます

[State TargetState]
type = TargetState
triggerall = Time % 8 = 0;8フレームに一回くらい
trigger1 = AnimElemNo(0) != 1
trigger2 = AnimElemNo(0) != [7,10]
ID = var(8)
value = 66031;その場で食らう

[State HitSpark]
type = explod
triggerall = Time % 8 = 0;8フレームに一回くらい
trigger1 = AnimElemNo(0) != 1
trigger2 = AnimElemNo(0) != [7,10]
anim = ifelse(Random<555,4002,4005)
;pos = 90,-50
pos = 70+((Random % 10)-5),-80+((Random % 10)-5)
postype = p1;p2;simulの時問題があるので
sprpriority = 5

[State HitFlash]
type = AllPalfx
triggerall = Time % 8 = 0;8フレームに一回くらい
trigger1 = AnimElemNo(0) != 1
trigger2 = AnimElemNo(0) != [7,10]
time = 2
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256

[State Damage];相手に与えるダメージ
type = TargetLifeAdd
triggerall = Time % 8 = 0;8フレームに一回くらい
trigger1 = AnimElemNo(0) != 1
trigger2 = AnimElemNo(0) != [7,10]
value = -8
ID = var(8)
kill = 0;この段階ではＫＯしない

[State HitSnd];攻撃時のサウンド
type = PlaySnd
triggerall = Time % 8 = 0;8フレームに一回くらい
trigger1 = AnimElemNo(0) != 1
trigger2 = AnimElemNo(0) != [7,10]
value = 0,ifelse(Random<555,4,5)

[State Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 35032;フィニッシュスローへ移行！

;------------------------------
[Statedef 35032];ヴェノム魔理沙　フィニッシュ
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
velset = 0,0
Anim      = 65027;魔理沙らっしゅふぃにっしゅ

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
Time        = 50
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 180,180,180;0  , 0  , 150
PalAdd      = 0  , 0  , 0
PalMul      = .5 , .5 , .5
Peresistent = 1

[State 4500, AssertSpecial];背景消去　発動中ずっと暗くなる　テスト段階では外す
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State WEBSnd];ウェブロープ音
type = PlaySnd
trigger1 = AnimelemTime(1) = 0
value = 3503,1;ウェブロープ

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(1) = 0
ID = var(8)
pos = 100,0

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(2) = 0
ID = var(8)
pos = 80,-70

[State EnemyPosset];ウェブで引っ張る
type = TargetBind
trigger1 = AnimelemTime(3) = 0
ID = var(8)
pos = -10,-60

[State 810, Width 2-11]
type = Width
trigger1 = AnimelemTime(1) = 0
edge = 80,0

[State Damage];相手に与えるダメージ
type = TargetLifeAdd
trigger1 = AnimelemTime(3) = 0
value = -30
ID = var(8)
kill = 1;この一撃でライフが無くなったらＫＯ

[State POSSET];つじつま合わせっぽ
type = velset
trigger1 = Time > 12
;trigger1 = Animelem = 4
X = 15

[State TargetState]
type = TargetState
trigger1 = AnimelemTime(3) = 0
ID = var(8)
value = 66034;向こうへ吹っ飛ぶ

[State CAMERA];投げ飛ばしたあと、敵さんにフォーカスを向ける
type = ScreenBound
trigger1 = Time > 12
value = 0;カメラが追わなくなる

[State Next]
type = ChangeState
Trigger1 = target(35030),Stateno = 5100
Trigger2 = Time = 60
value = 65036;画面に入るためのステート

;------------------------------
[Statedef 65036];ヴェノム魔理沙　終了処理
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
Anim      = 65020;魔理沙だっしゅ

[State Turn]
type = Turn
trigger1 = time = 0

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
Time        = 50
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 180,180,180;0  , 0  , 150
PalAdd      = 0  , 0  , 0
PalMul      = .5 , .5 , .5
Peresistent = 1

[State CAMERA];投げ飛ばしたあと、敵さんにフォーカスを向ける
;simulもーど時、処理をいろいろかえる。
type = ScreenBound
trigger1 = Time < 20
value = 0;カメラが追わなくなる

[State PosSet];座標セットしてダッシュ地点にする
type = PosSet
trigger1 = Time = 0
trigger1 = Facing = -1
X = 280
Y = 0

[State PosSet]
type = PosSet
trigger1 = Time = 0
trigger1 = Facing = 1
X = -280
Y = 0

[State DashSND]
type = PlaySnd
Trigger1 = Time = 1
value = 0,12;ダッシュ
channel = 1;SE

[State RESET]
type = MoveHitReset
Trigger1 = Time < 20
trigger1 = !winKO;まだ勝負がついていない時

[State MOVE]
type = velset
Trigger1 = Time < 20
X = 8

[State LANDING]
type = explod;着地時の飛び散り
triggerall = !WinKO;まだ勝負がついていないなら
Trigger1 = Time = 20
trigger1 = !Numexplod(65028)
anim = 65028;
ID = 65028
pos = 0,0
postype = p1
sprpriority = 3
removetime = -2;アニメーション一回で消えます


[State remexp]
type = removeexplod
trigger1 = time = 20;
id = 15060

[State Symbiote]
type = Playsnd
triggerall = !WinKO;まだ勝負がついていないなら
Trigger1 = Time = 20
value = 3503,0;ぐちょっ
;channel = 1;SE

[State Next]
type = ChangeState
triggerall = !WinKO;まだ勝負がついていないなら
Trigger1 = Time = 20
value = 0
ctrl = 1

[State Next]
type = ChangeState
triggerall = WinKO;勝負がついた場合、勝利ポーズに移行する
Trigger1 = Time = 20
value = 65037;勝利ポーズ
;ctrl = 0

;------------------------------
[Statedef 65037];ヴェノム魔理沙　終了処理 KO1
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 1
Anim      = 65029;勝利ポーズ

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State ANIMBIND]
type = ChangeAnim
Trigger1 = 1
value = 65029
Elem = 1

;[State EMAGENCY]
;type = ChangeState
;trigger1 = p2movetype = A
;value = 0
;ctrl = 1

;------------------------------
[Statedef 65038];ヴェノム魔理沙　終了処理 KO2
Type      = S
MoveType  = I
Physics   = S
Ctrl      = 0
Anim      = 65029;勝利ポーズ

[State Symbiote]
type = Playsnd
Trigger1 = animelemtime(2) = 0
value = 3503,0;ぐちょっ
;channel = 1;SE

[State Voice];おおわらい
type = PlaySnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 33
value = 1,31;HAHAHAHAHAHAHAHAHAHA!!!!!
channel = 0;VC

;------------------------------
[Statedef 66030];敵さんピヨり
type    = S
movetype= H
physics = S
ctrl = 0
anim = 5300
sprpriority = 0
poweradd = 0
velset = -12,0

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = StateTypeSet
trigger1 = pos y >= -5
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = pos y >= -5
y = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= -5
y = 0

;------------------------------
[Statedef 66031];敵さん食らい１（その場固定）
type    = S
movetype= H
physics = S
ctrl = 0
anim = ifelse(Random<555,5000,5010);ランダムでやられモーションを変える
sprpriority = 0
poweradd = 0
velset = 0,0

[State CAMERA];
;simulもーど時、処理をいろいろかえる。
type = ScreenBound
trigger1 = TeamMode = simul;simulもーどの時
value = 0;カメラが追わなくなる

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = StateTypeSet
trigger1 = pos y >= -5
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = pos y >= -5
y = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= -5
y = 0

;------------------------------
[Statedef 66032];敵さん食らい２（食らい移動）
type    = S
movetype= H
physics = S
ctrl = 0
anim = ifelse(Random<555,5000,5010);ランダムでやられモーションを変える
sprpriority = 0
poweradd = 0
velset = 0,0

[State CAMERA];投げ飛ばしたあと、敵さんにフォーカスを向ける
;simulもーど時、処理をいろいろかえる。
type = ScreenBound
trigger1 = TeamMode = simul;simulもーどの時
value = 0;カメラが追わなくなる

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = VelSet
trigger1 = time = 0
X = -16;後ろにのけぞります

[State CAMERA];のけぞってる間、カメラを外します
type = NULL;ScreenBound
trigger1 = 1
value = 0;カメラが追わなくなる

[State 0, ]
type = StateTypeSet
trigger1 = pos y >= -5
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = pos y >= -5
y = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= -5
y = 0

;------------------------------
[Statedef 66033];敵さん食らい３（食らい上昇）
type    = A
movetype= H
physics = N;A
ctrl = 0
anim = 5050;浮く
sprpriority = 0
poweradd = 0
velset = 0,-15

[State CAMERA];投げ飛ばしたあと、敵さんにフォーカスを向ける
;simulもーど時、処理をいろいろかえる。
type = ScreenBound
trigger1 = TeamMode = simul;simulもーどの時
value = 0;カメラが追わなくなる

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State YAdd]
type = null;Gravity
Trigger1 = 1
[State YAdd]
type = veladd
Trigger1 = 1
Y = .5

[State]

[State CAMERA];のけぞってる間、カメラを外します
type = NULL;ScreenBound
trigger1 = 1
value = 0;カメラが追わなくなる

;[State 0, ]
;type = StateTypeSet
;trigger1 = pos y = [10,-5];>= -5
;statetype = S
;physics = S

[State 0, ]
type = PosSet
trigger1 = Time > 60
trigger1 = pos y >= -5
y = -5

[State 0, ]
type = VelSet
trigger1 = Time > 60
trigger1 = pos y >= -5
y = 0

;------------------------------
[Statedef 66034];敵さん食らい４（ふっとび）
type    = A
movetype= H
physics = N;A
ctrl = 0
anim = 5050;浮く
sprpriority = 0
poweradd = 0
velset = 130,-8

;フィニッシュ投げなのでここで画面内に入れてしまいたい

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State YAdd]
type = null;Gravity
Trigger1 = 1
[State YAdd]
type = veladd
Trigger1 = 1
Y = .5

;[State 0, ]
;type = StateTypeSet
;trigger1 = pos y = [10,-5];>= -5
;statetype = S
;physics = S

[State FUTTOBI]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 
;------------------------------
[Statedef 35040];ダークエンジェル　本体動作
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 802;射撃アニメ

[State WPNSUB]
type = Varadd
Trigger1 = Animelem = 3;Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
;trigger1 = Animelem = 3
trigger1 = Time = 0
value = 3504,0;千年眼ゲット
channel=0;VC

[State 4500, Explod]
type = Explod
Trigger1 = Animelem = 3;Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Animelem = 3;Time = 0
anim = 10051;ばくら
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
Trigger1 = Animelem = 3;Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 7
value = 0,43;チャージＸ８
;channel=1;SE

[State BUSTER]
type = Projectile
trigger1 = Animelem = 7
id = 35030;敵判定用
projid = 35030
projanim = 35042
projhitanim = 3010;1003
;projhits = var(0)
projhits = 999
projmisstime = 2
projpriority = 30
offset = 40,-48
velocity = .1, 0
accel = .4,0
attr = S, SP
animtype = Medium
damage    = 10,3
hitflag = MAFD
guardflag = MAF
pausetime = 3,0
sparkno = S4002
guard.sparkno = S4023
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -15
airguard.velocity = -5
air.velocity = -13,-3
air.juggle = 9
air.fall = 1
hitonce = 1

[State -1]
Type     = NotHitBy
Trigger1 = animelem = 1
Value    = , AP;AA
Time     = 2

[State End]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------
[Statedef 35050];スラッシュクロー　本体動作
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35052;射撃アニメ

[State WPNSUB]
type = Varadd
Trigger1 = Animelem = 3;Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 5
value = 3505,0;たー
channel=0;VC

[State 4500, Explod]
type = Explod
Trigger1 = Animelem = 3;Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

[State 4500, Explod]
type = Explod
Trigger1 = Animelem = 3;Time = 0
anim = 35053;さいふぁーエフェクト
postype = p1
pos = 0,0
sprpriority = 5
supermovetime = 60
ownpal = 1
bindtime = -1
removetime = 50;しばらくナガレル

[State 4500, Explod]
type = Explod
Trigger1 = Animelem = 4;Time = 0
anim = 35054;さいふぁースラッシュ
postype = p1
pos = 0,0
sprpriority = 5
supermovetime = 60
ownpal = 1
bindtime = -1
removetime = 8;しばらくナガレル

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Animelem = 3;Time = 0
anim = 10050
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
Trigger1 = Animelem = 3;Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 4
value = 3505,1;サイファー
;channel=1;SE

[State ZAN]
type = Hitdef
triggerall = Time%2 = 0
trigger1 = Animelem = 4
id = 35030;敵判定用
attr = S, HP
animtype  = Hard
damage    = 200,30;
getpower = 0,0
sprpriority = 1
hitflag = MADFP
guardflag = MA
guard.dist        = 245             ;相手がガード行動をとる距離
pausetime = 0,7
sparkno = Sifelse(Random < 555,4037,4036);斬エフェクトを実装する
sparkxy = ifelse((Random < 330),-20,ifelse((Random = [330,660]),-30,-15)), ifelse((Random < 330),-40,ifelse((Random = [330,660]),-30,-50))
hitsound   = S0,41;セイバーヒット
guardsound = S0,7;これもバスターのものを
guard.sparkno = S4023;こいつはあのガードアニメを
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -10,-10
guard.slidetime = 11
guard.hittime = 11
guard.velocity = -4.5
air.type = High
air.velocity = -6.5,-10
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか
p2stateno = 35052;相手に参照させるステート

[State BOMB];相手がこの一撃で死ぬ場合、爆発をプラス
Type = Explod
trigger1 = WinKO
trigger1 = !numexplod(6002)
anim = 6002;はでな爆発
ID = 6002
postype = p2
pos = 30,-30
;vel = .1,0
sprpriority = 5
ownpal = 1
facing = -1
bindtime = -1


[State -1]
Type     = NotHitBy
Trigger1 = animelem = 1
Value    = , AP;AA
Time     = 2

[State End]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------
[Statedef 35052]
type    = A
movetype= H
physics = N;A
anim = 5000
ctrl = 0

[State Ret]
type = SelfState
trigger1 = Time >= 5
trigger1 = Alive
;value = 5000
value = 5030

[State Pal]
type = PalFX
trigger1 = !Alive
time = 1
add = 256,256,256
invertall = 0
color = 256

[State Change]
Type      = StateTypeSet
trigger1 = !Alive
Trigger1  = Time = 10
type    = L
movetype= H
physics = N

[State Vel]
type = Velset
trigger1 = !Alive
trigger1 = Time <= 12
X = -2
Y = -1.5

[State Vel]
type = Velset
triggerall = !Alive
trigger1 = Time > 48
X = 0
Y = 0

[State Vel]
type = Posset
triggerall = !Alive
trigger1 = Time > 48
Y = 0


[State Inv]
type = AssertSpecial
trigger1 = !Alive
trigger1 = Time >= 10
flag = NoShadow
flag2 = Invisible

[State Change]
type = ChangeState
trigger1 = !Alive
trigger1 = Time >= 50
trigger1 = pos Y = [-5,5]
value = 5150


;------------------------------
[Statedef 35060];メリークリスマス！
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 41;じゃんぷ
velset	  = 0,-30

[State Changeanim]
type = ChangeAnim
Trigger1 = 1
value = anim
elem = 2

[State VOICE]
type = Playsnd
trigger1 = Time = 0
value = 3506,0;ディープスロートからのプレゼントだ！
channel = 0;VC

[State JUMP];すてーとを空中にする
type = StateTypeSet
trigger1 = Time = 0
statetype = A
movetype = A
physics = N

[State Next]
type = ChangeState
trigger1 = Pos Y < -600
value = 35061

;------------------------------
[Statedef 35061];メリークリスマス！
Type      = A
MoveType  = A
Physics   = N
Ctrl      = 0
Anim      = 35062;みさいる

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = Null;AssertSpecial
trigger1 = Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State Turn]
type = Turn
trigger1 = facing = -1

[State EDGE]
type = Width
trigger1 = Time = 1
edge = 260,40

[State Velset]
type = Velset
trigger1 = Time = 0
X = 1
Y = 6

[State Angle]
type = Angledraw
trigger1 = 1

[State Angle]
type = Angleset
trigger1 = 1
value = 280

[State BOMBER!!]
type = ChangeState
trigger1 = Pos Y >= 0;着弾確認！
value = 35062
;------------------------------
[Statedef 35062];メリークリスマス！
Type      = A
MoveType  = A
Physics   = N
Ctrl      = 0
anim = 35063
velset = 0,0

[State Tehletteh];てーれってー中のいろいろ停止
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = NOBG
flag3 = NOFG

[State FLASH]
type = allPalFX
trigger1 = Time = 0;1;画面まっしろ
time = 3
add = 256,256,256

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

[State GENKIDAMA]
type = PlaySnd
trigger1 = Time = 0
value = 0,20;げんきだま
channel = 1;SE

[State StopBGM]
type = Stopsnd
Trigger1 = Time = 0
channel = 2

[State StopBGM];BGMを停止させる
type = varset
Trigger1 = Time = 0
var(20) = 1;BGM停止

[State DRIFFw]
type = PlaySnd
trigger1 = Time = 0
value = 3,2;またイチローかっ
;channel = 2;BGM

[State Pause]
type = Pause
trigger1 = time = 1
time = 100
pausemovetime = 100

[State HITDEF]
type = hitdef
Trigger1	  = Time = 0;準備動作
Attr              = SCA, HA
affectteam = B
Damage            = 0,0			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAFD				;ヒットする状態
guard.dist        = 550             ;相手がガード行動をとる距離
GuardFlag         = A				;ガードできる状態
Priority          = 3, Hit			;攻撃の優先度
;PauseTime         = 9, 9			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = 0,0	;ヒット時の相手の移動 地上
Air.Velocity      = 0,0	;ヒット時の相手の移動 空中
AirGuard.Velocity = 0,0	;ヒット時の相手の移動 空中ガード
;yaccel = 5
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0

[State HITDEF]
type = hitdef
Trigger1	  = Time = 0;準備動作
Attr              = SCA, HA
affectteam = B
Damage            = 0,0			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAFD				;ヒットする状態
guard.dist        = 550             ;相手がガード行動をとる距離
GuardFlag         = M				;ガードできる状態
Priority          = 3, Hit			;攻撃の優先度
;PauseTime         = 9, 9			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = 0,0	;ヒット時の相手の移動 地上
Air.Velocity      = 0,0	;ヒット時の相手の移動 空中
AirGuard.Velocity = 0,0	;ヒット時の相手の移動 空中ガード
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0

[State HITDEF]
type = Targetlifeadd
trigger1 = Time = 1
value = -99999999

[State JIBAKU]
type = lifeadd
trigger1 = Time = 1
value = -99999999

[State KO]
type = AssertSpecial
trigger1 = time <= 450
flag = roundnotover

[State FLASH]
type = AllPalFX
trigger1 = Time >= 300;50*5 = 250
time = 1
;add = 256,256,256
add = (Time - 300)*5,(Time - 300)*5,(Time - 300)*5

;------------------------------
[Statedef 35070];レイジングストーム
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35073

[State WPNSUB]
type = Varadd
Trigger1 = Animelem = 3;Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 5
value = 1,8;でりゃあ！
channel=0;VC

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 1
anim = 35072;ストーーーーム
postype = p1
pos = 0,0
sprpriority = 5
supermovetime = 0
ownpal = 1
bindtime = -1
removeongethit = 1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 4
value = 0,43;チャージＸ８
;channel=1;SE

[State ZAN]
type = Hitdef
;trigger1 = Animelem = 6
triggerall = Animelemtime(6) >= 0
trigger1 = !movecontact
trigger2 = time%4 = 0
id = 35030;敵判定用
attr = S, HP
animtype  = Hard
damage    = 20,3;
getpower = 0,0
sprpriority = 1
hitflag = MADFP
guardflag = MA
guard.dist        = 170             ;相手がガード行動をとる距離
pausetime = 0,7
Sparkno = S4002
sparkxy = ifelse((Random < 330),-20,ifelse((Random = [330,660]),-30,-15)), ifelse((Random < 330),-40,ifelse((Random = [330,660]),-30,-50))
hitsound   = S0,5
guardsound = S0,7;これもバスターのものを
guard.sparkno = S4023;こいつはあのガードアニメを
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -4,-10
guard.slidetime = 11
guard.hittime = 11
guard.velocity = -4.5
air.type = High
air.velocity = -3,-10
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか

[State -1]
Type     = NotHitBy
Trigger1 = animelem = 1
Value    = , AP;AA
Time     = 2

[State End]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------
[Statedef 35080];羅生門　掴み動作
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35083;
sprpriority = 2

[State WPNSUB];投げがスカってもゲージは減るｗ
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

[State 800, 1]
type = HitDef
Trigger1 = 1;Time = 0
id = 35080
attr = S, ST          ;ｓ：立ち　ｎ：通常　ｔ：投げ
guard.dist        = 0             ;相手がガード行動をとる距離
hitflag = MAF
priority = 4, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
;p1facing = ifelse (command = "holdfwd", -1, 1) ;前を押したらターンする設定
p1facing = 1;
p2facing = 1          ;？
p1stateno = 35082       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66080       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 35081

;------------------------------
[Statedef 35081];羅生門　スカ
type = S
physics = S
sprpriority = 0
anim = 920
ctrl = 0
velset = 0,0

[State pos]
type = posset
trigger1 = time = 0
Y = 0

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,45;チッ・・・！
channel = 0;VC

[State End]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;------------------------------
[Statedef 35082];羅生門　メイン
type    = S
movetype= A
physics = N;S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35082;

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
;trigger1 = 1;Time <= 50
trigger1 = Animelemtime(12) < 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 12
value = 1,8;でりゃあ！
channel=0;VC

[State North]
type = VarAdd;当たったら星を奪う
trigger1 = animelemtime(12) = 0
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State Damage]
type = TargetLifeAdd
trigger1 = Animelemtime(12) = 0
id = 35080
value = -450
kill = 1
persistent = 0

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 24
value = 1,7;ふんっ！
channel=0;VC

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State -2, 1st Charge]
type = Explod
trigger1 = Animelemtime(8) = 1
anim = 30050
postype = p1
pos = -18,-40;0
sprpriority = 5
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
bindtime = -1
removeongethit = 1

[State 4500, Explod]
type = Explod
trigger1 = Animelemtime(12) = 0
anim = 30031
postype = p1
pos = 35,-40
sprpriority = 5
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
bindtime = -1
removeongethit = 1

[State 4500, Explod];背景 対中国
type = Explod
triggerall = Animelem = 12
triggerall = !Numexplod(65071)
trigger1 = enemynear,name="Hong Meirin"
trigger2 = enemynear,name="Hong_Meirin"
Trigger3 = enemynear,Name = "Chu-goku"
anim = 65081;紅美鈴
id = 65071;
postype = left;p1
pos = 0,0
sprpriority = -5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 50

[State 4500, Explod];背景 対腋巫女
type = Explod
triggerall = Animelem = 12
triggerall = !Numexplod(65071)
trigger1 = enemynear,name="Reimu_Hakurei"
trigger2 = enemynear,name="Reimu_Scarlet"
trigger3 = enemynear,name="Tamiflu Miko"
trigger4 = enemynear,name="HAKUREI"
trigger4 = enemynear,Authorname="Nachel_Arrange_By_RockMARISA"
trigger5 = enemynear,name="TELETTE"
trigger5 = enemynear,Authorname="Nachel_Arrange_By_RockMARISA"
trigger6 = enemynear,name="KOTOHIME"
trigger6 = enemynear,Authorname="Nachel_Arrange_By_RockMARISA"
trigger7 = enemynear,name="Sanae Kotiya"
anim = 65083;腋巫女
id = 65071;
postype = left;p1
pos = 0,0
sprpriority = -5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 50

[State 4500, Explod];おかしい背景
type = Explod
trigger1 = Animelem = 12
trigger1 = !Numexplod(65071)
;trigger1 = enemynear,name!="Hong Meirin"
anim = 65071+(Random%13);背景画像が増えたら値を増やすｗ
id = 65071;
postype = left;p1
pos = 0,0
sprpriority = -5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 50

[State Clip]
type = null;AppendToClipboard
trigger1 = Time % 4 = 0
text = "Randompar10 = %d\n"
params = Random%10

[State 210, 1]
type = PlaySnd
trigger1 = Animelemtime(12) = 0
value = 0,18;
channel=1;SE

[State FinishEffect]
type = AssertSpecial
trigger1 = Animelemtime(12) = [0,50]
flag = nobardisplay

[State Pause]
type = pause
trigger1 = Animelemtime(12) = 0
time = 50;停止時間 (int)
movetime = 50;停止無視時間 (int)

[State Turn]
type = Turn
trigger1 = AnimElemTime(8) = 0

[State HITRESET]
type = MoveHitReset
trigger1 = AnimTime = 0

[State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
[Statedef 66080];羅生門 敵さん食らい（食らい上昇）
type    = A
movetype= H
physics = N;A
ctrl = 0
anim = 5030;5050;
sprpriority = 0
poweradd = 0
velset = 1.2,-10.2

[State Anim]
type = null;ChangeAnim2
trigger1 = Time = 0
value = 5035;5010

[State 191, PosAdd]
type = PosAdd
trigger1 = time = 0
x = ceil(P2Dist X-50) ;80
y = 0

[State CAMERA];投げ飛ばしたあと、敵さんにフォーカスを向ける
;simulもーど時、処理をいろいろかえる。
type = ScreenBound
trigger1 = TeamMode = simul;simulもーどの時
value = 0;カメラが追わなくなる

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State YAdd]
type = Veladd
trigger1 = 1;Time <= 60
Y = .258

[State YAdd]
type = null;Gravity
trigger1 = Time > 60

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = 1;Time <= 60
value = 0;カメラが追わなくなる
movecamera = 1,0

;[State 0, ]
;type = StateTypeSet
;trigger1 = pos y = [10,-5];>= -5
;statetype = S
;physics = S

[State Turn]
type = turn
trigger1 = Time = 60

[State Anim]
type = ChangeAnim
trigger1 = Time > 60
trigger1 = pos y >= -7
value = 5070;5010

[State Damage]
type = null;LifeAdd
trigger1 = Anim = 5070;5010
trigger1 = Animelemtime(1) = 0
value = -450
kill = 1
persistent = 0

[State 0, ]
type = PosSet
trigger1 = Time > 60
trigger1 = pos y >= -7
y = -9
persistent = 0

[State 0, ]
type = VelSet
trigger1 = Time > 60
trigger1 = pos y >= -7
y = -4
x = -8
persistent = 0

[State FUTTOBI]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 

;------------------------------
[Statedef 65080];真空投げ　掴み動作
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35083;
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = M-          ;コンボの途中から投げが入らないよう設定してある
guard.dist        = 0             ;相手がガード行動をとる距離
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
;p1facing = ifelse (command = "holdfwd", -1, 1) ;前を押したらターンする設定
p1facing = 1;
p2facing = 1          ;？
p1stateno = 65082       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66082       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 65081

;------------------------------
[Statedef 65081];真空投げ　スカ
type = S
physics = S
sprpriority = 0
anim = 920
ctrl = 0

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,45;チッ・・・！
channel = 0;VC

[State End]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1
;------------------------------
[Statedef 65082];真空投げ　メイン
type    = S
movetype= A
physics = N;S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 65070;

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelemtime(9) = 0
value = 1,7;ふんっ！
channel=0;VC

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0, 11

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,12;
channel=1;SE

[State Turn]
type = Turn
trigger1 = AnimElemTime(9) = 0

[State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
[Statedef 66082];真空投げ 敵さん食らい（食らい上昇）
type    = A
movetype= H
physics = N;A
ctrl = 0
anim = 5030;5050;浮く
sprpriority = 0
poweradd = 0
velset = 4.2,-15


[State 191, PosAdd]
type = PosAdd
trigger1 = time = 0
x = ceil(P2Dist X-50) ;80
y = 0

[State CAMERA];投げ飛ばしたあと、敵さんにフォーカスを向ける
;simulもーど時、処理をいろいろかえる。
type = ScreenBound
trigger1 = TeamMode = simul;simulもーどの時
value = 0;カメラが追わなくなる
movecamera = 1,0

[State MUTEKI];技が終了するまで他の攻撃を食らわない
type = NotHitBy
trigger1 = 1
value = SCA

[State YAdd]
type = Veladd
trigger1 = 1;Time <= 60
Y = .44

[State YAdd]
type = null;Gravity
trigger1 = Time > 60

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = Time <= 60
value = 0;カメラが追わなくなる
movecamera = 1,0

;[State 0, ]
;type = StateTypeSet
;trigger1 = pos y = [10,-5];>= -5
;statetype = S
;physics = S

[State Turn]
type = turn
trigger1 = Time = 60

[State Damage]
type = LifeAdd
trigger1 = time = 0
value = -80
kill = 1
persistent = 0

[State FUTTOBI]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 

;------------------------------
[Statedef 35090];滅びのバーストストリーム！！！！
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35094;射撃アニメ
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Animelem = 3;Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Animelem = 3;Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Animelemtime(3) = 0;Time = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
;カットイン！モウイッチョー
[state 4002, 1]
type = explod
Trigger1 = Animelemtime(3) = 0;Time = 0
anim = 35092;7000
id = 35090;7000
postype = back
pos = 0, 0
sprpriority = -2
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[state 4002, 1];ストリ～～～～む
type = explod
trigger1 = Animelemtime(6) = 0;Time = 0
trigger1 = facing = 1
anim = 35093
id = 35093
postype = left
pos = 0, 120
ownpal = 0
bindtime = -1
ignorehitpause = 1
;ontop = 1
sprpriority = 3
facing = 1
scale = 3,5
[state 4002, 1];ストリ～～～～む
type = explod
trigger1 = Animelemtime(6) = 0;Time = 0
trigger1 = facing = -1
anim = 35093
id = 35093
postype = right
pos = 0, 120
ownpal = 0
bindtime = -1
ignorehitpause = 1
;ontop = 1
sprpriority = 3
facing = -1
scale = 3,5



[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
Trigger1 = Animelem = 3;Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 7
value = 0,9;チャージ大
;channel=1;SE

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3509,0;滅びのバーストストリーム！！！
channel=0;vc

[State 210, 1]
type = PlaySnd
trigger1 = Time = 40
value = 3509,1;俺のだーっ

[State 210, 1]
type = NotHitBy
Trigger1 = AnimElemtime(3) >= 1
value = SCA
time = 1

;アタリ判定
[State 4501, HitDef]
type = HitDef
triggerall = enemyNear, Anim != 5070
triggerall = enemyNear, Anim != 5071
trigger1 = !MoveContact
trigger2 = Time%4 = 0
attr = S, HP
animtype  = Hard
damage    = 8,2;かなり当たるので威力調整には注意が必要
getpower = 0,0
sprpriority = 1
hitflag = MAFP;MADFP
guardflag = MA
guard.dist        = 400             ;相手がガード行動をとる距離
pausetime = 0,7
;sparkno = Sifelse((Random < 330),3004,ifelse((Random = [330,660]),3022,3023))
sparkno = Sifelse((Random < 800),4003,6002);真空波動ヒット
sparkxy = ifelse((Random < 330),0,ifelse((Random = [330,660]),-15,-45)), ifelse((Random < 330),10,ifelse((Random = [330,660]),-25,-60))
;sparkxy =  ceil(Random*(-20 - -50 + 1.0)/(1.0+999)),ceil(Random*(10 - -40 + 1.0)/(1.0+999))
hitsound   = S0,11;ばすたーひっと音
guardsound = S0,7;これもバスターのものを
guard.sparkno = S4023;こいつはあのガードアニメを
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -10,-10
guard.slidetime = 11
guard.hittime = 11
guard.velocity = -4.5
air.type = High
air.velocity = -6.5,-10
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか

[State PalFX]
type = PalFX
Trigger1 = Time = [20,150]
time = 1
add = 0,0,250
;mul = 128,128,255
color = 0;例の動画を再現

[State Exit]
type = ChangeState
trigger1 = Time >= 160;AnimTime = 0
value = 35091
Ctrl = 0
;------------------------------
[Statedef 35091];滅びのバーストストリーム 終了
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35095;射撃アニメ
sprpriority = 2

[State Exit]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
Ctrl = 1
;---------------------------------------------------------------------------
[Statedef 35100];主人公（笑）
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35102;別途で投げアニメを製作する
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,25;貴様は罠にはまったんだよ！
channel=0;vc

[State 800, 1]
type = HitDef
Trigger1 = 1;Time = 0
id = 35100
attr = S, HT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = MAF          ;コンボの途中から投げが入らないよう設定してある
guard.dist        = 0             ;相手がガード行動をとる距離
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
p1facing = 1;
p2facing = 1          ;？
p1stateno = 35101       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 65101      ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 35081

;---------------------------------------------------------------------------
[Statedef 35101];掴んでーバックドロップ！
type    = S
movetype= A
physics = N
anim = 35103
sprpriority = 1

[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(11) = 0
trigger3 = AnimElemTime(21) = 0
time = 8
id = 35100
pos = 30,0
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(12) = 0
trigger3 = AnimElemTime(22) = 0
time = 6
id = 35100
pos = 27,-15
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(13) = 0
time = 4
id = 35100
pos = 12,-75
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(14) = 0
time = 4
id = 35100
pos = -45,-80
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(15) = 0
time = 10
id = 35100
pos = -60,-40
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(16) = 0
time = 4
id = 35100
pos = 0,0
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(17) = 0
time = 4
id = 35100
pos = 20,0
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(18) = 0
time = 4
id = 35100
pos = 40,0
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(19) = 0
time = 4
id = 35100
pos = 50,0
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(10) = 0
trigger2 = AnimElemTime(20) = 0
time = 4
id = 35100
pos = 60,0

[State Pos]
type = PosAdd
trigger1 = Animelemtime(6) = 0
trigger2 = Animelemtime(7) = 0
trigger3 = Animelemtime(8) = 0
trigger4 = Animelemtime(9) = 0
trigger5 = Animelemtime(10) = 0
trigger6 = Animelemtime(16) = 0
trigger7 = Animelemtime(17) = 0
trigger8 = Animelemtime(18) = 0
trigger9 = Animelemtime(19) = 0
trigger10 = Animelemtime(20) = 0
X = -22

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State SprPri]
type = SprPriority
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(14) = 0
value = 3
[State SprPri]
type = SprPriority
trigger1 = animelemtime(8) = 0
trigger2 = animelemtime(18) = 0
value = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0,42;がきょおん！

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Animelemtime(5) = 0
trigger2 = Animelemtime(15) = 0
value = 0, 17;爆発音

[State GEKITOTZ2]
type = Explod
trigger1 = Animelemtime(5) = 0
trigger2 = Animelemtime(15) = 0
Anim = 4032;6012
pos = -60,0
postype = p1
sprpriority = 5
Velocity = 0,0
BindTime = 1
ownpal = 1

[State Damage]
type = TargetLifeAdd
trigger1 = Animelemtime(5) = 0
trigger2 = Animelemtime(15) = 0
value = -110
ID = 35100
kill = 0

[State -1]
Type     = EnvShake
trigger1 = Animelemtime(5) = 0
trigger2 = Animelemtime(15) = 0
Time     = 10
Freq     = 80
Ampl     = 3

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 60,0

[State 4500, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 99999999
Length      = 10
TimeGap     = 2
FrameFap    = 1
PalBright   = 64,128,64
PalContrast = 128,128,128
palpostbright =  64,128,64
palcolor = 0
paladd = -60,0,-60
palmul = 1,1,1
Peresistent = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 35102

;---------------------------------------------------------------------------
[Statedef 35102];はいぱーぼっ！
type    = A
movetype= A
physics = N
anim = 35104
velset = 2.0,-16
sprpriority = 3

[State Gravity]
type = Veladd
trigger1 = 1
Y = .6

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA


[State GEKITOTZ2]
type = Explod
trigger1 = Time = 0
Anim = 4032;6012
pos = screenpos X,screenpos Y
postype = left;p1
sprpriority = 5
Velocity = 0,0
BindTime = 1
ownpal = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0, 12;だっしゅ！

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 15
value = 3510, 0;はいぱーぼっ

[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
time = 8
id = 35100
pos = -54,-65
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
time = 28
id = 35100
pos = -54,-65
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
time = 4
id = 35100
pos = -54,-65
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
time = 4
id = 35100
pos = 0,-88
[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(5) = 0
time = 4
id = 35100
pos = 44,-40

[State PosY]
type = Posset
trigger1 = Pos Y >= 10
Y = 10

[state Target]
type = null;TargetVelset
trigger1 = Time >= 10
trigger1 = Pos Y >= 10
id = 35100
X = -6
Y = -15
persistent = 0

[State -1]
Type     = EnvShake
trigger1 = Time >= 10
trigger1 = Pos Y >= 10
Time     = 20
Freq     = 90
Ampl     = 6

[State SprPri]
type = SprPriority
trigger1 = animelemtime(4) = 0
value = 1

[state 4002, 1];
type = explod
trigger1 = Time >= 10
trigger1 = Pos Y >= 10
trigger1 = !Numexplod(35102)
anim = 6001
id = 35102
;postype = p1
pos = 0, 0
ownpal = 1
bindtime = 1
ignorehitpause = 1
;ontop = 1
sprpriority = 2
facing = 1
scale = 2.5,2.5
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time >= 10
trigger1 = Pos Y >= 10
value = 0, 15;爆発音
persistent = 0

[State Damage]
type = TargetLifeAdd
trigger1 = Time >= 10
trigger1 = Pos Y >= 10
value = -160
ID = 35100
kill = 1
persistent = 0

[State 800, 2]
type = ChangeState
trigger1 = Time >= 10
trigger1 = Pos Y >= 10
value = 35103
;---------------------------------------------------------------------------
[Statedef 35103];はいぱーぼっ！終了
type    = A
movetype= A
physics = N
velset = -4.5,-8

[State Gravity]
type = Veladd
trigger1 = 1
Y = .4

[State North]
type = VarAdd;当たったら星を奪う
trigger1 = time = 0
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State PosY]
type = Posset
trigger1 = Pos Y >= 0
Y = 0 

[State HITRESET]
type = MoveHitReset
trigger1 = Pos Y >= 0

[State Zanzouoff]
type = AfterImageTime
trigger1 = Time >= 10
trigger1 = Pos Y >= 0
Time = 0

[State 800, 2]
type = ChangeState
trigger1 = Time >= 10
trigger1 = Pos Y >= 0
value = 52;0
;ctrl = 1
;---------------------------------------------------------------------------
[Statedef 65101];ハイパーボッ相手１
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = 1
value = 0;カメラが追わなくなる

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 65100

[State Change]
type = ChangeState
trigger1 = Time > 0
trigger1 = AnimTime =0
value = 65102 

;---------------------------------------------------------------------------
[Statedef 65102];ハイパーボッ相手２
type    = A
movetype= H
physics = N
;velset = 0,0;-6,-15

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = 1
value = 0;カメラが追わなくなる

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 65101

[State 820, 1]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 65103 
;---------------------------------------------------------------------------
[Statedef 65103];ハイパーボッ相手３
type    = A
movetype= H
physics = N
velset = -6,-10
anim = 5050

[State Gravity]
type = veladd;gravity
trigger1 = 1
Y = .6

[State 820, 1]
type = null;ChangeAnim2
Trigger1 = Time = 0
value = 65101

[State 820, 1]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 

;---------------------------------------------------------------------------
[Statedef 35110];岩男はいぱーぼむ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 605

[State 800, 2]
type = ChangeState
Trigger1 = Time = 0
trigger1 = NumHelper(35110) <= 3
value = 65110

[State 800, 2]
type = ChangeState
Trigger1 = 1
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 65110];岩男はいぱーぼむ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 605

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = null;AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = null;Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = null;explod
Trigger1 = Time = 0
anim = 10050
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = null;SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElemtime(5) = 0
value = 1,5;りゃっ！
channel=0;vc

[State 210, 1]
type = PlaySnd
trigger1 = AnimElemtime(5) = 0
value = 0,8;発射

[State 4500, Helper];ヘルパー扱いでミサイルを出す
type = Helper
trigger1 = AnimElem = 5
;trigger1 = !NumHelper(35110)
helpertype = Normal
name = "BOMB Helper"
ID = 35110
stateno = 65112
pos =  40,-20;
postype = p1
facing = 1
ownpal = 1
size.ground.back = 20;前ぶつかり判定 (int)
size.ground.front = 20;後ぶつかり判定 (int)
size.height = 0;縦ぶつかり判定

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ばくだんヘルパー---------------------------
[Statedef 65112]
type    = A
movetype= A
physics = N;A
juggle  = 2
ctrl = 0
anim = 35112
sprpriority = 2

[State Push]
type = null;PlayerPush
trigger1 = 1
value = 1

[State Hitby];無敵
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State Velset]
type = velset
trigger1 = Time = 0;1
trigger2 = Pos Y >= 0
X = 3;.5
Y = -9;.5

[State Veladd]
type = veladd
trigger1 = 1
Y = .5;.5

[State AttackDist]
Type = AttackDist
Trigger1 = 1
Value = 80
Persistent = 1

;ここらにアタリ判定記述を
;拡大projectileを出してヘルパーを切ったほうがよさそう。
[State NextState]
Type = ChangeState
trigger1 = P2Dist X = [-30,30]
trigger1 = P2Dist Y = [30,90]
Value = 65113;爆発


[State DelHelper]
type = DestroySelf
trigger1 = ScreenPos X != [-25,345]

;爆発
[Statedef 65113]
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

[State 605, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0, 14

[State Hitdef]
Type = HitDef
Trigger1	  = 1
Attr              = A, SA
Damage            = 55, 5			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
sparkno = -1;S4002;必殺エフェクト２
hitsound   = -1;S0,5;5,0
guardsound = -1;S0,7;6,0
guard.dist        = 130             ;相手がガード行動をとる距離
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 8, 6			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = ifelse(P2Dist X <= 0,3,-3),-13			;ヒット時の相手の移動 地上
Air.Velocity      = ifelse(P2Dist X <= 0,3,-3),-13			;ヒット時の相手の移動 空中
;AirGuard.Velocity = -1,-11			;ヒット時の相手の移動 空中ガード
yaccel 		= .5
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0

[State DelHelper]
type = DestroySelf
trigger1 = time >= 8

;------------------------------
[Statedef 35120];歌魔理沙　出だし
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 195
sprpriority = 2

[State MUTEKI];ちょっとだけ無敵
type= NotHitBy
trigger1 = 1
time = 1;ちょっとだけ無敵
value = SCA, NA, SA, HA, NT, ST, HT

;この位置に久保技の割り込み予定

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1,47;Ｒｏｃｋｓ
channel=0;vc

[State FUKIDASI]
type = explod
trigger1 = Time = 0
anim = 196
pos = 50,-100
facing = ifelse(facing != -1,1,-1)
removetime = 1
ontop = 1
bindtime = -1
removeongethit = 1

;分岐
[State Change]
type = ChangeState
trigger1 = 1
value = 35121+(Random%2)
ctrl = 0

;------------------------------
[Statedef 35121];歌魔理沙　Rocks1-1
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1
;anim = 35122

[State MUTEKI];ちょっとだけ無敵
type= NotHitBy
trigger1 = 1
time = 1;ちょっとだけ無敵
value = SCA, NA, SA, HA, NT, ST, HT

[State BGMOFF]
type = varset
trigger1 = Time = 0
var(20) = 1
[State -3,STOPBGM HELPER]
type = Helper
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

[State BGMOFF]
type = StopSnd
trigger1 = Time = 0
channel = 2;BGM

[State ChangeBGM]
type = PlaySnd
trigger1 = Time = 0
value = 3512,0;Ｒｏｃｋｓ
;channel=2;特殊bgm

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = null;AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 26,-56;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 70;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State WPNKO 2];♪ROCKS
type = Explod
trigger1 = time = 1
anim = 65128
id = 65128;
pos = 0,0
postype = left
removetime = 150
sprpriority = 5
ontop = 1
bindtime = -1

[State WPNKO 2];オーラ
type = Explod
trigger1 = Time = 1
id = 4032
anim = 4032
pos = 0,10
postype = p1
removetime = 620;歌う時間だけ
sprpriority = 3
removeongethit = 1
scale = 1.3,1.3
bindtime = -1

[State WPNKO 2];ぼえ
type = Explod
trigger1 = Time > 0 
trigger1 = Time%20 = 0
id = 35123
anim = 35123+(Random%3)
pos = 0,-56
postype = p1
vel = 3+(Random%3),-2+(Random%4)
facing = facing
removetime = 30
sprpriority = 3

[State 220, 4] ;波紋
type = Projectile
trigger1 = Time > 0 
trigger1 = Time%21 = 0
projid = 35126
projanim = 35126
projhitanim = -1;4004
projremanim = 4004
offset = ceil(P2Dist X-20)+(Random%40),ceil(enemynear,Pos Y)-50+(Random%25)
velocity = 0,0
; HitDef
attr = S, SP
animtype = Light
damage    = 6
;facing = ifelse(facing = -1,1,facing)
projscale = ceil(facing),1
projremove = 0
projremovetime = 4
hitflag = MAFD
guardflag = MAF
pausetime = 0,16
sparkno = -1;S4004;6
guard.sparkno = -1;S4004;23
;sparkxy = 69,-47;-35
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -5
airguard.velocity = -5
air.velocity = -5
air.juggle = 9
air.fall = 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 200
value = 3512,10;いけえっガウンジェノサイダー！

[State 4500, Helper]
type = Helper
trigger1 = Time = 220
trigger1 = !Numhelper(65120)
helpertype = Normal
name = "SRX Beam Helper"
ID = 65120
stateno = 65120;4501
pos =  0,-70;-130,-54
postype = back
facing = 1
ownpal = 1
removeongethit = 1

[State ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = 35122

[State BGMOFF]
type = varset
trigger1 = Time >= 620
var(20) = 0

[State BGMOFF]
type = null;StopSnd;鳴り終わるとそのまんまなんでこれは入れなくていい
trigger1 = Time >= 620
channel = 2;BGM

[State Return]
type = ChangeState
trigger1 = Time >= 620
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; びーむ制御
[Statedef 65120]
type = S
movetype = A
physics = N
velset = 0,0
sprpriority = 5
anim = 30030
juggle = 1
ctrl = 0
hitcountpersist = 1

[State 4501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
;flag2 = Invisible
ignorehitpause = 1

[State 4501, PosSet]
type = null;PosSet
;trigger1 = parent, facing = 1
trigger1 = 1
y = -120
ignorehitpause = 1

;アタリ判定
[State 4501, HitDef]
type = HitDef
triggerall = enemyNear, Anim != 5070
triggerall = enemyNear, Anim != 5071
trigger1 = !MoveContact
trigger2 = TimeMod = 4,0
attr = S, HP
animtype  = Hard
damage    = 2,1;かなり当たるので威力調整には注意が必要
getpower = 0,0
sprpriority = 1
hitflag = MADFP
guardflag = MA
guard.dist        = 385             ;相手がガード行動をとる距離
pausetime = 0,7
sparkno = S65120
sparkxy = ifelse((Random < 330),0,ifelse((Random = [330,660]),-15,-45)), ifelse((Random < 330),0,ifelse((Random = [330,660]),0,-30))
;sparkxy =  ceil(Random*(-20 - -50 + 1.0)/(1.0+999)),ceil(Random*(10 - -40 + 1.0)/(1.0+999))
hitsound   = S0,11;ばすたーひっと音
guardsound = S0,7;これもバスターのものを
guard.sparkno = S4023;こいつはあのガードアニメを
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -10,-10
guard.slidetime = 11
guard.hittime = 11
guard.velocity = -4.5
air.type = High
air.velocity = -6.5,-10
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか
;p2stateno = 4506

[State BAMPRESTO]
type = PlaySnd
trigger1 = movehit
value = 3512,11
persistent = 0

;[State 4501, TargetVelSet]
;type = TargetVelSet
;triggerall = parent, AnimElem = 61, = 0
;triggerall = Time = 250
;trigger1 = enemyNear, StateType = S
;trigger2 = enemyNear, StateType = C
;x = -15

;[State 4501, TargetVelSet]
;type = TargetVelSet
;triggerall = parent, AnimElem = 61, = 0
;triggerall = Time = 250
;trigger1 = enemyNear, StateType = L
;x = -4

[State 4501, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State Beamend]
type = changeanim
trigger1 = Time = 360
value = 30031

[State ***]
type = playsnd
trigger1 = Anim = 30031
trigger1 = Animelem = 1
value = 0,0

[State 4501, DestroySelf]
type = DestroySelf
trigger1 = Anim = 30031
trigger1 = Animtime = 0
;trigger2 = !AnimTime

;------------------------------
[Statedef 35122];歌魔理沙　Rocks2-1
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1
;anim = 35122

[State MUTEKI];ちょっとだけ無敵
type= NotHitBy
trigger1 = 1
time = 1;ちょっとだけ無敵
value = SCA, NA, SA, HA, NT, ST, HT

[State BGMOFF]
type = varset
trigger1 = Time = 0
var(20) = 1
[State -3,STOPBGM HELPER]
type = Helper
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

[State BGMOFF]
type = StopSnd
trigger1 = Time = 0
channel = 2;BGM

[State ChangeBGM]
type = PlaySnd
trigger1 = Time = 0
value = 3512,1;Ｒｏｃｋｓ
;channel=2;特殊bgm

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = null;AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 26,-56;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 86;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State WPNKO 2];♪ROCKS
type = Explod
trigger1 = time = 1
anim = 65128
id = 65128;
pos = 0,0
postype = left
removetime = 150
sprpriority = 5
ontop = 1
bindtime = -1

[State WPNKO 2];オーラ
type = Explod
trigger1 = Time = 1
id = 4032
anim = 4032
pos = 0,10
postype = p1
removetime = 680;歌う時間だけ
sprpriority = 3
removeongethit = 1
scale = 1.3,1.3
bindtime = -1

[State WPNKO 2];ぼえ
type = Explod
trigger1 = Time > 0 
trigger1 = Time%20 = 0
id = 35123
anim = 35123+(Random%3)
pos = 0,-56
postype = p1
vel = 3+(Random%3),-2+(Random%4)
removetime = 30
facing = facing
sprpriority = 3

[State 220, 4] ;波紋
type = Projectile
trigger1 = Time > 0 
trigger1 = Time%21 = 0
projid = 35126
projanim = 35126
projhitanim = -1;4004
projremanim = 4004
offset = ceil(P2Dist X-20)+(Random%40),ceil(enemynear,Pos Y)-50+(Random%25)
velocity = 0,0
; HitDef
attr = S, SP
animtype = Light
damage    = 6
;facing = ifelse(facing = -1,1,facing)
projscale = ceil(facing),1
projremove = 0
projremovetime = 4
hitflag = MAFD
guardflag = MAF
pausetime = 0,16
sparkno = -1;S4004;6
guard.sparkno = -1;S4004;23
;sparkxy = 69,-47;-35
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -5
airguard.velocity = -5
air.velocity = -5
air.juggle = 9
air.fall = 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 200
value = 3512,12;テレキネシスミサイル発射！

[State 4500, Helper]
type = Helper
trigger1 = Time = 280
trigger1 = !Numhelper(65121)
helpertype = Normal
name = "SRX Missile Helper"
ID = 65121
stateno = 65121;4501
pos =  0,0;-130,-54
postype = back
facing = 1
ownpal = 1
removeongethit = 1

[State ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = 35122

[State BGMOFF]
type = varset
trigger1 = Time >= 680
var(20) = 0

[State BGMOFF]
type = null;StopSnd;鳴り終わるとそのまんまなんでこれは入れなくていい
trigger1 = Time >= 680
channel = 2;BGM

[State Return]
type = ChangeState
trigger1 = Time >= 680
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; みさいる制御
[Statedef 65121]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 5
anim = 15123
juggle = 1
ctrl = 0
hitcountpersist = 1

[State Pos]
type = null;Posset
trigger1 = 1
X = 0
Y = 0

[State 4501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
;flag2 = Invisible
ignorehitpause = 1

;アタリ判定
[State 4501, HitDef]
type = HitDef
trigger1 = Time >= 20
trigger1 = Time%10 = 0
attr = S, HP
animtype  = Hard
damage    = 6,1;かなり当たるので威力調整には注意が必要
getpower = 0,0
sprpriority = 1
hitflag = MADFP
guardflag = MA
guard.dist        = 9999             ;相手がガード行動をとる距離
pausetime = 0,7
sparkno = -1;S65120
sparkxy = ifelse((Random < 330),0,ifelse((Random = [330,660]),-15,-45)), ifelse((Random < 330),0,ifelse((Random = [330,660]),0,-30))
;sparkxy =  ceil(Random*(-20 - -50 + 1.0)/(1.0+999)),ceil(Random*(10 - -40 + 1.0)/(1.0+999))
hitsound   = S0,11;ばすたーひっと音
guardsound = S0,7;これもバスターのものを
guard.sparkno = S4023;こいつはあのガードアニメを
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = 0,-.5
guard.slidetime = 11
guard.hittime = 11
guard.velocity = 0
air.type = High
air.velocity = 0,-.5
airguard.velocity = 0
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか
;p2stateno = 4506

[State 210, 1]
type = PlaySnd
trigger1 = Time %10 = 0
value = 0,15+(Random%3);爆音
channel = 1;se

[state 4002, 1];
type = explod
trigger1 = Time %5 = 0
anim = 6000
id = 35102
postype = left
pos = Random%320, 1*(1+(Random%240))
ownpal = 0
bindtime = 1
ignorehitpause = 1
;ontop = 1
sprpriority = 2
facing = 1
scale = 2,2

[state 4002, 1];
type = explod
trigger1 = Time %15 = 0
anim = 65121
id = 35102
postype = left
pos = (Random%320)-6, (1+(Random%240))-6
ownpal = 0
velocity = 2.6,5.6
bindtime = 1
removetime = 40
ignorehitpause = 1
;ontop = 1
sprpriority = 2
facing = 1
scale = 2.5,2.5

;[State 4501, TargetVelSet]
;type = TargetVelSet
;triggerall = parent, AnimElem = 61, = 0
;triggerall = Time = 250
;trigger1 = enemyNear, StateType = S
;trigger2 = enemyNear, StateType = C
;x = -15

;[State 4501, TargetVelSet]
;type = TargetVelSet
;triggerall = parent, AnimElem = 61, = 0
;triggerall = Time = 250
;trigger1 = enemyNear, StateType = L
;x = -4

[State 4501, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 4501, DestroySelf]
type = DestroySelf
trigger1 = Time = 420
;trigger2 = !AnimTime

;------------------------------
[Statedef 35130];大蛇薙　その１
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35132
sprpriority = 2
velset = 0,0

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time < 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,44;ぶちころすぞ・・・
channel = 0;vc

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
Trigger1 = Time = 0
pos = 26,-54;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

;指先ほのお
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 65130
id = 65130;7000
postype = p1
pos = 26, -60
sprpriority = 3
ownpal = 1
removetime = -1
bindtime = -1
supermove = 1
persistent = 0
removeongethit = 1

[State -1]
Type     = NotHitBy
Trigger1 = Time = 0
Value    = , AP;AA
Time     = 2

[State End]
type = ChangeState
Trigger1 = !Var(59)
trigger1 = Animtime = 0
trigger1 = command != "holdy";ボタンを離したか
trigger2 = time > 180
Trigger3 = Var(59) && RoundState = 2
Trigger3 =  Animtime = 0
value = 35131
;------------------------------
[Statedef 35131];大蛇薙　その２
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35133


[State modexp]
type = modifyexplod
trigger1 = animelemtime(1) = 0
id = 65130
postype = p1
pos = -2,-52
[State modexp]
type = modifyexplod
trigger1 = animelemtime(2) = 0
id = 65130
postype = p1
pos = 0,-54
[State modexp]
type = modifyexplod
trigger1 = animelemtime(3) = 0
id = 65130
postype = p1
pos = 4,-56
[State modexp]
type = modifyexplod
trigger1 = animelemtime(4) = 0
id = 65130
postype = p1
pos = 34,-42
sprpriority = -1
[State modexp]
type = modifyexplod
trigger1 = animelemtime(5) = 0
id = 65130
postype = p1
pos = -8,-48
sprpriority = -1
[State Remexp]
type = removeexplod
trigger1 = animelemtime(5) = 26
id = 65130
[state 4002, 1]
type = explod
trigger1 = animelemtime(5) = 26
anim = 65131
id = 65131;7000
postype = p1
pos = -8,-48
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

;振るう炎１
[state 4002, 1]
type = explod
trigger1 = animelemtime(5) = 0
anim = 65132
id = 65132;7000
postype = p1
pos = -8,-56
sprpriority = -1
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
scale = 1,.4
removeongethit = 1
;振るう炎２
[state 4002, 1]
type = explod
trigger1 = animelemtime(4) = 0
anim = 65133
id = 65133;7000
postype = p1
pos = 48,-34
sprpriority = 3
ownpal = 1
removetime = 16
bindtime = -1
supermove = 1
persistent = 0
removeongethit = 1
[state 4002, 1]
type = explod
trigger1 = animelemtime(4) = 16
anim = 65134
id = 65134;7000
postype = p1
pos = 48,-34
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
removeongethit = 1

;攻撃判定は炎に
[State Atari]
type = Projectile
trigger1 = animelemtime(5) = 0
projID = 65135
projanim = 65135
projscale = 1,1
projremove = 0
projremovetime = 12
offset = 108,-38
postype = p1
;hitdef
attr = S, HP
animtype  = Hard
damage    = 180,10;
getpower = 0,0
sprpriority = 1
hitflag = MADFP
guardflag = MA
pausetime = 0,7
Sparkno = -1;S6000
sparkxy = 0,0;ifelse((Random < 330),-20,ifelse((Random = [330,660]),-30,-15)), ifelse((Random < 330),-40,ifelse((Random = [330,660]),-30,-50))
hitsound   = S0,17
guardsound = S0,7;これもバスターのものを
guard.sparkno = S4023;こいつはあのガードアニメを
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -4,-3
guard.slidetime = 11
guard.hittime = 11
guard.velocity = -4.5
air.type = High
air.velocity = -3,-3
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか
projedgebound = 120
projstagebound = 120
palfx.time = 55
palfx.add = -40,30,-100
palfx.sinadd = 50,60,60,10
palfx.color = 0
palfx.invertall = 1

[State Baku]
type = explod
trigger1 = ProjHitTime(65135) = 1
anim = 6000
postype = p2
pos = -6,2
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
[State Baku]
type = explod
trigger1 = ProjHitTime(65135) = 1
anim = 6000
postype = p2
pos = -30,-34
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
scale = 1.5,1.5
[State Baku]
type = explod
trigger1 = ProjHitTime(65135) = 1
anim = 6000
postype = p2
pos = 12,-56
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
scale = 1.5,1.5
[State Baku]
type = explod
trigger1 = movehit
anim = 6000
postype = p2
pos = -16,-78
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
scale = 1.5,1.5


[State 210, 1]
type = VelSet
trigger1 = animelemtime(5) = 0
X = 5

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemtime(5) = 0
value = 1,8;でりゃあ！
channel = 0;vc
[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(5) = 0
value = 0,16;
channel = 1;se

[State End]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------
[Statedef 35140];やみどうこく　掴み動作
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35083;
sprpriority = 2

[State WPNSUB];投げがスカってもゲージは減るｗ
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
id = 35140
attr = S, NT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = MAF
guard.dist        = 0             ;相手がガード行動をとる距離
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
;p1facing = ifelse (command = "holdfwd", -1, 1) ;前を押したらターンする設定
p1facing = 1;
p2facing = 1          ;？
p1stateno = 35142       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66140       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 35081

;------------------------------
[Statedef 35141];やみどうこく　スカ
type = S
physics = S
sprpriority = 0
anim = 920
ctrl = 0

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,45;チッ・・・！
channel = 0;VC

[State End]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;------------------------------
[Statedef 35142];やみどうこく　メイン
type    = S
movetype= A
physics = N;S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35144;35083;

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 40,0

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State Damage]
type = TargetLifeAdd
trigger1 = Time = [1,119]
id = 35140
value = -3
kill = 0
[State Damage]
type = TargetLifeAdd
trigger1 = Time = 120
id = 35140
value = -5
kill = 1

[State Vel]
type = targetvelset
trigger1 = Time = [120,125]
X = -3
Y = -1

[State Bind]
type = TargetBind
trigger1 = Time = [0,120]
id = 35140
time = 1
pos = 54,-50

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,30;ふふふふふふ
channel=0;VC
[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,36;えふぇくとさうんど
channel=1;se

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0


[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
;trigger1 = !numexplod(1005)
persistent = 0
anim = 15062
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[state 4002, 1]
type = explod
trigger1 = Time = 1
trigger1 = !numexplod(35142)
anim = 35142
id = 35142;7000
postype = p1
pos = 54,0
sprpriority = 3
ownpal = 1
removetime = 119
bindtime = -1
supermove = 1
persistent = 0
[state 4002, 1]
type = explod
trigger1 = Time = 120
trigger1 = !numexplod(35143)
anim = 35143
id = 35143
postype = p1
pos = 54,0
sprpriority = 3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State Anim]
type = Changeanim
trigger1 = Time = 120
value = 801

[State North]
type = VarAdd;当たったら星を奪う
trigger1 = time = 120
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1


[State remexp]
type = removeexplod
trigger1 = Time > 120
trigger1 = Animtime = 0
id = 15060

[State End]
type = ChangeState
trigger1 = Time > 120
trigger1 = Animtime = 0
value = 0
ctrl = 1
;テキさんステート-------------
[Statedef 66140]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 66140
sprpriority = 1

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State Anim]
type = changeanim2
trigger1 = Time = 0
value = 66140

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = 1
value = 0;カメラが追わなくなる


[State Change]
type = SelfState
trigger1 = Time > 110
value = 5030 
;------------------------------
[Statedef 35150];運送　その１　突進
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35153
sprpriority = 2
velset = 0,0

[State 100, 1]
type = VelSet
trigger1 = 1
x = 7.4;6.5

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time < 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,0;いくぜっ
channel = 0;vc

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 800, 1]
type = HitDef
Trigger1 = 1
id = 35150
attr = SCA, HT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = MAF          ;運送は自重しない
guardflag = MA
guard.dist        = 95             ;相手がガード行動をとる距離
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
guard.sparkno = S4023
hitsound   = S0,42;S5,1
sparkxy = -16,-28;-35
guardsound = S0,7;S6,0
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
;p1facing = ifelse (command = "holdfwd", -1, 1) ;前を押したらターンする設定
p1facing = 1;
p2facing = 1          ;？
p1stateno = 35151       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66150       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 3000, Super A]
type = SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
Trigger1 = Time = 0
pos = 5,-54;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State -1]
Type     = NotHitBy
Trigger1 = Time = 0
Value    = , AP;AA
Time     = 2

[State -1]
Type        = AfterImage
Trigger1    = Time = 0
Time        = 60
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 10
PalBright   = 10,10,10;0  , 0  , 0
PalContrast = 0,220,40;0  , 0  , 150
;PalAdd      = 0  , 0  , 0
;PalMul      = .5 , .5 , .5
Peresistent = 1

[State End]
type = ChangeState
trigger1 = time > 60
trigger2 = moveguarded
value = 101
;------------------------------
[Statedef 35151];運送　その２　大運送
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
sprpriority = 2

[State Turn]
type = Turn
Trigger1 = !Var(59)
trigger1 = Time = 0
trigger1 = command = "holdback"
Trigger2 = Var(59) && RoundState = 2
Trigger2 = Time = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = 9;7

[State Zanzou]
type = AfterImageTime
trigger1 = 1
time = -1

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State push]
type = PlayerPush
trigger1 = 1
value = 0

;運送オーラ
[state 4002, 1]
type = explod
trigger1 = Time = 0
trigger1 = !numexplod(35151)
anim = 3000
id = 35151
postype = p1
pos = -12,-45
sprpriority = -4
ownpal = 1
removetime = -1
bindtime = -1
supermove = 1
persistent = 0
scale = 0.4,0.4

[State Bind]
type = TargetBind
trigger1 = 1
id = 35150
time = 1
pos = -12,-45
[State Bind]
type = TargetFacing
trigger1 = 1;time = 0
id = 35150
value = -1

[State End]
type = ChangeState
trigger1 = FrontEdgeBodyDist < 8
value = 35152

;------------------------------
[Statedef 35152];運送　フィニッシュ
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
anim = 801
sprpriority = 2
velset = -18,0

[State Remexp]
type = removeexplod
trigger1 = Time = 0
ID = 35151

[State Zanzou]
type = AfterImageTime
trigger1 = 1
time = 0

[State Width]
type = Width
trigger1 = 1
edge = 20,0

[State Bind]
type = TargetBind
trigger1 = Time = 0
id = 35150
time = 1
pos = 68,-46
[State Vel]
type = null;targetvelset
trigger1 = Time < 10
ID = 35150
Y = -3
[State Bind]
type = TargetState
trigger1 = time = 1
value = 66151
ID = 35150
[State Bind]
type = TargetLifeadd
trigger1 = time = 0
value = -200
ID = 35150


[State Aura]
type = helper
trigger1 = Time = 0
;trigger1 = !numhelper(35153)
id = 35153
stateno = 35153
postype = p1
pos = 0,0
supermovetime = 99999999
pausemovetime = 99999999
[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,17;運送サウンド
channel = 1;se
[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,8;デリャア！
channel = 0;vc
[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 0,43;チャージＸ８
;channel=1;SE

[State SuperChancelUnsou]
type = ChangeState
triggerall = var(5) = 15;運送装備？
triggerall = var(6);げーじ大丈夫？
;trigger1 = 1;Time >= 0;キャンセル
trigger1 = !var(59);AIOFF時
trigger1 = Time = [10,20]
trigger1 = command = "SPWeapons"
;AIが入っている場合、別途追記で
Trigger2 = Var(59) && RoundState = 2
Trigger2 = Time = 15
Trigger2 = Random < 100 * Var(59)
value = 35150

[State End]
type = ChangeAnim
trigger1 = Time <= 30
value = anim
elem = 1
[State End]
type = ChangeState
trigger1 = Time > 30
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------
[Statedef 35153];運送　ヘルパー
Type      = S
MoveType  = A
Physics   = N
Ctrl      = 0
anim = 9999
sprpriority = 2
velset = 0,0

[State inv]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State Width]
type = Width
trigger1 = 1
edge = 32,0

;運送オーラ
[state 4002, 1]
type = explod
trigger1 = Time = 0
;trigger1 = !numexplod(35152)
anim = 35152
id = 35152;7000
postype = p1
pos = -32,0
sprpriority = 3
ownpal = 1
removetime = 30
facing = facing
bindtime = -1
supermove = 1
persistent = 0
[state 4002, 1]
type = modifyexplod
trigger1 = time > 20
id = 35152
scale = 1.0-((Time-20) / 10.0),1.0+((Time-20) / 10.0)

[State end]
type = destroyself
trigger1 = Time > 60
;------------------------------
[Statedef 65150];運送・ゴッドプレス　掴み動作
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35083;
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
id = 65150
attr = S, NT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = MAF          
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
p1facing = ifelse (command = "holdfwd", 1, -1) ;前を押したらターンする設定
;p1facing = 1;
p2facing = 1          ;？
p1stateno = 65151       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66150       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 65081

;------------------------------
[Statedef 65151];運送　その２　大運送
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
sprpriority = 2
;Anim      = 35153

[State Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 35153
elem = 3

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,42;がきょおん！運送サウンド
channel = 1;se

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State push]
type = PlayerPush
trigger1 = 1
value = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = 9;7

[State Bind]
type = TargetBind
trigger1 = 1
id = 65150
time = 1
pos = -12,-45
[State Bind]
type = TargetFacing
trigger1 = 1;time = 0
value = -1
ID = 65150


[State End]
type = ChangeState
trigger1 = FrontEdgeBodyDist < 8
value = 65152

;------------------------------
[Statedef 65152];運送　フィニッシュ
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
anim = 801
sprpriority = 2
velset = -18,0

[State Width]
type = Width
trigger1 = 1
edge = 20,0

[State Bind]
type = TargetBind
trigger1 = Time = 0
id = 65150
time = 1
pos = 68,-46
[State Vel]
type = null;targetvelset
trigger1 = Time < 10
ID = 65150
Y = -3
[State Bind]
type = TargetState
trigger1 = time = 1
value = 66151
ID = 65150
[State Bind]
type = TargetLifeadd
trigger1 = time = 0
value = -78
ID = 65150


[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,17;運送サウンド
channel = 1;se
[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,7;フンッ！
channel = 0;vc

;叩きつけ
[state 4002, 1]
type = explod
trigger1 = Time = 0
trigger1 = !numexplod(6016)
anim = 4033;3010;6016
pos = 25,0
postype = p2
sprpriority = 3
bindtime = 1
facing = -1
removetime = -2
id = 6016
shadow = -1
ownpal = 1

[State SuperChancelUnsou]
type = ChangeState
triggerall = var(5) = 15;運送装備？
triggerall = var(6);げーじ大丈夫？
;trigger1 = 1;Time >= 0;キャンセル
trigger1 = !var(59);AIOFF時
trigger1 = Time = [10,20]
trigger1 = command = "SPWeapons"
;AIが入っている場合、別途追記で
Trigger2 = Var(59) && RoundState = 2
Trigger2 = Time = 15
Trigger2 = Random < 100 * Var(59)
value = 35150

[State End]
type = ChangeAnim
trigger1 = Time <= 30
value = anim
elem = 1
[State End]
type = ChangeState
trigger1 = Time > 30
trigger1 = Animtime = 0
value = 0
ctrl = 1
;テキさんステート-------------
[Statedef 66150]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 66140
sprpriority = 1

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State Anim]
type = changeanim2
trigger1 = Time = 0
value = 66150

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = 1
value = 0;カメラが追わなくなる

[State push]
type = PlayerPush
trigger1 = 1
value = 0

[State Change]
type = null;SelfState
trigger1 = Time > 110
value = 5030 
;テキさんステート-------------
[Statedef 66151]
type    = A
movetype= H
physics = N
velset = -1,-6
;anim = 66140
sprpriority = 1

[State Gravity]
type = veladd
trigger1 = 1
y = .48

[State CAMERA];のけぞってる間、カメラを外します
type = ScreenBound
trigger1 = 1
value = 1

[State Anim]
type = changeanim2
trigger1 = Time = 0
value = 66151

[State Change]
type = SelfState
;trigger1 = 1;Time > 110
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100
;---------------------------------------------------------------------------
[Statedef 35160];名を言ってみろ！その１
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35102;別途で投げアニメを製作する
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
;trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = -1;300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 3516,0;おい貴様！
channel=0;vc

[State 800, 1]
type = HitDef
Trigger1 = 1;Time = 0
id = 35160
attr = S, NT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = MAF          ;コンボの途中から投げが入らないよう設定してある
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
p1facing = 1;
p2facing = 1          ;？
p1stateno = 35161       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66161      ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State remexp]
type = removeexplod
trigger1 = animtime = 0;
id = 15060
[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 35081
;---------------------------------------------------------------------------
[Statedef 35161];名を言ってみろ！その２
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35144;別途で投げアニメを製作する
sprpriority = 2

[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 180,140

[State Anim]
type = changeanim
trigger1 = 1
value = 35144
elem = 1

[State Bind]
type = targetbind
id = 35160
trigger1 = 1
pos = 52,-70

[State Catch]
type = PlaySnd
trigger1 = Time = 0
value = 0,42;がきょおん！

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nobardisplay
ignorehitpause = 1
[State 4500, AssertSpecial];たいむすとっぷ
type = AssertSpecial
trigger1 = 1
flag = timerfreeze 

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 3516,1;質問に答えろ！
channel=0;vc

[State FUKIDASI]
type = explod
trigger1 = Time = 0
anim = 35162
id = 35162
postype = p1
pos = -10,-100
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 80
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State Window 1p]
type = Helper
Trigger1 = time > 80
trigger1 = !Numhelper(65160)
ID = 65160
Name = "Window"
Pos = 0,0
PosType = left;p1
StateNo = 65160
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[State Next];正解その１・魔理沙
type = changestate
triggerall = time >= 100
triggerall = (enemy,command = "x" ||enemy,command = "y" ||enemy,command = "z" ||enemy,command = "a" ||enemy,command = "b" ||enemy,command = "c")||(helper(65160),var(30) >= 180);時間がすぎたか、ボタンを押した
trigger1 = helper(65160),var(11) = 0;１番目が魔理沙
trigger1 = enemy,anim = [66160,66161];カーソルが一番目
trigger2 = helper(65160),var(12) = 0;２番目が魔理沙
trigger2 = enemy,anim = 66162;カーソルが２番目
trigger3 = helper(65160),var(13) = 0;３番目が魔理沙
trigger3 = enemy,anim = 66163;カーソルが３番目
value = 35162
[State Next];正解その２・魔梨沙
type = changestate
triggerall = time >= 100
triggerall = (enemy,command = "x" ||enemy,command = "y" ||enemy,command = "z" ||enemy,command = "a" ||enemy,command = "b" ||enemy,command = "c")||(helper(65160),var(30) >= 180);時間がすぎたか、ボタンを押した
trigger1 = helper(65160),var(11) = 1;１番目が魔梨沙
trigger1 = enemy,anim = [66160,66161];カーソルが一番目
trigger2 = helper(65160),var(12) = 1;２番目が魔梨沙
trigger2 = enemy,anim = 66162;カーソルが２番目
trigger3 = helper(65160),var(13) = 1;３番目が魔梨沙
trigger3 = enemy,anim = 66163;カーソルが３番目
value = 35163
[State Next];ハズレ・マリオ
type = changestate
triggerall = time >= 100
triggerall = (enemy,command = "x" ||enemy,command = "y" ||enemy,command = "z" ||enemy,command = "a" ||enemy,command = "b" ||enemy,command = "c")||(helper(65160),var(30) >= 180);時間がすぎたか、ボタンを押した
trigger1 = helper(65160),var(11) = 2;１番目がまりお
trigger1 = enemy,anim = [66160,66161];カーソルが一番目
trigger2 = helper(65160),var(12) = 2;２番目ががまりお
trigger2 = enemy,anim = 66162;カーソルが２番目
trigger3 = helper(65160),var(13) = 2;３番目ががまりお
trigger3 = enemy,anim = 66163;カーソルが３番目
value = 35164

;----------------------------------------------
[Statedef 35162]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nobardisplay
ignorehitpause = 1
[State 4500, AssertSpecial];たいむすとっぷ
type = AssertSpecial
trigger1 = 1
flag = timerfreeze 

[State 210, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0,31;

[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA

[State FUKIDASI];わかってるじゃねえか
type = explod
trigger1 = Time = 0
anim = 35163
id = 35163
postype = p1
pos = -10,-100
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 40
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State anm]
type = changeanim
trigger1 = 1
value = 195
elem = 1

[State Bind]
type = TargetState
trigger1 = Time = 40
value = 66151


[State remexp]
type = removeexplod
trigger1 = time = 60;
id = 15060

[State 195, 2]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1
;----------------------------------------------
[Statedef 35163]
type = S
ctrl = 0
anim = 70003
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nobardisplay
ignorehitpause = 1
[State 4500, AssertSpecial];たいむすとっぷ
type = AssertSpecial
trigger1 = 1
flag = timerfreeze 


[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1,30;ふふふふふ
channel = 0;VC

[State FUKIDASI];うふふふふ
type = explod
trigger1 = Time = 0
anim = 35164
id = 35163
postype = p1
pos = -10,-100
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 40
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999


[State Bind]
type = TargetState
trigger1 = Time = 40
value = 66151


[State remexp]
type = removeexplod
trigger1 = time = 60;
id = 15060

[State 195, 2]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1

;----------------------------------------------
[Statedef 35164]
type = S
ctrl = 0
anim = 5800
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nobardisplay
ignorehitpause = 1
[State 4500, AssertSpecial];たいむすとっぷ
type = AssertSpecial
trigger1 = 1
flag = timerfreeze 


[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3516,4;いやっふー
channel = 0;VC

[State FUKIDASI];いやっふうううう
type = explod
trigger1 = Time = 0
anim = 35165
id = 35163
postype = p1
pos = -10,-100
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 40
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State EFF];回転
type = explod
trigger1 = Time = 0
anim = 4032
id = 35163
postype = p1
pos = 0,10
ontop = 1
bindtime = -1
removetime = 40
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State Bind]
type = Targetlifeadd
trigger1 = Time%4 = 0
trigger1 = anim != 41
value = -10
[State 210, 1]
type = PlaySnd
trigger1 = Time%4 = 0
trigger1 = anim != 41
value = 0,6;ひっと音
[State Hitspark]
type = Explod
trigger1 = Time%4 = 0
trigger1 = anim != 41
anim = 4002
id = 4002
postype = p1
bindtime = 1
pos = floor(p2dist X-30+(Random%60)),floor(-(Random%60))
scale = 1,1
ontop = 1
pausemovetime = 99999999
supermovetime = 99999999
[State 210, 1]
type = PlaySnd
trigger1 = time = 40
value = 0,5;ひっと音
[State Hitspark]
type = Explod
trigger1 = time = 40
anim = 4004
id = 4002
postype = p1
bindtime = 1
pos = floor(p2dist X),floor(-50)
scale = 1,1
ontop = 1
pausemovetime = 99999999
supermovetime = 99999999

[State anm]
type = changeanim
trigger1 = time >= 40
value = 41
elem = 2

[State Next]
type = ChangeState
trigger1 = Time = [40,59]
triggerall = !var(59)
triggerall = command = "SPWeapons"
triggerall = var(5) > 0;装備してる？
triggerall = var(6);げーじ大丈夫？
value = 35165
ctrl = 0

[State Next, AI]
type = ChangeState
triggerall = var(59)
TriggerAll = Var(5) || (PalNo % 6) = 0	;装備してる
TriggerAll = Var(6) || (PalNo % 6) = 0	;げーじ大丈夫？
trigger1 = Time = [40,59]
trigger1 = random < 91 * var(59)
value = 35165
ctrl = 0

[State Bind]
type = TargetState
trigger1 = Time = 60
value = 66151


[State remexp]
type = removeexplod
trigger1 = time = 80;
id = 15060

[State 195, 2]
type = ChangeState
trigger1 = Time = 80
value = 0
ctrl = 1

;----------------------------------------------
[Statedef 35165]
type = S
ctrl = 0
anim = 70003
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nobardisplay
ignorehitpause = 1
[State 4500, AssertSpecial];たいむすとっぷ
type = AssertSpecial
trigger1 = 1
flag = timerfreeze 


[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3516,2;おいおいいいのか？
channel = 0;VC

[State 210, 1]
type = PlaySnd
trigger1 = Time = 230;だいたいこのくらい
value = 3516,3;答えろ・・・！
channel = 0;VC

[State anm]
type = changeanim
trigger1 = time >= 230
value = 195
elem = 1

[State FUKIDASI];いいのか？そんな
type = explod
trigger1 = Time = 0
anim = 35167
id = 35167
postype = p1
pos = -10,-70
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 230
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999
[State FUKIDASI];こたえろ・・・！
type = explod
trigger1 = Time = 230
anim = 35168
id = 35167
postype = p1
pos = -10,-90
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 80
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999


[State Bind]
type = TargetState
trigger1 = time = 270
value = 66161


[State 195, 2]
type = null;ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1


[State Window 1p]
type = Helper
triggerall = time >= 310
trigger1 = !Numhelper(65160)
ID = 65160
Name = "Window"
Pos = 0,0
PosType = left;p1
StateNo = 65160
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[State Next];正解その１・魔理沙
type = changestate
triggerall = time >= 310
triggerall = (enemy,command = "x" ||enemy,command = "y" ||enemy,command = "z" ||enemy,command = "a" ||enemy,command = "b" ||enemy,command = "c")||(helper(65160),var(30) >= 180);時間がすぎたか、ボタンを押した
trigger1 = helper(65160),var(11) = 0;１番目が魔理沙
trigger1 = enemy,anim = [66160,66161];カーソルが一番目
trigger2 = helper(65160),var(12) = 0;２番目が魔理沙
trigger2 = enemy,anim = 66162;カーソルが２番目
trigger3 = helper(65160),var(13) = 0;３番目が魔理沙
trigger3 = enemy,anim = 66163;カーソルが３番目
value = 35162
[State Next];正解その２・魔梨沙
type = changestate
triggerall = time >= 310
triggerall = (enemy,command = "x" ||enemy,command = "y" ||enemy,command = "z" ||enemy,command = "a" ||enemy,command = "b" ||enemy,command = "c")||(helper(65160),var(30) >= 180);時間がすぎたか、ボタンを押した
trigger1 = helper(65160),var(11) = 1;１番目が魔梨沙
trigger1 = enemy,anim = [66160,66161];カーソルが一番目
trigger2 = helper(65160),var(12) = 1;２番目が魔梨沙
trigger2 = enemy,anim = 66162;カーソルが２番目
trigger3 = helper(65160),var(13) = 1;３番目が魔梨沙
trigger3 = enemy,anim = 66163;カーソルが３番目
value = 35163
[State Next];ハズレ・マリオ
type = changestate
triggerall = time >= 310
triggerall = (enemy,command = "x" ||enemy,command = "y" ||enemy,command = "z" ||enemy,command = "a" ||enemy,command = "b" ||enemy,command = "c")||(helper(65160),var(30) >= 180);時間がすぎたか、ボタンを押した
trigger1 = helper(65160),var(11) = 2;１番目がまりお
trigger1 = enemy,anim = [66160,66161];カーソルが一番目
trigger2 = helper(65160),var(12) = 2;２番目ががまりお
trigger2 = enemy,anim = 66162;カーソルが２番目
trigger3 = helper(65160),var(13) = 2;３番目ががまりお
trigger3 = enemy,anim = 66163;カーソルが３番目
value = 35166

;----------------------------------------------
[Statedef 35166];フィニッシュ
type = S
ctrl = 0
anim = 800
velset = 0,0
movetype = I
physics = S
sprpriority = 2


[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nobardisplay
ignorehitpause = 1
[State 4500, AssertSpecial];たいむすとっぷ
type = AssertSpecial
trigger1 = 1
flag = timerfreeze 

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3516,5;
channel = 0;VC

[State FUKIDASI];
type = explod
trigger1 = Time = 0
anim = 35166
id = 35163
postype = p1
pos = -10,-100
facing = ifelse(facing != -1,1,-1)
ontop = 1
bindtime = -1
removetime = 40
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State anm]
type = changeanim
trigger1 = time = [6,60]
value = 802
elem = 3


[State TAIKIKEN]
type = Explod
trigger1 = Time = 50
trigger1 = !Numexplod(15100)
anim = 65165;大気圏
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
scale = 1,1
supermovetime = 99999
pausemovetime = 99999


[State Bind]
type = TargetState
trigger1 = Time = 50
value = 66151
[State Bind]
type = Targetvelset
trigger1 = Time = 51
Y = -50
[State Bind]
type = Targetlifeadd
trigger1 = Time = 51
value = -200


[State CRUSH!]
type = EnvShake
trigger1 = Time = 50
time = 100
freq = 160
ampl = -10
phase = 0
persistent = 0
[State 210, 1]
type = PlaySnd
trigger1 = Time = 50
value = 0,18;

[State DelBG]
type = Removeexplod
trigger1 = Time = 200
trigger1 = Numexplod(15100)
ID = 15100

[State remexp]
type = removeexplod
trigger1 = time = 200;
id = 15060

[State 195, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;------------------------------------------
;選択肢ウィンドウ
[Statedef 65160]
type = S
movetype = A
physics = N
velset = 0,0
sprpriority = 4;
anim = 9999
juggle = 1
ctrl = 0
hitcountpersist = 1

;Var(10)で抽選！
;０　１番目が正解
;１　２番目が正解
;２　３番目が正解
[State KUJI]
type = varset
trigger1 = time = 0
var(10) = random%3;0-2の範囲

;ぱたーん１
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 0;０のとき
var(11) = 0
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 0;０のとき
var(12) = 1+(random%2);１か２
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 0;０のとき
var(13) = ifelse(var(12)=1,2,1)
;ぱたーん２
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 1;1のとき
var(11) = 1+(random%2);１か２
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 1;1のとき
var(12) = 0
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 1;1のとき
var(13) = ifelse(var(11)=1,2,1)
;ぱたーん３
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 2;2のとき
var(11) = 1+(random%2);１か２
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 2;2のとき
var(12) = ifelse(var(11)=1,2,1)
[State KUJI]
type = varset
trigger1 = time = 0
trigger1 = var(10) = 2;2のとき
var(13) = 0

;		０　　　１　　　２
;選択肢　０　魔理沙　魔梨沙　魔理緒
;選択肢　１　魔梨沙　魔理沙　魔理緒
;選択肢　２　魔梨沙　魔理緒　魔理沙

[State offset]
type = varset
trigger1 = parent,facing = 1
var(0) = 215
[State offset]
type = varset
trigger1 = parent,facing = -1
var(0) = 0

[State FUKIDASI]
type = explod
trigger1 = 1
trigger1 = !numexplod(65160)
anim = 65160
id = 65160
postype = left
pos = 5+var(0),60
facing = 1
sprpriority = 4
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State SENTAKU1]
type = explod
trigger1 = 1
trigger1 = !numexplod(65161)
anim = 65161+var(11);抽選漏れなら別選択肢
id = 65161
postype = left
pos = 25+var(0),70
facing = 1
sprpriority = 5
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999
[State SENTAKU2]
type = explod
trigger1 = 1
trigger1 = !numexplod(65162)
anim = 65161+var(12);抽選漏れなら別選択肢
id = 65162
postype = left
pos = 25+var(0),90
facing = 1
sprpriority = 5
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999
[State SENTAKU3]
type = explod
trigger1 = 1
trigger1 = !numexplod(65163)
anim = 65161+var(13);抽選漏れなら別選択肢
id = 65163
postype = left
pos = 25+var(0),110
facing = 1
sprpriority = 5
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State CUR]
type = explod
trigger1 = 1
trigger1 = !numexplod(65164)
anim = 65164;かーそる
id = 65164
postype = left
pos = 15+var(0),78
facing = 1
sprpriority = 5
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999
[state 4002, 1]
type = modifyexplod
trigger1 = numexplod(65164)
trigger1 = enemy,anim = [66160,66161]
id = 65164
postype = left
pos = 15+var(0),78
[state 4002, 1]
type = modifyexplod
trigger1 = numexplod(65164)
trigger1 = enemy,anim = 66162
id = 65164
postype = left
pos = 15+var(0),98
[state 4002, 1]
type = modifyexplod
trigger1 = numexplod(65164)
trigger1 = enemy,anim = 66163
id = 65164
postype = left
pos = 15+var(0),118

[State Vel]
type = velset
trigger1 = 1
X = 0
Y = 0

[State 4501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
;flag2 = Invisible
ignorehitpause = 1

;エフェクト削除フラグはvar(20)
[State Delflag]
type = varset
trigger1 = 1;parent,stateno != 35161
var(20) = 1
[State Delflag]
type = varset
trigger1 = parent,stateno = 35161
trigger2 = parent,stateno = 35165
var(20) = 0

[State Remove]
type = removeexplod
trigger1 = var(20) = 1
trigger1 = numexplod(65160)
id = 65160
[State Remove]
type = removeexplod
trigger1 = var(20) = 1
trigger1 = numexplod(65161)
id = 65161
[State Remove]
type = removeexplod
trigger1 = var(20) = 1
trigger1 = numexplod(65162)
id = 65162
[State Remove]
type = removeexplod
trigger1 = var(20) = 1
trigger1 = numexplod(65163)
id = 65163
[State Remove]
type = removeexplod
trigger1 = var(20) = 1
trigger1 = numexplod(65164)
id = 65164

;var(30)がタイマー
[State Timer]
type = varset
trigger1 = time = 0
var(30) = 0
[State GuagePlus];回復音
type = PlaySnd
triggerall = var(30)%60 = 0
trigger1 = var(30) = [0,179]
value = 0,38
;channel = 4;SE臨時
;persistent = 0
[State Timer]
type = varadd
trigger1 = 1
var(30) = 1

[State Del]
type = destroyself
trigger1 = var(20) = 1

;---------------------------------------------------------------------------
[Statedef 66161];いってみろ！相手１
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State muteki]
type= NotHitBy
trigger1 = 1
time = 1
value = SCA


[state 451,6]
type = screenbound
trigger1 = 1
value = 0

[State anim]
type = changeanim2
trigger1 = time = 0
value = 66160

[State anim]
type = changeanim2
triggerall = time >= 90
triggerall = animelem = 2,>=0
trigger1 = anim = 66162
trigger1 = command = "up"
trigger2 = anim = 66163
trigger2 = command = "down"
value = 66161

[State anim]
type = changeanim2
triggerall = time >= 90
triggerall = animelem = 2,>=0
trigger1 = anim = 66163
trigger1 = command = "up"
trigger2 = (anim = 66160)||(anim = 66161)
trigger2 = command = "down"
value = 66162

[State anim]
type = changeanim2
triggerall = time >= 90
triggerall = animelem = 2,>=0
trigger1 = (anim = 66160)||(anim = 66161)
trigger1 = command = "up"
trigger2 = anim = 66162
trigger2 = command = "down"
value = 66163
;---------------------------------------------------------------------------
[Statedef 35170];ＥＸ飛衛拳
;type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1053;別途で投げアニメを製作する
sprpriority = 2


[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0


[State BG]
type = BGPalFX
trigger1 = 1
time = 4
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10
ignorehitpause = 1

[State 3000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 15,-64;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
;movetime = 50;停止無視時間 (int)

;ココラニ特殊背景関連の記述を？
[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State -1]
Type        = AfterImage
Trigger1    = Time = 1
Time        = 40
Trans       = Add
Length      = 20
TimeGap     = 1
FrameFap    = 1
:PalBright   = 0  , 0  , 0
PalContrast = 100,100,40;0  , 0  , 150
;PalAdd      = 32,32,0
PalMul      = 1 , 1 , .5
Peresistent = 1


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
[state a]
type = statetypeset
trigger1 = time = 0
value = A

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = time <= 9
value = SCA

[State push]
type = PlayerPush
trigger1 = anim = 1053
value = 0

[state a];蹴り
type = playsnd
trigger1 = anim = 1053
trigger1 = time = 1;
value = 3517,0;ほわちゃあ！
channel = 0;VC

[state a];蹴り
type = playsnd
trigger1 = anim = 1053
trigger1 = animelemtime(4) = 0;攻撃判定が出る直前
value = 1050,1

[state a]
type = posadd
trigger1 = anim = 1053
trigger1 = animelem = 3
x = 0;6
y = -10;-24


[state a]
type = velset
trigger1 = anim = 1053
trigger1 = time = 0
x = 10;6
y = -3;6.5

[state a]
type = veladd
trigger1 = time >= 30
trigger1 = vel x > 0
x = -0.2

[State rakka]
type = changeanim
trigger1 = anim = 1053
trigger1 = time >= 30
value = 1054

[state a]
type = velset
trigger1 = anim = 1053
trigger1 = vel x <= 2
x = 2

[state a]
type = veladd
trigger1 = 1
y = 0.1;4


;エフェクト関連
;アッパー
[State 5150, 6] 
type = Explod
trigger1 = anim = 1053
trigger1 = animelemtime(5) = 0;
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
trigger1 = anim = 1053
trigger1 = animelemtime(5) = 0;
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
trigger1 = anim = 1053
trigger1 = animelemtime(5) = 0;
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
trigger1 = anim != 1053
ID = 1055

[State 640, 3]
type = HitDef
trigger1 = animelemtime(5) = 0;
attr = A, HA
damage    = floor(280),15
priority = 8, Dodge
guardflag = HA
pausetime = 0,60
guard.pausetime = 15,15
sparkno = -1
sparkxy = -10,-30
hitsound   = s0,18;
guard.sparkno = s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4,-8;
guard.velocity = -11
air.velocity = -4,-8;
yaccel = 0.3
fall = 1
fall.recovertime = 60
hitonce = 1
ID = 600
nochainID = 9999

[State Pause];スローにする
type = Pause;
triggerall = movehit = [1,30]
triggerall = gametime%8 = 0
triggerall = vel X != 0;止まってなかったら
trigger1 = !winKO
time = 4
;movetime = 2

;ＨＩＴスパーク--------------------------------------------
[State 31020, Explod]
Type = null;Explod
trigger1 = movehit
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = (target,const(size.Air.Front)), -10
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
[State 31020, Explod]
Type = null;Explod
trigger1 = movehit
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = -(target,const(size.Air.Back)), -10
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
[State 31020, Explod]
Type = null;Explod
trigger1 = movehit
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = (target,const(size.Air.Front)), (target,const(size.head.pos.y))
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
[State 31020, Explod]
Type = Explod
trigger1 = movehit
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = -(target,const(size.Air.Back)), (target,const(size.head.pos.y))
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
;右肩をぶち抜く

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1
;--------------------

[State remexp]
type = removeexplod
trigger1 = time >= 120;
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 0
id = 15060

;---------------------[立ちステートに戻る]
[state a20]
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1051

;---------------------------------------------------------------------------
[Statedef 35180];残悔拳
;type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35184;
sprpriority = 2


[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time = 0
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[state a]
type = statetypeset
trigger1 = pos y < 0
value = A
[state a]
type = statetypeset
trigger1 = time = 0
value = A

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = time <= 9
value = SCA

[state a]
type = velset
trigger1 = time = 0
x = 1
y = -5
[state a]
type = veladd
trigger1 = 1
y = 0.1;4

[State 640, 3]
type = HitDef
trigger1 = time = 0;
attr = A, HA
hitflag = M;地上のみ
damage    = floor(0),0
priority = 8, Dodge
guardflag = M
pausetime = 0,0
guard.pausetime = 15,15
sparkno = -1
sparkxy = -10,-30
hitsound   = s3518,0;
guard.sparkno = s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0;
guard.velocity = -1
air.velocity = 0;
yaccel = 0.3
p2stateno = 65180
fall = 1
fall.recovertime = 60
hitonce = 1
ID = 600
nochainID = 9999


[state 4002, 1]
type = explod
trigger1 = numtarget > 0
trigger1 = movehit
trigger1 = !numexplod(35183)
anim = 35183
id = 35183
postype = back
pos = 0, 0
sprpriority = -5
ontop = 0
ownpal = 1
removetime = -1;200;-2
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
persistent = 0
IgnoreHitPause = 1

[State BGMON]
type = varset
trigger1 = numtarget > 0
trigger1 = movehit
var(20) = 1;ＢＧＭフラグ

[State BGMSTOP]
type = StopSnd;流石は切っておく
trigger1 = numtarget > 0
trigger1 = movehit
channel = 2;BGM

[State nex]
type = changestate
trigger1 = numtarget > 0
trigger1 = movehit
value = 35181

;---------------------[立ちステートに戻る]
[state a20]
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1051

;---------------------------------------------------------------------------
[Statedef 35181];残悔拳
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35185;
sprpriority = 2


;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = time = 0
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State Pause];スローにする
type = Pause;
Trigger1 = Time%4 = 0
time = 2
movetime = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
var(6) = 0
[State Varset]
type = varset
Trigger1 = Time = 0
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1;BGMが流れ出したなら
flag = nomusic
flag2 = noBG
flag3 = noFG
[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1;BGMが流れ出したなら
flag = timerfreeze

[State Pos]
type = posset
trigger1 = time = 0
X = floor(target,pos X)
Y = floor(target,const(size.head.pos.y))
[State Pos]
type = posset
trigger1 = time = 0
trigger1 = target,name ="KENSHIRO"
trigger1 = target,authorname ="Drowin hokuto"
;指定忘れてるなんてひどいや
X = floor(target,pos X)
Y = -120
[State Pos]
type = posset
trigger1 = time = 0
trigger1 = target,name ="RAOH"
trigger1 = target,authorname ="Drowin hokuto"
;指定忘れてるなんてひどいや
X = floor(target,pos X)
Y = -140
[State Pos]
type = posset
trigger1 = time = 0
trigger1 = target,name ="TOKI"
trigger1 = target,authorname ="Drowin hokuto"
;指定忘れてるなんてひどいや
X = floor(target,pos X)
Y = -120
[State Pos]
type = posset
trigger1 = time = 0
trigger1 = target,name ="JAGI"
trigger1 = target,authorname ="Drowin hokuto"
;指定忘れてるなんてひどいや
X = floor(target,pos X)
Y = -100


[State OHNO]
type = PlaySnd
;triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 50
value = 3518,99;北斗残悔拳
;channel = 0
[State WPNKO 2];特殊武器でKOした時 画像編
type = Explod
Trigger1 = Time = 50
anim = 35189
id = 35009;
pos = 0,0
postype = left
removetime = -1;150
sprpriority = 5
ontop = 1
bindtime = -1
pausemovetime = 9999
[State OHNO]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 200
value = 3518,2;貴様の命はあと３ＴＵＲＮ！
channel = 0

[state 4002, 1]
type = removeexplod
trigger1 = time = 500
trigger1 = numexplod(35183)
id = 35183
[state 4002, 1]
type = removeexplod
trigger1 = time = 500
trigger1 = numexplod(35009)
id = 35009

[State 0, 0]
type = Helper
;trigger1 = time = 500
trigger1 = time = 0
helpertype = normal
name = "You Are Dead For 3Sec letter!"
ID = 35185
stateno = 35185
postype = p2
pos = 0,0
keyctrl = 0
ownpal = 1
pausemovetime = 500
supermovetime = 500


[state a20]
type = targetstate
trigger1 = numtarget > 0
trigger1 = time = 500
value = 65181

[State HANTEI ATARI INTRO];BGM停止後、イントロ
type = PlaySnd
Trigger1 = Time = 500
value = 3,1;テーレッテー
channel = 2;BGMチャンネル
persistent = 0

[state a20]
type = changestate
trigger1 = time >= 500
value = 35182
;---------------------------------------------------------------------------
[Statedef 35182];残悔拳
type    = A
movetype= A
physics = N
juggle  = 0
velset = 1,0
ctrl = 0
sprpriority = 2

[State anim]
type = changeanim
trigger1 = time = 0
value = 42
elem = 5
[State pos]
type = posadd
trigger1 = time = 0
Y = 30

[State grv]
type = gravity
trigger1 = 1

;---------------------[立ちステートに戻る]
[state a20]
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1051

;---------------------------------------------------------------------------
[Statedef 35185];残悔カウンター
type    = S
movetype= I
physics = N
juggle  = 0
velset = 1,0
anim = 9999
ctrl = 0
sprpriority = 2

[State ID]
type = varset
trigger1 = time = 0
var(0) = enemynear,ID;秘孔を食らわせた相手のIDを記憶し、つけねらう
[State TIME]
type = varset
trigger1 = time = 0
var(1) = 300;終焉へのカウントダウン！

[State COUNTERWPN]
type = varset
Trigger1 = var(13) != var(1)
var(13) = var(1)

[State COUNTERRESET  1]
type = removeexplod
triggerall = numexplod(18000)
Trigger1 = var(10) != abs(var(13))%10;１の位は前回と違っているか？
id = 18000;1の位のカウンターを一旦黙らせる

[State COUNTERRESET  10]
type = removeexplod
triggerall = numexplod(18001)
Trigger1 = var(11) != floor(abs(var(13))*.1)%10;10の位は前回と違っているか？
id = 18001;10の位のカウンターを一旦黙らせる

[State COUNTERRESET  100]
type = removeexplod
triggerall = numexplod(18002)
Trigger1 = var(12) != floor(abs(var(13))*.01)%10;10の位は前回と違っているか？
id = 18002;10の位のカウンターを一旦黙らせる

[State Varset  1]
type = varset
Trigger1 = var(0) != abs(var(13))%10;１の位は前回と違っているか？
var(10) = abs(var(13))%10;

[State Varset 10]
type = varset
Trigger1 = var(1) != floor(abs(var(13))*.1)%10;10の位は前回と違っているか？
var(11) = floor(abs(var(13))*.1)%10

[State Varset 100]
type = varset
Trigger1 = var(1) != floor(abs(var(13))*.01)%10;10の位は前回と違っているか？
var(12) = floor(abs(var(13))*.01)%10

[State WPNCOUNTER_1 1p]
type = explod
trigger1 = !Numexplod(18000)
trigger1 = teamside = 1;1p側
anim = 65180+var(10);ぶきかうんたー１の位
id = 18000;アイコンID 1の位
postype = right
pos = -16,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State WPNCOUNTER_10 1p]
type = explod
trigger1 = !Numexplod(18001)
trigger1 = teamside = 1;1p側
anim = 65180+var(11);ぶきかうんたー10の位
id = 18001;アイコンID 2の位
postype = right
pos = -25,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State WPNCOUNTER_comma 1p]
type = explod
trigger1 = !Numexplod(18003)
trigger1 = teamside = 1;1p側
anim = 35182;ぶきかうんたーかんま
id = 18003;
postype = right
pos = -30,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State WPNCOUNTER_100 1p]
type = explod
trigger1 = !Numexplod(18002)
trigger1 = teamside = 1;1p側
anim = 65180+var(12);ぶきかうんたー100の位
id = 18002;アイコンID 2の位
postype = right
pos = -37,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1

[State WPNCOUNTER_1 2p]
type = explod
trigger1 = !Numexplod(18000)
trigger1 = teamside = 2;2p側
anim = 65180+var(10);ぶきかうんたー１の位
id = 18000;アイコンID 1の位
postype = left
pos = 29,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State WPNCOUNTER_10 2p]
type = explod
trigger1 = !Numexplod(18001)
trigger1 = teamside = 2;2p側
anim = 65180+var(11);ぶきかうんたー10の位
id = 18001;アイコンID 2の位
postype = left
pos = 20,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State WPNCOUNTER_comma 2p]
type = explod
trigger1 = !Numexplod(18003)
trigger1 = teamside = 2;2p側
anim = 35182;ぶきかうんたーかんま
id = 18003;
postype = left
pos = 15,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1
[State WPNCOUNTER_100 2p]
type = explod
trigger1 = !Numexplod(18002)
trigger1 = teamside = 2;2p側
anim = 65180+var(12);ぶきかうんたー100の位
id = 18002;アイコンID 2の位
postype = left
;pos = -37,200;暫定
pos = 8,200;暫定
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
;sprpriority = 4
facing = 1;
pausemovetime = -1
supermobetime = -1
scale = 1,1


[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = Time%2=0;時間経過が遅くなる
flag = timerfreeze

[State time]
type = varadd
triggerall = parent,stateno != 35181;このステート以外でタイマーを流す
trigger1 = time%5 = 0
var(1) = floor(-0.9);これくらいの速度ならテーレッテー終了に合う
[State time]
type = varset
trigger1 = var(1) <= 0
var(1) = 0

[State Clip]
type = DisplayToClipboard
trigger1 = 1
text = "TIME = %d"
params = var(1)

[State Posset]
type = posset
trigger1 = 1
X = playerID(var(0)),pos X
Y = playerID(var(0)),pos Y


[state a20];失敗
type = changestate
trigger1 = !parent,Alive
trigger2 = WINKO;もう勝っちゃった
value = 35187
;最後の瞬間
[state a20]
type = changestate
trigger1 = var(1) <= 0
;trigger1 = var(1) <= 280
value = 35186
;---------------------------------------------------------------------------
[Statedef 35187];何らかの要因で失敗
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 9999
ctrl = 0
sprpriority = 2

[State COUNTERRESET  1]
type = removeexplod
trigger1 = numexplod(18000)
id = 18000;1の位のカウンター
[State COUNTERRESET  10]
type = removeexplod
trigger1 = numexplod(18001)
id = 18001;10の位のカウンター
[State COUNTERRESET  100]
type = removeexplod
trigger1 = numexplod(18002)
id = 18002;10の位のカウンター
[State COUNTERRESET  comma]
type = removeexplod
trigger1 = numexplod(18003)
id = 18003;10の位のカウンター

[State BGMOFF]
type = parentvarset
trigger1 = !WinKO
var(20) = 1

[State destroyself]
type = destroyself
trigger1 = 1
;---------------------------------------------------------------------------
[Statedef 35186];秘孔発動
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 35188
ctrl = 0
sprpriority = 2

[State COUNTERRESET  1]
type = removeexplod
trigger1 = numexplod(18000)
id = 18000;1の位のカウンター
[State COUNTERRESET  10]
type = removeexplod
trigger1 = numexplod(18001)
id = 18001;10の位のカウンター
[State COUNTERRESET  100]
type = removeexplod
trigger1 = numexplod(18002)
id = 18002;10の位のカウンター
[State COUNTERRESET  comma]
type = removeexplod
trigger1 = numexplod(18003)
id = 18003;10の位のカウンター

[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = time <= 300
flag = noBG
flag2 = noFG

[State -3,NOGUARD];ガード不能
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 640, 3]
type = HitDef
trigger1 = time = 0;
attr = A, HA
hitflag = MAF
damage    = floor(0),0
priority = 8, Dodge
guardflag = M
pausetime = 0,0
guard.pausetime = 15,15
sparkno = -1
sparkxy = -10,-30
hitsound   = -1;s3518,0;
guard.sparkno = s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0;
guard.velocity = -1
air.velocity = 0;
yaccel = 0.3
p2stateno = 65182
fall = 1
fall.recovertime = 60
hitonce = 1
ID = 600
nochainID = 9999

[state a]
type = statetypeset
trigger1 = movehit
movetype= I

[State snd]
type = playsnd
trigger1 = numtarget > 0
trigger1 = movehit
persistent = 0
ignorehitpause = 1
value = 3518,3;死に・・・たわっ
[State snd]
type = playsnd
trigger1 = numtarget > 0
trigger1 = movehit
persistent = 0
ignorehitpause = 1
value = 3518,1;秘孔
channel = 1;SE
[State BGMSTOP]
type = StopSnd;流石は切っておく
trigger1 = numtarget > 0
trigger1 = movehit
channel = 2;BGM

[state 4002, 1]
type = explod
trigger1 = numtarget > 0
trigger1 = movehit
trigger1 = !numexplod(35187)
trigger1 = time = 280
anim = 35187
id = 35187
postype = back
pos = 0, 0
sprpriority = 5
ontop = 0
ownpal = 1
removetime = -2
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
persistent = 0
IgnoreHitPause = 1

[State FLASH]
type = AllPalFX
trigger1 = Time >= 300
trigger1 = numexplod(35187)
time = 2
;add = 256,256,256
add = (Time - 300)*5,(Time - 300)*5,(Time - 300)*5

[State 6430, 0]
type = TargetState
trigger1 = numtarget > 0
trigger1 = movehit
trigger1 = time = 280
value = 35052

[State 6430, 0]
type = Targetlifeadd
trigger1 = numtarget > 0
trigger1 = movehit
trigger1 = time = 280
value = -99999999

[State BGMOFF]
type = parentvarset
trigger1 = time > 320;ダメージ入れたあと、相手が生きている
trigger1 = !WinKO
var(20) = 0
[State destroyself]
type = destroyself
trigger1 = time > 320;ダメージ入れたあと、相手が生きている
trigger1 = !WinKO
trigger1 = !numexplod(35187)

;---------------------------------------------------------------------------
[Statedef 65180];残悔拳 相手
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 5010;
sprpriority = 2

[State pos]
type = posset
trigger1 = time = 0
Y = 0

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = 1
value = SCA

[State push]
type = PlayerPush
trigger1 = 1
value = 0

[State anim]
type = changeanim
trigger1 = 1
value = anim
;---------------------------------------------------------------------------
[Statedef 65181];残悔拳 相手 一度開放してやる
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 5010;
sprpriority = 2

[State Self]
type = selfstate
trigger1 = 1
value = 5030
;---------------------------------------------------------------------------
[Statedef 65182];残悔拳 相手 死にたわっ！！！
type     = A                     
movetype = H                     
physics  = N                     
juggle   = 0                     
ctrl     = 0                     
anim     = 5010                  
velset = 0,0

[State -2, EX Flash]
type = PalFX
trigger1 = Time < 120
trigger1 = TimeMod = 4,0
ignorehitpause = 1
time = 2
add = 128,128,128

[State -2, EX Flash]
type = PalFX
trigger1 = Time >= 120
trigger1 = TimeMod = 4,0
ignorehitpause = 1
time = 2
add = 255,0,0

;-------------------
[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1
;--------------------テスト
[State 0, 3]
type = SprPriority
trigger1 = 1
value = -3

[state 0,0]
type = selfstate
trigger1 = time = 1500
value = 5100
ctrl = 0
;一定時間後 35052を読ませて爆発させる
;---------------------------------------------------------------------------
[Statedef 35190];天破活殺
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35192;
sprpriority = 2


[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 40;停止時間 (int)
movetime = 40;停止無視時間 (int)

;ココラニ特殊背景関連の記述を？
[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State 31020, Explod]
Type = Explod
trigger1 = animelem = 12
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 15
trigger5 = animelem = 16
trigger6 = animelem = 17
trigger7 = animelem = 18
SprPriority = 3
OnTop = 1
PosType = P1
Pos = 32,-42
scale = 2,2
ID = 31000
Anim = 30031
ignorehitpause = 1

[State 640, 3]
type = HitDef
trigger1 = animelem = 12
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 15
trigger5 = animelem = 16
trigger6 = animelem = 17
trigger7 = animelem = 18
attr = A, SA
damage    = 24,12
priority = 6, Hit
guardflag = HA
getpower = 108,108
pausetime = 6,12
guard.pausetime = 5,12
sparkno = -1;s4002
sparkxy = -10,-40
hitsound   = s0,17
guard.sparkno = s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -2,-10
guard.velocity = -11
air.velocity = -2,-10
yaccel = 0.55 ;+ (var(3) - 1)*0.1
fall = 1
fall.recovertime = 60
ID = 600
nochainID = 9999

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemtime(10) = 0
value = 1,8;でりゃあ！
channel = 0;VC
[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 12
value = 0,43;チャージＸ８
;channel=1;SE

[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 12,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = 30,-120
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 13,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = -20,-120
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 14,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = -30,-80
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 15,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = 20,-80
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 16,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = 25,-60
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 17,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = 18,-40
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = movehit
trigger1 = animelem = 18,>=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P2
Pos = 14,-20
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1


[State remexp]
type = removeexplod
trigger1 = animtime = 0;
id = 15060

[State exit]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;------------------------------
[Statedef 35200];タンクローリーだ！
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 41;じゃんぷ
velset	  = 0,-30


[state 451,6]
type = screenbound
trigger1 = 1
value = 0


[State Changeanim]
type = ChangeAnim
Trigger1 = 1
value = anim
elem = 2

[State JUMP];すてーとを空中にする
type = StateTypeSet
trigger1 = Time = 0
statetype = A
movetype = A
physics = N

[State Next]
type = ChangeState
trigger1 = Pos Y < -600
value = 35201

;------------------------------
[Statedef 35201];落下
Type      = A
MoveType  = A
Physics   = N
Ctrl      = 0
Anim      = 35202;落下

[State VOICE]
type = Playsnd
trigger1 = Time = 0
value = 3520,0;タンクローリーだ！
channel = 0;VC

[State pos]
type = posset
trigger1 = time = 0
Y = -360

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = Null;AssertSpecial
trigger1 = Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State TANK]
type = explod
trigger1 = Time = 5
anim = 35203
id = 35203
postype = p1
pos = 0,0
facing = ifelse(facing != -1,1,-1)
ontop = 1
;sprpriority = -1
scale = .75,.75
removetime = 1500
bindtime = -1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State Velset]
type = Velset
trigger1 = Time = 0
X = 5
Y = 18

[State 640, 3]
type = HitDef
trigger1 = time = 0
attr = A, SA
damage    = 10,0
priority = 6, Hit
guardflag = M;地上のみガードＯＫ
getpower = 108,108
pausetime = 12,12
guard.pausetime = 12,12
sparkno = -1;s4002
sparkxy = -10,-40
hitsound   = s0,42;がきょおん！
guard.sparkno = -1;s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5,-10
guard.velocity = -11
air.velocity = -5,-10
yaccel = 0.55 ;+ (var(3) - 1)*0.1
p2stateno = 65200;ステートを取れない相手には当たらない
fall = 1
fall.recovertime = 60
Kill = 0
ID = 600
nochainID = 9999

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State -1]
Type     = ChangeState
Trigger1 = movehit
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 35204

[State -1]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 35202
;------------------------------
[Statedef 65200];相手くらい
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5010
;velset = -5,18
velset = 0,0


[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State pos]
type = VelSet
trigger1 = hitshakeover
x = -5
y = 18
persistent = 0

[State pos]
type = velset
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Y = 0
X = 0
[State pos]
type = posset
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Y = 0

[State Self]
type = SelfState
trigger1 = time >= 800
value = 5030
;------------------------------
[Statedef 65201];相手くらい２（タンク着地後）
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5010
velset = 0,0

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State pos]
type = posset
Trigger1 = time = 0
Y = 0

[State Self]
type = SelfState
trigger1 = time >= 800
value = 5030
;------------------------------
[Statedef 65202];相手くらい３（ふっとび）
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5061
velset = -20,0


[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State anim]
type = changeanim
trigger1 = backedgebodydist < 10
value = 5061

[State Self]
type = SelfState
trigger1 = backedgebodydist < 10
value = 5030
;------------------------------
[Statedef 35202];落下
Type      = A
MoveType  = A
Physics   = N
Ctrl      = 0
Anim      = 43;落下
velset = -3,-8


[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State target]
type = targetstate
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
trigger1 = time = 0
value = 65202
persistent = 0

[State target]
type = targetlifeadd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
trigger1 = time = 0
value = -120
[State target]
type = HitAdd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
trigger1 = time = 0
value = 1

[state 451,6]
type = screenbound
trigger1 = 1
value = 0

[State Pos]
type = posset
trigger1 = time = 0
Y = -146

[State TANK]
type = removeexplod
trigger1 = Time = 0
trigger1 = numexplod(35203)
id = 35203

[State VC];
type = PlaySnd;ばくはつ
trigger1 = Time = 0
trigger2 = Time = 2
trigger3 = Time = 4
value = 0,17
[state 4002, 1];
type = explod
trigger1 = Time = 0;この間画面まっしろ
trigger1 = !Numexplod(3030)
anim = 6001
id = 3030
postype = left
pos = 130, ScreenPos Y-Pos Y;まんなか
ownpal = 1
bindtime = 1
ignorehitpause = 1
;ontop = 1
sprpriority = 2
facing = 1
scale = 3,3
[state 4002, 1];
type = explod
trigger1 = Time = 0;この間画面まっしろ
trigger1 = !Numexplod(3031)
anim = 6001
id = 3031
postype = left
pos = 20, ScreenPos Y-Pos Y;ひだり
ownpal = 1
bindtime = 1
ignorehitpause = 1
;ontop = 1
sprpriority = 2
facing = 1
scale = 3,3
[state 4002, 1];
type = explod
trigger1 = Time = 0;この間画面まっしろ
trigger1 = !Numexplod(3032)
anim = 6001
id = 3032
postype = left
pos = 230,ScreenPos Y-Pos Y;みぎ
ownpal = 1
bindtime = 1
ignorehitpause = 1
;ontop = 1
sprpriority = 2
facing = 1
scale = 3,3

[State FLASH]
type = AllPalFX
trigger1 = Time = 0;この間画面まっしろ
time = 1
add = 256,256,256

[State grv]
type = gravity
trigger1 = 1

[State -1]
Type     = ChangeState
trigger1 = time >= 30
trigger1 = backedgebodydist <= -20;もし画面外なら
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 710
[State -1]
Type     = ChangeState
trigger1 = time >= 30
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 35203

;------------------------------
[Statedef 35203]
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

;------------------------------
[Statedef 35204];HAHAHAHAHA無駄無駄無駄無駄無駄
Type      = S
MoveType  = A
Physics   = N
Ctrl      = 0
Anim      = 35204;
velset = 0,0


[State target]
type = targetstate
trigger1 = numtarget > 0
trigger1 = time = 0
value = 65201

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = nobardisplay

[State pos]
type = posset
trigger1 = time = 0
Y = 0

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
value = 1,31;HAHAHAHAHAHAHA!!!
channel = 0;VC

[State anim]
type = changeanim
trigger1 = time = 95
value = 35205

[State anim]
type = changeanim
trigger1 = time = 300;切り上げ
value = 35206

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 105
value = 3520,1;無駄無駄１
channel = 0;VC
[State ]
type = stopsnd
trigger1 = time = 300
channel = 0
[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = time = 310;切り上げ
value = 3520,2;無駄無駄１
channel = 0;VC

[State CRUSH!]
type = EnvShake
triggerall = anim = 35205
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(7) = 0
time = 10
freq = 160
ampl = -10
phase = 0

[State target]
type = targetlifeadd
triggerall = numtarget > 0;ターゲットがいる場合
triggerall = anim = 35205
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(7) = 0
value = -10
Kill = 0
[State target]
type = HitAdd
triggerall = numtarget > 0;ターゲットがいる場合
triggerall = anim = 35205
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(7) = 0
value = 1

[State 210, 1]
type = PlaySnd
triggerall = anim = 35205
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(5) > 0
trigger2 = time%18=0
value = 0,15+(Random%3);爆音
;channel = 1;se

[state 4002, 1];
type = explod
triggerall = anim = 35205
trigger1 = Time %5 = 0
trigger1 = animelemtime(5) >= 0
anim = 6000
id = 35102
postype = left
pos = Random%320, 1*(1+(Random%240))
ownpal = 0
bindtime = 1
ignorehitpause = 1
ontop = 1
sprpriority = 2
facing = 1
scale = 2,2


[State -1]
Type     = ChangeState
trigger1 = anim = 35206
trigger1 = animtime = 0
value = 35202

;------------------------------
[Statedef 35210];ｼｭﾝｺﾞｸ　開始
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35212;
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
;trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State Velset]
type = velset
trigger1 = time = 0
X = 3

[State 750, 2]
type = AfterImage
trigger1 = Time = 0
time = 35
trans = add1
timegap = 1
framegap = 3
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
id = 35140
attr = S, NT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = MAF
guard.dist        = 0             ;相手がガード行動をとる距離
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = 1       ;２Ｐより上にカンフーマンが表示される
;p1facing = ifelse (command = "holdfwd", -1, 1) ;前を押したらターンする設定
p1facing = 1;
p2facing = 1          ;？
p1stateno = 35211 + ifelse(Random%2=0,0,3)      ;投げが成功した場合の移動する１Ｐのステート
;p1stateno = 35214       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 66210       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか


[State remexp]
type = removeexplod
trigger1 = time >= 30;
id = 15060

[State 800, 2]
type = ChangeState
Trigger1 = time >= 30
value = 35081
;------------------------------
[Statedef 35211];ｼｭﾝｺﾞｸ　暗転
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 80000;
sprpriority = 2

[State remexp]
type = removeexplod
trigger1 = time = 0;
id = 15060

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = time = 0
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State 810, Width 2-11]
type = Width
trigger1 = time <= 30
edge = 60,0

[State target]
type = targetbind
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time >= 0
pos = 50,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = nobardisplay

[State Anim]
type = changeanim
trigger1 = anim = 80000
value = anim

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
var(6) = 0
[State Varset]
type = varset
Trigger1 = Time = 0
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1;BGMが流れ出したなら
flag = nomusic
flag2 = noBG
flag3 = noFG
[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1;BGMが流れ出したなら
flag = timerfreeze

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA

[State Stop]
type = StopSnd
trigger1 = time = 0
trigger1 = numtarget > 0
channel = 2;BGM

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0,42;がきょおん！
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 3521,0;CLOCK UP
channel = 1;SE

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 430
value = 3521,1;CLOCK OVER
channel = 1;SE

[State AllPal]
type = EnvColor
trigger1 = time >= 60
value = 0, 0, 0
time = 1
under = 0

[State 31020, Explod]
Type = Explod
trigger1 = time >= 60
trigger1 = time%4=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 20+(Random%60), -20-(Random%60)
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
[State 810, Grab Sound]
type = PlaySnd
trigger1 = time >= 60
trigger1 = time%4=0
value = 0,4+(Random%3);がきょおん！
[State target]
type = HitAdd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
trigger1 = time >= 60
trigger1 = time%4=0
value = 1
[State target]
type = targetlifeadd
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time >= 60
trigger1 = time%4=0
value = -2
Kill = 0


[State target]
type = targetlifeadd
triggerall = numtarget > 0;ターゲットがいる場合
Trigger1 = time = 470
value = -120
Kill = 1
[State target]
type = HitAdd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
Trigger1 = time = 470
value = 4

[State 810, Width 2-11]
type = Width
trigger1 = time >= 60
edge = 80,80
[State Vel]
type = velset
trigger1 = time >= 60
trigger1 = Random%64=0
X = -25+(Random%5)
Y = -25+(Random%5)
[State Vel]
;type = velmul
type = turn
triggerall = time >= 60
trigger1 = Random%32=0
trigger2 = gametime%64=0
;X = -1
[State Vel]
type = velmul
;triggerall = time >= 60
trigger1 = Random%32=0
trigger2 = vel Y<0
trigger2 = screenpos Y <= 30
trigger3 = gametime%48=0
Y = -1
[State Pos]
type = posset
trigger1 = time >= 60
trigger1 = pos Y>0
Y = 0

[State 800, 2]
type = ChangeState
Trigger1 = time >= 470
value = 35212
;------------------------------
[Statedef 35212];ｼｭﾝｺﾞｸ　フィニッシュ
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35213;
sprpriority = 2

[State BGMOFF]
type = varset
Trigger1 = !WINKO;まだ勝負がついてないならＢＧＭ復活
var(20) = 0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = WINKO;
flag = nobardisplay
flag2 = nomusic

[State Pos]
type = Posset
trigger1 = time = 0
X = 0
Y = 0

[State target]
type = targetbind
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time = 0
pos = 0,0
[State target]
type = targetstate
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time = 0
value = 66211

[State 4500, Explod];
type = Explod
Trigger1 = winKO
anim = 35214;
id = 15050;
postype = left;p1
pos = 0,0
scale = .7,.7
sprpriority = -5
bindtime = -1
removetime = 180
supermovetime = 60
ownpal = 1

[State Next]
type = StateTypeSet
trigger1 = winKO;勝った場合
trigger1 = time = 80;勝利ポーズへ
statetype = S
movetype = I
physics = S
[State Next]
type = ctrlset
trigger1 = winKO;勝った場合
trigger1 = time = 80;勝利ポーズへ
value = 1

[State 800, 2]
type = ChangeState
Trigger1 = !winKO
Trigger1 = time >= 80
value = 0
ctrl = 1
;------------------------------
[Statedef 35213];ｼｭﾝｺﾞｸ　フィニッシュ２
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35213;
sprpriority = 2

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = nobardisplay

[State 4500, Explod];さらに、自分が特定の技を発動中だった時
type = removeExplod
trigger1 = numexplod(15050)
id = 15050

;------------------------------
[Statedef 35214];ｼｭﾝｺﾞｸ　暗転・パターン２
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 80000;
sprpriority = 2

[State remexp]
type = removeexplod
trigger1 = time = 0;
id = 15060

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = time = 0
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State 810, Width 2-11]
type = Width
trigger1 = time <= 30
edge = 60,0

[State target]
type = targetbind
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time >= 0
pos = 50,0

[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = nobardisplay

[State Anim]
type = changeanim
trigger1 = anim = 80000
value = anim

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
var(6) = 0
[State Varset]
type = varset
Trigger1 = Time = 0
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1;BGMが流れ出したなら
flag = nomusic
flag2 = noBG
flag3 = noFG
[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = 1;BGMが流れ出したなら
flag = timerfreeze

[State MUTEKI]
type = NotHitBy
trigger1 = 1
value = SCA


[State BGMOFF]
type = varset
trigger1 = Time = 0
var(20) = 1

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Time = 0
trigger2 = time >= 60
trigger2 = time%10=0
value = 3521,4;わたしのターン！
Volume = 255
channel = 0;VC

[State Stop]
type = StopSnd
trigger1 = time = 0
trigger1 = numtarget > 0
channel = 2;BGM
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0,42;がきょおん！
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 3521,5;クリティウスの牙
channel = 2;BGM
volume = 255

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 430
value = 3521,2;きのこ
channel = 1;SE

[State AllPal]
type = EnvColor
trigger1 = time >= 60
value = 0, 0, 0
time = 1
under = 0

[State 31020, Explod]
Type = Explod
trigger1 = time >= 60
trigger1 = time%4=0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 20+(Random%60), -20-(Random%60)
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
[State 810, Grab Sound]
type = PlaySnd
trigger1 = time >= 60
trigger1 = time%4=0
value = 0,4+(Random%3);がきょおん！
[State target]
type = HitAdd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
trigger1 = time >= 60
trigger1 = time%4=0
value = 1
[State target]
type = targetlifeadd
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time >= 60
trigger1 = time%4=0
value = -2
Kill = 0

[State 810, Width 2-11]
type = Width
Triggerall = time < 470
trigger1 = time >= 60
edge = 80,80
[State Vel]
type = velset
Triggerall = time < 470
trigger1 = time >= 60
trigger1 = Random%64=0
X = -25+(Random%5)
Y = -25+(Random%5)
[State Vel]
;type = velmul
type = turn
Triggerall = time < 470
triggerall = time >= 60
trigger1 = Random%32=0
trigger2 = gametime%64=0
;X = -1
[State Vel]
type = velmul
Triggerall = time < 470
;triggerall = time >= 60
trigger1 = Random%32=0
trigger2 = vel Y<0
trigger2 = screenpos Y <= 30
trigger3 = gametime%48=0
Y = -1
[State Pos]
type = posset
Triggerall = time < 470
trigger1 = time >= 60
trigger1 = pos Y>0
Y = 0


[State Pos]
type = velset
Trigger1 = time = 470
X = 0
Y = 0
[State Pos]
type = posset
Trigger1 = time = 470
X = 0
Y = 0
[State target]
type = targetbind
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time = 470
pos = 0,0
;一度中央に移動しとく

[State 800, 2]
type = ChangeState
Trigger1 = time >= 470
value = 35215

;------------------------------
[Statedef 35215];みそぎ　落下
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9999;35224;
sprpriority = 2


[State target]
type = HitAdd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
Trigger1 = time = 0
value = 3

[state 451,6]
type = screenbound
trigger1 = 1
value = 0

[State Pos]
type = posset
trigger1 = time = 10
X = 0
Y = -360

[State Pos]
type = velset
trigger1 = time = 10
X = 0
Y = 20

[State anim]
type = Angledraw
trigger1 = time >= 10
value = 0
scale = 5,5

[State anim]
type = changeanim
trigger1 = time = 10
value = 35224

[State GRV]
type = gravity
Trigger1 = time >= 10
trigger1 = 1

[State 810, Grab Sound]
type = PlaySnd
Trigger1 = time >= 10
Trigger1 = pos Y > 0
Trigger1 = vel Y > 0
value = 0,17;ドゴオンッ


[State bind]
type = targetstate
trigger1 = numtarget > 0
trigger1 = time = 0
value = 66210

[State bind]
type = targetstate
trigger1 = numtarget > 0
Trigger1 = time >= 10
Trigger1 = pos Y > 0
Trigger1 = vel Y > 0
value = 66220

[State CRUSH!]
type = EnvShake
Trigger1 = time >= 10
Trigger1 = pos Y > 0
Trigger1 = vel Y > 0
persistent = 0
time = 60
freq = 160
ampl = -10
phase = 0

[State EN]
Type = Explod
Trigger1 = Time = 10
Anim = 35226;シャイン
ID = 35226
PosType = p1
Pos = 0,0
scale = 5,5
ownpal = 1
Bindtime = -1
removetime = -2
Sprpriority = 3
Persistent = 0
Removeongethit = 1
[State Nex]
type = ChangeState
Trigger1 = time >= 10
Trigger1 = pos Y > 0
Trigger1 = vel Y > 0
value = 35216

;------------------------------
[Statedef 35216];みそぎ　着地
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35225;
sprpriority = 2


[State anim]
type = Angledraw
trigger1 = time = [0,60]
value = 0
scale = 5,5
[State anim]
type = Angledraw
trigger1 = time = [60,120]
value = 0
scale = 6-(((time-60)/60.0)*5),6-(((time-60)/60.0)*5)

[State target]
type = targetlifeadd
triggerall = numtarget > 0;ターゲットがいる場合
Trigger1 = time = 0
value = -120
Kill = 1
[State target]
type = HitAdd
trigger1 = numtarget > 0;ターゲットがいる場合はふっとばす
Trigger1 = time = 0
value = 1

[State pos]
type = posset
trigger1 = time = 0
Y = 0

[State BGMOFF]
type = varset
trigger1 = Time = 60
var(20) = 0

[State BGMOFF]
type = StopSnd
trigger1 = Time = 60
channel = 2;BGM

[State anim]
type = changeanim
trigger1 = time = 60
value = 35222
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 60
value = 3521,3;きのこ
channel = 1;SE

[State Return]
type = Changestate
trigger1 = time >= 120
value = 0
ctrl = 1
;------------------------------
[Statedef 66210];相手掴まれ
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5010
velset = 0,0


[State BGMSTOP]
type = AssertSpecial
Trigger1 = 1;
flag = nobardisplay

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State Anim]
type = changeanim
trigger1 = anim = 5010
value = anim

[State Self]
type = SelfState
trigger1 = time >= 800
value = 5030
;------------------------------
[Statedef 66211];だうん
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5110
velset = 0,0

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State Self]
type = changeState
trigger1 = !Alive
value = 5150

[State Self]
type = SelfState
trigger1 = time >= 80
value = 5120

;------------------------------
[Statedef 35220];みそぎ　開始
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35222;
sprpriority = 2

[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 3521,2;きのこ
channel = 1;SE

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = Null;AssertSpecial
trigger1 = Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 50;停止時間 (int)
movetime = 50;停止無視時間 (int)

[State holo]
Type = Explod
Trigger1 = Time = 50
Anim = 35223;残像
ID = 35223
PosType = p1
Pos = 0,0
vel = 1,0
ownpal = 1
Bindtime = 1
removetime = 25
Sprpriority = 2
Persistent = 0
Removeongethit = 1
[State holo]
Type = Explod
Trigger1 = Time = 50
Anim = 35223;残像
ID = 35223
PosType = p1
Pos = 0,0
vel = -1,0
ownpal = 1
Bindtime = 1
removetime = 25
Sprpriority = 2
Persistent = 0
Removeongethit = 1

[State 800, 2]
type = ChangeState
Trigger1 = time > 50
value = 35221

;------------------------------
[Statedef 35221];みそぎ　落下
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,20
ctrl = 0
anim = 35224;
sprpriority = 2

[State GRV]
type = gravity
trigger1 = 1

[state 451,6]
type = screenbound
trigger1 = 1
value = 0

[State Pos]
type = posset
trigger1 = time = 0
X = enemynear,Pos X
Y = -360

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 0,43;チャージＸ８
;channel=1;SE

[State 640, 3]
type = HitDef
trigger1 = time = 0
attr = A, HA
damage    = 320,22
priority = 6, Hit
guardflag = MA
getpower = 108,108
pausetime = 0,0
guard.pausetime = 12,12
sparkno = -1;s4002
sparkxy = -10,-40
hitsound   = s0,17;ドゴオンッ
guard.sparkno = -1;s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0,1
guard.velocity = -2
air.velocity = 0,1
yaccel = 0.55 ;+ (var(3) - 1)*0.1
fall = 1
fall.recovertime = 180
Kill = 1
ID = 600
nochainID = 9999

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State target]
type = targetbind
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = movehit
pos = 0,0
[State bind]
type = targetstate
trigger1 = numtarget > 0
trigger1 = movehit
value = 66220

[State CRUSH!]
type = EnvShake
trigger1 = movehit
persistent = 0
time = 60
freq = 160
ampl = -10
phase = 0

[State EN]
Type = Explod
Trigger1 = Time = 0
Anim = 35226;シャイン
ID = 35226
PosType = p1
Pos = 0,0
ownpal = 1
Bindtime = -1
removetime = -2
Sprpriority = 3
Persistent = 0
Removeongethit = 1
[State Nex]
type = ChangeState
triggerall = movehit
Trigger1 = pos Y > 0
Trigger1 = vel Y > 0
value = 35223
[State Nex]
type = ChangeState
Trigger1 = pos Y > 0
Trigger1 = vel Y > 0
value = 35222
;------------------------------
[Statedef 35222];みそぎ　着地
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35225;
sprpriority = 2

[State pos]
type = posset
trigger1 = time = 0
Y = 0

[State anim]
type = changeanim
trigger1 = time = 60
value = 35222
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 60
value = 3521,3;きのこ
channel = 1;SE

[State Return]
type = Changestate
trigger1 = time >= 120
value = 0
ctrl = 1

;------------------------------
[Statedef 35223];みそぎ　着地（命中時）
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35225;
sprpriority = 2

[State pos]
type = posset
trigger1 = time = 0
Y = 0

[State target]
type = targetbind
triggerall = numtarget > 0;ターゲットがいる場合
trigger1 = time = 0
pos = 0,0

[State anim]
type = changeanim
trigger1 = time = 60
value = 35222
[State 810, Grab Sound]
type = PlaySnd
trigger1 = Time = 60
value = 3521,3;きのこ
channel = 1;SE

[State WPNSUB]
type = Varadd
Trigger1 = Time = 60
var(6) = 0
[State Varset]
type = varset
Trigger1 = Time = 60
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State BGMOFF]
type = varset
trigger1 = Time = 60
var(20) = 0

[State BGMOFF]
type = StopSnd
trigger1 = Time = 60
channel = 2;BGM

[State Return]
type = Changestate
trigger1 = time >= 120
value = 0
ctrl = 1
;------------------------------
[Statedef 66220];だうん
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5170
velset = 0,0

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State Self]
type = changeState
trigger1 = animtime = 0
value = 66221

;--------------------------
[Statedef 66221];だうん
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
anim = 5110
velset = 0,0

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State Self]
type = changeState
trigger1 = !Alive
value = 5150

[State Self]
type = SelfState
trigger1 = time >= 120
value = 5120
;------------------------------
[Statedef 35230];キングベヒんもす！
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35233;
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time <= 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 40
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0
;きんぐべひんもす
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 35232;7000
id = 3523;7000
postype = back
pos = 220, 70
Ontop = 1
sprpriority = 3
Removetime = 40
Scale = .5,.5
Facing = Facing
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3523,0;きんぐべひんもす！
channel=0;vc

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 40;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 4500, Helper]
type = Helper
triggerall = !NumHelper(35235)
trigger1 = time = 1;
helpertype = Normal
name = "Suica"
ID = 35235
stateno = 35235
pos =  -60,0
postype = back
size.xscale = 4
size.yscale = 4
facing = 1
ownpal = 1
removeongethit = 1

[State 210, 1]
type = Null;PlaySnd
trigger1 = time = 1
value = 3523,1;ドカドカドカドカ
;channel=1;SE

[State 210, 1]
type = NotHitBy
Trigger1 = AnimElemtime(3) >= 1
value = SCA
time = 1

[State Exit]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
Ctrl = 1

;------------------------------
[Statedef 35235];キングベヒんもす本体
Type      = S
MoveType  = A
Physics   = N
Ctrl      = 0
Anim      = 35234;
Velset = 6,0
sprpriority = 4

[State 210, 1]
type = PlaySnd
trigger1 = AnimElemtime(1) = 0
trigger2 = AnimElemtime(5) = 0
value = 0,17;ドカドカドカドカ
;channel=1;SE

[State HIT]
type = Hitdef
trigger1 = Time = 0
attr = S, HP
animtype  = Hard
damage    = 250,6;
getpower = 0,0
sprpriority = 1
hitflag = MADFP
guardflag = MA
guard.dist	= 62        ;相手がガード行動をとる距離
pausetime = 3,7
sparkno = S4002
sparkxy = ifelse((Random < 330),-20,ifelse((Random = [330,660]),-10,-5)), ifelse((Random < 330),-20,ifelse((Random = [330,660]),-0,-30))
hitsound   = S0,5
guardsound = S0,7
guard.sparkno = S4023
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -6,-25
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -4.5
air.type = High
air.velocity = -6.5,-22
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 1
Fall.Recover      = 0				;リカバーできるか

[State North]
type = parentVarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State Exit]
type = DestroySelf
trigger1 =  FrontEdgeDist <-220;画面外にいったら消滅

;------------------------------
[Statedef 35240];メイ道　カタパルトキック
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35242;
sprpriority = 2

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time <= 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 40
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3524,0;カタパルトキック！
channel=0;vc

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 40;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[state a];蹴り
type = playsnd
trigger1 = animelemtime(4) = 0;攻撃判定が出る直前
value = 1050,1

;エフェクト
[State 5150, 6] 
type = Explod
trigger1 = animelemtime(4) = 0;
trigger1 = !numexplod(1055)
anim = 1055
id = 1055
Postype     = P1
Pos         = 52,2
scale = .5,.5
vel = 0,0
Vfacing = -1
ownpal = 1
removetime = 20
bindtime = -1
sprpriority = 4
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State 5150, 6] ;後ろ光
type = Explod
trigger1 = animelemtime(4) = 0;
trigger1 = !numexplod(1056)
anim = 1056
id = 1056
Postype     = P1
Pos         = -15,-20
scale = .5,.5
vel = -1,0
ownpal = 1
removetime = 32;終了時消滅
bindtime = 1
Vfacing = -1
sprpriority = 4
ignorehitpause = 1
[State 5150, 6] ;後ろ光
type = Explod
trigger1 = animelemtime(4) = 0;
trigger1 = !numexplod(1057)
anim = 1057
id = 1057
Postype     = P1
Pos         = 0,-40
scale = .5,.5
vel = -.5,-.5
ownpal = 1
Vfacing = -1
removetime = 32;終了時消滅
bindtime = 1
sprpriority = 4
ignorehitpause = 1

[State Velset]
type = Velset
trigger1 = animelemtime(4) = 0
X = 15

[State 210, 1]
type = NotHitBy
Trigger1 = AnimElemtime(4) < 0
value = SCA
time = 1


[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, SA
damage    = 20
animtype  = Medium
hitflag = MAF
guardflag = M
guard.dist        = 115             ;相手がガード行動をとる距離
pausetime = 12,12
sparkno = S4002
sparkxy = -5,0
hitsound   = S0,5
guard.sparkno = S4023
guardsound = S0,7;S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-5
air.velocity = -1.2,-5
guard.velocity = -5
yaccel = .6
fall = 1
Kill = 0

[State Exit]
type = ChangeState
triggerall = !var(59)
trigger1 = movehit
trigger1 = command = "SPWeapons"
value = 35241
Ctrl = 0

[State Next AI]
Type       = ChangeState
TriggerAll = Var(59)
Trigger1   = MoveHit
Trigger1   = Random < 91 * Var(59)
Value = 35241
Ctrl = 0

[State Exit]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
Ctrl = 1

;------------------------------
[Statedef 35241];メイ道　ガイストナックル
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35243;
sprpriority = 2

[State Aura]
type = removeexplod
trigger1 = time = 0
trigger1 = numexplod(1055)
id = 1055

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time <= 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 40
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3524,1;ガイストナックル！
channel=0;vc

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 40;停止時間 (int)
;movetime = 50;停止無視時間 (int)


[State Velset]
type = Velset
trigger1 = animelemtime(5) = 0
X = 10

[State 210, 1]
type = NotHitBy
Trigger1 = AnimElemtime(5) < 0
value = SCA
time = 1

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 0,43;チャージＸ８
;channel=1;SE

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage    = 20
animtype  = Medium
hitflag = MAF
guardflag = M
guard.dist        = 115             ;相手がガード行動をとる距離
pausetime = 12,12
sparkno = S4004
sparkxy = -15,-30
hitsound   = S0,42
guard.sparkno = S4023
guardsound = S0,7;S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-1
air.velocity = -5,-1
guard.velocity = -5
fall = 1
Kill = 0
P2Stateno = 65240;ふっとばし

[State Exit]
type = ChangeState
trigger1 = movehit
;trigger1 = AnimTime = 0
value = 35242
Ctrl = 0
[State Exit]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
Ctrl = 1
;------------------------------
[Statedef 35242];メイ道　スタンバイ
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
;Anim      = 11;
sprpriority = 2

[State Anim]
type = ChangeAnim
trigger1 = anim = 35243
trigger1 = animtime = 0
value = 11

;邪魔立てＯＫ

[State finish];フィニッシュへ
type = ChangeState
triggerall = !var(59)
trigger1 = command = "SPWeapons"
value = 35243

[State Finish AI];フィニッシュへ
Type       = ChangeState
TriggerAll = Var(59)
TriggerAll = Random < 91 * Var(59)
Trigger1   = P2StateNo = 65242
Trigger1   = P2Dist X + P2Dist Y = [17, 43]
Trigger2   = Power < 1000			;なぜか敵が真上にいるときの試み
Trigger2   = P2StateNo != [65240, 65242]
Trigger2   = P2StateType = A
Trigger2   = Target,Vel X = [-1, 1]
Trigger2   = P2BodyDist X = [-5, 5]
Trigger3   = Power < 1000			;敵の攻撃を避けようとする試み
Trigger3   = P2StateNo != [65240, 65242]
Trigger3   = P2MoveType = A
Value = 35243

[State Sio];じつはブレイジングに派生する
type = ChangeState
triggerall = !var(59)
trigger1 = command = "SuparHouki"
trigger1 = power >= 1000
value = 3045

[State Sio];じつはブレイジングに派生する
Type       = ChangeState
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Random < 91 * Var(59)
Trigger1   = P2StateNo = 65242
Trigger1   = P2BodyDist X < 0
Trigger2   = P2StateNo != [65240, 65242]
Value = 3045

[State End];撃たなくてもＯＫ
type = ChangeState
trigger1 = Time >= 180
value = 0
Ctrl = 1
;------------------------------
[Statedef 35243];メイ道　フィニッシュ始動
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35244;
sprpriority = 2

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = Time <= 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 40
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 13,-32;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 40;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State 220, 3]
type = Explod
trigger1 = AnimElem = 2
anim = 4010;手前のケムリオブジェクト。
sprpriority = 5
[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
Trigger1	  = animelemTime(4) < 0;出始め
Trigger1	  = ((target,screenpos X) - (screenpos X)) = [-4.0,4.0];そして、相手が近い
Attr              = A, SA
Damage            = 1, 0			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
guard.dist	= 113        ;相手がガード行動をとる距離
sparkno = S4004
hitsound   = S0,42
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 0,0			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -2.2,-6.5			;ヒット時の相手の移動 地上
Air.Velocity      = -2.2,-6.5			;ヒット時の相手の移動 空中
AirGuard.Velocity = -2.2,-6.5			;ヒット時の相手の移動 空中ガード
Kill              = 0				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0
p1stateno = 35244;フィニッシュ
p2stateno = 65243

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
Trigger1	  = animelemTime(4) >= 0;ぴーく超過
Attr              = A, SA
Damage            = 1, 0			;ダメージ
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
guard.dist	= 113        ;相手がガード行動をとる距離
sparkno = S4002;必殺エフェクト２
hitsound   = S0,5;5,0
guardsound = S0,7;6,0
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 9, 9			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -2.2,-6.5			;ヒット時の相手の移動 地上
Air.Velocity      = -2.2,-6.5			;ヒット時の相手の移動 空中
AirGuard.Velocity = -2.2,-6.5			;ヒット時の相手の移動 空中ガード
Kill              = 0				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 80				;ヒット時のパワー増減
Persistent = 0

[State Pause];すーぱーぽーず後、通常のポーズをちょっとだけ
type = Pause;装備したかどうかでポーズ時間を変動さしる
Trigger1 = animelemTime(4) >= 0;ぴーく超過
trigger1 = movehit
time = 30
;movetime = 10
persistent = 0
ignorehitpause = 1

[State HANTEI SUKA];いずれの条件にも当てはまらなかった場合
type = Explod;すかごぶりん
Trigger1 = animelemTime(4) >= 0;ぴーく超過
trigger1 = movehit
anim = 3500
id = 3500
postype = LEFT
pos = 60, 10
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = 30
supermove = 1
persistent = 0
scale = 2,2
persistent = 0
ignorehitpause = 1

[State HANTEI SUKA];いずれの条件にも当てはまらなかった場合
type = PlaySnd;
Trigger1 = animelemTime(4) >= 0;ぴーく超過
trigger1 = movehit
value = S0,37;ブー
persistent = 0
ignorehitpause = 1

[State -1]
Type     = VelSet
Trigger1 = animelemtime(2) = 0
Y        = -14

[State Grv]
type = Gravity
trigger1 = animelemtime(2) >= 5
[State Grv]
type = veladd
trigger1 = animelemtime(2) >= 5
trigger1 = Vel Y > 0
Y = -.3

[State -1]
Type      = StateTypeSet
Trigger1  = animelemtime(2) = 0
StateType = A
Physics   = N

[State -1]
Type     = PlaySnd
Trigger1 = animelemtime(2) = 0
Value    = s0, 12;ダッシュ
Channel = 1;SE

[State -1]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 35081

;-------------------------------
[StateDef 35244]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
anim = 35245
Velset = 0.01,-0.05

[State yure]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = -4
phase = 0

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
value = -640
absolute = 1;これがないと補正混ざって威力下がるｗ
[State TargetState]
type = TargetState
trigger1 = time = 60
value = 73002

[State nex]
type = changeState
trigger1 = time = 60
value = 35245
;-------------------------------
[StateDef 35245]
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
;------------------------------
[Statedef 65240];メイ道　相手ふっとび１
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
Anim      = 5030;
sprpriority = 2
velset = 0,0

[State muteki];跳ね返るまで追撃不可能
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State push]
type = PlayerPush
trigger1 = 1
value = 0

[State Vel]
type = velset
trigger1 = GetHitVar(hitshaketime) = 0
X = -10
Y = 0

[State Nex]
type = ChangeState
trigger1 = frontedgebodydist <= 20
trigger2 = backedgebodydist <= 20
value = 65241

;------------------------------
[Statedef 65241];メイ道　相手ふっとび２　振動
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
Anim      = 5030;
sprpriority = 2
velset = 0,0

[State muteki];跳ね返るまで追撃不可能
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State push]
type = PlayerPush
trigger1 = 1
value = 0

[State yure]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = -4
phase = 90

[State Nex]
type = ChangeState
trigger1 = time = 10
value = 65242

;------------------------------
[Statedef 65242];メイ道　相手ふっとび３
Type      = A
MoveType  = H
Physics   = N
Ctrl      = 0
Anim      = 5035;
sprpriority = 2
velset = 0,0

[State push]
type = PlayerPush
trigger1 = 1
value = 0

[State turn]
type = turn
trigger1 = time = 0

[State Vel]
type = velset
trigger1 = time = 0
X = -11
Y = -11

[State Gravity]
type = Gravity
trigger1 = 1

[State Next]
type = selfState
trigger1 = pos Y > 0
trigger1 = Vel Y > 0
value = 5110;落下
;------------------------------
[Statedef 65243];メイ道　フィニッシュ命中
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

;------------------------------
[StateDef 35250];ジェノサイドカッターEX
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35254

[State -1]
Type     = NotHitBy
Trigger1 = animelem = 1
Value    = SCA;, AA
Time     = 8;1


[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = Null;AssertSpecial
trigger1 = Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
removetime = 30;-2
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
removetime = 30;-2
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 2
;value = 1,5;
Value    = s3525, 0;ジェノサイドカッター
channel = 0;VC

[State 4500, Explod]
type = Explod
trigger1 = Animelem = 2
ID = 4010;995
postype = P1
pos = -25,-10
anim = 4010;995;バスターのケムリにする
scale = 2,2;.5,.5
supermovetime = 99999
pausemovetime = 99999
ontop = 1
ownpal = 1
removetime = -2
ignorehitpause = 1
removeongethit = 1;食らったらきえます

;アッパー
[State 5150, 6] 
type = null;Explod
trigger1 = animelem = 3
anim = 35255
id = 1101
Postype     = P1
Pos         = 0,0
vel = 0,0
ownpal = 1
removetime = -2
bindtime = -1
sprpriority = 4
ignorehitpause = 1
removeongethit = 1;食らったらきえます
;カットアニメ
[State 4500, Helper];ヘルパー扱い
type = Helper
trigger1 = animelem = 3
helpertype = Normal
name = "CUTTER Helper"
ID = 35255
stateno = 35255
pos =  0,0;
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State -1, HitDef]
Type = HitDef
Trigger1          = animelem = 3
Attr              = A, SA
Damage            = 300, 50			;ダメージ
AnimType          = Heavy			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
guard.dist	= 113        ;相手がガード行動をとる距離
sparkno = Sifelse(Random < 555,4037,4035);斬エフェクトを実装する
hitsound   = S0,41;セイバーヒット
guardsound = S0,7;これもバスターのものを
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 0, 9			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -20,-12			;ヒット時の相手の移動 地上
Air.Velocity      = -20,-8			;ヒット時の相手の移動 空中
AirGuard.Velocity = -1.5,-4.5			;ヒット時の相手の移動 空中ガード
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 0				;ヒット時のパワー増減
Persistent = 0
p2stateno = 35052;相手に参照させるステート

[State BOMB];相手がこの一撃で死ぬ場合、爆発をプラス
Type = Explod
trigger1 = WinKO
trigger1 = !numexplod(6002)
anim = 6002;はでな爆発
ID = 6002
postype = p2
pos = 30,-30
;vel = .1,0
sprpriority = 5
ownpal = 1
facing = -1
bindtime = -1
ignorehitpause = 1

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[state 451,6]
type = screenbound
trigger1 = movehit;当たった
value = 0

[state 451,6]
type = changestate
trigger1 = movehit;当たった
;trigger1 = AnimTime = 0
trigger1 = backedgebodydist <= -20
value = 710
ctrl = 1

[State -1]
Type     = PlaySnd
Trigger1 = Time = 3
Value    = s3525, 1;ジェノサイドカッター
Channel = 1;SE

[State End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
[StateDef 35255];ジェノサイドカッター　エフェクトヘルパー
Type      = A
MoveType  = I
Physics   = N
Ctrl      = 0
velset = 0,0
Anim      = 35255
sprpriority = 4

[State parent]
type = varset
trigger1 = time = 0
var(10) = parent,stateno

[State Bind]
type = bindtoparent
trigger1 = 1
pos = 0,0
postype = P1

[State eff]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State Anm]
type = changeanim
triggerall = animelemtime(2)>0
trigger1 = parent,stateno = var(10) && parent,animelemtime(3) >= 0
trigger1 = parent,stateno = var(10) && parent,animelemtime(5) < 0
value = 35255
elem = 1
[State Anm]
type = changeanim
triggerall = animelemtime(4)>0
trigger1 = parent,stateno = var(10) && parent,animelemtime(5) >= 0
trigger1 = parent,stateno = var(10) && parent,animelemtime(6) < 0
value = 35255
elem = 3

[State End]
type = destroyself
trigger1 = animtime = 0
trigger2 = parent,stateno != var(10)
;------------------------------
[StateDef 35260];いちごクロス１
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35262

[State -1];発動中無敵
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1


[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
removetime = 30;-2
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
removetime = 30;-2
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
;movetime = 50;停止無視時間 (int)

[State Rnd]
type = varset
trigger1 = time = 0
var(15) = Random%2;0岡崎　1国崎

[State ]
type = playsnd
;triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 2
Value    = s3526, var(15);いやっほーぅ！
;channel = 0;VC

;苺発射ヘルパー
[State 4500, Helper];ヘルパー扱い
type = Helper
trigger1 = animelem = 3
helpertype = Normal
name = "ICHIGO Helper"
ID = 35265
stateno = 35265
pos =  0,0;
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999


[State BOMB];相手がこの一撃で死ぬ場合
Type = Explod
trigger1 = WinKO
trigger1 = !numexplod(65267)
anim = 65267+var(15)
id = 65267;
pos = 0,0
postype = left
removetime = 150
sprpriority = 5
ontop = 1
bindtime = -1

[State End]
type = changestate
trigger1 = time >= 300;５秒後
value = 35261
ctrl = 0
;------------------------------
[StateDef 35261];いちごクロス２
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35263

[State End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;------------------------------
[StateDef 35265];いちごヘルパー
Type      = A
MoveType  = I
Physics   = N
Ctrl      = 0
velset = 0,0
Anim      = 9999
sprpriority = 4

[State -1];発動中無敵
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1

[State 5150, 6] ;WING
type = Explod
trigger1 = Time = 0;animelemtime(10) = 0
anim = 3095;4028
;id = 3090
;pos = 0,0
Postype     = P1
Pos         = 3,20
vel = 0,0
scale = 2,2
ownpal = 0;1
sprpriority = 7
ignorehitpause = 1
removeongethit = 1;食らったらきえます
supermovetime = 99999999
pausemovetime = 99999999

[State parent]
type = varrandom
trigger1 = (time%2) = 0
v = 10
range = 250,-250
[State parent]
type = varrandom
trigger1 = (time%2) = 0
v = 11
range = 25,-25

[State 220, 4] ;波紋
type = Projectile
trigger1 = (time%4)=0;タイミングはてきとーに。
projid = 35264
projanim = 35264
projhitanim = -1;
projremanim = 35264
offset = var(10),var(11)
velocity = 0,0
; HitDef
attr = S, SP
animtype = Light
damage    = 13
;facing = ifelse(facing = -1,1,facing)
projscale = 1,1
projremove = 0
projremovetime = 30
hitflag = MAFD
guardflag = MAF
pausetime = 0,16
sparkno = 6000
guard.sparkno = S4023
sparkxy = 69,-47;-35
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6*ifelse(var(11)>0,1,-1),-6
air.velocity = 4*ifelse(var(11)>0,1,-1),-4
air.fall = 1
fall = 1

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 225,0,10
;mul = 255,178,128
color = 0;

[State 4500, Explod]
type = Explod
trigger1 = (time%4)=0;タイミングはてきとーに。
ID = 35265
postype = P1
pos = var(10),var(11)
anim = 65260+(random%5)
scale = 1.4*ifelse(var(11)>0,1,.5),1.4*ifelse(var(11)>0,1,.5)
supermovetime = 99999
pausemovetime = 99999
facing = ifelse(var(10)>0,1,-1)
ontop = 1
ownpal = 0;1
removetime = -2
sprpriority = ifelse(var(11)>0,4,-3)
ignorehitpause = 1

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time = 0
anim = 65265
id = 15050;
postype = left;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
ownpal = 0;1
removeongethit = 1

[State -1]
Type     = EnvShake
trigger1 = (time%8)=0;タイミングはてきとーに。
Time     = 10
Freq     = 80
Ampl     = 3
[State 810, Grab Sound]
type = PlaySnd
trigger1 = (time%8)=0;タイミングはてきとーに。
value = 0, 17;爆発音
channel = 5+(time%8)

[State Bind]
type = bindtoparent
trigger1 = 1
pos = 0,0
postype = P1

[State eff]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State End]
type = destroyself
trigger1 = time >= 300

;------------------------------
[StateDef 35270];GAME OVER
type    = A
movetype= H
physics = N;A
Ctrl      = 0
Anim      = 9999
velset = 0,0

;グロ爆発回避スイッチ
[State SW]
type = varset
trigger1 = 1
var(15) = 0;0-OFF 1-ON　ONの場合グロ描写回避

[State -1];発動中無敵
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1

;ヘルパーを撒き散らしてやられステートへ
[State 4500, Helper];ヘルパー扱い
type = Helper
trigger1 = time = 0
helpertype = Normal
name = "YUKKURI Helper"
ID = 65270
stateno = 65270
pos =  0,-10;
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State Dead]
type = lifeset
trigger1 = 1
value = 0;しぼんぬ
[State Bonus];ウルトラマグナスをリスペクトする！
type = poweradd
trigger1 = 1
value = 9999

[State Change]
Type      = StateTypeSet
trigger1 = !Alive
Trigger1  = Time = 10
type    = L
movetype= H
physics = N

[State Vel]
type = Velset
triggerall = !Alive
trigger1 = Time > 48
X = 0
Y = 0

[State Vel]
type = Posset
triggerall = !Alive
trigger1 = Time > 48
Y = 0

[State 1000, 1]
type = stopSnd
;trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time = 0
channel = 2;BGMチャンネル

[State Inv]
type = AssertSpecial
trigger1 = 1;消滅
flag = NoShadow
flag2 = Invisible
flag3 = nokosnd

[State Inv]
type = AssertSpecial
trigger1 = 1;
flag = nokoslow
flag2 = roundnotover

[State Change]
type = ChangeState
trigger1 = !Alive
trigger1 = Time >= 300;5秒間
value = 5150

;----------------------------------------------------------------------------
;ゆっくりしんでいってね！（アフロンさんのステートを使わせてもらっています。ありがとうございます）
[Statedef 65270]
type = A
ctrl = 0
anim = 35272
velset = -6+(random%120)*0.1,-8-(random%40)*0.1
movetype = I
physics = N
sprpriority = 10

[state a]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State -1];発動中無敵
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1

[State Inv]
type = AssertSpecial
trigger1 = 1;
trigger1 = time <= 470
flag = nokoslow
flag2 = roundnotover
;---------------------[変数]
;グロ回避スイッチ（このステート内）
[State SW]
type = varset
trigger1 = 1
var(15) = root,var(15)

[state a]
type = changeanim
trigger1 = time = 0
trigger1 = var(15);グロ回避スイッチＯＮ
value = 9999
;---------------------[速度]
[state a]
type = veladd
trigger1 = 1
y = 0.5

;---------------------[攻撃]

;---------------------[]
[state -2,a];がめおべら
type = Explod
;trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time = 0
anim = 35278
id = 35278
postype = left
bindtime = -1
pos = 0,0
sprpriority = 97
removetime = 500
ownpal = 1
ontop = 1
scale = 0.4,0.4

[state a]
type = null;removeexplod
trigger1 = root,stateno >= 10180
trigger1 = root,stateno < 10189
id = 35278

;---------------------
[state RND]
type = varset
trigger1 = 1
var(10) = random
[state RND]
type = varset
trigger1 = 1
var(11) = random
[state RND]
type = varset
trigger1 = 1
var(12) = random
;---------------------[エフェクト]
[State explod];血
type = Explod
trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time <= 10
trigger1 = time%2=0
anim = 65270+var(10)%7
id = 65270
sprpriority = 4
postype = p1
facing = ifelse(var(10)%2,1,-1);1
pos = 0,0
vel = ifelse(var(10)%7=4,0,-5+(random%100)*0.1)*ifelse(var(10)%2,-1,1),-1;-10
accel = 0,0;.4
bindtime = 1
supermove = 0
under = 0
scale = 1.5,1.5

[State explod];血
type = Explod
trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time <= 10
trigger1 = time%2=0
anim = 65270+var(11)%7
id = 65270
sprpriority = 4
postype = p1
facing = ifelse(var(11)%2,1,-1);1
pos = 0,0
vel = ifelse(var(10)%7=4,0,-5+(random%100)*0.1)*ifelse(var(11)%2,-1,1),-1;-10
accel = 0,0;.4
bindtime = 1
supermove = 0
under = 0
scale = 1.5,1.5

[State explod];血
type = Explod
trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time <= 10
trigger1 = time%2=0
anim = 65270+var(12)%7
id = 65270
sprpriority = 4
postype = p1
facing = ifelse(var(12)%2,1,-1);1
pos = 0,0
vel = ifelse(var(10)%7=4,0,-5+(random%100)*0.1)*ifelse(var(12)%2,-1,1),-1;-10
accel = 0,0;.4
bindtime = 1
supermove = 0
under = 0
scale = 1.5,1.5

[State explod];グロ回避
type = Explod
trigger1 = var(15);グロ回避スイッチ
trigger1 = time <= 10
trigger1 = time%2=0
anim = 6000
id = 6000
sprpriority = 4
postype = p1
facing = ifelse(var(10)%2,1,-1);1
pos = 0,0
vel = ifelse(var(10)%7=4,0,-5+(random%100)*0.1)*ifelse(var(10)%2,-1,1),-1;-10
accel = 0,0;.4
bindtime = 1
supermove = 0
under = 0
scale = 1.5,1.5

;---------------------[]
[state a];部品
type = Helper
trigger1 = time = 0
id = 65271
name = "hom"
sprpriority = -2
pos = -7,-13
postype = p1
stateno = 65271
helpertype = normal
pausemovetime = 0
keyctrl = 0 
ownpal = 1

[state a];部品
type = Helper
trigger1 = time = 0
id = 65272
name = "hom"
sprpriority = -2
pos = 7,-13
postype = p1
stateno = 65271
helpertype = normal
pausemovetime = 0
keyctrl = 0 
ownpal = 1

[state a];部品
type = Helper
trigger1 = time = 0
id = 65273
name = "hom"
sprpriority = -2
pos = -9,-46
postype = p1
stateno = 65271
helpertype = normal
pausemovetime = 0
keyctrl = 0 
ownpal = 1

[state a];部品
type = Helper
trigger1 = time = 0
id = 65274
name = "hom"
sprpriority = -2
pos = 10,-46
postype = p1
stateno = 65271
helpertype = normal
pausemovetime = 0
keyctrl = 0 
ownpal = 1
;---------------------[効果音]
[State 1000, 1]
type = stopSnd
;trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time = 0
channel = 2;BGMチャンネル

[State 1000, 1]
type = PlaySnd
trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time = 0
value = 3527, 0

[State 1000, 1]
type = PlaySnd
;trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time = 10
value = 3527, 1
channel = 2;BGMチャンネル

[State 1000, 1]
type = PlaySnd
trigger1 = var(15);グロ回避スイッチON
trigger1 = time = 0
value = 0, 17

;---------------------[変数]
[state a]
type = varadd
trigger1 = time >= 500
v = 1
value = 16

[state a]
type = null;Trans
trigger1 = 1
trans = addalpha
alpha = 256-var(1),var(1)

;---------------------[速度]
[state a]
type = velset
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
x = 0
y = 0

[state a]
type = posset
trigger1 = Pos Y >= 0
y = 0

;---------------------[]
[state a]
type = angleset
trigger1 = time = 0
value = random%360

[state a]
type = angledraw
trigger1 = 1

;---------------------[]
[state a];消えなくしておく
type = destroyself
trigger1 = var(1) >= 256
trigger1 = var(15);グロ回避スイッチＯＮ
;----------------------------------------------------------------------------
;ゆっくりバラバラにされていってね！
[Statedef 65271]
type = A
ctrl = 0
anim = 35274
velset = -6+(random%120)*0.1,-6-(random%60)*0.1
movetype = I
physics = N
sprpriority = 10

[State -1];発動中無敵
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1

;---------------------[変数]

;グロ回避スイッチ（このステート内）
[State SW]
type = varset
trigger1 = 1
var(15) = root,var(15)

[state a]
type = changeanim
trigger1 = time = 0
trigger1 = ishelper(65272);反対の手
value = 35275
[state a]
type = changeanim
trigger1 = time = 0
trigger1 = ishelper(65273);足１
value = 35276
[state a]
type = changeanim
trigger1 = time = 0
trigger1 = ishelper(65274);足２
value = 35277


[state a]
type = changeanim
trigger1 = time = 0
trigger1 = var(15);グロ回避スイッチＯＮ
value = 9999

;---------------------[速度]
[state a]
type = veladd
trigger1 = 1
y = 0.5

;---------------------[変数]
[state a]
type = varadd
trigger1 = time >= 500
v = 1
value = 16

[state a]
type = null;Trans
trigger1 = 1
trans = addalpha
alpha = 256-var(1),var(1)

;---------------------
[state RND]
type = varset
trigger1 = 1
var(10) = random
[state RND]
type = varset
trigger1 = 1
var(11) = random
[state RND]
type = varset
trigger1 = 1
var(12) = random
;---------------------[エフェクト]
[State explod];血
type = Explod
trigger1 = !var(15);グロ回避スイッチOFF
trigger1 = time <= 10
trigger1 = time%2=0
anim = 65270+var(10)%7
id = 65270
sprpriority = 4
postype = p1
facing = ifelse(var(10)%2,1,-1);1
pos = 0,0
vel = ifelse(var(10)%7=4,0,-5+(random%100)*0.1)*ifelse(var(10)%2,-1,1),-1;-10
accel = 0,0;.4
bindtime = 1
supermove = 0
under = 0
scale = 1.5,1.5

[State explod];グロ回避
type = Explod
trigger1 = var(15);グロ回避スイッチ
trigger1 = time <= 10
trigger1 = time%2=0
anim = 6000
id = 6000
sprpriority = 4
postype = p1
facing = ifelse(var(10)%2,1,-1);1
pos = 0,0
vel = ifelse(var(10)%7=4,0,-5+(random%100)*0.1)*ifelse(var(10)%2,-1,1),-1;-10
accel = 0,0;.4
bindtime = 1
supermove = 0
under = 0
scale = 1.5,1.5

;---------------------[ヘルパー]

;---------------------[効果音]
;---------------------[速度]
[state a]
type = velset
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
x = 0
y = 0

[state a]
type = posset
trigger1 = Pos Y >= 0
y = 0

;---------------------[]
[state a]
type = angleset
trigger1 = time = 0
value = random%360

[state a]
type = angledraw
trigger1 = 1

;---------------------[]
[state a]
type = destroyself
trigger1 = var(1) >= 256
trigger1 = var(15);グロ回避スイッチＯＮ

;------------------------------
[StateDef 35280];ダークパワー１
Type      = S
MoveType  = A
Physics   = S
Ctrl      = 0
Anim      = 35262

[State -1];発動中無敵
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1


[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
removetime = 30;-2
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10051
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
removetime = 30;-2
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0


;だーくぱわー
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 35288;7000
id = 3523;7000
postype = back
pos = 220, 70
Ontop = 1
sprpriority = 3
Removetime = 40
Scale = .5,.5
Facing = Facing
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
movetime = 30;停止無視時間 (int)

;ココラニ特殊背景関連の記述を？
[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 300
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

;--------------------数値変化
[State 3036, VarSet]
Type = VarSet
Trigger1 = Time = 0
;trigger1 = animelemtime(1) = 0
V = 15
Value = 0

[State 3036, VarAdd]
Type = VarAdd
Trigger1 = Time > 0
;Trigger1 = Time <= 43
Trigger1 = TimeMod = 6, 0
V = 15
Value = 45

[State ]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = AnimElem = 2
Value    = s3528,0;ダークパワー
channel = 0;VC

;発射ヘルパー
[State 4500, Helper];ヘルパー扱い
type = Helper
trigger1 = animelemtime(6) >= 0
Trigger1 = TimeMod = 6, 1
helpertype = Normal
name = "DRAK Helper"
ID = 65280
stateno = 65280
pos =  -7,-51;
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State ]
type = playsnd
trigger1 = animelemtime(6) >= 0
Trigger1 = TimeMod = 6, 1
Value    = 0,8;
channel = 1;SE

[State anm]
type = changeanim
trigger1 = time = 80;
value = 35262
elem = 1

[State End]
type = changestate
trigger1 = time >= 160;160F後
value = 35281;35261
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 35281];ダークパワー２
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 35283;
sprpriority = 2

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 31020, Explod]
Type = null;Explod
trigger1 = animelem = 9
SprPriority = 3
OnTop = 1
PosType = P1
Pos = 48,-48
scale = 1,1
ID = 31000
Anim = 65285
ignorehitpause = 1
[State 4500, Helper]
type = Helper
trigger1 = animelemtime(9) = 0
helpertype = Normal
name = "DRAK Helper"
ID = 35283
stateno = 35283
pos =  48,-48
postype = p1
facing = 1
ownpal = 1
removeongethit = 1
supermovetime = 99999
pausemovetime = 99999

[State 640, 3]
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
trigger4 = animelem = 12
trigger5 = animelem = 13
attr = A, SA
damage    = 24,2
priority = 6, Hit
guardflag = HA
getpower = 108,108
pausetime = 6,12
guard.pausetime = 5,12
sparkno = -1;s4002
sparkxy = -10,-40
hitsound   = s0,17
guard.sparkno = s4023
guardsound = s0,7
animtype = up
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
Ground.Velocity   = -20,-12			;ヒット時の相手の移動 地上
Air.Velocity      = -20,-8			;ヒット時の相手の移動 空中
AirGuard.Velocity = -1.5,-4.5			;ヒット時の相手の移動 空中ガード
guard.velocity = -11
air.velocity = -2,-10
yaccel = 0.55 ;+ (var(3) - 1)*0.1
fall = 1
fall.recovertime = 60
ID = 600
nochainID = 9999

;七星
[State North]
type = VarAdd;当たったら星を奪う
trigger1 = movehit
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[state 451,6]
type = screenbound
trigger1 = movehit;当たった
trigger1 = animelemtime(13) > 0
value = 0

[state 451,6]
type = changestate
trigger1 = movehit;当たった
trigger1 = animelemtime(13) > 0
trigger1 = backedgebodydist <= -20
value = 710
ctrl = 1

[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemtime(1) = 0
value = 3528,1;ついげきの
channel = 0;VC
[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemtime(10) = 0
value = 3528,0;ダークパワー！
channel = 0;VC
[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 10
value = 0,43;チャージＸ８
;channel=1;SE

[State 31020, Explod]
Type = Explod
trigger1 = time%3 = 1
trigger1 = animelemtime(9) >= 0
trigger1 = animelemtime(13) < 0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = Random%365,-(Random%150)
ID = 31000
Anim = 6000
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = animelem = 9
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 69,-76
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = animelem = 10
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 103,-30
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = animelem = 11
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 162,-84
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = animelem = 12
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 206,-11
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1
[State 31020, Explod]
Type = Explod
trigger1 = animelem = 13
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = 256,-133
ID = 31000
Anim = 6000
persistent = 0
ignorehitpause = 1

[State remexp]
type = removeexplod
trigger1 = animtime = 0;
id = 15060

[State exit]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------
;最後の横サンダー用
[StateDef 35283]
Type = A
MoveType = A
Physics = N
Anim = 65285
SprPriority = 10

[State 4501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
;flag2 = Invisible
ignorehitpause = 1

[State Posfv_X]
type = varset
trigger1 = time = 0
fvar(0) = parentdist X;Pos X;X
[State Posfv_Y]
type = varset
trigger1 = time = 0
fvar(1) = parentdist Y;Pos Y;Y

[State 4501, PosSet]
type = PosSet
trigger1 = 1;parent, facing = 1
x = parent, Pos X - (fvar(0) * parent, facing)
y = parent, Pos Y - fvar(1)
ignorehitpause = 1

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1

[State 4501, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 4501, DestroySelf]
type = DestroySelf
trigger1 = Animtime = 0

;■■■■■■■■■■■■■■■■■■■■■■■■■
;Natchel氏の霊夢のヘルパーを使用しております。
;65280　展開
;65285　追尾
;	[ヘルパー]夢想封印　初期設定
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65280]
Type = A
MoveType = A
Physics = N
Anim = 65282
SprPriority = 10

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1
;--------------------諸数値初期化
[State 6430, VarSet];発射角度
Type = VarSet
Trigger1 = Time = 0
V = 1
Value = Root,var(15);Var(20)

[State 6430, VarSet];Time
Type = VarSet
Trigger1 = Time = 0
V = 2
Value = 0

[State 6430, VarSet];ヒット判定
Type = VarSet
Trigger1 = Time = 0
V = 4
Value = 0

[State 6430, VarSet];相手吹き飛び方向
Type = VarSet
Trigger1 = Time = 0
V = 7
Value = IfElse((Root,P2Dist X <0), -1, 1)

[State 6430, VarSet];拡大率
Type = VarSet
Trigger1 = Time = 0
FV = 1
Value = 0.15

;--------------------速度設定
[State 6430, VelSet] 
Type = VelSet
Trigger1 = Time = 0
X = 10*Cos(-Pi*(1.0*Var(1)/180))
Y = 10*Sin(-Pi*(1.0*Var(1)/180))

;--------------------回転の設定
[State 6430, AngleSet]
Type = null;AngleSet
Trigger1 = Time = 0
Value = 0
;--------------------次へ
[State 6430, ChangeState]
Type = ChangeState
Trigger1 = Time = 0
Value = 65281

;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　展開　攻撃
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;  Var(20)	グレイズエフェクトランダム
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65281]
MoveType = A

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1
;========== 共通の処理 ==========

;--------------------エフェクトランダム
[State 6431, VarRandom] 
Type = VarRandom
Trigger1 = Time = 0
V = 20
Range = 0, 3

;--------------------相殺処理
[State 6431, HitBy]
Type = HitBy
Trigger1 = 1
Value = SCA, AP
IgnoreHitPause = 1

[State 6431, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP,AT
Stateno = 65283
IgnoreHitPause = 1


;========== 攻撃時の処理 ==========

;--------------------攻撃設定
[State 6431, HitDef]
Type = HitDef
Trigger1 = MoveType = A
Trigger1 = Var(4) = 0
Trigger1 = !MoveContact
;hitsound   = S0,17;S5,1
guardsound = S0,7;S6,0
Persistent = 0
Attr = A, HP
HitFlag = MAF
GuardFlag = MA
AnimType = Hard
Air.AnimType = Back
;Priority = 6, Hit
Damage = Floor(4), 1
PauseTime = 0, 10
Ground.Type = High
Ground.SlideTime = 60
Ground.HitTime = 80
Guard.HitTime = 22
Air.HitTime  = 80
Guard.CtrlTime = 22
Guard.Dist = 50
Ground.Velocity = -2*Var(7), -8
Guard.Velocity = -6*Var(7)
Air.Velocity = -2*Var(7),-8
AirGuard.Velocity = -3*Var(7),-4
AirGuard.CtrlTime = 20
P1SprPriority = 10
Fall = 1
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 80
Guard.Kill = 1
HitOnce = 1
GetPower = 0, 0
GivePower = 0, 0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0

;--------------------ヒット後処理
[State 31020, Explod]
Type = Explod
Trigger1 = MoveType = A
Trigger1 = MoveHit
Trigger1 = NumEnemy > 0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = Floor(0.5*P2Dist X), Floor(0.5*(P2Dist Y+EnemyNear,Const(Size.Mid.Pos.Y)))
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
ignorehitpause = 1


[State ]
type = playsnd
Trigger1 = MoveType = A
Trigger1 = MoveHit
Trigger1 = NumEnemy > 0
Value    = 0,17;ひっと
channel = 0;VC

[State 6435, Helper];ガードエフェクト
Type = Explod
Trigger1 = MoveType = A
Trigger1 = MoveGuarded
Trigger1 = NumEnemy > 0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = Floor(0.5*P2Dist X), Floor(0.5*(P2Dist Y+EnemyNear,Const(Size.Mid.Pos.Y)))
ID = 31000
Anim = 4023;4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
ignorehitpause = 1

[State 6431, VarSet];ヒット判定
Type = VarSet
Trigger1 = MoveType = A
Trigger1 = MoveContact
V = 4
Value = 1

[State 6431, ChangeState]
Type = ChangeState
Trigger1 = MoveType = A
Trigger1 = MoveContact
Value = 65283

;========== 共通の処理 ==========

;--------------------消滅条件
[State 6431, ChangeState]
Type = ChangeState
Trigger1 = Root,MoveType = H && Root,StateNo != [35280,35289]
Value = 65289

;--------------------ホーミングへ
[State 6431, ChangeState]
Type = ChangeState
Trigger1 = Var(2) = 25
Value = 65284

;--------------------速度変化
[State 6431, VelMul] 
Type = VelMul
Trigger1 = Var(2) <= 10
X = 0.96
Y = 0.96

[State 6431, VelMul] 
Type = VelMul
Trigger1 = Var(2) > 10
X = 0.88
Y = 0.88

;--------------------回転の変化
[State 6431, AngleDraw]
Type = AngleDraw
Trigger1 = 1
Scale = FVar(1), FVar(1)

[State 6431, AngleAdd]
Type = AngleSet
Trigger1 = 1
Value = 0
[State 6431, AngleAdd]
Type = null;AngleAdd
Trigger1 = 1
Value = -10

;--------------------透過設定
[State 6431, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoShadow

[State 6431, Trans]
Type = null;Trans
Trigger1 = 1
IgnoreHitPause = 1
Trans = Add

;--------------------拡大率増加
[State 6431, VarAdd]
Type = VarAdd
Trigger1 = FVar(1) < 1.0;0.75
FV = 1
Value = 0.10

;--------------------時間経過
[State 6431, VarAdd];Time
Type = VarAdd
Trigger1 = 1
V = 2
Value = 1

;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　展開　無力状態
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65283]
MoveType = I

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1

;--------------------消滅条件
[State 6433, ChangeState]
Type = ChangeState
Trigger1 = Root,MoveType = H && Root,StateNo != [35280,35289]
Value = 65289

;--------------------ホーミングへ
[State 6433, ChangeState]
Type = ChangeState
Trigger1 = Var(2) = 25
Value = 65284

;--------------------復帰
[State 6433, ChangeState]
Type = ChangeState
Trigger1 = Time > 1
Trigger1 = Var(4) = 0
Value = 65281

;--------------------速度変化
[State 6433, VelMul] 
Type = VelMul
Trigger1 = Var(2) <= 10
X = 0.96
Y = 0.96

[State 6433, VelMul] 
Type = VelMul
Trigger1 = Var(2) > 10
X = 0.88
Y = 0.88

;--------------------回転の変化
[State 6433, AngleDraw]
Type = AngleDraw
Trigger1 = 1
Scale = FVar(1), FVar(1)

[State 6431, AngleAdd]
Type = AngleSet
Trigger1 = 1
Value = 0
[State 6431, AngleAdd]
Type = null;AngleAdd
Trigger1 = 1
Value = -10

;--------------------透過設定
[State 6433, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 6433, Trans]
Type = null;Trans
Trigger1 = 1
Trans = Add

;--------------------拡大率増加
[State 6433, VarAdd]
Type = VarAdd
Trigger1 = FVar(1) < 1.0;0.75
FV = 1
Value = 0.10

;--------------------時間経過
[State 6433, VarAdd];Time
Type = VarAdd
Trigger1 = 1
V = 2
Value = 1

[State 6433, NotHitBy]
Type = NotHitBy
Trigger1 = 1
Value = SCA

;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　ホーミング　初期設定
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65284]
MoveType = A
VelSet = 0, 0

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1

;--------------------消滅条件
[State 6434, ChangeState]
Type = ChangeState
Trigger1 = Root,MoveType = H && Root,StateNo != [35280,35289]
Value = 65289

;--------------------速度設定
[State 6434, VarSet] 
Type = VarSet
Trigger1 = Time = 0
FV = 2
Value = 0.0

;--------------------時間初期化
[State 6434, VarSet];Time
Type = VarSet
Trigger1 = Time = 0
V = 2
Value = 0

;--------------------ヒット回数初期化
[State 6434, VarSet]
Type = VarSet
Trigger1 = Time = 0
V = 6
Value = 3;3回当たると消える
;Value = 2;2回当たると消える

;--------------------相手がいる場合：相手の位置を取得
[State 6434, VarSet]
Type = VarSet
Trigger1 = NumEnemy > 0
FV = 3
Value = P2Dist X

[State 6434, VarSet]
Type = VarSet
Trigger1 = NumEnemy > 0
FV = 4
Value = (P2Dist Y)+(EnemyNear,Const(Size.Mid.Pos.Y))

;--------------------相手がいる場合：相手への角度を計算
[State 6434, VarSet]
Type = VarSet
TriggerAll = NumEnemy > 0
Trigger1 = 1000*Abs(FVar(3)) > Abs(FVar(4))
FV = 5
Value = Atan(FVar(4)/FVar(3))*180/Pi

[State 6434, VarSet]
Type = VarSet
TriggerAll = NumEnemy > 0
Trigger1 = 1000*Abs(FVar(3)) <= Abs(FVar(4))
FV = 5
Value = IfElse(FVar(4)>0, 90, -90)

[State 6434, VarAdd]
Type = VarAdd
TriggerAll = NumEnemy > 0
Trigger1 = FVar(3) < 0
FV = 5
Value = 180

;--------------------相手がいない場合：そのままの角度を保つ
[State 6434, VarSet]
Type = VarSet
Trigger1 = NumEnemy = 0
Trigger2 = NumEnemy = 1
Trigger2 = P2StateNo = 0
Trigger2 = P2Life = 0
FV = 5
Value = -1.0*Var(1)

;--------------------相手吹き飛び方向設定
[State 6434, VarSet]
Type = VarSet
Trigger1 = Time = 0
V = 7
Value = IfElse((Root,P2Dist X <0), -1, 1)

;--------------------次へ
[State 6434, ChangeState]
Type = ChangeState
Trigger1 = Time = 0
Value = 65285

;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　ホーミング　攻撃
;--------------------------------------------------
;各Varについて
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;  Var(20)	グレイズエフェクトランダム
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65285]
MoveType = A

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1

;========== 共通の処理 ==========

;--------------------相殺処理
[State 6435, HitBy]
Type = HitBy
Trigger1 = 1
Value = SCA, AP
IgnoreHitPause = 1

[State 6435, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP,AT
Stateno = 65287
IgnoreHitPause = 1

;========== 攻撃時の処理 ==========

;--------------------攻撃設定
[State 6435, HitDef]
Type = HitDef
Trigger1 = MoveType = A
Trigger1 = !MoveContact
Persistent = 0
;hitsound   = S0,17;S5,1
guardsound = S0,7;S6,0
Attr = A, HP
HitFlag = MAF
GuardFlag = MA
AnimType = Hard
Air.AnimType = Back
;Priority = 6, Hit
Damage = Floor(6), 2
PauseTime = 10, 10
Ground.Type = High
Ground.SlideTime = 60
Ground.HitTime = 80
Guard.HitTime = 22
Air.HitTime  = 80
Guard.CtrlTime = 22
Guard.Dist = 50
Ground.Velocity = -2*Var(7), -8
Guard.Velocity = -6*Var(7)
Air.Velocity = -2*Var(7),-8
AirGuard.Velocity = -3*Var(7),-4
AirGuard.CtrlTime = 20
P1SprPriority = 10
Fall = 1
Air.Fall = 1
Fall.Recover = 1
Fall.RecoverTime = 80
Guard.Kill = 1
HitOnce = 1
GetPower = 0, 0
GivePower = 0, 0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0

;--------------------ヒット後処理

[State 31020, Explod]
Type = Explod
Trigger1 = MoveType = A
Trigger1 = MoveHit
Trigger1 = NumEnemy > 0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = Floor(0.5*P2Dist X), Floor(0.5*(P2Dist Y+EnemyNear,Const(Size.Mid.Pos.Y)))
ID = 31000
Anim = 4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
ignorehitpause = 1

[State ]
type = playsnd
Trigger1 = MoveType = A
Trigger1 = MoveHit
Trigger1 = NumEnemy > 0
Value    = 0,17;ひっと
channel = 0;se

[State 6435, Helper];ガードエフェクト
Type = Explod
Trigger1 = MoveType = A
Trigger1 = MoveGuarded
Trigger1 = NumEnemy > 0
SprPriority = 999
OwnPal = 1
OnTop = 1
PosType = P1
Pos = Floor(0.5*P2Dist X), Floor(0.5*(P2Dist Y+EnemyNear,Const(Size.Mid.Pos.Y)))
ID = 31000
Anim = 4023;4002+ifelse(Random%2=0,0,4);4002or4006
persistent = 0
ignorehitpause = 1

[State 6435, TargetState]
Type = null;TargetState
Trigger1 = MoveType = A
Trigger1 = MoveHit
Trigger1 = NumTarget > 0
Value = 7030
Persistent = 0
IgnoreHitPause = 1

[State 6435, VarAdd];ヒット回数減少
Type = VarAdd
Trigger1 = MoveType = A
Trigger1 = MoveContact
Persistent = 0
IgnoreHitPause = 1
V = 6
Value = -1

;--------------------繰り返し
[State 6435, ChangeState]
Type = ChangeState
Trigger1 = MoveType = A
Trigger1 = Var(6) > 0
Trigger1 = MoveContact
Value = 65285

;--------------------次へ
[State 6435, ChangeState]
Type = ChangeState
Trigger1 = MoveType = A
Trigger1 = MoveContact
Value = 65288

;========== 共通の処理 ==========

;--------------------消滅条件
[State 6435, ChangeState]
Type = ChangeState
Trigger1 = Var(2) = 60
Trigger2 = Root,MoveType = H && Root,StateNo != [35280,35289]
Value = 65289

;--------------------速度設定
[State 6435, VelSet] 
Type = VelSet
Trigger1 = 1
X = FVar(2)*Cos(Pi*(1.0*FVar(5)/180))
Y = FVar(2)*Sin(Pi*(1.0*FVar(5)/180))

;--------------------回転の変化
[State 6435, AngleDraw]
Type = AngleDraw
Trigger1 = 1
;Scale = 0.75, 0.75

[State 6431, AngleAdd]
Type = AngleSet
Trigger1 = 1
Value = 0
[State 6431, AngleAdd]
Type = null;AngleAdd
Trigger1 = 1
Value = -10

;--------------------透過設定
[State 6435, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoShadow

;--------------------速度上昇
[State 6435, VarAdd]
Type = VarAdd
Trigger1 = FVar(2) < 20.0
FV = 2
Value = 0.5

;--------------------時間経過
[State 6435, VarAdd]
Type = VarAdd
Trigger1 = 1
V = 2
Value = 1


;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　ホーミング　無力状態
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65287]
MoveType = I

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1

;--------------------復帰
[State 6437, ChangeState]
Type = ChangeState
Trigger1 = Time > 1
Trigger1 = Var(4) = 0
Value = 65285

;--------------------消滅条件
[State 6437, ChangeState]
Type = ChangeState
Trigger1 = Var(2) = 60
Trigger2 = Root,MoveType = H && Root,StateNo != [35280,35289]
Value = 65289

;--------------------速度設定
[State 6437, VelSet] 
Type = VelSet
Trigger1 = 1
X = FVar(2)*Cos(Pi*(1.0*FVar(5)/180))
Y = FVar(2)*Sin(Pi*(1.0*FVar(5)/180))

;--------------------回転の変化
[State 6437, AngleDraw]
Type = AngleDraw
Trigger1 = 1
;Scale = 0.75, 0.75

[State 6431, AngleAdd]
Type = AngleSet
Trigger1 = 1
Value = 0
[State 6431, AngleAdd]
Type = null;AngleAdd
Trigger1 = 1
Value = -10

;--------------------透過設定
[State 6437, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 6437, Trans]
Type = Trans
Trigger1 = 1
Trans = Add

;--------------------速度上昇
[State 6437, VarAdd]
Type = VarAdd
Trigger1 = FVar(2) < 20.0
FV = 2
Value = 0.5

;--------------------時間経過
[State 6437, VarAdd]
Type = VarAdd
Trigger1 = 1
V = 2
Value = 1

[State 6437, NotHitBy]
Type = NotHitBy
Trigger1 = 1
Value = SCA
IgnoreHitPause = 1

;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　ホーミング　ヒット消滅
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65288]
MoveType = I
anim = 65283

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 100,0,128
color = 0;
ignorehitpause = 1

[State 6438, EnvShake]
Type = EnvShake
Trigger1 = Time = 0
Time = 12
Freq = 100
Ampl = 3

;--------------------明度初期化
[State 6438, VarSet]
Type = VarSet
Trigger1 = Time = 0
V = 3
Value = 256

;--------------------拡大率設定
[State 6438, VarSet]
Type = VarSet
Trigger1 = Time = 0
FV = 1
Value = 2.00

;--------------------消滅条件
[State 6438, DestroySelf]
Type = DestroySelf
trigger1 = animtime = 0

;--------------------速度減少
[State 6438, VelMul] 
Type = VelMul
Trigger1 = 1
X = 0.85
Y = 0.85

;--------------------回転の変化
[State 6438, AngleDraw]
Type = null;AngleDraw
Trigger1 = 1
Scale = FVar(1), FVar(1)

[State 6438, AngleAdd]
Type = AngleAdd
Trigger1 = 1
Value = -10

;--------------------透過設定
[State 6438, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 6438, Trans]
Type = null;Trans
Trigger1 = 1
Trans = Add

;--------------------明度
[State 6438, PalFX]
Type = null;PalFX
Trigger1 = 1
Time = 1
Add = 0, 0, 0
Mul = Var(3), Var(3), Var(3)

;--------------------明度減少
[State 6438, VarAdd]
Type = VarAdd
Trigger1 = 1
V = 3
Value = -13

;--------------------拡大率減少
[State 6438, VarAdd]
Type = VarAdd
Trigger1 = FVar(1) > 0.01
FV = 1
Value = -0.1

[State 6438, NotHitBy]
Type = NotHitBy
Trigger1 = 1
Value = SCA

;■■■■■■■■■■■■■■■■■■■■■■■■■
;	[ヘルパー]夢想封印　消滅
;--------------------------------------------------
;各Varについて（St6430～6439独自）
;  Var(1)	発射角度
;  Var(2)	Time
;  Var(3)	明度
;  Var(4)	ヒット判定
;  Var(6)	ヒット回数
;  Var(7)	相手吹き飛び方向
;
; FVar(1)	拡大率
; FVar(2)	速度
; FVar(3)	相手距離X
; FVar(4)	相手距離Y
; FVar(5)	ホーミング角度
;
;------------------------------
[StateDef 65289]
MoveType = I
anim = 65283

[State PAL]
type = PalFX
trigger1 = 1
time = 1
add = 180,0,128
color = 0;
ignorehitpause = 1

;--------------------消滅条件
[State 6439, DestroySelf]
Type = DestroySelf
Trigger1 = 0;FVar(1) <= 0.01
trigger2 = animtime = 0

;--------------------回転の変化
[State 6439, AngleDraw]
Type = null;AngleDraw
Trigger1 = 1
Scale = FVar(1), FVar(1)

[State 6439, AngleAdd]
Type = AngleAdd
Trigger1 = 1
Value = -10

;--------------------透過設定
[State 6439, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 6439, Trans]
Type = null;Trans
Trigger1 = 1
Trans = Add

;--------------------拡大率減少
[State 6439, VarAdd]
Type = VarAdd
Trigger1 = FVar(1) > 0.01
FV = 1
Value = -0.0375

[State 6439, VarSet]
Type = VarSet
Trigger1 = FVar(1) <= 0.01
FV = 1
Value = 0

[State 6439, NotHitBy]
Type = NotHitBy
Trigger1 = 1
Value = SCA


;---------------------------------
[Statedef 35290];流影陣
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 35292

[state a]
type = nothitby
trigger1 = 1
value = ,NP,SP,HP
time = 1

[State vel]
type = null;velset
trigger1 = time = 0
;x = -10
y = -4

[State vel]
type = null;velmul
trigger1 = 1;time <= 2
x = 0.6
y = 0.6

[State 4500, Explod]
type = Explod
trigger1 = Animelem = 5
ID = 4010;995
postype = P1
pos = -15,0
anim = 4010;995;バスターのケムリにする
scale = 1,1;2,2;.5,.5
supermovetime = 99999
pausemovetime = 99999
ontop = 1
ownpal = 1
removetime = -2
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State SE];
type = PlaySnd
trigger1 = animelem = 5
value = 3529,1
;channel = 1;SE
persistent = 0

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelem = 1
value = 3529,0;リュウエイジン！
freqmul =1.2
channel = 0;VC

;反射ヘルパー
[State 4500, Helper];ヘルパー扱い
type = Helper
trigger1 = animelem = 6
helpertype = Normal
name = "REF Helper"
ID = 35295
stateno = 35295
pos =  41,-53;
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State WPNSUB];命中した
type = Varadd
Trigger1 = projhittime(65296) = 1
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))
persistent = 0
ignorehitpause = 1

[State Return]
type = ChangeState
trigger1 = animtime = 0;アニメおわった？
value = 0;もどれ。
ctrl = 1
;------------------------------
[StateDef 35295];流影陣ヘルパー
Type      = A
MoveType  = I
Physics   = N
Ctrl      = 0
velset = 0,0
Anim      = 65295
sprpriority = 4

[state a]
type = hitby
trigger1 = 1
value = SCA,AP
time = -1

[state a]
type = hitoverride
trigger1 = 1
attr = SCA,AP
stateno = 35297

[State 4501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
;flag2 = Invisible
ignorehitpause = 1

[State Posfv_X]
type = varset
trigger1 = var(1) = 0
var(0) = parent,stateno
[State Posfv_X]
type = varset
trigger1 = var(1) = 0
fvar(0) = parentdist X;Pos X;X
[State Posfv_Y]
type = varset
trigger1 = var(1) = 0
fvar(1) = parentdist Y;Pos Y;Y

[State timer]
type = varadd
trigger1 = 1
var(1) = 1

[State 4501, PosSet]
type = null;PosSet
trigger1 = 1;parent, facing = 1
x = parent, Pos X - (fvar(0) * parent, facing)
y = parent, Pos Y - fvar(1)
ignorehitpause = 1

[state a]
type = bindtoroot
trigger1 = 1
pos = -fvar(0),-fvar(1)
ignorehitpause = 1

[State SYOUKOUKEN];飛び道具　覇王翔吼拳
type = projectile
trigger1 = time = 4
;trigger1 = var(1) = 4
ProjID = 65296
projanim = 65296;すてるす
projhitanim = -1
projremanim = -1
offset = 0,0
velocity = 0,0
projremovetime = 1
projedgebound = 180
projstagebound = 180
attr = A,SP
animtype = back
getpower = 30,10
givepower = 20,20
damage = 50,10;
guardflag = MA
hitflag = MAF
pausetime = 11,12
sparkno = 4006;
hitsound = S3501,1;ぱこおおおおおん！！！！！
guardsound = S0,7
ground.type = trip
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -5.5,-5.5
guard.velocity = -6
air.velocity = -4,-4;-7.5,-3.5
airguard.velocity = -4,-1
air.juggle = 3
air.fall = 1
air.recover = 0
projpriority = 3

[State 4501, DestroySelf]
type = changestate
trigger1 = parent,StateNo != var(0);4500;本体の動作がおわたら消滅
trigger2 = var(1) > 25;30;時間経過
trigger3 = parent,movetype = H
value = 35296
;ゲージ残量がきれた場合も時間切れまでは発生する。
;ぶっちゃた話１２ｐの時用の措置。

;------------------------------
[StateDef 35296];流影陣ヘルパー そのまま消滅
Type      = A
MoveType  = I
Physics   = N
Ctrl      = 0
velset = 0,0
Anim      = 65283
sprpriority = 4

[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1
;---------------------[]
[state a]
type = destroyself
trigger1 = animtime = 0
;------------------------------
[StateDef 35297];流影陣ヘルパー 反射消滅
Type      = A
MoveType  = I
Physics   = N
Ctrl      = 0
velset = 0,0
Anim      = 65283
sprpriority = 4

[State WPNSUB];反射した
type = parentVaradd
Trigger1 = time = 0
Trigger1 = (root,var(6)) >= (3000/(root,var(7)))
var(6) = -(3000/(root,var(7)))
persistent = 0
ignorehitpause = 1

[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,43;チャージＸ８

[State SYOUKOUKEN];飛び道具　覇王翔吼拳
type = projectile
trigger1 = time = 0
ProjID = 35010
projanim = 35013;チャージバスター
projhitanim = 3010;
projscale = 1.2,1.2;.5,.5
offset = 0,0
velocity = 15,0
projremovetime = -1
projedgebound = 180
projstagebound = 180
attr = A,HP
animtype = back
getpower = 0,0
givepower = 50,25
damage = 80,10;
guardflag = HA
hitflag = MAF
pausetime = 0,20
sparkno = 4006;
hitsound = S3501,1;ぱこおおおおおん！！！！！
guardsound = S0,7
ground.type = trip
ground.slidetime = 15
ground.hittime = 30
ground.velocity = -20,-8;-8,-4
guard.velocity = -3
air.velocity = -20,-8;-7.5,-3.5
airguard.velocity = -2,-1
air.juggle = 3
projpriority = 3
;---------------------[]
[State 4501, mada]
type = changestate
trigger1 = var(1) <= 25;30;時間未経過
value = 35295

[state a]
type = destroyself
trigger1 = parent,StateNo != var(0);4500;本体の動作がおわたら消滅
trigger2 = var(1) > 25;30;時間経過
trigger3 = parent,movetype = H
triggerall = animtime = 0


;------------------------------
;HINA-891 YAKUGAMI
[StateDef 35300]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
sprpriority = 1
Anim = 35302;ひゅう、ちっちっち
velset = 0,0

[state a]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nomusic
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 4500, Explod]
type = Explod
Trigger1 = Time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
removetime = 30;-2
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
Trigger1 = Time = 0
anim = 10050
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
removetime = 30;-2
ownpal = 1
bindtime = -1
supermove = 1
persistent = 0

[State BGMOFF]
type = StopSnd
Trigger1 = Time = 0
channel = 2;BGM
[State 35300, SND]
type = playsnd
trigger1 = time = 0;
value = 3530,10+Random%3;ＢＧＭ

[State 3000, Super A]
type = SuperPause
Trigger1 = Time = 0
pos = 0,-58;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
movetime = 30;停止無視時間 (int)

;ココラニ特殊背景関連の記述を？
[State 4500, Explod];ばっくぐらうんど
type = null;Explod
trigger1 = time >= 0
;trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 600
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State 35300, Voice]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemTime(1) = 0
value = 195,0;ひゅう
channel = 0;VC

[State 35300, Voice]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemTime(3) = 0
trigger2 = animelemTime(4) = 0
trigger3 = animelemTime(5) = 0
trigger4 = animelemTime(6) = 0
trigger5 = animelemTime(7) = 0
trigger6 = animelemTime(8) = 0
value = 195,1;ちっちっち
channel = 0;VC

[State 4500, Helper]
type = Helper
triggerall = !NumHelper(65300)
trigger1 = time = 30;
helpertype = Normal
name = "Remilia"
ID = 65300
stateno = 65300
pos =  -30,-180
postype = back
facing = 1
ownpal = 1
removeongethit = 1

[State 35300, SND]
type = playsnd
trigger1 = time = 30;
value = 3530,0;ヘリ

[state exp]
type = null;removeexplod
trigger1 = time > 500
id = 15060

[State 35300, End]
type = ChangeState
trigger1 = Time > 500
value = 0
ctrl = 1
;------------------------------
;へりこぷたー
[StateDef 65300]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 3
Anim = 65300;へり本体・前進
velset = 10,4

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nomusic
;ココラニ特殊背景関連の記述を？
[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time = 0
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 600
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State Vel]
type = veladd
trigger1 = vel X > 0
trigger1 = vel Y > 0
X = -0.25
Y = -0.1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
ID = 65302;995
postype = P1
pos = 15,-54
anim = 65302;ローター
scale = 2,2
supermovetime = 99999
pausemovetime = 99999
sprpriority = 4
ownpal = 1
removetime = -1
bindtime = -1
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
;Trigger1          = 1
trigger1 = vel X > 0
trigger1 = vel Y > 0;勢いがついている間だけ
Attr              = S, SA
Damage            = 25, 5			;ダメージ
sparkno = S4006;
hitsound   = S0,5
guardsound = S0,7
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
guard.dist        = 193             ;相手がガード行動をとる距離
GuardFlag         = M				;空中ガード不能
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 9, 10			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -3, 45			;エフェクト表示位置
Ground.Type       = Trip			;どこに当たるか 地上
Air.Type          = Trip			;どこに当たるか 空中
Ground.SlideTime  = 10				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -0.5,-3			;ヒット時の相手の移動 地上
Air.Velocity      = -0.5,-3			;ヒット時の相手の移動 空中
AirGuard.Velocity = -0.5,-3			;ヒット時の相手の移動 空中ガード
YAccel            = 0.052
Kill              = 0				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
Persistent = 0

[State 35300, End]
type = ChangeState
;trigger1 = animtime = 0;Time > 90
trigger1 = floor(vel X) <= 0
trigger1 = floor(vel Y) <= 0;止まったら次へ
value = 65301
ctrl = 0
;------------------------------
;へりこぷたー２　ミサイル
[StateDef 65301]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
sprpriority = 3
Anim = 65301;へり本体・後退
velset = 0,0;-.6,-.6

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
flag3 = nomusic

[State Vel]
type = veladd
trigger1 = vel X > -.4
trigger1 = vel Y > -.4
X = -0.002
Y = -0.002

[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State Exp]
type = removeexplod
trigger1 = time = 0
id = 65302

[State 4500, Explod]
type = Explod
trigger1 = time = 0
ID = 65302;995
postype = P1
pos = 15,-46
anim = 65303;ローター
scale = 2,2
supermovetime = 99999
pausemovetime = 99999
sprpriority = 4
ownpal = 1
removetime = -1
bindtime = -1
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State 4500, Helper]
type = Helper
trigger1 = time >= 60;
trigger1 = time%20=1
helpertype = Normal
name = "MISO"
ID = 65305
stateno = 65305
pos =  -18,35
postype = p1
facing = 1
ownpal = 1
removeongethit = 1
[State 4500, Helper]
type = Helper
trigger1 = time >= 60;
trigger1 = (time)%20=11
helpertype = Normal
name = "MISO"
ID = 65305
stateno = 65305
pos =  36,35
postype = p1
facing = 1
ownpal = 1
removeongethit = 1

[State -1, HitDef]
Type = HitDef
;Trigger1          = !MoveContACT
;Trigger1          = 1
trigger1 = vel X > 0
trigger1 = vel Y > 0;勢いがついている間だけ
Attr              = S, SA
Damage            = 25, 5			;ダメージ
sparkno = S4006;
hitsound   = S0,5
guardsound = S0,7
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
guard.dist        = 193             ;相手がガード行動をとる距離
GuardFlag         = M				;空中ガード不能
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 9, 10			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, 15			;エフェクト表示位置
Ground.Type       = Trip			;どこに当たるか 地上
Air.Type          = Trip			;どこに当たるか 空中
Ground.SlideTime  = 10				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = -0.5,-7			;ヒット時の相手の移動 地上
Air.Velocity      = -0.5,-7			;ヒット時の相手の移動 空中
AirGuard.Velocity = -0.5,-7			;ヒット時の相手の移動 空中ガード
YAccel            = 0.4
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
Persistent = 0

[State 35300, End]
type = ChangeState
trigger1 = Time > 380;数秒間
value = 65302
ctrl = 0
;------------------------------
;へりこぷたー３　離脱
[StateDef 65302]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
sprpriority = 3
Anim = 65300;へり本体・前進
velset = 0,0

[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers

[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State Vel]
type = veladd
trigger1 = 1
X = 0.25
Y = -0.15


[State Exp]
type = removeexplod
trigger1 = time = 0
id = 65302

[State 4500, Explod]
type = Explod
trigger1 = time = 0
ID = 65302;995
postype = P1
pos = 15,-54
anim = 65302;ローター
scale = 2,2
supermovetime = 99999
pausemovetime = 99999
sprpriority = 4
ownpal = 1
removetime = -1
bindtime = -1
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[state exp]
type = removeexplod
trigger1 = FrontEdgeDist < -120;画面抜けてからだいぶ経った
id = 15060

[State Exp]
type = removeexplod
trigger1 = FrontEdgeDist < -120;画面抜けてからだいぶ経った
id = 65302

[State 35300, End]
type = destroyself
trigger1 = FrontEdgeDist < -120;画面抜けてからだいぶ経った

;------------------------------
;みさいるヘルパー 初動
[Statedef 65305]
type    = A
movetype= A
physics = N;A
juggle  = 2
ctrl = 0
anim = 65304
sprpriority = 2

[State Hitby];無敵
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State Velset]
type = velset
trigger1 = Time = 0;1
Y = 2;.5

;--------------------諸数値初期化
[State 6430, VarSet];発射角度
Type = null;VarSet
Trigger1 = Time = 0
V = 1
Value = Root,var(15);Var(20)

[State 6430, VarSet];Time
Type = VarSet
Trigger1 = Time = 0
V = 2
Value = 0

[State 6430, VarSet];ヒット判定
Type = VarSet
Trigger1 = Time = 0
V = 4
Value = 0

[State 6430, VarSet];相手吹き飛び方向
Type = VarSet
Trigger1 = Time = 0
V = 7
Value = IfElse((Root,P2Dist X <0), -1, 1)

[State 6430, VarSet];拡大率
Type = VarSet
Trigger1 = Time = 0
FV = 1
Value = 0.15

;--------------------速度設定
[State 6430, VelSet] 
Type = null;VelSet
Trigger1 = Time = 0
X = 10*Cos(-Pi*(1.0*Var(1)/180))
Y = 10*Sin(-Pi*(1.0*Var(1)/180))

;--------------------回転の設定
[State 6430, AngleSet]
Type = AngleSet
Trigger1 = Time = 0
Value = 0

[State NextState]
Type = ChangeState
Trigger1 = time >= 10
Value = 65306;射出

;----------------------------------------
;射出
[StateDef 65306]
MoveType = A
VelSet = 0, 0
;--------------------
[State 6435, HitBy]
Type = notHitBy
Trigger1 = 1
Value = SCA
IgnoreHitPause = 1
;--------------------速度設定
[State 6434, VarSet] 
Type = VarSet
Trigger1 = Time = 0
FV = 2
Value = 0.0

;--------------------時間初期化
[State 6434, VarSet];Time
Type = VarSet
Trigger1 = Time = 0
V = 2
Value = 0

;--------------------ヒット回数初期化
[State 6434, VarSet]
Type = VarSet
Trigger1 = Time = 0
V = 6
Value = 3

;--------------------相手がいる場合：相手の位置を取得
[State 6434, VarSet]
Type = VarSet
Trigger1 = NumEnemy > 0
FV = 3
Value = P2Dist X

[State 6434, VarSet]
Type = VarSet
Trigger1 = NumEnemy > 0
FV = 4
Value = (P2Dist Y)+(EnemyNear,Const(Size.Mid.Pos.Y))

;--------------------相手がいる場合：相手への角度を計算
[State 6434, VarSet]
Type = VarSet
TriggerAll = NumEnemy > 0
Trigger1 = 1000*Abs(FVar(3)) > Abs(FVar(4))
FV = 5
Value = Atan(FVar(4)/FVar(3))*180/Pi

[State 6434, VarSet]
Type = VarSet
TriggerAll = NumEnemy > 0
Trigger1 = 1000*Abs(FVar(3)) <= Abs(FVar(4))
FV = 5
Value = IfElse(FVar(4)>0, 90, -90)

[State 6434, VarAdd]
Type = VarAdd
TriggerAll = NumEnemy > 0
Trigger1 = FVar(3) < 0
FV = 5
Value = 180

;--------------------相手がいない場合：そのままの角度を保つ
[State 6434, VarSet]
Type = VarSet
Trigger1 = NumEnemy = 0
Trigger2 = NumEnemy = 1
Trigger2 = P2StateNo = 0
Trigger2 = P2Life = 0
FV = 5
Value = -1.0;*Var(1)

;--------------------相手吹き飛び方向設定
[State 6434, VarSet]
Type = VarSet
Trigger1 = Time = 0
V = 7
Value = IfElse((Root,P2Dist X <0), -1, 1)

;--------------------次へ
[State 6434, ChangeState]
Type = ChangeState
Trigger1 = Time = 0
Value = 65307

;------------------------------
;追尾開始
[StateDef 65307]
MoveType = A

;========== 共通の処理 ==========

;--------------------
[State 6435, HitBy]
Type = notHitBy
Trigger1 = 1
Value = SCA
IgnoreHitPause = 1


;--------------------相手に近づいたら起爆
[State 6435, ChangeState]
Type = ChangeState
Trigger1 = Var(2) = 60
trigger2 = floor(P2Dist X) = [-50,50];範囲指定
trigger2 = floor(P2Dist Y) < (50-(EnemyNear,Const(Size.Mid.Pos.Y)))
trigger2 = floor(P2Dist Y) >= -(20)
Value = 65308

;--------------------速度設定
[State 6435, VelSet] 
Type = VelSet
Trigger1 = 1
X = FVar(2)*Cos(Pi*(1.0*FVar(5)/180))
Y = FVar(2)*Sin(Pi*(1.0*FVar(5)/180))

;--------------------回転の変化
[State 6435, AngleDraw]
Type = AngleDraw
Trigger1 = 1

[State 6435, AngleAdd]
Type = null;AngleAdd
Trigger1 = 1
Value = -10
[State 6435, AngleAdd]
Type = Angleset
Trigger1 = 1
Value = -FVar(5)

;--------------------透過設定
[State 6435, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoShadow

;--------------------速度上昇
[State 6435, VarAdd]
Type = VarAdd
Trigger1 = FVar(2) < 20.0
FV = 2
Value = 0.5

;--------------------時間経過
[State 6435, VarAdd]
Type = VarAdd
Trigger1 = 1
V = 2
Value = 1

;------------------------------
;起爆
[StateDef 65308]
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

[State 605, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0, 17
channel = 1;SE

;攻撃判定を持つヘルパーは自前で補正用varを持つようにする！
[State Attackfv]
type = varset
trigger1 = Target,Gethitvar(hitcount) >= 1
;fvar(10) = 1.0-(Target,Gethitvar(hitcount)/60.0) ;*parent,fvar(10);-(parent,Hitcount/60.0)
fvar(10) = parent,fvar(10)-(Target,Gethitvar(hitcount)/80.0)
ignorehitpause=1
;補正無し
[State Attackfv]
type = varset
trigger1 = Target,Gethitvar(hitcount) = 0
fvar(10) = 1.0 
ignorehitpause=1
;下回りした場合
[State Attackfv]
type = varset
trigger1 = fvar(10) <= 0
fvar(10) = .0 
ignorehitpause=1

[State Hitdef]
;Type = HitDef
Type = projectile
ProjID = 35113
projanim = 35113;すてるす
projhitanim = -1
projremanim = -1
offset = 0,0
velocity = 0,0
projremovetime = 1
projedgebound = 180
projstagebound = 180
Trigger1	  = time = 0;1
Attr              = A, HA
Damage            = ceil(12*fvar(10)),ceil(2*fvar(10));かなり当たるので威力調整には注意が必要
AnimType          = Hard			;ヒット時の相手のポーズ
HitFlag           = MAF				;ヒットする状態
GuardFlag         = MA				;ガードできる状態
sparkno = -1;S4002;必殺エフェクト２
hitsound   = -1;S0,5;5,0
guardsound = -1;S0,7;6,0
guard.dist        = 130             ;相手がガード行動をとる距離
Priority          = 3, Hit			;攻撃の優先度
PauseTime         = 8, 6			;ヒット時の硬直時間
SparkNo           = -1				;ヒットエフェクト
Guard.SparkNo     = -1				;ガードエフェクト
Sparkxy           = -10, -60			;エフェクト表示位置
Ground.Type       = High			;どこに当たるか 地上
Air.Type          = High			;どこに当たるか 空中
Ground.SlideTime  = 15				;相手がすべる時間
Ground.HitTime    = 20				;コンボが繋がる時間 地上
Air.HitTime       = 20				;コンボが繋がる時間 空中
Ground.Velocity   = ifelse(P2Dist X <= 0,2,-2),-2			;ヒット時の相手の移動 地上
Air.Velocity      = ifelse(P2Dist X <= 0,2,-2),-2			;ヒット時の相手の移動 空中
;AirGuard.Velocity = -1,-11			;ヒット時の相手の移動 空中ガード
yaccel 		= .2
Kill              = 1				;この攻撃で殺せるか
Fall              = 1				;地面に叩き付けられるか
Air.Fall          = 1				;地面に叩き付けられるか
Fall.Recover      = 0				;リカバーできるか
GetPower          = 0				;ヒット時のパワー増減
Persistent = 0

[State DelHelper]
type = DestroySelf
trigger1 = time >= 8
;---------------------------------
[Statedef 35310];31 カイザーウェイブ
;sffは35**で管理し、0番は武器アイコン、1番は武器名とする 以後必要に応じて差し込んでく
;airにて35**#で画像管理。35**0アイコン、**1武器名、以下略。
type    = S
movetype= A
physics = S
ctrl = 0
anim = 35312;つまり、アクションアニメは35012以降となる

[State WPNSUB]
type = Varadd
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = -(3000/var(7))

;[State Vartes]
;type = varset
;trigger1 = 1
;var(6) = var(7)

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State 4500, Explod]
type = Explod
trigger1 = time = 0
anim = 15010;9012;ハイパー発動フラッシュエフェクト。実装後につかう
postype = left;p1
pos = 0,0
sprpriority = -5
supermovetime = 60
pausemovetime = 60
removetime = 30
ownpal = 1
bindtime = -1

;カットイン！
[state 4002, 1]
type = explod
trigger1 = time = 0
anim = 10050;7000
id = 1005;7000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = 30
supermovetime = 60
pausemovetime = 60
supermove = 1
persistent = 0


[State BG]
type = BGPalFX
trigger1 = time = 0
time = 50
;add = 0,0,0
mul = 0,0,0
;sinadd = 256,256,256,10


[State 3000, Super A]
type = null;SuperPause
;Trigger1 = Anim = 900
;trigger1 = AnimElem = 2, 1
trigger1 = Time = 0
pos = 3,-52;
anim = S4050;S***で自分のだったけ
sound = S0,39;22;20, 0
poweradd = 0;-1000
time = 30;停止時間 (int)
movetime = 30;停止無視時間 (int)
[State flash]
type = explod
trigger1 = Time = 0
anim = 4050;
id = 4050;
postype = p1
pos = 3,-52;
ontop = 1
supermovetime = 60
pausemovetime = 60
persistent = 0
[State Snd]
type = playsnd
trigger1 = Time = 0
value = S0,39;22;20, 0
[State Pause]
type = pause
trigger1 = Time = 0
time = 30;停止時間 (int)
movetime = 30;停止無視時間 (int)

[State 4500, Explod];ばっくぐらうんど
type = Explod
trigger1 = time >= 0
trigger1 = !numexplod(1005)
persistent = 0
anim = 15061
id = 15060;
postype = back;p1
pos = 0,0
sprpriority = -5
bindtime = -1
removetime = 600
supermovetime = 60
ownpal = 1
scale = 1,1.1
removeongethit = 1;食らったらきえます

[State IKZE];
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0;VCチャンネル
persistent = 0

[State Var]
type = varset
trigger1 = time = 0
var(15) = 0

[State Var]
type = varadd
;trigger1 = 1
trigger1 = time%2=0
var(15) = 1


[State 4500, Explod]
type = Explod
trigger1 = Animelem = 3
ID = 65295
postype = P1
pos = -64,-48
anim = 65295
scale = var(15)/50.0,var(15)/50.0
sprpriority = 3
ownpal = 1
removetime = -1
ignorehitpause = 1
removeongethit = 1;食らったらきえます
persistent = 0;一回でいい

[State 4500, Explod]
type = modifyExplod
trigger1 = numexplod(65295)
ID = 65295
postype = P1
pos = -64,-48
random = 16,16
scale = var(15)/50.0,var(15)/50.0

;fxm508氏の2002ルガールの記述を使わせていただきました
[State 1020, 0]
type = HitDef
;triggerall = hitcount < 35
triggerall = var(15) < 70
trigger1 = Time%5 = 0
trigger2 = Time%5 = 2
attr = S,SP
guardflag = M
hitflag = MAF
damage = ceil(20*fvar(10)),10
p2facing = 1
animtype = back
priority = 7,hit
pausetime = 0,12
sparkno = -1;S4002+ifelse(random%2,4,0)
guard.sparkno = S4023
sparkxy = -10,-70
hitsound = -1;S3501,1;ぱこおおおおおん！！！！！
guardsound = S0,7
ground.velocity = -3.5,-14
air.velocity = -3.5,-14
yaccel = .48
air.hittime = 600
fall = 1
fall.recover = 0
getpower = 100,100
givepower = 15,15
Kill = 0

[State 1800]
type           = Explod
trigger1 = movehit = 1
anim           = 4002+ifelse(random%2,4,0)
ID             = 4002
pos            = -10,-70
random	= 64,64
scale		= .5,.5
postype        = p2
sprpriority    = 4
ownpal         = 1
ignorehitpause = 1

[State bind]
type = Targetbind
trigger1 = numtarget > 0
triggerall = var(15) < 70
pos = -64,-15

[State Snd]
type = playsnd
trigger1 = hitcount%2=0
trigger1 = movehit = 1
value = 0,17
channel = 1

[State Nex]
type = changestate
triggerall = animtime = 0
Trigger1 = !Var(59);NOAI
trigger1 = command != "holdy"
Trigger2 = Var(59);AION
trigger2 = numpartner = 0;パートナーいない
trigger2 = !movehit;後ろに命中してない場合はすぐ発射する
;現状、パートナーがいる場合はＡＩは信用してタメるようになってます
value = 35311

[State Nex]
type = varset
trigger1 = var(15) > 100
trigger1 = movehit
var(15) = 200

[State Nex]
type = changestate
trigger1 = var(15) > 100
value = 35312;ふるちゃーじ
;---------------------------------
[Statedef 35311];発射 ノーマル
type    = S
movetype= A
physics = S
ctrl = 0
anim = 35313;

[State Delexp]
type = removeexplod
trigger1 = numexplod(65295)
ID = 65295

[State -2, ParamNOR]
type = AttackMulSet
triggerall = fvar(10) > 0;補正値０以上
trigger1 = var(5) >= 1
value = 1.0 * fvar(10)
ignorehitpause=1

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State ***]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 1
value = 1,8;でりゃあ！
channel = 0;VC

[State 4500, Explod]
type = Explod
trigger1 = Animelem = 3
ID = 4010;995
postype = P1
pos = -15,0
anim = 4010;995;バスターのケムリにする
scale = 2,2;.5,.5
supermovetime = 99999
pausemovetime = 99999
ontop = 1
ownpal = 1
removetime = -2
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 3
value = 0,43;チャージＸ８
;channel=1;SE
[State SYOUKOUKEN];飛び道具　覇王翔吼拳
type = projectile
trigger1 = Animelem = 3
ProjID = 35311
projanim = 35014
projhitanim = 35015;
projscale = 1.8,1.8;すけーるでかい
offset = 40,-48
velocity = 20,0
projremovetime = -1
projedgebound = 180
projstagebound = 180
attr = A,HP
animtype = back
getpower = 0,0
givepower = 50,25
damage = ceil(250*fvar(10)),10;当たるのは一発だけど、でかいダメージ
;damage = 0,10
guardflag = HA
hitflag = MAF
pausetime = 0,20
sparkno = 4006;
hitsound = S3501,1;ぱこおおおおおん！！！！！
guardsound = S0,7
ground.type = trip
ground.slidetime = 15
ground.hittime = 30
ground.velocity = -10,-8;-8,-4
guard.velocity = -3
air.velocity = -10,-8;-7.5,-3.5
airguard.velocity = -2,-1
air.juggle = 0;3
projpriority = 3
absolute = 1


[State North]
type = VarAdd;当たったら星を奪う
trigger1 = projhittime(35311) = 1
trigger1 = var(41) < 7
var(41) = 1
persistent=0
ignorehitpause=1

[State Life]
type = null;targetlifeadd
trigger1 = projhittime(35311) = 1
;trigger1 = var(15) > 100
value = -250*fvar(10)
absolute = 1
persistent = 0
ignorehitpause=1


[State remexp]
type = removeexplod
trigger1 = animtime = 0;
id = 15060

[State Return]
type = ChangeState
trigger1 = animtime = 0;アニメおわった？
value = 0;もどれ。
ctrl = 1

;---------------------------------
[Statedef 35312];発射 １秒間１０カイザー
type    = S
movetype= A
physics = S
ctrl = 0
anim = 35314;

[State Delexp]
type = removeexplod
trigger1 = numexplod(65295)
ID = 65295

;スーパーポーズ
[State 4500, AssertSpecial];背景消去　エフェクト実装後に使う
type = AssertSpecial
trigger1 = 1;Time <= 50
flag = noBG ;<-- removes the stage layer
flag2 = noFG ;<-- removes the lifebars and any foreground stage layers
ignorehitpause = 1

[State ***]
type = null;playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = Animelem = 1
value = 1,8;でりゃあ！
channel = 0;VC

[State 4500, Explod]
type = Explod
trigger1 = Animelem = 3
ID = 4010;995
postype = P1
pos = -15,0
anim = 4010;995;バスターのケムリにする
scale = 1,1;.5,.5
supermovetime = 99999
pausemovetime = 99999
ontop = 1
ownpal = 1
removetime = -2
ignorehitpause = 1
removeongethit = 1;食らったらきえます

[State 210, 1]
type = null;PlaySnd
trigger1 = Animelem = 3
value = 0,43;チャージＸ８
;channel=1;SE
[State SYOUKOUKEN];飛び道具　覇王翔吼拳
type = projectile
trigger1 = Animelem = 3
ProjID = 35310
projanim = 35013
projhitanim = 35015;
projscale = 1.6,1.6;すけーるでかい
offset = 40,-48 + ((Random%48)-24)
velocity = 20,0
projremovetime = -1
projedgebound = 180
projstagebound = 180
attr = A,HP
animtype = back
getpower = 0,0
givepower = 2,1
damage = ceil(fvar(10)*50),2
;damage = 10,2
guardflag = HA
hitflag = MAF
pausetime = 0,20
sparkno = 4006;
hitsound = -1;S3501,1;ぱこおおおおおん！！！！！
guardsound = S0,7
ground.type = trip
ground.slidetime = 15
ground.hittime = 30
ground.velocity = -20,-8;-8,-4
guard.velocity = -3
air.velocity = -20,-8;-7.5,-3.5
airguard.velocity = -2,-1
air.juggle = 0;3
projpriority = 3

[State Life]
type = null;targetlifeadd
trigger1 = projhittime(35310) = 1
;trigger1 = var(15) > 100
value = -50*fvar(10)
absolute = 1
persistent = 0
ignorehitpause=1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,8;小
channel=0;本来はボイスチャンネルだが、臨時で

[State Snd]
type = playsnd
trigger1 = projhittime(35310) = 1
value = 3501,1
channel = 1

[State Return]
type = ChangeState
trigger1 = time >= 120
value = 35311

;ブリッツボール------
[Statedef 35315]
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 65
ctrl = 0
velset = 0,0
anim=35315;射撃アニメのどれかを使う 暫定的にこれ



[State 210, 1]
type = StopSnd
trigger1 = animelem = 3
channel=4;

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,8;小
channel=1;SE


[State 210, 1]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelem = 3
value = 1,15;発射せりふ「バーン！」
channel=0;vc



[State 220, 3]
type = Explod
trigger1 = animelem = 3
anim = 4010;手前のケムリオブジェクト。
sprpriority = 5

[State 220, 4] ;
type = Projectile
trigger1 = animelem = 3
projid = 35316
projanim = 35316;
projhitanim = 3010;1003
offset = 40,-44 + ((Random%44)-22)
projscale = .5,.5
velocity = 5,0
; HitDef
attr = S, SP
animtype = Light
damage    = 6
getpower  = 20
givepower = 20
hitflag = MA;FD
guardflag = MAF
pausetime = 4,8
sparkno = S4006
guard.sparkno = S4023
priority = 3;,Dodge
;sparkxy = 69,-47;-35
hitsound   = S0,11;S5,1
guardsound = S0,7;S6,0
ground.type = High
ground.slidetime = 22
ground.hittime = 23
ground.velocity = -4,-3
guard.slidetime = 11
guard.hittime = 11
guard.velocity = -4.5
air.type = High
air.velocity = -3,-3
airguard.velocity = -4.5
ground.cornerpush.veloff = 0;1
air.cornerpush.veloff = 0;2
down.cornerpush.veloff = 0;3
guard.cornerpush.veloff = 0;4
airguard.cornerpush.veloff = 0;5
fall = 0;1
air.fall = 1
Fall.Recover      = 0				;リカバーできるか
palfx.time = 55
palfx.add = -40,30,-100
palfx.sinadd = 50,60,60,10
palfx.color = 0
palfx.invertall = 1

[State Ctrl]
type = ctrlset
trigger1 = animelem = 4
value = 1

[State 220, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------
[Statedef 35320];32 ハンマー状態
type    = S
movetype= A
physics = S
ctrl = 0
anim = 35322

;ゲージの使用法が特殊
[State WPNSUB]
type = Varset
Trigger1 = Time = 0
Trigger1 = var(6) >= (3000/var(7))
var(6) = 3000

[State GuageON]
type = Helper
Trigger1 = Time = 0
Trigger1 = var(5) != 0;武器をそうびしている状態なら
trigger1 = !Numhelper(10010);ゲージが出てなかった場合のみ
ID = 10010
Name = "SubPower Guage"
Pos = 0,0
PosType = left;p1
StateNo = 10010
helpertype = Normal
Keyctrl = 0
ownpal = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
facing = 1

[State WPNSUB]
type = Varadd
Trigger1 = Time > 0
var(6) = -5

[State Miss]
type = changeanim
trigger1 = time = 10
trigger1 = random%10=0;1/10
value = 35323;はずれ

[State 4500, Helper]
type = Helper
trigger1 = anim = 35323
helpertype = Normal
name = "HAMMER"
ID = 35325
stateno = 35325
pos =  -18,-101
postype = p1
facing = 1
ownpal = 1
persistent = 0

[State BGMON]
type = varset
trigger1 = time = 0
var(20) = 1

[State Rnd]
type = varset
trigger1 = time = 0
var(15) = Random%2;0-1

[State BGM]
type = PlaySnd
trigger1 = time = 0
trigger1 = var(15) = 0
value = 3532,10+(Random%2)
loop = 1
channel = 2;BGM

[State BGM]
type = PlaySnd
trigger1 = time = 0
trigger1 = var(15) = 1
value = 3532,12
loop = 1
channel = 2;BGM


[State -2, 2nd Flash]
type = PalFX
trigger1 = var(15) = 1
trigger1 = Time%4 = 0
time = 2
add = 200,200,0
color = 0
[State -2, 2nd Flash]
type = PalFX
trigger1 = var(15) = 1
trigger1 = Time%4 = 2
time = 2
add = 128,128,0
color = 0

[State -3,NOGUARD];ガード不能
type = null;AssertSpecial
trigger1 = 1
flag = unguardable

[State SYOUKOUKEN];飛び道具　
type = projectile
triggerall = anim = 35322
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 8
ProjID = 35320
projanim = 35325;すてるす
projhitanim = -1
projremanim = -1
offset = -18,-101
velocity = 0,0
projremovetime = 8
;projedgebound = 180
;projstagebound = 180
attr = S,HA
animtype = back
getpower = 0,0
givepower = 20,20
damage = 100,10
guardflag = MA
hitflag = MA
affectteam = B;両方に当たる
pausetime = 0,2
sparkno = -1;
guard.sparkno = -1;
hitsound   = S3532,0;S5,1
guardsound = S0,7;S6,0
ground.type = low;trip
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -4,-8
guard.velocity = -3
air.velocity = -4,-12;-7.5,-3.5
airguard.velocity = -4,-1
;air.juggle = 3
yaccel = .5
fall = 1
recover = 0
air.fall = 1
air.recover = 0
guard.kill = 0
projpriority = 3
[State SYOUKOUKEN];飛び道具　
type = projectile
triggerall = anim = 35322
trigger1 = animelemtime(2) = 0
ProjID = 35321
projanim = 35325;すてるす
projhitanim = -1
projremanim = -1
offset = 53,-45
velocity = 0,0
projremovetime = 8
;projedgebound = 180
;projstagebound = 180
attr = S,HA
animtype = back
getpower = 0,0
givepower = 20,20
damage = 100,10
guardflag = MA
hitflag = MA
affectteam = B;両方に当たる
pausetime = 0,2
sparkno = -1;
guard.sparkno = -1;
hitsound   = S3532,0;S5,1
guardsound = S0,7;S6,0
ground.type = low;trip
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -4,-8
guard.velocity = -3
air.velocity = -4,-12;-7.5,-3.5
airguard.velocity = -4,-1
;air.juggle = 3
yaccel = .5
fall = 1
recover = 0
air.fall = 1
air.recover = 0
guard.kill = 0
projpriority = 3

[State Velset]
type = null;velset
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
X = 0
Y = 0
[State Velset]
type = velset
trigger1 = command = "holdfwd"
X = 2
[State Velset]
type = velset
trigger1 = command = "holdback"
X = -2

[State turn]
type = turn
trigger1 = p2dist X < 0

[State MUTEKI];ちょっとだけ無敵
type= null;NotHitBy
trigger1 = anim = 35322
time = 1;ちょっとだけ無敵
value = SCA, NA, SA, HA, NT, ST, HT
[state a];ダメージ食らった場合
type = hitoverride
trigger1 = 1
attr = SCA,AA,AT,AP
stateno = 35324

[State Varset]
type = varset
trigger1 = var(6) = 0
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State BGMOFF]
type = varset
trigger1 = var(6) = 0
var(20) = 0

[State BGMOFF]
type = StopSnd
trigger1 = var(6) = 0
channel = 2;BGM

[State End]
type = changestate
trigger1 = var(6) = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; ハズレの場合は攻撃食らったらここへ
[Statedef 35324]
type    = S
movetype= H
physics = N
velset = 0,0

[State pow]
type = varset
trigger1 = time = 0
var(6) = 0

[State Varset]
type = varset
trigger1 = time = 0
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State BGMOFF]
type = varset
trigger1 = time = 0
var(20) = 0

[State BGMOFF]
type = StopSnd
trigger1 = time = 0
channel = 2;BGM

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------
[Statedef 35325];ハンマーの頭
type    = A
movetype= A
physics = N
ctrl = 0
anim = 35324;

[State MUTEKI];ちょっとだけ無敵
type= NotHitBy
trigger1 = 1
time = 1;ちょっとだけ無敵
value = SCA, NA, SA, HA, NT, ST, HT

[State -2, 2nd Flash]
type = PalFX
trigger1 = root,var(15) = 1
trigger1 = Time%4 = 0
time = 2
add = 200,200,0
color = 0
[State -2, 2nd Flash]
type = PalFX
trigger1 = root,var(15) = 1
trigger1 = Time%4 = 2
time = 2
add = 128,128,0
color = 0

[State Angle]
type = angleadd
trigger1 = 1
value = 40
[State Angle]
type = Angledraw
trigger1 = 1

[State Vel]
type = velset
trigger1 = time = 0
X = ((Random%80)-40)/10.0
Y = -10.0 - ((Random%100)/10.0)

[State Veladd]
type = veladd
trigger1 = 1
Y = .25


[State SYOUKOUKEN];飛び道具　
type = hitdef
trigger1 = 1
attr = S,HA
animtype = back
getpower = 0,0
givepower = 20,20
damage = 100,10
guardflag = MA
hitflag = MA
affectteam = B;両方に当たる
pausetime = 0,2
sparkno = -1;
guard.sparkno = -1;
hitsound   = S3532,0;S5,1
guardsound = S0,7;S6,0
ground.type = low;trip
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -4,-8
guard.velocity = -3
air.velocity = -4,-12;-7.5,-3.5
airguard.velocity = -4,-1
;air.juggle = 3
yaccel = .5
fall = 1
recover = 0
air.fall = 1
air.recover = 0
guard.kill = 0
projpriority = 3

[State end]
type = destroyself
trigger1 = vel Y > 0
trigger1 = pos Y >= 0


;------------------------------
;オーノー！アナルパワー!!!
[Statedef 36000]
type = S
physics = S
sprpriority = 0
anim = 920
ctrl = 0

[State MUTEKI];ちょっとだけ無敵
type= NotHitBy
trigger1 = Time = 0;
time = 3;ちょっとだけ無敵
value = SCA, NA, SA, HA, NT, ST, HT

[State Varset]
type = varset
Trigger1 = var(5) > 0;装備中だったなら
var(5) = 0;この状態へ

[State BGMOFF]
type = varset
Trigger1 = Time = 0
var(20) = 0

[State BGMOFF]
type = StopSnd
Trigger1 = Time = 0
channel = 2;BGM

[State OHNO]
type = PlaySnd
triggerall = var(40);ボイスＯＫ
Trigger1 = Time = 0
value = 1,50;おーのーあなるぱわー
channel = 0

[State End]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;------------------------------
;BGM停止用ヘルパー
[Statedef 37000]
ctrl = 0
anim = 99999999;10010
ownpal = 1

[State -1]
type = notHitBy
trigger1 = 1
value = SCA
time = 1

[State -3,STOPBGM];BGMストップ
type = AssertSpecial
trigger1 = parent,var(20) = 1;BGMが流れ出したなら
flag = nomusic

[State END]
type = DestroySelf
triggerall = parent,prevstateno != [75000,75009]
Trigger1 = parent,var(20) = 0;var(20)がなくなったなら消えましょう
