;======================================================================
;======================================================================
; Commands file for "Sayuri Kurata"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Button remapping and default initialize
;----------------------------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;----------------------------------------------------------------------
; Final Memory
;----------------------------------------------------------------------

[Command]
name = "2A2Z"
command = ~D, F, D, F, a+x
time = 40

;----------------------------------------------------------------------
; Eterny Special
;----------------------------------------------------------------------

[Command]
name = "6321463214c"
command = ~D, F, D, F, z
time = 40

[Command]
name = "6321463214b"
command = ~D, F, D, F, y
time = 40

[Command]
name = "6321463214a"
command = ~D, F, D, F, x
time = 40

[Command]
name = "2141236c"
command = ~D, B, D, B, z
time = 25

[Command]
name = "2141236b"
command = ~D, B, D, B, y
time = 25

[Command]
name = "2141236a"
command = ~D, B, D, B, x
time = 25

[Command]
name = "236236c"
command = ~D, F, D, F, c
time = 25

[Command]
name = "236236b"
command = ~D, F, D, F, b
time = 25

[Command]
name = "236236a"
command = ~D, F, D, F, a
time = 25

[Command]
name = "214214c"
command = ~D, D, D, D, c
time = 25

[Command]
name = "214214b"
command = ~D, B, D, B, b
time = 25

[Command]
name = "214214a"
command = ~D, B, D, B, a
time = 25

;----------------------------------------------------------------------
; Special Moves
;----------------------------------------------------------------------

[Command]
name = "41236c_2"
command = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "41236b_2"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "41236a_2"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "41236c"
command = ~B, D, F, c
time = 20

[Command]
name = "41236b"
command = ~B, D, F, b
time = 20

[Command]
name = "41236a"
command = ~B, D, F, a
time = 20

[Command]
name = "412c"
command = ~B, D, c
time = 10

[Command]
name = "412b"
command = ~B, D, b
time = 10

[Command]
name = "412a"
command = ~B, D, a
time = 10

[Command]
name = "623c"
command = ~D, B, z
time = 15

[Command]
name = "623b"
command = ~D, B, y
time = 15

[Command]
name = "623a"
command = ~D, B, x
time = 15

[Command]
name = "214c"
command = ~D, B, c
time = 10

[Command]
name = "214b"
command = ~D, B, b
time = 10

[Command]
name = "214a"
command = ~D, B, a
time = 10

[Command]
name = "236c"
command = ~D, F, c
time = 10

[Command]
name = "236b"
command = ~D, F, b
time = 10

[Command]
name = "236a"
command = ~D, F, a
time = 10

[Command]
name = "22c"
command = ~D, D, c
time = 15

;----------------------------------------------------------------------
; Single Button
;----------------------------------------------------------------------

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

;----------------------------------------------------------------------
; Directions
;----------------------------------------------------------------------

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
name = "up"
command = $U
time = 1

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "back"
command = $B
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

;----------------------------------------------------------------------
; Others
;----------------------------------------------------------------------

[Command]
name = "ab"
command = a+b 
time = 1

[Command]
name = "bc"
command = b+c 
time = 1

[Command]
name = "ac"
command = a+c
time = 1

;----------------------------------------------------------------------
; System Required
;----------------------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10
command.buffer.time = 5

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "FF_2"
command = F, F
time = 15

[Command]
name = "BB_2"
command = B, B
time = 15

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

;======================================================================
;======================================================================
; Statedef -1
;======================================================================
;======================================================================

[Statedef -1]

;----------------------------------------------------------------------
; Hyper Special Moves
;----------------------------------------------------------------------

[State -1, 2A2Z]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2A2Z"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 3000
triggerall = ((Life*100)/LifeMax) <= 33
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 7000

;----------------------------------------------------------------------
; Super Special Moves
;----------------------------------------------------------------------

[State -1, 6321463214A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "6321463214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6100

[State -1, 6321463214A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "6321463214b" || command = "6321463214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6100

[State -1, 6321463214B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "6321463214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6110

[State -1, 6321463214B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "6321463214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6110

[State -1, 6321463214C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "6321463214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6120

[State -1, 214214A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106100

[State -1, 214214A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214214b" || command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106100

[State -1, 214214B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106110

[State -1, 214214B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106110

[State -1, 214214C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106120

[State -1, 2141236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6000

[State -1, 2141236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6000

[State -1, 2141236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6010

[State -1, 2141236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6010

[State -1, 2141236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6020

[State -1, 2141236A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106000

[State -1, 2141236A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106000

[State -1, 2141236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106010

[State -1, 2141236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106010

[State -1, 2141236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 106020

[State -1, 236236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6200

[State -1, 236236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236236b" || command = "236236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6200

[State -1, 236236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6210

[State -1, 236236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6210

[State -1, 236236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 6220

;----------------------------------------------------------------------
; Super Moves
;----------------------------------------------------------------------

[State -1, 41236A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101400

[State -1, 41236B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101410

[State -1, 41236C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101420

[State -1, 41236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1400

[State -1, 41236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1410

[State -1, 41236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = fvar(16) != [2,3] 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1410

[State -1, 41236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "41236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1420

[State -1, 623A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1100

[State -1, 623B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1110

[State -1, 623C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1110

[State -1, 623C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1120

[State -1, 214A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1100

[State -1, 214B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1110

[State -1, 214C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1110

[State -1, 214C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1120

[State -1, 412C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101220

[State -1, 214A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1300

[State -1, 214B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1300

[State -1, 214C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1300

[State -1, 214A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = P2StateNo = var(15)
triggerall = var(15) != 0
triggerall = var(28) = 0
trigger1 = StateNo = [150,153]
value = 1320

[State -1, 623A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101300

[State -1, 623A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101350

[State -1, 623B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101310

[State -1, 623B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101360

[State -1, 623C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101310

[State -1, 623C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101360

[State -1, 623C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101320

[State -1, 623C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101370

[State -1, 236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1000

[State -1, 236A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1050

[State -1, 236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1010

[State -1, 236B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1060

[State -1, 236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1010

[State -1, 236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 1020

[State -1, 236C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 1070

[State -1, 236A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101000

[State -1, 236B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101010

[State -1, 236C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101010

[State -1, 236C - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,320]) && (var(1) = [1,3])
trigger3 = (StateNo = [100200,100320]) && (var(1) = [1,3])
trigger4 = StateNo = 106
value = 101020

[State -1, 412A]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 1200

[State -1, 412B]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 1213
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 1210

[State -1, 412C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 1210

[State -1, 412C]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 1220

[State -1, 412A - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101200

[State -1, 412B - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "412b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [400,420]) && (var(1) = [1,3])
trigger3 = (StateNo = [100400,100420]) && (var(1) = [1,3])
value = 101210

;----------------------------------------------------------------------
; Special Moves
;----------------------------------------------------------------------

[State -1, Instant Charge]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = (StateNo = [200,320]) && (var(1) >= 1) && command = "22c"
trigger2 = (StateNo = [1100,1129]) && (var(1) >= 1) && command = "22c"
trigger3 = (StateNo = 1320) && (var(1) >= 1) && command = "22c"
trigger4 = (StateNo = [1400,1420]) && (var(1) = 2) && command = "22c"
trigger5 = (StateNo = [6000,6020]) && (var(1) = 2) && command = "22c"
trigger6 = (StateNo = [100200,100320]) && (var(1) >= 1) && command = "22c"
trigger7 = (StateNo = [101300,101370]) && (var(1) >= 1) && command = "22c"
trigger8 = (StateNo = [106000,106020]) && (var(1) = 2) && command = "22c"
trigger9 = (StateNo = [1000,1099]) && var(16) = 1
trigger10 = (StateNo = [101000,101099]) && var(16) = 1
value = 600

[State -1, Instant Charge]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = (StateNo = [400,420]) && (var(1) >= 1) && command = "22c"
trigger2 = (StateNo = [1100,1129]) && (var(1) >= 1) && command = "22c"
trigger3 = (StateNo = [1200,1229]) && (var(1) >= 1) && command = "22c"
trigger4 = (StateNo = 1320) && (var(1) >= 1) && command = "22c"
trigger5 = (StateNo = [100400,100420]) && (var(1) >= 1) && command = "22c"
trigger6 = (StateNo = [101300,101370]) && (var(1) >= 1) && command = "22c"
trigger7 = (StateNo = [1000,1099]) && var(16) = 1
trigger8 = (StateNo = [101000,101099]) && var(16) = 1
value = 610

[State -1, Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "FF"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 100
triggerall = StateNo != 105
trigger1 = Ctrl
trigger2 = StateNo = 106
value = 100

[State -1, Back Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "BB"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 100
triggerall = StateNo != 105
trigger1 = Ctrl
trigger2 = StateNo = 106
value = 105

[State -1, Air Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != [110,116]
triggerall = StateNo != 1213
triggerall = var(6) = 0
triggerall = Pos Y <= -40
trigger1 = Ctrl && command = "FF"
trigger2 = (StateNo = [400,420]) && (var(1) >= 1) && command = "FF"
trigger3 = (StateNo = [400,420]) && (var(1) >= 1) && var(27) = 1
value = 110

[State -1, Air Back Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != [110,116]
triggerall = StateNo != 1213
triggerall = var(6) = 0
triggerall = Pos Y <= -40
trigger1 = Ctrl && command = "BB"
trigger2 = (StateNo = [400,420]) && (var(1) >= 1) && command = "BB"
trigger3 = (StateNo = [400,420]) && (var(1) >= 1) && var(27) = 2
value = 115

[State -1, Air Jump]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 1213
triggerall = var(5) < 1
triggerall = ctrl
trigger1 = var(7) = 1
value = 45

[State -1, Throw - in Ground]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = StateType = S
triggerall = MoveType = I
triggerall = P2BodyDist X < 20
triggerall = P2MoveType != H
triggerall = P2StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = ctrl
triggerall = P2StateNo != [120,155]
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
value = 500

[State -1, Throw - in Ariel]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = P2BodyDist X < 30
triggerall = Alive
triggerall = !isHelper
triggerall = P2StateNo != [120,155]
triggerall = ctrl
trigger1 = command = "holdfwd"
value = 520

[State -1, Jump Cancel - in Ground]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "up"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = (StateNo = 200) && (var(1) = [1,3])
trigger2 = (StateNo = 210) && (var(1) = [1,3])
trigger3 = (StateNo = 300) && (var(1) = [1,3])
trigger4 = (StateNo = 310) && (var(1) = [1,3])
trigger5 = (StateNo = 320) && (var(1) = 1)
trigger6 = (StateNo = 100230) && (var(1) = [1,3])
trigger7 = (StateNo = 100310) && (var(1) = [1,3])
trigger8 = (StateNo = 100320) && (var(1) = [1,3])
value = 40

[State -1, Jump Cancel - in Air]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "up" || command = "holdup"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo = [400,420]
triggerall = var(5) < 1
trigger1 = var(1) = [1,3]
value = 45

;----------------------------------------------------------------------
; Basic Attacks
;----------------------------------------------------------------------

[State -1, Stand Light Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 300 && (var(1) = [1,3])
value = 200

[State -1, Stand Medium Attack(Near)]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = P2BodyDist X <= 40
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 300 && (var(1) = [1,3])
value = 210

[State -1, Stand Medium Attack(far)]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = P2BodyDist X > 40
trigger1 = Ctrl || var(14) = 1
trigger2 = P2BodyDist X > 40
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = P2BodyDist X > 40
trigger4 = StateNo = 300 && (var(1) = [1,3])
trigger5 = StateNo = 100310 && (var(1) = [1,3])
value = 220

[State -1, Stand Strong Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 220 && (var(1) = [1,3])
trigger5 = StateNo = 300 && (var(1) = [1,3])
trigger6 = StateNo = 310 && (var(1) = [1,3])
trigger7 = StateNo = 100310 && (var(1) = [1,3])
value = 230

[State -1, Stand Strong Attack - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 220 && (var(1) = [1,3])
trigger5 = StateNo = 300 && (var(1) = [1,3])
trigger6 = StateNo = 310 && (var(1) = [1,3])
trigger7 = StateNo = 100310 && (var(1) = [1,3])
value = 100230

[State -1, Crouch Light Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 300 && (var(1) = [1,3])
value = 300

[State -1, Crouch Medium Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 300 && (var(1) = [1,3])
value = 310

[State -1, Crouch Medium Attack - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 300 && (var(1) = [1,3])
value = 100310

[State -1, Crouch Strong Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 220 && (var(1) = [1,3])
trigger5 = StateNo = 300 && (var(1) = [1,3])
trigger6 = StateNo = 310 && (var(1) = [1,3])
trigger7 = StateNo = 100310 && (var(1) = [1,3])
value = 320

[State -1, Crouch Strong Attack - EX]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 220 && (var(1) = [1,3])
trigger5 = StateNo = 300 && (var(1) = [1,3])
trigger6 = StateNo = 310 && (var(1) = [1,3])
trigger7 = StateNo = 100310 && (var(1) = [1,3])
value = 100320

[State -1, Ariel Light Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 400 && (var(1) = [1,3])
value = 400

[State -1, Ariel Medium Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 400 && (var(1) = [1,3])
value = 410

[State -1, Ariel Strong Attack]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 400 && (var(1) = [1,3])
trigger3 = StateNo = 410 && (var(1) = [1,3])
value = 420

;======================================================================
;======================================================================
; Early Input
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Super Moves
;----------------------------------------------------------------------

[State -1, 412A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1200

[State -1, 412B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 1213
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1210

[State -1, 412C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 1210

[State -1, 412C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 1220

[State -1, 412A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101200

[State -1, 412B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101210

[State -1, 412C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "412c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101220

[State -1, 214A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 1100

[State -1, 214B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 1110

[State -1, 214C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 1110

[State -1, 214C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 1120

[State -1, 214A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1300

[State -1, 214B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1300

[State -1, 214C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1300

[State -1, 236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = StateNo = 125
var(18) = 1000

[State -1, 236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = StateNo = 125
var(18) = 1050

[State -1, 236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = StateNo = 125
var(18) = 1010

[State -1, 236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = StateNo = 125
var(18) = 1060

[State -1, 236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 1010

[State -1, 236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 1020

[State -1, 236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = NumHelper(11000) = 0
triggerall = NumHelper(11010) = 0
triggerall = NumHelper(11020) = 0
triggerall = NumHelper(11050) = 0
triggerall = NumHelper(11060) = 0
triggerall = NumHelper(11070) = 0
trigger1 = StateNo = 125
var(18) = 1070

[State -1, 236A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
trigger1 = StateNo = 125
var(18) = 101000

[State -1, 236B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
trigger1 = StateNo = 125
var(18) = 101010

[State -1, 236C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 101010

[State -1, 236C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = NumHelper(111000) = 0
triggerall = NumHelper(111010) = 0
triggerall = NumHelper(111020) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 101020

[State -1, 623A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1100

[State -1, 623B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1110

[State -1, 623C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 1110

[State -1, 623C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 1120

[State -1, 623A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101300

[State -1, 623A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101350

[State -1, 623B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101310

[State -1, 623B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101360

[State -1, 623C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 101310

[State -1, 623C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 101360

[State -1, 623C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 101320

[State -1, 623C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 101370

[State -1, 41236A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236a_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101400

[State -1, 41236B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236b_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101410

[State -1, 41236C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236c_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
trigger1 = StateNo = 125
var(18) = 101420

[State -1, 41236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236a_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1400

[State -1, 41236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236b_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
trigger1 = StateNo = 125
var(18) = 1410

[State -1, 41236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236c_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = fvar(16) != [2,3] 
trigger1 = StateNo = 125
var(18) = 1410

[State -1, 41236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "41236c_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3 
trigger1 = StateNo = 125
var(18) = 1420

;----------------------------------------------------------------------
; Super Special Moves
;----------------------------------------------------------------------

[State -1, 214214A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 106100

[State -1, 214214A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214214b" || command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 106100

[State -1, 214214B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 106110

[State -1, 214214B - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 106110

[State -1, 214214C - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 106120

[State -1, 2141236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6000

[State -1, 2141236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 6000

[State -1, 2141236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 6010

[State -1, 2141236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 6010

[State -1, 2141236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 6020

[State -1, 2141236A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 106000

[State -1, 2141236A - EX]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 106000

[State -1, 2141236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 106010

[State -1, 2141236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 106010

[State -1, 2141236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 1
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 106020

[State -1, 236236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6200

[State -1, 236236A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236236b" || command = "236236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 6200

[State -1, 236236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 6210

[State -1, 236236B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 6210

[State -1, 236236C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "236236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 6220

[State -1, 6321463214A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "6321463214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6100

[State -1, 6321463214A]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "6321463214b" || command = "6321463214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 6100

[State -1, 6321463214B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "6321463214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 6110

[State -1, 6321463214B]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "6321463214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 6110

[State -1, 6321463214C]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "6321463214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(28) = 0
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 6120

;----------------------------------------------------------------------
; Hyper Special Moves
;----------------------------------------------------------------------

[State -1, 2A2Z]
type = VarSet
triggerall = var(59) = 0
triggerall = command = "2A2Z"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 3000
triggerall = ((Life*100)/LifeMax) <= 33
trigger1 = StateNo = 125
var(18) = 7000
