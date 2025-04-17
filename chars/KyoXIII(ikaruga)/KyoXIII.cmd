;-| Button Remapping |-----------------------------------------------------
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

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "裏百弐拾壱式・天叢雲"
command = ~D, DF, F, D, DF, F, x+y
time = 25


[Command]
name = "EX裏百八式・大蛇薙"
command = ~D, DB, B, DB, D, DF, F, x+y
time = 30

[Command]
name = "EX裏百八式・大蛇薙"
command = ~D, DB, B, D, F, x+y
time = 30



[Command]
name = "裏百八式・大蛇薙"
command = ~D, DB, B, DB, D, DF, F, y
time = 30

[Command]
name = "裏百八式・大蛇薙"
command = ~D, DB, B, DB, D, DF, F, x
time = 30

[Command]
name = "裏百八式・大蛇薙"
command = ~D, DB, B, D, F, y
time = 30

[Command]
name = "裏百八式・大蛇薙"
command = ~D, DB, B, D, F, x
time = 30



;-| Special Motions |------------------------------------------------------
[Command]
name = "EX百壱式・朧車"
command = ~B, D, DB, a+b

[Command]
name = "百壱式・朧車"
command = ~B, D, DB, b

[Command]
name = "百壱式・朧車"
command = ~B, D, DB, a


[Command]
name = "EX七拾五式・改"
command = ~D, DF, F, a+b

[Command]
name = "七拾五式・改"
command = ~D, DF, F, b

[Command]
name = "七拾五式・改"
command = ~D, DF, F, a


[Command]
name = "EX弐百拾弐式・琴月 陽"
command = ~F, DF, D, DB, B, a+b
time = 20

[Command]
name = "弐百拾弐式・琴月 陽"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "弐百拾弐式・琴月 陽"
command = ~F, DF, D, DB, B, a
time = 20


[Command]
name = "EX百式・鬼焼き"
command = ~F, D, DF, x+y

[Command]
name = "百式・鬼焼き"
command = ~F, D, DF, y

[Command]
name = "百式・鬼焼き"
command = ~F, D, DF, x


[Command]
name = "EX百八式・闇払い"
command = ~D, DF, F, x+y

[Command]
name = "百八式・闇払い"
command = ~D, DF, F, y

[Command]
name = "百八式・闇払い"
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
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1


[Command]
name = "回避"
command = x+a
time = 1

[Command]
name = "回避"
command = z
time = 1


[Command]
name = "HDモード"
command = y+a
time = 1


[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "デバッグ用コマンド"
command = ~D, D, s


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



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAXキャンセル裏百弐拾壱式・天叢雲
[State negathibu anngisshu]
type = ChangeState
value = 2500
triggerall = (command = "裏百弐拾壱式・天叢雲") || (var(38) = 70 && var(40) > 0)
triggerall = (power >= 2000 && var(21) > 0)
trigger1 = stateno = 2005 && animelem = 12,>=0
trigger2 = stateno = 2055 && animelem = 12,>=0

;---------------------------------------------------------------------------
;裏百弐拾壱式・天叢雲
[State negathibu anngisshu]
type = ChangeState
value = 2500
triggerall = (command = "裏百弐拾壱式・天叢雲") || (var(38) = 70 && var(40) > 0)
triggerall = statetype != A
triggerall = (power >= 3000 && var(20) >= 1000) || (power >= 2000 && var(21) > 0)
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;HDキャンセル
trigger12= stateno = 1000
trigger12= var(21) > 0
trigger13= stateno = 1050
trigger13= var(21) > 0
trigger14= stateno = 1100 && movecontact
trigger14= var(21) > 0
trigger15= stateno = 1150 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1010 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1205 && movecontact
trigger17= var(21) > 0

;HD通常技無条件キャンセル
trigger18= stateno = [200,499]
trigger18= movecontact
trigger18= var(21) > 0




;---------------------------------------------------------------------------
;EX空中裏百八式・大蛇薙
[State negathibu anngisshu]
type = ChangeState
value = 2150
triggerall = (command = "EX裏百八式・大蛇薙") || (var(38) = 65 && var(40) > 0)
triggerall = statetype = A
triggerall = power >= 2000
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;スーパーキャンセル
trigger3 = stateno = 1100 && movehit
trigger3 = var(20) >= 500
trigger3 = var(21) = 0
trigger4 = stateno = 1150 && movehit
trigger4 = var(20) >= 500
trigger4 = var(21) = 0
trigger5 = stateno = 1400 && movehit
trigger5 = var(20) >= 500
trigger5 = var(21) = 0
trigger6 = stateno = 1450 && movehit
trigger6 = var(20) >= 500
trigger6 = var(21) = 0

;HDキャンセル
trigger7 = stateno = 1100 && movecontact
trigger7 = var(21) > 0
trigger8 = stateno = 1150 && movecontact
trigger8 = var(21) > 0
trigger9 = stateno = 1400 && movecontact
trigger9 = var(21) > 0
trigger10= stateno = 1450 && movecontact
trigger10= var(21) > 0


;---------------------------------------------------------------------------
;空中裏百八式・大蛇薙
[State negathibu anngisshu]
type = ChangeState
value = 2100
triggerall = (command = "裏百八式・大蛇薙") || (var(38) = 60 && var(40) > 0)
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;スーパーキャンセル
trigger3 = stateno = 1100 && movehit
trigger3 = var(20) >= 500
trigger3 = var(21) = 0
trigger4 = stateno = 1150 && movehit
trigger4 = var(20) >= 500
trigger4 = var(21) = 0
trigger5 = stateno = 1400 && movehit
trigger5 = var(20) >= 500
trigger5 = var(21) = 0
trigger6 = stateno = 1450 && movehit
trigger6 = var(20) >= 500
trigger6 = var(21) = 0

;HDキャンセル
trigger7 = stateno = 1100 && movecontact
trigger7 = var(21) > 0
trigger8 = stateno = 1150 && movecontact
trigger8 = var(21) > 0
trigger9 = stateno = 1400 && movecontact
trigger9 = var(21) > 0
trigger10= stateno = 1450 && movecontact
trigger10= var(21) > 0


;---------------------------------------------------------------------------
;EX裏百八式・大蛇薙
[State negathibu anngisshu]
type = ChangeState
value = 2050
triggerall = (command = "EX裏百八式・大蛇薙") || (var(38) = 65 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;スーパーキャンセル
trigger12= stateno = 1000
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1205 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0

;HDキャンセル
trigger17= stateno = 1000
trigger17= var(21) > 0
trigger18= stateno = 1050
trigger18= var(21) > 0
trigger19= stateno = 1100 && movecontact
trigger19= var(21) > 0
trigger20= stateno = 1150 && movecontact
trigger20= var(21) > 0
trigger21= stateno = 1010 && movecontact
trigger21= var(21) > 0
trigger22= stateno = 1205 && movecontact
trigger22= var(21) > 0

;HD通常技無条件キャンセル
trigger23= stateno = [200,499]
trigger23= movecontact
trigger23= var(21) > 0



;---------------------------------------------------------------------------
;裏百八式・大蛇薙
[State negathibu anngisshu]
type = ChangeState
value = 2000
triggerall = (command = "裏百八式・大蛇薙") || (var(38) = 60 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;スーパーキャンセル
trigger12= stateno = 1000
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1205 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0

;HDキャンセル
trigger17= stateno = 1000
trigger17= var(21) > 0
trigger18= stateno = 1050
trigger18= var(21) > 0
trigger19= stateno = 1100 && movecontact
trigger19= var(21) > 0
trigger20= stateno = 1150 && movecontact
trigger20= var(21) > 0
trigger21= stateno = 1010 && movecontact
trigger21= var(21) > 0
trigger22= stateno = 1205 && movecontact
trigger22= var(21) > 0

;HD通常技無条件キャンセル
trigger23= stateno = [200,499]
trigger23= movecontact
trigger23= var(21) > 0



;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;EX百壱式・朧車
[State negathibu anngisshu]
type = ChangeState
value = 1450
triggerall = (command = "EX百壱式・朧車") || (var(38) = 55 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;百壱式・朧車
[State negathibu anngisshu]
type = ChangeState
value = 1400
triggerall = (command = "百壱式・朧車") || (var(38) = 50 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;---------------------------------------------------------------------------
;EX七拾五式・改
[State negathibu anngisshu]
type = ChangeState
value = 1350
triggerall = (command = "EX七拾五式・改") || (var(38) = 45 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;七拾五式・改
[State negathibu anngisshu]
type = ChangeState
value = 1300
triggerall = (command = "七拾五式・改") || (var(38) = 40 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;---------------------------------------------------------------------------
;EX弐百拾弐式・琴月 陽
[State negathibu anngisshu]
type = ChangeState
value = 1250
triggerall = (command = "EX弐百拾弐式・琴月 陽") || (var(38) = 35 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;弐百拾弐式・琴月 陽
[State negathibu anngisshu]
type = ChangeState
value = 1200
triggerall = (command = "弐百拾弐式・琴月 陽") || (var(38) = 30 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 120500 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 120500 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;---------------------------------------------------------------------------
;EX百式・鬼焼き
[State negathibu anngisshu]
type = ChangeState
value = 1150
triggerall = (command = "EX百式・鬼焼き") || (var(38) = 25 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 115000 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 115000 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;百式・鬼焼き
[State negathibu anngisshu]
type = ChangeState
value = 1100
triggerall = (command = "百式・鬼焼き") || (var(38) = 20 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 110000 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 110000 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0



;---------------------------------------------------------------------------
;EX百八式・闇払い
[State negathibu anngisshu]
type = ChangeState
value = 1050
triggerall = (command = "EX百八式・闇払い") || (var(38) = 15 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(1010) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && animelem = 6,>=0
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0

;---------------------------------------------------------------------------
;百八式・闇払い
[State negathibu anngisshu]
type = ChangeState
value = 1000
triggerall = (command = "百八式・闇払い") || (var(38) = 10 && var(40) > 0)
triggerall = statetype != A
triggerall = numhelper(1010) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 5,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 251 && animelem = 6,>=0
trigger7 = stateno = 400 && animelem = 2,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 450 && movecontact && animelem = 6,<=0

;ドライブキャンセル
trigger12= stateno = 1100 && movehit
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1150 && movehit
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1205 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0

;HDキャンセル
trigger15= stateno = 1100 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1150 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1010 && movecontact
trigger17= var(21) > 0
trigger18= stateno = 1205 && movecontact
trigger18= var(21) > 0

;HD通常技無条件キャンセル
trigger19= stateno = [200,499]
trigger19= movecontact
trigger19= var(21) > 0


;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;ガーキャンふっ飛ばし攻撃
[State ga-kyannhuttobasikougeki]
type = ChangeState
value = 299
triggerall = command = "ふっ飛ばし"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151


;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State kuuchuuhuttobasikougeki]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State huttobasikougeki]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ガーキャンかわし移動・後
[State ga-kyannkawasiidou usiro]
type = ChangeState
value = 701
triggerall = command = "回避"
triggerall = command = "holdback"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ガーキャンかわし移動・前
[State ga-kyannkawasiidou mae]
type = ChangeState
value = 700
triggerall = command = "回避"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;かわし移動・後
[State kawasiidou usiro]
type = ChangeState
value = 701
triggerall = command = "回避"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;かわし移動・前
[State kawasiidou mae]
type = ChangeState
value = 700
triggerall = command = "回避"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダウン回避
[State daunkaihi]
type = ChangeState
value = 702
triggerall = var(9) >= 1
triggerall = alive
triggerall = pos y >= 0
trigger1 = stateno = 5050
trigger2 = stateno = 5071
trigger3 = stateno = 5100


;---------------------------------------------------------------------------
;HDモード発動
[State huttobasikougeki]
type = ChangeState
value = 900
triggerall = command = "HDモード"
triggerall = statetype != A
triggerall = var(20) >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
;HDモード発動・空中
[State huttobasikougeki]
type = ChangeState
value = 901
triggerall = command = "HDモード"
triggerall = statetype = A
triggerall = var(20) >= 1000
trigger1 = stateno = 50

;---------------------------------------------------------------------------
;HDモード発動・キャンセル
[State huttobasikougeki]
type = ChangeState
value = 902
triggerall = command = "HDモード"
triggerall = statetype != A
triggerall = var(20) >= 1000
triggerall = stateno = [200,499]
trigger1 = movecontact


;---------------------------------------------------------------------------
;一刹背負い投げ
[State deddo fo-ru]
type = ChangeState
value = 800
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;===========================================================================

;---------------------------------------------------------------------------
;八捨八式
[State tachijakupanchi]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 400 && animelem = 2,>=0
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 440 && animelem = 5,>=0
trigger7 = stateno = 290 && animelem = 6,>=0


;---------------------------------------------------------------------------
;外式・轟斧 陽
[State tachijakupanchi]
type = ChangeState
value = 251
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = stateno = 200 && animelem = 3,>=0
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && animelem = 2,>=0
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && animelem = 5,>=0
trigger6 = stateno = 290 && animelem = 6,>=0

;---------------------------------------------------------------------------
;外式・轟斧 陽
[State tachijakupanchi]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;外式・奈落落とし
[State tachijakupanchi]
type = ChangeState
value = 650
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1
trigger3 = stateno = 105


;---------------------------------------------------------------------------
;立ち弱パンチ
[State tachijakupanchi]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 5,>=0
trigger3 = stateno = 400 && animelem = 3,>=0
trigger4 = stateno = 430 && animelem = 5,>=0

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State tachikyoupanchi]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=55 || p2bodydist x <= 10
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State tachikyoupanchi]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State tachijakukikku]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && animelem = 6,>=0

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State ennkyoritachikyoukikku]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State chouhatu]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State tachijakupanchi]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 5,>=0
trigger3 = stateno = 400 && animelem = 4,>=0
trigger4 = stateno = 430 && animelem = 5,>=0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State tachijakupanchi]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State shagamijakukikku]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && animelem = 6,>=0

;---------------------------------------------------------------------------
;しゃがみ強キック
[State shagamikyoukikku]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State kuuchuujakupanchi]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;空中強パンチ
[State kuuchuukyoupanchi]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1
