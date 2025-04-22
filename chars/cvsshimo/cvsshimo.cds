;#region deeb_buffering_DUB_edition.cds
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"			;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"			;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"	;Required (do not remove)
command = x+a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"			; REQUIRED for command buffering
command = a
time = 1

[Command]
name = "b"			; REQUIRED for command buffering
command = b
time = 1

[Command]
name = "c"			; REQUIRED for command buffering
command = c
time = 1

[Command]
name = "x"			; REQUIRED for command buffering
command = x
time = 1

[Command]
name = "y"			; REQUIRED for command buffering
command = y
time = 1

[Command]
name = "z"			; REQUIRED for command buffering
command = z
time = 1

[Command]
name = "start"		; REQUIRED for command buffering
command = s
time = 1

[Command]
name = "back"		; REQUIRED for command buffering
command = B
time = 1

[Command]
name = "fwd"		; REQUIRED for command buffering
command = F
time = 1

[Command]
name = "up"			; REQUIRED for command buffering
command = U
time = 1

[Command]
name = "down"		; REQUIRED for command buffering
command = D
time = 1

[Command]
name = "fwd2"		; REQUIRED for command buffering
command = $F
time = 1

[Command]
name = "back2"		; REQUIRED for command buffering
command = $B
time = 1

[Command]
name = "up2"		; REQUIRED for command buffering
command = $U
time = 1

[Command]
name = "down2"		; REQUIRED for command buffering
command = $D
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"		; REQUIRED for command buffering
command = /x
time = 1

[Command]
name = "hold_y"		; REQUIRED for command buffering
command = /y
time = 1

[Command]
name = "hold_z"		; REQUIRED for command buffering
command = /z
time = 1

[Command]
name = "hold_a"		; REQUIRED for command buffering
command = /a
time = 1

[Command]
name = "hold_b"		; REQUIRED for command buffering
command = /b
time = 1

[Command]
name = "hold_c"		; REQUIRED for command buffering
command = /c
time = 1

[Command]
name = "hold_start"	; REQUIRED for command buffering
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"	;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown"	;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback"	;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"		;Required (do not remove)
command = /$U
time = 1
;#endregion

;---------------------------------------------------------------------------
; I said don't fuck with it, you stupid bitch.
[Statedef -1]
; Parrying/Just Defend Voice
[State -2, PlaySnd]
type = Playsnd
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
trigger4 = StateNo = 150 && Var(14) = 1
trigger5 = StateNo = 152 && Var(14) = 1
trigger6 = StateNo = 154 && Var(14) = 1
value = S8,2+(random%3)
channel = 0

[State 710, Explod]; Parry spark
type = Explod
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
anim = 7500
pos = ifElse(StateNo=720,14,ifElse(StateNo=710,42,35)),ifElse(StateNo=720,-84,ifElse(StateNo=710,-28,-98)) ;basic code
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 15
[State 500, Explod]; Just Defend spark
type = Explod
triggerall = Time = 0
triggerall = Var(14) = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
anim = 7000
;pos = ifElse(StateNo=154,0,ifElse(StateNo=152,14,0)),ifElse(StateNo=154,-70,ifElse(StateNo=152,-42,-77)) ;basic code
pos = ifElse(StateNo=152,14,0),ifElse(StateNo=154,-70,ifElse(StateNo=152,-42,-77))
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 4

[State -1, Lvl.2 Cancel]
type = VarSet
trigger1 = Time = 1
var(26) = 0

;==========================================================================;
;                              HUMAN COMMANDS                              ;
;==========================================================================;
;#region conflict_check.cds
;---------------------------------------------------------------------------
; Conflict Check
[State -1, P]
type = VarSet
triggerall = !AILevel
trigger1 = (helper(10372), var(0)&903) > 0		; COMMAND = "x" || COMMAND = "y" || COMMAND = "z"
trigger2 = !Var(30)
trigger2 = (helper(10372), var(2)&903) > 0		; COMMAND = "~x" || COMMAND = "~y" || COMMAND = "~z"
var(46) = 1
ignorehitpause = 1
[State -1, K]
type = VarSet
triggerall = !AILevel
trigger1 = (helper(10372), var(0)&14448) > 0	; COMMAND = "a" || COMMAND = "b" || COMMAND = "c"
trigger2 = !Var(30)
trigger2 = (helper(10372), var(2)&14448) > 0	; COMMAND = "~a" || COMMAND = "~b" || COMMAND = "~c"
var(46) = 0
ignorehitpause = 1
[State -1, P beats ~K]
type = VarSet
triggerall = !AILevel
triggerall = !Var(30)
trigger1 = (helper(10372), var(0)&903) > 0
var(46) = (helper(10372), var(0)&903) >= ((helper(10372), var(2)&14448)/16) ; If 1, P beats ~K
ignorehitpause = 1
[State -1, K beats ~P]
type = VarSet
triggerall = !AILevel
triggerall = !Var(30)
trigger1 = (helper(10372), var(0)&14448) > 0
var(46) = (helper(10372), var(2)&903) >= ((helper(10372), var(0)&14448)/16) ; If 0, K beats ~P
ignorehitpause = 1
;#endregion

;---------------------------------------------------------------------------
; Kantanenzan
[State -1, Kantanenzan]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(59)&(2**6)) > 0												; COMMAND = "QCFx2"
triggerall = (helper(10372), Var(0)&903) > 0 || (!Var(30) && (helper(10372), Var(2)&903) > 0)	; COMMAND = "x" || COMMAND = "y" || COMMAND = "z" || COMMAND = "~x" || COMMAND = "~y" || COMMAND = "~z"
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2) || (Time < 2 && (StateNo = [300,310]))
trigger2 = StateNo = 200 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 225 && AnimElemTime(6) < 0
trigger5 = StateNo = 230 && AnimElemTime(4) < 0 || StateNo = 230 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger6 = StateNo = 240 && AnimElemTime(5) < 0
trigger7 = StateNo = 250 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(3) < 0
trigger10 = StateNo = 420 && AnimElemTime(5) < 0
trigger11 = StateNo = 430 && AnimElemTime(4) < 0 || StateNo = 430 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger12 = StateNo = 440 && AnimElemTime(4) < 0 || StateNo = 440 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger13 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger14 = (StateNo = [1000,1500]) && (Var(50) = [1,2]) && (((var(5)&16)>0) || Var(30))
trigger15 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger16 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = (Stateno=[200,440]) && time<3 || (Stateno=[600,699]) && time<3
ignorehitpause = 0

;---------------------------------------------------------------------------
; Issenkosa
[State -1, Issenkousa]
type = ChangeState
value = 3100
triggerall = !AIlevelF
triggerall = Map(QCFQC)  
triggerall = Map(a)||Map(b)||Map(c) || Map(r_a)|| Map(r_b)|| Map(r_c)
;triggerall = !AILevel
;triggerall = numHelper(10372)
;triggerall = (helper(10372), Var(59)&(2**6)) > 0												; COMMAND = "QCBx2"
triggerall = (helper(10372), Var(0)&15351) > 0 || ((helper(10372), Var(2)&15351) > 0 && !Var(30))	; COMMAND = "x"  || COMMAND = "y" || COMMAND = "z" || COMMAND = "a"  || COMMAND = "b" || COMMAND = "c" || ((COMMAND = "~x"  || COMMAND = "~y" || COMMAND = "~z" || COMMAND = "~a"  || COMMAND = "~b" || COMMAND = "~c") && !Var(30))
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2) || (Time < 2 && (StateNo = [300,310]))
trigger2 = StateNo = 200 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 225 && AnimElemTime(6) < 0
trigger5 = StateNo = 230 && AnimElemTime(4) < 0 || StateNo = 230 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger6 = StateNo = 240 && AnimElemTime(5) < 0
trigger7 = StateNo = 250 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(3) < 0
trigger10 = StateNo = 420 && AnimElemTime(5) < 0
trigger11 = StateNo = 430 && AnimElemTime(4) < 0 || StateNo = 430 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger12 = StateNo = 440 && AnimElemTime(4) < 0 || StateNo = 440 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger13 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger14 = (StateNo = [1000,1500]) && (Var(50) = [1,2]) && (((var(5)&16)>0) || Var(30))
trigger15 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger16 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = (Stateno=[200,440]) && time<3 || (Stateno=[600,699]) && time<3
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&516) > 0 && (helper(10372), var(0)&8256) > 0	; COMMAND = "z" && COMMAND = "c"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; MAX Activation
[State -1, MAX Activation]
type = ChangeState
value = 960
triggerall = !AILevel
triggerall = Var(10) = 5
triggerall = Power >= 1000
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&516) > 0 && (helper(10372), var(0)&8256) > 0	; COMMAND = "z" && COMMAND = "c"
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&516) > 0 && (helper(10372), var(0)&8256) > 0	; COMMAND = "z" && COMMAND = "c"
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Attack
[State -1, Counter Attack]
type = ChangeState
value = 2800
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&258) > 0 && (helper(10372), var(0)&4128) > 0	; COMMAND = "y" && COMMAND = "b"
triggerall = (helper(10372), var(4)&10) = 8											; COMMAND != "/D" && COMMAND = "/F"
triggerall = (var(5)&32)>0
trigger1 = Power >= 1000 && (Var(10) = 0 || Var(10) = 1 || Var(10) = 5)
trigger2 = Power >= 1500 && Var(10) = 2
trigger3 = Power >= 3000 && (Var(10) = 3 || Var(10) = 4)
trigger4 = Var(19)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
[State -1, Aerial Custom Combo]
type = ChangeState
value = 975
triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&516) > 0 && (helper(10372), var(0)&8256) > 0
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && Time < 2
trigger3 = StateNo = 610 && Time < 2
trigger4 = StateNo = 620 && Time < 2
trigger5 = StateNo = 630 && time < 2
trigger6 = StateNo = 640 && Time < 2
trigger7 = StateNo = 650 && time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = ifElse(((Var(5)&2)>0),100,102)
triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = numHelper(10372)
trigger1 = (helper(10372), Var(59)&(2**30)) > 0
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = numHelper(10372)
trigger1 = (helper(10372), Var(59)&-2147483648) = -2147483648
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Safe Fall
[State -1, Safe Fall]
type = ChangeState
value = 5201
triggerall = !AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Pos Y + Vel Y >= 0
trigger1 = numHelper(10372)
trigger1 = (helper(10372), var(0)&896) != 128 && (helper(10372), var(0)&896) != 256 && (helper(10372), var(0)&7) != 512
trigger1 = (helper(10372), var(0)&7) != 1 && (helper(10372), var(0)&7) != 2 && (helper(10372), var(0)&7) != 4
trigger1 = (helper(10372), var(0)&896) > 0 || (helper(10372), var(0)&7) > 0
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Counter Movement (forward)
[State -1, Counter Movement (forward)]
type = ChangeState
value = 320
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&129) > 0 && (helper(10372), var(0)&2064) > 0	; COMMAND = "x" && COMMAND = "a"
triggerall = (helper(10372), var(4)&10) = 8											; COMMAND != "/D" && COMMAND = "/F"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (back)
[State -1, Counter Movement (back)]
type = ChangeState
value = 330
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&129) > 0 && (helper(10372), var(0)&2064) > 0	; COMMAND = "x" && COMMAND = "a"
triggerall = (helper(10372), var(4)&6) = 4											; COMMAND != "/D" && COMMAND = "/B"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**3)|(2**10))) > 0							; COMMAND = "s"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2) || (Time < 2 && (StateNo = [300,310]))
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 230 && AnimElemTime(4) < 0
trigger5 = StateNo = 240 && AnimElemTime(5) < 0
trigger6 = StateNo = 400
trigger7 = StateNo = 410 && AnimElemTime(3) < 0
trigger8 = StateNo = 420 && AnimElemTime(4) < 1
trigger9 = StateNo = 430 && AnimElemTime(4) < 0
trigger10 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger11 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger12 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger13 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Shingetsu
[State -1, Shingetsu]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(59)&(2**0)) > 0													; COMMAND = "QCF"
triggerall = (helper(10372), Var(0)&903) > 0 || ((helper(10372), Var(2)&903) > 0 && !Var(30))	; COMMAND = "x"  || COMMAND = "y" || COMMAND = "z" || ((COMMAND = "~x" || COMMAND = "~y" || COMMAND = "~z") && !Var(30))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2) || (Time < 2 && (StateNo = [300,310]))
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 230 && AnimElemTime(4) < 0
trigger5 = StateNo = 240 && AnimElemTime(5) < 0
trigger6 = StateNo = 400
trigger7 = StateNo = 410 && AnimElemTime(3) < 0
trigger8 = StateNo = 420 && AnimElemTime(4) < 1
trigger9 = StateNo = 430 && AnimElemTime(4) < 0
trigger10 = StateNo = 440 && AnimElemTime(4) < 0 || StateNo = 440 && (var(30) || time <= 2 || (var(50) = 1||var(50) = 2))
trigger11 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger12 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger13 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger14 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Shinkoenzan
[State -1, Shinkoenzan]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(59)&(2**1)) > 0													; COMMAND = "QCB"
triggerall = (helper(10372), Var(0)&903) > 0 || ((helper(10372), Var(2)&903) > 0 && !Var(30))	; COMMAND = "x"  || COMMAND = "y" || COMMAND = "z" || ((COMMAND = "~x" || COMMAND = "~y" || COMMAND = "~z") && !Var(30))
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2) || (Time < 2 && (StateNo = [300,310]))
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 230 && AnimElemTime(4) < 0
trigger5 = StateNo = 240 && AnimElemTime(5) < 0
trigger6 = StateNo = 400
trigger7 = StateNo = 410 && AnimElemTime(3) < 0
trigger8 = StateNo = 420 && AnimElemTime(4) < 1
trigger9 = StateNo = 430 && AnimElemTime(4) < 0
trigger10 = StateNo = 440 && AnimElemTime(4) < 0
trigger11 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger12 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger13 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger14 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Overhead
[State -1, Shinkoenzan]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(59)&(2**1)) > 0													; COMMAND = "QCB"
triggerall = (helper(10372), Var(0)&15351) > 0 || ((helper(10372), Var(2)&15351) > 0 && !Var(30))	; COMMAND = "a"  || COMMAND = "b" || COMMAND = "c" || ((COMMAND = "~a" || COMMAND = "~b" || COMMAND = "~c") && !Var(30))
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2) || (Time < 2 && (StateNo = [300,310]))
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 230 && AnimElemTime(4) < 0
trigger5 = StateNo = 240 && AnimElemTime(5) < 0
trigger6 = StateNo = 400
trigger7 = StateNo = 410 && AnimElemTime(3) < 0
trigger8 = StateNo = 420 && AnimElemTime(4) < 1
trigger9 = StateNo = 430 && AnimElemTime(4) < 0
trigger10 = StateNo = 440 && AnimElemTime(4) < 0
trigger11 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger12 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger13 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger14 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 830
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(4)&204) > 0				; COMMAND = "/F" || COMMAND = "/B"
triggerall = (helper(10372), Var(0)&((2**6)|(2**13))) > 0	; COMMAND = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [-22,22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(4)&204) > 0				; COMMAND = "/F" || COMMAND = "/B"
triggerall = (helper(10372), Var(0)&((2**2)|(2**9))) > 0	; COMMAND = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [-22,22]
triggerall = roundstate = 2
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && (helper(10372), Var(4)&136) > 0),300,310)
triggerall = !AILevel
triggerall = Var(9) != 3
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&2064) > 0 && (helper(10372), var(0)&129) > 0	; COMMAND = "a" && COMMAND = "x"
triggerall = StateType != A
triggerall = StateNo < 195 || PrevStateNo != 310
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time <= 2
trigger3 = StateNo = 205 && Time <= 2
trigger4 = StateNo = 210 && Time <= 2
trigger5 = StateNo = 215 && Time <= 2
trigger6 = StateNo = 220 && Time <= 2
trigger7 = StateNo = 225 && Time <= 2
trigger8 = StateNo = 230 && Time <= 2
trigger9 = StateNo = 235 && Time <= 2
trigger10 = StateNo = 240 && Time <= 2
trigger11 = StateNo = 245 && Time <= 2
trigger12 = StateNo = 250 && Time <= 2
trigger13 = StateNo = 255 && Time <= 2
trigger14 = StateNo = 260 && Time <= 2
trigger15 = StateNo = 270 && Time <= 2
trigger16 = StateNo = 280 && Time <= 2
trigger17 = StateNo = 400 && Time <= 2
trigger18 = StateNo = 410 && Time <= 2
trigger19 = StateNo = 420 && Time <= 2
trigger20 = StateNo = 430 && Time <= 2
trigger21 = StateNo = 440 && Time <= 2
trigger22 = StateNo = 450 && Time <= 2
trigger23 = ((StateNo = [195,299]) || (StateNo = [400,450])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger24 = (StateNo = [1000,1999]) && Var(30) && Var(50)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&903) > 0	; COMMAND = "x"  || COMMAND = "y" || COMMAND = "z"
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&14448) > 0	; COMMAND = "a"  || COMMAND = "b" || COMMAND = "c"
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**6)|(2**13))) > 0	; COMMAND = "c"
triggerall = (helper(10372), var(4)&32) = 0					; COMMAND != "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**2)|(2**9))) > 0	; COMMAND = "z"
triggerall = (helper(10372), var(4)&32) = 0					; COMMAND != "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**5)|(2**12))) > 0	; COMMAND = "b"
triggerall = (helper(10372), var(4)&32) = 0					; COMMAND != "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**1)|(2**8))) > 0	; COMMAND = "y"
triggerall = (helper(10372), var(4)&32) = 0					; COMMAND != "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**4)|(2**11))) > 0	; COMMAND = "a"
triggerall = (helper(10372), var(4)&32) = 0					; COMMAND != "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 230 && Time > 2
trigger4 = StateNo = 400 && Time > 4
trigger5 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger6 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**0)|(2**7))) > 0	; COMMAND = "x"
triggerall = (helper(10372), var(4)&32) = 0					; COMMAND != "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 230 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger7 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**6)|(2**13))) > 0	; COMMAND = "c"
triggerall = (helper(10372), var(4)&32) > 0					; COMMAND = "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**2)|(2**9))) > 0	; COMMAND = "z"
triggerall = (helper(10372), var(4)&32) > 0					; COMMAND = "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**5)|(2**12))) > 0	; COMMAND = "b"
triggerall = (helper(10372), var(4)&32) > 0					; COMMAND = "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
trigger4 = StateNo = 200 && Time > 7
trigger5 = StateNo = 230 && Time > 7
trigger6 = StateNo = 400 && Time > 7
;trigger7 = StateNo = 430 && Time > 7
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**1)|(2**8))) > 0	; COMMAND = "y"
triggerall = (helper(10372), var(4)&32) > 0					; COMMAND = "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**4)|(2**11))) > 0	; COMMAND = "a"
triggerall = (helper(10372), var(4)&32) > 0					; COMMAND = "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 230 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger7 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**0)|(2**7))) > 0	; COMMAND = "x"
triggerall = (helper(10372), var(4)&32) > 0					; COMMAND = "/$D"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 3
trigger3 = StateNo = 400 && Time > 4
trigger4 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**6)|(2**13))) > 0	; COMMAND = "c"
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**2)|(2**9))) > 0	; COMMAND = "z"
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**5)|(2**12))) > 0	; COMMAND = "b"
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**1)|(2**8))) > 0	; COMMAND = "y"
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**4)|(2**11))) > 0	; COMMAND = "a"
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&((2**0)|(2**7))) > 0	; COMMAND = "x"
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; BASIC MOVEMENT
[State -1, Buffered Walk]
type = AssertSpecial
trigger1 = NumHelper(10372)
flag = NoWalk
[State -1, Buffered Walk]
type = ChangeState
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(4)&34) = 0		; COMMAND != "/D"
triggerall = statetype != A && statetype != L
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = (StateNo != [11,12]) && StateNo != 20 && StateNo != 40 && !(StateNo = 52 && Time < 3)
triggerall = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
trigger1 = (helper(10372), Var(4)&204) > 0
trigger1 = facing * helper(10372),facing * (((helper(10372), Var(4)&136) > 0) - ((helper(10372), Var(4)&68) > 0)) != 0	; facing * helper(10372),facing * (COMMAND = "/F" - COMMAND = "/B")
value = 20
[State -1, Buffered Crouch, Return to Stance or Walk]
type = ChangeState
triggerall = numHelper(10372)
triggerall = (helper(10372), var(4)&17) = 0 ; COMMAND != "/U"
triggerall = !AILevel
triggerall = statetype != A && statetype != L
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = StateNo != 0 && (StateNo != [11,12]) && StateNo != 20 && StateNo != 52
trigger1 = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
value = ifElse((helper(10372), Var(4)&34) > 0, 11, ifElse((helper(10372), Var(4)&204) > 0, 20, 0))	; ifElse(COMMAND = "/D", 11, ifElse(COMMAND = "/F" || COMMAND = "/B", 20, 0))
[State -1, Buffered Jump]
type = ChangeState
triggerall = numHelper(10372)
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = StateNo != 40
trigger1 = statetype != A && statetype != L
trigger1 = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
value = ifElse((helper(10372), var(4)&17) > 0, 40, ifElse((helper(10372), Var(4)&34) > 0, 11, ifElse((helper(10372), Var(4)&204) > 0, 20, 0)))	; ifElse(COMMAND = "/U", 40, ifElse(COMMAND = "/D", 11, ifElse(COMMAND = "/F" || COMMAND = "/B", 20, 0)))

;==========================================================================;
;                               AI COMMANDS                                ;
;==========================================================================;
;---------------------------------------------------------------------------
; AI Movement
[State -1, AI Walk]
type = ChangeState
triggerall = AILevel
triggerall = StateType != A
triggerall = Ctrl
triggerall = !InGuardDist
triggerall = StateNo != [10,12]
triggerall = PrevStateNo != [10,12]
triggerall = StateNo != 20
triggerall = PrevStateNo != 20
triggerall = StateNo != 21
triggerall = PrevStateNo != 21
triggerall = StateNo != [120,159]
triggerall = PrevStateNo != [120,159]
trigger1 = Random%5 <= 2
value = 21

[State -1, Avoid Throws] ; Thanks, Warusaki!
type = ChangeState
value = 40
triggerall = AILevel
triggerall = RoundState = 2
triggerall = InGuardDist || P2bodydist X = [-60,120]
triggerall = ctrl || StateNo = 21 || StateNo = 21
triggerall = StateType != A
triggerall = StateNo != 40
trigger1 = EnemyNear, HitDefAttr = SC, NT,ST,HT
	trigger1 = Random <= 300+AILevel*50

[State -1, Guard] ; Thanks, Warusaki and Kamekaze!
type = ChangeState
value = 120
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (StateNo != [120,155]) && (StateNo != [700,720])
triggerall = ctrl
triggerall = !Var(30)
triggerall = InGuardDist
triggerall = !(StateType = A && !((var(5)&256)>0))
;trigger1 = StateNo = 21 && Anim = 21
;trigger2 = EnemyNear, MoveType = A && EnemyNear, HitDefAttr != SCA,AA
;	trigger2 = Random < (110*AILevel)
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0
trigger2 = EnemyNear, HitDefAttr = SCA, NA,SA,HA 
	trigger2 = Random < (110*AILevel)

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge] ; Thanks Warusaki!
type = ChangeState
value = 900
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = statetype != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101

trigger1 = P2BodyDist X >= 150 && (Random = [600,650])

trigger2 = teammode = single && P2BodyDist X >= 180 && P2StateType = L
	trigger2 = Random = [200,480]
ignorehitpause = 0

;---------------------------------------------------------------------------
; MAX Activation
[State -1,  AI MAX Activation] ; Thanks Warusaki!
type = ChangeState
value = 960
triggerall = AILevel
triggerall = Var(10) = 5
triggerall = Power >= 2000
triggerall = P2Life > 150
triggerall = !((100*life/const(data.life))<=20 && P2BodyDist X <= 160)
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2BodyDist X >= 70 && Random <= 400
trigger2 = P2StateType = L && Random <= 550
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
triggerall = AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A

trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2StateType = S || P2StateType = C
;trigger1 = P2MoveType = A
	trigger1 = Random <= 200

trigger2 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = P2BodyDist X = [0,30]
trigger2 = P2BodyDist Y = [-50,-30]
trigger2 = P2StateType = A
trigger2 = P2MoveType = A
	trigger2 = Random <= 200

trigger3 = ctrl || StateNo = 21 || StateNo = 21 || (StateNo = 100 && animelemtime(2) > 1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger3 = P2BodyDist X = [0,35]
trigger3 = P2BodyDist Y = [-50,-25]
trigger3 = P2StateNo = [5000,5070]
trigger3 = P2StateNo != 5040
trigger3 = P2MoveType = H
trigger3 = !NumTarget
	trigger3 = Random < (AILevel+1)*90

trigger4 = ctrl
trigger4 = P2BodyDist X = [0,16]
trigger4 = P2BodyDist Y = [-56,-30] 
trigger4 = P2StateNo = [5000,5070]
trigger4 = P2StateNo != 5040
trigger4 = P2MoveType = H
trigger4 = Random < (AILevel+1)*111

ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Counter Attack
[State -1, AI Counter Attack]
type = ChangeState
value = 2800
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
triggerall = (var(5)&32)>0
trigger1 = !EnemyNear, ctrl && P2BodyDist X <= 20 && Random <= 18-AILevel
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
;
; DON'T
;

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = IfElse(((Var(5)&2)>0),100,102)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = P2MoveType != A
triggerall = ctrl || StateNo = 21 || (StateNo = 21 && Anim = 20)
triggerall = !(Var(30) && NumTarget)
trigger1 = P2BodyDist X = [120,200]
	trigger1 = Random = [300,316+AILevel*3]
trigger2 = P2bodydist X > 200
	trigger2 = Random = [350,410+AILevel*5]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = ctrl || StateNo = 21 || (StateNo = 21 && Anim = 21)
triggerall = !(Var(30) && NumTarget)
triggerall = BackEdgeDist > 60
trigger1 = P2BodyDist X <= 60 && P2MoveType != A
	trigger1 = Random = [460,474+AILevel*2]
trigger2 = P2bodydist X <= 40 && P2StateType = L
	trigger2 = Random = [491,504+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Safe Fall
[State -1, Safe Fall]
type = ChangeState
value = 5201
triggerall = AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071 || StateNo = 5100
triggerall = Pos Y + Vel Y >= 0
triggerall = roundstate = 2
trigger1 = Random < AILevel*125
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
;
; EAGLE CAN'T AFFORD TO BE A SMARTASS
;

;---------------------------------------------------------------------------
; Counter Movement
[State -1, Counter Movement]
type = ChangeState
value = ifElse((P2BodyDist X = [0,12]), 330, 320)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = P2MoveType = A
triggerall = P2BodyDist X = [0,24]
triggerall = Random <= 5
triggerall = GetHitVar(Guarded)
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && Random%6 < 2),300,310)
triggerall = AILevel
triggerall = Var(9) != 3
triggerall = StateType != A
trigger1 = !(Var(30) && numtarget)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2bodydist X >= 150
	trigger1 = Random <= AILevel+2
trigger2 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = P2BodyDist X <= 150
trigger2 = P2MoveType = I
	trigger2 = Random = [240,241+(AILevel/2)]
trigger3 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger3 = P2BodyDist X <= 150
trigger3 = P2MoveType = A
	trigger3 = Random = [430,432+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = ifElse(GameTime%4=0,800,830)
triggerall = AILevel
triggerall = statetype = S
triggerall = ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X = [-22,22]
triggerall = roundstate = 2
triggerall = !Var(30)
trigger1 = P2StateType = S || P2StateType = C
	trigger1 = Random <= 100+AILevel*50
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S
triggerall = P2BodyDist X = [0,69-Const(Size.Ground.Front)]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [280,360+AILevel*3]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-12,84-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-70,0]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [400,420]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = roundstate = 2
triggerall = P2Dist X = [0,125]
triggerall = P2StateType = S 
triggerall = StateNo = 310 && Time = [14,24]
trigger1 = Random = [0,132+AILevel*2]

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = P2BodyDist X != [-30,30]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = (P2BodyDist X = [30,125-Const(Size.Ground.Front)]) || P2MoveType = A
	trigger1 = Random = [500,514+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
;
; NAW
;

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 240
triggerall = AILevel
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = StateNo = 310 && Time = [14,24]
triggerall = P2Dist X = [0,69]
trigger1 = Random = [150,153]

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [0,69-Const(Size.Ground.Front)]
triggerall = P2StateType = S || P2StateType = C
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [530,540+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = AILevel
triggerall = P2BodyDist X != [-30,30]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = (30,69-Const(Size.Ground.Front)]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = (565,575]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,66-Const(Size.Ground.Front)]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = (575,600+AILevel*3]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,80-Const(Size.Ground.Front)]
triggerall = Random = [625,635+AILevel*3]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = 200 || StateNo = 400) && AnimTime = 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-15,84-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-90,0]
triggerall = Random = [660,700+AILevel*4]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = 200 || StateNo = 400) && AnimTime = 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
;
; JUST DON'T DO IT
;

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [733,750+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2Dist X = [40,150]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [760,790]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
;
; MEDIUM IS BETTER

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist Y = [-34,12]
trigger1 = P2BodyDist X = [0,94-Const(Size.Ground.Front)]
	trigger1 = Random < 100+AILevel*10
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist Y = [-62,-35]
trigger1 = P2BodyDist X = [0,94-Const(Size.Ground.Front)]
	trigger1 = Random = [180,200+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist Y = [0,45]
trigger1 = P2BodyDist X = [13,24]
	trigger1 = Random = [220,300]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = Vel X < 0
triggerall = P2BodyDist Y = [0,45]
trigger1 = P2BodyDist X <= 12
	trigger1 = Random = [300,360]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AILevel
triggerall = numHelper(10372)
triggerall = helper(10372), var(5) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = Vel X > 0
triggerall = ctrl
triggerall = P2BodyDist Y = [0,-EnemyNear(0),Const(Size.Head.Pos.Y)+20]
triggerall = P2StateType = S
trigger1 = P2BodyDist X <= 45
	trigger1 = Random = [360,700]
ignorehitpause = 0