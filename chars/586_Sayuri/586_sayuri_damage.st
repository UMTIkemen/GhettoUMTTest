;======================================================================
;======================================================================
; Damage states file for "Sayuri Kurata"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Throw
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Standing Throw - No.1

[Statedef 40501]
type = S
movetype = H
physics = N

[State 40501, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40501, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40501

[State 40501, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.2

[Statedef 40502]
type = S
movetype = H
physics = N

[State 40502, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40502, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 40502

[State 40502, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.3

[Statedef 40503]
type = A
movetype = H
physics = N

[State 40503, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40503, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 40503

[State 40503, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.4(Fall)

[Statedef 40504]
type = A
movetype = H
physics = N
velset = 5,-4

[State 40504, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 40504, Turn]
type = Turn
trigger1 = Time = 0

[State 40504, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 40504, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 40504, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 40504, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ariel Throw

[Statedef 40530]
type = A
movetype = H
physics = N

[State 40530, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40530, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40530

[State 40530, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.2(Fall)

[Statedef 40531]
type = A
movetype = H
physics = N
velset = -8,10

[State 40531, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 40531, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40531

[State 40531, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 40531, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 40531, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Special Move
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Fire Damage - Fall/P1

[Statedef 45010]
type = A
movetype = H
physics = N
velset = 0,0

[State 45010, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 45010, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45010, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45010

[State 45010, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 45011

;----------------------------------------------------------------------
; Fire Damage - Fall/P1

[Statedef 45011]
type = A
movetype = H
physics = N
velset = -3,-3.5

[State 45011, SelfState]
type = SelfState
trigger1 = CanRecover
trigger1 = sysvar(1) = 0
trigger1 = command = "recovery"
value = 5210

[State 45011, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45011, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 45011, VelAdd]
type = VelAdd
trigger1 = Time > 5
y = 0.35

[State 45011, PalFX]
type = PalFX
trigger1 = Time = 0
time = 40
add = 80,-44,-124
sinadd = 30,30,0,10
color = 0
invertall = 1
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5055 && Anim != 5700 && Anim != 3595 && Anim != 9015
triggerall = Time = 7
trigger1 = SelfAnimExist(7697)
value = 7697
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5055)
triggerall = Time = 6
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
value = 5055
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5700)
triggerall = Time = 6
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5700
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3595)
trigger1 = Time = 6
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3595
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9015)
triggerall = Time = 6
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9015
persistent = 0

[State 45011, PalFX]
type = PalFX
trigger1 = Anim != 45010
time = 1
mul = 255,255,255
persistent = 0

[State 45011, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; Fire Damage - Fall/P3

[Statedef 45020]
type = A
movetype = H
physics = N
velset = 0,0

[State 45020, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 45020, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45020, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45010

[State 45020, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 45021

;----------------------------------------------------------------------
; Fire Damage - Fall/P3

[Statedef 45021]
type = A
movetype = H
physics = N
velset = -3,-3.5

[State 45021, SelfState]
type = SelfState
trigger1 = CanRecover
trigger1 = sysvar(1) = 0
trigger1 = command = "recovery"
value = 5210

[State 45021, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45021, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 45021, VelAdd]
type = VelAdd
trigger1 = Time > 5
y = 0.35

[State 45021, PalFX]
type = PalFX
trigger1 = Time = 0
time = 40
add = 80,-44,-124
sinadd = 30,30,0,10
color = 0
invertall = 1
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5055 && Anim != 5700 && Anim != 3595 && Anim != 9015
triggerall = Time = 7
trigger1 = SelfAnimExist(7697)
value = 7697
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5055)
triggerall = Time = 6
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
value = 5055
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5700)
triggerall = Time = 6
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5700
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3595)
trigger1 = Time = 6
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3595
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9015)
triggerall = Time = 6
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9015
persistent = 0

[State 45021, PalFX]
type = PalFX
trigger1 = Anim != 45010
time = 1
mul = 255,255,255
persistent = 0

[State 45021, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; Thunder Damage

[Statedef 45030]
type = A
movetype = H
physics = N
velset = -0.5,-1.25

[State 45030, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45030

[State 45030, PalFX]
type = PalFX
trigger1 = Anim != 45030
time = 1
mul = 0,0,0
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 45030
trigger1 = SelfAnimExist(7696)
value = 7696
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9010)
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9010
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5056)
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
trigger2 = Name = "Mai Kawasumi" && AuthorName = "586"
value = 5056
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5710)
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5710
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3590)
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3590
persistent = 0

[State 45030, ChangeState]
type = ChangeState
trigger1 = Time > 32
value = 45031

[State 45030, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[Statedef 45031]
type = A
movetype = H
physics = N

[State 45031, SelfState]
type = SelfState
trigger1 = Time = 2
value = 5000

[State 45031, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Fall/P1

[Statedef 45040]
type = A
movetype = H
physics = N

[State 45040, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45040

[State 45040, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45040, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45040, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45040, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 45040, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Fall/P3

[Statedef 45045]
type = A
movetype = H
physics = N

[State 45045, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45040

[State 45045, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45045, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45045, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45045, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 45045, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P1

[Statedef 45050]
type = A
movetype = H
physics = N

[State 45050, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45050, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45050, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45050, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 45051

[State 45050, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P1

[Statedef 45051]
type = S
movetype = H
physics = S

[State 45051, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 45051, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 45051, HitFallSet]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 45051, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45051, ChangeState]
type = ChangeState
trigger1 = Time > 60
value = 45069

[State 45051, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P3

[Statedef 45055]
type = A
movetype = H
physics = N

[State 45055, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45055, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45055, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45055, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45055, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 45056

[State 45055, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P3

[Statedef 45056]
type = S
movetype = H
physics = S

[State 45056, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 45056, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 45056, HitFallSet]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 45056, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45056, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45056, ChangeState]
type = ChangeState
trigger1 = Time > 60
value = 45069

[State 45056, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/Recover

[Statedef 45069]
type = S
movetype = H
physics = S
velset = -5,0

[State 45069, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45069

[State 45069, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 45069, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Wire Damage
;
;45000		- Initialize velocity and change animation
;45001		- Scatter to wall
;45002		- Crash into wall
;45003		- Turn to opposite
;45004		- Fall in down

[Statedef 45000]
type = A
movetype = H
physics = N

[State 45000, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 45000, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 45000, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = Time > 0
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 45000, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 45000, ChangeState]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 45001

[State 45000, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[Statedef 45001]
type = A
movetype = H
physics = N

[State 45001, Gravity]
type = Gravity
trigger1 = 1

[State 45001, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 45001, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45001, ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist < 5
value = 45002

[State 45001, SelfState]
type = SelfState
trigger1 = Time > 3
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[Statedef 45002]
type = A
movetype = H
phisics = N

[State 45002, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = (GetHitVar(fall.recovertime)*2)-(GetHitVar(fall.recovertime)-sysvar(1))

[State 45002, VarSet]	;Use sysvar(1)
type = Null;VarSet
trigger1 = Time = 0
sysvar(1) = sysvar(1)*2

[State 45002, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45002, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45002

[State 40672, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 5
ampl = -7

[State 45002, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 45003

[Statedef 45003]
type = A
movetype = H
phisics = N
velset = 0,0

[State 45003, VarSet]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45003, SelfState]
type = SelfState
trigger1 = CanRecover
trigger1 = sysvar(1) = 0
trigger1 = command = "recovery"
value = 5210

[State 45003, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 45003, AngleSet]
type = AngleSet
trigger1 = 1
value = Time*30

[State 45003, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.5
y = -8

[State 45003, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 45003, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; Standing Throw - No.1

[Statedef 41310]
type = S
movetype = H
physics = N

[State 41310, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 41310, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 40502

[State 41310, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.2

[Statedef 41311]
type = S
movetype = H
physics = N

[State 41311, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 41311, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 40502

[State 41311, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.3(Fall)

[Statedef 41312]
type = A
movetype = H
physics = N
velset = 2,-4

[State 41312, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = -60
kill = 1
absolute = 0

[State 41312, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 41312, Turn]
type = Turn
trigger1 = Time = 0

[State 41312, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 41312, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.3

[State 41312, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 41312, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 41236 + A or B or C
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; No.1

[Statedef 41400]
type = S
movetype = H
physics = N

[State 41400, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 41400, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 41400

[State 41400, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 41400, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; No.2

[Statedef 41402]
type = S
movetype = H
physics = N

[State 41402, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 41402, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 41402

[State 41402, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; No.3

[Statedef 41403]
type = A
movetype = H
physics = N
velset = 0,-2

[State 41403, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 41403, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 41403, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 41403, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 41403, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 21441236 + A or B or C
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 46013]
type = S
movetype = H
physics = N

[State 46013, Turn]
type = Turn
trigger1 = Time = 0

[State 46013, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 46013, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 41400

[State 46013, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 6321463214 + A or B or C
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; No.1

[Statedef 46101]
type = A
movetype = H
physics = N

[State 46101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 46101, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 46101

[State 46101, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; No.2

[Statedef 46102]
type = A
movetype = H
physics = N

[State 46102, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 46102, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 46102

[State 46102, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; No.3

[Statedef 46103]
type = A
movetype = H
physics = N

[State 46103, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 46103, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 46103

[State 46103, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; No.4

[Statedef 46104]
type = A
movetype = H
physics = N
velset = -2,-2

[State 46104, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 46104, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 46104

[State 46104, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Thunder Damage

[Statedef 46105]
type = A
movetype = H
physics = N
velset = -0.5,-1.25

[State 46105, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 46105, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45030

[State 46105, PalFX]
type = PalFX
trigger1 = Anim = 45030
trigger1 = Time = 1
time = 32
add = 1,1,1
mul = 200,200,256
sinadd = 75,75,120,4
color = 30
invertall = 1
persistent = 0

[State 46105, PalFX]
type = PalFX
trigger1 = Anim != 45030
time = 1
mul = 255,255,255
persistent = 0

[State 46105, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5056 && Anim != 5710 && Anim != 3590 && Anim != 9010
trigger1 = Anim = 45030
trigger1 = SelfAnimExist(7696)
value = 7696
persistent = 0

[State 46105, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5056)
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
trigger2 = Name = "Mai Kawasumi" && AuthorName = "586"
value = 5056
persistent = 0

[State 46105, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5710)
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5710
persistent = 0

[State 46105, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3590)
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3590
persistent = 0

[State 46105, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9010)
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9010
persistent = 0

[State 46105, ChangeState]
type = ChangeState
trigger1 = Time > 32
value = 46106

[State 46105, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[Statedef 46106]
type = A
movetype = H
physics = N
velset = -3,-5

[State 46106, SelfState]
type = SelfState
trigger1 = Time = 2
value = 5000

;----------------------------------------------------------------------
; 236236 + A or B or C - No.1

[Statedef 46207]
type = A
movetype = H
physics = N
velset = -4,-3

[State 46207, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 41403, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 46207, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.6

[State 46207, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 46208

[State 46207, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 236236 + A or B or C - No.2

[Statedef 46208]
type = S
movetype = H
physics = N
velset = 0,0

[State 46208, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 46208, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 5
ampl = -7

[State 46208, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 46208

[State 46208, ChangeState]
type = ChangeState
trigger1 = Time = 1 
value = 46209

[State 46208, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 236236 + A or B or C - No.3

[Statedef 46209]
type = S
movetype = H
physics = N
velset = 0,0

[State 46209, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 46209, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[State 46208, SelfState]
type = SelfState
trigger1 = Time > 30 
value = ifelse(Alive,5120,5150)

;----------------------------------------------------------------------
; 2A2Z

[Statedef 47003]
type = S
movetype = H
physics = N
velset = 0,0

[State 47003, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[State 47003, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 47003

;----------------------------------------------------------------------
; 2A2Z

[Statedef 47004]
type = S
movetype = H
physics = N
velset = 0,0

[State 47004, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[State 47004, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 47004, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 47004

;----------------------------------------------------------------------
; 2A2Z

[Statedef 47005]
type = S
movetype = H
physics = N
velset = 0,0

[State 47005, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[State 47005, SelfState]
type = SelfState
trigger1 = Time > 40
trigger1 = Alive
value = 5120

[State 47005, ChangeState]
type = ChangeState
trigger1 = Time > 40
trigger1 = !Alive
value = 5150

;----------------------------------------------------------------------
; 2141236 + A or B or C - No.1

[Statedef 146001]
type = S
movetype = H
physics = N
velset = 0,0

[State 146001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 146001, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 146001, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 146001

[State 146001, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 2141236 + A or B or C - No.2

[Statedef 146002]
type = A
movetype = H
physics = N
velset = 0,-8

[State 146002, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 146002, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 146002, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 146002, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 146002, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 2141236 + A or B or C - No.2

[Statedef 146022]
type = A
movetype = H
physics = N
velset = 0,-13

[State 146022, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 146022, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 146022, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.3

[State 146022, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 146022, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

