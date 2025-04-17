; The CMD file.
;
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "ClimaxHeatAction"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "HeatAction"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "DevilKiller"
command = ~D, D, x+y
time = 20

[Command]
name = "TruckerMajima"
command = ~D, DB, B, DB, D, DF, F, z
time = 20

[Command]
name = "TruckerMajima"
command = ~D, B, D, F, z
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "9mm"
command = ~D, DF, F, x

[Command]
name = "M1985"
command = ~D, DF, F, y

[Command]
name = "MadDogSlugger"
command = ~D, DF, F, z

[Command]
name = "MasterworkDagger"
command = ~D, DB, B, x

[Command]
name = "KomakiSwordsmanship"
command = ~D, DB, B, y

[Command]
name = "HiddenMajima"
command = ~D, DB, B, z

[Command]
name = "DemonicShadow"
command = ~D, DF, F, a

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

name = "recovery";Required (do not remove)
command = a
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
name = "FWD"
command = F
time = 1

[Command]
name = "BACK"
command = B
time = 1

[Command]
name = "UP"
command = U
time = 1

[Command]
name = "DOWN"
command = D
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

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, VarSet]
type = VarSet
triggerall = var(59) < 1
triggerall = roundstate = 2
trigger1 = AILevel > 0
v = 59
value = 1
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
trigger1 = var(59) > 0
trigger1 = roundstate != 2
trigger2 = !ishelper 
trigger2 = AILevel = 0
v = 59
value = 0
ignorehitpause = 1

;===========================================================================
;---------------------------------------------------------------------------
;Dragon of Dojima Reborn (uses one super bar)
[State -1, Dragon of Dojima Reborn]
type = ChangeState
value = 3130
triggerall = var(59) = 0
triggerall = command = "ClimaxHeatAction"
triggerall = power >= 2000 || power >= 1000 && var(4) != 0
triggerall = fvar(2) = 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Essence of Extreme Rush (uses one super bar)
[State -1, Essence of Extreme Rush]
type = ChangeState
value = 3120
triggerall = var(59) = 0
triggerall = command = "ClimaxHeatAction"
triggerall = power >= 2000
triggerall = fvar(2) = 2
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Essence of Extreme Rush (uses one super bar)
[State -1, Essence of Extreme Rush]
type = ChangeState
value = 3110
triggerall = var(59) = 0
triggerall = command = "ClimaxHeatAction"
triggerall = power >= 2000
triggerall = fvar(2) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Essence of Extreme Brawling (uses one super bar)
[State -1, Essence of Extreme Brawling]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "ClimaxHeatAction"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Essence of Sumo Slapping (uses one super bar)
[State -1, Essence of Sumo Slapping]
type = ChangeState
value = 3030
triggerall = var(59) = 0
triggerall = command = "HeatAction"
triggerall = power >= 1000
triggerall = fvar(2) = 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Essence of Torment (uses one super bar)
[State -1, Essence of Torment]
type = ChangeState
value = 3020
triggerall = var(59) = 0
triggerall = command = "HeatAction"
triggerall = power >= 1000
triggerall = fvar(2) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 130 || stateno = 131 || stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153

;---------------------------------------------------------------------------
;Essence of Flying Fist (uses one super bar)
[State -1, Essence of Flying Fist]
type = ChangeState
value = 3010
triggerall = var(59) = 0
triggerall = command = "HeatAction"
triggerall = power >= 1000
triggerall = fvar(2) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101 || stateno = 105 || stateno = 106

;---------------------------------------------------------------------------
;Essence of Face Twisting (uses one super bar)
[State -1, Essence of Face Twisting]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "HeatAction"
triggerall = power >= 1000
triggerall = fvar(2) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 11
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && time >= 12
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 201 && time >= 15
trigger7 = stateno = 201 && movecontact
trigger8 = stateno = 202 && time >= 18
trigger9 = stateno = 202 && movecontact
trigger10 = stateno = 203 && time >= 24
trigger11 = stateno = 203 && movecontact


;---------------------------------------------------------------------------
;Devil Killer (uses one super bar)
[State -1, Devil Killer]
type = ChangeState
value = 3040
triggerall = fvar(2) != 3
triggerall = var(59) = 0
triggerall = command = "DevilKiller"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Marlin Cannon (uses one super bar)
[State -1, Marlin Cannon]
type = ChangeState
value = 3050
triggerall = fvar(2) = 3
triggerall = var(59) = 0
triggerall = command = "DevilKiller"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Komaki Parry (Dragon)
[State -1, Komaki Knockback]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = fvar(2) = 3
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 90
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Komaki Knockback (Dragon)
[State -1, Komaki Knockback]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153

;---------------------------------------------------------------------------
;9mm Automatic Pistol
[State -1, 9mm Automatic Pistol]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "9mm"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;M1985
[State -1, M1985]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "M1985"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Masterwork Dagger
[State -1, Masterwork Dagger]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "MasterworkDagger"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Komaki Swordsmanship
[State -1, Komaki Swordsmanship]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = command = "KomakiSwordsmanship"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Demonic Shadow
[State -1, Demonic Shadow]
type = ChangeState
value = 108
triggerall = var(59) = 0
triggerall = power >= 500
triggerall = fvar(2) = 1
triggerall = var(2) < 5
triggerall = command = "DemonicShadow"
triggerall = p2bodydist x > -16
triggerall = p2bodydist x <= 60
trigger1 = statetype != A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Back (Beast)
[State -1, Roll Back (Beast)]
type = ChangeState
value = 107
triggerall = var(59) = 0
trigger1 = fvar(2) = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Komaki Tiger Drop (Dragon)
[State -1, Komaki Tiger Drop]
type = ChangeState
value = 295
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 160
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy 5-2 (Dragon)
[State -1, Heavy 5]
type = ChangeState
value = 2941
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 2940 && time >= 15
trigger2 = stateno = 2940 && movecontact

;---------------------------------------------------------------------------
;Heavy 5-1 (Dragon)
[State -1, Heavy 5]
type = ChangeState
value = 294
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 283 && time >= 14
trigger2 = stateno = 283 && movecontact

;---------------------------------------------------------------------------
;Heavy 4-2 (Dragon)
[State -1, Heavy 4]
type = ChangeState
value = 2931
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 2930 && time >= 15
trigger2 = stateno = 2930 && movecontact

;---------------------------------------------------------------------------
;Heavy 4-1 (Dragon)
[State -1, Heavy 4]
type = ChangeState
value = 293
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 282 && time >= 14
trigger2 = stateno = 282 && movecontact

;---------------------------------------------------------------------------
;Heavy 3-2 (Dragon)
[State -1, Heavy 3]
type = ChangeState
value = 2921
triggerall = var(59) = 0
triggerall = power >= 250
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 2920 && time >= 15
trigger2 = stateno = 2920 && movecontact

;---------------------------------------------------------------------------
;Heavy 3-1 (Dragon)
[State -1, Heavy 3]
type = ChangeState
value = 292
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 281 && time >= 10
trigger2 = stateno = 281 && movecontact

;---------------------------------------------------------------------------
;Heavy 2-2 (Dragon)
[State -1, Heavy 2]
type = ChangeState
value = 2911
triggerall = var(59) = 0
triggerall = power >= 250
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 2910 && time >= 15
trigger2 = stateno = 2910 && movecontact

;---------------------------------------------------------------------------
;Heavy 2-1 (Dragon)
[State -1, Heavy 2]
type = ChangeState
value = 291
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 3
trigger1 = stateno = 280 && time >= 12
trigger2 = stateno = 280 && movecontact
trigger3 = stateno = 420 && time >= 12
trigger4 = stateno = 420 && movecontact

;---------------------------------------------------------------------------
;Heavy 1 (Dragon)
[State -1, Heavy 1]
type = ChangeState
value = 290
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = fvar(2) = 3
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Light 4 (Dragon)
[State -1, Light 4 (Dragon)]
type = ChangeState
value = 283
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 3
trigger1 = stateno = 282 && time >= 14
trigger2 = stateno = 282 && movecontact

;---------------------------------------------------------------------------
;Light 3 (Dragon)
[State -1, Light 3 (Dragon)]
type = ChangeState
value = 282
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 3
trigger1 = stateno = 281 && time >= 10
trigger2 = stateno = 281 && movecontact

;---------------------------------------------------------------------------
;Light 2 (Dragon)
[State -1, Light 2 (Dragon)]
type = ChangeState
value = 281
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 3
trigger1 = stateno = 280 && time >= 12
trigger2 = stateno = 280 && movecontact
trigger3 = stateno = 420 && time >= 12
trigger4 = stateno = 420 && movecontact

;---------------------------------------------------------------------------
;Light 1 (Dragon)
[State -1, Light 1 (Dragon)]
type = ChangeState
value = 280
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy 3 (Rush)
[State -1, Heavy 3 (Rush)]
type = ChangeState
value = 232
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 1
trigger1 = stateno = 225 && time >= 10
trigger2 = stateno = 225 && movecontact
trigger3 = stateno = 226 && time >= 14
trigger4 = stateno = 226 && movecontact
trigger5 = stateno = 227 && time >= 12
trigger6 = stateno = 227 && movecontact

;---------------------------------------------------------------------------
;Heavy 2 (Rush)
[State -1, Heavy 2 (Rush)]
type = ChangeState
value = 231
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 1
trigger1 = stateno = 220 && time >= 5
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 221 && time >= 7
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 222 && time >= 10
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 223 && time >= 13
trigger8 = stateno = 223 && movecontact
trigger9 = stateno = 224 && time >= 14
trigger10 = stateno = 224 && movecontact
trigger11 = stateno = 401 && time >= 4
trigger12 = stateno = 401 && movecontact

;---------------------------------------------------------------------------
;Light 3 (Beast)
[State -1, Light 3 (Beast)]
type = ChangeState
value = 242
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = fvar(2) = 2
trigger1 = stateno = 2410 && time >= 12
trigger2 = stateno = 2410 && movecontact
trigger3 = stateno = 2411 && time >= 12
trigger4 = stateno = 2411 && movehit && hitcount >= 2
trigger5 = stateno = 2411 && moveguarded

;---------------------------------------------------------------------------
;Light 2 (Beast)
[State -1, Light 2 (Beast)]
type = ChangeState
value = 241
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = fvar(2) = 2
trigger1 = stateno = 2400 && time >= 8
trigger2 = stateno = 2400 && movecontact

;---------------------------------------------------------------------------
;Light 1 (Beast)
[State -1, Light 1 (Beast)]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 2
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Light 8 (Rush)
[State -1, Light 8 (Rush)]
type = ChangeState
value = 227
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 226 && time >= 14
trigger2 = stateno = 226 && movecontact

;---------------------------------------------------------------------------
;Light 7 (Rush)
[State -1, Light 7 (Rush)]
type = ChangeState
value = 226
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 225 && time >= 10
trigger2 = stateno = 225 && movecontact

;---------------------------------------------------------------------------
;Light 6 (Rush)
[State -1, Light 6 (Rush)]
type = ChangeState
value = 225
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 224 && time >= 14
trigger2 = stateno = 224 && movecontact

;---------------------------------------------------------------------------
;Light 5 (Rush)
[State -1, Light 5 (Rush)]
type = ChangeState
value = 224
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 223 && time >= 13
trigger2 = stateno = 223 && movecontact

;---------------------------------------------------------------------------
;Light 4 (Rush)
[State -1, Light 4 (Rush)]
type = ChangeState
value = 223
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 222 && time >= 10
trigger2 = stateno = 222 && movecontact

;---------------------------------------------------------------------------
;Light 3 (Rush)
[State -1, Light 3 (Rush)]
type = ChangeState
value = 222
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 221 && time >= 7
trigger2 = stateno = 221 && movecontact

;---------------------------------------------------------------------------
;Light 2 (Rush)
[State -1, Light 2 (Rush)]
type = ChangeState
value = 221
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
trigger1 = stateno = 220 && time >= 5
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 401 && time >= 4
trigger4 = stateno = 401 && movecontact

;---------------------------------------------------------------------------
;Light 1 (Rush)
[State -1, Light 1 (Rush]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = fvar(2) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 203
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = stateno = 202 && time >= 18
trigger2 = stateno = 202 && movecontact

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 202
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = stateno = 201 && time >= 15
trigger2 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = stateno = 200 && time >= 11
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && time >= 12
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Body Counter (Brawling)
[State -1, Body Counter]
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 0
trigger1 = statetype != A
trigger1 = stateno = 130 || stateno = 131 || stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153

;---------------------------------------------------------------------------
;Lightning Fist (Brawling)
[State -1, Lightning Fist]
type = ChangeState
value = 204
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = fvar(2) = 0
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 90
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != 130
trigger1 = stateno != 131

;---------------------------------------------------------------------------
;Heavy 6
[State -1, Heavy 6]
type = ChangeState
value = 217
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = power >= 250
triggerall = fvar(2) = 0
trigger1 = stateno = 214 && time >= 32
trigger2 = stateno = 214 && movecontact

;---------------------------------------------------------------------------
;Heavy 5
[State -1, Heavy 5]
type = ChangeState
value = 216
triggerall = var(59) = 0
triggerall = fvar(2) = 0
triggerall = command = "y"
triggerall = power >= 250
trigger1 = stateno = 215 && time >= 23
trigger2 = stateno = 215 && movecontact

;---------------------------------------------------------------------------
;Heavy Combo 1
[State -1, Heavy Combo 1]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = fvar(2) = 0
triggerall = command = "y"
triggerall = power >= 250
trigger1 = stateno = 210 && time >= 21
trigger2 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
;Heavy 5
[State -1, Heavy 5]
type = ChangeState
value = 214
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = stateno = 203 && time >= 24
trigger2 = stateno = 203 && movecontact

;---------------------------------------------------------------------------
;Snatching Strike
[State -1, Snatching Strike]
type = ChangeState
value = 2130
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = fvar(2) = 0
triggerall = power >= 500
trigger1 = stateno = 213 && movehit

;---------------------------------------------------------------------------
;Heavy 4
[State -1, Heavy 4]
type = ChangeState
value = 213
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = stateno = 202 && time >= 18
trigger2 = stateno = 202 && movecontact

;---------------------------------------------------------------------------
;Heavy 3
[State -1, Heavy 3]
type = ChangeState
value = 212
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = stateno = 201 && time >= 15
trigger2 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
;Heavy 2
[State -1, Heavy 2]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = stateno = 200 && time >= 11
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && time >= 20
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Feint Punch
[State -1, Feint Punch]
type = ChangeState
value = 235
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Counter Quickstep (Rush)
[State -1, Counter Quickstep]
type = ChangeState
value = 236
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = fvar(2) = 1
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 110
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(5) <= 0

;---------------------------------------------------------------------------
;Heavy 4 (Beast)
[State -1, Heavy 1]
type = ChangeState
value = 246
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = fvar(2) = 2
trigger1 = stateno = 2420 && time >= 12
trigger2 = stateno = 2420 && movecontact
trigger3 = stateno = 2421 && time >= 28
trigger4 = stateno = 2421 && movecontact

;---------------------------------------------------------------------------
;Heavy 3 (Beast)
[State -1, Heavy 1]
type = ChangeState
value = 245
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = fvar(2) = 2
trigger1 = stateno = 2410 && time >= 12
trigger2 = stateno = 2410 && movecontact
trigger3 = stateno = 2411 && time >= 12
trigger4 = stateno = 2411 && movehit && hitcount >= 2
trigger5 = stateno = 2411 && moveguarded

;---------------------------------------------------------------------------
;Heavy 2 (Beast)
[State -1, Heavy 1]
type = ChangeState
value = 244
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = fvar(2) = 2
trigger1 = statetype = S
trigger1 = stateno = 2400 && time >= 8
trigger2 = stateno = 2400 && movecontact

;---------------------------------------------------------------------------
;Heavy 1 (Beast)
[State -1, Heavy 1]
type = ChangeState
value = 243
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = fvar(2) = 2
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy 1 (Rush)
[State -1, Heavy 1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = fvar(2) = 1
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy 1 (Brawling)
[State -1, Heavy 1]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Komaki Evade and Attack (Forward)
[State -1, Komaki Evade and Attack]
type = ChangeState
value = 296
triggerall = var(59) = 0
triggerall = fvar(2) = 3
triggerall = command = "y"
triggerall = stateno = 100
trigger1 = time <= 13
trigger1 = time >= 2

;---------------------------------------------------------------------------
;Komaki Evade and Attack (Back)
[State -1, Komaki Evade and Attack]
type = ChangeState
value = 297
triggerall = var(59) = 0
triggerall = fvar(2) = 3
triggerall = command = "y"
triggerall = stateno = 105
trigger1 = time <= 13
trigger1 = time >= 2

;---------------------------------------------------------------------------
;Dash Heavy
[State -1, Stand Strong Punch]
type = ChangeState
value = 233
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "y"
triggerall = stateno = 100
trigger1 = time <= 13
trigger1 = time >= 2


;---------------------------------------------------------------------------
;Backdash Heavy
[State -1, Stand Strong Punch]
type = ChangeState
value = 234
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "y"
triggerall = stateno = 105
trigger1 = time <= 13
trigger1 = time >= 2

;---------------------------------------------------------------------------
;Dash Heavy
[State -1, Stand Strong Punch]
type = ChangeState
value = 219
triggerall = var(59) = 0
triggerall = fvar(2) = 0
triggerall = command = "y"
triggerall = stateno = 100
trigger1 = time <= 13
trigger1 = time >= 2

;---------------------------------------------------------------------------
;Backdash Heavy
[State -1, Stand Strong Punch]
type = ChangeState
value = 218
triggerall = var(59) = 0
triggerall = fvar(2) = 0
triggerall = command = "y"
triggerall = stateno = 105
trigger1 = time <= 13
trigger1 = time >= 2

;---------------------------------------------------------------------------
;Style Change (Brawling)
[State -1, Style Change]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = var(3) = 0
triggerall = fvar(2) != 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "hold_c"
trigger1 = command = "UP"
trigger2 = command = "c"
trigger2 = command = "holdup"  

;---------------------------------------------------------------------------
;Style Change (Rush)
[State -1, Style Change]
type = ChangeState
value = 251
triggerall = var(59) = 0
triggerall = var(3) = 0
triggerall = fvar(2) != 1
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "hold_c"
trigger1 = facing = 1
trigger1 = command = "BACK"
trigger2 = command = "hold_c"
trigger2 = facing = -1
trigger2 = command = "FWD"
trigger3 = facing = 1
trigger3 = command = "c"
trigger3 = command = "holdback"  
trigger4 = facing = -1
trigger4 = command = "c"
trigger4 = command = "holdfwd"  


;---------------------------------------------------------------------------
;Style Change (Beast)
[State -1, Style Change]
type = ChangeState
value = 252
triggerall = var(59) = 0
triggerall = var(3) = 0
triggerall = fvar(2) != 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = facing = -1
trigger1 = command = "BACK"
trigger1 = command = "hold_c"
trigger2 = facing = 1
trigger2 = command = "FWD"
trigger2 = command = "hold_c"
trigger3 = facing = -1
trigger3 = command = "c"
trigger3 = command = "holdback"  
trigger4 = facing = 1
trigger4 = command = "c"
trigger4 = command = "holdfwd"  


;---------------------------------------------------------------------------
;Style Change (Dragon)
[State -1, Style Change]
type = ChangeState
value = 253
triggerall = var(59) = 0
triggerall = var(3) = 0
triggerall = fvar(2) != 3
triggerall = var(31) != 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "hold_c"
trigger1 = command = "DOWN"  
trigger2 = command = "c"
trigger2 = command = "holddown"  

;---------------------------------------------------------------------------
;Dodge Forward
[State -1, Dodge Forward]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Back (Beast)
[State -1, Roll Back (Beast)]
type = ChangeState
value = 107
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "a"
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dodge Back
[State -1, Dodge Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Cyclone Sling (Beast)
[State -1, Cyclone Sling (Beast)]
type = ChangeState
value = 860
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = stateno = 100

;---------------------------------------------------------------------------
;Guard Breaker (Rush)
[State -1, Guard Breaker]
type = ChangeState
value = 850
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
triggerall = var(6) <= 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light (Dragon)
[State -1, Crouch Light]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = fvar(2) = 3
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light (Rush)
[State -1, Crouch Light]
type = ChangeState
value = 401
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Firecracker Heat Action
[State -1, Firecracker Heat Action]
type = ChangeState
value = 903
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "HeatAction"
triggerall = numtarget
triggerall = power >= 1000
trigger1 = stateno = 900 && movehit
trigger2 = stateno = 901 && movehit
trigger3 = stateno = 902 && movehit

;---------------------------------------------------------------------------
;Firecracker (Beast)
[State -1, Small Weapon (Beast)]
type = ChangeState
value = 902
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "x"
trigger1 = stateno = 901 && time >= 19
trigger2 = stateno = 901 && movecontact

;---------------------------------------------------------------------------
;Firecracker (Beast)
[State -1, Small Weapon (Beast)]
type = ChangeState
value = 901
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "x"
trigger1 = stateno = 900 && time >= 19
trigger2 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;Pipe Heat Action
[State -1, Pipe Heat Action]
type = ChangeState
value = 913
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "HeatAction"
triggerall = power >= 1000
trigger1 = stateno = 910 && time >= 16
trigger2 = stateno = 910 && movecontact
trigger3 = stateno = 911 && time >= 18
trigger4 = stateno = 911 && movecontact
trigger5 = stateno = 912 && time >= 23
trigger6 = stateno = 912 && movecontact

;---------------------------------------------------------------------------
;Pipe (Beast)
[State -1, Small Weapon (Beast)]
type = ChangeState
value = 912
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "x"
trigger1 = stateno = 911 && time >= 18
trigger2 = stateno = 911 && movecontact

;---------------------------------------------------------------------------
;Pipe (Beast)
[State -1, Small Weapon (Beast)]
type = ChangeState
value = 911
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "x"
trigger1 = stateno = 910 && time >= 16
trigger2 = stateno = 910 && movecontact

;---------------------------------------------------------------------------
;Small Weapon (Beast)
[State -1, Small Weapon (Beast)]
type = ChangeState
value = 900+((random%2)*10)
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 2420 && time >= 12
trigger3 = stateno = 2420 && movecontact
trigger4 = stateno = 2421 && time >= 28
trigger5 = stateno = 2421 && movecontact
trigger6 = stateno = 2410 && time >= 12
trigger7 = stateno = 2410 && movecontact
trigger8 = stateno = 2411 && time >= 12
trigger9 = stateno = 2411 && movehit && hitcount >= 2
trigger10 = stateno = 2411 && moveguarded
trigger11 = stateno = 2400 && time >= 8
trigger12 = stateno = 2400 && movecontact

;---------------------------------------------------------------------------
;Crouch Light (Brawling)
[State -1, Crouch Light]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Motorcycle Heat Action (Beast)
[State -1, Motorcycle]
type = ChangeState
value = 933
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "HeatAction"
triggerall = power >= 1000
trigger1 = stateno = 930 && time >= 26 && time <= 40
trigger2 = stateno = 930 && movecontact && time <= 40
trigger3 = stateno = 931 && time >= 37
trigger4 = stateno = 931 && movecontact

;---------------------------------------------------------------------------
;Sign Heat Action (Beast)
[State -1, Sign]
type = ChangeState
value = 923
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "HeatAction"
triggerall = power >= 1000
trigger1 = stateno = 920 && time >= 24 && time <= 38
trigger2 = stateno = 920 && movecontact && time <= 38
trigger3 = stateno = 921 && time >= 30
trigger4 = stateno = 921 && movecontact
trigger5 = stateno = 922 && time >= 35 && time <= 54
trigger6 = stateno = 922 && movecontact && time <= 54

;---------------------------------------------------------------------------
;Motorcycle (Beast)
[State -1, Motorcycle]
type = ChangeState
value = 932
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "y"
trigger1 = stateno = 931 && time >= 37
trigger2 = stateno = 931 && movecontact

;---------------------------------------------------------------------------
;Sign (Beast)
[State -1, Motorcycle]
type = ChangeState
value = 922
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "y"
trigger1 = stateno = 921 && time >= 30
trigger2 = stateno = 921 && movecontact

;---------------------------------------------------------------------------
;Sign (Beast)
[State -1, Motorcycle]
type = ChangeState
value = 921
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "y"
trigger1 = stateno = 920 && time >= 24 && time <= 38
trigger2 = stateno = 920 && movecontact && time <= 38

;---------------------------------------------------------------------------
;Motorcycle (Beast)
[State -1, Motorcycle]
type = ChangeState
value = 931
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "y"
trigger1 = stateno = 930 && time >= 26 && time <= 40
trigger2 = stateno = 930 && movecontact && time <= 40

;---------------------------------------------------------------------------
;Large Weapon (Beast)
[State -1, Motorcycle]
type = ChangeState
value = 920+((random%2)*10)
triggerall = var(59) = 0
triggerall = fvar(2) = 2
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 2420 && time >= 12
trigger3 = stateno = 2420 && movecontact
trigger4 = stateno = 2421 && time >= 28
trigger5 = stateno = 2421 && movecontact
trigger6 = stateno = 2410 && time >= 12
trigger7 = stateno = 2410 && movecontact
trigger8 = stateno = 2411 && time >= 12
trigger9 = stateno = 2411 && movehit && hitcount >= 2
trigger10 = stateno = 2411 && moveguarded
trigger11 = stateno = 2400 && time >= 8
trigger12 = stateno = 2400 && movecontact


;---------------------------------------------------------------------------
;Bowling Ball
[State -1, Bowling Ball]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = fvar(2) = 3
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch 2
[State -1, Jump Light Punch 2]
type = ChangeState
value = 601
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno = 600
trigger1 = fvar(2) = 1
trigger1 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Guard Breaker
[State -1, Jump Guard Breaker]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = fvar(2) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Throw
[State -1, Jump Throw]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = fvar(2) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;A. I'm not gonna lie. I didn't expect to put this much work into Kiryu

 ;------STYLE CHANGE------

;Style Change (Rush)
[State -1, AI]
type = ChangeState
value = 251
triggerall = var(59) != 0
triggerall = var(3) = 0
triggerall = fvar(2) != 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
trigger1 = fvar(2) = 2 ;Beast is too reliant on throws/custom states while Rush uses them sparingly.
trigger1 = ctrl
trigger1 = fvar(4) > 6

;Style Change (Dragon)
[State -1, AI]
type = ChangeState
value = 253
triggerall = var(59) != 0
triggerall = var(3) = 0
triggerall = fvar(2) != 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
trigger1 = var(31) != 0
trigger1 = fvar(2) = 2 
trigger1 = ctrl
trigger1 = p2bodydist x >= 160
trigger1 = random <= (AILevel * 195)
trigger1 = random <= (AILevel * 128)

;Style Change (Brawler/Rush)
[State -1, AI]
type = ChangeState
value = 250+(random%2)
triggerall = var(59) != 0
triggerall = var(3) = 0
triggerall = fvar(2) != 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
trigger1 = fvar(2) = 2 
trigger1 = ctrl
trigger1 = p2bodydist x >= 160
trigger1 = random <= (AILevel * 73)
trigger1 = random <= (AILevel * 56)

 ;------HEAT ACTIONS------

;Marlin Cannon
[State -1, AI]
type = ChangeState
value = 3050
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 55) && random <= (AILevel * 32)
triggerall = power >= 1000
triggerall = fvar(13) = 0
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 83)
trigger1 = p2bodydist x >= 90
trigger1 = p2bodydist y >= -40
trigger1 = ctrl
trigger1 = enemynear, movetype = A
trigger1 = enemynear, life <= 300
trigger2 = ctrl
trigger2 = enemynear, movetype = A
trigger2 = random <= (AILevel * 54)
trigger2 = random <= (AILevel * 37)
trigger2 = AIlevel >= 7 || random <= (AILevel * 74)
trigger2 = p2bodydist x >= 60
trigger2 = p2bodydist y >= -40
trigger3 = ctrl
trigger3 = random <= (AILevel * 75)
trigger3 = random <= (AILevel * 50)
trigger3 = AIlevel >= 7 || random <= (AILevel * 84)
trigger3 = p2bodydist x >= 70
trigger3 = enemynear, statetype != A || p2bodydist y <= -50
trigger3 = power >= 2500

;Devil Killer
[State -1, AI]
type = ChangeState
value = 3040
triggerall = fvar(2) != 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 55) && random <= (AILevel * 32)
triggerall = power >= 1000
triggerall = !numhelper(3041) ;Avoid spamming the move to conserve meter for other moves
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 63)
trigger1 = p2bodydist x > 130
trigger1 = p2bodydist y >= -30
trigger1 = ctrl
trigger1 = enemynear, movetype = A
trigger1 = enemynear, life <= 334

;Essence of Sumo Slapping
[State -1, AI]
type = ChangeState
value = 3030
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(2) = 3
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 1000
triggerall = !numhelper(260)
triggerall = enemynear, movetype != H
trigger1 = ctrl
trigger1 = enemynear, movetype = A
trigger1 = random <= (AILevel * 44)
trigger1 = random <= (AILevel * 27)
trigger1 = AIlevel >= 7 || random <= (AILevel * 84)
trigger1 = p2bodydist x <= 170
trigger1 = p2bodydist y >= -100
trigger2 = ctrl
trigger2 = random <= (AILevel * 55)
trigger2 = random <= (AILevel * 40)
trigger2 = AIlevel >= 7 || random <= (AILevel * 84)
trigger2 = p2bodydist x <= 140
trigger2 = p2bodydist y >= -100
trigger2 = enemynear, statetype != A || p2bodydist y <= -50
trigger2 = power >= 2500

;Essence of Extreme Brawling
[State -1, AI]
type = ChangeState
value = 3100
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(2) = 0
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 2000
triggerall = !numhelper(260)
trigger1 = ctrl
trigger1 = random <= (AILevel * 96)
trigger1 = random <= (AILevel * 81)
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist y >= -60
trigger1 = enemynear, movetype = A || enemynear, stateno = 130 || enemynear, stateno = 131 || enemynear, stateno = 150 || enemynear, stateno = 151 || enemynear, stateno = 152
trigger2 = power >= 2500
trigger2 = ctrl
trigger2 = random <= (AILevel * 55)
trigger2 = random <= (AILevel * 43)
trigger2 = p2bodydist x <= 85
trigger2 = p2bodydist y >= -50

;Essence of Face Twisting
[State -1, AI]
type = ChangeState
value = 3000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(2) = 0
triggerall = fvar(4) < 6
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 1000
trigger1 = stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 400
trigger1 = moveguarded
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 50)
trigger1 = AIlevel >= 7 || random <= (AILevel * 74)
trigger2 = ctrl
trigger2 = random <= (AILevel * 76)
trigger2 = random <= (AILevel * 61)
trigger2 = p2bodydist x <= 60
trigger2 = p2bodydist y >= -90
trigger2 = enemynear, stateno = 130 || enemynear, stateno = 131 || enemynear, stateno = 150 || enemynear, stateno = 151 || enemynear, stateno = 152

;Essence of Flying Fist
[State -1, AI]
type = ChangeState
value = 3010
triggerall = statetype != A
triggerall = fvar(2) = 1
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 1000
trigger1 = stateno = 100 || stateno = 105
trigger1 = enemynear, movetype = A
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 50)
trigger1 = AIlevel >= 7 || random <= (AILevel * 74)
trigger1 = p2bodydist x <= 110
trigger2 = ctrl || stateno = 100 || stateno = 105
trigger2 = enemynear, teammode = simul
trigger2 = p2bodydist x <= 110
trigger2 = random <= (AILevel * 36)
trigger2 = random <= (AILevel * 51)

;Essence of Torment
[State -1, AI]
type = ChangeState
value = 3020
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(2) = 2
triggerall = fvar(4) < 6
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist x <= 80
triggerall = p2bodydist y >= -70
trigger1 = ctrl
trigger1 = enemynear, movetype = A
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 60)
trigger2 = stateno = 130 || stateno = 131 || stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
trigger2 = random <= (AILevel * 46)
trigger2 = random <= (AILevel * 71)

;Dragon of Dojima Reborn
[State -1, AI]
type = ChangeState
value = 3130
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(2) = 3
triggerall = fvar(4) < 6
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = random <= (AILevel * 101)
trigger1 = random <= (AILevel * 87)
trigger1 = p2bodydist x >= -20
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist y >= -80
trigger1 = enemynear, movetype = A
trigger2 = ctrl
trigger2 = random <= (AILevel * 76)
trigger2 = random <= (AILevel * 89)
trigger2 = p2bodydist x >= -20
trigger2 = p2bodydist x <= 80
trigger2 = p2bodydist y >= -100
trigger3 = ctrl
trigger3 = random <= (AILevel * 125)
trigger3 = random <= (AILevel * 94)
trigger3 = p2bodydist x >= -20
trigger3 = p2bodydist x <= 80
trigger3 = enemynear, stateno = 130 || enemynear, stateno = 131 || enemynear, stateno = 150 || enemynear, stateno = 151 || enemynear, stateno = 152

;Essence of Extreme Rush
[State -1, AI]
type = ChangeState
value = 3110
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(2) = 1
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 2000
triggerall = !numhelper(260)
trigger1 = ctrl
trigger1 = random <= (AILevel * 96)
trigger1 = random <= (AILevel * 81)
trigger1 = p2bodydist x >= -20
trigger1 = p2bodydist x <= 95
trigger1 = p2bodydist y >= -100
trigger1 = enemynear, movetype = A
trigger2 = power >= 2500
trigger2 = ctrl
trigger2 = random <= (AILevel * 65)
trigger2 = random <= (AILevel * 73)
trigger2 = p2bodydist x >= -20
trigger2 = p2bodydist x <= 95
trigger2 = p2bodydist y >= -100
trigger3 = ctrl
trigger3 = random <= (AILevel * 96)
trigger3 = random <= (AILevel * 81)
trigger3 = p2bodydist x >= -20
trigger3 = p2bodydist x <= 95
trigger3 = enemynear, stateno = 130 || enemynear, stateno = 131 || enemynear, stateno = 150 || enemynear, stateno = 151 || enemynear, stateno = 152

;Essence of Extreme Beast
[State -1, AI]
type = ChangeState
value = 3120
triggerall = statetype != A
triggerall = fvar(2) = 2
triggerall = fvar(4) < 6
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 65) && random <= (AILevel * 42)
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = random <= (AILevel * 56)
trigger1 = random <= (AILevel * 31)
trigger1 = p2bodydist x >= -20
trigger1 = p2bodydist x <= 90
trigger1 = p2bodydist y >= -50
trigger1 = enemynear, life > 456
trigger2 = ctrl
trigger2 = random <= (AILevel * 86)
trigger2 = random <= (AILevel * 71)
trigger2 = p2bodydist x >= -20
trigger2 = p2bodydist x <= 90
trigger2 = p2bodydist y >= -50
trigger2 = enemynear, life <= 456 || enemynear, movetype = A

 ;------NEUTRAL (All Styles)------

;Taunt
[State -1, AI]
type = ChangeState
value = 195
triggerall = var(59) != 0
triggerall = var(6) <= 0
triggerall = statetype != A
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = power < 1900
trigger1 = life >= 358
trigger1 = ctrl
trigger1 = enemynear, statetype = L
trigger1 = random <= (AILevel * 90)
trigger1 = random <= (AILevel * 180)

;Dash Forward
[State -1, AI]
type = ChangeState
value = 100
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 30)
trigger1 = p2bodydist x >= 120
trigger1 = numhelper(260)
trigger1 = helper(260), stateno != 2600

;Air Dodge
[State -1, AI]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = enemynear, movetype = A
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 57)
trigger1 = p2bodydist x <= 70
trigger1 = p2bodydist y >= -80
trigger1 = p2bodydist y <= 50

;Air Heavy
[State -1, AI]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = enemynear, movetype = A
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 57)
trigger1 = p2bodydist x > 40
trigger1 = p2bodydist x <= 96
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 30

 ;------NEUTRAL (Dragon)------

;Komaki Parry
[State -1, AI]
type = ChangeState
value = 1110
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 45) && random <= (AILevel * 18)
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 90
trigger1 = ctrl
trigger1 = random <= (AILevel * ceil((lifemax - life)*0.1))
trigger1 = random <= (AILevel * ceil((lifemax - life)*0.125))
trigger1 = power >= 1000
trigger1 = power < 2000
trigger1 = fvar(4) < 6
trigger2 = ctrl
trigger2 = random <= (AILevel * 35)
trigger2 = random <= (AILevel * 25)
trigger2 = p2bodydist x <= 40
trigger2 = p2bodydist y >= -70
trigger2 = fvar(4) < 6

;Komaki Tiger Drop
[State -1, AI]
type = ChangeState
value = 295
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 41) && random <= (AILevel * 28)
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 160
trigger1 = ctrl
trigger1 = random <= (AILevel * ceil((lifemax - life)*0.125))
trigger1 = random <= (AILevel * ceil((lifemax - life)*0.35))
trigger2 = enemynear, statetype != L
trigger2 = ctrl
trigger2 = random <= (AILevel * 32)
trigger2 = random <= (AILevel * 21)
trigger2 = p2bodydist x > 57
trigger2 = p2bodydist x <= 100
trigger2 = p2bodydist y >= -80
trigger3 = enemynear, statetype = L
trigger3 = ctrl
trigger3 = random <= (AILevel * 40)
trigger3 = random <= (AILevel * 28)
trigger3 = p2bodydist x > -30
trigger3 = p2bodydist x <= 100

;Heavy 1
[State -1, AI]
type = ChangeState
value = 290
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 70) && random <= (AILevel * 68)
trigger1 = enemynear, statetype != L
trigger1 = ctrl
trigger1 = random <= (AILevel * 52)
trigger1 = random <= (AILevel * 36)
trigger1 = p2bodydist x > 57
trigger1 = p2bodydist x <= 100
trigger1 = p2bodydist y >= -80
trigger2 = enemynear, statetype = L
trigger2 = ctrl
trigger2 = random <= (AILevel * 73)
trigger2 = random <= (AILevel * 48)
trigger2 = p2bodydist x > -30
trigger2 = p2bodydist x <= 100

;Throw
[State -1, AI]
type = ChangeState
value = 800
triggerall = fvar(2) = 3
triggerall = fvar(4) < 6
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = enemynear, movetype != H
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 25)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -70

;Bowling Ball
[State -1, AI]
type = ChangeState
value = 430
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype = L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 41)
trigger1 = random <= (AILevel * 10)
trigger1 = p2bodydist x > 120
trigger1 = p2bodydist y >= -90

;Bowling Ball or 9mm
[State -1, AI]
type = ChangeState
value = 430+((random%2)*570)
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 42)
trigger1 = random <= (AILevel * 11)
trigger1 = p2bodydist x > 120
trigger1 = p2bodydist y >= -90

;Inventory Weapon
[State -1, AI]
type = ChangeState
value = 1200+((random%2)*10)
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 58)
trigger1 = random <= (AILevel * 17)
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist x <= 120
trigger1 = p2bodydist y >= -90

;Light Whatever
[State -1, AI]
type = ChangeState
value = 280+((random%2)*140)
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)
trigger1 = p2bodydist x <= 57
trigger1 = p2bodydist y >= -30

;Light 1
[State -1, AI]
type = ChangeState
value = 280
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)
trigger1 = p2bodydist x <= 57
trigger1 = p2bodydist y < -30
trigger1 = p2bodydist y >= -70

;Komaki Evade and Attack (B)
[State -1, AI]
type = ChangeState
value = 109+((random%2)*187)
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = p2bodydist x <= 50
trigger1 = enemynear, movetype = A
trigger1 = stateno = 105
trigger1 = time <= 13
trigger1 = time >= 2
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

;Komaki Dharma Tumbler
[State -1, AI]
type = ChangeState
value = 109+(random%2)
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = p2bodydist x > 50
trigger1 = enemynear, movetype = A
trigger1 = stateno = 105
trigger1 = time <= 13
trigger1 = time >= 2
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

;Komaki Evade and Attack or Dharma Tumbler (F)
[State -1, AI]
type = ChangeState
value = 110+((random%2)*186)
triggerall = fvar(2) = 3
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = enemynear, movetype = A
trigger1 = stateno = 100
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 47)
trigger1 = time <= 13
trigger1 = time >= 2
trigger1 = p2bodydist x <= 60
trigger1 = p2bodydist y >= -60

;Air Throw
[State -1, AI]
type = ChangeState
value = 640
triggerall = fvar(2) = 3
triggerall = fvar(4) < 6
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 48)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Air Light
[State -1, AI]
type = ChangeState
value = 600
triggerall = fvar(2) = 3
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 80)
trigger1 = random <= (AILevel * 65)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Komaki Dharma Tumbler
[State -1, AI]
type = ChangeState
value = 109+(random%2)
triggerall = fvar(2) = 3
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = life <= 358
trigger1 = enemynear, movetype = A
trigger1 = stateno = 100
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 57)
trigger1 = time <= 13
trigger1 = time >= 2
trigger1 = p2bodydist x <= 60
trigger1 = p2bodydist y >= -60


 ;------Dragon Combo 1: Light 1 Contact------

;Heavy 2-1
[State -1, AI]
type = ChangeState
value = 291
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 280 || stateno = 420
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)
trigger1 = enemynear, life <= 54
trigger2 = power >= 250
trigger2 = p2statetype != L
trigger2 = stateno = 280 || stateno = 420
trigger2 = movehit
trigger2 = random <= (AILevel * 155)
trigger2 = random <= (AILevel * 183)
trigger2 = enemynear, life <= 146

;Heavy 2-2
[State -1, AI]
type = ChangeState
value = 2911
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 250
trigger1 = p2statetype != L
trigger1 = stateno = 2910
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)

;Light 2
[State -1, AI]
type = ChangeState
value = 281
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 280 || stateno = 420
trigger1 = movecontact
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)
trigger2 = enemynear, movetype = H || random <= (AILevel * 89)
trigger2 = stateno = 280
trigger2 = time >= 11
trigger2 = random <= (AILevel * 94)
trigger2 = random <= (AILevel * 130)
trigger3 = enemynear, movetype = H || random <= (AILevel * 89)
trigger3 = stateno = 420
trigger3 = time >= 12
trigger3 = random <= (AILevel * 94)
trigger3 = random <= (AILevel * 130)

;Heavy 3-1
[State -1, AI]
type = ChangeState
value = 292
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 281
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)
trigger1 = enemynear, life <= 54
trigger2 = power >= 250
trigger2 = p2statetype != L
trigger2 = stateno = 281
trigger2 = movehit
trigger2 = random <= (AILevel * 155)
trigger2 = random <= (AILevel * 183)
trigger2 = enemynear, life <= 143

;Heavy 3-2
[State -1, AI]
type = ChangeState
value = 2921
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 250
trigger1 = p2statetype != L
trigger1 = stateno = 2920
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)

;Light 3
[State -1, AI]
type = ChangeState
value = 282
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 281
trigger1 = movehit
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

;Heavy 4-1
[State -1, AI]
type = ChangeState
value = 293
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 282
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)
trigger1 = enemynear, life <= 57
trigger2 = power >= 250
trigger2 = p2statetype != L
trigger2 = stateno = 282
trigger2 = movehit
trigger2 = random <= (AILevel * 155)
trigger2 = random <= (AILevel * 183)
trigger2 = enemynear, life <= 142

;Heavy 4-2
[State -1, AI]
type = ChangeState
value = 2931
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 250
trigger1 = p2statetype != L
trigger1 = stateno = 2930
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)

;Back off if guarded or enemy powers through the move
[State -1, AI]
type = ChangeState
value = 105
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 280 && time >= 8
trigger1 = enemynear, movetype = A
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)
trigger2 = stateno = 281 && time >= 10
trigger2 = enemynear, movetype = A
trigger2 = random <= (AILevel * 94)
trigger2 = random <= (AILevel * 130)
trigger3 = stateno = 281
trigger3 = moveguarded
trigger3 = random <= (AILevel * 94)
trigger3 = random <= (AILevel * 130)
trigger4 = stateno = 282 && time >= 11
trigger4 = enemynear, movetype = A
trigger4 = random <= (AILevel * 94)
trigger4 = random <= (AILevel * 130)
trigger5 = stateno = 282
trigger5 = moveguarded
trigger5 = random <= (AILevel * 94)
trigger5 = random <= (AILevel * 130)
trigger6 = stateno = 283 && time >= 12
trigger6 = enemynear, movetype = A
trigger6 = random <= (AILevel * 94)
trigger6 = random <= (AILevel * 130)
trigger7 = stateno = 283
trigger7 = moveguarded
trigger7 = random <= (AILevel * 94)
trigger7 = random <= (AILevel * 130)

;Light 4
[State -1, AI]
type = ChangeState
value = 283
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 282
trigger1 = movehit
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

;Heavy 5-1
[State -1, AI]
type = ChangeState
value = 294
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 283
trigger1 = movehit
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)


;Heavy 5-2
[State -1, AI]
type = ChangeState
value = 2941
triggerall = fvar(2) = 3
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 250
trigger1 = p2statetype != L
trigger1 = stateno = 2940
trigger1 = movehit
trigger1 = random <= (AILevel * 155)
trigger1 = random <= (AILevel * 183)

;Komaki Knockback
[State -1, AI]
type = ChangeState
value = 1100
triggerall = fvar(2) = 3
triggerall = var(59) != 0
trigger1 = statetype != A
trigger1 = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
trigger1 = random <= (AILevel * 49)
trigger1 = random <= (AILevel * 28)
trigger1 = p2bodydist x > -15
trigger1 = p2bodydist x <= 75
trigger1 = p2bodydist y >= -160

 ;------Dragon Combo 2: Air ""Combo""------

;Light 2
[State -1, AI]
type = ChangeState
value = 610
triggerall = fvar(2) = 3
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 600
trigger1 = movehit
trigger1 = random <= (AILevel * 129)
trigger1 = random <= (AILevel * 100)

 ;------NEUTRAL (Brawling)------

;Inventory Weapon
[State -1, AI]
type = ChangeState
value = 1000+((random%2)*10)
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 30)
trigger1 = p2bodydist x > 120
trigger1 = p2bodydist y >= -90

;Inventory Weapon
[State -1, AI]
type = ChangeState
value = 1200+((random%2)*10)
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 30)
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist x <= 120
trigger1 = p2bodydist y >= -90

;Throw
[State -1, AI]
type = ChangeState
value = 800
triggerall = fvar(2) = 0
triggerall = fvar(4) < 6
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = enemynear, movetype != H
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 30)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -70

;Heavy 1
[State -1, AI]
type = ChangeState
value = 210
triggerall = fvar(2) = 0
triggerall = fvar(4) < 6
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = enemynear, movetype = H
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 30)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -70

;Air Throw
[State -1, AI]
type = ChangeState
value = 640
triggerall = fvar(2) = 0
triggerall = fvar(4) < 6
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 57)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Air Light
[State -1, AI]
type = ChangeState
value = 600
triggerall = fvar(2) = 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Light 1
[State -1, AI]
type = ChangeState
value = 200+((random%2)*200)
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 50)
trigger1 = p2bodydist x <= 54
trigger1 = p2bodydist y >= -70

;Lightning Fist (Covers the conditions for Heavy 1 below as well due to it being the same command and dependance on enemy's movetype)
[State -1, AI]
type = ChangeState
value = 204
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = enemynear, movetype = A
triggerall = p2bodydist x <= 90
trigger1 = ctrl
trigger1 = random <= (AILevel * 52)
trigger1 = random <= (AILevel * 36)
trigger1 = p2bodydist x > -20
trigger1 = p2bodydist x <= 100
trigger1 = p2bodydist y >= -80
trigger2 = !numhelper(260)
trigger2 = ctrl
trigger2 = random <= (AILevel * ceil((lifemax - life)*0.1))
trigger2 = random <= (AILevel * ceil((lifemax - life)*0.15))


;Heavy 1
[State -1, AI]
type = ChangeState
value = 210
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 70) && random <= (AILevel * 58)
trigger1 = enemynear, statetype != L
trigger1 = power >= 500
trigger1 = ctrl
trigger1 = random <= (AILevel * 52)
trigger1 = random <= (AILevel * 26)
trigger1 = p2bodydist x > 54
trigger1 = p2bodydist x <= 100
trigger1 = p2bodydist y >= -80
trigger2 = enemynear, statetype = L
trigger2 = power >= 500
trigger2 = ctrl
trigger2 = random <= (AILevel * 45)
trigger2 = random <= (AILevel * 18)
trigger2 = p2bodydist x > -30
trigger2 = p2bodydist x <= 100

;Body Counter
[State -1, AI]
type = ChangeState
value = 205
triggerall = fvar(2) = 0
triggerall = var(59) != 0
trigger1 = statetype != A
trigger1 = stateno = 130 || stateno = 131 || stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
trigger1 = random <= (AILevel * 42)
trigger1 = random <= (AILevel * 26)
trigger1 = p2bodydist x > -15
trigger1 = p2bodydist x <= 45
trigger1 = p2bodydist y >= -85

 ;------Brawling Combo 1: Light 1 Contact------

;Light 2
[State -1, AI]
type = ChangeState
value = 201
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = p2statetype != L
trigger1 = stateno = 200 || stateno = 400
trigger1 = movecontact
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)
trigger2 = enemynear, movetype = H || random <= (AILevel * 89)
trigger2 = stateno = 200
trigger2 = time >= 11
trigger2 = random <= (AILevel * 94)
trigger2 = random <= (AILevel * 130)
trigger3 = enemynear, movetype = H || random <= (AILevel * 89)
trigger3 = stateno = 400
trigger3 = time >= 12
trigger3 = random <= (AILevel * 94)
trigger3 = random <= (AILevel * 130)

;Light 3
[State -1, AI]
type = ChangeState
value = 202
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 201
trigger1 = movecontact
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

;Heavy 4
[State -1, AI]
type = ChangeState
value = 213
triggerall = fvar(4) < 6
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 500
trigger1 = stateno = 202
trigger1 = movecontact
trigger1 = random <= (AILevel * 54)
trigger1 = random <= (AILevel * 40)

;Snatching Strike
[State -1, AI]
type = ChangeState
value = 2130
triggerall = fvar(4) < 6
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 500
trigger1 = stateno = 213
trigger1 = movehit
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

;Light 4
[State -1, AI]
type = ChangeState
value = 203
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 202
trigger1 = movecontact
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

;Heavy 5
[State -1, AI]
type = ChangeState
value = 214
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 203
trigger1 = movehit
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

;Heavy 6
[State -1, AI]
type = ChangeState
value = 217
triggerall = fvar(4) < 6
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
triggerall = power >= 250
trigger1 = stateno = 214
trigger1 = movehit
trigger1 = random <= (AILevel * 94)
trigger1 = random <= (AILevel * 130)

 ;------Brawling Combo 2: Heavy Combo------

;Heavy Combo 1
[State -1, AI]
type = ChangeState
value = 215
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = power >= 250
trigger1 = stateno = 210
trigger1 = movehit

;Heavy Combo 2
[State -1, AI]
type = ChangeState
value = 216
triggerall = fvar(2) = 0
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = power >= 250
trigger1 = stateno = 215
trigger1 = movehit

 ;------Brawling Combo 3: Air ""Combo""------

;Light 2
[State -1, AI]
type = ChangeState
value = 610
triggerall = fvar(2) = 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 600
trigger1 = movehit

 ;------NEUTRAL (Rush)------

;Demonic Shadow
[State -1, AI]
type = ChangeState
value = 108
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = power >= 500
triggerall = var(2) < 5
triggerall = p2bodydist x > -16
triggerall = p2bodydist x <= 60
triggerall = var(5) <= 0
triggerall = var(15) <= 0
trigger1 = enemynear, movetype = A
trigger1 = ctrl
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 40)

;Counter Quickstep
[State -1, AI]
type = ChangeState
value = 236
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = var(2) < 5
triggerall = p2bodydist x > -16
triggerall = p2bodydist x <= 110
triggerall = var(15) <= 0
trigger1 = enemynear, movetype = A
trigger1 = ctrl
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 40)
trigger1 = var(5) <= 0
trigger1 = var(15) <= 0

;Guardbreaker
[State -1, AI]
type = ChangeState
value = 850
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = enemynear, stateno = 130 || enemynear, stateno = 131 || enemynear, stateno = 150 || enemynear, stateno = 151 || enemynear, stateno = 152 || enemynear, stateno = 153
trigger1 = ctrl
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 40)
trigger1 = p2bodydist x <= 85
trigger1 = p2bodydist y >= -55

;Light 1
[State -1, AI]
type = ChangeState
value = 220+((random%2)*181)
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 60) && random <= (AILevel * 48)
trigger1 = ctrl
trigger1 = random <= (AILevel * 60)
trigger1 = random <= (AILevel * 35)
trigger1 = p2bodydist x <= 54
trigger1 = p2bodydist y >= -70

;Crouch Heavy
[State -1, AI]
type = ChangeState
value = 411
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 45)
trigger1 = random <= (AILevel * 34)
trigger1 = p2bodydist x <= 45
trigger1 = p2bodydist y >= -50

;Dash Again
[State -1, AI]
type = ChangeState
value = 100
triggerall = var(2) < 5
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = time >= 10
trigger1 = stateno = 100 || stateno = 105
trigger1 = p2bodydist x >= 100
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 40)

;Backdash during Dash
[State -1, AI]
type = ChangeState
value = 105
triggerall = var(2) < 5
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = time >= 10
trigger1 = stateno = 100 || stateno = 105
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist x > 50
trigger1 = enemynear, movetype = A
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 40)

;Retaliate during Dash
[State -1, AI]
type = ChangeState
value = 233
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = p2bodydist x <= 80
trigger1 = enemynear, movetype = A
trigger1 = stateno = 100
trigger1 = time <= 13
trigger1 = time >= 2
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 40)

;9mm or Dash Forward
[State -1, AI]
type = ChangeState
value = 100+((random%2)*900)
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 55)
trigger1 = p2bodydist x > 120
trigger1 = p2bodydist y >= -90

;Inventory Weapon
[State -1, AI]
type = ChangeState
value = 1000+((random%2)*200)+((random%2)*10)
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 45)
trigger1 = random <= (AILevel * 15)
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist x <= 120
trigger1 = p2bodydist y >= -90

;Air Light
[State -1, AI]
type = ChangeState
value = 600
triggerall = fvar(2) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Air Guard Breaker
[State -1, AI]
type = ChangeState
value = 650
triggerall = fvar(2) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)
trigger1 = p2bodydist x > 40
trigger1 = p2bodydist x <= 70
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20


 ;------Rush Combo 1: Basic Light Combo------

;Light 2
[State -1, AI]
type = ChangeState
value = 221
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 220 || stateno = 401
trigger1 = random <= (AILevel * 145)
trigger1 = random <= (AILevel * 97)
trigger1 = time >= 5 || movecontact

;Light 3
[State -1, AI]
type = ChangeState
value = 222
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 221
trigger1 = time >= 7 || movecontact
trigger1 = random <= (AILevel * 145)
trigger1 = random <= (AILevel * 97)

;Light 4
[State -1, AI]
type = ChangeState
value = 223
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 222
trigger1 = movecontact
trigger1 = random <= (AILevel * 145)
trigger1 = random <= (AILevel * 97)

;Backdash to safety
[State -1, AI]
type = ChangeState
value = 105
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 223 || stateno = 224 || stateno = 225 || stateno = 226 || stateno = 227
trigger1 = moveguarded
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

;Retaliate during Backdash
[State -1, AI]
type = ChangeState
value = 234
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = p2bodydist x <= 50
trigger1 = enemynear, movetype = A
trigger1 = stateno = 105
trigger1 = time <= 13
trigger1 = time >= 2
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

;Light 5
[State -1, AI]
type = ChangeState
value = 224
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 223
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)


;Light 6
[State -1, AI]
type = ChangeState
value = 225
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 224
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)


;Light 7
[State -1, AI]
type = ChangeState
value = 226
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 225
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)


;Light 8
[State -1, AI]
type = ChangeState
value = 227
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 226
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

;Heavy 3
[State -1, AI]
type = ChangeState
value = 232
triggerall = fvar(2) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 227
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)


 ;------Rush Combo 2: Air Combo------

;Air Light 2
[State -1, AI]
type = ChangeState
value = 601
triggerall = fvar(2) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 600
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

;Air Heavy
[State -1, AI]
type = ChangeState
value = 610
triggerall = fvar(2) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 601
trigger1 = movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 60)

 ;------NEUTRAL (Beast)------

;Guard Standing Attacks
[State -1, AI]
type = ChangeState
triggerall = var(59) > 0
triggerall = (statetype != A)
triggerall = (enemynear, statetype != A)
triggerall = (enemynear, movetype = A)
trigger1 = fvar(2) = 2
trigger1 = ctrl
trigger1 = random <= (AILevel * 64)
trigger1 = random <= (AILevel * 58)
value = 131

;Stand-to-Crouch Guard
[State -1, AI]
type = ChangeState
triggerall = var(59) > 0
triggerall = (statetype != A)
triggerall = (enemynear, statetype = C)
triggerall = (enemynear, movetype = A)
trigger1 = stateno = 150
trigger2 = stateno = 130
value = 152

;Guard Crouch Attacks
[State -1, AI]
type = ChangeState
triggerall = var(59) > 0
triggerall = (statetype != A)
triggerall = (enemynear, statetype = C)
triggerall = (enemynear, movetype = A)
trigger1 = fvar(2) = 2
trigger1 = ctrl
trigger1 = random <= (AILevel * 64)
trigger1 = random <= (AILevel * 58)
value = 131

;Crouch-to-Stand Guard
[State -1, AI]
type = ChangeState
triggerall = var(59) > 0
triggerall = (statetype != A)
triggerall = (enemynear, statetype != S)
triggerall = (enemynear, statetype != C)
triggerall = (enemynear, movetype = A)
trigger1 = stateno = 152
value = 150

;Guard Aerial Attacks
[State -1, AI]
type = ChangeState
triggerall = var(59) > 0
triggerall = (statetype != A)
triggerall = (enemynear, statetype != S)
triggerall = (enemynear, statetype != C)
triggerall = (enemynear, movetype = A)
trigger1 = fvar(2) = 2
trigger1 = ctrl
trigger1 = random <= (AILevel * 64)
trigger1 = random <= (AILevel * 58)
value = 130

;Air Guard
[State -1, AI]
type = ChangeState
triggerall = var(59) > 0
triggerall = (statetype = A)
triggerall = (enemynear, movetype = A)
trigger1 = fvar(2) = 2
trigger1 = ctrl
trigger1 = random <= (AILevel * 64)
trigger1 = random <= (AILevel * 58)
value = 132

;Light 1
[State -1, AI]
type = ChangeState
value = 240
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 70)
trigger1 = random <= (AILevel * 60)
trigger1 = p2bodydist x <= 65
trigger1 = p2bodydist y >= -70

;Large Street Weapon (OTG)
[State -1, AI]
type = ChangeState
value = 920+((random%2)*10)
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = p2statetype = L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 55)
trigger1 = p2bodydist x <= 115

;Street Weapon
[State -1, AI]
type = ChangeState
value = 900+((random%4)*10)
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = power >= 1000
trigger1 = stateno = 2421 && time >= 28
trigger1 = random <= (AILevel * 44)
trigger1 = random <= (AILevel * 51)
trigger2 = stateno = 2421
trigger2 = movehit
trigger2 = hitcount >= 2
trigger2 = random <= (AILevel * 80)
trigger2 = random <= (AILevel * 60)
trigger3 = stateno = 2421
trigger3 = moveguarded
trigger3 = random <= (AILevel * 84)
trigger3 = random <= (AILevel * 79)

;Large Street Weapon
[State -1, AI]
type = ChangeState
value = 920+((random%2)*10)
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = power < 1000
trigger1 = stateno = 2421 && time >= 28
trigger1 = random <= (AILevel * 44)
trigger1 = random <= (AILevel * 51)
trigger2 = power < 1000
trigger2 = stateno = 2421
trigger2 = movehit
trigger2 = hitcount >= 2
trigger2 = random <= (AILevel * 75)
trigger2 = random <= (AILevel * 60)
trigger3 = power < 1000
trigger3 = stateno = 2421
trigger3 = moveguarded
trigger3 = random <= (AILevel * 84)
trigger3 = random <= (AILevel * 79)
trigger4 = ctrl ;So anyway, I started swinging.
trigger4 = p2bodydist x >= 65
trigger4 = p2bodydist x <= 140
trigger4 = random <= (AILevel * 78)
trigger4 = random <= (AILevel * 47)


;Air Throw
[State -1, AI]
type = ChangeState
value = 640
triggerall = fvar(2) = 2
triggerall = fvar(4) < 6
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 105)
trigger1 = random <= (AILevel * 79)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Air Light
[State -1, AI]
type = ChangeState
value = 600
triggerall = fvar(2) = 2
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = ctrl
trigger1 = random <= (AILevel * 85)
trigger1 = random <= (AILevel * 57)
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y >= -50
trigger1 = p2bodydist y <= 20

;Cyclone Sling
[State -1, AI]
type = ChangeState
value = 860
triggerall = fvar(2) = 2
triggerall = fvar(4) < 6
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 100
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 47)
trigger1 = p2bodydist x <= 60
trigger1 = p2bodydist y >= -60


 ;------Beast Combo 1: Basic Combo------

;Light 2
[State -1, AI]
type = ChangeState
value = 241
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 2400
trigger1 = movecontact || time >= 8
trigger1 = random <= (AILevel * 120)
trigger1 = random <= (AILevel * 90)

;Light 3
[State -1, AI]
type = ChangeState
value = 242
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 2410
trigger1 = movecontact || time >= 12
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 68)
trigger2 = stateno = 2411 && time >= 12
trigger2 = random <= (AILevel * 75)
trigger2 = random <= (AILevel * 68)
trigger3 = stateno = 2411 && movehit && hitcount >= 2
trigger3 = random <= (AILevel * 75)
trigger3 = random <= (AILevel * 68)

;Heavy 4
[State -1, AI]
type = ChangeState
value = 246
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 2421 
trigger1 = time >= 28 || movecontact
trigger1 = enemynear, life <= 135
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 48)

 ;------Beast Combo 2: Large Street Weapons------
;Swing around the weapon with reckless abandon. Super armor's got you covered, dawg. Probably.

;Sign 2
[State -1, AI]
type = ChangeState
value = 921
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = p2bodydist x >= -30 ;Stop if enemy is behind you.
trigger1 = stateno = 920 && time >= 24 && time <= 38
trigger1 = random <= (AILevel * 65)
trigger1 = random <= (AILevel * 38)
trigger2 = stateno = 920 && movecontact && time <= 38
trigger2 = random <= (AILevel * 105)
trigger2 = random <= (AILevel * 78)

;Sign 3
[State -1, AI]
type = ChangeState
value = 922
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = p2bodydist x >= -30
trigger1 = stateno = 921 && time >= 30
trigger1 = random <= (AILevel * 55)
trigger1 = random <= (AILevel * 28)
trigger2 = stateno = 921 && movecontact
trigger2 = random <= (AILevel * 95)
trigger2 = random <= (AILevel * 68)

;Sign Heat Action
[State -1, AI]
type = ChangeState
value = 923
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = p2bodydist x >= -30
triggerall = power >= 1000
trigger1 = stateno = 920 && movecontact && time <= 38
trigger1 = enemynear, life <= 147
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 58)
trigger2 = stateno = 921 && movecontact
trigger2 = enemynear, life <= 147
trigger2 = random <= (AILevel * 135)
trigger2 = random <= (AILevel * 98)
trigger3 = stateno = 922 && movecontact && time <= 54
trigger3 = random <= (AILevel * 135)
trigger3 = random <= (AILevel * 98)

;Motorcycle 2
[State -1, AI]
type = ChangeState
value = 931
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = p2bodydist x >= -30
trigger1 = stateno = 930 && time >= 26 && time <= 40
trigger1 = random <= (AILevel * 55)
trigger1 = random <= (AILevel * 38)
trigger2 = stateno = 930 && movecontact && time <= 40
trigger2 = random <= (AILevel * 100)
trigger2 = random <= (AILevel * 78)

;Motorcycle 3
[State -1, AI]
type = ChangeState
value = 932
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = p2bodydist x >= -30
trigger1 = !movecontact
trigger1 = stateno = 931 && time >= 37
trigger1 = random <= (AILevel * 55)
trigger1 = random <= (AILevel * 38)
trigger2 = power < 1000 || numhelper(260)
trigger2 = stateno = 931 && movecontact
trigger2 = random <= (AILevel * 95)
trigger2 = random <= (AILevel * 68)

;Motorcycle Heat Action
[State -1, AI]
type = ChangeState
value = 933
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = p2bodydist x >= -30
triggerall = power >= 1000
triggerall = !numhelper(260)
trigger1 = enemynear, life <= 220
trigger1 = stateno = 930 && movecontact && time <= 40
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 58)
trigger2 = stateno = 931 && movecontact
trigger2 = random <= (AILevel * 135)
trigger2 = random <= (AILevel * 98)

 ;------Beast Combo 3: Small Street Weapons------

;Firecracker 2
[State -1, AI]
type = ChangeState
value = 901
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 900 && movecontact
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 58)

;Firecracker 3
[State -1, AI]
type = ChangeState
value = 902
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 901 && movecontact
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 58)

;Firecracker Heat Action
[State -1, AI]
type = ChangeState
value = 903
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = numtarget
triggerall = power >= 1000
trigger1 = stateno = 902 && movehit
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 58)

;Pipe 2
[State -1, AI]
type = ChangeState
value = 911
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 910 && movecontact
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 48)

;Pipe 3
[State -1, AI]
type = ChangeState
value = 912
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
trigger1 = stateno = 911 && movehit
trigger1 = random <= (AILevel * 75)
trigger1 = random <= (AILevel * 42)

;Pipe Heat Action
[State -1, AI]
type = ChangeState
value = 913
triggerall = fvar(2) = 2
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 80) && random <= (AILevel * 68)
triggerall = power >= 1000 
triggerall = !numhelper(260)
trigger1 = stateno = 912 && movehit
trigger1 = random <= (AILevel * 95)
trigger1 = random <= (AILevel * 58)


 ;------Beast Combo 4: Air ""Combo""------

;Light 2
[State -1, AI]
type = ChangeState
value = 610
triggerall = fvar(2) = 2
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = alive
triggerall = AIlevel >= 7 || random <= (AILevel * 120) && random <= (AILevel * 94)
trigger1 = stateno = 600
trigger1 = movehit
trigger1 = random <= (AILevel * 129)
trigger1 = random <= (AILevel * 100)


