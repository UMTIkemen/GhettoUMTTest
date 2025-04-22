;==============================================================================
; 初期設定
;==============================================================================

;-| Button Remapping |---------------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-----------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;==============================================================================
; コマンド定義
;==============================================================================
;-| AI起動コマンド |-----------------------------------------------------------
[Command]
Name    = "AI_00"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0							;Time=0推奨
[Command]
Name    = "AI_01"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_02"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_03"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_04"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_05"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_06"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_07"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_08"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_09"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_10"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_11"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_12"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_13"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_14"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_15"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_16"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_17"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_18"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_19"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_20"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_21"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_22"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_23"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_24"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_25"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_26"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_27"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_28"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_29"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_30"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_31"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_32"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_33"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_34"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_35"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_36"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_37"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_38"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_39"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_40"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_41"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_42"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_43"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_44"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_45"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_46"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_47"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_48"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_49"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0
[Command]
Name    = "AI_50"
Command = B, DB, D, DF, F, UF, U, UB, B, a+b+x+y
Time    = 0

;-| ハイジャンプ |-------------------------------------------------------------

[Command]
Name    = "19"
Command = ~DB, UF
[Command]
Name    = "37"
Command = ~DF, UB
[Command]
Name    = "28"
Command = ~D, U

;-| ゲージ消費技 |-------------------------------------------------------------

; ヘイリッヒ・トーデスルタイル
[Command]
name = "641236+c"
command = ~F, B, DB, D, DF, F, c
time = 30
buffer.Time = 15
[Command]
name = "641236+z"
command = ~F, B, DB, D, DF, F, z
time = 30
buffer.Time = 15
[Command]
name = "641236+x"
command = ~F, B, DB, D, DF, F, x
time = 30
buffer.Time = 15

; ユングフラウ・ガートルード・シュロース
[Command]
name = "2222+z"
command = ~D, D, D, D, z
time = 35
buffer.Time = 15
[Command]
name = "2222+z"
command = ~D, D, D, D, a+b
time = 35
buffer.Time = 15

; シュヴァート・ノートゥング
[Command]
name = "214214+z"
command = ~D, DB, B, D, DB, B, z
time = 20
buffer.Time = 15

; シュトゥルム・ウント・ドラング
[Command]
name = "2222+c"
command = ~D, D, D, D, c
time = 35
buffer.Time = 15

; フォルモンドアイゼン
[Command]
name = "236236+z"
command = ~D, DF, F, D, DF, z
time = 20
buffer.Time = 15
[Command]
name = "236236+z"
command = ~D, DF, F, D, DF, a+b
time = 20
buffer.Time = 15

; ロートシュリッセル
[Command]
name = "236236+c"
command = ~D, DF, F, D, DF, F, c
time = 20
buffer.Time = 15

; フルートヴェレトレーネ
[Command]
name = "214214+c"
command = ~D, DB, B, D, DB, B, c
time = 20
buffer.Time = 15

; アイゼルネ・ユングフラウ
[Command]
name = "623+z"
command = ~F, D, DF, z
time = 18
[Command]
name = "623+z"
command = ~F, D, DF, a+b
time = 18

; メイルシュトロームトレーネ
[Command]
name = "63214+z"
command = ~F, DF, D, DB, B, z
Time    = 20
buffer.Time = 15
[Command]
name = "63214+z"
command = ~F, DF, D, DB, B, a+b
Time    = 20
buffer.Time = 15

; ユングフラウ・ガートルード・フェルゼン
[Command]
name = "22+z"
command = ~D, D, z
[Command]
name = "22+z"
command = D, D, a+b

;-| Special Motions |----------------------------------------------------------

; キルシュアイゼン
[Command]
name = "623+a"
command = ~F, D, DF, a
Time    = 18
[Command]
name = "623+b"
command = ~F, D, DF, b
Time    = 18
[Command]
name = "623+c"
command = ~F, D, DF, c
Time    = 18

; トゥルムトレーネ
[Command]
name = "63214+a"
command = ~F, DF, D, DB, B, a
Time    = 20
buffer.Time = 15
[Command]
name = "63214+b"
command = ~F, DF, D, DB, B, b
Time    = 20
buffer.Time = 15
[Command]
name = "63214+c"
command = ~F, DF, D, DB, B, c
Time    = 20
buffer.Time = 15

; ベーアディゲン
[Command]
name = "236+a"
command = ~D, DF, F, a
[Command]
name = "236+b"
command = ~D, DF, F, b
[Command]
name = "236+c"
command = ~D, DF, F, c

; ユングフラウ・コーネリア
[Command]
name = "214+a"
command = ~D, DB, B, a
[Command]
name = "214+b"
command = ~D, DB, B, b
[Command]
name = "214+c"
command = ~D, DB, B, c

; ユングフラウ・ガートルード
[Command]
name = "22+a"
command = ~D, D, a
[Command]
name = "22+b"
command = ~D, D, b
[Command]
name = "22+c"
command = ~D, D, c

; 
[Command]
name = "412+a"
command = ~B, DB, D, a
[Command]
name = "412+b"
command = ~B, DB, D, b
[Command]
name = "412+c"
command = ~B, DB, D, c


[Command]
name = "236+x"
command = ~D, DF, F, x

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "bc"
command = b+c
[Command]
name = "abc"
command = a+b+c

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1
[Command]
name = "fwd_b"
command = /F,b
time = 1
[Command]
name = "fwd_c"
command = /F,c
time = 1
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1
[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=UF
time=1
[command]
name="up"
command=UB
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;==============================================================================
; [Statedef -1]定義
;==============================================================================
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;==============================================================================
; メタ必殺技
;==============================================================================
;------------------------------------------------------------------------------
; ヘイリッヒ・トーデスルタイル・アインス
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2100
TriggerAll = command = "641236+c"
TriggerAll = Var(59) = 0 && FVar(11) > 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct
;------------------------------------------------------------------------------
; ヘイリッヒ・トーデスルタイル・ドライ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2102
TriggerAll = command = "641236+z"
TriggerAll = Var(59) = 0 && FVar(11) > 0 && PalNo >= 7
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct
;------------------------------------------------------------------------------
; ヘイリッヒ・トーデスルタイル・ツヴァイ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2101
TriggerAll = command = "641236+c"
TriggerAll = Var(59) = 0 && FVar(11) > 0 && PalNo >= 7
TriggerAll = statetype = A
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger2 = MoveContAct
;------------------------------------------------------------------------------
; ヘイリッヒ・トーデスルタイル・ニヒツ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2105
TriggerAll = command = "641236+x"
TriggerAll = Var(59) = 0 && FVar(11) > 0 && P2BodyDist X <= 140 && PalNo >= 7
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;==============================================================================
; SP必殺技
;==============================================================================
;------------------------------------------------------------------------------
; シュトゥルム・ウント・ドラング
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2200
TriggerAll = command = "2222+c"
TriggerAll = Var(59) = 0 && Power >= 5000 && fvar(15) <= 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; シュヴァート・ノートゥング
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
TriggerAll = command = "214214+z"
TriggerAll = Var(59) = 0 && Power >= 5000
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct && PalNo >= 7
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct && PalNo >= 7

;------------------------------------------------------------------------------
; ユングフラウ・ガートルード・シュロース
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1305
TriggerAll = command = "2222+z"
TriggerAll = Var(59) = 0 && NumHelper(1300)=0 && (Power >= 5000 || (PalNo>=7&&FVar(14)>=5000))
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; フォルモンドアイゼン
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1250
TriggerAll = command = "236236+z"
TriggerAll = Var(59) = 0 && FVar(13) = 0 && NumHelper(1300)!=0 && NumHelper(1350)=0
TriggerAll = statetype != A && (Power >= 2000 || (PalNo>=7&&FVar(14)>=2000))
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; フルートヴェレトレーネ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1150
TriggerAll = command = "214214+c"
TriggerAll = Var(59) = 0 && Power >= 2000
TriggerAll = statetype = A
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; ロートシュリッセル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1430
TriggerAll = command = "236236+c"
TriggerAll = Var(59) = 0 && Power >= 2000
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; アイゼルネ・ユングフラウ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1230
TriggerAll = command = "623+z"
TriggerAll = Var(59) = 0 && FVar(13) = 0 && NumHelper(1300)+NumHelper(1350)=0
TriggerAll = statetype != A && (Power >= 1000 || (PalNo>=7&&FVar(14)>=1000))
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ノックス十戒・原罪
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(EnemyNear,StateType=A||P2Dist X > 70,1030,1031)
TriggerAll = command = "63214+z"
TriggerAll = Var(59) = 0 && Power >= 1000
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; メイルシュトロームトレーネ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1130
TriggerAll = command = "63214+z"
TriggerAll = Var(59) = 0 && Power >= 1000
TriggerAll = statetype = A
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; ユングフラウ・ガートルード・フェルゼン
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1303
TriggerAll = command = "22+z"
TriggerAll = Var(59) = 0 && NumHelper(1300)=0 && (Power >= 1000 || (PalNo>=7&&FVar(14)>=1000))
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
; キルシュアイゼン
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
TriggerAll = command = "623+a" || command = "623+b" || command = "623+c"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ノックス十戒
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(command = "63214+a",1000,ifelse(command = "63214+b",1001,1002))
TriggerAll = command = "63214+a" || command = "63214+b" || command = "63214+c"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; トゥルムトレーネ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
TriggerAll = command = "63214+a" || command = "63214+b" || command = "63214+c"
TriggerAll = Var(59) = 0
TriggerAll = statetype = A
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; ユングフラウ・ガートルード
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(NumHelper(1300) = 0,ifelse(command = "22+a",1300,ifelse(command = "22+b",1301,1302)),1309)
TriggerAll = command = "22+a" || command = "22+b" || command = "22+c"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ユングフラウ・コーネリア
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(command = "214+a",1350,ifelse(command = "214+b",1351,1352))
TriggerAll = command = "214+a" || command = "214+b" || command = "214+c"
TriggerAll = Var(59) = 0 && FVar(13) = 0 && NumHelper(1350) = 0 && PalNo < 7
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct
[State -1]
type = ChangeState
value = 1359
TriggerAll = command = "214+a" || command = "214+b" || command = "214+c"
TriggerAll = Var(59) = 0 && NumHelper(1350)
TriggerAll = Helper(1350),Var(1) = [1350,1352]
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct
;------------------------------------------------------------------------------
; ベーアディゲン
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400
TriggerAll = command = "236+a" || command = "236+b" || command = "236+c"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;==============================================================================
; 特殊技能
;==============================================================================
;------------------------------------------------------------------------------
; アピール
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 195
TriggerAll = command = "y"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1

;------------------------------------------------------------------------------
; メタ宣言
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2900
TriggerAll = command = "abc" || command = "start"
TriggerAll = Var(59) = 0 && FVar(10) >= 360 && Var(53) = 0
TriggerAll = statetype != A && (Power >= 1000 || FVar(14) >= 1000)
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; アサルトタッチ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 720
TriggerAll = command = "236+x"
TriggerAll = Var(59) = 0 && FVar(13) = 0 && FVar(14) >= 2000
TriggerAll = statetype != A
Trigger1 = ctrl = 1
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct
;------------------------------------------------------------------------------
; ガードタッチフォアード
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 725
TriggerAll = command = "fwd_x"
TriggerAll = Var(59) = 0 && FVar(13) = 0 && FVar(14) >= 1000
TriggerAll = statetype != A
Trigger1 = StateNo=[150,159]
ignorehitapuse = 1
;------------------------------------------------------------------------------
; ガードタッチ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 710
TriggerAll = command = "x"
TriggerAll = Var(59) = 0 && FVar(13) = 0 && FVar(14) >= 1000
TriggerAll = statetype != A
Trigger1 = StateNo=[150,159]
ignorehitapuse = 1
;------------------------------------------------------------------------------
; ノーマルタッチ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 700
TriggerAll = command = "x"
TriggerAll = Var(59) = 0 && FVar(13) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1
;------------------------------------------------------------------------------
; アタックタッチ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 705
TriggerAll = command = "x"
TriggerAll = Var(59) = 0 && FVar(13) = 0
TriggerAll = statetype != A
Trigger1 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger1 = MoveContAct
Trigger2 = StateNo=400||StateNo=410||StateNo=420
Trigger2 = MoveContAct
;------------------------------------------------------------------------------
; ダメージタッチ
;------------------------------------------------------------------------------
; value = 715
; [statedef -3]に記載

;------------------------------------------------------------------------------
; ハイジャンプ
;------------------------------------------------------------------------------
[State -1, High Jump]
type = ChangeState
value = 740
TriggerAll = Var(59) = 0
TriggerAll = command = "19" || command = "28" || command = "37"
TriggerAll = statetype != A
Trigger1 = ctrl

;------------------------------------------------------------------------------
; ダッシュ
;------------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
TriggerAll = Var(59) = 0
TriggerAll = command = "FF"
TriggerAll = statetype != A
Trigger1 = ctrl
[State -1, Run Fwd]
type = ChangeState
value = 102
TriggerAll = Var(59) = 0 && FVar(13) = 0
TriggerAll = command = "FF"
TriggerAll = statetype != A
Trigger1 = StateNo=220||StateNo=222
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; バックステップ
;------------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
TriggerAll = Var(59) = 0
TriggerAll = command = "BB"
TriggerAll = statetype != A
Trigger1 = ctrl

;------------------------------------------------------------------------------
; 空中ダッシュ
;------------------------------------------------------------------------------
[State -1, Dash Fwd]
type = ChangeState
value = 110
TriggerAll = Var(59) = 0 && Var(52)%10 < 1
TriggerAll = command = "FF"
TriggerAll = statetype = A && NumHelper(1350) || PalNo >= 7
TriggerAll = Helper(1350),Var(1) = 1350 || PalNo >= 7
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; 空中バックダッシュ
;------------------------------------------------------------------------------
[State -1, Dash Back]
type = ChangeState
value = 115
TriggerAll = Var(59) = 0 && Var(52)%10 < 1
TriggerAll = command = "BB"
TriggerAll = statetype = A && NumHelper(1350) || PalNo >= 7
TriggerAll = Helper(1350),Var(1) = 1350 || PalNo >= 7
Trigger1 = ctrl = 1
Trigger2 = StateNo = 600||StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;==============================================================================
; 通常攻撃
;==============================================================================
;------------------------------------------------------------------------------
; 投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "bc"
triggerall = statetype != A
TriggerAll = Var(59) = 0
trigger1 = ctrl = 1

;------------------------------------------------------------------------------
; レバー入れ立強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 224
TriggerAll = command = "fwd_c" && command != "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Triggerall = Var(51)/1000%10=0
Trigger1 = ctrl = 1 && statetype = S
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レバー入れ立中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 212
TriggerAll = command = "fwd_b" && command != "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Triggerall = Var(50)/1000%10=0
Trigger1 = ctrl = 1 && statetype = S
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
TriggerAll = command = "a" && command != "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1 && statetype = S
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 200) && (MoveContact))
Trigger4 = StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger4 = MoveContAct
Trigger5 = StateNo=400||StateNo=410||StateNo=420
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 立中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(P2Dist X < 50,211,210)
TriggerAll = command = "b" && command != "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Triggerall = Var(50)%10=0
Trigger1 = ctrl = 1 && statetype = S
Trigger2 = StateNo=200||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(P2Dist X < 60,222,220)
TriggerAll = command = "c" && command != "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Triggerall = Var(51)%10=0
Trigger1 = ctrl = 1 && statetype = S
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; アピール
;------------------------------------------------------------------------------
[State -1, Taunt]
type = Null;ChangeState
value = 195
TriggerAll = command = "y"
Trigger1 = statetype != A
Trigger1 = ctrl

;------------------------------------------------------------------------------
; 屈弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 400
TriggerAll = command = "a" && command = "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Trigger1 = ctrl = 1 && statetype = C
trigger2 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (MoveContact))
Trigger4 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger4 = MoveContAct
Trigger5 = StateNo=410||StateNo=420
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 屈中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
TriggerAll = command = "b" && command = "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Triggerall = Var(50)/10%10=0
Trigger1 = ctrl = 1 && statetype = C
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=420
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 屈強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
TriggerAll = command = "c" && command = "holddown"
TriggerAll = Var(59) = 0
TriggerAll = statetype != A
Triggerall = Var(51)/10%10=0
Trigger1 = ctrl = 1 && statetype = C
Trigger2 = StateNo=200||StateNo=210||StateNo=211||StateNo=212||StateNo=220||StateNo=222||StateNo=224
Trigger2 = MoveContAct
Trigger3 = StateNo=400||StateNo=410
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 空弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
TriggerAll = command = "a"
TriggerAll = Var(59) = 0
TriggerAll = statetype = A
Trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo=610||StateNo=615||StateNo=620||StateNo=625
Trigger4 = MoveContAct

;------------------------------------------------------------------------------
; 空中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
TriggerAll = command = "b"
TriggerAll = Var(59) = 0
TriggerAll = statetype = A
Triggerall = Var(50)/100%10=0 && Vel X = 0
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; 空中（速度在り）
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 615
TriggerAll = command = "b"
TriggerAll = Var(59) = 0
TriggerAll = statetype = A
Triggerall = Var(50)/100%10=0 && Vel X != 0
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=620||StateNo=625
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; 空強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
TriggerAll = command = "c"
TriggerAll = Var(59) = 0
TriggerAll = statetype = A
Triggerall = Var(51)/100%10=0 && Vel X = 0
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; 空強（速度在り）
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 625
TriggerAll = command = "c"
TriggerAll = Var(59) = 0
TriggerAll = statetype = A
Triggerall = Var(51)/100%10=0 && Vel X != 0
Trigger1 = ctrl = 1
Trigger2 = StateNo=600||StateNo=610||StateNo=615
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
