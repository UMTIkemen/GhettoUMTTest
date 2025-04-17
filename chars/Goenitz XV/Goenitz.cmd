; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================

;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Command]
Name = "AI0"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI1"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 0
[Command]
Name = "AI2"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI3"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI4"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI5"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI6"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI7"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI8"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI9"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0
[Command]
Name = "AI10"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 0
[Command]
Name = "AI11"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI12"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI13"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI14"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI15"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI16"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI17"
Command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
Time = 0
[Command]
Name = "AI18"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI19"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 0
[Command]
Name = "AI20"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI21"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI22"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI23"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI24"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI25"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI26"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI27"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0
[Command]
Name = "AI28"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 0
[Command]
Name = "AI29"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI30"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI31"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI32"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI33"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI34"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI35"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI36"
Command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI37"
Command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
Time = 0
[Command]
Name = "AI38"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
Time = 0
[Command]
Name = "AI39"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
Time = 0
[Command]
Name = "AI40"
Command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
Time = 0
[Command]
Name = "AI41"
Command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
Time = 0
[Command]
Name = "AI42"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI43"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
Time = 0
[Command]
Name = "AI44"
Command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
Time = 0
[Command]
Name = "AI45"
Command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
Time = 0
[Command]
Name = "AI46"
Command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
Time = 0
[Command]
Name = "AI47"
Command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI48"
Command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
Time = 0
[Command]
Name = "AI49"
Command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
Time = 0
[Command]
Name = "AI50"
Command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
Time = 0

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| ＭＡＸ超必殺技 |--------------------------------------------------------------
[Command]
Name = "Ibuki Nagayo"
Command = ~D, DB, B, D, DB, B, z
Time = 30

[Command]
Name = "CLIMAX"
Command = ~D, DF, F, D, DF, F, c
Time = 30

[Command]
Name = "Fuujin Ibuki"
Command = ~D, DF, F, D, DF, F, x
Time = 25

[Command]
Name = "Fuujin Ibuki"
Command = ~D, DF, F, D, DF, F, y
Time = 25

[Command]
name = "MAXやみどうこく"
command = ~B,DB,D,DF,F,B,DB,D,DF,F, c
time = 45

[Command]
name = "MAXやみどうこく"
command = ~DB, DF, c
time = 45

[Command]
name = "MAXやみどうこくl"
command = ~$D,B,$D,B, x+y
time = 45

[Command]
name = "じっそうこくXY"
command = ~D, DF, F, D, DB, B, x+y
time = 30

[Command]
name = "じっそうこくC"
command = ~D, DF, F, D, DB, B, a+b
time = 30

[Command]
name = "ふうじんいぶき"
command = ~D, DF, F, D, DF, F, a+b
time = 30

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "やみどうこく"
command = ~$D,B,$D,B, x
time = 15

[Command]
name = "やみどうこく"
command = ~$D,B,$D,B, y
time = 15

[Command]
name = "弱みずち"
command = ~D, DF, F, D, DB, B, x
time = 25

[Command]
name = "強みずち"
command = ~D, DF, F, D, DB, B, y
time = 25

[Command]
name = "Wanhyo EX"
command = ~F, D, DF, x+y
time = 25

[Command]
name = "Jump Slash EX"
command = ~F, D, DF, a+b
time = 25

[Command]
name = "Yonokaze EX1"
command = ~D, DF, F, x+y
time = 25

[Command]
name = "Yonokaze EX2"
command = ~D, DF, F, a+b
time = 25

[Command]
name = "Yonokaze EX Homing"
command = ~D, D, c
time = 25

[Command]
name = "L SEIRAN EX"
command = ~D, DB, B, x+y
time = 25

[Command]
name = "EX Hyouga"
command = ~D, DB, B, a+b
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------


[Command]
name = "弱そうが"
command = ~D, DB, B, F, a
time = 25

[Command]
name = "強そうが"
command = ~D, DB, B, F, b
time = 25

[Command]
name = "よのかぜX"
command = ~D, DF, F, x

[Command]
name = "よのかぜY"
command = ~D, DF, F, y

[Command]
name = "よのかぜA"
command = ~D, DF, F, a

[Command]
name = "よのかぜB"
command = ~D, DF, F, b

[Command]
name = "Yonokaze c"
command = ~D, DF, F, c

[Command]
name = "Jump Slash Light"
command = ~F, D, DF, a

[Command]
name = "Jump Slash Heavy"
command = ~F, D, DF, b

[Command]
name = "Wanhyo a"
command = ~F, D, DF, x

[Command]
name = "Wanhyo b"
command = ~F, D, DF, y

[Command]
name = "弱ひょうが"
command = ~D, DB, B, a

[Command]
name = "強ひょうが"
command = ~D, DB, B, b

[Command]
name = "弱せいらん"
command = ~D, DB, B, x

[Command]
name = "強せいらん"
command = ~D, DB, B, y

[Command]
name = "jump"    
command = D, $U
time = 12

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery" 
command = z
time = 1

[Command]
name = "ふっとばし"
command = y+b
time = 1

[Command]
name = "ふっとばし"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "MAX"
command = a+y
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■AI(CPU)はどう動くのか
;MUGENの標準CPUは相手に近づき適当に攻撃を繰り出すだけなので、AIスイッチによる制御が必要なこともあります。
;
;■[Statedef -1]とは？

; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;==============================================================================
;MAXやみどうこく
[State -1, Ibuki Nagayo]
type = Null;ChangeState
Value = 4000
triggerall = var(59) != 1
TriggerAll = Command = "Ibuki Nagayo"
TriggerAll = StateType != A
triggerall = power >= ifelse(Var(23)>0,1000,2000)
Trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 2115 && time = [10,28]
trigger34 = stateno = 1210 && time > 10
trigger35 = stateno = 1255 && time > 10

;CLIMAX
[State -1, CLIMAX]
type = ChangeState
Value = 4200
triggerall = var(59) != 1
TriggerAll = Command = "CLIMAX"
TriggerAll = StateType != A
triggerall = power >= ifelse(Var(23)>0,2000,3000)
Trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 2115 && time = [10,28]
trigger34 = stateno = 3015 && time = [97,107]
trigger35 = stateno = 3111 && time = [170,188]
trigger36 = stateno = 3315 && time = [90,107]
trigger37 = stateno = 4020 && time = [191,220]
trigger38 = stateno = 1210 && time > 10
trigger39 = stateno = 1255 && time > 10

;MAXやみどうこく
[State -1, MAX YAMI]
type = ChangeState
value = 3200
triggerall = var(59) != 1
triggerall = command = "MAXやみどうこく"
triggerall = power >= ifelse(Var(23)>0,1000,3000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;じっそうこくXY
[State -1, JISSOUKOKU XY]
type = ChangeState
value = 3100
triggerall = var(59) != 1
triggerall = command = "じっそうこくXY"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2115 && time = [10,28]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;じっそうこくC
[State -1, JISSOUKOKU C]
type = ChangeState
value = 3150
triggerall = var(59) != 1
triggerall = command = "じっそうこくC"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2115 && time = [10,28]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;ふうじんいぶき
[State -1, IBUKI]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "ふうじんいぶき"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2115 && time = [10,28]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10
trigger35 = stateno = 2015 && time = [101,134]

;------------------------------------------------------------------------------
;やみどうこく
[State -1, YAMI]
type = ChangeState
value = 3300
triggerall = var(59) != 1
triggerall = command = "MAXやみどうこくl"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
triggerall = statetype != A
triggerall = p2stateno != [120,155]
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 2015 && time = [101,134]
trigger33 = stateno = 1210 && time > 10
trigger34 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;やみどうこく
[State -1, YAMI]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = command = "やみどうこく"
triggerall = power >= ifelse(Var(23)>0,0,1000)
triggerall = statetype != A
triggerall = p2stateno != [120,155]
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 1210 && time > 10
trigger33 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;強みずち
[State -1, S MIZUCHI]
type = ChangeState
value = 2050
triggerall = var(59) != 1
triggerall = command = "強みずち"
triggerall = power >= ifelse(Var(23)>0,0,1000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 1210 && time > 10
trigger33 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;弱みずち
[State -1, L MIZUCHI]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "弱みずち"
triggerall = power >= ifelse(Var(23)>0,0,1000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 210 && time = [10,14]
trigger5 = movecontact && stateno = 211 && time = [5,10]
trigger6 = movecontact && stateno = 215 && time = [4,10]
trigger7 = movecontact && stateno = 220 && time = [5,10]
trigger8 = movecontact && stateno = 230 && time = [4,9]
trigger9 = movecontact && stateno = 240 && time = [10,13]
trigger10 = movecontact && stateno = 250 && time = [6,17]
trigger11 = movecontact && stateno = 400 && time = [4,8]
trigger12 = movecontact && stateno = 410 && time = [6,11]
trigger13 = movecontact && stateno = 430 && time = [4,7]
trigger14 = stateno = 440 && time < 20
trigger15 = stateno = 300 && time = [16,30]
trigger16 = movecontact && stateno = 310 && time = [15,22]
trigger17 = movecontact && stateno = 311 && time = [15,22]
trigger18 = movecontact && stateno = 1100
trigger19 = movecontact && stateno = 1105
trigger20 = movecontact && stateno = 1110
trigger21 = movecontact && stateno = 1150
trigger22 = movecontact && stateno = 1155
trigger23 = movecontact && stateno = 1160
trigger24 = movecontact && stateno = 1140
trigger25 = movecontact && stateno = 1141
trigger26 = movecontact && stateno = 1200
trigger27 = movecontact && stateno = 1250
trigger28 = stateno = 1300 && animelemtime(14) >= 0
trigger29 = stateno = 1301
trigger30 = stateno = 1355 && time = [0,7]
trigger31 = movecontact && stateno = 1505
trigger32 = stateno = 1210 && time > 10
trigger33 = stateno = 1255 && time > 10

;------------------------------------------------------------------------------
;Wanhyo EX
[State -1, Wanhyo EX]
type = ChangeState
value = 1260
triggerall = var(59) != 1
triggerall = command = "Wanhyo EX"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
triggerall = stateno != 1260
triggerall = stateno != 1210
;triggerall = p2stateno != [120,155]
triggerall = p2stateno != 20
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------
;Jump Slash EX
[State -1, Jump Slash EX]
type = ChangeState
value = 1142
triggerall = var(59) != 1
triggerall = command = "Jump Slash EX"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------
;Yonokaze EX1
[State -1, Yonokaze EX1]
type = ChangeState
value = 1021
triggerall = var(59) != 1
triggerall = command = "Yonokaze EX1"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10

;Yonokaze EX2
[State -1, Yonokaze EX2]
type = ChangeState
value = 1022
triggerall = var(59) != 1
triggerall = command = "Yonokaze EX2"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;Yonokaze EX Homing
[State -1, Yonokaze EX Homing]
type = Null;ChangeState
value = 1024
triggerall = var(59) != 1
triggerall = command = "Yonokaze EX Homing"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]
trigger21 = movecontact && stateno = 1155

;L SEIRAN EX
[State -1, L SEIRAN EX]
type = ChangeState
value = 11000
triggerall = var(59) != 1
triggerall = command = "L SEIRAN EX"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;EX Hyouga
[State -1, EX Hyouga]
type = ChangeState
value = 13500
triggerall = var(59) != 1
triggerall = command = "EX Hyouga"
triggerall = statetype != A
triggerall = power >= ifelse(Var(23)>0,0,500)
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = movecontact && stateno = 440 && time = [8,11]
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = movecontact && stateno = 1141
trigger14 = movecontact && stateno = 1142
trigger15 = stateno = 1210 && time > 10
trigger16 = stateno = 1255 && time > 10
trigger17 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------

;弱そうが
[State -1, L SOUGA]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "弱そうが"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;弱そうが
[State -1, L SOUGA]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "弱そうが"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1141
trigger10 = movecontact && stateno = 1142

;強そうが
[State -1, S SOUGA]
type = ChangeState
value = 1550
triggerall = var(59) != 1
triggerall = command = "強そうが"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = stateno = 1210 && time > 10
trigger19 = stateno = 1255 && time > 10
trigger20 = movecontact && stateno = 211 && time = [5,10]

;強そうが
[State -1, S SOUGA]
type = ChangeState
value = 1550
triggerall = var(59) != 1
triggerall = command = "強そうが"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1141
trigger10 = movecontact && stateno = 1142

;------------------------------------------------------------------------------
;Wanhyo a
[State -1, Wanhyo a]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = command = "Wanhyo a"
triggerall = statetype != A
triggerall = stateno != 1200
triggerall = stateno != 1210
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = movecontact && stateno = 211 && time = [5,10]

;Wanhyo b
[State -1, Wanhyo b]
type = ChangeState
value = 1250
triggerall = var(59) != 1
triggerall = command = "Wanhyo b"
triggerall = statetype != A
triggerall = stateno != 1250
triggerall = stateno != 1255
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = movecontact && stateno = 1142
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------

;Jump Slash Light
[State -1, Jump Slash Light]
type = ChangeState
value = 1140
triggerall = var(59) != 1
triggerall = command = "Jump Slash Light"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;Jump Slash Heavy
[State -1, Jump Slash Heavy]
type = ChangeState
value = 1141
triggerall = var(59) != 1
triggerall = command = "Jump Slash Heavy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;------------------------------------------------------------------------------
;よのかぜX
[State -1, YONOKAZE X]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "よのかぜX"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;よのかぜX
[State -1, YONOKAZE X]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "よのかぜX"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;よのかぜA
[State -1, YONOKAZE A]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = command = "よのかぜA"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;よのかぜA
[State -1, YONOKAZE A]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = command = "よのかぜA"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;よのかぜY
[State -1, YONOKAZE Y]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "よのかぜY"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;よのかぜY
[State -1, YONOKAZE Y]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "よのかぜY"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;よのかぜB
[State -1, YONOKAZE B]
type = ChangeState
value = 1015
triggerall = var(59) != 1
triggerall = command = "よのかぜB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]
trigger19 = movecontact && stateno = 1141
trigger20 = movecontact && stateno = 1142

;よのかぜB
[State -1, YONOKAZE B]
type = ChangeState
value = 1015
triggerall = var(59) != 1
triggerall = command = "よのかぜB"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;Yonokaze c
[State -1, Yonokaze c]
type = Null;ChangeState
value = 1023
triggerall = var(59) != 1
triggerall = command = "Yonokaze c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1141
trigger17 = stateno = 1210 && time > 10
trigger18 = stateno = 1255 && time > 10
trigger19 = movecontact && stateno = 211 && time = [5,10]
trigger20 = movecontact && stateno = 1155

;------------------------------------------------------------------------------
;弱ひょうが
[State -1, L HYOUGA]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "弱ひょうが"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = movecontact && stateno = 1141
trigger14 = movecontact && stateno = 1142
trigger15 = movecontact && stateno = 11100
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;弱ひょうが
[State -1, L HYOUGA]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "弱ひょうが"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;強ひょうが
[State -1, S HYOUGA]
type = ChangeState
value = 1350
triggerall = var(59) != 1
triggerall = command = "強ひょうが"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = movecontact && stateno = 1141
trigger14 = movecontact && stateno = 1142
trigger15 = movecontact && stateno = 11100
trigger16 = stateno = 1210 && time > 10
trigger17 = stateno = 1255 && time > 10
trigger18 = movecontact && stateno = 211 && time = [5,10]

;強ひょうが
[State -1, S HYOUGA]
type = ChangeState
value = 1350
triggerall = var(59) != 1
triggerall = command = "強ひょうが"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1105 && time = [6,12]
trigger9 = movecontact && stateno = 1505

;------------------------------------------------------------------------------

;弱せいらん
[State -1, L SEIRAN]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "弱せいらん"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1140
trigger17 = stateno = 1210 && time > 10
trigger18 = stateno = 1255 && time > 10
trigger19 = movecontact && stateno = 211 && time = [5,10]

;弱せいらん
[State -1, L SEIRAN]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "弱せいらん"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1505

;強せいらん
[State -1, S SEIRAN]
type = ChangeState
value = 1150
triggerall = var(59) != 1
triggerall = command = "強せいらん"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [4,10]
trigger3 = movecontact && stateno = 205 && time = [4,10]
trigger4 = movecontact && stateno = 215 && time = [4,10]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 250 && time = [6,17]
trigger7 = movecontact && stateno = 400 && time = [4,8]
trigger8 = movecontact && stateno = 410 && time = [6,11]
trigger9 = movecontact && stateno = 430 && time = [4,7]
trigger10 = stateno = 440 && time < 20
trigger11 = stateno = 300 && time = [16,30]
trigger12 = movecontact && stateno = 311 && time = [15,22]
trigger13 = stateno = 1300 && time = [26,37]
trigger14 = stateno = 1301
trigger15 = stateno = 1355 && time = [0,7]
trigger16 = movecontact && stateno = 1140
trigger17 = movecontact && stateno = 1141
trigger18 = movecontact && stateno = 1142
trigger19 = stateno = 1210 && time > 10
trigger20 = stateno = 1255 && time > 10
trigger21 = movecontact && stateno = 211 && time = [5,10]

;強せいらん
[State -1, S SEIRAN]
type = ChangeState
value = 1150
triggerall = var(59) != 1
triggerall = command = "強せいらん"
triggerall = statetype != A
triggerall = var(23) > 0
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 240
trigger5 = stateno = 430
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 310 && time = [8,11]
trigger8 = movecontact && stateno = 1505

-----------------------------------------------------------------------------

[State -1, Charge]
type = Null;ChangeState
value = 9000
triggerall = Power != PowerMax
triggerall = command = "hold_x" && command = "hold_a" && command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 5) || stateno = 101

;Max On
[State -1, Max On]
type = ChangeState
value = 9030
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(23) <= 0
trigger1 = ctrl || (stateno = 100 && time >= 5) || stateno = 101

;Quick Max
[State -1, Quick Max]
type = ChangeState
value = 9031
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = var(23) <= 0
trigger1 = stateno = [200,499]
trigger1 = movecontact = 1

;後緊急回避
[State -1, T S]
type = ChangeState
value = 710
triggerall = var(59) != 1
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,152]

;---------------------------------------------------------------------------
;前緊急回避
[State -1, T S]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,152]
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;ふっとばし
[State -1, Throw]
type = ChangeState
value = 300
triggerall = var(59) != 1
triggerall = command = "ふっとばし"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,152]

;---------------------------------------------------------------------------

;受身
[State -1, UKEMI]
type = ChangeState
value = 5200
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = StateNo = 5050 || StateNo = 5071
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20

;------------------------------------------------------------------------------
;空中ふっとばし
[State -1, CD]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "ふっとばし"
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;P投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holdfwd" ;|| command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------
;K投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holdfwd" ;|| command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------

;うらなぎ
[State -1, URANAGI]
type = ChangeState
value = 310
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 440 && time < 20

;うらなぎ
[State -1, URANAGI]
type = ChangeState
value = 311
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time = [5,13]
trigger3 = movecontact && stateno = 205 && time = [4,11]
trigger4 = movecontact && stateno = 215 && time = [4,13]
trigger5 = movecontact && stateno = 230 && time = [4,10]
trigger6 = movecontact && stateno = 250 && time = [7,12]
trigger7 = movecontact && stateno = 400 && time = [3,7]
trigger8 = movecontact && stateno = 410 && time = [6,10]
trigger9 = stateno = 440 && time < 20

;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 18
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 24
trigger1 = ctrl
trigger2 = stateno = 1300 && animelemtime(14) >= 0
trigger3 = stateno = 1301
trigger4 = stateno = 1355 && time = [0,7]

;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;遠距離立ち強パンチ
[State -1, Stand Strong Punch Followup]
type = ChangeState
value = 211
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && time >= 11 && movecontact


;------------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 20
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact
trigger4 = stateno = 200 && time >= 6 && movecontact
trigger5 = stateno = 205 && time >= 6 && movecontact
trigger6 = stateno = 230 && time >= 6 && movecontact

;近距離立ち強キック
;[State -1, Standing Strong Kick]
;type = ChangeState
;value = 245
;triggerall = command = "b"
;triggerall = command != "holddown"
;triggerall = statetype = S
;triggerall = var(32) = 1
;triggerall = p2bodydist X < 20
;trigger1 = ctrl

;遠距離立ち強キック
;[State -1, Standing Strong Kick]
;type = ChangeState
;value = 240
;triggerall = command = "b"
;triggerall = command != "holddown"
;triggerall = statetype = S
;triggerall = var(32) = 1
;trigger1 = ctrl

;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
;triggerall = var(32) = 0
triggerall = p2bodydist X < 20
trigger1 = ctrl
trigger2 = stateno = 1300 && animelemtime(14) >= 0
trigger3 = stateno = 1301
trigger4 = stateno = 1355 && time = [0,7]

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
;triggerall = var(32) = 0
trigger1 = ctrl

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
;triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 6 && movecontact
trigger3 = stateno = 430 && time >= 6 && movecontact

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 6 && movecontact
trigger3 = stateno = 400 && time >= 6 && movecontact

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;ジャンプ強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;垂直ジャンプ強キック
[State -1, Jump Strong Kick]
type = Null;ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = stateno != 105
;triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

