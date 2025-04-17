;-| キーコンフィグ |------------------------------
;左が本来のボタンで、右が設定したいボタン
[Remap]
a = a
b = b
c = c
x = x
y = y
z = z
s = s

;-| CPUアルゴリズム用コマンド |------------------------------
;CPUアルゴリズムを使う際に便利な記述です。
;AIを使わないなら必要ありません。
;これらのコマンドは人間には入力できないものにする必要があります。

[Command]
Name    = "AI_00"
Command =  a, a
Time = 0
[Command]
Name    = "AI_01"
Command =  a, b
Time = 0
[Command]
Name    = "AI_02"
Command =  a, c
Time = 0
[Command]
Name    = "AI_03"
Command =  a, x
Time = 0
[Command]
Name    = "AI_04"
Command =  a, y
Time = 0
[Command]
Name    = "AI_05"
Command =  a, z
Time = 0
[Command]
Name    = "AI_06"
Command =  a, s
Time = 0
[Command]
Name    = "AI_07"
Command =  b, a
Time = 0
[Command]
Name    = "AI_08"
Command =  b, b
Time = 0
[Command]
Name    = "AI_09"
Command =  b, c
Time = 0
[Command]
Name    = "AI_10"
Command =  b, x
Time = 0
[Command]
Name    = "AI_11"
Command =  b, y
Time = 0
[Command]
Name    = "AI_12"
Command =  b, z
Time = 0
[Command]
Name    = "AI_13"
Command =  b, s
Time = 0
[Command]
Name    = "AI_14"
Command =  c, a
Time = 0
[Command]
Name    = "AI_15"
Command =  c, b
Time = 0
[Command]
Name    = "AI_16"
Command =  c, c
Time = 0
[Command]
Name    = "AI_17"
Command =  c, x
Time = 0
[Command]
Name    = "AI_18"
Command =  c, y
Time = 0
[Command]
Name    = "AI_19"
Command =  c, z
Time = 0
[Command]
Name    = "AI_20"
Command =  c, s
Time = 0
[Command]
Name    = "AI_21"
Command =  x, a
Time = 0
[Command]
Name    = "AI_22"
Command =  x, b
Time = 0
[Command]
Name    = "AI_23"
Command =  x, c
Time = 0
[Command]
Name    = "AI_24"
Command =  x, x
Time = 0
[Command]
Name    = "AI_25"
Command =  x, y
Time = 0
[Command]
Name    = "AI_26"
Command =  x, z
Time = 0
[Command]
Name    = "AI_27"
Command =  x, s
Time = 0
[Command]
Name    = "AI_28"
Command =  y, a
Time = 0
[Command]
Name    = "AI_29"
Command =  y, b
Time = 0
[Command]
Name    = "AI_30"
Command =  y, c
Time = 0
[Command]
Name    = "AI_31"
Command =  y, x
Time = 0
[Command]
Name    = "AI_32"
Command =  y, y
Time = 0
[Command]
Name    = "AI_33"
Command =  y, z
Time = 0
[Command]
Name    = "AI_34"
Command =  y, s
Time = 0
[Command]
Name    = "AI_35"
Command =  s, a
Time = 0
[Command]
Name    = "AI_36"
Command =  s, b
Time = 0
[Command]
Name    = "AI_37"
Command =  s, c
Time = 0
[Command]
Name    = "AI_38"
Command =  s, x
Time = 0
[Command]
Name    = "AI_39"
Command =  s, y
Time = 0
[Command]
Name    = "AI_40"
Command =  s, z
Time = 0
[Command]
Name    = "AI_41"
Command =  s, s
Time = 0
[Command]
Name    = "AI_42"
Command =  U, U
Time = 0
[Command]
Name    = "AI_43"
Command =  U, F
Time = 0
[Command]
Name    = "AI_44"
Command =  U, D
Time = 0
[Command]
Name    = "AI_45"
Command =  U, B
Time = 0
[Command]
Name    = "AI_46"
Command =  F, U
Time = 0
[Command]
Name    = "AI_47"
Command =  F, F
Time = 0
[Command]
Name    = "AI_48"
Command =  F, D
Time = 0
[Command]
Name    = "AI_49"
Command =  F, B
Time = 0
[Command]
Name    = "AI_50"
Command =  D, U
Time = 0
[Command]
Name    = "AI_51"
Command =  D, F
Time = 0
[Command]
Name    = "AI_52"
Command =  D, D
Time = 0
[Command]
Name    = "AI_53"
Command =  D, B
Time = 0
[Command]
Name    = "AI_54"
Command =  B, U
Time = 0
[Command]
Name    = "AI_55"
Command =  B, F
Time = 0
[Command]
Name    = "AI_56"
Command =  B, D
Time = 0
[Command]
Name    = "AI_57"
Command =  B, B
Time = 0
[Command]
Name    = "AI_58"
Command =  UF, UF
Time = 0
[Command]
Name    = "AI_59"
Command =  UF, UB
Time = 0
[Command]
Name    = "AI_60"
Command =  UF, DF
Time = 0
[Command]
Name    = "AI_61"
Command =  UF, DB
Time = 0
[Command]
Name    = "AI_62"
Command =  UB, UF
Time = 0
[Command]
Name    = "AI_63"
Command =  UB, UB
Time = 0
[Command]
Name    = "AI_64"
Command =  UB, DF
Time = 0
[Command]
Name    = "AI_65"
Command =  UB, DB
Time = 0
[Command]
Name    = "AI_66"
Command =  DF, UF
Time = 0
[Command]
Name    = "AI_67"
Command =  DF, UB
Time = 0
[Command]
Name    = "AI_68"
Command =  DF, DF
Time = 0
[Command]
Name    = "AI_69"
Command =  DF, DB
Time = 0


;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 30;20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 30;20

[Command] 
name = "Tehletteh"   
command = ~D, DF, F, y+b
time = 30

[Command] 
name = "FinalMaster"   
command = ~D, DF, F, x+a+b
time = 30

[Command] 
name = "MasterSpark"   
command = ~D, DF, F, x+a
time = 30
;[Command] 
;name = "MasterSpark"   
;command = ~D, DF, F, x+a;押しっぱからでも・・・うまくいかない。保留
;time = 30

[Command] 
name = "MasterBlade"   
command = ~D, DF, F, z+c
time = 30

[Command] 
name = "MaliceCannon"   
command = ~D, DF, F, z
time = 30

[Command] 
name = "NonDirLazer"   
command = ~D, DF, F, c
time = 30

[Command] 
name = "SuparHouki" 
;command = ~F, D, DF,  a+b;昇竜ＡＢ
command = ~D, DB, B,  a+b;竜巻ＡＢ
time = 30

[Command] 
name = "Axel";アクセルフォーム
command = ~B, D, F,  a+b;昇竜ＡＢ
time = 30

[Command] 
name = "Papi";ぱぴ！よん！ 
;command = ~F, D, B,  a+b;63214ＡＢ
command = ~F, D, DF,  a+b;昇竜ＡＢ
time = 30

[Command];げっと武器発動 関連ステートは35000-（SasugaFightingROBERT.stにまとめ）
name = "SPWeapons"
command = ~D, DB , B, y

;ドローカード！
[Command]
name = "BattleCard"     
command = ~D, D, D, s
time = 30

;-| 必殺技 |------------------------------------------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "Shouryu_a"
command = ~F, D, DF, a

[Command]
name = "Shouryu_b"
command = ~F, D, DF, b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
Name    = "HoukiCrush1"
Command = ~D, D, a
Time    = 20

[Command]
Name    = "HoukiCrush2"
Command = ~D, D, b
Time    = 20

;とくしゅ挑発１
[Command]
name = "HAYAKAWA"
command = ~D, DB, B, s

;げっと投げコマンド-----------
[Command]
name = "GetNage"
command = ~F, D, B, F, y
time = 30
;-----------------------------

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "highjump"    
command = ~D,$U
time = 10

;本家魔理沙準拠で、特押しながら上もアリ
[Command]
name = "highjump"    
command = /y,U
time = 1

[Command]
name = "dashjump"    
command = /y,UF
time = 1

;[Command]
;name = "dashjump"    
;command = F/y,U
;time = 1

[Command]
name = "dashjump"    
command = /y,UB
time = 1

;[Command]
;name = "dashjump"    
;command = B/y,U
;time = 1

;※※※※※※※※※※※※※※※※※※※※前避け
;前を押しながらＡ＋Ｂ、という意味
;X+Yヘ変更
;[Command]
;name = "away-f"    
;command = /F,x+y
;time = 10

;[Command]
;name = "away-f"    
;command = x+y
;time = 10

;[Command]
;name = "away-f"    
;command = /x,y;XおしながらYでも
;time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;後を押しながらＡ＋Ｂ、という意味
;[Command]
;name = "away-b"    
;command = /B,x+y
;time = 10

;[Command]
;name = "away-b"    
;command = /B+x,y
;time = 10

;緊急回避共通コマンドにする

[Command]
name = "away"    
command = x+y
time = 10

[Command]
name = "away"    
command = /x,y;XおしながらYでも
time = 10

;ぱわーＭＡＸ
[Command]
name = "POWMAX"     
;command = ~D, D, D, y;かえまつ
command = x+a+b
time = 30

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "FF"     
command = /y, F
time = 1

;[Command]
;name = "FF"     
;command = /F, y
;time = 1

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "BB"     
command = /y, B
time = 1

;[Command]
;name = "BB"     
;command = /B, y
;time = 1

;本家魔理沙準拠で、特押しながらもアリ

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;アドバンシングガードもどき--------------------
[command]
name = "advguard"
command = x+a
time = 10

[command]
name = "advguard"
command = x+b
time = 10

[command]
name = "advguard"
command = a+b
time = 10

[command]
name = "advguard"
command = y;特殊ボタンなんだけども、これはアリにするべきか、しないべきか・・・
time = 10

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
;ぱんち
[Command]
name = "a"
command = a
time = 1
;きっく
[Command]
name = "b"
command = b
time = 1

;cとzは基本的に使わない方針
[Command]
name = "c"
command = c
time = 1

;ショット
[Command]
name = "x"
command = x
time = 1

;スペシャル
[Command]
name = "y"
command = y
time = 1

;cとzは基本的に使わない方針
[Command]
name = "z"
command = z
time = 1

;挑発
[Command]
name = "start"
command = s
time = 1

;ジャギ技用--------------------------------
;[Command]
;name = "F"
;command = F
;time = 1

;[Command]
;name = "B"
;command = B
;time = 1

;[Command]
;name = "U"
;command = U
;time = 1

;[Command]
;name = "D"
;command = D
;time = 1

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "releasex"
command = ~x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdzc"
command = /z+c
time = 1

; 下の記述↓は絶対に消さないでください。--------------------------------------
[Statedef -1]


;特殊超必-----
;---------------------------------------------------------------------------
;ゲット投げコマンド特殊技（特定条件下）
;ラスマゲドロップ（ハイパーボッ装備時）
[State -1, GetNage]
type = ChangeState
value = 3400
triggerall = !var(59)
triggerall = command = "GetNage"
triggerall = statetype = S
triggerall = ctrl
triggerall = var(5) = 10;ボッ装備中
triggerall = var(6);げーじ大丈夫？
triggerall = power >= 2000;パワー2000以上
trigger1 = stateno != 100
trigger1 = p2bodydist X < 70
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;ゲット武器発動！（武器ゲージを実装予定）
[State CMD, SPWeapons_Fire]
type = ChangeState
value = 35000 ;特殊武器関連のステートをまとめ。
triggerall = !var(59)
triggerall = command = "SPWeapons"
triggerall = var(5) > 0;装備してる？
triggerall = var(6);げーじ大丈夫？
trigger1 = ctrl
trigger1 = statetype != A
;地上コンボ三段目からキャンセルが可能（一部除く）
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact
trigger2 = var(5) != 10;コンボからボッとかあもりにも卑怯すぎるでしょう？
trigger2 = var(5) != 25;コンボから審査員とかあもりにも卑怯すぎるでしょう？
;お別れはコンボからも容赦なくやってたのでどこもおかしくはない

;===========================================================================
;---------------------------------------------------------------------------
;テーレッテー
[State -1, Tehletteh]
type = ChangeState
value = 70000
triggerall = !var(59)
triggerall = var(42) != 1;一撃技可能 
triggerall = (Numpartner = 0)&&(Enemy,Numpartner = 0)
triggerall = var(41) >= 7;七星ゲージＭＡＸ 
triggerall = var(5) >= -1;MAX状態～特殊武器
triggerall = command = "Tehletteh"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 225)
trigger2 = movecontact
trigger3 =  (stateno = 240);マスィブブルーム
trigger3 = movecontact
trigger4 =  (stateno = 245);パワースィープ
trigger4 = movecontact
;---------------------------------------------------------------------------
;テーレッテー２
[State -1, Tehletteh]
type = ChangeState
value = 72000
triggerall = !var(59)
triggerall = var(42) != 1;一撃技可能 
triggerall = (Numpartner > 0)||(Enemy,Numpartner > 0)
triggerall = var(41) >= 7;七星ゲージＭＡＸ 
triggerall = var(5) >= -1;MAX状態～特殊武器
triggerall = command = "Tehletteh"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 225)
trigger2 = movecontact
trigger3 =  (stateno = 240);マスィブブルーム
trigger3 = movecontact
trigger4 =  (stateno = 245);パワースィープ
trigger4 = movecontact

;---------------------------------------------------------------------------
;ますたーすぱーくLv3
[State -1, MasterSparkLv3]
type = ChangeState
value = 3010
triggerall = !var(59)
triggerall = command = "FinalMaster"
triggerall = power >= 2000
triggerall = var(5) = -1;MAX状態
triggerall = life < 300;ピンチ
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 225)
trigger2 = movecontact


;---------------------------------------------------------------------------
;ますたーすぱーくLv2
[State -1, MasterSparkLv2]
type = ChangeState
value = 3005
triggerall = !var(59)
triggerall = command = "MasterSpark"
triggerall = power >= 1000
triggerall = var(5) = -1;MAX状態
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 225)
trigger2 = movecontact
trigger3 =  (stateno = 215)
trigger3 = movecontact

;---------------------------------------------------------------------------
;ますたーすぱーくLv1
[State -1, MasterSparkLv1]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "MasterSpark"
triggerall = power >= 1000
triggerall = var(5) != -1;MAX状態じゃない
triggerall = (var(5) != 28)&&(var(5) != 23);ダークパワー未装備
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 225)
trigger2 = movecontact
trigger3 =  (stateno = 245)
trigger3 = movecontact

;---------------------------------------------------------------------------
;ますたーすぱーくLv1D
[State -1, DRAKSpaak]
type = ChangeState
value = 3020
triggerall = !var(59)
triggerall = command = "MasterSpark"
triggerall = power >= 1000
triggerall = var(5) != -1;MAX状態じゃない
triggerall = (var(5) = 28)||(var(5) = 23);ダークパワー装備
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 225)
trigger2 = movecontact
trigger3 =  (stateno = 245)
trigger3 = movecontact

;---------------------------------------------------------------------------
;ブレイジングスター
[State -1, ITEM-2]
type = ChangeState
value = 3045
triggerall = !var(59)
triggerall = command = "SuparHouki"
triggerall = power >= 1000
triggerall = var(5) = -1;MAX状態
trigger1 = statetype != C;立ち状態か空中状態
trigger1 = ctrl
trigger2 = (Stateno = 245) || (stateno = 261);パワースィープ　or　マスィブボディ
trigger2 = movecontact
;えりあるもキャンセルが可能
trigger3 =  (stateno = [605,630]) || (stateno = [610,615])
trigger3 = movecontact

;---------------------------------------------------------------------------
;スターダストレヴァリエ
[State -1, HOUKISP]
type = ChangeState
value = 3040
triggerall = !var(59)
triggerall = command = "SuparHouki"
triggerall = power >= 1000
triggerall = var(5) != -1;MAX状態じゃない
trigger1 = statetype != C;立ち状態か空中状態
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = 261) ;なぜかヒップから繋がる
trigger2 = movecontact
;えりあるもキャンセルが可能
;trigger3 =  (stateno = [1010,1011]) || (stateno = [610,615])
;trigger3 = movecontact

;---------------------------------------------------------------------------
;ＭＡＸアクセルフォーム
[State -1, AXEL]
type = ChangeState
value = 30410
triggerall = !var(59)
triggerall = command = "Axel"
triggerall = power >= 1000
triggerall = var(5) = -1;MAX状態
trigger1 = statetype = S;立ち状態
trigger1 = ctrl

;---------------------------------------------------------------------------
;アクセルフォーム
[State -1, AXEL]
type = ChangeState
value = 30400
triggerall = !var(59)
triggerall = command = "Axel"
triggerall = power >= 1000
triggerall = var(5) != -1;MAX状態じゃない
trigger1 = statetype = S;立ち状態
trigger1 = ctrl

;---------------------------------------------------------------------------
;バタフライストリームＭＡＸ
[State -1, HOUKISP]
type = ChangeState
value = 3035
triggerall = !var(59)
triggerall = command = "Papi"
triggerall = power >= 1000
triggerall = var(5) = -1;MAX状態
trigger1 = statetype = S;立ち状態
trigger1 = ctrl

;---------------------------------------------------------------------------
;バタフライストリーム
[State -1, HOUKISP]
type = ChangeState
value = 3030
triggerall = !var(59)
triggerall = command = "Papi"
triggerall = power >= 1000
triggerall = var(5) != -1;MAX状態じゃない
trigger1 = statetype = S;立ち状態
trigger1 = ctrl
trigger2 = (Stateno = 245) ;パワースィープ
trigger2 = movecontact

;---------------------------------------------------------------------------
;マスターブレード（ＰＴアリス）
[State -1, MasterBlade]
type = ChangeState
value = 3090
triggerall = !var(59)
triggerall = var(30) = -1;アリスタイマーが-1
triggerall = partner,name = "Alice-R";ありすだったなら
triggerall = partner,statetype = S;立ち状態
triggerall = partner,ctrl
triggerall = var(32) = 0;パチュリータイマーが０
;triggerall = life <= 500
triggerall = !NumHelper(1202)
triggerall = !NumHelper(3050)
triggerall = !NumHelper(3060)
triggerall = command = "MasterBlade"
triggerall = power >= 3000
triggerall = var(5) = 0;ノーマル
trigger1 = statetype = S
trigger1 = ctrl
;マスターブレード
[State -1, MasterBlade]
type = ChangeState
value = 3090
triggerall = !var(59)
triggerall = var(30) = 0;アリスタイマーが０
triggerall = var(32) = 0;パチュリータイマーが０
;triggerall = life <= 500
triggerall = !NumHelper(1202)
triggerall = !NumHelper(3050)
triggerall = !NumHelper(3060)
triggerall = command = "MasterBlade"
triggerall = power >= 3000
triggerall = var(5) = 0;ノーマル
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 =  (stateno = 225)
;trigger2 = movecontact
;マリス砲（ＰＴアリス）
[State -1, MaliceCannon]
type = ChangeState
value = 3050
triggerall = !var(59)
triggerall = var(30) = -1;アリスタイマーが-1
triggerall = partner,name = "Alice-R";ありすだったなら
triggerall = partner,statetype = S;立ち状態
triggerall = partner,ctrl
triggerall = command = "MaliceCannon"
triggerall = power >= 2000
triggerall = var(5) = 0;ノーマル
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 =  (stateno = 225)
;trigger2 = movecontact
;マリス砲
[State -1, MaliceCannon]
type = ChangeState
value = 3050
triggerall = !var(59)
triggerall = var(30) = 0;アリスタイマーが０
triggerall = !NumHelper(1202)
triggerall = !NumHelper(3050)
triggerall = command = "MaliceCannon"
triggerall = power >= 2000
triggerall = var(5) = 0;ノーマル
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 =  (stateno = 225)
;trigger2 = movecontact
;ノンディレクショナル
[State -1, NonDirLazer]
type = ChangeState
value = 3060
triggerall = !var(59)
triggerall = var(32) = 0;パチュリータイマーが０
;triggerall = !NumHelper(1202)
;triggerall = !NumHelper(3050)
triggerall = !NumHelper(3060)
triggerall = command = "NonDirLazer"
triggerall = power >= 2000
triggerall = var(5) = 0;ノーマル
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 =  (stateno = 225)
;trigger2 = movecontact
;---------------------------------------------------------------------------
;陰陽ストライク
[State -1, RockBallA]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = !NumHelper(1020)
triggerall = command = "QCB_a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RockBallB]
type = ChangeState
value = 1021
triggerall = !var(59)
triggerall = !NumHelper(1020)
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ひえいけん（北斗技装備時）
;アフロンさんの獄屠拳互換。
[State -1, HIEIKEN_A]
type = ChangeState
value = 1050
triggerall = !var(59)
triggerall = var(5) = [16,19];北斗装備
triggerall = command = "Shouryu_a"
;trigger1 = statetype != A
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact

[State -1, HIEIKEN_B]
type = ChangeState
value = 1052
triggerall = !var(59)
triggerall = var(5) = [16,19];北斗装備
triggerall = command = "Shouryu_b"
;trigger1 = statetype != A
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact

;---------------------------------------------------------------------------
;ジェノサイドカッター（ルガ技装備時）
;
[State -1, SINSAIN_A]
type = ChangeState
value = 1055
triggerall = !var(59)
triggerall = (var(5) = 15)||(var(5) = 25);運送装備
triggerall = command = "Shouryu_a"
trigger1 = statetype != A
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact

[State -1, SINSAIN_B]
type = ChangeState
value = 1056
triggerall = !var(59)
triggerall = (var(5) = 15)||(var(5) = 25);運送装備
triggerall = command = "Shouryu_b"
trigger1 = statetype != A
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact
;---------------------------------------------------------------------------
;しょーりゅーけん
[State -1, RockUpperA]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "Shouryu_a"
trigger1 = statetype != A
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact

[State -1, RockUpperB]
type = ChangeState
value = 1011
triggerall = !var(59)
triggerall = command = "Shouryu_b"
trigger1 = statetype != A
trigger1 = ctrl
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movecontact

;---------------------
;さいこみさいる
[State -1, PsycoMissile]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "QCB_x";タツマキ＋バスター
triggerall = !NumHelper(3011);ミサイルが残っているときは連射できまそん
trigger1 = statetype = A;空中用必殺技
trigger1 = ctrl

;----------
;マスィブブルーム
[State -1]
Type       = ChangeState
Value      = 240
triggerall = !var(59)
Trigger1 = Command = "HoukiCrush1"
Trigger1 = StateType != A
Trigger1   = Ctrl
Trigger2 = Command = "a"
Trigger2   = StateNo = 230 || StateNo = 235
Trigger2   = MoveContACT

;----------
;パワースィープ
[State -1]
Type       = ChangeState
Value      = 245
triggerall = !var(59)
Trigger1 = Command = "HoukiCrush2"
Trigger1 = StateType != A
Trigger1   = Ctrl
Trigger2 = Command = "b"
Trigger2   = StateNo = 230 || StateNo = 235
Trigger2   = MoveContACT

;-----------
;チャージ発射関連
[State -1, ChargeFire SP]
type = Null;changestate;ちょーと封印
value = 3010
triggerall = !var(59)
triggerall = (command != "holdx" && PalNo % 6 != 0) || command = "x"
triggerall = var(1) >= 250
trigger1 = Ctrl
trigger1 = statetype = S
trigger1 = movetype != H
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 230) && MoveContact
trigger5 = (stateno = 235) && MoveContact
trigger6 = (stateno = 240) && MoveContact
trigger7 = (stateno = 245) && MoveContact
;trigger2 = (Stateno = 100);&& movecontact;ダッシュキャンセル可能？
;地上でフルチャージ時に放すと別の技に変化 仮に250以上とする

[State -1, ChargeFire stand]
type = changestate
value = 220
triggerall = !var(59)
triggerall = (command != "holdx" && PalNo % 6 != 0) || command = "x"
triggerall = var(1) >= 30
;triggerall = var(1) < 250
trigger1 = Ctrl
trigger1 = statetype = S
trigger1 = movetype != H
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 230) && MoveContact
trigger5 = (stateno = 235) && MoveContact

[State -1, ChargeFire jimen]
type = changestate
value = 420
triggerall = !var(59)
triggerall = (command != "holdx" && PalNo % 6 != 0) || command = "x"
triggerall = var(1) >= 30
triggerall = Ctrl
trigger1 = statetype = C
trigger1 = movetype != H

[State -1, ChargeFire AIRCOMBO FINISH]
type = changestate
value = 626
triggerall = !var(59)
triggerall = (command != "holdx" && PalNo % 6 != 0) || command = "x"
triggerall = var(1) >= 30
triggerall = !var(0) ;Var0（エリアルふっとばし中）が立ってない時でないと出せない
triggerall = stateno != 460
trigger1 = (stateno = 605) && MoveContact
trigger2 = (stateno = 610) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 615) && MoveContact

[State -1, Jump Shot AIRCOMBO FINISH]
type = ChangeState
value = 626
triggerall = !var(59)
triggerall = command = "x"
triggerall = !var(0) ;Var0（エリアルふっとばし中）が立ってない時でないと出せない
triggerall = stateno != 460
trigger1 = (stateno = 605) && MoveContact
trigger2 = (stateno = 610) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 615) && MoveContact

[State -1, ChargeFire sora];通常の空中チャージ
type = changestate
value = 620
triggerall = !var(59)
triggerall = (command != "holdx" && PalNo % 6 != 0) || command = "x"
triggerall = var(1) >= 30
triggerall = !NumProjID(10051);チャージバスターが飛んでない時
triggerall = stateno != 460
triggerall = (stateno != 630)
triggerall = (stateno != 615)
trigger1 = Ctrl
trigger1 = statetype = A
trigger1 = movetype != H
;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;trigger1 = p2bodydist X < 4;相手が近い時は発動しない

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;trigger1 = p2bodydist X < 4;相手が近い時は発動しない

;---------------------------------------------------------------------------
;空中前ダッシュ
;普通のステート、この中では一番簡単なステート
;ただし空中ダッシュを連続でできないように「stateno ! = 2300」としています
;詳細はairdash.cnsで

[State -1, airrun]
type = ChangeState
value = 2300
triggerall = !var(59)
trigger1 = command = "FF"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = stateno != 2300

;---------------------------------------------------------------------------
;パワー溜め
;新しく「holdx」「holdy」というコマンドを作ります
;あわせるとXとYを同時に押すとってことです。
;パワーがＭＡＸなのに溜めるのは変なのでトリガーにpower != 3000を付けます。
;詳細はpower.cnsで

;[State -1, Run Back]
;type = ChangeState
;value = 2000
;triggerall = !var(59)
;triggerall = power != 3000
;trigger1 = command = "holdx"
;trigger1 = command = "holdy"
;trigger1 = statetype = S
;trigger1 = ctrl

;ぱわーＭＡＸ
[State -1, POWERMAX]
type = ChangeState
value = 860
triggerall = !var(59)
triggerall = power >= 1000 ;パワーが１０００以上
trigger1 = var(5) = 0;現在、何も装備していない＆ＭＡＸでない
trigger1 = command = "POWMAX"
trigger1 = statetype = S
trigger1 = ctrl

;ドローカード！
[State -1, BATTLECARD]
type = ChangeState
value = 3503
triggerall = !var(59)
triggerall = power >= 1000 ;パワーが１０００以上
trigger1 = var(5) = 0;現在、何も装備していない＆ＭＡＸでない
trigger1 = command = "BattleCard"
trigger1 = statetype = S
trigger1 = ctrl
;ドローカード！
[State -1, CARDSHOOT]
type = ChangeState
value = 3600
triggerall = !var(59)
;triggerall = power >= 1000 ;パワーが１０００以上
trigger1 = var(5) > 0;現在、ＭＡＸでない＆何か装備している 0以上
trigger1 = command = "BattleCard"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------
;アドバンシングガードもどき。
;普通のガードですでにエフェクト使ってるんで、ガードアニメを変えることでわかりやすくする。
[State -1,ADVGUARD ST]
Type = ChangeState
Value = 160;guard.cnsに詳細。
triggerall = !var(59)
TriggerAll = Command = "advguard"
TriggerAll = Statetype = S
Trigger1 = Stateno = [150,153];まぁ、通常であれば１５０になるんだろうけど

[State -1,ADVGUARD CR]
Type = ChangeState
Value = 161;guard.cnsに詳細。
triggerall = !var(59)
TriggerAll = Command = "advguard"
TriggerAll = Statetype = C
Trigger1 = Stateno = [151,153];

[State -1,ADVGUARD AIR]
Type = ChangeState
Value = 162;guard.cnsに詳細。
triggerall = !var(59)
TriggerAll = Command = "advguard"
TriggerAll = Statetype = A
Trigger1 = Stateno = 154;
trigger2 = Stateno = 154 && prevstateno != 162
trigger2 = Time < 15

;---------------------------------------------------------------------------
;援護攻撃
;アリス援護
[State -1, Alice]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = var(30) = 0;アリスタイマーが０ ０以外の場合いかなる場合も撃てない
triggerall = !NumHelper(1202)
triggerall = command = "z"
trigger1 = statetype != A
trigger1 = ctrl
[State -1, Spilitia]
type = ChangeState
value = 1210
triggerall = !var(59)
triggerall = var(31) = 0;ティアタイマーが０
;triggerall = !NumHelper(1210)
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;真空投げ
;羅生門装備時発動
[State -1, Kung Fu Throw]
type = ChangeState
value = 65080
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = var(5) = [7,8];真空投げ装備
trigger1 = stateno != 100
trigger1 = (command = "holdfwd")||(command = "holdback")
trigger1 = p2bodydist X < 70
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;零距離ゴッドプレス
;運送装備時発動
[State -1, Kung Fu Throw]
type = ChangeState
value = 65150
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = (var(5) = 15)||(var(5) = 25);運送装備
trigger1 = stateno != 100
trigger1 = (command = "holdfwd")||(command = "holdback")
trigger1 = p2bodydist X < 70
trigger1 = (command = "holdfwd")||(command = "holdback")
trigger1 = p2movetype != H
trigger2 = stateno != 100
trigger2 = command = "holdfwd"
trigger2 = p2bodydist X < 180
trigger2 = p2statetype = A
trigger2 = p2movetype = H;食らい状態・空中落下してる時
;---------------------------------------------------------------------------
;ゲット投げ
[State -1, GetNage]
type = ChangeState
value = 805
triggerall = !var(59)
triggerall = command = "GetNage"
triggerall = statetype = S
triggerall = ctrl
triggerall = var(5) = 0
trigger1 = stateno != 100
trigger1 = p2bodydist X < 70
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;↓なんか手動でゲット投げができなくなってしまったので・・・
;Trigger1 = NumHelper(99998)
;Trigger1 = Helper(99998),Var(20) = 1

;---------------------------------------------------------------------------
;投げ
;入れる方向で動作を変えたい
[State -1, Nage]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 18
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = (stateno = 2200) && MoveContact
trigger4 = (stateno = 2250) && MoveContact
trigger5 = (stateno = 250) && MoveContact
trigger6 = (stateno = 255) && MoveContact
Trigger7   = StateNo = 230 || StateNo = 235
Trigger7   = MoveContACT

;---------------------------------------------------------------------------
;前避け
;とても簡単なステートです。
;ここでやってる特殊なことは「効率化」です。
;詳細はaway.cnsで

[State -1, Run Back]
type = ChangeState
value = 2200
triggerall = !var(59)
triggerall = command = "away"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = movecontact

;---------------------------------------------------------------------------
;後避け
;とても簡単なステートです。
;ここでやってる特殊なことは「効率化」です。
;詳細はaway.cnsで

[State -1, Run Back]
type = ChangeState
value = 2250
triggerall = !var(59)
triggerall = command = "away"
triggerall = command != "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;ヒップ
[State -1, HIP Stand]
type = ChangeState
value = 260
triggerall = !var(59)
triggerall = command = "a";bをつかう
trigger1 = command = "holdfwd"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 250) && MoveContact
trigger3 = (stateno = 255) && MoveContact

;立ち弱パンチ
;あらため、立ちパンチ
;[State -1, Stand Light Punch]
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "a";aぼたんを使う
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;-------
;パンチ二段目
[State -1, Stand Punch 2]
type = ChangeState
value = 205
triggerall = !var(59)
triggerall = command = "a";aぼたんを使う
triggerall = command != "holddown"
trigger1 = (stateno = 200) && MoveContact

;-------
;パンチ三段目
[State -1, Stand Punch 3]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a";aぼたんを使う
triggerall = command != "holddown"
trigger1 = (stateno = 205) && MoveContact

;-------
;205->キック
[State -1, Stand Drop Kick]
type = ChangeState
value = 235
triggerall = !var(59)
triggerall = command = "b";bぼたんきっく
triggerall = command != "holddown"
trigger1 = (stateno = 205) && MoveContact

;---------------------------------------------------------------------------
;横キック//エリアル発動技
[State -1, Eriak Kick]
type = ChangeState
value = 215
triggerall = !var(59)
triggerall = command = "b";bをつかう
trigger1 = command = "holdfwd"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100;前ダッシュ中に入れたら発動
trigger3 = (stateno = 250) && MoveContact
trigger4 = (stateno = 255) && MoveContact

;ニュートラルキック
;[State -1, Stand Strong Punch]
[State -1, Stand Kick]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "b";bをつかう
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;trigger4 = Stateno = 100;前ダッシュ中に入れたら発動

;-------
;210->パンチ
[State -1, Stand Punch 4]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "a";aぼたんを使う
triggerall = command != "holddown"
trigger1 = (stateno = 210) && MoveContact

;-------
;210->キック
[State -1, Stand Air Kick]
type = ChangeState
value = 255
triggerall = !var(59)
triggerall = command = "b";bぼたんきっく
triggerall = command != "holddown"
trigger1 = (stateno = 210) && MoveContact
;---------------------------------------------------------------------------
;特殊バスター（ブリッツボール）
[State -1, Buster]
type = ChangeState
value = 35315
triggerall = !var(59)
triggerall = var(5) = 31;カイザーウェイブ
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 230) && MoveContact
trigger5 = (stateno = 235) && MoveContact
trigger6 = (stateno = 250) && MoveContact
trigger7 = (stateno = 255) && MoveContact
;trigger8 = (stateno = 410) && MoveContact
;trigger9 = (stateno = 440) && MoveContact
;---------------------------------------------------------------------------
;地上バスター
;その他の必殺ショットはこれより上に書くといい？
[State -1, Buster]
type = ChangeState
;value = 230
value = 220
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = NumProjID(10053) < 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 230) && MoveContact
trigger5 = (stateno = 235) && MoveContact
trigger6 = (stateno = 250) && MoveContact
trigger7 = (stateno = 255) && MoveContact
;trigger8 = (stateno = 410) && MoveContact
;trigger9 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
;立ち強キック
;ではなく、特殊行動ボタンに割り当たってるんだな・・・
;つまり、ここいらない！？
;[State -1, Standing Strong Kick]
;type = ChangeState
;value = 240
;triggerall = !var(59)
;triggerall = command = "b"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt2]
type = ChangeState
value = 196
triggerall = !var(59)
triggerall = command = "HAYAKAWA"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
;「だが、何をしても無駄だ」
;[State -1, CardDeck]

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
;しゃがみキックに変更
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;しゃがみ弱キック
;ではなく、しゃがみショットなんだなこれが
;その他の必殺ショットはこれより上に書くといい？
;[State -1, Crouching Light Kick]
[State -1, Crouching Buster]
type = ChangeState
;value = 430
value = 420
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = NumProjID(10053) < 3
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 240) && MoveContact
trigger6 = (stateno = 400) && MoveContact
trigger7 = (stateno = 430) && MoveContact
trigger8 = (stateno = 410) && MoveContact
trigger9 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
;しゃがみ強キック
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 440
;triggerall = !var(59)
;triggerall = command = "b"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Low Punch]
type = ChangeState
value = 605;600
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 605
;trigger2 = statetime >= 7
;trigger4 = (stateno = 610) && MoveContact

;空中中パンチ　掌撃
[State -1, Jump Mid Punch]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
;triggerall = statetype = A
;trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = Stateno = 605;弱パンチから繋がる
trigger1 = movecontact
trigger2 = Stateno = 610;弱キック中で
trigger2 = movecontact

;空中強パンチ　;空中強パンチ 単発含めたい
[State -1, Jump Pow Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = command = "holddown"
;trigger2 = stateno = 600
;trigger2 = statetime >= 7
trigger2 = (stateno = 630) && MoveContact
trigger3 = (stateno = 615) && MoveContact

;-----------------------
;---------------------------------------------------------------------------
;空中強パンチ
;じゃなくて弱キック
;[State -1, Jump Strong Punch]
[State -1, Jump Kick]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 605 ;jump_x or jump_a
trigger2 = stateno = 605;605の空中Nパンチから繋げられる
trigger2 = movecontact

;ドロップキック
[State -1, Jump Mid Kick]
type = ChangeState
value = 615
triggerall = !var(59)
triggerall = command = "b"
;trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = StateNo = 610;弱キックから繋げられる
trigger1 = movecontact
trigger2 = Stateno = 630;
trigger2 = movecontact;prevStateno = 610

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Command = "holddown"
trigger2 = (stateno = 615) && MoveContact
trigger3 = (stateno = 630) && MoveContact

;---------------------------------------------------------------------------
;空中弱キック
;じゃなくて空中バスター
[State -1, Jump Shot]
type = ChangeState
;value = 630
value = 620
triggerall = !var(59)
triggerall = command = "x"
triggerall = !var(0) ;Var0（エリアルふっとばし中）が立ってない時でないと出せない
triggerall = stateno != 460
triggerall = NumProjID(10053) < 3
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 605) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 615) && MoveContact


;===========================================================================
;================================■======■■■=============================
;===============================■■=======■===============================
;==============================■==■======■===============================
;=============================■■■■=====■===============================
;=============================■====■=====■===============================
;=============================■====■===■■■=============================
;===========================================================================
;
;	AI by FAY418
;
;===========================================================================
[State AI Level]
Type = VarSet
TriggerAll = !Var(59)
TriggerAll = RoundState = 2
Trigger1  = Command = "AI_00" || Command = "AI_01" || Command = "AI_02" || Command = "AI_03" || Command = "AI_04"
Trigger2  = Command = "AI_05" || Command = "AI_06" || Command = "AI_07" || Command = "AI_08" || Command = "AI_09"
Trigger3  = Command = "AI_10" || Command = "AI_11" || Command = "AI_12" || Command = "AI_13" || Command = "AI_14"
Trigger4  = Command = "AI_15" || Command = "AI_16" || Command = "AI_17" || Command = "AI_18" || Command = "AI_19"
Trigger5  = Command = "AI_20" || Command = "AI_21" || Command = "AI_22" || Command = "AI_23" || Command = "AI_24"
Trigger6  = Command = "AI_25" || Command = "AI_26" || Command = "AI_27" || Command = "AI_28" || Command = "AI_29"
Trigger7  = Command = "AI_30" || Command = "AI_31" || Command = "AI_32" || Command = "AI_33" || Command = "AI_34"
Trigger8  = Command = "AI_35" || Command = "AI_36" || Command = "AI_37" || Command = "AI_38" || Command = "AI_39"
Trigger9  = Command = "AI_40" || Command = "AI_41" || Command = "AI_42" || Command = "AI_43" || Command = "AI_44"
Trigger10 = Command = "AI_45" || Command = "AI_46" || Command = "AI_47" || Command = "AI_48" || Command = "AI_49"
Trigger11 = Command = "AI_50" || Command = "AI_51" || Command = "AI_52" || Command = "AI_53" || Command = "AI_54"
Trigger12 = Command = "AI_55" || Command = "AI_56" || Command = "AI_57" || Command = "AI_58" || Command = "AI_59"
Trigger13 = Command = "AI_60" || Command = "AI_61" || Command = "AI_62" || Command = "AI_63" || Command = "AI_64"
Trigger14 = Command = "AI_65" || Command = "AI_66" || Command = "AI_67" || Command = "AI_68" || Command = "AI_69"
Trigger15 = PalNo >= 7
Trigger16 = NumHelper(99997)
Trigger16 = Helper(99997),var(0) = 1
IgnoreHitPause = 1
V = 59
Value = var(58)

;===========================================================================
;---------------------------------------------------------------------------
;Xボタン（0:離している 1:押している状態）
[State -1, PushButton X]
Type = VarSet
TriggerAll = Var(59)
TriggerAll = Var(39) = 0
TriggerAll = Life >= 300
TriggerAll = (Var(5) != -1 && Power < 3000) || Var(5) = -1 ;マスパ撃ちたい
;TriggerAll = Var(5) != 3 && Var(5) != 5 && Var(5) != 7 && Var(5) != 13	;サイコミサイル撃ちたい
Trigger1 = StateNo = 225
Trigger1 = Time = 2
Trigger1 = Random < 40 * Var(59)
Trigger2 = StateNo = 3005
Trigger3 = MoveType = H
Trigger3 = Random < 30 * Var(59)
var(39) = 1

[State -1, Charge End AI]
Type = VarSet
TriggerAll = Var(59)
TriggerAll = Var(39) = 1
Trigger1 = StateNo = 225
Trigger1 = Time = 1
Trigger2 = Var(5) = -1 && Power >= 1000
Trigger2 = StateNo = 215
Trigger2 = MoveHit
var(39) = 0

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;ガード不能技対策
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;その技ッ！！「覚えて」いるぞッ！！
;----------------------------------------------------------------------------
[State -1, 挑発2]
Type = null;ChangeState
Value = 196
TriggerAll = Var(59)
TriggerAll = Random < 100 * Var(59)
TriggerAll = NumHelper(99998)
TriggerAll = IfElse((Var(59) > 10), 1, EnemyNear,Time > (20 + (Random % 30)))
TriggerAll = Helper(99998),Var(48) = 0
TriggerAll = StateType != A
TriggerAll = Ctrl
TriggerAll = !(EnemyNear,HitdefAttr = SCA,AT)
TriggerAll = !(EnemyNear,HitdefAttr = SCA,HA,HP)
Trigger1 = P2StateNo = Helper(99998),Var(56)
Trigger2 = P2StateNo = Helper(99998),Var(57)
Trigger3 = P2StateNo = Helper(99998),Var(58)
Trigger4 = P2StateNo = Helper(99998),Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;空中復帰
[State -1]
Type = ChangeState
Value = 5210
TriggerAll = Var(59)
TriggerAll = Alive	;生きているとき
TriggerAll = StateNo = 5050
Trigger1 = CanRecover	;復帰することが出来るとき
Trigger1 = Random < 10 * Var(59)*Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;ガード
[State -1, ガード]
Type = ChangeState
Value = 120
TriggerAll = Var(59)
TriggerAll = Ctrl
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
TriggerAll = Random < 100 * Var(59)
TriggerAll = P2StateNo != Helper(99998),Var(56)
TriggerAll = P2StateNo != Helper(99998),Var(57)
TriggerAll = P2StateNo != Helper(99998),Var(58)
TriggerAll = P2StateNo != Helper(99998),Var(59)
Trigger1 = InGuardDist || Abs(P2BodyDist X) < 60
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
Trigger4 = Enemy,NumHelper > Helper(99998),Var(20)

;===========================================================================
;---------------------------------------------------------------------------
;勝利
[State -1, Win]
Type = ChangeState
Value = 99999
TriggerAll = Var(59) && Win
TriggerAll = PrevStateNo != 99999
;一部勝利ポーズで致命的問題が発生する予感。すみませんが設定変更してます
;ヴェノム魔理沙フィニッシュとか、テーレッテーとか
;以下、特殊勝利ポーズの数だけ追加していく方針で
TriggerAll = var(5) != 3;ヴェノム魔理沙
TriggerAll = PrevStateno != [35212,35213];瞬獄殺
TriggerAll = PrevStateno != [70001,70099];テーレッテー
TriggerAll = PrevStateno != [7600,7699];テーレッテー・２
Trigger1 = StateType != A
Trigger1 = Ctrl

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
Type = ChangeState
Value = 100
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
Trigger1 = NumProjID(35030)	;千年眼
Trigger1 = P2MoveType = H

;===========================================================================
;---------------------------------------------------------------------------
;カードを墓地に捨ててやるぜ！
[State -1, CARDSHOOT]
type = ChangeState
value = 3600
triggerall = Var(59)
triggerAll = var(5) > 0;現在、ＭＡＸでない＆何か装備している 0以上
triggerAll = statetype = S && ctrl
Trigger1 = Life < 300	;ぴんち
Trigger1 = Power >= 3000
Trigger1 = P2Life > 300	;負けてる；；
Trigger1 = P2BodyDist X > 200
Trigger1 = Random < 80 * Var(59)
Trigger2 = Var(6) = 0
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = (P2BodyDist X - (EnemyNear,Vel X * 6)) = [10 , 107]
Trigger2 = Random < 91 * Var(59)
Trigger3 = Var(6) = 0
Trigger3 = P2MoveType != A
Trigger3 = P2BodyDist X > 50
Trigger3 = Random < 20 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
[State -1, キングベヒんもス]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35230)
TriggerAll = Var(59)
TriggerAll = Var(5) = 23 || (PalNo % 6) = 0	;キングベヒんもス
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = !NumHelper(35235)
TriggerAll = StateType != A
TriggerAll = (PalNo % 6) != 0 || P2Life > Life	;金のときベヒんもス制限
Trigger1 = Ctrl
Trigger1 = NumHelper(99998) > 0
Trigger1 = Helper(99998),Var(11) != 35230
Trigger1 = P2MoveType = A
Trigger1 = P2BodyDist X < 100
Trigger1 = Random < 70 * Var(59)
Trigger2 = Ctrl
Trigger2 = NumHelper(99998) > 0
Trigger2 = Helper(99998),Var(11) = 35230	;ベヒんもスループ
Trigger2 = P2StateType = A
Trigger2 = P2MoveType = H
Trigger2 = EnemyNear,Vel Y > 6
Trigger2 = Random < 91 * Var(59)
Trigger3 = Ctrl
Trigger3 = NumHelper(99998) > 0
Trigger3 = Helper(99998),Var(11) != 35230
Trigger3 = P2MoveType = H
Trigger3 = P2BodyDist X > 100
Trigger3 = Random < 70 * Var(59)
[State -1, キングベヒんもス待機]
Type = ChangeState
Value = 0
TriggerAll = Var(59)
TriggerAll = Var(5) = 23	;キングベヒんもス
TriggerAll = Var(6)		;げーじ大丈夫？
;TriggerAll = Var(5) = 23 || (PalNo % 6) = 0	;キングベヒんもス
;TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
Trigger1 = StateType != A
Trigger1 = Ctrl
Trigger1 = NumHelper(99998) > 0
Trigger1 = Helper(99998),Var(11) = 35230	;ベヒんもスループ
Trigger1 = P2StateType = A
Trigger1 = P2MoveType = H
Trigger1 = Random < 91 * Var(59)
Ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;テーレッテー
[State -1, Tehletteh]
Type = ChangeState
Value = IfElse(((Numpartner = 0)&&(Enemy,Numpartner = 0)), 70000, 72000)
TriggerAll = Var(59)
TriggerAll = var(42) != 1;一撃技可能 
TriggerAll = Var(41) >= 7;七星ゲージＭＡＸ 
TriggerAll = Var(5) >= -1;MAX状態～特殊武器
Trigger1 = (Stateno = 240);マスィブブルーム
Trigger1 = moveHit
Trigger1 = (P2Dist X - (EnemyNear,Vel X * 4)) = [-29 , 143]
;Trigger1 = (P2BodyDist Y + (EnemyNear,Vel Y * 5 + EnemyNear,Const(movement.yaccel) * 15)) = [-48, 0]
Trigger1 = Random < 100 * Var(59)
Trigger2 = (Stateno = 245);パワースィープ
Trigger2 = moveHit > 17
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 4)) = [-29 , 143]
;Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 5 + EnemyNear,Const(movement.yaccel) * 15)) = [-48, 0]
Trigger2 = Random < 100 * Var(59)
Trigger3 = StateType = S && Ctrl
Trigger3 = (P2Dist X - (EnemyNear,Vel X * 12)) = [-29 , 143]
Trigger3 = (P2BodyDist Y + (EnemyNear,Vel Y * 12 + EnemyNear,Const(movement.yaccel) * 78)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-48, 0]
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H && P2StateNo != [120,155]
Trigger3 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;ますたーすぱーくLv3
[State -1, MasterSparkLv3]
Type = ChangeState
Value = 3010
TriggerAll = Var(59)
TriggerAll = Power >= 2000
TriggerAll = Var(5) = -1;MAX状態
TriggerAll = life < 300
TriggerAll = !Var(39)
TriggerAll = StateType = S && Ctrl
Trigger1 = (P2MoveType = H) || (P2StateType = L)
Trigger1 = P2BodyDist X > 150
Trigger1 = Random < 80 * Var(59)
Trigger2 = !EnemyNear,Ctrl
Trigger2 = Enemy,NumProj = 0 
Trigger2 = NumHelper(99998) > 0
Trigger2 = Enemy,NumHelper = Helper(99998),Var(20)
Trigger2 = P2BodyDist X > 220
Trigger2 = Random < 80 * Var(59)

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
Type = ChangeState
Value = 105
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = BackEdgeBodyDist > 30
Trigger1 = life < 300;ピンチ
Trigger1 = Var(5) = -1
Trigger1 = Power >= 2000
Trigger1 = P2BodyDist X > 0
Trigger1 = Random < 80 * Var(59)
Trigger2 = life < 300;ピンチ
Trigger2 = Var(5) != -1
Trigger2 = Power >= 3000
Trigger2 = P2BodyDist X > 0
Trigger2 = Random < 80 * Var(59)

;---------------------------------------------------------------------------
;ぱわーＭＡＸ
[State -1, PowerMAX]
Type = ChangeState
Value = 860
TriggerAll = Var(59)
TriggerAll = Power >= 1000 ;パワーが１０００以上
TriggerAll = Var(5) = 0;現在、何も装備していない＆ＭＡＸでない
TriggerAll = !Var(39)	;xボタンを使う技だから
TriggerAll = StateType = S && Ctrl
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998)
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = Life < 300	;ぴんち
Trigger1 = Power >= 3000
Trigger1 = P2Life > 300	;負けてる；；
Trigger1 = P2BodyDist X > 200
Trigger1 = Random < 80 * Var(59)
Trigger2 = Power > 2000
Trigger2 = Life >= 100
Trigger2 = P2BodyDist X > 170
Trigger2 = Random < 60 * Var(59)

;---------------------------------------------------------------------------
;ドローカード！
[State -1, BATTLECARD]
Type = ChangeState
Value = 3503
TriggerAll = Var(59) && (PalNo % 6) != 0
TriggerAll = Power >= 1000 ;パワーが１０００以上
TriggerAll = Var(5) = 0;現在、何も装備していない＆ＭＡＸでない
TriggerAll = StateType = S
TriggerAll = Ctrl
Trigger1 = NumHelper(99998)
Trigger1 = Helper(99998),Var(10) != 1 || Random < 100
Trigger1 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger1 = Life >= 100
Trigger1 = Power > 1500
Trigger1 = P2BodyDist X > 170
Trigger1 = P2MoveType != A
Trigger1 = Enemy,NumProj = 0 
Trigger1 = Enemy,NumHelper = Helper(99998),Var(20)
Trigger1 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;ゲット投げ
[State -1, Get Nage]
Type = ChangeState
Value = 805
TriggerAll = Var(59)
TriggerAll = StateType = S
TriggerAll = Ctrl
TriggerAll = Var(5) = 0
TriggerAll = StateNo != 100
TriggerAll = P2BodyDist X = [0,60]
TriggerAll = (P2StateType = S) || (P2StateType = C)
TriggerAll = P2MoveType != H
TriggerAll = Random < 40 * Var(59)
TriggerAll = (PalNo % 6) != 0
trigger1 = numhelper(99998)
trigger1 = helper(99998),var(10)
trigger2 = enemynear,name = "MegaMari"
trigger2 = enemynear,authorname = "RockMARISA"
trigger2 = enemynear,var(5) > 0
trigger2 = enemynear,var(6) > 0

;---------------------------------------------------------------------------
;バタフライストームＭＡＸ
[State -1, HOUKISP]
Type = ChangeState
Value = 3035
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) = -1;MAX状態
Trigger1 = StateType = S && Ctrl
Trigger1 = P2BodyDist X = [0,50]
Trigger1 = P2BodyDist Y = [-40,0]
Trigger1 = Life < 200
Trigger1 = Random < 70 * Var(59)

;---------------------------------------------------------------------------
;マスターブレード（ＰＴアリス）
[State -1, MasterBlade]
type = ChangeState
value = 3090
TriggerAll = Var(59)
triggerall = var(30) = -1;アリスタイマーが-1
triggerall = partner,name = "Alice-R";ありすだったなら
triggerall = partner,statetype = S;立ち状態
triggerall = partner,ctrl
TriggerAll = Var(32) = 0;パチュリータイマーが０
TriggerAll = !NumHelper(1202)
TriggerAll = !NumHelper(3050)
TriggerAll = !NumHelper(3060)
TriggerAll = Power >= 3000
TriggerAll = Var(5) = 0;ノーマル
Trigger1 = StateType = S && Ctrl
Trigger1 = P2MoveType = A
Trigger1 = Life > 500
Trigger1 = Random < 40 * Var(59)
;マスターブレード
[State -1, MasterBlade]
Type = ChangeState
Value = 3090
TriggerAll = Var(59)
TriggerAll = Var(30) = 0;アリスタイマーが０
TriggerAll = Var(32) = 0;パチュリータイマーが０
TriggerAll = !NumHelper(1202)
TriggerAll = !NumHelper(3050)
TriggerAll = !NumHelper(3060)
TriggerAll = Power >= 3000
TriggerAll = Var(5) = 0;ノーマル
Trigger1 = StateType = S && Ctrl
Trigger1 = P2MoveType = A
Trigger1 = Life > 500
Trigger1 = Random < 40 * Var(59)

;---------------------------------------------------------------------------
;マリス砲（ＰＴアリス）
[State -1, MaliceCannon]
Type = ChangeState
Value = 3050
TriggerAll = Var(59)
triggerall = var(30) = -1;アリスタイマーが-1
triggerall = partner,name = "Alice-R";ありすだったなら
triggerall = partner,statetype = S;立ち状態
triggerall = partner,ctrl
TriggerAll = Power >= 2000
TriggerAll = Var(5) = 0;ノーマル
Trigger1 = StateType = S && Ctrl
Trigger1 = P2StateType = S || P2StateType = C
Trigger1 = P2MoveType = H && P2StateNo != [120,155]
Trigger1 = P2BodyDist X > 70
Trigger1 = Random < 60 * Var(59)
;マリス砲
[State -1, MaliceCannon]
Type = ChangeState
Value = 3050
TriggerAll = Var(59)
TriggerAll = Var(30) = 0;アリスタイマーが０
TriggerAll = !NumHelper(1202)
TriggerAll = !NumHelper(3050)
TriggerAll = Power >= 2000
TriggerAll = Var(5) = 0;ノーマル
Trigger1 = StateType = S && Ctrl
Trigger1 = P2StateType = S || P2StateType = C
Trigger1 = P2MoveType = H && P2StateNo != [120,155]
Trigger1 = P2BodyDist X > 70
Trigger1 = Random < 60 * Var(59)

;---------------------------------------------------------------------------
;ノンディレクショナル
[State -1, NonDirLazer]
Type = ChangeState
Value = 3060
TriggerAll = Var(59)
TriggerAll = Var(32) = 0;パチュリータイマーが０
TriggerAll = !NumHelper(3060)
TriggerAll = Power >= 2000
TriggerAll = Var(5) = 0;ノーマル
TriggerAll = StateType = S && Ctrl
Trigger1 = (P2BodyDist X > 150) || (P2BodyDist Y = [-600, -150])
Trigger1 = P2MoveType = H && P2StateNo != [120,155]
Trigger1 = Random < 8 * Var(59)
Trigger2 = NumEnemy > 1
Trigger2 = (Enemy(0),Alive = 1) && (Enemy(1),Alive = 1)
Trigger2 = (P2BodyDist X > 200) || (P2BodyDist Y = [-600, -150])
Trigger2 = Random < 20 * Var(59)
Trigger3 = NumPartner = 1
Trigger3 = Partner,MoveType = H
Trigger3 = (P2BodyDist X > 150) || (P2BodyDist Y = [-600, -150])
Trigger3 = Random < 50 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;ゲット武器発動！-----------------------------------------------------------
;武器番号
;1:覇王翔吼拳　2:真・昇竜拳　3:ヴェノム魔理沙　4:ダークエンジェル　5:スラッシュクロー
;6:メリークリスマス　7:レイジングストーム　8:羅生門　9:滅びのバーストストリーム　10:ハイパーボッ(笑)
;11:ハイパーボム(岩男)　12:Rocks　13:大蛇薙　14:やみどうこく　15:ギガンテックプレッシャー

[State -1, 冥道烈火]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35240)
TriggerAll = Var(59)
TriggerAll = Var(5) = 24 || (PalNo % 6) = 0	;冥道烈火
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = P2StateType != A
Trigger2 = P2MoveType = A
Trigger2 = P2BodyDist X = [80, 120]
Trigger2 = Random < 40 * Var(59)

[State -1, 流影陣]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35290)
TriggerAll = Var(59)
TriggerAll = Var(5) = 29 || (PalNo % 6) = 0	;流影陣
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger1 = P2BodyDist X = [0,40]
Trigger2 = Ctrl
Trigger2 = P2StateType = A;浮いてる
Trigger2 = P2MoveType = H
Trigger2 = P2BodyDist X = [0,40]
Trigger2 = P2BodyDist Y = [-46,-20]
:Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 9 + EnemyNear,GetHitVar(yaccel) * 45)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-74, -3]
Trigger2 = Random < 100 * Var(59)
Trigger3 = Ctrl
Trigger3 = prevstateno = 35290
Trigger3 = P2StateType = A;浮いてる
Trigger3 = P2MoveType = H
Trigger3 = P2BodyDist X = [0,55]
Trigger3 = P2BodyDist Y = [-46,-20]
trigger3 = FrontEdgeDist < 60
Trigger3 = Random < 100 * Var(59)
;暫定処置

[State -1, 大蛇薙]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35130)
TriggerAll = Var(59)
TriggerAll = Var(5) = 13 || (PalNo % 6) = 0	;大蛇薙
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = P2MoveType = H && P2StateNo != [120,155]
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 9)) = [8, 126]
Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 9 + EnemyNear,GetHitVar(yaccel) * 45)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-74, -3]
Trigger2 = Random < 60 * Var(59)

[State -1, スラッシュクロー]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35050)
TriggerAll = Var(59)
TriggerAll = Var(5) = 5	 || (PalNo % 6) = 0;スラッシュ
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType != A && Enemy,NumProj > 0
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 13)) = [100, 195]
Trigger2 = Random < 40 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = P2MoveType = H && P2StateNo != [120,155]
Trigger3 = (P2Dist X - (EnemyNear,Vel X * 13)) = [25, 195]
Trigger3 = (P2BodyDist Y + (EnemyNear,Vel Y * 12 + EnemyNear,GetHitVar(YAccel) * 78)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-54, -24]
Trigger3 = Random < 60 * Var(59)

[State -1, 真・昇竜拳]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35020)
TriggerAll = Var(59)
TriggerAll = Var(5) = 2	 || (PalNo % 6) = 0;真・昇竜拳
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType != A && P2MoveType = A
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 2)) = [26, 50]
Trigger2 = Random < 40 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H && P2StateNo != [120, 159]
Trigger3 = (P2Dist X - (EnemyNear,Vel X * 2)) = [26, 50]
Trigger3 = Random < 40 * Var(59)

[State -1, ジェノサイドカッターＥＸ（暫定）]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35250)
TriggerAll = Var(59)
TriggerAll = Var(5) = 25 || (PalNo % 6) = 0;ジェノサイドカッターＥＸ
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = 0;キャンセル不可技に設定…あもりにもひきょうなので
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType != A && P2MoveType = A
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 2)) = [26, 50]
Trigger2 = Random < 80 * Var(59);ブッパ確率調整
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H && P2StateNo != [120, 159]
Trigger3 = (P2Dist X - (EnemyNear,Vel X * 2)) = [26, 50]
Trigger3 = Random < 80 * Var(59);ブッパ確率調整

[State -1, ヴェノム魔理沙]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35030)
TriggerAll = Var(59)
TriggerAll = Var(5) = 3	 || (PalNo % 6) = 0;ヴェノム
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType != A && P2MoveType = A
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 16)) = [-38, 146]
Trigger2 = Random < 40 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H && P2StateNo != [120, 159]
Trigger3 = (P2Dist X - (EnemyNear,Vel X * 16)) = [-38, 146]
Trigger3 = Random < 40 * Var(59)

[State -1, レイジングストーム]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35070)
TriggerAll = Var(59)
TriggerAll = Var(5) = 7	 || (PalNo % 6) = 0;レイジングストーム
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2MoveType != I && P2StateNo != [120,155]
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 8)) = [-42, 120]
Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 8 + EnemyNear,Const(movement.yaccel) * 36)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-210, 1]
Trigger2 = Random < 50 * Var(59)

[State -1, ギガンテックプレッシャー]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35150)
TriggerAll = Var(59)
TriggerAll = Var(5) = 15 || (PalNo % 6) = 0	;運送
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = P2BodyDist X  = [0, 100]
Trigger2 = Random < 40 * Var(59)

[State -1, 羅生門]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35080)
TriggerAll = Var(59)
TriggerAll = Var(5) = 8	|| (PalNo % 6) = 0	;羅生門
TriggerAll = Var(6)	|| (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveContact
Trigger1 = (P2Dist X - EnemyNear,Vel X) < 66
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = (P2Dist X - (EnemyNear,Vel X)) = [23, 66]
Trigger2 = Random < 40 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H
Trigger3 = (P2Dist X - (EnemyNear,Vel X)) = [23, 66]
Trigger3 = Random < 40 * Var(59)

[State -1, やみどうこく]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35140)
TriggerAll = Var(59)
TriggerAll = Var(5) = 14 || (PalNo % 6) = 0	;闇慟哭
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveContact
Trigger1 = (P2Dist X - EnemyNear,Vel X) < 66
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = (P2Dist X - (EnemyNear,Vel X)) = [23, 66]
Trigger2 = Random < 40 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H
Trigger3 = (P2Dist X - (EnemyNear,Vel X)) = [23, 66]
Trigger3 = Random < 40 * Var(59)

[State -1, 私の名を言ってみろ！]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35160)
TriggerAll = Var(59)
TriggerAll = Var(5) = 16 || (PalNo % 6) = 0	;ヅァギ
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveContact
Trigger1 = (P2Dist X - EnemyNear,Vel X * 3) < 80
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 3)) = [21, 80]
Trigger2 = Random < 100 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H
Trigger3 = (P2Dist X - (EnemyNear,Vel X)) = [23, 66]
Trigger3 = Random < 40 * Var(59)

;ラスマゲドロップ（ハイパーボッ装備時）
[State -1, GetNage]
type = ChangeState
value = 3400
TriggerAll = Var(59)
triggerall = statetype = S
triggerall = ctrl
triggerall = var(5) = 10;ボッ装備中
triggerall = var(6);げーじ大丈夫？
triggerall = power >= 2000;パワー2000以上
Trigger1 = Ctrl && Time > 0
Trigger1 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger1 = P2StateType = S || P2StateType = C
Trigger1 = (P2Dist X - (EnemyNear,Vel X * 3)) = [21, 80]
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = P2MoveType = H
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 3)) = [21, 80]
Trigger2 = Random < 40 * Var(59)

[State -1, ハイパーボッ（笑）]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35100)
TriggerAll = Var(59)
TriggerAll = Var(5) = 10 || (PalNo % 6) = 0	;ハイパーボッ
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveContact
Trigger1 = (P2Dist X - EnemyNear,Vel X * 3) < 80
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 3)) = [21, 80]
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H
Trigger3 = (P2Dist X - (EnemyNear,Vel X * 3)) = [21, 80]
Trigger3 = Random < 40 * Var(59)

[State -1, 戦闘ヘリ]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35300)
TriggerAll = Var(59)
TriggerAll = Var(5) = 30 || (PalNo % 6) = 0	;へり
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
TriggerAll = !NumHelper(65300)
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 10 * Var(59);コンボからはあまり繋げず
Trigger2 = Ctrl && Time > 0
Trigger2 = P2StateType = A
Trigger2 = P2MoveType != I
Trigger2 = P2BodyDist X = [0, 140]
Trigger2 = P2BodyDist Y = [-320,0]
trigger2 = backEdgeDist = [55,125]
Trigger2 = Random < 90 * Var(59)
;暫定処置

[State -1, EX北斗飛衛拳]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35170)
TriggerAll = Var(59)
TriggerAll = Var(5) = 17 || (PalNo % 6) = 0	;飛衛拳
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = P2StateType = A
Trigger2 = P2MoveType != I
Trigger2 = P2BodyDist X = [0, 200]
Trigger2 = P2BodyDist Y = [-100, 0]
Trigger2 = Random < 70 * Var(59)

[State -1, ハイパーボム（岩男）]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35110)
TriggerAll = Var(59)
TriggerAll = Var(5) = 11 || (PalNo % 6) = 0	;ハイパーボム
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger1 = P2BodyDist X > 100
Trigger1 = P2BodyDist Y = [-50,0]
Trigger1 = Random < 10 * Var(59)

[State -1, ダークエンジェル]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35040)
TriggerAll = Var(59)
TriggerAll = Var(5) = 4	 || (PalNo % 6) = 0;ダークエンジェル
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998) > 0
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = Ctrl
Trigger1 = P2BodyDist X > 160
Trigger1 = P2BodyDist Y = [-30,0]
Trigger1 = P2MoveType != H
Trigger1 = Random < 10 * Var(59)

[State -1, 覇王翔吼拳]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35010)
TriggerAll = Var(59)
TriggerAll = Var(5) = 1	 || (PalNo % 6) = 0;覇王翔吼拳
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = Random < 70 * Var(59)

[State -1, カイザーウェイブ　普通]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35310)
TriggerAll = Var(59)
TriggerAll = Var(5) = 31 || (PalNo % 6) = 0;カイザー
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = Random < 70 * Var(59)

[State -1, カイザーウェイブ　回り込み迎撃　暫定版（fxm508氏のを使用してますが、うまく動かない予感）]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35310)
TriggerAll = Var(59)
TriggerAll = Var(5) = 31 || (PalNo % 6) = 0;カイザー
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
Triggerall = StateType != A
Triggerall = RoundState = 2 && Life > 0
Triggerall = !InGuardDist
Triggerall = P2MoveType = A
Triggerall = P2StateType != A
Triggerall = P2Dist X - EnemyNear(0),Vel X * 8 >= 200
Triggerall = Ctrl || StateNo = 1 || (StateNo = [21,22]) || (StateNo = [100,101])
Triggerall = Random < var(59)*100
Triggerall = EnemyNear(0),Time >= 30 || (!Time && var(59) > 8) || var(59) = 11
Trigger1 = EnemyNear(0),Time >= 50 || var(59) = 11 
Trigger2 = PrevStateNo = [5000,5270]
Trigger3 = PrevStateNo = [120,159]

[State -1, 天破活殺]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35190)
TriggerAll = Var(59)
TriggerAll = Var(5) = 19 || (PalNo % 6) = 0	;天破活殺
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl
Trigger2 = P2StateType != A && P2MoveType = A
Trigger2 = P2BodyDist X > 120
Trigger2 = Random < 60 * Var(59)
Trigger3 = Ctrl
Trigger3 = P2MoveType = H && P2StateNo != [120, 159]
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = Random < 60 * Var(59)

[State -1, タンクローリーだ！]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35200)
TriggerAll = Var(59)
TriggerAll = Var(5) = 20 || (PalNo % 6) = 0	;タンクローリー
TriggerAll = Var(6)	     || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = Ctrl && Time > 0
Trigger1 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger1 = P2MoveType = A
Trigger1 = P2BodyDist X > 140
Trigger1 = Random < 40 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = A
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = P2BodyDist Y = [-360, -200]
Trigger2 = Random < 40 * Var(59)

[State -1, 禊]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35220)
TriggerAll = Var(59)
TriggerAll = Var(5) = 22 || (PalNo % 6) = 0	;禊
TriggerAll = Var(6)	     || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2MoveType = A
Trigger2 = P2BodyDist Y = [-360, -200]
Trigger2 = Random < 40 * Var(59)
Trigger3 = Ctrl && Time > 0
Trigger3 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger3 = P2StateType = S || P2StateType = C || P2StateType = A
Trigger3 = P2MoveType = H && P2StateNo != [120, 159]
Trigger3 = EnemyNear,Vel X = [-4, 4]
Trigger3 = Random < 40 * Var(59)

[State -1, 滅びのバーストストリーム]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35090)
TriggerAll = Var(59)
TriggerAll = Var(5) = 9	 || (PalNo % 6) = 0	;滅びのバーストストリーム
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
TriggerAll = P2BodyDist Y > -240
Trigger1 = Ctrl
Trigger1 = !InGuardDist
Trigger1 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger1 = P2MoveType = A || Enemy,NumProj > 0
Trigger1 = Random < 20 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = A
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = Random < 40 * Var(59)

[State -1, イヤッホォォォォォゥ（暫定）]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35260)
TriggerAll = Var(59)
TriggerAll = Var(5) = 26 || (PalNo % 6) = 0	;いちごクロス
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
TriggerAll = P2BodyDist Y > -230
Trigger1 = Ctrl
Trigger1 = !InGuardDist
Trigger1 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger1 = P2MoveType = A || Enemy,NumProj > 0
Trigger1 = Random < 20 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger2 = P2StateType = A
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = Random < 40 * Var(59)

[State -1, Rocks]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35120)
TriggerAll = Var(59)
TriggerAll = Var(5) = 12 || (PalNo % 6) = 0	;歌
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger1 = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
Trigger1 = P2MoveType = A || Enemy,NumProj > 0
Trigger1 = Random < 10 * Var(59)

[State -1, 瞬獄殺]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35210)
TriggerAll = Var(59)
TriggerAll = Var(5) = 21 || (PalNo % 6) = 0	;瞬獄殺
TriggerAll = Var(6)	     || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = (StateNo = [230,235]) || (StateNo = [250,255])	;地上コンボ三段目からキャンセルが可能
Trigger1 = MoveContact
Trigger1 = Random < 100 * Var(59)
Trigger2 = Ctrl && Time > 0
Trigger2 = P2StateType = S || P2StateType = C
Trigger2 = P2MoveType = H && P2StateNo != [120, 159]
Trigger2 = P2BodyDist X = [0, 70]
Trigger2 = Random < 40 * Var(59)

[State -1, 北斗残悔拳]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35180)
TriggerAll = Var(59)
TriggerAll = Var(5) = 18 || (PalNo % 6) = 0	;残悔拳
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = Ctrl && Time > 0
Trigger1 = P2StateType = L || P2StateNo = 5120
Trigger1 = P2BodyDist X = [10, 125]
Trigger1 = Random < 91 * Var(59)

[State -1, メリークリスマス]
Type = ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35060)
TriggerAll = Var(59)
TriggerAll = Var(5) = 6	 || (PalNo % 6) = 0;メリクリ
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger1 = Life < 100
Trigger1 = P2Life - Life > 600
Trigger1 = Random < 1 * Var(59)*Var(59)*Var(59)

;27番目の特殊武器を使うと死んでしまうので、記述する際はご注意下さい。
;タッグ戦では使う価値があるかも…？　ロック魔理沙の人
[State -1, GAME OVER]
Type = null;ChangeState
Value = IfElse((PalNo % 6) != 0, 35000, 35270)
TriggerAll = Var(59)
TriggerAll = Var(5) = 27 || (PalNo % 6) = 0;IWBTG
TriggerAll = Var(6)	 || (PalNo % 6) = 0	;げーじ大丈夫？
TriggerAll = StateType != A
Trigger1 = 0

;---------------------------------------------------------------------------
;ますたーすぱーくLv2
[State -1, MasterSparkLv2]
Type = ChangeState
Value = 3005
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) = -1;MAX状態
TriggerAll = !Var(39)
Trigger1 = (Stateno = 215)
Trigger1 = movehit
Trigger1 = Random < 70 * Var(59)
Trigger2 = StateType != A;地上
Trigger2 = Ctrl
Trigger2 = Var(6) < 300
Trigger2 = Random < 100 * Var(59)
Trigger3 = StateType != A
Trigger3 = Ctrl
Trigger3 = P2StateType = A
Trigger3 = P2BodyDist X > 140
Trigger3 = Random < 5 * Var(59)

;---------------------------------------------------------------------------
;ますたーすぱーくLv1
[State -1, MasterSpark]
Type = ChangeState
Value = 3000
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) != -1
triggerall = (var(5) != 28)&&(var(5) != 23);ダークパワー未装備
TriggerAll = StateType = S && Ctrl
TriggerAll = !Var(39)
Trigger1 = P2MoveType = H && P2StateNo != [120, 159]
Trigger1 = P2BodyDist X > 100
Trigger1 = (P2BodyDist Y + (EnemyNear,Vel Y * 40 + EnemyNear,Const(movement.yaccel) * 820)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-74, -5]
Trigger1 = Power > 1700
Trigger1 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger1 = Random < 20 * Var(59)
Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 40 + EnemyNear,Const(movement.yaccel) * 820)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-74, -5]
Trigger2 = P2MoveType = A
Trigger2 = Random < 45 * Var(59)
;---------------------------------------------------------------------------
;ますたーすぱーくLv1D
[State -1, DRAKSpaak]
type = ChangeState
value = 3020
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) != -1
triggerall = (var(5) = 28)||(var(5) = 23);ダークパワー装備
TriggerAll = StateType = S && Ctrl
TriggerAll = !Var(39)
Trigger1 = P2MoveType = H && P2StateNo != [120, 159]
Trigger1 = P2BodyDist X > 100
Trigger1 = (P2BodyDist Y + (EnemyNear,Vel Y * 40 + EnemyNear,Const(movement.yaccel) * 820)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-74, -5]
Trigger1 = Power > 1700
Trigger1 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger1 = Random < 20 * Var(59)
Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 40 + EnemyNear,Const(movement.yaccel) * 820)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-74, -5]
Trigger2 = P2MoveType = A
Trigger2 = Random < 45 * Var(59)

;---------------------------------------------------------------------------
;ブレイジングスター
[State -1, ITEM-2]
Type = ChangeState
Value = 3045
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) = -1;MAX状態
;MAXゲージ切れそうになったら発動
Trigger1 = StateType = A;空中状態
Trigger1 = Ctrl
Trigger1 = Var(6) < 300
Trigger1 = Random < 100 * Var(59)
;箒から発動
Trigger2 = (Stateno = 245) || (Stateno = 261);パワースィープ　or　マスィブボディ
Trigger2 = movehit
Trigger2 = Var(41) < 7
Trigger2 = Random < 40 * Var(59)
;えりある途中から発動
Trigger3 = Power < 2000
Trigger3 = (Stateno = 615) || (Stateno = 630)
Trigger3 = MoveHit
Trigger3 = Random < 40 * Var(59)

;---------------------------------------------------------------------------
;スターダストレヴァリエ
[State -1, HOUKISP]
Type = ChangeState
Value = 3040
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) != -1;MAX状態じゃない
Trigger1 = StateType != C;立ち状態か空中状態
Trigger1 = Ctrl
Trigger1 = Power > 1700
Trigger1 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger1 = P2BodyDist X = [0,60]
Trigger1 = P2BodyDist Y = [-40,-10]
Trigger1 = P2StateType = S || P2StateType = C || P2StateType = A
Trigger1 = Random < 6 * Var(59)
;なぜかヒップから繋がる
Trigger2 =  (Stateno = 261)
Trigger2 = moveHit
Trigger2 = Power > 1700
Trigger2 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger2 = Random < 30 * Var(59)

;---------------------------------------------------------------------------
;ＭＡＸアクセルフォーム
[State -1, AXEL]
Type = ChangeState
Value = 30410
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) = -1;MAX状態
TriggerAll = StateType = S && Ctrl
TriggerAll = Life < 600 || P2Life > 600
TriggerAll = Random < Floor(0.5 * Var(59))
TriggerAll = NumPartner = 0
Trigger1 = P2StateType = L || (P2StateType = A && P2MoveType = H)
Trigger2 = P2BodyDist X > 200

;---------------------------------------------------------------------------
;アクセルフォーム
[State -1, AXEL]
Type = ChangeState
Value = 30400
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) != -1;MAX状態じゃない
TriggerAll = StateType = S && Ctrl
TriggerAll = NumHelper(99998)
TriggerAll = Helper(99998),Var(11) != 30400
Trigger1 = Power > 2000
Trigger1 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger1 = P2StateType = S || P2StateType = C
Trigger1 = P2MoveType = H && P2StateNo != [120, 155]
Trigger1 = P2BodyDist X < 200
Trigger1 = Random < 80 * Var(59)
Trigger2 = Var(5) = -2	;アクセル状態
Trigger2 = Var(6) < 500
Trigger2 = P2StateType != A
Trigger2 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;バタフライストーム
[State -1, HOUKISP]
Type = ChangeState
Value = 3030
TriggerAll = Var(59)
TriggerAll = Power >= 1000
TriggerAll = Var(5) != -1;MAX状態じゃない
Trigger1 = (Stateno = 245) ;パワースィープ
Trigger1 = movehit
Trigger1 = Power > 1700
Trigger1 = IfElse((Life > 300), 1 ,(Power < 2700))
Trigger1 = Var(41) < 7
Trigger1 = P2BodyDist X = [0,120]
Trigger1 = 70 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;陰陽ストライク
[State -1, RockBAllA]
Type = ChangeState
Value = 1020
TriggerAll = Var(59)
TriggerAll = !NumHelper(1020)
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998)
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = StateType != A && Ctrl
Trigger1 = P2BodyDist X > 170
Trigger1 = Random < 10 * Var(59)

[State -1, RockBAllB]
Type = ChangeState
Value = 1021
TriggerAll = Var(59)
TriggerAll = !NumHelper(1020)
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998)
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = StateType != A && Ctrl
Trigger1 = P2BodyDist X > 220
Trigger1 = Random < 20 * Var(59)

;---------------------------------------------------------------------------
;マスィブブルーム
[State -1, マスティブ箒]
Type = ChangeState
Value = 240
TriggerAll = Var(59)
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
TriggerAll = IfElse((Var(5) = -2), (Random < 10 * Var(59)), (Random < 2 * Var(59)))
TriggerAll = StateType != A && Ctrl
TriggerAll = P2BodyDist X > 76 || P2BodyDist Y < -63
TriggerAll = NumHelper(99998)
TriggerAll = Helper(99998),Var(11) != 35400
Trigger1 = Time > 0
Trigger1 = P2StateType = A
Trigger1 = (P2Dist X - (EnemyNear,Vel X * 21)) = [-29, 96]
Trigger1 = (P2BodyDist Y + (EnemyNear,Vel Y * 21 + EnemyNear,Const(movement.yaccel) * 221)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-104, -48]
Trigger2 = Time > 0
Trigger2 = P2StateType = S || P2StateType = C || P2StateType = A && P2MoveType = H && P2StateNo != 5120 && P2StateNo != [120, 155]
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 23)) = [58, 120]
Trigger2 = (P2BodyDist Y + (EnemyNear,Vel Y * 23 + EnemyNear,Const(movement.yaccel) * 276)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-83, 0]

;---------------------------------------------------------------------------
;パワースィープ
[State -1, Power箒]
Type = ChangeState
Value = 245
TriggerAll = Var(59)
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
TriggerAll = StateType != A && Ctrl
TriggerAll = P2StateType = S || P2StateType = C
TriggerAll = P2BodyDist X > 143
TriggerAll = (P2Dist X - (EnemyNear,Vel X * 24)) = [-29, 143]
TriggerAll = (P2BodyDist Y + (EnemyNear,Vel Y * 24 + EnemyNear,Const(movement.yaccel) * 300)*(P2StateType=A && EnemyNear,Vel Y!=0)) = [-48, 0]
TriggerAll = Random < 5 * Var(59)
Trigger1 = Time > 0
Trigger1 = P2StateNo != 5120

;---------------------------------------------------------------------------
;北斗飛衛拳A
[State -1, HIEIKEN_A]
type = ChangeState
value = 1050
triggerall = Var(59)
triggerall = var(5) = [16,19];北斗装備
trigger1 = ctrl
Trigger1 = P2MoveType != I
Trigger1 = IfElse((Var(59) > 10), 1, IfElse(P2MoveType = A, (EnemyNear,Time > 20 + (Random % 30)), 1))
Trigger1 = P2BodyDist X = [0, 80]
Trigger1 = P2BodyDist Y = [-120, -20]
trigger1 = enemynear,vel y < 0
Trigger1 = Random < 40 * Var(59)
;地上コンボ三段目からキャンセルが可能
trigger2 =  (stateno = [230,235]) || (stateno = [250,255])
trigger2 = movehit
Trigger2 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;北斗飛衛拳B
[State -1, HIEIKEN_B]
type = ChangeState
value = 1052
triggerall = Var(59)
triggerall = var(5) = [16,19];北斗装備
trigger1 = ctrl
Trigger1 = P2StateType != A
Trigger1 = P2MoveType != I
Trigger1 = P2BodyDist X = [100, 180]
Trigger1 = Random < 8 * Var(59)
;---------------------------------------------------------------------------
;ジェノサイド弱（暫定）
[State -1, GenocideA]
Type = ChangeState
Value = 1055
TriggerAll = Var(59) && RoundState = 2
TriggerAll = StateType != A && Ctrl
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
triggerall = (var(5) = 15)||(var(5) = 25);運送装備
Trigger1 = P2BodyDist X = [0,60]
Trigger1 = P2BodyDist Y = [-80,-20]
Trigger1 = P2MoveType = A
Trigger1 = Random < 70 * Var(59);確率上昇
Trigger2 = P2BodyDist X = [0,30]
Trigger2 = P2MoveType = A
Trigger2 = Random < 70 * Var(59);確率上昇

;---------------------------------------------------------------------------
;ジェノサイド強（暫定）
[State -1, GenocideB]
Type = ChangeState
Value = 1056
TriggerAll = Var(59) && RoundState = 2
TriggerAll = StateType != A && Ctrl
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
triggerall = (var(5) = 15)||(var(5) = 25);運送装備
Trigger1 = P2BodyDist X = [0,60]
Trigger1 = P2BodyDist Y = [-120,-20]
Trigger1 = P2MoveType = A
Trigger1 = Random < 40 * Var(59)
Trigger2 = P2MoveType = A
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 7)) < 50
Trigger2 = Random < 70 * Var(59)
;---------------------------------------------------------------------------
;しょーりゅーけん弱
[State -1, RockUpperA]
Type = ChangeState
Value = 1010
TriggerAll = Var(59)
TriggerAll = StateType != A && Ctrl
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
triggerall = var(5) != [16,19];北斗装備じゃない
Trigger1 = P2BodyDist X = [0,40]
Trigger1 = P2BodyDist Y = [-80,-20]
Trigger1 = P2MoveType = A
Trigger1 = Random < 40 * Var(59)
;Trigger2 = P2BodyDist X = [0,30]
;Trigger2 = P2MoveType = A
;Trigger2 = Random < 40 * Var(59)

;---------------------------------------------------------------------------
;しょーりゅーけん強
[State -1, RockUpperB]
Type = ChangeState
Value = 1011
TriggerAll = Var(59)
TriggerAll = StateType != A && Ctrl
TriggerAll = IfElse((Var(59) > 10), 1, (EnemyNear,Time > 20 + (Random % 30)))
triggerall = var(5) != [16,19];北斗装備じゃない
Trigger1 = P2BodyDist X = [0,60]
Trigger1 = P2BodyDist Y = [-120,-20]
Trigger1 = P2MoveType = A
Trigger1 = Random < 40 * Var(59)
Trigger2 = P2MoveType = A
Trigger2 = (P2Dist X - (EnemyNear,Vel X * 7)) < 50
Trigger2 = Random < 40 * Var(59)

;---------------------------------------------------------------------------
;さいこみさいる
[State -1, PsycoMissile]
Type = ChangeState
Value = 1000
TriggerAll = Var(59)
TriggerAll = !NumHelper(3011);ミサイルが残っているときは連射できまそん
TriggerAll = !Var(39)	;xボタンを使う技だから
TriggerAll = (Var(5) != -1 && Power < 3000) || (Var(5) = -1 && Power < 2000)
Trigger1 = StateType = A;空中用必殺技
Trigger1 = Ctrl
Trigger1 = P2BodyDist X = [50,130]
Trigger1 = P2BodyDist Y = [60,120]
Trigger1 = P2StateType = S || P2StateType = C
Trigger1 = P2MoveType = A
Trigger1 = Random < 20 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;ニュートラルキック
[State -1, Stand Kick]
Type = ChangeState
Value = 210
TriggerAll = Var(59)
TriggerAll = P2MoveType != A
Trigger1 = (StateNo = 200) && time > 5
Trigger1 = MoveContact
Trigger1 = P2BodyDist X = [0,45]
Trigger1 = Random < 70 * Var(59)
Trigger2 = StateType = S && Ctrl
Trigger2 = (P2StateType = S) || (P2StateType = C)
Trigger2 = P2MoveType != H
Trigger2 = P2BodyDist X = [0,40]
Trigger2 = Random < 50 * Var(59)
Trigger3 = (Stateno = 230) && time > 6
Trigger3 = P2BodyDist X = [0,45]
Trigger3 = Random < 80 * Var(59)

;---------------------------------------------------------------------------
;立ちパンチ
;[State -1, Stand Light Punch]
[State -1, Stand Punch]
Type = ChangeState
Value = 200
TriggerAll = Var(59)
TriggerAll = StateType = S
TriggerAll = Ctrl
Trigger1 = P2BodyDist X = [0,35]
Trigger1 = (P2StateType = S) || (P2StateType = C)
Trigger1 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;210->キック
[State -1, Stand Air Kick]
Type = ChangeState
Value = 255
TriggerAll = Var(59)
Trigger1 = StateNo = 210 && MoveContact
Trigger1 = P2BodyDist X = [0,25]
Trigger1 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;210->パンチ
[State -1, Stand Punch 4]
Type = ChangeState
Value = 250
TriggerAll = Var(59)
Trigger1 = StateNo = 210 && MoveContact
Trigger1 = P2BodyDist X = [0,45]
Trigger1 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;横キック//エリアル発動技
[State -1, Eriak Kick]
Type = ChangeState
Value = 215
TriggerAll = Var(59)
Trigger1 = (StateNo = 250) || (StateNo = 255)
Trigger1 = MoveHit
Trigger1 = P2BodyDist X = [0,49]
Trigger1 = Random < 100 * Var(59)
Trigger2 = StateNo = 100	;前ダッシュ中に入れたら発動
Trigger2 = P2BodyDist X = [0,49]
Trigger2 = (P2StateType = S) || (P2StateType = C)
Trigger2 = !NumProjID(35030)
Trigger2 = P2MoveType != H
Trigger3 = StateType = S
Trigger3 = Ctrl
Trigger3 = NumHelper(99998)
Trigger3 = Helper(99998),Var(11) = 245
Trigger3 = P2BodyDist X = [0, 55]
Trigger3 = Random < 91 * Var(59)
Trigger4 = StateType = S
Trigger4 = Ctrl
Trigger4 = P2StateType = A
Trigger4 = P2MoveType = H && P2StateNo != [120, 159]
Trigger4 = (P2Dist X - (EnemyNear,Vel X * 3)) = [0, 68]
Trigger4 = (P2BodyDist Y + (EnemyNear,Vel Y * 3 + EnemyNear,GetHitVar(yaccel) * 6)) = [-66, -17]
Trigger4 = random < 91 * var(59)

;---------------------------------------------------------------------------
;ヒップ
[State -1, HIP Stand]
Type = ChangeState
Value = 260
TriggerAll = Var(59)
;Trigger1 = StateType = S
;Trigger1 = Ctrl
Trigger1 = (StateNo = 250) || (StateNo = 255)
Trigger1 = MoveHit
Trigger1 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;パンチ二段目
[State -1, Stand Punch 2]
Type = ChangeState
Value = 205
TriggerAll = Var(59)
Trigger1 = (StateNo = 200) && MoveContact
Trigger1 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;パンチ三段目
[State -1, Stand Punch 3]
Type = ChangeState
Value = 230
TriggerAll = Var(59)
Trigger1 = (StateNo = 205) && MoveContact
Trigger1 = P2BodyDist X = [0,42]
Trigger1 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;205->キック
[State -1, Stand Drop Kick]
Type = ChangeState
Value = 235
TriggerAll = Var(59)
Trigger1 = (StateNo = 205) && MoveContact
Trigger1 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;立ちバスター
[State -1, Buster]
Type = ChangeState
Value = 220
TriggerAll = Var(59)
triggerall = var(5) != 31;NOTカイザーウェイブ
TriggerAll = NumProjID(10053) < 3
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998) > 0
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = StateType = S && Ctrl && Var(1) < 250
Trigger1 = NumProjID(10053) < 1
Trigger1 = P2BodyDist X > 180 && P2BodyDist Y > -40
Trigger1 = Random < 60 * Var(59)
Trigger2 = StateType = S && Ctrl && Var(1) >= 250
Trigger2 = P2StateType = S && P2MoveType != H
Trigger2 = P2BodyDist X > 20 && P2BodyDist Y = [-20,0]
Trigger2 = Random < 60 * Var(59)
Trigger3 = (Stateno = 200) || (Stateno = 205) || (Stateno = 230) || (StateNo = 235) || (StateNo =  250) || (StateNo =  255)
Trigger3 = MoveContact
Trigger3 = P2StateType = C
Trigger3 = Random < 100 * Var(59)
Trigger4 = (Stateno = 200) || (Stateno = 205) || (Stateno = 230) || (StateNo = 235) || (StateNo =  250) || (StateNo =  255)
Trigger4 = MoveHit
Trigger4 = P2StateType = C
Trigger4 = Var(1) >= 250
Trigger4 = P2BodyDist X > 20
Trigger4 = Random < 100 * Var(59)

[State -1, Buster]
Type = ChangeState
Value = 220
TriggerAll = Var(59)
triggerall = var(5) != 31;NOTカイザーウェイブ
TriggerAll = NumProjID(10053) < 3
TriggerAll = StateType = S && Ctrl
Trigger1 = TeamMode = Simul && NumPartner = 1
Trigger1 = Partner,Alive
Trigger1 = P2BodyDist X > 120 && P2BodyDist Y > -40
Trigger1 = IfElse((Var(1) >= 250), (Random < 80 * Var(59)), (Random < 30 * Var(59)))

;---------------------------------------------------------------------------
;ブリッツボー
[State -1, Buster]
Type = ChangeState
Value = 35315
TriggerAll = Var(59)
triggerall = var(5) = 31;カイザーウェイブ
TriggerAll = NumProjID(10053) < 3
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998) > 0
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = StateType = S && Ctrl && Var(1) < 250
Trigger1 = NumProjID(10053) < 1
Trigger1 = P2BodyDist X > 180 && P2BodyDist Y > -40
Trigger1 = Random < 60 * Var(59)
Trigger2 = StateType = S && Ctrl && Var(1) >= 250
Trigger2 = P2StateType = S && P2MoveType != H
Trigger2 = P2BodyDist X > 20 && P2BodyDist Y = [-20,0]
Trigger2 = Random < 60 * Var(59)
Trigger3 = (Stateno = 200) || (Stateno = 205) || (Stateno = 230) || (StateNo = 235) || (StateNo =  250) || (StateNo =  255)
Trigger3 = MoveContact
Trigger3 = P2StateType = C
Trigger3 = Random < 100 * Var(59)
Trigger4 = (Stateno = 200) || (Stateno = 205) || (Stateno = 230) || (StateNo = 235) || (StateNo =  250) || (StateNo =  255)
Trigger4 = MoveHit
Trigger4 = P2StateType = C
Trigger4 = Var(1) >= 250
Trigger4 = P2BodyDist X > 20
Trigger4 = Random < 100 * Var(59)

[State -1, Buster]
Type = ChangeState
Value = 35315
TriggerAll = Var(59)
triggerall = var(5) = 31;カイザーウェイブ
TriggerAll = NumProjID(10053) < 3
TriggerAll = StateType = S && Ctrl
Trigger1 = TeamMode = Simul && NumPartner = 1
Trigger1 = Partner,Alive
Trigger1 = P2BodyDist X > 120 && P2BodyDist Y > -40
Trigger1 = IfElse((Var(1) >= 250), (Random < 80 * Var(59)), (Random < 30 * Var(59)))
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
Type = ChangeState
Value = 400
TriggerAll = Var(59)
Trigger1 = StateType = C
Trigger1 = Ctrl
Trigger1 = P2BodyDist X = [0,30]
Trigger1 = P2StateType = S
Trigger1 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;しゃがみキック
[State -1, Crouching Strong Punch]
Type = ChangeState
Value = 410
TriggerAll = Var(59)
Trigger1 = StateType = C && Ctrl
Trigger1 = P2StateType = S
Trigger1 = P2BodyDist X = [0,50]
Trigger1 = Random < 20 * Var(59)
Trigger2 = StateNo = 400
Trigger2 = MoveContact && Time > 5
Trigger2 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;しゃがみバスター
[State -1, Crouching Buster]
Type = ChangeState
Value = 420
TriggerAll = Var(59)
TriggerAll = NumProjID(10053) < 3
TriggerAll = Enemy,NumProj = 0 
TriggerAll = NumHelper(99998) > 0
TriggerAll = Enemy,NumHelper = Helper(99998),Var(20)
TriggerAll = P2MoveType != A
Trigger1 = StateType = C
Trigger1 = Ctrl
Trigger1 = Var(1) < 250
Trigger1 = NumProjID(10053) < 1
Trigger1 = P2BodyDist X > 180
Trigger1 = P2BodyDist Y > -40
Trigger1 = Random < 40 * Var(59)
Trigger2 = StateType = C
Trigger2 = Ctrl
Trigger2 = Var(1) >= 250
Trigger2 = P2StateType = S
Trigger2 = P2MoveType != H
Trigger2 = P2BodyDist X > 20
Trigger2 = P2BodyDist Y = [-20,0]
Trigger2 = Random < 60 * Var(59)
Trigger3 = (Stateno = 200) || (Stateno = 210) || (Stateno = 230) || (Stateno = 400)
Trigger3 = MoveHit
Trigger3 = P2StateType = S
Trigger3 = Var(1) >= 250
Trigger3 = P2BodyDist X > 20
Trigger3 = Random < 100 * Var(59)
Trigger4 = (Stateno = 200) || (Stateno = 210) || (Stateno = 230) || (Stateno = 240) || (StateNo =  240) || (Stateno = 400)
Trigger4 = MoveContact
Trigger4 = Var(1) < 250
Trigger4 = Random < 100 * Var(59)
Trigger5 = StateNo = 410
Trigger5 = Var(5) != 15
Trigger5 = MoveContact
Trigger5 = Var(1) < 250
Trigger5 = Random < 100 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Low Punch]
Type = ChangeState
Value = 605
TriggerAll = Var(59)
TriggerAll = !Var(0)
Trigger1 = StateType = A
Trigger1 = Ctrl
Trigger1 = P2BodyDist X = [0,23]
Trigger1 = P2BodyDist Y = [-40,70]
Trigger1 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Kick]
Type = ChangeState
Value = 610
TriggerAll = Var(59)
TriggerAll = !Var(0)
Trigger1 = StateNo = 605 && MoveContact
Trigger1 = Random < 100 * Var(59)
Trigger2 = StateType = A
Trigger2 = Ctrl
Trigger2 = P2StateType != A
Trigger2 = P2BodyDist X = [-20,60]
Trigger2 = P2BodyDist Y = [0,110]

;---------------------------------------------------------------------------
;空中中パンチ　掌撃
[State -1, Jump Mid Punch]
Type = ChangeState
Value = 630
TriggerAll = Var(59)
Trigger1 = StateNo = 605 && MoveContact	;弱パンチから繋がる
Trigger1 = Random < 1000 - Var(59) * 80
Trigger2 = StateNo = 610 && MoveContact	;弱キック中で
Trigger2 = P2BodyDist Y = [-20, 0]
Trigger2 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;ドロップキック
[State -1, Jump Mid Kick]
Type = ChangeState
Value = 615
TriggerAll = Var(59)
Trigger1 = StateNo = 610 && MoveContact
Trigger1 = Random < 100 * Var(59)
Trigger2 = StateNo = 630 && MoveContact
Trigger2 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;空中強パンチ　;空中強パンチ 単発含めたい
[State -1, Jump Pow Punch]
Type = ChangeState
Value = 600
TriggerAll = Var(59)
TriggerAll = P2BodyDist Y > 10
Trigger1 = (StateNo = 630) && MoveContact
Trigger1 = Random < 1000 - Var(59) * 80
Trigger2 = (StateNo = 615) && MoveContact
Trigger2 = Random < 90 * Var(59)

;---------------------------------------------------------------------------
;エリアルチャージバスターフィニッシュ
[State -1, ChargeFire AIRCOMBO FINISH]
Type = ChangeState
Value = 626
TriggerAll = Var(59)
TriggerAll = Var(1) >= 100
TriggerAll = !Var(0) ;Var0（エリアルふっとばし中）が立ってない時でないと出せない
Trigger1 = (StateNo = 615) && MoveHit
Trigger1 = P2StateType = A
Trigger1 = P2BodyDist Y = [-50,50]
Trigger1 = Random < 100 * Var(59)

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
Type = ChangeState
Value = 640
TriggerAll = Var(59)
TriggerAll = StateType = A
Trigger1 = (StateNo = 615) && MoveContact
Trigger1 = Random  < 100 * Var(59)

;---------------------------------------------------------------------------
;空中バスター
[State -1, Jump Shot]
Type = ChangeState
Value = 620
TriggerAll = Var(59)
TriggerAll = !Var(0) ;Var0（エリアルふっとばし中）が立ってない時でないと出せない
TriggerAll = StateNo != 460
TriggerAll = NumProjID(10053) < 3
Trigger1 = StateType = A
Trigger1 = Ctrl
Trigger1 = P2StateType = A
Trigger1 = P2BodyDist X > 120
Trigger1 = P2BodyDist Y = [-10,10]
Trigger1 = Random < 20 * Var(59)
Trigger2 = StateType = A
Trigger2 = Ctrl
Trigger2 = Pos Y > 70
Trigger2 = P2MoveType = H
Trigger2 = P2BodyDist X > 23
Trigger2 = P2BodyDist Y = [-20,20]
Trigger2 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;通常の空中チャージ
[State -1, ChargeFire sora]
Type = ChangeState
Value = 620
TriggerAll = Var(59)
TriggerAll = Var(1) >= 30
TriggerAll = !NumProjID(10051);チャージバスターが飛んでない時
TriggerAll = StateNo != 460
TriggerAll = (StateNo != 630)
TriggerAll = (StateNo != 615)
Trigger1 = Ctrl
Trigger1 = StateType = A
Trigger1 = Var(1) >= 250
Trigger1 = P2StateType = A
Trigger1 = P2BodyDist X > 120
Trigger1 = P2BodyDist Y = [-20,0]
Trigger1 = Random < 20 * Var(59)
Trigger2 = StateType = A
Trigger2 = Ctrl
Trigger2 = Pos Y > 70
Trigger2 = P2MoveType = H
Trigger2 = P2BodyDist X > 23
Trigger2 = P2BodyDist Y = [-20,20]
Trigger2 = Random < 50 * Var(59)

;---------------------------------------------------------------------------
;援護攻撃
;アリス援護
[State -1, Alice]
type = ChangeState
value = 1200
triggerall = Var(59)
triggerall = var(30) = 0;アリスタイマーが０ ０以外の場合いかなる場合も撃てない
triggerall = !NumHelper(1202)
trigger1 = statetype != A && ctrl
Trigger1 = P2StateType != A
Trigger1 = P2BodyDist X > 200
Trigger1 = Random < 10 * Var(59)

;スピリティア援護
[State -1, Spilitia]
type = ChangeState
value = 1210
triggerall = Var(59)
triggerall = var(31) = 0;ティアタイマーが０
trigger1 = statetype != A && ctrl
Trigger1 = P2StateType != A
Trigger1 = P2BodyDist X > 200
Trigger1 = Random < 20 * Var(59)

;---------------------------------------------------------------------------
;真空投げ
;羅生門装備時発動
[State -1, Kung Fu Throw]
Type = ChangeState
Value = 65080
TriggerAll = Var(59)
TriggerAll = StateType = S
TriggerAll = Ctrl
TriggerAll = Var(5) = [7,8];真空投げ装備
TriggerAll = Random < 40 * Var(59)
Trigger1 = StateNo != 100
Trigger1 = P2BodyDist X = [0,60]
Trigger1 = (P2StateType = S) || (P2StateType = C)
Trigger1 = P2MoveType != H

;---------------------------------------------------------------------------
;零距離ゴッドプレス
;運送装備時発動
[State -1, Kung Fu Throw]
Type = ChangeState
Value = 65150
TriggerAll = Var(59)
TriggerAll = StateType = S
triggerall = (var(5) = 15)||(var(5) = 25);運送装備
TriggerAll = Stateno != 100
Trigger1 = Ctrl
Trigger1 = P2BodyDist X <= 40
Trigger1 = P2BodyDist Y = [-30,0]
Trigger1 = P2MoveType != H
Trigger1 = Random < 40 * Var(59)
Trigger2 = Ctrl
Trigger2 = Stateno != 100
Trigger2 = P2BodyDist X <= 30
Trigger2 = P2BodyDist Y = [0,-30]
Trigger2 = P2StateType = A
Trigger2 = P2MoveType = H;食らい状態・空中落下してる時
Trigger2 = Random < 60 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;投げ
[State -1, Nage]
Type = ChangeState
Value = 800
TriggerAll = Var(59)
TriggerAll = StateType = S
TriggerAll = Ctrl
TriggerAll = Random < 40 * Var(59)
Trigger1 = StateNo != 100
Trigger1 = P2BodyDist X = [0,10]
Trigger1 = (P2StateType = S) || (P2StateType = C)
Trigger1 = P2MoveType != H

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ
[State -1, ダッシュジャンプ]
Type = ChangeState
Value = 40
TriggerAll = Var(59)
TriggerAll = time >= 10
Trigger1 = StateNo = 100
Trigger1 = P2BodyDist X = [140,180]
Trigger1 = P2StateType != A
Trigger1 = Random < 40 * Var(59)

[State -1, エリアルジャンプ]
Type = ChangeState
Value = 40
TriggerAll = Var(59)
TriggerAll = StateType != A
Trigger1 = StateNo = 215
Trigger1 = MoveHit
Trigger1 = Random < 80 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
Type = ChangeState
Value = 100
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
Trigger1 = NumProjID(35030)	;千年眼
Trigger1 = P2MoveType = H
Trigger2 = BackEdgeBodyDist < 60
Trigger2 = P2MoveType != H
Trigger2 = P2BodyDist X < 30
Trigger2 = P2BodyDist Y < -120
Trigger2 = Random < 60 * Var(59)
;Trigger3 = Power < 1000
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H && P2StateNo != [120, 155]
Trigger3 = P2BodyDist X > 90
Trigger3 = Random < 10 * Var(59)*Var(59)
;Trigger4 = Power < 1000
Trigger4 = NumProjID(10053) || NumProjID(10050) || NumProjID(10051)
Trigger4 = P2BodyDist X > 160
Trigger4 = Random < 70 * Var(59)

[State -1, Run Fwd]
Type = null;ChangeState
Value = 100
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = NumPartner > 0
TriggerAll = Partner,Alive = 0
Trigger1 = NumProjID(35030)	;千年眼
Trigger1 = P2MoveType = H
Trigger2 = BackEdgeBodyDist < 60
Trigger2 = P2MoveType != H
Trigger2 = P2BodyDist X < 30
Trigger2 = P2BodyDist Y < -120
Trigger2 = Random < 60 * Var(59)
;Trigger3 = Power < 1000
Trigger3 = P2StateType = S || P2StateType = C
Trigger3 = P2MoveType = H && P2StateNo != [120, 155]
Trigger3 = P2BodyDist X > 90
Trigger3 = Random < 10 * Var(59)*Var(59)
;Trigger4 = Power < 1000
Trigger4 = NumProjID(10053) || NumProjID(10050) || NumProjID(10051)
Trigger4 = P2BodyDist X > 160
Trigger4 = Random < 70 * Var(59)

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
Type = ChangeState
Value = 105
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = NumEnemy = 1
Trigger1 = BackEdgeBodyDist > 60
Trigger1 = Var(5) = 0
Trigger1 = Power >= 3000
Trigger1 = P2BodyDist X = [0,200]
Trigger1 = Random < 80 * Var(59)
Trigger2 = BackEdgeBodyDist > 60
Trigger2 = !NumProjID(10053) && !NumProjID(10050) && !NumProjID(10051)
Trigger2 = P2StateType != A && P2MoveType != H
Trigger2 = P2BodyDist X < 200
Trigger2 = Random < 70 * Var(59)
Trigger3 = BackEdgeBodyDist > 60
Trigger3 = P2StateType = L || P2StateNo = 5120
Trigger3 = Random < 60 * Var(59)
Trigger4 = Var(5) > 0
Trigger4 = Var(6) = 0
Trigger4 = P2BodyDist X < 200
Trigger4 = BackEdgeBodyDist > 60
Trigger4 = Random < 91 * Var(59)

[State -1, Run Back]
Type = ChangeState
Value = 105
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = NumEnemy > 1
TriggerAll = Enemy(0),Alive = 0 || Enemy(1),Alive = 0
Trigger1 = BackEdgeBodyDist > 60
Trigger1 = Var(5) = 0
Trigger1 = Power >= 3000
Trigger1 = P2BodyDist X = [0,200]
Trigger1 = Random < 80 * Var(59)
Trigger2 = BackEdgeBodyDist > 60
Trigger2 = !NumProjID(10053) && !NumProjID(10050) && !NumProjID(10051)
Trigger2 = P2StateType != A && P2MoveType != H
Trigger2 = P2BodyDist X < 200
Trigger2 = Random < 70 * Var(59)
Trigger3 = BackEdgeBodyDist > 60
Trigger3 = P2StateType = L || P2StateNo = 5120
Trigger3 = Random < 60 * Var(59)
Trigger4 = Var(5) > 0
Trigger4 = Var(6) = 0
Trigger4 = P2BodyDist X < 200
Trigger4 = BackEdgeBodyDist > 60
Trigger4 = Random < 91 * Var(59)

[State -1, Run Back]
Type = ChangeState
Value = 105
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(0),Alive = 1) && (Enemy(1),Alive = 1)
Trigger1 = (Facing * Enemy(0),Pos X) < (Facing * Pos X)
Trigger1 = (Facing * Enemy(1),Pos X) < (Facing * Pos X)
Trigger1 = BackEdgeBodyDist > 60
Trigger1 = Random < 80 * Var(59)

;===========================================================================
;---------------------------------------------------------------------------
;緊急回避
[State -1, 前避け]
Type = ChangeState
Value = 2200
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = NumEnemy = 1
Trigger1 = BackEdgeBodyDist < 50
Trigger1 = P2BodyDist X = [0, 50]
Trigger1 = P2MoveType != H
Trigger1 = Random < 3 * Var(59)

[State -1, 前避け]
Type = ChangeState
Value = 2200
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = NumEnemy > 1
TriggerAll = (Enemy(0),Alive = 1) && (Enemy(1),Alive = 1)
Trigger1 = (Facing * Enemy(0),Pos X) < (Facing * Pos X)
Trigger1 = (Facing * Enemy(1),Pos X) > (Facing * Pos X)
Trigger2 = (Facing * Enemy(0),Pos X) > (Facing * Pos X)
Trigger2 = (Facing * Enemy(1),Pos X) < (Facing * Pos X)

;---------------------------------------------------------------------------
[State -1, 後避け]
Type = ChangeState
Value = 2250
TriggerAll = Var(59)
TriggerAll = StateType = S && Ctrl
TriggerAll = Random < 10 * Var(59)*Var(59)
TriggerAll = BackEdgeBodyDist > 50
Trigger1 = InGuardDist || P2MoveType = A || (P2BodyDist X < 40 && StateNo = 200 && !MoveContact)
Trigger1 = IfElse((Var(59) > 10), 1, (Time > (10 + (Random = [0,40]))))

;-------------------------------
;アドバンシングガードもどき。
;普通のガードですでにエフェクト使ってるんで、ガードアニメを変えることでわかりやすくする。
[State -1,ADVGUARD ST]
Type = ChangeState
Value = 160;guard.cnsに詳細。
TriggerAll = Var(59)
TriggerAll = StateType = S
TriggerAll = StateNo = [150,153];まぁ、通常であれば１５０になるんだろうけど
Trigger1 = P2BodyDist X < 100
Trigger1 = Random < 30 * Var(59)

[State -1,ADVGUARD CR]
Type = ChangeState
Value = 161;guard.cnsに詳細。
TriggerAll = Var(59)
TriggerAll = StateType = C
TriggerAll = StateNo = [151,153];
Trigger1 = P2BodyDist X < 100
Trigger1 = Random < 30 * Var(59)

[State -1,ADVGUARD AIR]
Type = ChangeState
Value = 162;guard.cnsに詳細。
TriggerAll = Var(59)
TriggerAll = StateType = A
TriggerAll = Random < 30 * Var(59)
Trigger1 = StateNo = 154;
Trigger1 = P2BodyDist X < 100
Trigger2 = StateNo = 154 && PrevStateNo != 162
Trigger2 = P2BodyDist X < 50
Trigger2 = Time < 15

;===========================================================================
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
Type = ChangeState
Value = IfElse((Random % 2) = 0, 195, 196)
TriggerAll = Var(59)
TriggerAll = StateType != A
TriggerAll = Ctrl
TriggerAll = TeamMode = Single
Trigger1 = P2BodyDist X > 140
Trigger1 = (Life - P2Life) > 700
Trigger1 = Random < (Life - P2Life - 700)

;===========================================================================
;---------------------------------------------------------------------------
;汎用ヘルパー
[State -1, ヘルパー召喚]
type = Helper
Trigger1 = !NumHelper(99998)
trigger1 = var(59) >= 1
stateno = 99998
ID = 99998
Name = "MEGAMARI AI Helper"
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 1
persistent = 0
ignorehitpause = 0
pausemovetime = 99999999
supermovetime = 99999999

;---------------------------------------------------------------------------
;AI起動用ヘルパー
[State -1, ヘルパー召喚]
type = Helper
Trigger1 = !NumHelper(99997)
trigger1 = var(58) != -1
trigger1 = var(59) = 0
stateno = 99997
ID = 99997
Name = "MEGAMARI AI Start"
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 1
persistent = 0
ignorehitpause = 0
pausemovetime = 99999999
supermovetime = 99999999

;===========================================================================
;---------------------------------------------------------------------------
;AI用ステート
;勝利ポーズ
[StateDef 99999]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
sprpriority = 6
Anim = 99999;ひゅう、ちっちっち
velset = 0,0

[State 99999, Voice]
type = playsnd
triggerall = var(40);ボイスＯＫ
trigger1 = animelemTime(1) = 0
value = 195,0;ひゅう
channel = 0;VC

[State 99999, Voice]
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

[State 99999, End]
type = ChangeState
trigger1 = animtime = 0;Time > 90
value = 0
ctrl = 1

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;AI用ヘルパーステート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;AI用補助ヘルパー
;============================================================================
; Var(0)  : AIフラグ

;AI行動制御
; Var(10) : ゲット可能フラグ
; Var(11) : 前回の攻撃ステート
; Var(12) : 前々回の攻撃ステート

; Var(20) : 相手の通常時ヘルパー数
; Var(21) : 通常時判定タイマー

;ガード不能技記憶用
; Var(46) : Pause判別用
; Var(47) : ガードしているorガード行動取れない
; Var(48) : 覚えたガー不攻撃を避けたか
; Var(49) : 相手のPlojectile数
; Var(50) : 相手のヘルパー数
; Var(51) : ヘルパー攻撃判断
; Var(52) : 相手の最新の通常攻撃
; Var(53) : 相手の最新の投げ攻撃
; Var(54) : 相手の最新の飛び道具攻撃
; Var(55) : 相手の最新のヘルパー攻撃
; Var(56) : 相手のガード不能技その１
; Var(57) : 相手のガード不能技その２
; Var(58) : 相手のガード不能技その３
; Var(59) : 相手のガード不能技その４

[StateDef 99998]
physics  = N
sprpriority = -1
movehitpersist = 1
Anim = 9999
Ctrl = 0

[State 99998, 消す]
type = DestroySelf
trigger1 = RoundState = [3, 4]
trigger2 = root,var(58) = -1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;相手ヘルパー数を数える
;----------------------------------------------------------------------------
;通常時の相手のヘルパー数を記憶
[State 99998, Enemy,NumHelper]
Type = VarSet
Trigger1 = EnemyNear,StateNo != Var(55)
Trigger1 = Var(21) = 0
Trigger2 = Enemy,NumHelper < Var(20)
Trigger3 = RoundState != 2
V = 20
Value = Enemy,NumHelper

;通常時誤認防止タイマー
[State 99998, EnemyHelperTimer]
Type = VarSet
Trigger1 = EnemyNear,StateNo = Var(55)
V = 21
Value = 120

[State 99998, EnemyHelperTimer]
Type = VarAdd
Trigger1 = EnemyNear,StateNo != Var(55)
Trigger1 = Var(21) > 0
V = 21
Value = -1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ポーズ状態判別用
;----------------------------------------------------------------------------
;本体のステートタイムと同じ値にする。1なのに0なのはすぐ下ので1増えるから
[State 99998, PauseNow?]
Type = VarSet
Trigger1 = Root,Time = 1
V = 46
Value = 0

;----------------------------------------------------------------------------
;このヘルパーはPause中でも動く。ということは？
[State 99998, PauseNow?]
Type = VarAdd
Trigger1 = 1
V = 46
Value = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ガード不能技記憶システム
;----------------------------------------------------------------------------
;初期化
[State 99998, GuardCrashFlag Initialize]
type = VarRangeSet
trigger1 = 1
value = -1
first = 52
last = 59
persistent = 0

;----------------------------------------------------------------------------
;ガード中orガード行動がとれない
[State 99998, GuardFlag]
Type = VarSet
TriggerAll = Var(47) = 0
TriggerAll = Root,Ctrl
Trigger1 = Root,StateNo = [120, 159]
Trigger2 = EnemyNear,MoveType = A
;Trigger2 = Root,P2Dist X = [0, EnemyNear,Const(Size.Attack.Dist))
Trigger2 = !(Root,InGuardDist)
V = 47
Value = 1

;============================================================================
;相手の攻撃ステートナンバー記憶
;----------------------------------------------------------------------------
;相手が通常攻撃を繰り出した
[State 99998, EnemyAttack Normal]
Type = VarSet
Trigger1 = EnemyNear,HitDefAttr = SCA,AA
V = 52
Value = EnemyNear,StateNo

;----------------------------------------------------------------------------
;相手が投げ攻撃を繰り出した
[State 99998, EnemyAttack Throw]
Type = VarSet
Trigger1 = EnemyNear,HitDefAttr = SCA,AT
V = 53
Value = EnemyNear,StateNo

;----------------------------------------------------------------------------
;相手が飛び道具攻撃を繰り出した
[State 99998, EnemyAttack Projectile]
Type = VarSet
TriggerAll = EnemyNear,StateNo != Var(52)
TriggerAll = EnemyNear,StateNo != Var(53)
TriggerAll = EnemyNear,StateNo != Var(55)
Trigger1 = EnemyNear,MoveType = A
Trigger1 = EnemyNear,NumProj > Var(49) || EnemyNear,HitDefAttr = SCA,AP
V = 54
Value = EnemyNear,StateNo

;----------------------------------------------------------------------------
;相手の飛び道具の数
[State 99998, Enemy NumProjectile]
Type = VarSet
Trigger1 = 1
V = 49
Value = Enemy,NumProj

;----------------------------------------------------------------------------
;どうやらヘルパー主体の攻撃じゃないようだ
[State 99998, EnemyAttack NonHelperFlag]
Type = VarSet
Trigger1 = EnemyNear,HitDefAttr = SCA,AA,AT
Trigger2 = EnemyNear,NumProj > Var(49)
Trigger3 = EnemyNear,StateNo = Var(52)
Trigger4 = EnemyNear,StateNo = Var(53)
Trigger5 = EnemyNear,StateNo = Var(54)
V = 51
Value = 1

;----------------------------------------------------------------------------
;相手がヘルパー攻撃を繰り出した
[State 99998, EnemyAttack Helper]
Type = VarSet
TriggerAll = EnemyNear,StateNo != Var(52)
TriggerAll = EnemyNear,StateNo != Var(53)
TriggerAll = EnemyNear,StateNo != Var(54)
TriggerAll = Var(51) = 0
Trigger1 = EnemyNear,MoveType = A
Trigger1 = EnemyNear,NumHelper > Var(50)
V = 55
Value = EnemyNear,StateNo

;----------------------------------------------------------------------------
;相手のヘルパーの数
[State 99998, Enemy NumHelper]
Type = VarSet
Trigger1 = 1
V = 50
Value = Enemy,NumHelper

;============================================================================
;ガード不能技記憶
;----------------------------------------------------------------------------
;ガー不技記憶その４
[State 99998, GuardCrash4A];直接攻撃
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) != -1 && Var(59) = -1
TriggerAll = Var(56) != Var(52) && Var(57) != Var(52) && Var(58) != Var(52)
TriggerAll = Var(52) != -1
Trigger1 = Var(52) = EnemyNear,StateNo
Trigger1 = EnemyNear,HitDefAttr = SCA,AA
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 59
Value = Var(52)

[State 99998, GuardCrash4P];飛び道具攻撃
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) != -1 && Var(59) = -1
TriggerAll = Var(56) != Var(54) && Var(57) != Var(54) && Var(58) != Var(54)
TriggerAll = Var(54) != -1
Trigger1 = EnemyNear,ProjHit = 1 || EnemyNear,HitDefAttr = SCA,AP
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 59
Value = Var(54)

[State 99998, GuardCrash4H];ヘルパー攻撃
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) != -1 && Var(59) = -1
TriggerAll = Var(56) != Var(55) && Var(57) != Var(55) && Var(58) != Var(55)
TriggerAll = Var(55) != -1
TriggerAll = Var(51) = 0
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = EnemyNear,NumHelper > Var(20)
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 59
Value = Var(55)

[State 99998, GuardCrash4T];投げ攻撃
Type = null;VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) != -1 && Var(59) = -1
TriggerAll = Var(56) != Var(53) && Var(57) != Var(53) && Var(58) != Var(53)
TriggerAll = Var(53) != -1
Trigger1 = !(EnemyNear,MoveHit)
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 59
Value = Var(53)

;----------------------------------------------------------------------------
;ガー不技記憶その３
[State 99998, GuardCrash3A]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) = -1
TriggerAll = Var(56) != Var(52) && Var(57) != Var(52)
TriggerAll = Var(52) != -1
Trigger1 = Var(52) = EnemyNear,StateNo
Trigger1 = EnemyNear,HitDefAttr = SCA,AA
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 58
Value = Var(52)

[State 99998, GuardCrash3P]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) = -1
TriggerAll = Var(56) != Var(54) && Var(57) != Var(54)
TriggerAll = Var(54) != -1
Trigger1 = EnemyNear,ProjHit = 1 || EnemyNear,HitDefAttr = SCA,AP
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 58
Value = Var(54)

[State 99998, GuardCrash3H]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) = -1
TriggerAll = Var(56) != Var(55) && Var(57) != Var(55)
TriggerAll = Var(55) != -1
TriggerAll = Var(51) = 0
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = EnemyNear,NumHelper > Var(20)
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 58
Value = Var(55)

[State 99998, GuardCrash3T]
Type = null;VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) != -1 && Var(58) = -1
TriggerAll = Var(56) != Var(53) && Var(57) != Var(53)
TriggerAll = Var(53) != -1
Trigger1 = !(EnemyNear,MoveHit)
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 58
Value = Var(53)

;----------------------------------------------------------------------------
;ガー不技記憶その２
[State 99998, GuardCrash2A]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) = -1
TriggerAll = Var(56) != Var(52)
TriggerAll = Var(52) != -1
Trigger1 = Var(52) = EnemyNear,StateNo
Trigger1 = EnemyNear,HitDefAttr = SCA,AA
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 57
Value = Var(52)

[State 99998, GuardCrash2P]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) = -1
TriggerAll = Var(56) != Var(54)
TriggerAll = Var(54) != -1
Trigger1 = EnemyNear,ProjHit = 1 || EnemyNear,HitDefAttr = SCA,AP
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 57
Value = Var(54)

[State 99998, GuardCrash2H]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) = -1
TriggerAll = Var(56) != Var(55)
TriggerAll = Var(55) != -1
TriggerAll = Var(51) = 0
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = EnemyNear,NumHelper > Var(20)
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 57
Value = Var(55)

[State 99998, GuardCrash2T]
Type = null;VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) != -1 && Var(57) = -1
TriggerAll = Var(56) != Var(53)
TriggerAll = Var(53) != -1
Trigger1 = !(EnemyNear,MoveHit)
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 57
Value = Var(53)

;----------------------------------------------------------------------------
;ガー不技記憶その１
[State 99998, GuardCrash1A]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) = -1
TriggerAll = Var(52) != -1
Trigger1 = Var(52) = EnemyNear,StateNo
Trigger1 = EnemyNear,HitDefAttr = SCA,AA
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 56
Value = Var(52)

[State 99998, GuardCrash1P]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) = -1
TriggerAll = Var(54) != -1
Trigger1 = EnemyNear,ProjHit = 1 || EnemyNear,HitDefAttr = SCA,AP
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 56
Value = Var(54)

[State 99998, GuardCrash1H]
Type = VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) = -1
TriggerAll = Var(55) != -1
TriggerAll = Var(51) = 0
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = EnemyNear,NumHelper > Var(20)
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 56
Value = Var(55)

[State 99998, GuardCrash1T]
Type = null;VarSet
TriggerAll = Var(47) = 1
TriggerAll = Var(56) = -1
TriggerAll = Var(53) != -1
Trigger1 = !(EnemyNear,MoveHit)
Trigger1 = EnemyNear,ProjHit = 0
Trigger1 = Root,StateNo != [120, 159]
Trigger1 = Root,MoveType = H
V = 56
Value = Var(53)

;============================================================================
;後処理
;----------------------------------------------------------------------------
;ヘルパーじゃないフラグ解除
[State 99998, EnemyAttack NonHelper Reset]
Type = VarSet
Trigger1 = EnemyNear,StateNo != Var(52)
Trigger1 = EnemyNear,StateNo != Var(53)
Trigger1 = EnemyNear,StateNo != Var(54)
V = 51
Value = 0

;----------------------------------------------------------------------------
;ガード中じゃないorガード行動できるor動けん
[State 99998, NoGuarded or CanGuard or Can'tMove]
Type = VarSet
TriggerAll = Var(47) = 1
Trigger1 = Root,InGuardDist
Trigger1 = !Ctrl
Trigger1 = Root,StateNo != [120, 159]
Trigger2 = EnemyNear,NumHelper = Var(20)
Trigger2 = EnemyNear,MoveType != A
Trigger3 = Root,MoveType = H
Trigger3 = Root,StateNo != [120, 159]
Trigger4 = Root,Time != Var(46)
Trigger5 = Root,MoveType = A
V = 47
Value = 0

;----------------------------------------------------------------------------
;避けたぞッ！
[State 99998, AvoidFlag]
Type = VarSet
TriggerAll = EnemyNear,StateNo = Var(56) || EnemyNear,StateNo = Var(57) || EnemyNear,StateNo = Var(58) || EnemyNear,StateNo = Var(59)
Trigger1 = Root,StateNo = 196
V = 48
Value = 1

[State 99998, AvoidFlag]
Type = VarSet
Trigger1 = EnemyNear,StateNo != Var(56)
Trigger1 = EnemyNear,StateNo != Var(57)
Trigger1 = EnemyNear,StateNo != Var(58)
Trigger1 = EnemyNear,StateNo != Var(59)
V = 48
Value = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;AI攻撃制御
;----------------------------------------------------------------------------
;前々回の攻撃を記憶
[State 99998, PrevAttackState Set]
Type = VarSet
Trigger1 = Root,MoveType = A
Trigger1 = Root,P2MoveType = H
Trigger1 = Root,StateNo != Var(11)
Trigger1 = Root,Var(1)
V = 12
Value = Var(11)

;----------------------------------------------------------------------------
;前回の攻撃を記憶
[State 99998, PrevAttackState Set]
Type = VarSet
Trigger1 = Root,MoveType = A
Trigger1 = Root,P2MoveType = H
V = 11
Value = Root,StateNo

;----------------------------------------------------------------------------
;攻撃記憶をリセット
[State 99998, PrevAttackState Reset]
Type = VarRangeSet
Trigger1 = Root,StateNo != Var(11)
Trigger1 = Root,P2MoveType != H
Trigger2 = Root,MoveType = H
First = 11
Last  = 12
Value = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;相手がゲット可能フラグ
[State 99998, CanGet]
type = varset
trigger1 = root,numtarget
trigger1 = root,var(9)
v = 10
value = 1

[State 99998, 自分についてく]
type = BindToRoot
trigger1 = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;AI起動用ヘルパー
[StateDef 99997]
physics  = N
sprpriority = -1
movehitpersist = 1
Anim = 9999
Ctrl = 0

[State 99997, 人間操作]
type = parentvarset
trigger1 = var(0) <= -3
v = 58
value = -1

[State 99997, 消す]
type = DestroySelf
trigger1 = RoundState = [3, 4]
Trigger2 = Var(0) != [-2, 0]

;----------------------------------------------------------------------------
[State 99997, AI起動しようか]
Type = VarSet
Trigger1  = !(Command = "a")     && Root,Command = "a"
Trigger2  = !(Command = "b")     && Root,Command = "b"
Trigger3  = !(Command = "c")     && Root,Command = "c"
Trigger4  = !(Command = "x")     && Root,Command = "x"
Trigger5  = !(Command = "y")     && Root,Command = "y"
Trigger6  = !(Command = "z")     && Root,Command = "z"
Trigger7  = !(Command = "start") && Root,Command = "start"
Trigger8  = !(Command = "up")    && Root,Command = "up"
Trigger8  = RoundState = 2 && Root,Ctrl
Trigger9  = !(Command = "down")  && Root,Command = "down"
Trigger9  = RoundState = 2 && Root,Ctrl
Trigger10 = !(Command = "back")  && Root,Command = "back"
Trigger10 = RoundState = 2 && Root,Ctrl
Trigger11 = !(Command = "fwd")   && Root,Command = "fwd"
Trigger11 = RoundState = 2 && Root,Ctrl
V = 0
Value = 1

;----------------------------------------------------------------------------
[State 99997, プレイヤー判定]
Type = VarAdd
TriggerAll = Var(0) != 1
TriggerAll = Root,Var(59) = 0
Trigger1  = Command = "a"     && Root,Command = "a"
Trigger2  = Command = "b"     && Root,Command = "b"
Trigger3  = Command = "c"     && Root,Command = "c"
Trigger4  = Command = "x"     && Root,Command = "x"
Trigger5  = Command = "y"     && Root,Command = "y"
Trigger6  = Command = "z"     && Root,Command = "z"
Trigger7  = Command = "start" && Root,Command = "start"
Trigger8  = Command = "up"    && Root,Command = "up"
Trigger9  = Command = "down"  && Root,Command = "down"
Trigger10 = Command = "back"  && Root,Command = "back"
Trigger11 = Command = "fwd"   && Root,Command = "fwd"
V = 0
Value = -1
