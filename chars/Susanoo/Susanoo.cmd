;-| Button Remapping |-----------------------------------------------------
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
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

[Command]
name = "QCBU_ab"
command = ~D, DB, B, U, a+b

[Command]
name = "QCFU_ab"
command = ~D, DF, F, U, a+b

[Command]
name = "DDDU_ab"
command = ~D, D, U, a+b

[Command]
name = "DDDU_ab"
command = D, D, U, a+b

[Command]
name = "QCBU_ab"
command = ~D, DB, B, U, b+c

[Command]
name = "QCFU_ab"
command = ~D, DF, F, U, b+c

[Command]
name = "DDDU_ab"
command = ~D, D, U, b+c

[Command]
name = "DDDU_ab"
command = D, D, U, b+c

[Command]
name = "QCBU_ab"
command = ~D, DB, B, U, a+c

[Command]
name = "QCFU_ab"
command = ~D, DF, F, U, a+c

[Command]
name = "DDDU_ab"
command = ~D, D, U, a+c

[Command]
name = "DDDU_ab"
command = D, D, U, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "DPU_a"
command = ~F, D, DF, U, a

[Command]
name = "DPU_b"
command = ~F, D, DF, U, b

[Command]
name = "DDU_a"
command = ~D, D, U, a

[Command]
name = "DDU_a"
command = D, D, U, a

[Command]
name = "DDU_b"
command = ~D, D, U, b

[Command]
name = "DDU_b"
command = D, D, U, b

[Command]
name = "QCBU_a"
command = ~D, DB, B, U, a

[Command]
name = "QCBU_b"
command = ~D, DB, B, U, b

[Command]
name = "QCBU_c"
command = ~D, DB, B, U, c

[Command]
name = "QCFU_a"
command = ~D, DF, F, U, a

[Command]
name = "QCFU_b"
command = ~D, DF, F, U, b

[Command]
name = "QCFU_c"
command = ~D, DF, F, U, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = /$F,a+b
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = /$B,a+b
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
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
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
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
name = "highjump"
command = >~D, U
time = 8

[Command]
name = "highjump"
command = >~D, UF
time = 8

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;ChangeState          ;Don't change this
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

;===========================================================================
;===========================================================================
[State -1, Roar of the Mad King]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= (enemynear,lifemax)*.25
triggerall = var(21) = 0
triggerall = Var(50) != 1
triggerall = fvar(35) <= 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Bloodsplitter]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 5120 && time >= 3
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Liberation Dagger]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Strike of the Possessed God]
type = ChangeState
value = 3030
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || command = "holdc"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Var(50) != 1
trigger1 = stateno = 3000
trigger1 = animelemtime(36) >= 0
trigger1 = movehit
;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y+z" || command = "holdy" && command = "holdz"
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Towering Flame]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 41
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Sundering Claws]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Dancing Dual Kick]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Blade of Judgement]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Megalith]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Inevitable Calamity]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Splintering Thrust]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 41
trigger6 = (stateno = 220) && movehit
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Buffered Roar of the Mad King]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDDU_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= enemynear,lifemax/4
triggerall = var(21) = 0
triggerall = Var(50) != 1
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Bloodsplitter]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCBU_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Liberation Dagger]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCFU_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Towering Flame]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DPU_b"
triggerall = statetype != A
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Sundering Claws]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCFU_a"
triggerall = statetype != A
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Dancing Dual Kick]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCFU_b"
triggerall = statetype != A
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Blade of Judgement]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCFU_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Megalith]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCBU_a"
triggerall = statetype != A
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Inevitable Calamity]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCBU_b"
triggerall = statetype != A
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;---------------------------------------------------------------------------
[State -1, Buffered Splintering Thrust]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCBU_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
trigger2 = stateno = 41
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 75
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "highjump"
triggerall = fvar(38) < 8
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = 400) && Movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger6 = animelemtime(6) >= 1

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = 400) && Movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger6 = animelemtime(6) >= 1

;---------------------------------------------------------------------------
[State -1, Jump Cancel Long]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(15) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact


;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 911 || stateno = 913
trigger4 = time >= 5
trigger5 = stateno = 931 || stateno = 933
trigger5 = time >= 5
;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 300) && Movecontact
trigger2 = var(30) > 0
;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,401]) && Movecontact
trigger3 = (Stateno = 300) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [400,401]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 4B]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = changestate
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
triggerall = statetype != A
triggerall = ctrl
trigger1 = roundstate = 2
trigger2 = var(20) = 0
trigger2 = roundstate > 2

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(30) > 0
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger2 = prevstateno != 400

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = Stateno = 100
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jBB]
type = ChangeState
value = 611
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 610
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = 400) && Movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger6 = animelemtime(6) >= 1

;---------------------------------------------------------------------------
[State -1, Jump Cancel Long]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 0
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(15) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = prevstateno != [120,159]
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall= stateno != [3900,3999]
triggerall= stateno != [4000,4999]
Triggerall = time > 0
trigger1 = movecontact
trigger2 = stateno = 621
trigger2 = var(7) = 1
trigger3 = numhelper > 0
trigger3 = helper,movecontact
trigger4 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall= stateno != [3900,3999]
triggerall= stateno != [4000,4999]
Triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = movecontact
triggerall= stateno = [3000,3080]
triggerall= stateno != [4000,4999]
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall= stateno = [3000,3080]
triggerall= stateno != [4000,4999]
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]


;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Always 2A after Splintering Thrust
;===========================================================================
;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = enemynear,stateno = 5854

;===========================================================================
;Guarding
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Towering Flame]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power < 1000
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-40,40]
trigger1 = p2bodydist Y = [-70,0]
trigger1 = enemynear, Vel X >= 0

[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A || p2statetype = L
triggerall = p2bodydist X = [0,53]
triggerall = p2bodydist Y = [-120,0]
triggerall = enemynear,stateno != [160,162]
triggerall = enemynear,pos Y <= -10
trigger1 = ctrl

;===========================================================================
;Air to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,40]
triggerall = Var(50) != 1
triggerall = alive && Roundstate = 2
triggerall = life < Lifemax/3
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,15]
triggerall = p2bodydist Y = [-60,10]
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-10,80]
triggerall = p2bodydist Y = [-95,55]
trigger1 = ctrl
;===========================================================================
;Air to Ground
;===========================================================================
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-5,80]
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype = A
triggerall = enemynear, ctrl = 0
triggerall = p2bodydist X = [0,80]
triggerall = p2bodydist Y = [-65,0]
triggerall = enemynear,vel x > 3
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,40]
triggerall = prevstateno != 300
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != C
triggerall = p2statetype != L
triggerall = p2bodydist Y = [-60,0]
triggerall = p2bodydist X = [0,90]
triggerall = prevstateno != 200
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Splintering Thrust]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X = [0,110]
triggerall = p2bodydist Y = [-60,0]
triggerall = enemynear,stateno != [5000,6120]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,vel x < 0
triggerall = enemynear,ctrl = 0
triggerall = power >= 500
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Sundering Claws]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X = [0,110]
triggerall = p2bodydist Y = [-60,0]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,vel x < 0
triggerall = enemynear,ctrl = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Splintering Thrust]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = p2statetype = S
triggerall = statetype != A
triggerall = power >= 500
triggerall = random <= 299
triggerall = enemynear,stateno != [5000,6120]
trigger1 = stateno = [200,211]
trigger1 = moveguarded
trigger2 = stateno = [400,420]
trigger2 = moveguarded

;---------------------------------------------------------------------------
[State -1, Megalith]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = p2statetype = S
triggerall = statetype != A
triggerall = power >= 500
triggerall = random <= 599
triggerall = enemynear,stateno != [5000,6120]
trigger1 = stateno = [200,211]
trigger1 = moveguarded
trigger2 = stateno = [400,420]
trigger2 = moveguarded

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,110]
triggerall = enemynear,stateno != 40
trigger1 = ctrl
trigger2 = stateno = 200 && moveguarded
trigger2 = random <= 399

;---------------------------------------------------------------------------

[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,70]
triggerall = p2statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && moveguarded
trigger3 = stateno = 201 && moveguarded
trigger4 = stateno = 211 && moveguarded

;---------------------------------------------------------------------------

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [50,120]
triggerall = enemynear,ctrl = 0
triggerall = p2statetype = S
triggerall = enemynear,stateno != 40
trigger1 = ctrl
trigger2 = stateno = 400 && moveguarded
trigger3 = stateno = 201 && moveguarded
trigger4 = stateno = 211 && moveguarded

;---------------------------------------------------------------------------
[State -1, Liberation Dagger]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,ctrl = 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = p2dist x >= 135
triggerall = p2dist y >= -60
triggerall = enemynear,vel Y >= 0
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
triggerall = enemynear,stateno != [160,162]
triggerall = enemynear,stateno != 100
triggerall = enemynear,stateno != 40
triggerall = enemynear,stateno != [52,58]
triggerall = stateno != [6060,6061]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4B]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,ctrl = 0
triggerall = p2dist x >= 150
triggerall = p2dist y >= -20
triggerall = enemynear,vel Y >= 0
triggerall = p2stateno != [3000,3999]
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [160,162]
triggerall = enemynear,stateno != 40
triggerall = enemynear,stateno != 100
trigger1 = ctrl

;===========================================================================
;Defense
;===========================================================================
[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = statetype = A && moveType = H && alive
trigger1 = hitfall && canrecover
trigger1 = (gethitvar(fall.recovertime)-gethitvar(hitshaketime)) && hitover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (125 * (AILevel ** 2 / 64.0))

[State -1, Guard Reject]
type=ChangeState
value=204
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
trigger1= (p2bodydist x=[30,60]) && (stateno=150 || stateno=152) && random<150*(AILevel**2/64.0)

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && Random > 500
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
triggerall = random<200*(AIlevel**2/64.0)
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,83]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 < 7
;===========================================================================
;Wake Up
;===========================================================================
[State -1, Towering Flame]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
triggerall = power < 1000
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-50,50]
trigger1 = p2bodydist Y = [-70,0]
trigger1 = enemynear, Vel X >= 0
;===========================================================================
;Movement
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2bodydist X > 80
;---------------------------------------------------------------------------
[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4
;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
triggerall = random<200*(AIlevel**2/64.0)
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 
;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65
;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,611]) && moveguarded
;---------------------------------------------------------------------------
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
triggerall = p2stateno != [3000,3999]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x + 1 * (PlayerID(helper(33333333),var(3)), vel x) + 1 = ceil( 95 / abs(const(velocity.jump.y)))*.1)
trigger2 = enemynear,movetype = A
trigger2 = enemynear,statetype != A
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = enemynear,movetype = A
trigger3 = p2bodydist X = [35,500]
trigger3 = enemynear, Vel X != 0
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = enemynear,movetype = A
trigger5 = p2bodydist X = [0,35]
trigger5 = enemynear,statetype != A
trigger6 = prevstateno = 1003
;---------------------------------------------------------------------------
[State -1, Jump Forward]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;---------------------------------------------------------------------------
;===========================================================================
;Combo
;===========================================================================
[State -1, Roar of the Mad King]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2life <= enemynear,lifemax/4
triggerall = var(21) = 0
triggerall = power >= 2000
triggerall = roundno > 2
triggerall = fvar(35) <= 0
trigger1 = (stateno = 202) && movehit
trigger2 = (stateno = 211) && movehit
trigger3 = stateno = 1400 && movehit
trigger3 = animelemtime(22) >= 1

;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = (stateno = 202) && movehit
trigger2 = (stateno = 211) && movehit
trigger3 = stateno = 1400 && movehit
trigger3 = animelemtime(22) >= 1

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = movetype != H
triggerall = statetype != A
triggerall = power >= 500
trigger1 = stateno = 3000 && moveguarded
trigger1 = !ctrl

;---------------------------------------------------------------------------
[State -1, Strike of the possesed God]
type = ChangeState
value = 3030
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = power >= 1000
trigger1 = stateno = 3000
trigger1 = animelemtime(36) >= 0
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Liberation Dagger]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = power >= 2000
trigger1 = stateno = 1400 && movehit
trigger1 = animelemtime(22) >= 1

;---------------------------------------------------------------------------
[State -1, Bloodsplitter]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = power >= 1000
trigger1 = stateno = 1400 && movehit
trigger1 = animelemtime(22) >= 2

;---------------------------------------------------------------------------
[State -1, Splintering Thrust]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = power >= 500
trigger1 = stateno = 1400 && moveguarded
trigger1 = animelemtime(22) >= 2

;---------------------------------------------------------------------------
[State -1, Jump Cancel Long]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = (stateno = 1400) && movecontact
trigger1 = animelemtime(22) >= 2
ignorehitpause = 1

;---------------------------------------------------------------------------

[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = A
trigger1 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 300 || stateno = 400
trigger1 = Movehit
trigger2 = stateno = 300
trigger2 = Moveguarded
trigger2 = random <= 149 

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = p2dist x = [0,90]
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 600
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = 610)
trigger1 = movecontact
trigger1 = enemynear,statetype != S
trigger1 = enemynear,statetype != C

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 610
trigger1 = Movecontact

;---------------------------------------------------------------------------

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 202
trigger1 = animelemtime(9) >= 0
trigger1 = Movehit
trigger2 = stateno = 211
trigger2 = Movehit
trigger3 = enemynear,statetype != A
trigger3 = enemynear,statetype != L
trigger3 = stateno = 410
trigger3 = Movehit

;---------------------------------------------------------------------------
[State -1, Dancing Dual Kick]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 420
trigger1 = Movehit
trigger1 = animelemtime(12) >= 0
trigger2 = stateno = 220
trigger2 = Movehit

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(21) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = prevstateno != 195
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]

;---------------------------------------------------------------------------

[State -1, Burst]
type = changestate
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
