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
TriggerAll = Var(59) = 0 && NumHelper(1300)=0 && Power >= 5000
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
TriggerAll = Var(59) = 0 && FVar(13) = 0 && NumHelper(1300)!=0 && NumHelper(1350)=0 && Power >= 2000
TriggerAll = statetype != A
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
TriggerAll = Var(59) = 0 && FVar(13) = 0 && NumHelper(1300)+NumHelper(1350)=0 && Power >= 1000
TriggerAll = statetype != A
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
TriggerAll = Var(59) = 0 && NumHelper(1300)=0 && Power >= 1000
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
TriggerAll = statetype != A && Power >= 1000
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
Trigger1 = ctrl = 1 && statetype=S
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
Trigger1 = ctrl = 1 && statetype=S
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
Trigger1 = ctrl = 1 && statetype=S
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
Trigger1 = ctrl = 1 && statetype=S
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
Trigger1 = ctrl = 1 && statetype=S
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
Trigger1 = ctrl = 1 && statetype=C
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
Trigger1 = ctrl = 1 && statetype=C
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
Trigger1 = ctrl = 1 && statetype=C
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























;==============================================================================
;　以下AI用記述
;==============================================================================
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;　AI用Var管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;------------------------------------------------------------------------------
;　敵やられ状態
;------------------------------------------------------------------------------
[State -1, 敵やられ状態監視]
type = Null
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = PlayerID(var(57)),Movetype=H
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),StateNo !=[120,155]
Trigger1 = (var(48)!=[2,3]) && (PlayerID(var(57)),StateNo!=726)
Trigger1 = PlayerID(var(57)),Statetype !=A
Trigger1 = var(48):=1;地上ノーマルやられ
Trigger2 = PlayerID(var(57)),Statetype =A
Trigger2 = (PlayerID(var(57)),StateNo !=[228,229]) && (PlayerID(var(57)),StateNo!=727)
Trigger2 = var(48):=2;空中ノーマルやられ
Trigger3 = PlayerID(var(57)),StateNo=[228,229]
Trigger3 = var(48):=3;ワイヤーやられ
Trigger4 = PlayerID(var(57)),StateNo=726
Trigger4 = var(48):=4;ガードタッチフォアード
ignorehitpause=1
;---------------------------------------------------------------------------
[State -1, 敵やられ状態監視]
type = varset
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = PlayerID(var(57)),Movetype=H
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = PlayerID(var(57)),StateNo !=[5110,5120]
TriggerAll = PlayerID(var(57)),StateNo !=[120,155]
Trigger1 = PlayerID(var(57)),StateNo =[5100,5109]
var(48)=5
ignorehitpause=1
;---------------------------------------------------------------------------
[State -1, 敵やられ状態監視リセット]
type = varset
TriggerAll = var(59)>0 && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(48)=[1,5]
Trigger1 = PlayerID(var(57)),Movetype!=H
Trigger2 = PlayerID(var(57)),Stateno=[5110,5120]
Trigger3 = Movetype=H
Trigger4 = Roundstate !=2
var(48)=0
ignorehitpause=1
;------------------------------------------------------------------------------
;　コンボ管理
;------------------------------------------------------------------------------
[State -1, コンボ管理]
type = Null
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = PlayerID(var(57)),Movetype=H
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = PlayerID(var(57)),Stateno!=[5110,5120]
TriggerAll = PlayerID(var(57)),StateNo !=[120,155]
Trigger1 = (var(49)=0||var(49)=11)&&(stateno=400||stateno=410||stateno=200||(stateno=[210,211]))&&Movehit&&var(48)=1
Trigger1 = var(49):=1
Trigger2 = (((stateno=410&&var(49)!=8)||(stateno=[210,211]))&&Movehit)&&(P2bodydist X=[0,20])&&var(48)=1
Trigger2 = Numhelper(111111)&&Numhelper(111112)
Trigger2 = PlayerID(var(57)),Backedgebodydist<=0 && ((Helper(111111),Rootdist X-(P2bodydist X)<100&&Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<100&&Facing=-1))
Trigger2 = var(49):=2
Trigger3 = (((stateno=410&&var(49)!=8)||(stateno=[210,211]))&&Movehit)&&(P2bodydist X>20)&&var(48)=1
Trigger3 = Numhelper(111111)&&Numhelper(111112)
Trigger3 = PlayerID(var(57)),Backedgebodydist<=0 && ((Helper(111111),Rootdist X-(P2bodydist X)<100&&Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<100&&Facing=-1))
Trigger3 = var(49):=3
Trigger4 = (var(49)=[1,3])&&var(49)!=7&&stateno=39
Trigger4 = var(49):=4
Trigger5 = var(49)=4&&fvar(39)=0.1
Trigger5 = Numhelper(111111)&&Numhelper(111112)
Trigger5 = PlayerID(var(57)),Backedgebodydist<=0 && ((Helper(111111),Rootdist X-(P2bodydist X)<100&&Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<100&&Facing=-1))
Trigger5 = var(49):=5
Trigger6 = ((var(49)=1&&stateno=222)||(var(49)=0&&stateno=212&&var(48)=1))&&Movehit
Trigger6 = var(49):=6
Trigger7 = (var(49)=0||var(49)=9||var(49)=12)&&(stateno=212||(stateno=[210,211]))&&Movehit&&PlayerID(var(57)),statetype=A
Trigger7 = var(49):=7
Trigger8 = (stateno=1400||stateno=1430||StateNo=2110)&&Movehit
Trigger8 = var(49):=8
Trigger9 = stateno=410&&Movehit&&var(48)=2
Trigger9 = var(49):=9
Trigger10 = var(49)=0&&stateno=220&&Movehit&&(var(48)=[1,2])
Trigger10 = var(49):=10
Trigger11 = var(49)=0&&var(49)!=11&&var(48)=4
Trigger11 = var(49):=11
Trigger12 = ((var(49)=[0,1])||(var(49)=[9,10]))&&var(49)!=12&&var(48)=2
Trigger12 = (helper(1350),var(1)=[700,705])&&(helper(1350),P2bodydist X=[-20,100])
Trigger12 = var(49):=12
ignorehitpause=1
;------------------------------------------------------------------------------
[State -1, コンボ管理]
type = varset
TriggerAll = var(59)>2 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = PlayerID(var(57)),Movetype=H
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = PlayerID(var(57)),Stateno!=5120
TriggerAll = PlayerID(var(57)),StateNo !=[120,155]
Trigger1 = var(49)=0 && stateno=2010; && time=1
var(49)=100
ignorehitpause=1
;---------------------------------------------------------------------------
[State -1, コンボ変数リセット]
type = varset
TriggerAll = var(59)>0 && !Ishelper
TriggerAll = var(49)>0
Trigger1 = PlayerID(var(57)),Stateno=5120||(var(49)!=7 && var(49)!=100 && var(48)=5)
Trigger2 = PlayerID(var(57)),Movetype!=H
Trigger3 = PlayerID(var(57)),StateNo =[120,155]
Trigger4 = PlayerID(var(57)),Movetype!=H
Trigger4 = statetype!=A && fvar(39)=0
Trigger5 = (var(49)=[4,5]) && stateno!=39 && (statetype!=A&&fvar(39)=0)
Trigger6 = Movetype=H||(stateno=[1000,1002])||(stateno=[1030,1031])||(stateno=[1100,1150])||(stateno=[1230,1250])
Trigger7 = roundstate>=3
var(49)=0
ignorehitpause=1
;---------------------------------------------------------------------------
[State -1, 空中コンボ管理]
type = varadd
TriggerAll = var(59)>2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = PlayerID(var(57)),Movetype=H
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = PlayerID(var(57)),StateNo !=[120,155]
TriggerAll = time=1
Trigger1 = stateno=600 || stateno=615 || stateno=625 || stateno=45
fvar(39)=.1
ignorehitpause=1
;---------------------------------------------------------------------------
[State -1, 空中コンボ変数リセット]
type = varset
TriggerAll = var(59)>0 && !Ishelper
TriggerAll = fvar(39)>0
Trigger1 = PlayerID(var(57)),Statetype=L
Trigger2 = PlayerID(var(57)),Movetype!=H
Trigger3 = Statetype!=A
Trigger6 = roundstate>=3
fvar(39)=0
ignorehitpause=1
;------------------------------------------------------------------------------
;　一時行動制限
;------------------------------------------------------------------------------
[State -1, 行動制限1]
type = varset
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(12)=0
Trigger1 = var(48)=5&&(P2bodydist X=[0,90])&&stateno=410&&MoveContact=0 ;バウンド追い打ち失敗
Trigger2 = (PlayerID(var(57)),stateno=[5110,5119]) && stateno=220
Trigger3 = (stateno=[1000,1040]) ;十戒後追い打ち制御
var(12) = 1
ignorehitpause=1
[State -1, 行動制限2]
type = varset
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(12)=[0,1]
Trigger1 = (stateno=[1300,1305]) ;ガートルード→即ダッシュ禁止
var(12) = 2
ignorehitpause=1
[State -1, 行動制限2]
type = varset
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(12)=[0,2]
Trigger1 = stateno=1359 && Numhelper(1350)!=0 ;「撤退デス」×2防止
var(12) = 3
ignorehitpause=1
[State -1, 行動制限解除]
type = varset
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Trigger1 = var(12)=1 && PlayerID(var(57)),Movetype!=H && PlayerID(var(57)),Statetype!=L
Trigger2 = var(12)=2 && (Helper(1300),var(1)=[1300,1305]) && Helper(1300),Rootdist X<=-39
Trigger2 = (Helper(1300),stateno=1311 && Helper(1300),animtime>-1)||(Helper(1300),stateno=[1312,1314])
Trigger3 = var(12)=2 && Helper(1300),var(1)=0
Trigger4 = var(12)=3 && NumHelper(1350)=0
var(12) = 0
ignorehitpause=1
;---------------------------------------------------------------------------
[State -1, 引きジャンプ用]
type = varset
TriggerAll = var(59)>0 && var(58)=0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Trigger1 = (stateno=[410,420]) && Moveguarded && PlayerID(Var(57)),StateType !=A
var(12) = 10
ignorehitpause=1
[State -1, 引きジャンプ用]
type = varset
TriggerAll = var(59)>0 && var(58)=0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Trigger1 = var(12)=10 && StateNo=52
Trigger2 = var(12)=10 && Movetype=H
Trigger3 = var(12)=10 && Movetype=A && (stateno!=[410,420])
var(12) = 0
ignorehitpause=1
;---------------------------------------------------------------------------







;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;　AI行動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;------------------------------------------------------------------------------
; デバック
;------------------------------------------------------------------------------
[State -1]
type = null;ChangeState
value = 195
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && ctrl && FVar(10)<360 && var(48)=0 && fvar(11)=0
Trigger1 = enemy,Name = "Training" && enemy,Authorname = "stupa"
Trigger2 = enemy,Name = "TRM Man" && enemy,Authorname = "M3"

[State -1,これでおしまいデス]
Type = ChangeState
Value = 1100
TriggerAll = var(59)>4 && var(44)!=3 && RoundState>=3 && Alive && !Ishelper
TriggerAll = StateType=A && Enemynear,statetype=A
TriggerAll = (p2Bodydist X=[0,40]) && (p2Bodydist Y=[-150,80])
Trigger1 = (StateNo=615||stateno=625) && Movehit

[State -1,これにて当法廷は閉廷デス]
type = ChangeState
value = 195
TriggerAll = var(59)>0 && RoundState>=3 && Alive && !Ishelper
TriggerAll = statetype != A && ctrl && MatchOver
Trigger1 = var(44)=3 || (var(59)>4 && var(44)!=3 && Prevstateno=2110)

;==============================================================================
;　11P-12P
;==============================================================================

[State -1,11P-12P ダメージタッチ]
Type = ChangeState
Value = ifelse(StateType=A,716,715)
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(13)=0 && FVar(14)>=2000
triggerAll !=hitshakeover
trigger1 = (StateNo=[5000,5119])||(StateNo=[150,159])||((anim=[5000,5119])&&gethitvar(isbound)=0)||Movetype=H
IgnoreHitPause = 1

[State -1,11P-12P ユングフラウ・ガートルード・シュロース]
type = ChangeState
value = 1305
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power >= 5000 && (ctrl||stateno=21||(stateno=[100,101]))
TriggerAll = NumHelper(1300) = 0
Trigger1 = PalNo=11; && P2BodyDist X>110
Trigger1 = PlayerID(var(57)),Numproj=0
Trigger2 = PalNo=12
Trigger3 = PlayerID(var(57)),StateType = L || PlayerID(var(57)),MoveType = H

[State -1,11P シュトゥルム・ウント・ドラング]
type = ChangeState
value = 2200
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power >= 5000 && fvar(15) <= 0 && (ctrl||stateno=21||(stateno=[100,101])) && PalNo = 11 && var(49)!=100
Trigger1 = NumHelper(1300)
Trigger2 = EnemyNear,MoveType = H || (P2BodyDist X > 150 && EnemyNear,Ctrl = 1)
Trigger2 = (Life >= Life*.3 && EnemyNear,Life >= EnemyNear,LifeMax*.5 && Random%12 = 2)

[State -1,11P-12P ヘイリッヒ・トーデスルタイル・ニヒツ]
type = ChangeState
value = 2105
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(11) > 0 && P2BodyDist X <= 140
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && var(49)!=100
Trigger1 = P2BodyDist X < 80 && EnemyNear,StateType != A
Trigger1 = (Helper(111111),Rootdist X>120 && Facing=1)||(Helper(111112),Rootdist X>120 && Facing=-1)
Trigger1 = Random%12 <= 7

[State -1,cヘイリッヒ・トーデスルタイル・アインス]
type = ChangeState
value = 2100
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(11) > 0 && (ctrl||stateno=21||(stateno=[100,101]))
TriggerAll = PalNo=11 && var(12)!=2 && NumHelper(1300) && P2BodyDist X<110
Trigger1 = PlayerID(var(57)),StateType != L
Trigger1 = PalNo=11 && (PlayerID(var(57)),StateType != A||var(48)=3)
Trigger1 = Helper(1300),Rootdist X<-30 && !(PlayerID(var(57)),facing=facing)
Trigger1 = Random<=600

[State -1,11P-12P シュヴァート・ノートゥング]
type = ChangeState
value = 2000
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power >= 5000 && (ctrl||stateno=21||(stateno=[100,101]))
TriggerAll = NumHelper(1300) && var(12)!=2 && P2BodyDist X<110
Trigger1 = PlayerID(var(57)),StateType != L
Trigger1 = (PalNo=11 && (PlayerID(var(57)),StateType != A||var(48)=3)) || PalNo=12
Trigger1 = Helper(1300),Rootdist X<-30 && !(PlayerID(var(57)),facing=facing)
Trigger2 = (PlayerID(var(57)),Stateno = [5100,5109]) && var(49)=100

[State -1,11P-12P アイゼルネ・ユングフラウorフォルモンドアイゼン]
type = ChangeState
value = ifelse(NumHelper(1300)=0,1230,1250)
TriggerAll = var(59)>0 && var(44)=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(13) = 0 && var(12)!=2 && NumHelper(1350)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && var(49)!=100
TriggerAll = FVar(14)>=ifelse(NumHelper(1300)=0,1000,2000)
TriggerAll = (P2BodyDist X =[110,220]) && EnemyNear,Pos Y > -80 && EnemyNear,Vel Y >= 0
Trigger1 = EnemyNear,MoveType = A || (EnemyNear,Ctrl = 0 && EnemyNear,MoveType != H && EnemyNear,StateType != L)
Trigger1 = PlayerID(var(57)),Numproj=0 && NumHelper(1350)=0









;===========================================================================
;　超反応
;===========================================================================

[State -1,シュヴァート・ノートゥング]
type = ChangeState
value = 2000
TriggerAll = var(59)>5 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power>=5000 && ((ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132))
TriggerAll = var(49)=0 && var(48)=0
TriggerAll = P2bodydist X-fvar(26)*5=[40,110]
TriggerAll = PlayerID(var(57)),Vel X>=0
TriggerAll = PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Movetype=A
TriggerAll = !PlayerID(var(57)),Hitdefattr = SC,HA,HP,HT
TriggerAll = (PrevStateNo=[5000,5290])||(PrevStateNo=[150,155])||Random<525
Trigger1 = PlayerID(var(57)),Time=[10-var(59)*2,14-var(59)*2]
Trigger1 = PlayerID(var(57)),Statetype=S
Trigger1 = ((var(59)<=6 && Random%2=1)||var(59)>=7) && Random<111+var(59)*70
Trigger2 = PlayerID(var(57)),Time=[6-var(59),9-var(59)]
Trigger2 = PlayerID(var(57)),Hitdefattr=SCA,AT
Trigger2 = Random<var(59)*120
Trigger3 = PlayerID(var(57)),Time=[6-var(59),9-var(59)]
Trigger3 = PlayerID(var(57)),Hitdefattr=SCA,NA,SA,NT,ST,NP,SP
Trigger3 = Random<var(59)*120

[State -1,ヘイリッヒ・トーデスルタイル・アインス]
type = ChangeState
value = 2100
TriggerAll = var(59)>4 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype !=A && ((ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132))
TriggerAll = var(49)=0 && var(48)=0 && FVar(11)>0
TriggerAll = P2bodydist X-fvar(26)*5=[40,110]
TriggerAll = PlayerID(var(57)),Vel X>=0
TriggerAll = PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Movetype=A
TriggerAll = !PlayerID(var(57)),Hitdefattr = SC,HA,HP,HT
TriggerAll = (PrevStateNo=[5000,5290])||(PrevStateNo=[150,155])||(Prevstateno=[2900,2940])||Random<525
Trigger1 = PlayerID(var(57)),Time=[10-var(59)*2,14-var(59)*2]
Trigger1 = PlayerID(var(57)),Statetype=S
Trigger1 = (((var(59)<=6 && Random%2=1)||var(59)>=7) && Random<111+var(59)*60)
Trigger2 = PlayerID(var(57)),Time=[6-var(59),9-var(59)]
Trigger2 = PlayerID(var(57)),Hitdefattr=SCA,AT
Trigger2 = Random<var(59)*100
Trigger3 = PlayerID(var(57)),Time=[6-var(59),9-var(59)]
Trigger3 = PlayerID(var(57)),Hitdefattr=SCA,NA,SA,NT,ST,NP,SP
Trigger3 = Random<var(59)*100
Trigger4 = (Prevstateno=[2900,2940])

[State -1,メタ宣言]
type = ChangeState
value = 2900
TriggerAll = var(59)>4 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype !=A && ((ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132))
TriggerAll = FVar(10)>=360 && var(49)=0 && var(48)=0 && Var(53)=0 && Power>=1000 && Life>LifeMax*.2
TriggerAll = (Power>=1000 && Enemy,Power<(floor(Enemy,PowerMax)/5))
TriggerAll = P2bodydist X-fvar(26)*5=[40,110]
TriggerAll = PlayerID(var(57)),Vel X>=0
TriggerAll = PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Movetype=A
TriggerAll = !PlayerID(var(57)),Hitdefattr = SC,HA,HP,HT
TriggerAll = (PrevStateNo=[5000,5290])||(PrevStateNo=[150,155])||Random<525
Trigger1 = PlayerID(var(57)),Time=[9-var(59)*2,13-var(59)*2]
Trigger1 = PlayerID(var(57)),Statetype=S
Trigger1 = ((var(59)<=6 && Random%2=1)||var(59)>=7) && Random<111+var(59)*60
Trigger2 = PlayerID(var(57)),Time=[5-var(59),8-var(59)]
Trigger2 = PlayerID(var(57)),Hitdefattr=SCA,AT
Trigger2 = Random<var(59)*100
Trigger3 = PlayerID(var(57)),Time=[5-var(59),8-var(59)]
Trigger3 = PlayerID(var(57)),Hitdefattr=SCA,NA,SA,NT,ST,NP,SP
Trigger3 = Random<var(59)*100

[State -1,アサルトタッチ]
type = ChangeState
value = 720
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && ((ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0 && var(48)=0 && FVar(13)=0 && FVar(14)>=2000
TriggerAll = P2bodydist X-fvar(26)*10=[20,100]
TriggerAll = PlayerID(var(57)),Vel X=[-1,10]
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Movetype=A
TriggerAll = !PlayerID(var(57)),Hitdefattr = SC,HA,HP,HT
TriggerAll = (PrevStateNo=[5000,5290])||(PrevStateNo=[150,155])||Random<525
Trigger1 = PlayerID(var(57)),Time=[10-var(59)*2,14-var(59)*2]
Trigger1 = PlayerID(var(57)),Statetype=S
Trigger1 = ((var(59)<=6 && Random%2=1)||var(59)>=7) && Random<111+var(59)*50
Trigger2 = PlayerID(var(57)),Time=[6-var(59),9-var(59)]
Trigger2 = PlayerID(var(57)),Hitdefattr=SCA,AT
Trigger2 = Random<var(59)*90
Trigger3 = PlayerID(var(57)),Time=[6-var(59),9-var(59)]
Trigger3 = PlayerID(var(57)),Hitdefattr=SCA,NA,SA,NT,ST
Trigger3 = Random<var(59)*90

[State -1,アイゼルネ・ユングフラウorフォルモンドアイゼン]
type = ChangeState
value = ifelse(NumHelper(1300)=0,1230,1250)
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && var(49)=0 && var(48)=0 && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = (ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)
TriggerAll = (var(44)=1 && Power>=ifelse(NumHelper(1300)=0,1000,2000)) || (var(44)=2 && FVar(14)>=ifelse(NumHelper(1300)=0,1000,2000))
TriggerAll = (P2bodydist X=[ifelse(var(59)>4&&(NumHelper(1350)=0||PlayerID(var(57)),Life<150),41,110),220]) && PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Pos Y > -80
TriggerAll = PlayerID(var(57)),Movetype=A
TriggerAll = !PlayerID(var(57)),Hitdefattr = SC,HA,HP,HT
TriggerAll = (PrevStateNo=[5000,5290])||(PrevStateNo=[150,155])||Random<525
Trigger1 = PlayerID(var(57)),Time=[14-var(59)*2,18-var(59)*2]
Trigger1 = PlayerID(var(57)),Statetype=S
Trigger1 = ((var(59)<=6 && Random%2=1)||(PlayerID(var(57)),Life<150 && var(59)>5)||var(59)>=7) && Random<111+var(59)*50
Trigger2 = PlayerID(var(57)),Numproj>0 && inguarddist && Backedgebodydist<40
Trigger2 = Random<var(59)*(40+Ifelse((Helper(1300),var(1)!=1301),(Enemy,Numproj)*20,0))

;===========================================================================
;		隙突き
;===========================================================================
[State -1,ヘイリッヒ・トーデスルタイル・アインス(隙突き)]
type = ChangeState
value = 2100
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype !=A && statetype != L && ((ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0 && FVar(11)>0
TriggerAll = P2bodydist X-fvar(26)*5=[0,110]
TriggerAll = PlayerID(var(57)),Vel X=[-1,10]
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
TriggerAll = !PlayerID(var(57)),Ctrl
Triggerall = (Random<350*(Random%2+1)&&(var(59)=[5,6]))||var(59)>=7
Trigger1 = PlayerID(var(57)),Animtime<=-3
Trigger1 = PlayerID(var(57)),Movetype=I
Trigger1 = PlayerID(var(57)),StateNo>=200
Trigger2 = PlayerID(Var(57)),Movetype!=A
Trigger2 = PlayerID(var(57)),StateNo>=200

[State -1,アサルトタッチ(隙突き)]
type = ChangeState
value = 720
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && statetype != L && var(49)=0 && FVar(13)=0 && FVar(14)>=2000
TriggerAll = (ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)
TriggerAll = P2bodydist X-fvar(26)*10=[20,100]
TriggerAll = PlayerID(var(57)),Vel X=[-1,10]
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = !PlayerID(var(57)),Ctrl
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Triggerall = (Random<350*(Random%2+1)&&(var(59)=[5,6]))||var(59)>=7
Trigger1 = PlayerID(var(57)),Animtime<=-3
Trigger1 = PlayerID(var(57)),Movetype=I
Trigger1 = PlayerID(var(57)),StateNo>=200||PlayerID(var(57)),StateNo=52
Trigger2 = PlayerID(Var(57)),Movetype!=A
Trigger2 = PlayerID(var(57)),StateNo>=200

[State -1, 屈弱(隙突き)]
type = ChangeState
value = 400
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && statetype != L && var(49)=0
TriggerAll = (ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)||(Ctrl && PrevStateNo=52)||(StateNo=52&&Animtime=0)
TriggerAll = P2Bodydist X-fvar(26)*7=[-5,35]
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = !PlayerID(var(57)),Ctrl
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Triggerall = (Random<350*(Random%2+1)&&(var(59)=[5,6]))||var(59)>=7
Trigger1 = StateNo!=52
Trigger1 = PlayerID(var(57)),Animtime<=-3
Trigger1 = PlayerID(var(57)),Movetype=I
Trigger1 = PlayerID(var(57)),StateNo>=200||PlayerID(var(57)),StateNo=52
Trigger2 = PlayerID(Var(57)),Movetype=H
Trigger2 = (Ctrl && PrevStateNo=52)||(StateNo=52&&Animtime=0)
Trigger3 = PlayerID(Var(57)),Movetype!=A
Trigger3 = PlayerID(var(57)),StateNo>=200

[State -1, 立弱(隙突き)]
type = ChangeState
value = 200
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && statetype != L && var(49)=0 && var(47)<=3
TriggerAll = (ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)||(Ctrl && PrevStateNo=52)||(StateNo=52&&Animtime=0)
TriggerAll = P2Bodydist X-fvar(26)*5=[-5,40]
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = !PlayerID(var(57)),Ctrl
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Triggerall = (Random<350*(Random%2+1)&&(var(59)=[5,6]))||var(59)>=7
Trigger1 = StateNo!=52
Trigger1 = PlayerID(var(57)),Animtime<=-3
Trigger1 = PlayerID(var(57)),Movetype=I
Trigger1 = PlayerID(var(57)),StateNo>=200||PlayerID(var(57)),StateNo=52
Trigger2 = PlayerID(Var(57)),Movetype=H
Trigger2 = (Ctrl && PrevStateNo=52)||(StateNo=52&&Animtime=0)
Trigger3 = PlayerID(Var(57)),Movetype!=A
Trigger3 = PlayerID(var(57)),StateNo>=200

[State -1, 屈中(隙突き)]
type = ChangeState
value = 410
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && statetype != L && var(49)=0 && Var(50)/10%10=0
TriggerAll = (ctrl||stateno=21||(stateno=[100,101]))||((StateNo=[120,140])&&StateNo!=132)
TriggerAll = P2Bodydist X-fvar(26)*7>35 && (P2Bodydist X-fvar(26)*9=[30,80])
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = !PlayerID(var(57)),Ctrl
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Triggerall = Random<350*(Random%2+1)
Trigger1 = StateNo!=52
Trigger1 = PlayerID(var(57)),Animtime<=-7
Trigger1 = PlayerID(var(57)),Movetype=I
Trigger1 = PlayerID(var(57)),StateNo>=200||PlayerID(var(57)),StateNo=52
Trigger2 = PlayerID(Var(57)),Movetype!=A
Trigger2 = PlayerID(var(57)),StateNo>=200

;===========================================================================
;　投げ
;===========================================================================

[State -1,ノックス十戒・原罪]
type = ChangeState
value = ifelse(P2Dist X>70|| EnemyNear,StateType=A,1030,1031)
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = Statetype != A && statetype != L && Power>=1000 && var(49)=0 && var(48)=0
TriggerAll = Ctrl || stateno=21 || (StateNo=[100,101])
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Statetype !=A || (PlayerID(var(57)),Statetype=A && (P2BodyDist Y=[-100,0]))
TriggerAll = PlayerID(var(57)),Movetype !=H
TriggerAll = !PlayerID(var(57)),Hitdefattr = SCA,HA,HP,HT
TriggerAll = PlayerID(var(57)),StateNo != [5100,5150]
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(53)
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = P2bodydist X-fvar(26)*5=[-5,35]
TriggerAll = Random<ifelse((Power>3000||(PlayerID(var(57)),Life<170 && var(59)>5)||Palno=10),500,100)+var(59)*50
TriggerAll = (var(59)<5 && Gametime%3=0) || ((var(59)=[5,6]) && Gametime%2=0) || var(59)=7
TriggerAll = (Helper(111111),Rootdist X>80 && Facing=-1)||(Helper(111112),Rootdist X>80 && Facing=1)||(PlayerID(var(57)),Life<=150)
Trigger1 = (PrevstateNo = [5000,5270])
Trigger2 = (PrevstateNo = [150,155]) && !inguarddist
Trigger3 = Random<200+var(59)*20 && !inguarddist
Trigger4 = PlayerID(var(57)),StateNo>=200
Trigger4 = PlayerID(var(57)),Movetype=I
Trigger4 = !PlayerID(var(57)),Ctrl
Trigger4 = PlayerID(var(57)),AnimTime=[-2,0]

[State -1,ノックス十戒]
type = ChangeState
value = ifelse(EnemyNear,StateType=A,1001,1000)
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = Statetype != A && statetype != L && var(49)=0 && Palno!=10 && var(48)=0
TriggerAll = Ctrl || stateno=21 || (StateNo=[100,101])
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Statetype !=A || (PlayerID(var(57)),Statetype=A && (P2BodyDist Y=[-100,0]))
TriggerAll = PlayerID(var(57)),Movetype !=H
TriggerAll = !PlayerID(var(57)),Hitdefattr = SCA,HA,HP,HT
TriggerAll = PlayerID(var(57)),StateNo != [5100,5150]
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(53)
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = P2bodydist X-fvar(26)*5=[-5,35]
TriggerAll = Random<ifelse(Power>3000,300,500)+var(59)*50
TriggerAll = (var(59)<5 && Gametime%3=0) || ((var(59)=[5,6]) && Gametime%2=0) || var(59)=7
TriggerAll = (Helper(111111),Rootdist X>80 && Facing=-1)||(Helper(111112),Rootdist X>80 && Facing=1)||(PlayerID(var(57)),Life<=100)
Trigger1 = (PrevstateNo = [5000,5270])
Trigger2 = (PrevstateNo = [150,155]) && !inguarddist
Trigger3 = Random<200+var(59)*20 && !inguarddist
Trigger4 = PlayerID(var(57)),StateNo>=200
Trigger4 = PlayerID(var(57)),Movetype=I
Trigger4 = !PlayerID(var(57)),Ctrl
Trigger4 = PlayerID(var(57)),AnimTime=[-2,0]

[State -1, 前投げ]
type = ChangeState
value = 800
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = Statetype != A && statetype != L && var(49)=0 && var(48)=0 && var(47)<=3
TriggerAll = Ctrl || stateno=21 || (StateNo=[100,101])
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Movetype !=H
TriggerAll = !PlayerID(var(57)),Hitdefattr = SCA,HA,HP,HT
TriggerAll = PlayerID(var(57)),stateno!=Helper(111112),var(53)
TriggerAll = PlayerID(var(57)),Alive
TriggerAll = P2bodydist X=[-6,20]
TriggerAll = Random<500+var(59)*50
TriggerAll = (var(59)<5 && Gametime%3=0) || ((var(59)=[5,6]) && Gametime%2=0) || var(59)=7
TriggerAll = ((PlayerID(var(57)),Backedgebodydist>5)&&(Helper(111111),Rootdist X-(P2bodydist X)>=100 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)>=100 && Facing=-1))||(PlayerID(var(57)),Life<=70)
Trigger1 = PrevstateNo = [5000,5270]
Trigger2 = (PrevstateNo = [150,155]) && !inguarddist
Trigger3 = Random<200+var(59)*20 && !inguarddist
Trigger4 = PlayerID(var(57)),StateNo>=200
Trigger4 = PlayerID(var(57)),Movetype=I
Trigger4 = !PlayerID(var(57)),Ctrl
Trigger4 = PlayerID(var(57)),AnimTime=[-2,0]

;===========================================================================
;　投げ回避
;===========================================================================
[State -1,回避バックステップ]
type = ChangeState
value = 525
TriggerAll = var(59)>3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
triggerall = StateType != A && var(48)=0 && var(49)=0 && (stateno!=100&&(stateno!=[105,106]))
triggerall = (ctrl||stateno=21||stateno=101) || ((StateNo=[120,140])&&StateNo!=132)
triggerall = PlayerID(var(57)),StateType != A
triggerall = PlayerID(var(57)),Movetype =A
triggerall = PlayerID(var(57)),HitDefAttr = SCA,AT
TriggerAll = PlayerID(var(57)),Time=[12-var(59)*2,16-var(59)]
TriggerAll = Numhelper(111111) && NumHelper(111112)
TriggerAll = (Helper(111111),Rootdist X>-100 && Facing=-1)||(Helper(111112),Rootdist X>-100 && Facing=1)
trigger1 = Random<var(59)*120

;==============================================================================
;　ダメージタッチ
;==============================================================================
[State -1, ダメージタッチ]
Type = ChangeState
Value = ifelse(StateType=A,716,715)
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(13)=0 && FVar(14)>=2000 && ctrl=0 && (StateType!=A || PalNo>=7)
TriggerAll = statetype !=L && movetype=H
triggerAll !=hitshakeover
TriggerAll = (!PlayerID(var(57)),Ctrl&&(PlayerID(var(57)),stateno!=[120,155]))||(life<100)
TriggerAll = ((P2bodydist X=[-80,79])&&(P2bodydist Y=[-150,70]))||(life<100)
triggerall = (StateNo=[5000,5119])||((StateNo=[150,159])&&Life<371)||((anim=[5000,5119])&&gethitvar(isbound)=0)
Triggerall = (Life<=LifeMax*.5 && Random<=Var(59)*30) || (Life<=LifeMax*.3 && Random<=Var(59)*60) || (Random<=1 && var(59)>4)
trigger1   = (FVar(14)>=3500 && GetHitVar(hitcount)<10+ifelse(var(44)=2,5,0)) || (FVar(14)>=5000 && Power>=1000)
trigger2   = FVar(14)>=2000 && GetHitVar(hitcount)<5 && ((var(44)=2 && Power>=1000) || Life<=LifeMax*.3)
trigger3   = FVar(14)>=2000 && PalNo=10

[State -1,シュトゥルム・ウント・ドラング]
type = ChangeState
value = 2200
TriggerAll = var(59)>5 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype !=A && (ctrl||stateno=21||(stateno=[100,101])) && Power>=5000 && fvar(15)<=0
TriggerAll = (Life >= Life*.3 && PlayerID(var(57)),Life >= PlayerID(var(57)),LifeMax*.5 && Random%12 = 2)
Trigger1 = var(49)=0 && (PlayerID(var(57)),Stateno=[5100,5119])
Trigger2 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
trigger3 = PlayerID(var(57)),HitDefAttr = SCA,AT
trigger3 = PlayerID(var(57)),StateType != A
trigger3 = P2bodydist Y=[-70,70]

;===========================================================================
;　ガード
;===========================================================================
[State -1, ガードタッチ/ガードタッチフォアード]
type = ChangeState
value = 710+ifelse(var(59)>4,15,0)
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(13)=0 && FVar(14)>=1000 && statetype!=A && (StateNo=[150,159])
TriggerAll = FrontEdgeDist>50 && (P2BodyDist X-fvar(26)*3=[-10,48]) && PlayerID(var(57)),Vel X>=0
triggerAll = PlayerID(var(57)),HitDefAttr = SC,NA,SA
Trigger1 = (BackEdgeDist<50 && FVar(14)>=1000) || (BackEdgeDist>=50 && FVar(14)>=2000)
Trigger1 = Random<=Var(59)*90
ignorehitapuse = 1

;---------------------------------------------------------------------------
[State -1, ガード]
Type = ChangeState
Value = 120
TriggerAll = var(59)>1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (Ctrl&&(var(49)!=[4,5])) || stateno=21 || ((stateno=[100,101])&&(var(49)=0||var(49)=12)) || (stateno=195 && animelemtime(15)>0)
TriggerAll = InGuardDist && (fvar(15)<=0||(fvar(15)>0&&PlayerID(var(57)),HitDefAttr=SCA,AT))
TriggerAll = NumHelper(1300)=0 || (Helper(1300),var(1)=0||(Helper(1300),var(1)!=0&&var(12)=2))
TriggerAll = Random < Var(59)*170
Trigger1 = (prevstateno=[120,155]) || (prevstateno=[5000,5270])
Trigger2 = NumHelper(2666660)&&(InGuardDist || ((Helper(2666660),Var(40)) && (EnemyNear,P2Dist X<-30)) || (Helper(2666660),Var(41)))
Trigger2 = var(59)>6

[State -1, ガード＋ガートルード]
Type = ChangeState
Value = 120
TriggerAll = var(59)>1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (Ctrl&&(var(49)!=[4,5])) || stateno=21 || ((stateno=[100,101])&&(var(49)=0||var(49)=12)) || (stateno=195 && animelemtime(15)>0)
TriggerAll = InGuardDist && (fvar(15)<=0||(fvar(15)>0&&PlayerID(var(57)),HitDefAttr=SCA,AT))
TriggerAll = NumHelper(1300)>0 && var(12)!=2
TriggerAll = Random < Var(59)*170
Trigger1 = ((prevstateno=[120,155]) || (prevstateno=[5000,5270])) && Statetype=A
Trigger2 = ((prevstateno=[120,155]) || (prevstateno=[5000,5270])) && Statetype!=A
Trigger2 = Helper(1300),var(1)=1300 && PlayerID(var(57)),statetype!=S && !(PlayerID(var(57)),HitDefAttr=CA,NA,SA)
Trigger3 = ((prevstateno=[120,155]) || (prevstateno=[5000,5270])) && Statetype!=A
Trigger3 = Helper(1300),var(1)=1301 && !(PlayerID(var(57)),HitDefAttr=SCA,NP,SP)
Trigger4 = NumHelper(2666660)&&(InGuardDist || ((Helper(2666660),Var(40)) && (EnemyNear,P2Dist X<-30)) || (Helper(2666660),Var(41)))
Trigger4 = var(59)>6

;---------------------------------------------------------------------------
[State -1, 飛び道具対策ガード]
Type = ChangeState
Value = 120
TriggerAll = var(59)>2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (Ctrl&&(var(49)!=[4,5])) || stateno=21 || ((stateno=[100,101])&&(var(49)=0||var(49)=12)) || (stateno=195 && animelemtime(15)>0)
TriggerAll = InGuardDist && (NumHelper(1300)=0 || (Helper(1300),var(1)=0||(Helper(1300),var(1)!=0&&var(12)=2)))
TriggerAll = Random < Var(59)*170
Trigger1 = NumHelper(300020) && Helper(300020),Var(54) && (var(49)=0||var(49)=12)
trigger2 = PlayerIDExist(Var(45))
trigger2 = Facing*PlayerID(Var(45)),Facing*PlayerID(Var(45)),Vel X*-1 >= 0
trigger2 = PlayerID(Var(45)),P2Dist X<50

[State -1, 飛び道具対策ガード＋ガートルード]
Type = ChangeState
Value = 120
TriggerAll = var(59)>2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (Ctrl&&(var(49)!=[4,5])) || stateno=21 || ((stateno=[100,101])&&(var(49)=0||var(49)=12)) || (stateno=195 && animelemtime(15)>0)
TriggerAll = InGuardDist && NumHelper(1300)>0 && var(12)!=2
TriggerAll = (Helper(1300),var(1)!=1301||(Helper(1300),var(1)!=[1303,1305]))
TriggerAll = Random < Var(59)*170
Trigger1 = NumHelper(300020) && Helper(300020),Var(54) && (var(49)=0||var(49)=12)
trigger2 = PlayerIDExist(Var(45))
trigger2 = Facing*PlayerID(Var(45)),Facing*PlayerID(Var(45)),Vel X*-1 >= 0
trigger2 = PlayerID(Var(45)),P2Dist X<50

;---------------------------------------------------------------------------
[State -1, 突進対策ガード]
Type = ChangeState
Value = 120
TriggerAll = var(59)>2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (Ctrl&&(var(49)!=[4,5])) || stateno=21 || ((stateno=[100,101])&&(var(49)=0||var(49)=12)) || (stateno=195 && animelemtime(15)>0)
TriggerAll = Random < Var(59)*170
Trigger1 = !InGuardDist && fvar(15)<=0 && ((Helper(1300),var(1)!=0 && var(12)=2)||Helper(1300),var(1)!=1305)
Trigger1 = PlayerID(var(57)),Vel X>1
Trigger1 = PlayerID(var(57)),HitDefAttr = SC,AA

;==============================================================================
;　メタ宣言
;==============================================================================
[State -1, メタ宣言]
type = ChangeState
value = 2900
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (Ctrl||stateno=21||(stateno=[100,101])) && var(48)=0 && Var(53)=0 && statetype!=A && Power>=1000
TriggerAll = (var(44)!=3 && FVar(10)>=720) || ((var(44)=3||PalNo>=10) && FVar(10)>=360)
TriggerAll = Random<Var(59)*50
Trigger1 = PalNo>=10 && P2bodydist X>=100
Trigger2 = (Power>=5000&&Random%12<2)||(Power>=3000&&Enemy,Power<(floor(Enemy,PowerMax)/5)*2)||(Enemy,Power<(floor(Enemy,PowerMax)/5))
Trigger2 = (Life<LifeMax/4 && var(44)=1) || PlayerID(var(57)),Life<LifeMax/4 || (Life>LifeMax*.2 && var(44)=2)
Trigger3 = (Enemy,power>2000||(Enemy,PowerMax<=4000&&Enemy,Power<Enemy,PowerMax*.2))
Trigger3 = (Life>LifeMax*.75&&Life>PlayerID(var(57)),Life*2)||(Life<LifeMax/4&&Life<PlayerID(var(57)),Life*2)

[State -1, メタ再展開]
type = ChangeState
value = ifelse(stateno=2910,2920,2940)
TriggerAll = var(59)>2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = (stateno=2910||stateno=2930) && StateTime>=70 && Var(53)=0 && statetype!=A && Power>=2000
Trigger1 = PalNo>=10
Trigger2 = (Power>=4000)||(Power>=3000&&Enemy,Power<(floor(Enemy,PowerMax)/5)*2)||(stateno=2930&&Power>=2000)||(Enemy,Power<(floor(Enemy,PowerMax)/5))
Trigger2 = Life<LifeMax/4 || PlayerID(var(57)),Life<LifeMax/4 || var(49)!=0 || var(44)=2
Trigger3 = (Enemy,power>2000||(Enemy,PowerMax<=4000&&Enemy,Power<Enemy,PowerMax*.2))
Trigger3 = (Life>LifeMax*.75&&Life>PlayerID(var(57)),Life*2)||(Life<LifeMax/4&&Life<PlayerID(var(57)),Life*2)

;==============================================================================
;　メタ派生コンボ
;==============================================================================

[State -1,cノックス十戒・原罪]
type = ChangeState
value = ifelse(EnemyNear,StateType=A||P2Dist X > 70,1030,1031)
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power >= 1000
;TriggerAll = P2BodyDist X = [0,45]
Trigger1 = (Helper(111111),Rootdist X<120 && Facing=1)||(Helper(111112),Rootdist X<120 && Facing=-1)
Trigger1 = PrevStateNo=2110 && var(49)=8 && (var(48)=2||var(48)=5) && ctrl
Trigger2 = stateno=420 && Movehit && var(48)=2 && var(49)=9
Trigger2 = (Helper(111111),Rootdist X-(P2bodydist X)<65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<65 && Facing=-1)

[State -1,cシュヴァート・ノートゥング]
type = ChangeState
value = 2000
TriggerAll = var(59)>5 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power>=5000 && Life<=LifeMax*.2
Trigger1 = (Helper(111111),Rootdist X<200 && Facing=1)||(Helper(111112),Rootdist X<200 && Facing=-1)
Trigger1 = PlayerID(var(57)),stateno=229
Trigger1 = (stateno=224 || prevstateno=224) && Movehit && var(48)=3 && var(49)=1
;Trigger1 = Random<=500
Trigger2 = stateno=222 && Movehit && var(48)=1 && var(49)=1
Trigger3 = (prevstateno=725&&ctrl||ctrl) && var(48)=4 && var(49)=11
Trigger4 = ctrl && var(49)=0 && var(48)=3 && PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0

[State -1,cヘイリッヒ・トーデスルタイル・アインス]
type = ChangeState
value = 2100
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(11)>0
Trigger1 = (Helper(111111),Rootdist X<200 && Facing=1)||(Helper(111112),Rootdist X<200 && Facing=-1)
Trigger1 = PlayerID(var(57)),stateno=229
Trigger1 = (stateno=224 || prevstateno=224) && Movehit && var(48)=3 && var(49)=1
;Trigger1 = Random<=500
Trigger2 = stateno=222 && Movehit && var(48)=1 && var(49)=1
Trigger3 = (((prevstateno=725||(prevstateno=[2900,2950]))&&ctrl)||ctrl) && var(48)=4 && var(49)=11
Trigger4 = ((StateNo=420&&Movehit)||(var(11)=420&&ctrl)) && var(48)=2 && (var(49)=[1,2]) && (P2BodyDist X-fvar(26)*5=[0,90])
Trigger4 = var(44)=1 || (var(44)=2 && Random%12<4)
Trigger4 = Random<=ifelse(((Helper(111111),Rootdist X<200 && Facing=1)||(Helper(111112),Rootdist X<200 && Facing=-1)),100,var(59)*160)
Trigger5 = ctrl && var(49)=0 && var(48)=3 && PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0

[State -1,cヘイリッヒ・トーデスルタイル・ツヴァイ]
type = ChangeState
value = 2101
TriggerAll = var(59)>4 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && FVar(11) > 0
TriggerAll = P2StateType = A
Trigger1 = StateNo=625 && MoveHit && var(49)=4 && var(48)=2 && fvar(39)=0.5
Trigger2 = StateNo=625 && MoveHit && var(49)=5 && var(48)=2 && fvar(39)=0.4

[State -1,cメタ宣言]
type = ChangeState
value = 2900
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(10)>=360 && var(48)!=0 && Var(53)=0 && statetype!=A
TriggerAll = (Power>=1000 && Enemy,Power<(floor(Enemy,PowerMax)/5))||(Power>=3000 && Enemy,Power<(floor(Enemy,PowerMax)/5)*2)||Power>=5000
TriggerAll = Random<150+Var(59)*55
Trigger1 = stateno=420 && Movehit && var(48)=2 && var(49)=1
Trigger1 = P2BodyDist X = [0,86]
Trigger2 = prevstateno=725 && ctrl && var(48)=4 && var(49)=11
Trigger2 = (Power>=3000 && (Enemy,Power=[(floor(Enemy,PowerMax)/5),(floor(Enemy,PowerMax)/5)*2]))

;==============================================================================
;　各種タッチ派生コンボ
;==============================================================================

[State -1,c立中]
type = ChangeState
value = 211
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (P2Dist X=[-5,49]) && var(47)<=3 && Var(50)/1000%10=0
Trigger1 = StateNo=100 && var(48)=4 && var(49)=11 && (PlayerID(var(57)),animtime=-9||(P2Dist X=[-5,40]))

[State -1,屈中]
type = ChangeState
value = 410
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (P2Dist X>=50||var(47)>3) && Var(50)/10%10=0
Trigger1 = StateNo=100 && var(48)=4 && var(49)=11 && PlayerID(var(57)),animtime=-10

[State -1,cダッシュ]
type = ChangeState
value = 100
Triggerall = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21) && (stateno !=[100,106])
Trigger1 = ((prevstateno=725&&ctrl)||ctrl) && var(48)=4 && var(49)=11 && var(12)!=2
Trigger1 = Random<=ifelse(FVar(10)<360,1000,500)
Trigger2 = var(49)=12 && ((var(48)=[1,2])||var(48)=5)

;==============================================================================
;　壁際コンボ
;==============================================================================

[State -1,cアイゼルネ・ユングフラウ]
type = ChangeState
value = ifelse(NumHelper(1300)!=0,1250,1230)
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = Power >= 2000 || (PalNo>=7&&FVar(14)>=2000)
TriggerAll = statetype != A && var(48)=2 && (var(49)=[1,2]) && FVar(13)=0 && NumHelper(1350)=0
Trigger1 = stateno=220 && Movehit

[State -1,アタックタッチ]
type = ChangeState
value = 705
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(13) = 0
TriggerAll = (FVar(14)>=2000 && Power<FVar(14)-1000) || (FVar(14)>=1000 && FVar(14)-Power=[-1000,1000])
Trigger1 = StateNo=220 && MoveHit && ((var(49)=[1,3])||(var(49)=[8,10]))
Trigger2 = stateno=220 && Moveguarded
Trigger2 = Random<=450

[State -1,cノックス十戒]
type = ChangeState
value = ifelse(Palno=10,1030,1002)
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (var(48)=2||var(48)=5)
TriggerAll = P2BodyDist X <= 100
Trigger1 = (Helper(111111),Rootdist X<120 && Facing=1)||(Helper(111112),Rootdist X<120 && Facing=-1)
Trigger1 = prevstateno=1430 && var(49)=8 && Ctrl
Trigger2 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger2 = (Helper(111111),Rootdist X>=50 && Facing=-1)||(Helper(111112),Rootdist X>=50 && Facing=1)
Trigger2 = Random<=ifelse(var(49)=10,500,1000)
Trigger3 = stateno=410 && Movehit && var(49)=8
Trigger3 = (Helper(111111),Rootdist X-(P2bodydist X)<65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<65 && Facing=-1)
Trigger4 = StateNo=212 && MoveHit
Trigger4 = var(49)=7 && (P2bodydist X!=[5,110])
Trigger5 = var(48)=2 && ((var(49)=[4,5])||var(49)=7) && fvar(39)=0 && (ctrl||stateno=21)
Trigger5 = P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)>-5

[State -1,cノックス十戒偶]
type = ChangeState
value = ifelse(Palno=10,1030,1002)
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && ctrl
TriggerAll = P2BodyDist X <= 100
Trigger1 = var(49)=0 && var(48)=3

[State -1,cノックス十戒（受け身狩り）]
type = ChangeState
value = ifelse(Palno=10,1030,1001)
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Ctrl && var(49)=0 && P2BodyDist X <= 40
TriggerAll = P2BodyDist Y=[-100,0]
Trigger1 = PlayerID(var(57)),statetype=A
Trigger1 = PlayerID(var(57)),stateno=5210
Trigger1 = PlayerID(var(57)),time>=9

;[State -1,cロートシュリッセル]
;type = ChangeState
;value = 1430
;TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
;TriggerAll = Power >= 2000 && statetype != A && var(48)=3 && (var(49)=[1,2])
;Trigger1 = stateno=224 && MoveHit
;Trigger1 = ((Helper(111111),Rootdist X=[150,250]) && Facing=1)||((Helper(111112),Rootdist X=[150,250]) && Facing=-1)
;Trigger1 = Random<=500

[State -1,cアイゼルネ・ユングフラウorフォルモンドアイゼン]
type = ChangeState
value = ifelse(NumHelper(1300)=0,1230,1250)
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = (var(44)=1 && Power>=ifelse(NumHelper(1300)=0,1000,2000)) || (var(44)=2 && FVar(14)>=ifelse(NumHelper(1300)=0,1000,2000))
Trigger1 = StateNo=224 && MoveHit && var(48)=3 && var(49)=1 && FrontEdgeBodyDist>=210
Trigger2 = stateno=220 && Movehit && var(48)=2 && var(49)=10 && NumHelper(1300)=0
Trigger2 = (Helper(111111),Rootdist X-(P2bodydist X)<70 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<70 && Facing=-1)
Trigger2 = Random<=500

[State -1,cキルシュアイゼン]
type = ChangeState
value = 1202
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A
Trigger1 = StateNo=224 && MoveHit && var(48)=3 && var(49)=1
Trigger1 = (NumHelper(1300)=0 && FrontEdgeBodyDist<210) || (NumHelper(1300)!=0 && (FVar(13)!=0||var(44)=2))
Trigger1 = Random<=ifelse(((Helper(111111),Rootdist X<200 && Facing=1)||(Helper(111112),Rootdist X<200 && Facing=-1)),350,700)

[State -1,cキルシュアイゼン]
type = ChangeState
value = 1201
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A
Trigger1 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger1 = (Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger1 = Random<=300
Trigger2 = StateNo=220 && MoveHit && var(48)=2 && var(49)=1
Trigger2 = NumHelper(1300)!=0 && (FVar(13)!=0||var(44)=2)
Trigger3 = stateno=224 && MoveHit && FrontEdgeBodyDist<210 && var(48)=3 && (var(49)=[1,3])
Trigger3 = (Helper(111111),Rootdist X<200 && Facing=1)||(Helper(111112),Rootdist X<200 && Facing=-1)

;===========================================================================
;　固め・崩し
;===========================================================================

[State -1,ロートシュリッセル]
type = ChangeState
value = 1430
Triggerall = var(59)>3 && var(44)!=3 && var(58)=1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = Power >= 2000 && statetype != A && PlayerID(Var(57)),StateType != A && (Helper(111111),var(50)=[4,5])
TriggerAll = Random<=var(59)*75
Trigger1 = stateno=220 && Moveguarded
Trigger2 = stateno=420 && Moveguarded && (Helper(111111),var(0)=-1 && P2BodyDist X-fvar(26)*18>123)

[State -1,gベーアディゲン]
type = ChangeState
value = ifelse(P2BodyDist X-fvar(26)*34>135,1400,1401)
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && PlayerID(Var(57)),StateType != A && Helper(111111),var(50)!=-1 && Helper(111111),var(50)!=5
TriggerAll = Random<=var(59)*(ifelse(var(58)=0,10,90))
Trigger1 = (stateno=220 && Moveguarded) || stateno=221
Trigger2 = stateno=420 && Moveguarded && (Helper(111111),var(0)=-1 && P2BodyDist X-fvar(26)*18>123)

[State -1,cキルシュアイゼン]
type = ChangeState
value = ifelse(Random%12<2,1200,1201)
Triggerall = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && PlayerID(Var(57)),StateType != A
TriggerAll = Random<=350+ifelse(var(58)=0||Helper(111111),var(50)=-1,150,0)
Trigger1 = (stateno=220 && Moveguarded) || stateno=221
Trigger2 = stateno=420 && Moveguarded && (var(59)<4||(Helper(111111),var(0)=-1 && P2BodyDist X-fvar(26)*18>123))

[State -1,c引きフルートヴェレトレーネ]
type = ChangeState
value = 1150
TriggerAll = var(59)>3 && var(44)!=3 && var(58)=0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType = A && Power >= 2000 && var(12)=10
TriggerAll = (p2Bodydist X>40) && (p2Bodydist Y=[-150,80])
Trigger1 = PlayerID(var(57)),StateType=A && Random<=650
;Trigger2 = prevstateno=39 && PlayerID(var(57)),StateType!=A && Random<=150

[State -1,c引き空中強]
type = ChangeState
value = ifelse(Random<4,625,615)
TriggerAll = var(59)>3 && var(44)!=3 && var(58)=0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType = A && var(12)=10
TriggerAll = (p2Bodydist X>40) && (p2Bodydist Y=[-150,80])
Trigger1 = PlayerID(var(57)),StateType=A && Random<=ifelse(Power<2000,1000,450)

[State -1,c引きジャンプ]
Type = ChangeState
Value = 39
TriggerAll = var(59)>3 && var(44)!=3 && var(58)=0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && PlayerID(Var(57)),StateType != A && BackEdgeBodyDist>40
Trigger1 = stateno=420 && Moveguarded && var(12)=10 && (var(59)<4||(Helper(111111),var(0)=-1 && P2BodyDist X-fvar(26)*18>123))
Trigger1 = Random<=250
Trigger2 = (stateno=220 && Moveguarded) || stateno=221
Trigger2 = Random<=100

[State -1,cトゥルム(メイルシュトローム)トレーネ]
Type = ChangeState
Value = ifelse(((power>3000&&random%12<4)||(power>1500&&random%12<2)||palno>=10)&&Pos Y < -50,1130,1100)
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType = A && PlayerID(Var(57)),StateType = A
Trigger1 = (stateno=[600,625]) && (Moveguarded||(Movehit&&var(49)=0))
Trigger1 = (P2bodydist X=[0,40]) && (P2bodydist Y=[-100,100])

[State -1,gノックス十戒]
type = ChangeState
value = ifelse(PlayerID(Var(57)),StateType=A,1001,1000)
TriggerAll = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (P2BodyDist X = [0,40])
TriggerAll = Random<=var(59)*40
Trigger1 = stateno=410 && Moveguarded && PlayerID(Var(57)),StateType !=A
Trigger2 = stateno=212 && Moveguarded && PlayerID(Var(57)),StateType =A
Trigger2 = P2bodydist Y>=-100
Trigger3 = (Prevstateno=[1200,1202]) && (Moveguarded||(PlayerID(Var(57)),stateno=[120,155])) && ctrl && PlayerID(Var(57)),StateType !=A

;==============================================================================
;　空中コンボ
;==============================================================================

[State -1,cフルートヴェレトレーネ]
type = ChangeState
value = 1150
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType = A && PlayerID(var(57)),StateType = A && Power >= 2000
TriggerAll = (p2Bodydist X>40) && (p2Bodydist Y=[-150,80])
Trigger1 = var(44)=1 && !(NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger1 = var(49)=5 && (StateNo=615||StateNo=625) && MoveHit && var(48)=2 && fvar(39)=0.2
Trigger2 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger2 = var(49)=5 && StateNo=625 && MoveHit && var(48)=2 && fvar(39)=0.4
Trigger3 = var(44)=1 && !(NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger3 = var(49)=7 && StateNo=615 && MoveHit && var(48)=2 && fvar(39)=0.2
Trigger4 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger4 = var(49)=7 && StateNo=625 && MoveHit && var(48)=2 && fvar(39)=0.4

[State -1,cトゥルムトレーネB]
Type = ChangeState
Value = 1102
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType = A && PlayerID(var(57)),statetype=A
TriggerAll = (p2Bodydist X=[0,40]) && (p2Bodydist Y=[-180,-151])
Trigger1 = var(44)=1 && !(NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger1 = ((StateNo=615&&(var(49)=[4,5]))||(StateNo=625&&var(49)=4)) && MoveHit && var(48)=2 && fvar(39)=0.2
Trigger2 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger2 = ((StateNo=625&&fvar(39)=0.5&&var(49)=4)||(StateNo=615&&fvar(39)=0.2&&(var(49)=[4,5]))) && MoveHit && var(48)=2
Trigger3 = var(44)=1 && !(NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger3 = var(49)=7 && StateNo=615 && MoveHit && var(48)=2 && fvar(39)=0.2
Trigger4 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger4 = var(49)=7 && StateNo=625 && MoveHit && var(48)=2 && fvar(39)=0.4

[State -1,cトゥルム(メイルシュトローム)トレーネ]
Type = ChangeState
Value = ifelse(((power>3000)||(power>1500&&random%12<3)||palno>=10)&&Pos Y<-50,1130,1100)
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType = A && PlayerID(var(57)),statetype=A
TriggerAll = (p2Bodydist X=[0,40]) && (p2Bodydist Y=[-150,80])
Trigger1 = var(44)=1 && !(NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger1 = ((StateNo=615&&(var(49)=[4,5]))||(StateNo=625&&var(49)=4)) && MoveHit && var(48)=2 && fvar(39)=0.2
Trigger2 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger2 = ((StateNo=625&&fvar(39)=0.5&&var(49)=4)||(StateNo=615&&fvar(39)=0.2&&(var(49)=[4,5]))) && MoveHit && var(48)=2
Trigger3 = var(44)=1 && !(NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger3 = var(49)=7 && StateNo=615 && MoveHit && var(48)=2 && fvar(39)=0.2
Trigger4 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger4 = var(49)=7 && StateNo=625 && MoveHit && var(48)=2 && fvar(39)=0.4
Trigger5 = ctrl && var(59)>5 && PlayerID(var(57)),stateno=5210
Trigger5 = PlayerID(var(57)),time>=5
Trigger5 = P2BodyDist X<=40 && (P2Bodydist Y=[-80,80])
Trigger6 = StateNo=615 && MoveHit && var(48)=2 && var(49)!=7 && (var(49)=[4,5]) && fvar(39)=0.2

[State -1,c空中ジャンプ]
Type = ChangeState
Value = 45
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
TriggerAll = StateType = A
Trigger1 = StateNo=625 && MoveHit && var(48)=2 && (var(49)=[4,5]) && fvar(39)=0.2
Trigger2 = StateNo=615 && MoveHit && var(48)=2 && var(49)=7 && fvar(39)=0.2

[State -1,c空中強]
type = ChangeState
value = 625
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && Var(51)/100%10=0 && vel X !=0
Trigger1 = (StateNo=615||Prevstateno=615) && MoveHit && var(48)=2 && (var(49)=[4,5]) && fvar(39)=0.1; && P2BodyDist Y=[-50,40]
Trigger2 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger2 = (StateNo=615||Prevstateno=615) && MoveHit && var(48)=2 && var(49)=4 && fvar(39)=0.4; && P2BodyDist Y=[-50,40]
Trigger3 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger3 = Prevstateno=45 && var(48)=2 && var(49)=5 && fvar(39)=0.3; && P2BodyDist Y=[-50,40]
Trigger4 = Prevstateno=39 && var(48)=2 && var(49)=7 && fvar(39)=0
Trigger5 = Prevstateno=45 && var(48)=2 && var(49)=7 && fvar(39)=0.3; && P2BodyDist Y=[-50,40]
Trigger6 = Prevstateno=39 && var(48)=3 && (var(49)=[4,5]) && fvar(39)=0

[State -1,c空中中]
type = ChangeState
value = 615
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && Var(50)/100%10=0 && vel X !=0
Trigger1 = Prevstateno=39 && var(48)=2 && (var(49)=[4,5]) && fvar(39)=0; && P2BodyDist Y = [-50,40]
Trigger2 = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
Trigger2 = prevstateno=45 && var(49)=4 && var(48)=2 && fvar(39)=0.3; && P2BodyDist Y = [-50,40]
Trigger3 = StateNo=625 && Movehit && var(48)=2 && var(49)=7 && fvar(39)=0.1 && P2BodyDist Y = [-50,50]
Trigger4 = StateNo=625 && MoveHit && var(48)=2 && (var(49)=[4,5]) && fvar(39)=0.1

[State -1,cエリアル始動ジャンプ]
Type = ChangeState
Value = 39
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = StateType != A
TriggerAll = PlayerID(var(57)),stateno !=[120,155]
Trigger1 = StateNo=212 && MoveHit && var(48)=2
Trigger1 = var(49)=1 && (Helper(111111),Rootdist X>=160 && Facing=1)||(Helper(111112),Rootdist X>=160 && Facing=-1)
Trigger1 = Random<=300
Trigger2 = StateNo=212 && Movehit && var(49)=7 && (P2bodydist X=[10,110]) && var(48)=2
Trigger2 = (P2dist Y=[-40,-20]) || ((P2dist Y<-40)&&(Animtime=[-8,0]))
Trigger2 = Random<=500
Trigger3 = StateNo=212 && MoveHit && var(49)=12 && var(48)=2
Trigger4 = StateNo=224 && MoveHit && var(48)=3 && ((var(49)=[1,2])||(var(49)=3&&Power>=2000))
Trigger4 = (Helper(111111),Rootdist X<160 && Facing=1)||(Helper(111112),Rootdist X<160 && Facing=-1)
Trigger4 = Random<=500

;==============================================================================
;　基本コンボ
;==============================================================================
[State -1,cレバー入れ立強]
type = ChangeState
value = 224
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Var(51)/1000%10=0 && var(48)=2 && (var(49)=[1,2])
Trigger1 = StateNo=212 && Movehit && (Animtime=[-19,0])
Trigger1 = Random<=500

[State -1,c遠立強]
type = ChangeState
value = 220
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && P2Dist X>=60 && Var(51)%10=0
Trigger1 = stateno=420 && Movehit && var(48)=2 && var(49)=6
Trigger2 = ((StateNo=420&&Movehit)||(var(11)=420&&ctrl)) && var(48)=2 && (var(49)=[1,3])
Trigger2 = (P2BodyDist X-fvar(26)*10=[70,110]) || (P2BodyDist X-fvar(26)*18=[90,123])
Trigger3 = stateno=410 && Moveguarded && var(59)>3
Trigger3 = (Helper(111111),var(0)!=-1 && (P2BodyDist X-fvar(26)*18=[0,123])) || (Helper(111111),var(0)=-1 && P2BodyDist X-fvar(26)*14>97 && P2BodyDist X-fvar(26)*18<=123)
Trigger4 = stateno=420 && Moveguarded && Helper(111111),var(0)=-1 && (P2BodyDist X-fvar(26)*14=[0,97])
Trigger5 = stateno=410 && Movehit && var(49)=9
Trigger5 = (Helper(111111),Rootdist X-(P2bodydist X)>=65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)>=65 && Facing=-1)
Trigger6 = stateno=420 && Movehit && var(49)=9
Trigger6 = (Helper(111111),Rootdist X-(P2bodydist X)<65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<65 && Facing=-1)
Trigger7 = stateno=420 && Movehit && var(49)=3
Trigger8 = PrevStateNo=721 && var(48)=2 && ctrl
Trigger8 = (Helper(111111),Rootdist X-(P2bodydist X)>=80 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)>=80 && Facing=-1)
;Trigger9 = prevstateno=224 && FrontEdgeBodyDist<210 && Ctrl && var(48)=3 && (var(49)=[1,3])
;Trigger9 = Random<=500

[State -1,c屈強]
type = ChangeState
value = 420
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Var(51)/10%10=0
Triggerall = P2BodyDist X-fvar(26)*14= [0,97]
Trigger1 = (StateNo=210||StateNo=211) && MoveHit && var(48)=1 && (var(49)=[1,3])
Trigger2 = StateNo=410 && MoveGuarded && (P2BodyDist X-fvar(26)*14=[0,97]) && (var(59)<4||Helper(111111),var(0)=-1)
Trigger3 = StateNo=410 && Movehit && var(48)=1 && (var(49)=[1,3])
Trigger4 = stateno=410 && Movehit && var(49)=9
Trigger4 = (Helper(111111),Rootdist X-(P2bodydist X)<65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<65 && Facing=-1)
Trigger5 = stateno=410 && Movehit && var(49)=9 && (P2Dist X=[0,59])
Trigger5 = (Helper(111111),Rootdist X-(P2bodydist X)>=65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)>=65 && Facing=-1)
Trigger6 = StateNo=410 && Movehit && var(48)=1 && var(49)=6

[State -1,cレバー入れ立中]
type = ChangeState
value = 212
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Var(50)/1000%10=0
Triggerall = P2BodyDist X-fvar(26)*10= [0,70]
Trigger1 = ((StateNo=420&&MoveContAct)||(var(11)=420&&ctrl)) && (var(49)=[1,2]) && var(48)=2
Trigger2 = StateNo=100 && var(49)=6 && var(48)=1 && Time>=6
Trigger3 = var(48)=2 && ((var(49)=[4,5])||var(49)=7) && fvar(39)=0 && (ctrl||stateno=21)
Trigger3 = P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)=[-110,-5]
Trigger4 = stateno=420 && Movehit && var(49)=9
Trigger4 = (Helper(111111),Rootdist X-(P2bodydist X)>=65 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)>=65 && Facing=-1)
Trigger5 = (StateNo=100||ctrl) && var(49)=12 && var(48)=2 && var(59)>3
Trigger5 = (P2bodydist X-fvar(26)*10=[0,75]) && (P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)=[-110,0])

[State -1,c屈中]
type = ChangeState
value = 410
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Var(50)/10%10=0
Trigger1 = stateno=212 && Movehit && var(48)=1 && var(49)=6
Trigger2 = stateno=400 && Movehit && var(48)=2
Trigger3 = PrevStateNo=721 && var(48)=2 && ctrl
Trigger3 = (Helper(111111),Rootdist X-(P2bodydist X)<=80 && Facing=1)||(Helper(111112),Rootdist X-(P2bodydist X)<=80 && Facing=-1)
Trigger4 = (StateNo=100||ctrl) && var(49)=12 && var(12)!=1 && (P2bodydist X-fvar(26)*9=[0,75])
Trigger4 = (var(48)=2 && (P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)>0)) || var(48)=5

[State -1,cダッシュキャンセル]
type = ChangeState
value = 102
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(13)=0
Trigger1 = StateNo=222 && Movehit

[State -1,c近立強]
type = ChangeState
value = 222
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (P2Dist X=[0,59]) && var(48)=1 && var(49)=1 && Var(51)/10%10=0
Trigger1 = (StateNo=[210,211]) && Movehit
Trigger1 = (FVar(13)=0 && power<1000)
Trigger1 = Random<=500

;==============================================================================
;　設置・パートナー
;==============================================================================
[State -1, コーネリア・ヴァッフェ];2段ジャンプ & 空中ダッシュ
type = ChangeState
value = 1350
TriggerAll = var(59)>2 && var(44)=1 && var(55)=1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist)
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = Power>2000 && (FVar(14)-Power=[-5000,500]) && random%12 < 5
TriggerAll = Palno=6 || (Life>=LifeMax/2 && Life>PlayerID(var(57)),Life*1.5)
Trigger1 = var(49)=0 && (((P2BodyDist X > 170-ifelse(var(59)<5,70,0)) || ((P2BodyDist X>100) && (PlayerID(var(57)),Stateno=[5100,5119]))))
Trigger2 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
Trigger3 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger3 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger4 = (var(48)=2||var(48)=5) && P2bodydist X>90

[State -1, コーネリア・ボーデン];攻撃UP & HP吸収
type = ChangeState
value = 1351
TriggerAll = var(59)>2 && var(44)=1 && var(55)=1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist)
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = FVar(14)>2000 && (FVar(14)-Power=[-5000,500]) && random%12 < 5
TriggerAll = Palno=6 || (Life<LifeMax/2 && Life<PlayerID(var(57)),Life)
Trigger1 = var(49)=0 && (((P2BodyDist X > 170-ifelse(var(59)<5,70,0)) || ((P2BodyDist X>100) && (PlayerID(var(57)),Stateno=[5100,5119]))))
Trigger2 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
Trigger3 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger3 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger4 = (var(48)=2||var(48)=5) && P2bodydist X>90

[State -1, コーネリア・クヴェル];タッチゲージ上昇
type = ChangeState
value = 1352
TriggerAll = var(59)>2 && Palno<6 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist)
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = Power<1000 && FVar(14)<1000 && random%12<7
TriggerAll = Life>=LifeMax/2 || (Life<LifeMax/2 && Life>PlayerID(var(57)),Life)
Trigger1 = var(49)=0 && (((P2BodyDist X > 170-ifelse(var(59)<5,70,0)) || ((P2BodyDist X>100) && (PlayerID(var(57)),Stateno=[5100,5119]))))
Trigger2 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
Trigger3 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger3 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger4 = (var(48)=2||var(48)=5) && P2bodydist X>90

[State -1, コーネリア撤退]
type = ChangeState
value = 1359
TriggerAll = var(59)>0 && var(44)=1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && FVar(13)!=0 && NumHelper(1350)
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist)
TriggerAll = P2BodyDist X>170 || (PlayerID(var(57)),Stateno=[5100,5119])
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = Helper(1350),Var(1)=1352
TriggerAll = (FVar(14)>=3000 && random%12<5) || FVar(14)>=5000
Trigger1 = var(49)=0 && (P2BodyDist X>170-ifelse(var(59)<5,70,0)) && (PlayerID(var(57)),Stateno=[5100,5119])
Trigger2 = var(49)=0 && (P2BodyDist X>220-ifelse(var(59)<5,70,0))
Trigger3 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger3 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger4 = (var(48)=2||var(48)=5) && P2bodydist X>90

[State -1, ノーマルタッチ]
type = ChangeState
value = 700
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = (FVar(14)>=2000 && Power<FVar(14)-1000) || (FVar(14)>=1000 && FVar(14)-Power=[-1000,1000])
TriggerAll = random%12<5
Trigger1 = var(59)<5 && (P2BodyDist X>100 || (PlayerID(var(57)),Stateno=[5120,5149]))
Trigger2 = (P2BodyDist X>170 || (P2BodyDist X>100 &&(PlayerID(var(57)),Stateno=[5110,5119])) || (var(12)=1&&var(48)=5))
;Trigger3 = var(59)>4 && P2BodyDist X>50 && PlayerID(var(57)),Vel X<=0
;Trigger3 = PlayerID(var(57)),StateNo>=200 && PlayerID(var(57)),Movetype=I && PlayerID(var(57)),Ctrl=0

[State -1, ガートルード・シュロース]
type = ChangeState
value = 1305
TriggerAll = var(59)>4 && var(44)=2 && var(55)=1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && NumHelper(1300)=0
TriggerAll = statetype != A && Power>=5000 && (ctrl||stateno=21||(stateno=[100,101]))
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = random%12<8
Trigger1 = var(49)=0 && (P2BodyDist X>170-ifelse(var(59)<5,70,0)) && (PlayerID(var(57)),Stateno=[5100,5119])
Trigger2 = var(49)=0 && (P2BodyDist X>170-ifelse(var(59)<5,70,0))
Trigger3 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
Trigger4 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger4 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger5 = (var(48)=2||var(48)=5) && P2bodydist X>90

[State -1, ガートルード・フェルゼン]
type = ChangeState
value = 1303
TriggerAll = var(59)>3 && PalNo=10 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && NumHelper(1300)=0
TriggerAll = statetype != A && Power>=1000 && (ctrl||stateno=21||(stateno=[100,101])) && !inguarddist
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = random%12<8
Trigger1 = var(49)=0 && P2BodyDist X>220 && PlayerID(var(57)),Numproj>1
Trigger2 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger2 = (Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger3 = (var(48)=2||var(48)=5) && P2bodydist X>90

[State -1, ガートルード・シュピーゲル]
type = ChangeState
value = 1301
TriggerAll = var(59)>2 && PalNo<10 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && NumHelper(1300)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist) && var(54)>0
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = random%12<6
Trigger1 = var(49)=0 && (P2BodyDist X>170-ifelse(var(59)<5,70,0)) && (PlayerID(var(57)),Stateno=[5100,5119])
Trigger2 = var(49)=0 && (P2BodyDist X>220-ifelse(var(59)<5,70,0))
Trigger3 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
Trigger4 = (var(48)=2||var(48)=5) && P2bodydist X>90
Trigger5 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger5 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)

[State -1, ガートルード・ヴァント/ネーベル]
type = ChangeState
value = ifelse(Random%12=3,1302,1300)
TriggerAll = var(59)>2 && PalNo<10 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57)) && NumHelper(1300)=0
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist)
triggerAll = !(Helper(300020),Var(54)) || (Helper(300020),Var(54)&&(var(59)=[3,4]))
TriggerAll = random%12<6-ifelse(var(54)>0,3,0)
Trigger1 = var(49)=0 && (P2BodyDist X>70-ifelse(var(59)<5,70,0)) && (PlayerID(var(57)),Stateno=[5100,5119])
Trigger2 = var(49)=0 && (P2BodyDist X>170-ifelse(var(59)<5,70,0))
Trigger3 = var(49)=1 && var(48)=3 && Frontedgebodydist>200
Trigger4 = stateno=220 && Movehit && ((var(49)=[1,3])||var(49)=8||var(49)=10)
Trigger4 = P2BodyDist X <=100 ||(Helper(111111),Rootdist X<50 && Facing=-1)||(Helper(111112),Rootdist X<50 && Facing=1)
Trigger5 = (var(48)=2||var(48)=5) && P2bodydist X>90
Trigger5 = var(12)=1 && var(48)=5

;==============================================================================
;　バウンド・ダウン追い打ち
;==============================================================================
[State -1,遠立強]
type = ChangeState
value = 220
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0 && var(12)!=1 && P2Dist X>=60 && Var(51)%10=0
TriggerAll = Random<100+Var(59)*50
Trigger1 = (PlayerID(var(57)),stateno=[5100,5101]) || var(48)=5
Trigger1 = P2bodydist X-fvar(26)*9>=90 && P2bodydist X-fvar(26)*18<=123
Trigger2 = (PlayerID(var(57)),stateno=[5110,5119])
Trigger2 = P2bodydist X-fvar(26)*18=[55,123]

[State -1,屈中]
type = ChangeState
value = 410
Triggerall = var(59)>4 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && var(49)=0 && var(12)!=1 && Var(50)/10%10=0
Triggerall = P2bodydist X-fvar(26)*9=[0,90]
TriggerAll = Random<100+Var(59)*60
Trigger1 = (ctrl||stateno=21||(stateno=[100,101])) && var(48)=5
Trigger1 = PlayerID(var(57)),stateno=[5100,5101]
;Trigger1 = P2Dist Y+Floor(PlayerID(var(57)),Vel Y*9+fvar(24)*40.5)<=20

[State -1,ダッシュ]
type = ChangeState
value = 100
Triggerall = var(59)>3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21) && (stateno !=[100,106]) && var(12)!=2 && var(49)=0
Trigger1 = (var(48)=2||var(48)=5||PlayerID(var(57)),stateno=5110) && P2bodydist X>90
Trigger1 = NumHelper(1300)!=0
Trigger1 = Random<var(59)*ifelse((FVar(13)!=0||var(44)=2),80,15)

;==============================================================================
;　起き攻め
;==============================================================================
[State -1, ヘイリッヒ・トーデスルタイル（起き攻め）]
type = ChangeState
value = 2105
TriggerAll = var(59)>5 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(11)>0 && var(49)=0
TriggerAll = (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132))
Trigger1 = PlayerID(var(57)),Statetype=L && (PlayerID(var(57)),Stateno=[5120,5149])
Trigger1 = P2bodydist X=[0,120]
Trigger1 = Random<200+Var(59)*60||(Prevstateno=[2900,2950])

[State -1,メタ宣言（起き攻め）]
Type = ChangeState
Value = 2900
TriggerAll = var(59)>5 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(10)>=360 && var(49)=0 && Var(53)=0 && FVar(11)=0 && statetype!=A
TriggerAll = (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132))
TriggerAll = (Power>=1000 && Enemy,Power<(floor(Enemy,PowerMax)/5))||(Power>=3000 && Enemy,Power<(floor(Enemy,PowerMax)/5)*2)
Trigger1 = PlayerID(var(57)),Statetype=L && (PlayerID(var(57)),Stateno=[5120,5149])
Trigger1 = P2bodydist X=[0,120]
Trigger1 = Random<Var(59)*50

[State -1,バックステップ]
Type = ChangeState
Value = 105
TriggerAll = var(59)>3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = statetype != A && (ctrl||stateno=21||stateno=101) && stateno!=100 && stateno!=105 && var(49)=0
TriggerAll = ((PlayerID(var(57)),Stateno=[5120,5149])||var(12)=1)
Trigger1 = p2bodydist X=[-20,50]
Trigger1 = (Helper(111111),Rootdist X>50 && Facing=-1)||(Helper(111112),Rootdist X>50 && Facing=1)
Trigger1 = Random<(50-P2Bodydist X)*10+var(59)*15

[State -1, ここがあなたの墓場となり(ry]
type = ChangeState
value = 195
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21) && life<971
Triggerall = P2bodydist X>=220 && BackEdgeBodyDist<100
Trigger1 = PlayerID(Var(57)),Stateno =5110 || var(48)=5
Trigger1 = NumHelper(1300)!=0 && (FVar(13)!=0||var(44)=2)
Trigger1 = Random<(life-PlayerID(Var(57)),life)

;==============================================================================
;　対空
;==============================================================================
[State -1, ヘイリッヒ・トーデスルタイル・ドライ]
type = ChangeState
value = 2102
TriggerAll = var(59)>3 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(11) > 0
TriggerAll = PlayerID(var(57)),StateType =A && (P2BodyDist X-fvar(26)*10=[5,105])
Trigger1 = (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0
Trigger1 = PlayerID(var(57)),Vel X>0 && (P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)=[-100,-20])
Trigger1 = Random<200+Var(59)*60
Trigger2 = (Prevstateno=[2900,2950]) && var(49)=0 && (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132))
Trigger3 = ((stateno=200||(stateno=[210,211])&&Movehit)||(ctrl&&var(11)=[200,211])) && var(48)=2
Trigger3 = P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)>-100

[State -1,cメタ宣言]
type = ChangeState
value = 2900
TriggerAll = var(59)>3 && var(44)=2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = FVar(10)>=360 && var(48)!=0 && Var(53)=0 && FVar(11)=0 && statetype!=A && Life>LifeMax*.2
TriggerAll = (Power>=1000 && Enemy,Power<(floor(Enemy,PowerMax)/5))||(Power>=3000 && Enemy,Power<(floor(Enemy,PowerMax)/5)*2)||Power>=5000||PalNo>=10
TriggerAll = PlayerID(var(57)),StateType =A && (P2BodyDist X-fvar(26)*11=[5,110])
Trigger1 = (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0
Trigger1 = PlayerID(var(57)),Vel X>0 && (P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)=[-100,-20])
Trigger1 = Random<Var(59)*50
Trigger2 = (stateno=200||(stateno=[210,211])) && Movehit && var(48)=2
Trigger2 = P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)>-100

[State -1,レバー入れ立中]
type = ChangeState
value = 212
Triggerall = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Var(50)/1000%10=0 && !(var(44)=2 && FVar(11)>0)
Trigger1 = (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0
Trigger1 = PlayerID(var(57)),StateType =A && (P2BodyDist X-fvar(26)*10=[5,105])
Trigger1 = PlayerID(var(57)),Vel X>0 && (P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)=[-100,-20])
Trigger1 = Random<100+Var(59)*60
Trigger2 = (stateno=200||(stateno=[210,211])) && Movehit && var(48)=2
Trigger2 = P2Dist Y+Floor(PlayerID(var(57)),Vel Y*10+fvar(24)*50)>-100

;==============================================================================
;　ぶっぱ
;==============================================================================
[State -1,シュヴァート・ノートゥング]
type = ChangeState
value = 2000
TriggerAll = var(59)>5 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && Power >= 5000 && (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0 && var(48)=0
TriggerAll = P2bodydist X-fvar(26)*5=[20,120]
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0 && PlayerID(var(57)),Vel X>=0
TriggerAll = PlayerID(var(57)),MoveType!=A
TriggerAll = Random<50+var(59)*(20+ifelse((var(44)=2&&Life<=LifeMax*.2),50,0))
Trigger1 = PlayerID(var(57)),Ctrl=0
Trigger1 = PlayerID(var(57)),stateno>=200
Trigger1 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger2 = PlayerID(var(57)),StateNo=[120,155]
Trigger2 = PlayerID(var(57)),Statetype!=C

[State -1,ヘイリッヒ・トーデスルタイル・アインス（ニヒツ）]
type = ChangeState
value = ifelse(((Teammode=Simul)&&Palno>=7),2105,2100)
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && FVar(11)>0 && (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0
TriggerAll = PlayerID(var(57)),Statetype!=L
Trigger1 = PlayerID(var(57)),Vel X>=0 && var(48)=0 && PlayerID(var(57)),Pos Y>-80 && PlayerID(var(57)),Vel Y>=0
Trigger1 = P2bodydist X-fvar(26)*5=[20,120]
Trigger1 = PlayerID(var(57)),stateno>=200
Trigger1 = (var(44)=1 && PlayerID(var(57)),MoveType!=A && PlayerID(var(57)),Ctrl=0) || (var(44)=2 && (PlayerID(var(57)),MoveType=A || PlayerID(var(57)),Ctrl=0))
Trigger1 = (PlayerID(var(57)),StateNo !=[120,155]) && PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger1 = Random<50+var(59)*(20+ifelse(var(44)=2,20,0))
Trigger2 = P2BodyDist X<=135
Trigger2 = Teammode = Simul && Numpartner && partner,Alive
Trigger2 = enemynear,statetype!=A
Trigger2 = Random<50+var(59)*30

[State -1,アイゼルネ・ユングフラウorフォルモンドアイゼン]
type = ChangeState
value = ifelse(NumHelper(1300)=0,1230,1250)
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132))
TriggerAll = var(49)=0 && var(48)=0 && FVar(13)=0 && NumHelper(1350)=0
TriggerAll = (var(44)=1 && Power>=ifelse(NumHelper(1300)=0,1000,2000)) || (var(44)=2 && FVar(14)>=ifelse(NumHelper(1300)=0,1000,2000))
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Pos Y > -80 && PlayerID(var(57)),Vel Y >= 0
TriggerAll = BackEdgeBodyDist<100
Trigger1 = P2bodydist X=[ifelse(var(59)>4&&(NumHelper(1350)=0||PlayerID(var(57)),Life<150),41,110),220]
Trigger1 = PlayerID(var(57)),MoveType=A || (PlayerID(var(57)),Ctrl=0 && PlayerID(var(57)),stateno>=200)
Trigger1 = (PlayerID(var(57)),StateNo !=[120,155]) && PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger1 = (Gametime%2=0||(PlayerID(var(57)),Life<150 && var(59)>4)||(var(59)>5 && var(44)=2))
Trigger1 = Random<50+var(59)*(20+ifelse((Enemy,Numproj>0),15,0))
Trigger2 = Teammode = Simul && Numpartner && partner,Alive
Trigger2 = Partner,P2bodydist X+30<P2bodydist X
Trigger2 = P2bodydist X=[10,220]
Trigger2 = Random<50+var(59)*(10+ifelse((Enemy,Numproj>0),20,0))

[State -1,フルートヴェレトレーネ]
type = ChangeState
value = 1150
Triggerall = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = Power>=2000 && statetype=A && (ctrl||StateNo=120) && var(49)=0 && var(48)=0
TriggerAll = PlayerID(var(57)),Statetype=A
Triggerall = (P2bodydist X-fvar(26)*4=[35,150]) && (P2BodyDist Y=[-80,80]) && Pos Y<-50
Trigger1 = PlayerID(var(57)),MoveType!=A
Trigger1 = (Gametime%3=0||(var(59)>5&&var(44)=2)) && Random<150+var(59)*60

[State -1,cトゥルム(メイルシュトローム)トレーネ]
Type = ChangeState
Value = ifelse(((power>3000&&random%12<4)||(power>1500&&random%12<2)||palno>=10)&&Pos Y < -50,1130,1102)
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype=A && (ctrl||StateNo=120) && var(49)=0 && var(48)=0
TriggerAll = PlayerID(var(57)),Statetype=A
Triggerall = (P2bodydist X-fvar(26)*4=[0,40]) && (P2BodyDist Y=[-80,80]) && Pos Y<-50
Trigger1 = PlayerID(var(57)),MoveType!=A
Trigger1 = (Gametime%3=0||(var(59)>5&&var(44)=2))
Trigger1 = Random<150+var(59)*60

[State -1,ロートシュリッセル]
type = ChangeState
value = 1430
Triggerall = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = Power >= 2000 && statetype != A && (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0 && var(48)=0
Trigger1 = P2bodydist X=[90,138]
Trigger1 = PlayerID(var(57)),Statetype !=A
Trigger1 = PlayerID(var(57)),Statetype !=L
Trigger1 = FrontEdgeBodyDist>=40
Trigger1 = PlayerID(var(57)),Movetype=A
Trigger1 = PlayerID(var(57)),Statetype=C
Trigger1 = PlayerID(var(57)),Time<=2
Trigger1 = PlayerID(var(57)),Hitdefattr= C,NA,SA
Trigger1 = Random<150+var(59)*10

;==============================================================================
;　始動・牽制（地上）
;==============================================================================
[State -1, キルシュアイゼン]
type = ChangeState
value = ifelse(P2BodyDist X>130,1202,ifelse(P2BodyDist X>90,1201,1200))
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0 && var(48)=0
TriggerAll = PlayerID(var(57)),Pos Y > -80 && PlayerID(var(57)),Vel Y >= 0
TriggerAll = PlayerID(var(57)),Statetype !=L
Trigger1 = P2bodydist X-fvar(26)*13=[50,120]
Trigger1 = Helper(1300),var(1)!=0 && (PlayerID(var(57)),MoveType=A || PlayerID(var(57)),Ctrl=0)
Trigger1 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger1 = var(59)<5 && Random<120-var(59)*10
Trigger2 = P2bodydist X-fvar(26)*13=[50,120]
Trigger2 = (Helper(1300),var(1)=1300 && PlayerID(var(57)),Vel X<3)||(Helper(1300),var(1)=[1303,1305])
Trigger2 = (PlayerID(var(57)),MoveType=A && PlayerID(var(57)),HitDefAttr=SCA,NA,SA) || (PlayerID(var(57)),MoveType!=A && PlayerID(var(57)),Ctrl=0 && PlayerID(var(57)),StateNo>=200)
Trigger2 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger2 = var(59)>4 && Random<120+var(59)*10
Trigger3 = P2bodydist X-fvar(26)*13=[50,160]
Trigger3 = (Helper(1300),var(1)=1301)||(Helper(1300),var(1)=[1303,1305])
Trigger3 = (PlayerID(var(57)),MoveType=A && PlayerID(var(57)),HitDefAttr=SCA,NP,SP) || (PlayerID(var(57)),MoveType!=A && PlayerID(var(57)),Ctrl=0 && PlayerID(var(57)),StateNo>=200)
Trigger3 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger3 = var(59)>4 && Random<120+var(59)*10

[State -1, ベーアディゲン]
type = ChangeState
value = ifelse(P2BodyDist X<90,1400,ifelse(P2BodyDist X<140,1401,1402))
TriggerAll = var(59)>3 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])||((StateNo=[120,140])&&StateNo!=132)) && var(49)=0 && var(48)=0
TriggerAll = PlayerID(var(57)),Statetype !=A
TriggerAll = PlayerID(var(57)),Statetype !=L
Trigger1 = FrontEdgeBodyDist>=40
Trigger1 = P2bodydist X=[50,180]
Trigger1 = PlayerID(var(57)),Movetype=A
Trigger1 = PlayerID(var(57)),Statetype=C
Trigger1 = PlayerID(var(57)),Hitdefattr= C,NA,SA
Trigger1 = Random<150+var(59)*10

[State -1, 屈弱]
type = ChangeState
value = 400
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist) && var(49)=0 && var(48)=0
TriggerAll = PlayerID(var(57)),Statetype!=A
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = P2BodyDist X-fvar(26)*7=[-10,32]
Trigger1 = random%12<=4+ifelse((PlayerID(var(57)),Statetype=C),3,0)
Trigger2 = PlayerID(Var(57)),Movetype!=A
Trigger2 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger2 = PlayerID(Var(57)),Ctrl=0
Trigger2 = PlayerID(var(57)),StateNo>=200
Trigger2 = Random<100+var(59)*25

[State -1, 立弱]
type = ChangeState
value = 200
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (ctrl||stateno=21||(stateno=[100,101])) && (var(59)<5||!inguarddist) && var(47)<=3 && var(49)=0 && var(48)=0
TriggerAll = PlayerID(var(57)),Statetype!=C
TriggerAll = PlayerID(var(57)),Vel X>0 && (P2BodyDist Y>=-50)
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = P2BodyDist X-fvar(26)*5=[-10,38]
Trigger1 = random%12<=4+ifelse((PlayerID(var(57)),Statetype!=C),3,0)
Trigger2 = (prevstateno=625 || prevstateno=615)
Trigger2 = ((PlayerID(var(57)),StateNo !=[120,155]) || var(48)=1)
Trigger3 = PlayerID(Var(57)),Movetype!=A
Trigger3 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger3 = PlayerID(Var(57)),Ctrl=0
Trigger3 = PlayerID(var(57)),StateNo>=200
Trigger3 = Random<100+var(59)*25

[State -1,立中]
type = ChangeState
value = ifelse(P2Dist X < 50,211,210)
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (var(59)<5||!inguarddist) && var(48)!=5 && var(47)<=3 && Var(50)/10%10=0
TriggerAll = PlayerID(var(57)),Statetype!=C
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = PlayerID(var(57)),Vel X>0 && (P2BodyDist Y>=-50)
Trigger1 = (P2Dist X=[-5,49]) || (P2bodydist X-fvar(26)*12=[56+var(59)*2,95])
Trigger1 = random%12<=5-ifelse(P2Dist X<50,0,var(59))
Trigger1 = (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0
Trigger2 = (stateno=200 || stateno=400) && MoveContAct
Trigger2 = (P2Dist X=[-5,49])
Trigger3 = (prevstateno=625 || prevstateno=615)
Trigger3 = ((PlayerID(var(57)),StateNo !=[120,155]) || var(48)=1) && var(49)=0
Trigger3 = (P2Dist X=[-5,49])
Trigger4 = (P2Dist X=[-5,49])
Trigger4 = (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0
Trigger4 = PlayerID(Var(57)),Movetype!=A
Trigger4 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger4 = PlayerID(Var(57)),Ctrl=0
Trigger4 = PlayerID(var(57)),StateNo>=200
Trigger4 = Random<100+var(59)*25

[State -1,屈中]
type = ChangeState
value = 410
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype != A && (var(59)<5||!inguarddist) && Var(50)/10%10=0
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = PlayerID(var(57)),Statetype!=A
Trigger1 = random%12 <= 4+ifelse((PlayerID(var(57)),Statetype=C),3,0)
Trigger1 = (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0
Trigger1 = P2bodydist X-fvar(26)*9=[30,73+var(59)]
Trigger2 = P2bodydist X-fvar(26)*9=[0,90]
Trigger2 = (stateno=200 || stateno=400) && MoveContAct
Trigger3 = P2bodydist X=[0,90]
Trigger3 = (stateno = [210,212]) && MoveGuarded && var(49)=0
Trigger4 = P2bodydist X-fvar(26)*9=[30,90]
Trigger4 = (ctrl||stateno=21||(stateno=[100,101])) && var(49)=0
Trigger4 = PlayerID(Var(57)),Movetype!=A
Trigger4 = PlayerID(var(57)),stateno!=Helper(111112),var(50) && PlayerID(var(57)),stateno!=Helper(111112),var(51)
Trigger4 = PlayerID(Var(57)),Ctrl=0
Trigger4 = PlayerID(var(57)),StateNo>=200
Trigger4 = Random<100+var(59)*25

;==============================================================================
;　始動・牽制（空中）
;==============================================================================
[State -1, 空対空]
type = ChangeState
value = ifelse((P2BodyDist X<35||stateno!=600),600,ifelse(Vel X != 0,615,610))
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && (ctrl||StateNo=120) && (var(59)<5||!inguarddist) && var(49)=0
TriggerAll = PlayerID(var(57)),StateType=A && PlayerID(var(57)),MoveType != A
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = random%12 <= 1
Trigger1 = (StateNo=50 || StateNo=51) && PrevStateNo != 45
Trigger1 = P2BodyDist X-fvar(26)*9= [-5,50]
Trigger1 = (P2BodyDist Y = [-40,40])
Trigger2 = (StateNo=50 || StateNo=51) && PrevStateNo = 45
Trigger2 = P2BodyDist X-fvar(26)*9 = [-5,50]
Trigger2 = (P2BodyDist Y = [-40,40])

[State -1, JA]
type = ChangeState
value = 600
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && (var(59)<4||!inguarddist) && var(49)=0
TriggerAll = PlayerID(var(57)),Statetype!=L
TriggerAll = P2BodyDist X-fvar(26)*6=[-10,40]
Trigger1 = ctrl && random%12 < 3
Trigger1 = PlayerID(var(57)),StateType != A || P2BodyDist Y = [0,70]
Trigger1 = PlayerID(var(57)),vel X >0
Trigger2 = StateNo = 625 && Vel Y>0
Trigger2 = MoveContAct && PlayerID(var(57)),StateType != A
Trigger3 = StateNo = 600 && Vel Y>0
Trigger3 = MoveContAct && PlayerID(var(57)),StateType != A

[State -1, JB]
type = ChangeState
value = ifelse(Vel X != 0,615,610)
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && (var(59)<4||!inguarddist) && var(49)=0 && Var(50)/100%10=0
TriggerAll = PlayerID(var(57)),Statetype!=L
Trigger1 = ctrl && random%12<3 && (P2BodyDist X-fvar(26)*9=[0,60]) && P2BodyDist Y=[-50,40]
Trigger2 = StateNo=600||StateNo=625
Trigger2 = MoveContAct && PlayerID(var(57)),StateType = A && P2BodyDist Y = [-50,40]
Trigger3 = StateNo=625 && Vel Y>0
Trigger3 = MoveContAct && PlayerID(var(57)),StateType != A

[State -1, JC]
type = ChangeState
value = ifelse(Vel X != 0,625,620)
TriggerAll = var(59)>1 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && (var(59)<4||!inguarddist) && var(49)=0 && Var(51)/100%10=0
TriggerAll = PlayerID(var(57)),Statetype!=L
Trigger1 = (StateNo=610||StateNo=615) && MoveContAct
Trigger2 = StateNo=600 && MoveContAct
Trigger2 = PlayerID(var(57)),StateType != A && P2BodyDist Y = [-30,70]

[State -1, 空対地]
type = ChangeState
value = ifelse(P2BodyDist X<30&&P2BodyDist Y>0&&EnemyNear,StateType!=C,600,ifelse(Vel X != 0,625,620))
TriggerAll = var(59)>2 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype = A && (var(59)<5||!inguarddist) && var(48)=0 && Var(51)/100%10=0
TriggerAll = PlayerID(var(57)),Statetype!=L
Trigger1 = (ctrl||StateNo=120) && random%12<3 && (P2BodyDist X-fvar(26)*ifelse(P2BodyDist X<30,13,0)=[-10,80])
Trigger1 = PlayerID(var(57)),StateType != A || P2BodyDist Y=[-110,70]

;===========================================================================
;　ジャンプ関連
;===========================================================================
[State -1, ジャンプ]
type = ChangeState
value = 39
Triggerall = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = statetype!=A && Statetype != L && Movetype!=A && var(48)=0 && var(49)=0
Triggerall = Ctrl || stateno=21 || (StateNo=[100,101]) || (StateNo=[120,140])
TriggerAll = P2bodydist X=[90,160]
TriggerAll = PlayerID(var(57)),Statetype !=L
TriggerAll = PlayerID(var(57)),Statetype !=A
Trigger1 = PlayerID(var(57)),Movetype !=H
Trigger1 = PlayerID(var(57)),stateno !=[120,155]
Trigger1 = PlayerID(var(57)),Vel X<2
Trigger1 = Random<175-(var(59)*25)-(NumHelper(1300))*25
Trigger2 = FrontEdgeBodyDist>=40
Trigger2 = PlayerID(var(57)),Movetype=A
Trigger2 = PlayerID(var(57)),Statetype=C
Trigger2 = PlayerID(var(57)),Hitdefattr= C,NA,SA
Trigger2 = Random<176-(var(59)*25)-(NumHelper(1300))*25

[State -1, 前方空中ダッシュ]
type = null;ChangeState
value = 110
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
TriggerAll = StateType=A && ctrl && Pos Y<-60
Trigger1 = P2BodyDist X != [-30,110]
Trigger1 = Random%10 <= 1

[State -1, 後方空中ダッシュ]
type = null;ChangeState
value = 115
TriggerAll = var(59)>0 && var(44)!=3 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = var(44)=2 || (NumHelper(1350) && Helper(1350),Var(1)=1350)
TriggerAll = StateType = A && ctrl && Pos Y<-60
Trigger1 = P2BodyDist X != [-30,110]
Trigger1 = Random%10 <= 1

;===========================================================================
;　地上移動関連
;===========================================================================
[State -1, Run Fwd]
type = ChangeState
value = 100
Triggerall = var(59)>1 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = statetype != A && (ctrl || stateno=21) && var(48)=0 && var(49)=0 && var(12)!=2 && (stateno !=[100,106])
Triggerall = (NumHelper(1300)=0 && !PlayerID(var(57)),Numproj) || (NumHelper(1300) && (Helper(1300),Rootdist X<-35))
Trigger1 = P2bodydist X=[100,220]
Trigger1 = PlayerID(var(57)),Statetype !=A
Trigger1 = PlayerID(Var(57)),Statetype !=L
Trigger1 = Random<var(59)*5+(P2bodydist X)
Trigger2 = Numhelper(111111) && Numhelper(111112)
Trigger2 = (Helper(111111),Rootdist X<80 && Facing=-1)||(Helper(111112),Rootdist X<80 && Facing=1)
Trigger2 = P2bodydist X>150
Trigger2 = PlayerID(var(57)),Statetype !=A
Trigger2 = !InguardDist
Trigger2 = Random<(P2bodydist X-100)*5+var(59)*10
Trigger3 = P2bodydist X>=100
Trigger3 = PlayerID(Var(57)),Statetype!=L
Trigger3 = PlayerID(Var(57)),Movetype!=A
Trigger3 = PlayerID(Var(57)),Ctrl=0
Trigger3 = PlayerID(var(57)),StateNo>=200
Trigger4 = PlayerID(var(57)),statetype=A
Trigger4 = PlayerID(var(57)),stateno=5210
Trigger4 = P2BodyDist X >= 40

[State -1, Back Stepo]
Type = ChangeState
Value = 105
TriggerAll = var(59)>2 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
Triggerall = statetype != A && var(48)=0 && var(49)=0
Triggerall = ctrl||stateno=21||((StateNo=[120,140])&&StateNo!=132)||(stateno=195 && animelemtime(15)>0)
Triggerall = stateno!=100 && stateno!=105
TriggerAll = InGuardDist
TriggerAll = PlayerID(var(57)),MoveType = A
Trigger1 = p2bodydist X<50 || ((Prevstateno=[5120,5149])&&p2bodydist X<50)
Trigger1 = Random<var(59)*10
trigger2 = PlayerID(var(57)),HitDefAttr = SCA,AT
trigger2 = PlayerID(var(57)),StateType != A
Trigger2 = Numhelper(111111) && NumHelper(111112)
Trigger2 = (Helper(111111),Rootdist X>50 && Facing=1)||(Helper(111112),Rootdist X>50 && Facing=-1)
trigger2 = Random<var(59)*60

;---------------------------------------------------------------------------
[State -1, 歩行]
type = ChangeState
value = 21
TriggerAll = var(59)>0 && RoundState=2 && Alive && !Ishelper && PlayerIDExist(var(57))
TriggerAll = statetype!=A && Statetype != L && Movetype!=A
TriggerAll = Ctrl && (stateno!=[100,101]) && (stateno!=[20,21])
Trigger1 = var(48)=0 && var(49)=0
Trigger1 = PlayerID(var(57)),Vel X<2
Trigger1 = P2bodydist X>20
Trigger1 = !Inguarddist
Trigger2 = var(48)=0 && var(49)=0
Trigger2 = PlayerID(var(57)),Statetype !=L
Trigger2 = P2bodydist X>=50
Trigger3 = PlayerID(var(57)),Statetype = A
trigger3 = P2Bodydist X>60
Trigger4 = var(48)=2 && (var(49)=0||(var(49)=[4,5])||var(49)=7) && fvar(39)=0
Trigger4 = P2bodydist Y<-40
Trigger4 = PlayerID(var(57)),stateNo !=[120,155]
Trigger5 = var(12)=2


