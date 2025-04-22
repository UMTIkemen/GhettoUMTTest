; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;===================< BUTTON REMAPPING >===================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================< DEFAULT VALUES >===================

[Defaults]
command.time = 15
command.buffer.time = 1


;===================< SINGLE BUTTON >===================

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


;===================< HOLD DIR >===================

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


;===================< HOLD BUTTON >===================

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
name = "holdstart"
command = /s
time = 1


;===================< DIR >===================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1


;===================< SUPER MOTIONS >===================

[Command]
name = "tenraiha"
command = ~a, ~c, ~y, ~y, $U
time = 60

[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+y
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+z
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, y+z
time = 30

[Command]
name = "2dfa"
command = ~D, DF, F, D, DF, a
time = 30
[Command]
name = "2dfb"
command = ~D, DF, F, D, DF, b
time = 30
[Command]
name = "2dfc"
command = ~D, DF, F, D, DF, c
time = 30
[Command]
name = "2dfa"
command = ~D, DF, F, D, DF, ~a
time = 30
[Command]
name = "2dfb"
command = ~D, DF, F, D, DF, ~b
time = 30
[Command]
name = "2dfc"
command = ~D, DF, F, D, DF, ~c
time = 30


;===================< SPECIAL MOTIONS >===================

[Command]
name = "hcf2p"
command = ~B, DB, D, DF, F, x+y
time = 30
[Command]
name = "hcf2p"
command = ~B, DB, D, DF, F, x+z
time = 30
[Command]
name = "hcf2p"
command = ~B, DB, D, DF, F, y+z
time = 30

[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+b
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+c
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, b+c
time = 30

[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, x
time = 30
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, y
time = 30
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, z
time = 30
[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, ~x
time = 30
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, ~y
time = 30
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, ~z
time = 30

[Command]
name = "qcfx"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfs"
command = ~D, DF, F, start
time = 15
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, ~z
time = 15
[Command]
name = "qcfs"
command = ~D, DF, F, ~start
time = 15

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "qcbx"
command = ~D, DB, B, x
time = 15
[Command]
name = "qcby"
command = ~D, DB, B, y
time = 15
[Command]
name = "qcbz"
command = ~D, DB, B, z
time = 15
[Command]
name = "qcbx"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "qcby"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "qcbz"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "qcb2p"
command = ~D, DB, B, x+z
time = 20
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "dfx"
command = ~F, D, DF, x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, z
time = 20
[Command]
name = "dfx"
command = ~F, D, DF, ~x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, ~y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, ~z
time = 20

[Command]
name = "df2p"
command = ~F, D, DF, x+y
time = 25
[Command]
name = "df2p"
command = ~F, D, DF, x+z
time = 25
[Command]
name = "df2p"
command = ~F, D, DF, y+z
time = 25

[Command]
name = "dfa"
command = ~F, D, DF, a
time = 20
[Command]
name = "dfb"
command = ~F, D, DF, b
time = 20
[Command]
name = "dfc"
command = ~F, D, DF, c
time = 20
[Command]
name = "dfa"
command = ~F, D, DF, ~a
time = 20
[Command]
name = "dfb"
command = ~F, D, DF, ~b
time = 20
[Command]
name = "dfc"
command = ~F, D, DF, ~c
time = 20

[Command]
name = "df2k"
command = ~F, D, DF, a+b
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, a+c
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, b+c
time = 20

[Command]
name = "Counter_P"
command = F, D, DF, x
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, y
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, z
time = 16

[Command]
name = "Counter_K"
command = F, D, DF, a
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, b
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, c
time = 16


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "airdashf"
command = UF, ~F, F
time = 10
[Command]
name = "airdashf"
command = UF, ~UF, UF
time = 10

[Command]
name = "airdashb"
command = UB, ~B, B
time = 10
[Command]
name = "airdashb"
command = UB, ~UB, UB
time = 10


;===================< DOUBLE TAP >===================

[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;===================< 2/3 BUTTON COMBINATION >===================

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = x+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "2p"
command = x+y
time = 1
[Command]
name = "2p"
command = x+z
time = 1
[Command]
name = "2p"
command = y+z
time = 1

[Command]
name = "2k"
command = a+b
time = 1
[Command]
name = "2k"
command = a+c
time = 1
[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "roll"
command = a+x
time = 1

[Command]
name = "darkforce"
command = b+y
time = 1

[Command]
name = "darkforce"
command = c+z
time = 1


;===========================================================================
;===============================< -1 STATES >=================================
;===========================================================================

[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno = 52 || (stateno = 105 && anim = 106) || stateno = 5120) && !animtime
trigger2 = (stateno = [200, 259]) && !animtime
trigger3 = (stateno = [710, 729]) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, roll / dodge]
type = changestate
value = ifelse((command = "holdfwd" || command = "holdback"), 720, 710)
trigger1 = !AIlevel
trigger1 = command = "roll"
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl

[State -1, tenraiha]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = command = "tenraiha"
triggerall = roundstate = 2 && statetype != A && power >= 3000
triggerall = !numhelper(3405) && !numhelper(3410)
trigger1 = ctrl
trigger2 = (stateno = [200, 255])
trigger3 = (stateno = [1000, 1999]) && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, jireitou]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "hcf2k"
triggerall = roundstate = 2 && statetype != A && power >= 2000
triggerall = !numhelper(1205) && !numhelper(1225) && !numhelper(3205)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])
trigger3 = (stateno = [1000, 1999]) && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, bowling]
type = changestate
value = 3500
triggerall = !AIlevel
triggerall = command = "hcb2p"
triggerall = roundstate = 2 && statetype != A && power >= 1000
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])
trigger3 = (stateno = [1000, 1999]) && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, chuukadan]
type = changestate
value = 2000
triggerall = !AIlevel
triggerall = command = "hcf2p"
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !numhelper(2005)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])
trigger3 = (stateno = [1000, 1999]) && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, detonatechuukadan]
type = changestate
value = 2002
triggerall = !AIlevel
triggerall = command = "hcf2p" 
triggerall = numhelper(2005)
triggerall = helper(2005), stateno != 2020
triggerall = roundstate = 2 && statetype != A && ctrl
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])
trigger3 = (stateno = [1000, 1999]) && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, EXsenpuubu]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = roundstate = 2 && var(31) <= 1 && power >= 1000 && stateno != 110
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, EXjireitou]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = command = "df2k"
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !numhelper(1205) && !numhelper(1225) && !numhelper(3205)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, EXhenkyouki]
type = changestate
value = 1320
triggerall = !AIlevel
triggerall = command = "qcb2p"
triggerall = roundstate = 2 && power >= 1000 && stateno != 110
triggerall = !numhelper(1305) && !numhelper(1325)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, EXankihou]
type = changestate
value = 1050
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !numhelper(1055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, senpuubu]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = roundstate = 2 && var(31) <= 1 && stateno != 110
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 285]) && (prevstateno != [200, 285]) && (movecontact = [1, 8])

[State -1, jireitou]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "dfa" || command = "dfb" || command = "dfc"
triggerall = roundstate = 2 && statetype != A
triggerall = !numhelper(1205) && !numhelper(1225) && !numhelper(3205)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, houtengeki]
type = changestate
value = 1400
trigger1 = !AIlevel
trigger1 = command = "hcbx" || command = "hcby" || command = "hcbz"
trigger1 = roundstate = 2 && statetype != A && ctrl

[State -1, ankihou]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype != A
triggerall = !numhelper(1005) && !numhelper(1055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, henkyouki]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "qcbx" || command = "qcby" || command = "qcbz"
triggerall = roundstate = 2 && !numhelper(1305) && !numhelper(1325) && stateno != 110
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 245
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, EXpounce]
type = changestate
value = 1460
trigger1 = !AIlevel
trigger1 = command = "holdup" && command = "recovery"
trigger1 = statetype != A && roundstate = 2 && power >= 1000
trigger1 = (ctrl || stateno = 40) && enemynear, alive
trigger1 = enemynear, hitfall || enemynear, statetype = L

[State -1, pounce]
type = changestate
value = 1450
trigger1 = !AIlevel
trigger1 = command = "holdup" && (command = "x" || command = "y" || command = "z")
trigger1 = statetype != A && roundstate = 2
trigger1 = (ctrl || stateno = 40) && enemynear, alive
trigger1 = enemynear, hitfall || enemynear, statetype = L

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = !var(33) && roundstate = 2 && alive && power >= 2000 && statetype != A

[State -1, airthrow]
type = changestate
value = 850
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = A && var(9) != 2
trigger1 = ctrl && stateno != 110 && (pos y <= -42 || vel y < 0)

[State -1, throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = S && ctrl && stateno != 100

[State -1, Air Dash]
type = changestate
value = 110
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB" || command = "airdashf" || command = "airdashb"
trigger1 = roundstate = 2 && statetype = A && stateno != 110 && pos y <= -16
trigger1 = ctrl

[State -1, run / dash]
type = changestate
value = ifelse(command = "FF", 100, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S
trigger1 = ctrl

[State -1, getupslide]
type = selfstate
value = 5230
trigger1 = !AIlevel
trigger1 = stateno = 5110
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "recovery" || command = "2k")
trigger1 = roundstate = 2 && alive

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command = "x" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = stateno = 245 && time >= 5

[State -1, SMP2]
type = changestate
value = 207
triggerall = !AIlevel
triggerall = command = "y" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 215) && (movecontact = [1, 4])
trigger3 = (stateno = 230 || stateno = 245) && (movecontact = [1, 4])

[State -1, SMP]
type = changestate
value = 205
triggerall = !AIlevel
triggerall = command = "y" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 215) && (movecontact = [1, 4])
trigger3 = (stateno = 230 || stateno = 245) && (movecontact = [1, 4])

[State -1, SHP2]
type = changestate
value = 212
triggerall = !AIlevel
triggerall = command = "z" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, SHP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "z" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, SLK]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = command = "a" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && (movecontact = [1, 4])
trigger3 = stateno = 245 && time >= 5

[State -1, SMK]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command = "b" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || stateno = 215) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || stateno = 245) && (movecontact = [1, 4])

[State -1, SHK]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 212]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 240]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, CLP]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command = "x" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = stateno = 245 && time >= 5

[State -1, CMP]
type = changestate
value = 235
triggerall = !AIlevel
triggerall = command = "y" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 215 || stateno = 245) && (movecontact = [1, 4])

[State -1, CHP]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "z" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, CLK]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = command = "a" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && (movecontact = [1, 4])
trigger3 = stateno = 245 && time >= 5

[State -1, CMK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command = "b" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || stateno = 215) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || stateno = 245) && (movecontact = [1, 4])

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 212]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 240]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, ALP]
type = changestate
value = 260
triggerall = !AIlevel
triggerall = command = "x" && statetype = A
trigger1 = ctrl

[State -1, AMP]
type = changestate
value = 265
triggerall = !AIlevel
triggerall = command = "y" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 260 || stateno = 275) && (movecontact = [1, 4]) && var(9) != 2

[State -1, AHP]
type = changestate
value = 270
triggerall = !AIlevel
triggerall = command = "z" && statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [260, 265]) || (stateno = [275, 280])) && (movecontact = [1, 4]) && var(9) != 2

[State -1, ALK]
type = changestate
value = 275
triggerall = !AIlevel
triggerall = command = "a" && statetype = A
trigger1 = ctrl
trigger2 = stateno = 260 && (movecontact = [1, 16]) && var(9) != 2

[State -1, AMK]
type = changestate
value = 280
triggerall = !AIlevel
triggerall = command = "b" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 260 || stateno = 265 || stateno = 275) && (movecontact = [1, 4]) && var(9) != 2
trigger2 = ((stateno = [260, 265]) || stateno = 275) && (movecontact = [1, 4]) && var(9) != 2

[State -1, AHK]
type = changestate
value = 285
triggerall = !AIlevel
triggerall = command = "c" && statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [260, 270]) || (stateno = [275, 280])) && (movecontact = [1, 4]) && var(9) != 2

[State -1, ankihoutaunt]
type = changestate
value = 197
triggerall = !AIlevel
triggerall = command = "qcfs"
triggerall = statetype != A && !numhelper(1005)
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])

[State -1, taunt]
type = changestate
value = 195
triggerall = !AIlevel
triggerall = command = "start" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (prevstateno != [200, 255]) && stateno != 240 && (movecontact = [1, 8])


;===========================================================================
;=================================< A.I. >====================================
;===========================================================================

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && stateno != 110
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = [150, 153]
trigger1 = roundstate = 2 && power >= 2000 && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, bomb]
type = changestate
value = 105
trigger1 = AIlevel && numenemy
trigger1 = statetype != A && roundstate = 2
trigger1 = numhelper(2005) && (stateno != [100, 105]) && ctrl
trigger1 = (helper(2005), backedgebodydist > 0) && (helper(2005), frontedgebodydist > 0)
trigger1 = ((helper(2005), pos x - pos x) * facing) = [ -160, 0]
[State -1, bomb]
type = changestate
value = 230
trigger1 = AIlevel && numenemy
trigger1 = statetype != A && roundstate = 2
trigger1 = numhelper(2005) && ctrl
trigger1 = ((helper(2005), pos x - pos x) * facing) = [0, 100]

[State -1, detonatechuukadan]
type = changestate
value = 2002
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && numhelper(2005) && ctrl
triggerall = (p2stateno != [120, 155])
triggerall = (helper(2005), rootdist x != [ -160, 160]) && (helper(2005), p2dist x = [ -155, 155])
triggerall = helper(2005), p2dist y = [ -120, 0]
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = p2statetype = L

[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, airrun]
type = changestate
value = 110
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = statetype = A && stateno != 110 && pos y <= -24
trigger1 = enemynear, movetype != A && p2bodydist x > 120
trigger1 = ctrl && var(9) != 2

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, getupslide]
type = selfstate
value = 5230
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && stateno = 5110 && alive
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, EXpounce]
type = changestate
value = 1460
trigger1 = AIlevel && numenemy
trigger1 = statetype != A && roundstate = 2 && power >= 1000
trigger1 = numenemy && ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, alive && enemynear, stateno != 5120
trigger1 = (enemynear, statetype = L || enemynear, hitfall) && !(enemynear, canrecover)

[State -1, pounce]
type = changestate
value = 1450
trigger1 = AIlevel && numenemy
trigger1 = statetype != A && roundstate = 2
trigger1 = numenemy && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, alive && enemynear, stateno != 5120
trigger1 = (enemynear, statetype = L || enemynear, hitfall)

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 100]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 205
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 82]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SMP2]
type = changestate
value = 207
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 133]) && (p2bodydist y = [ -50, 50]) && p2statetype = C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 175]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, SHP2]
type = changestate
value = 212
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [40, 160]) && (p2dist y = [ -120, 0]) && p2statetype = A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 215
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 92]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 63]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 215 || stateno = 230 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 110]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 210 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 87]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 235
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 110]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 150]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 80]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 235 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 32]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 210 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 260
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 57]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 265
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 66]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 260 || stateno = 275) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 270
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 85]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 265 || stateno = 280) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 275
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 62]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 260 && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 280
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 62]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall) && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 265 || stateno = 275) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 285
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 35]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 265 || stateno = 270 || stateno = 280) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, airthrow]
type = changestate
value = 850
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && var(9) != 2
triggerall = ctrl && (pos y <= -42 || vel y < 0) && stateno != 110
triggerall = p2statetype = A && p2movetype = I
trigger1 = (p2bodydist x = [0, 16]) && (p2bodydist y = [ -50, 50]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (p2bodydist x = [0, 60]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, houtengeki]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype = I
trigger1 = (p2bodydist x = [0, 42]) && (p2bodydist y = [ -50, 50]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (p2bodydist x = [0, 78]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype = I
trigger1 = (p2bodydist x = [0, 26]) && (p2bodydist y = [ -50, 50]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, bowling]
type = changestate
value = 3500
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = p2statetype != A && p2statetype != L && p2movetype = I && !(enemynear, hitfall)
trigger1 = ctrl && (p2bodydist x = [0, 36]) && (p2bodydist y = [ -50, 50]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, senpuubu]
type = changestate
value = 1100
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && var(31) <= 1 && stateno != 110
trigger1 = (p2stateno != [120, 155]) && p2dist x > 0 && (p2dist y = [ -100, 100])
trigger1 = ctrl && backedgedist < 25 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ankihou]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = !numhelper(1005) && !numhelper(1055)
trigger1 = ctrl && p2dist x > 160 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 225) && (prevstateno != [200, 255]) && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, jireitou]
type = changestate
value = 1200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = (p2stateno != [120, 155])
trigger1 = (p2bodydist x = [0, 60]) && (enemynear, vel y > -1)
trigger1 = !numhelper(1205) && !numhelper(1225) && !numhelper(3205)
trigger1 = ctrl && (enemynear, vel x > -2) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, henkyouki]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && stateno != 110
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = !numhelper(1305) && !numhelper(1325) && !numhelper(3205)
trigger1 = ctrl && (p2bodydist x = [60, 80]) && (p2bodydist y = [ -50, 50]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && enemy, numproj && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, tenraiha]
type = changestate
value = 3400
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && power >= 3000
trigger1 = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = (p2dist x = [40, 120]) && (p2bodydist y = [ -100, 50])
trigger1 = !numhelper(3405) && !numhelper(3410)
trigger1 = (stateno = 210 || stateno = 225) && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, EXankihou]
type = changestate
value = 1050
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155]) && !(enemynear, hitfall)
triggerall = !numhelper(1005) && !numhelper(1055)
trigger1 = ctrl && p2dist x < 160 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 225) && (prevstateno != [200, 255]) && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, EXsenpuubu]
type = changestate
value = 1120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && var(31) <= 1 && power >= 1000 && stateno != 110
trigger1 = !(enemynear, ctrl) && (enemynear, stateno != [120, 155]) && !(enemynear, hitfall)
trigger1 = p2dist x > 0 && (p2dist y = [ -100, 100])
trigger1 = ctrl && backedgedist < 25 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EXjireitou]
type = changestate
value = 1220
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && power >= 1000
trigger1 = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = (p2bodydist x = [0, 120]) && (enemynear, vel y > -1)
trigger1 = !numhelper(1205) && !numhelper(1225) && !numhelper(3205)
trigger1 = ctrl && (enemynear, vel x > -2) && random < (75 * (AIlevel ** 2 / 64.0))

[State -1, chuukadan]
type = changestate
value = 2000
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && power >= 1000
trigger1 = !numhelper(2005)
trigger1 = ctrl && p2dist x > 160 && life >= 600 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, jireitou]
type = changestate
value = 3400
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && power >= 2000
trigger1 = !numhelper(1205) && !numhelper(1225) && !numhelper(3205)
trigger1 = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = (p2bodydist x = [0, 120]) && p2bodydist y >= -120
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 100) * (AIlevel ** 2 / 64.0))
