; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------

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
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "2HCF"
command = ~$B, $D, $F, $B, $D, F
time = 60

[Command]
name = "2HCB"
command = ~$F, $D, $B, $F, $D, B
time = 60

[Command]
name = "2QCF"
command = ~D, DF, F, D, DF, F
time = 30

[Command]
name = "2QCB"
command = ~D, DB, B, D, DB, B
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "SPD"
command = ~B, D, F, $U
time = 30

[Command]
name = "SPD"
command = ~D, F, U, $B
time = 30

[Command]
name = "SPD"
command = ~F, U, B, $D
time = 30

[Command]
name = "SPD"
command = ~U, B, D, $F
time = 30

[Command]
name = "R SPD"
command = ~F, D, B, $U
time = 30

[Command]
name = "R SPD"
command = ~D, B, U, $F
time = 30

[Command]
name = "R SPD"
command = ~B, U, F, $D
time = 30

[Command]
name = "R SPD"
command = ~U, F, D, $B
time = 30

[Command]
name = "CHICKEN WING"
command = ~$B, $D, $F, $U
time = 22

[Command]
name = "R CHICKEN WING"
command = ~$F, $D, $B, $U
time = 22

[Command]
name = "DP"
command = ~$F, $D, $F
time = 6

[Command]
name = "RDP"
command = ~$B, $D, $B
time = 6

[Command]
name = "HCF"
command = ~$B, $D, F
time = 10

[Command]
name = "HCB"
command = ~$F, $D, B
time = 10

[Command]
name = "QCF"
command = ~D, DF, F
time = 18

[Command]
name = "QCB"
command = ~D, DB, B
time = 18

[Command]
name = "dash"
command = F, F
time = 17
buffer.time = 4

[Command]
name = "focus dash"
command = ~F, F
time = 14
buffer.time = 7

[Command]
name = "dash back"
command = B, B
time = 17
buffer.time = 4

[Command]
name = "focus dash back"
command = ~B, B
time = 14
buffer.time = 7

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "FF2"     ;Required (do not remove)
command = ~F, F
time = 10
buffer.time = 8

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "BB2"     ;Required (do not remove)
command = ~B, B
time = 10
buffer.time = 8

[Command]
name = "DD"     
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "Red Focus Attack"
command = x+y+b
time = 1
buffer.time = 12

[Command]
name = "Red Focus Attack"
command = x+start
time = 1
buffer.time = 12

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "Ex Focus Attack"
command = y+b
time = 1
buffer.time = 12

;-------- 3

[Command]
name = "xyb"
command = x+y+b
time = 2
buffer.time = 3

[Command]
name = "xyb12"
command = x+y+b
time = 2
buffer.time = 12

[Command]
name = "xs"
command = x+s
time = 2
buffer.time = 2

[Command]
name = "xs12"
command = x+s
time = 2
buffer.time = 12

[Command]
name = "xyz"
command = x+y+z
time = 2
buffer.time = 3

[Command]
name = "xyz6"
command = x+y+z
time = 2
buffer.time = 6

[Command]
name = "abc"
command = a+b+c
time = 2
buffer.time = 3

;-------- 2

[Command]
name = "xy"
command = x+y
time = 2
buffer.time = 2

[Command]
name = "yz"
command = y+z
time = 2
buffer.time = 2

[Command]
name = "xz"
command = x+z
time = 2
buffer.time = 2

[Command]
name = "ab"
command = a+b
time = 2
buffer.time = 2

[Command]
name = "bc"
command = b+c
time = 2
buffer.time = 2

[Command]
name = "ac"
command = a+c
time = 2
buffer.time = 2

[Command]
name = "xa"
command = x+a
time = 2
buffer.time = 2

[Command]
name = "yb"
command = y+b
time = 2
buffer.time = 2

[Command]
name = "yb2"
command = y+b
time = 2
buffer.time = 2

[Command]
name = "yb12"
command = y+b
time = 2
buffer.time = 12

[Command]
name = "zc"
command = z+c
time = 2
buffer.time = 2

[Command]
name = "zc3"
command = z+c
time = 2
buffer.time = 3

[Command]
name = "xy6"
command = x+y
time = 2
buffer.time = 6

[Command]
name = "yz6"
command = y+z
time = 2
buffer.time = 6

[Command]
name = "xz6"
command = x+z
time = 2
buffer.time = 6

;-| Dir |---------------------------------------------------------
[Command]
name = "~F"
command = F
time = 1

[Command]
name = "~F"
command = ~F
time = 1

[Command]
name = "~B"
command = B
time = 1

[Command]
name = "~B"
command = ~B
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
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "a2"
command = a
time = 1
buffer.time = 2

[Command]
name = "a3"
command = a
time = 1
buffer.time = 3

[Command]
name = "a4"
command = a
time = 1
buffer.time = 4

[Command]
name = "a6"
command = a
time = 1
buffer.time = 6

[Command]
name = "b"
command = b
time = 1

[Command]
name = "b2"
command = b
time = 1
buffer.time = 2

[Command]
name = "b3"
command = b
time = 1
buffer.time = 2


[Command]
name = "b4"
command = b
time = 1
buffer.time = 4

[Command]
name = "b6"
command = b
time = 1
buffer.time = 6

[Command]
name = "c"
command = c
time = 1

[Command]
name = "c2"
command = c
time = 1
buffer.time = 2

[Command]
name = "c3"
command = c
time = 1
buffer.time = 3


[Command]
name = "c4"
command = c
time = 1
buffer.time = 4

[Command]
name = "c6"
command = c
time = 1
buffer.time = 6

[Command]
name = "x"
command = x
time = 1

[Command]
name = "x2"
command = x
time = 1
buffer.time = 2

[Command]
name = "x3"
command = x
time = 1
buffer.time = 3

[Command]
name = "x4"
command = x
time = 1
buffer.time = 4

[Command]
name = "x6"
command = x
time = 1
buffer.time = 6

[Command]
name = "y"
command = y
time = 1

[Command]
name = "y2"
command = y
time = 1
buffer.time = 2

[Command]
name = "y3"
command = y
time = 1
buffer.time = 3

[Command]
name = "y4"
command = y
time = 1
buffer.time = 4

[Command]
name = "y6"
command = y
time = 1
buffer.time = 6

[Command]
name = "z"
command = z
time = 1

[Command]
name = "z2"
command = z
time = 1
buffer.time = 2

[Command]
name = "z3"
command = z
time = 1
buffer.time = 3

[Command]
name = "z4"
command = z
time = 1
buffer.time = 4

[Command]
name = "z6"
command = z
time = 1
buffer.time = 6

[Command]
name = "start"
command = s
time = 1

[Command]
name = "Quick Get Up"
command = D
time = 1
buffer.time = 6

[Command]
name = "Back Roll"
command = B
time = 1
buffer.time = 6

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "releasefwd"
command = ~F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "releaseback"
command = ~B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupforward" ;Required (do not remove)
command = /UF
time = 1

[Command]
name = "holdupback" ;Required (do not remove)
command = /UB
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownstrict"
command = /D
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

[Command]
name = "fholdx"
command = /x
time = 1

[Command]
name = "fholdy"
command = /y
time = 1

[Command]
name = "fholdz"
command = /z
time = 1

[Command]
name = "fholda"
command = /a
time = 1

[Command]
name = "fholdb"
command = /b
time = 1

[Command]
name = "fholdc"
command = /c
time = 1

[Command]
name = "relx"
command = ~x
time = 1

[Command]
name = "rely"
command = ~y
time = 1

[Command]
name = "relz"
command = ~z
time = 1

[Command]
name = "rela"
command = ~a
time = 1

[Command]
name = "relb"
command = ~b
time = 1

[Command]
name = "relc"
command = ~c
time = 1

[Command]
name = "relstart"
command = ~start
time = 1

[Command]
name = "hold_xyz"
command = /x
time = 1

[Command]
name = "hold_xyz"
command = /y
time = 1

[Command]
name = "hold_xyz"
command = /z
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
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "fholdstart"
command = /$start
time = 1

[Command]
name = "fholdabc"
command = /$a+b+c
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------

[Statedef -1]


[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "x3" && command = "a3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, V-Shift]
type = ChangeState
value = 4900
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(3) >= 300
triggerall = var(15) = 0
triggerall = command = "z2" && command = "b2"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Hp Denjin Hadouken]
type = ChangeState
value = 7750
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "z3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Mp Denjin Hadouken]
type = ChangeState
value = 7700
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "z3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Mp Denjin Hadouken]
type = ChangeState
value = 7650
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "y3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Mp Denjin Hadouken]
type = ChangeState
value = 7600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "y3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Lp Denjin Hadouken]
type = ChangeState
value = 7550
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "x3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Lp Denjin Hadouken]
type = ChangeState
value = 7500
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "x3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Hp Shinkuu Hadouken Cancel]
type = ChangeState
value = 7250
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "z3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Hp Shinkuu Hadouken]
type = ChangeState
value = 7200
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "z3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Mp Shinkuu Hadouken Cancel]
type = ChangeState
value = 7150
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "y3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Mp Shinkuu Hadouken]
type = ChangeState
value = 7100
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "y3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Lp Shinkuu Hadouken Cancel]
type = ChangeState
value = 7050
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "x3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Lp Shinkuu Hadouken]
type = ChangeState
value = 7000
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = command = "x3" 
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Kakko Fubatsui {V-Trigger II}]
type = ChangeState
value = 4705
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = statetype != a
triggerall = var(2) = 3
triggerall = var(3) >= 900
triggerall = !var(15)
trigger1 = var(29) > 1 && hitpausetime = 0

[State -1, Kakko Fubatsui {V-Trigger II}]
type = ChangeState
value = 4705
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = statetype != a
triggerall = var(2) = 2
triggerall = var(3) >= 600
triggerall = !var(15)
trigger1 = var(29) > 1 && hitpausetime = 0

[State -1, Kakko Fubatsui {V-Trigger II}]
type = ChangeState
value = 4700
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = statetype != a
triggerall = var(2) = 3
triggerall = var(3) >= 900
triggerall = !var(15)
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Kakko Fubatsui {V-Trigger II}]
type = ChangeState
value = 4700
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = statetype != a
triggerall = var(2) = 2
triggerall = var(3) >= 600
triggerall = !var(15)
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Denjin Renki (Cancel) {V-Trigger I}]
type = ChangeState
value = 4505
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "zc3"
triggerall = statetype != a
triggerall = var(2) = 3
triggerall = var(3) >= 900
triggerall = !var(15)
trigger1 = var(29) > 1 && hitpausetime = 0

[State -1, Denjin Renki (Cancel) {V-Trigger I}]
type = ChangeState
value = 4505
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "zc3"
triggerall = statetype != a
triggerall = var(2) = 1
triggerall = var(3) >= 600
triggerall = !var(15)
trigger1 = var(29) > 1 && hitpausetime = 0

[State -1, Denjin Renki {V-Trigger I}]
type = ChangeState
value = 4500
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "zc3"
triggerall = statetype != a
triggerall = var(2) = 3
triggerall = var(3) >= 900
triggerall = !var(15)
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Denjin Renki {V-Trigger I}]
type = ChangeState
value = 4500
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "zc3"
triggerall = statetype != a
triggerall = var(2) = 1
triggerall = var(3) >= 600
triggerall = !var(15)
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Isshin (Jodan Sokotou Geri Cancel)]
type = ChangeState
value = 4770
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = stateno = 1300 || stateno = 1310 ||  stateno = 1320
triggerall = var(15) > 0
triggerall = var(14) = 2
triggerall = movetype != h
trigger1 = var(27) > 1 && hitpausetime = 0

[State -1, Isshin (Shoryuken Cancel)]
type = ChangeState
value = 4760
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = stateno = 1100 || stateno = 1110 || stateno = 1111 || stateno = 1120
triggerall = var(15) > 0
triggerall = var(14) = 2
triggerall = movetype != h
trigger1 = var(27) > 1 && hitpausetime = 0

[State -1, Isshin (Ex Hadouken Cancel)]
type = ChangeState
value = 4750
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = stateno = 1030
triggerall = var(15) > 0
triggerall = var(14) = 2
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(27) > 1 && hitpausetime = 0

[State -1, Isshin (Hadouken Cancel)]
type = ChangeState
value = 4740
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3" && command = "c3"
triggerall = stateno = 1000 || stateno = 1010 || stateno = 1020
triggerall = var(15) > 0
triggerall = var(14) = 2
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(27) > 1 && hitpausetime = 0

[State -1, Isshin (Cancel Stance) {V-Trigger II}]
type = ChangeState
value = 4715
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15) > 0
triggerall = var(14) = 2
triggerall = command = "z3" && command = "c3"
triggerall = statetype != a
triggerall = movetype != h
triggerall = var(27) > 1 && hitpausetime = 0
trigger1 = stateno = 255

[State -1, Isshin (Stance) {V-Trigger II}]
type = ChangeState
value = 4710
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15) > 0
triggerall = var(14) = 2
triggerall = command = "z3" && command = "c3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, VT1 Ex Shoryuken]
type = ChangeState
value = 4630
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Hp Shoryuken]
type = ChangeState
value = 4620
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "z3"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Mp Shoryuken]
type = ChangeState
value = 4610
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "y3"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Lp Shoryuken]
type = ChangeState
value = 4600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "x3"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Ex Hadouken]
type = ChangeState
value = 4570
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Hp Hadouken]
type = ChangeState
value = 4530
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = !var(17)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "z3"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Mp Hadouken]
type = ChangeState
value = 4520
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = !var(17)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "y3"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT1 Lp Hadouken]
type = ChangeState
value = 4510
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = !var(17)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "x3"
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Thrust Strike {V-Skill II}]
type = ChangeState
value = 4100
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3" && command = "b3"
triggerall = var(1) = 2
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(28) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Thrust Strike {V-Skill II}]
type = ChangeState
value = 4100
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3" && command = "b3" && command = "holddown"
triggerall = var(1) = 3
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(28) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, VT Mind's Eye {V-Skill I}]
type = ChangeState
value = 4670
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "yb2"
triggerall = var(15)
triggerall = var(1) = 1 || var(1) = 3
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(28) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Mind's Eye {V-Skill I}]
type = ChangeState
value = 4000
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "yb2"
triggerall = var(1) = 1 || var(1) = 3
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(28) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Hashogeki {V-Reversal}]
type = ChangeState
value = 4300
triggerall = var(59) != 1
triggerall = var(3) >= 300
triggerall = !isHelper(10371)
triggerall = command = "holdfwd"
triggerall = command = "start" || command = "xyz6"
triggerall = statetype != a
trigger1 = stateno = 151

[State -1, Ex Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1630
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 300
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "ab" || command = "bc" || command = "ac"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Hk Air Tatsumaki Senpukyaku (Early)]
type = ChangeState
value = 1621
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "c3"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = vel y < 0
triggerall = pos y > -125
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Hk Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1620
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "c3"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Mk Air Tatsumaki Senpukyaku (Early)]
type = ChangeState
value = 1611
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "b3"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = vel y < 0
triggerall = pos y > -125
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Mk Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1610
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "b3"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Lk Air Tatsumaki Senpukyaku (Early)]
type = ChangeState
value = 1601
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "a3"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = vel y < 0
triggerall = pos y > -125
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Lk Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "a3"
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Ex Asyura]
type = null
value = 1530
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "ab" || command = "bc" || command = "ac"
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, H Asyura]
type = null
value = 1520
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "c3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2


[State -1, M Asyura]
type = null
value = 1510
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "b3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2


[State -1, L Asyura]
type = null
value = 1500
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "a3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Ex Seiken]
type = null
value = 1430
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, H Seiken]
type = null
value = 1420
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "z3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, M Seiken]
type = null
value = 1410
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "y3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, L Seiken]
type = null
value = 1400
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = command = "x3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Ex Jodan Sokutou Geri]
type = ChangeState
value = 1330
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "ab" || command = "bc" || command = "ac"
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Hk Jodan Sokutou Geri]
type = ChangeState
value = 1320
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "c3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Mk Jodan Sokutou Geri]
type = ChangeState
value = 1310
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "b3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Lk Jodan Sokutou Geri]
type = ChangeState
value = 1300
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "a3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, H Air Kuju Tatsumaki Senpuu Kyaku]
type = null
value = 1282
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(45) ;HCB
triggerall = command = "c3"
triggerall = statetype = a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, M Air Kuju Tatsumaki Senpuu Kyaku]
type = null
value = 1281
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(45) ;HCB
triggerall = command = "b3"
triggerall = statetype = a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, L Air Kuju Tatsumaki Senpuu Kyaku]
type = null
value = 1280
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(45) ;HCB
triggerall = command = "a3"
triggerall = statetype = a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Ex Tatsumaki Senpukyaku]
type = ChangeState
value = 1230
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;qcb
triggerall = command = "ab" || command = "bc" || command = "ac"
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Hk Tatsumaki Senpukyaku]
type = ChangeState
value = 1220
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;qcb
triggerall = command = "c3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Mk Tatsumaki Senpukyaku]
type = ChangeState
value = 1210
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;qcb
triggerall = command = "b3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Lk Tatsumaki Senpukyaku]
type = ChangeState
value = 1200
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;qcb
triggerall = command = "a3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Ex Shoryuken]
type = ChangeState
value = 1130
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = statetype != a
triggerall = movetype != h
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Hp Shoryuken]
type = ChangeState
value = 1120
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "z3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Mp Shoryuken]
type = ChangeState
value = 1110
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "y3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Lp Shoryuken]
type = ChangeState
value = 1100
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = command = "x3"
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Ex Shaku Hado]
type = null
value = 1058
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = statetype != a
triggerall = movetype != h
triggerall = var(17) = 0
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Hp Shaku Hado]
type = null
value = 1057
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "z3"
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Mp Shaku Hado]
type = null
value = 1056
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "y3"
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Lp Shaku Hado]
type = null
value = 1055
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = command = "x3"
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Ex Hadouken]
type = ChangeState
value = 1030
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = statetype != a
triggerall = movetype != h
triggerall = var(17) = 0
triggerall = power >= 300
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Hp Hadouken]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "z3"
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Mp Hadouken]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "y3"
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Lp Hadouken]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = command = "x3"
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

;------------- NEGATIVE EDGE -------------

[State -1, Negative Hp Denjin Hadouken]
type = ChangeState
value = 7750
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(12) ;HP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Negative Mp Denjin Hadouken]
type = ChangeState
value = 7700
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(12) ;HP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Negative Mp Denjin Hadouken]
type = ChangeState
value = 7650
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(11) ;MP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Negative Mp Denjin Hadouken]
type = ChangeState
value = 7600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(11) ;MP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Negative Lp Denjin Hadouken]
type = ChangeState
value = 7550
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(10) ;LP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Negative Lp Denjin Hadouken]
type = ChangeState
value = 7500
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(10) ;LP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Negative Hp Shinkuu Hadouken Cancel]
type = ChangeState
value = 7250
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(12) ;HP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Negative Hp Shinkuu Hadouken]
type = ChangeState
value = 7200
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(12) ;HP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Negative Mp Shinkuu Hadouken Cancel]
type = ChangeState
value = 7150
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(11) ;MP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Negative Mp Shinkuu Hadouken]
type = ChangeState
value = 7100
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(11) ;MP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Negative Lp Shinkuu Hadouken Cancel]
type = ChangeState
value = 7050
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(10) ;LP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(31) > 1 && hitpausetime = 0

[State -1, Negative Lp Shinkuu Hadouken]
type = ChangeState
value = 7000
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = power >= 900
triggerall = helper(10371), var(50) ;2QCF
triggerall = helper(10371), var(10) ;LP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = (stateno = [200, 499]) && var(56)
trigger2 = ctrl
trigger3 = stateno = 40
trigger4 = stateno = 52
trigger5 = stateno = 53 && time > 2

[State -1, Negative VT1 Hp Shoryuken]
type = ChangeState
value = 4620
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = helper(10371), var(12) ;HP
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative VT1 Mp Shoryuken]
type = ChangeState
value = 4610
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = helper(10371), var(11) ;MP
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative VT1 Lp Shoryuken]
type = ChangeState
value = 4600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = helper(10371), var(10) ;LP
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative VT1 Hp Hadouken]
type = ChangeState
value = 4530
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = !var(17)
triggerall = helper(10371), var(40) ;QCF
triggerall = helper(10371), var(12) ;HP
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative VT1 Mp Hadouken]
type = ChangeState
value = 4520
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = !var(17)
triggerall = helper(10371), var(40) ;QCF
triggerall = helper(10371), var(11) ;MP
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative VT1 Lp Hadouken]
type = ChangeState
value = 4510
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = !var(17)
triggerall = helper(10371), var(40) ;QCF
triggerall = helper(10371), var(10) ;LP
triggerall = var(15) > 0
triggerall = var(14) = 1
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Hk Air Tatsumaki Senpukyaku (Early)]
type = ChangeState
value = 1621
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = helper(10371), var(15) ;HK
triggerall = statetype = a
triggerall = vel x > 0
triggerall = vel y < 0
triggerall = pos y > -125
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Negative Hk Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1620
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = helper(10371), var(15) ;HK
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Negative Mk Air Tatsumaki Senpukyaku (Early)]
type = ChangeState
value = 1611
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = helper(10371), var(14) ;MK
triggerall = statetype = a
triggerall = vel x > 0
triggerall = vel y < 0
triggerall = pos y > -125
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Negative Mk Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1610
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = helper(10371), var(14) ;MK
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Negative Lk Air Tatsumaki Senpukyaku (Early)]
type = ChangeState
value = 1601
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = helper(10371), var(13) ;LK
triggerall = statetype = a
triggerall = vel x > 0
triggerall = vel y < 0
triggerall = pos y > -125
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Negative Lk Air Tatsumaki Senpukyaku (Late)]
type = ChangeState
value = 1600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(41) ;QCB
triggerall = helper(10371), var(13) ;LK
triggerall = statetype = a
triggerall = vel x > 0
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = ctrl

[State -1, Negative Hk Jodan Sokutou Geri]
type = ChangeState
value = 1320
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = helper(10371), var(15) ;HK
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Mk Jodan Sokutou Geri]
type = ChangeState
value = 1310
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = helper(10371), var(14) ;MK
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Lk Jodan Sokutou Geri]
type = ChangeState
value = 1300
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(44) ;HCF
triggerall = helper(10371), var(13) ;LK
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Hk Tatsumaki Senpukyaku]
type = ChangeState
value = 1220
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;QCB
triggerall = helper(10371), var(15) ;HK
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Mk Tatsumaki Senpukyaku]
type = ChangeState
value = 1210
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;QCB
triggerall = helper(10371), var(14) ;MK
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Lk Tatsumaki Senpukyaku]
type = ChangeState
value = 1200
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371),var(41) ;QCB
triggerall = helper(10371), var(13) ;LK
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Hp Shoryuken]
type = ChangeState
value = 1120
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = helper(10371), var(12) ;HP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Mp Shoryuken]
type = ChangeState
value = 1110
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = helper(10371), var(11) ;MP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Lp Shoryuken]
type = ChangeState
value = 1100
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(42) ;DP
triggerall = helper(10371), var(10) ;LP
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Hp Hadouken]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = helper(10371), var(12) ;HP
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Mp Hadouken]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = helper(10371), var(11) ;MP
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2

[State -1, Negative Lp Hadouken]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = helper(10371), var(40) ;QCF
triggerall = helper(10371), var(10) ;LP
triggerall = var(17) = 0
triggerall = statetype != a
triggerall = movetype != h
trigger1 = var(30) > 1 && hitpausetime = 0
trigger2 = (stateno = [200, 499]) && var(56)
trigger3 = ctrl
trigger4 = stateno = 40
trigger5 = stateno = 52
trigger6 = stateno = 53 && time > 2


;-------------------------------------------------------------------

[State -1, J. Hk]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "c3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral J. Hk]
type = ChangeState
value = 651
triggerall = var(59) != 1
triggerall = vel x =0
triggerall = !isHelper(10371)
triggerall = command = "c3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, VT1 J. Hp]
type = ChangeState
value = 4664
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "z3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, J. Hp]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral J. Mk]
type = null
value = 641
triggerall = var(59) != 1
triggerall = vel x =0
triggerall = !isHelper(10371)
triggerall = command = "b3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, J. Mk]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "b3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, VT1 J. Mp]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, J. Mp]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "y3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral J. Lk]
type = null
value = 631
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = vel x =0
triggerall = command = "a3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, J. Lk]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "a3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, VT1 J. Lp]
type = ChangeState
value = 4660
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "x3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, J. Lp]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "x3"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Cr. Hk]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "c3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Cr. Mk]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "b3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 Cr. Hp]
type = ChangeState
value = 4654
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "z3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Cr. Hp]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 Cr. Mp]
type = ChangeState
value = 4652
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "y3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Cr. Mp]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Cr. Lk]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "a3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2
trigger4 = stateno = 430 && time > 9
trigger5 = stateno = 400 && time > 9

[State -1, VT1 Cr. Lp]
type = ChangeState
value = 4650
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "x3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2
trigger4 = stateno = 430 && time > 9
trigger5 = stateno = 4650 && time > 9

[State -1, Cr. Lp]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "x3"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2
trigger4 = stateno = 430 && time > 9
trigger5 = stateno = 400 && time > 9

[State -1, St. F+Hk]
type = null
value = 253
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "c3"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. B+Hk]
type = ChangeState
value = 255
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "c3"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Hk]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "c3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Hk (Far)]
type = null
value = 254
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = p2bodydist x > 25
triggerall = command = "c3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. B+Hp]
type = null
value = 222
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 Solar Plexus Strike (F + Hp)]
type = ChangeState
value = 4646
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "z3"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Solar Plexus Strike (F + Hp)]
type = ChangeState
value = 225
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 St. Hp]
type = ChangeState
value = 4644
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "z3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Hp]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "z3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Hp (Far)]
type = null
value = 224
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = p2bodydist x <=25
triggerall = command = "z3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Mk]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "b3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Mk (Far)]
type = null
value = 241
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = p2bodydist x > 25
triggerall = command = "b3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 Collarbone Breaker (F + Mp)]
type = ChangeState
value = 4643
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "y3"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, Collarbone Breaker (F + Mp)]
type = ChangeState
value = 215
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 St. Mp]
type = ChangeState
value = 4642
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "y3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Mp]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Mp (Far)]
type = null
value = 212
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "y3"
triggerall = command != "holddown"
triggerall = p2bodydist x > 25
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, B + Lk]
type = null
value = 231
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "a3"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Lk]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "a3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, VT1 St. Lp]
type = ChangeState
value = 4640
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = var(15)
triggerall = var(14) = 1
triggerall = command = "x3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Lp]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = command = "x3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 2

[State -1, St. Lp (Close)]
type = null
value = 201
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = p2bodydist x > 25
triggerall = command = "x3"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 53 && time > 3

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
triggerall = !isHelper(10371)
triggerall = statetype != a
triggerall = command = "dash"
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
triggerall = !isHelper(10371)
trigger1 = command = "dash back"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = !isHelper(10371)
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl
