;======================================================================
;======================================================================
; -2 states file for "Sayuri Kurata"
;======================================================================
;======================================================================

[Statedef -2]

;----------------------------------------------------------------------
; HitSounds and HitEffects
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; MoveContact detection

[State -2, MoveHitReset]
type = MoveHitReset
triggerall = MoveContact
triggerall = var(2) = 1
trigger1 = (StateNo = [120,420])
trigger2 = (StateNo = [1000,6999])
trigger3 = (StateNo = [100200,100420])
trigger4 = (StateNo = [101300,101370])
trigger5 = (StateNo = [106000,106999])
ignorehitpause = 1

[State -2, VarSet];MoveHit Detection
type = VarSet
trigger1 = MoveHit
var(1) = 1
ignorehitpause = 1

[State -2, VarSet];MoveGuarded Detection
type = VarSet
trigger1 = MoveGuarded
var(1) = 2
ignorehitpause = 1

[State -2, VarSet];MoveReversed Detection
type = VarSet
triggerall = NumEnemy != 0
trigger1 = EnemyNear,AuthorName = "586" && (EnemyNear,StateNo = [120,155]) && MoveReversed
trigger2 = EnemyNear,AuthorName = "586" && (EnemyNear,StateNo = [120,155]) && MoveHit
var(1) = 3
ignorehitpause = 1

[State -2, VarSet];MoveContact Detection
type = VarSet
trigger1 = MoveContact
var(2) = 2
ignorehitpause = 1

[State -2, VarSet];HitFlag Reset
type = VarSet
trigger1 = MoveType != A
var(1) = 0
ignorehitpause = 1

[State -2, VarSet];MoveContact Initialize
type = VarAdd
trigger1 = var(2) > 0
var(2) = -1
ignorehitpause = 1

[State -2, VarAdd];HitCounter Addition
type = VarAdd
trigger1 = NumProjID(39999) > 0
var(9) = NumProjID(39999)
ignorehitpause = 1

[State -2, VarAdd];HitCounter Addition
type = VarAdd
trigger1 = NumProjID(31500) > 0
var(9) = NumProjID(31500)
ignorehitpause = 1

;----------------------------------------------------------------------
; HitEffects Helper

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 1
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30000
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 2
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30001
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 3
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30002
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 4
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30003
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 5
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30004
ignorehitpause = 1

;----------------------------------------------------------------------
; GuardEffects Helper

[State -2, HitEffects]
type = Helper
trigger1 = MoveGuarded
trigger1 = var(0) != 0
helpertype = normal
name = "GuardSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30100
ignorehitpause = 1

;----------------------------------------------------------------------
; HitSounds / GuardSounds - for Player

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30000) > 0
value = s1,0
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30001) > 0
value = s1,1
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30002) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30003) > 0
value = s1,4
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumHelper(30004) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumHelper(30004) > 0
value = s1,5
channel = 5
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30100) > 0
value = s1,7
channel = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; HitSounds / GuardSounds - for Helper

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31000) > 0
value = s1,0
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31001) > 0
value = s1,1
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31002) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31003) > 0
value = s1,4
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumProjID(31004) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumProjID(31004) > 0
value = s1,5
channel = 5
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31100) > 0
value = s1,7
channel = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; Other Sounds

[State -2, PlaySnd];Wire Damage
type = PlaySnd
triggerall = P2MoveType = H
trigger1 = P2StateNo = 45002
value = s2,5
supermovetime = 0
pausemovetime = 0

[State -2, PlaySnd];Down
type = PlaySnd
triggerall = P2MoveType = H
trigger1 = P2StateNo = 46208
value = s2,4
supermovetime = 0
pausemovetime = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumProjID(30201) > 0
value = s3,10
channel = 1
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumProjID(30202) > 0
value = s3,11
channel = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Just Defence
;----------------------------------------------------------------------

[State -2, VarSet]
type = VarSet
trigger1 = StateNo != 145
var(14) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateNo != 125 && StateNo != 140 && StateNo != 145
var(18) = 0
ignorehitpause = 1

[State -2, SelfState]
type = SelfState
trigger1 = var(19) = 1
value = 125
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = NumHelper(10120) = 0
helpertype = normal
name = "Recoil"
postype = p1
pos = 0,0
pausemovetime = 999999
supermovetime = 999999
stateno = 10120
ID = 10120
ignorehitpause = 1

[State -2, NotHitBy]
type = NotHitBy
trigger1 = NumHelper(10120) = 1
trigger1 = (Helper(10120),StateNo = [10121,10123]) && (Helper(10120),Anim != 99990)
value = ,AP
time = 1

[State -2, HitOverRide]
type = HitOverRide
trigger1 = NumHelper(10120) = 1
trigger1 = (Helper(10120),StateNo = [10121,10123]) && (Helper(10120),Anim != 99990)
trigger1 = var(1) = 3
attr = SCA, AA, AP
slot = 0
stateno = 125
time = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Movement in the air
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Air Jump / Air Dash

[State -2, VarSet];Air Jump flag initialize
type = VarSet
trigger1 = StateType != A || StateNo = 5210
var(5) = 0

[State -2, VarSet];Air Dash flag initialize
type = VarSet
trigger1 = StateType != A || StateNo = 5210
var(6) = 0

[State -2, VarSet];Holdup detector
type = VarAdd
trigger1 = command = "holdup"
var(7) = 1

[State -2, VarSet];Holdup flag initialize
type = VarSet
trigger1 = command != "holdup"
var(7) = 0

[State -2, VarSet]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateType != A
var(8) = 0

[State -2, VarSet]
type = VarSet
trigger1 = StateType != A
var(12) = 0

[State -2, VarSet]
type = VarSet
trigger1 = StateType != A
trigger2 = (StateNo = [110,115]) && Time = 1
var(27) = 0

[State -2, VarSet];Early Input
type = VarSet
trigger1 = command = "FF_2"
var(27) = 1
ignorehitpause = 1

[State -2, VarSet];Early Input
type = VarSet
trigger1 = command = "BB_2"
var(27) = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; Effect

[State -2, AfterImage]
type = AfterImage
trigger1 = MoveType = H
time = 0

;----------------------------------------------------------------------
; Ice Damage
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Ice Damage - P1/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30600) = 0
triggerall = var(20) = 1
trigger1 = Enemy(0),StateNo = 45040
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30600
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P1/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30601) = 0
triggerall = var(20) = 1
trigger1 = Enemy(1),StateNo = 45040
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30601
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30610) = 0
triggerall = var(20) = 2
trigger1 = Enemy(0),StateNo = 45045
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30610
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30611) = 0
triggerall = var(20) = 2
trigger1 = Enemy(1),StateNo = 45045
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30611
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P1/P2/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30700) = 0
triggerall = var(20) = 1
trigger1 = Enemy(0),StateNo = 45050
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30700
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P1/P4/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30701) = 0
triggerall = var(20) = 1
trigger1 = Enemy(1),StateNo = 45050
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30701
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P2/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30710) = 0
triggerall = var(20) = 2
trigger1 = Enemy(0),StateNo = 45055
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30710
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P4/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30711) = 0
triggerall = var(20) = 2
trigger1 = Enemy(1),StateNo = 45055
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30711
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Fire Damage - P1/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = var(20) = 1
trigger1 = Enemy(0),StateNo = 45010
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30800
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage - P1/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = var(20) = 1
trigger1 = Enemy(1),StateNo = 45010
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30801
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage - P3/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = var(20) = 2
trigger1 = Enemy(0),StateNo = 45020
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30810
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage - P3/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = var(20) = 2
trigger1 = Enemy(1),StateNo = 45020
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30811
ignorehitpause = 1

;----------------------------------------------------------------------
; HitFlag

[State -2, VarSet]
type = VarSet
trigger1 = (!EnemyNear,HitFall && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) && (Enemy,StateNo != [45000,45004])
trigger2 = (EnemyNear,HitFall && !EnemyNear,CanRecover && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) && (Enemy,StateNo != [45000,45004])
trigger3 = Enemy,TeamMode = Simul
trigger4 = (Enemy,StateNo = [45000,45004]) && (Enemy,sysvar(1) != 0) && (Enemy,MoveType = H)
var(4) = 1

[State -2, VarSet]
type = VarSet
triggerall = (Enemy,TeamMode = Simul) = 0
trigger1 = Enemy,StateNo != [45000,45004]
trigger1 = (!EnemyNear,HitFall && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) = 0
trigger1 = (EnemyNear,HitFall && !EnemyNear,CanRecover && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) = 0
trigger2 = (Enemy,StateNo = [45000,45004]) && (Enemy,sysvar(1) = 0) && (Enemy,MoveType = H)
var(4) = 0

;----------------------------------------------------------------------
; MoveHit Correction - for Helper

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30501) > 0
fvar(1) = 0.01
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30502) > 0
fvar(1) = 0.02
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30503) > 0
fvar(1) = 0.03
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30504) > 0
fvar(1) = 0.04
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30505) > 0
fvar(1) = 0.05
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30506) > 0
fvar(1) = 0.06
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30507) > 0
fvar(1) = 0.07
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30508) > 0
fvar(1) = 0.08
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30509) > 0
fvar(1) = 0.09
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30510) > 0
fvar(1) = 0.10
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30511) > 0
fvar(1) = 0.11
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30512) > 0
fvar(1) = 0.12
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30513) > 0
fvar(1) = 0.13
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30514) > 0
fvar(1) = 0.14
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30515) > 0
fvar(1) = 0.15
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30516) > 0
fvar(1) = 0.16
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30517) > 0
fvar(1) = 0.17
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30518) > 0
fvar(1) = 0.18
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30519) > 0
fvar(1) = 0.19
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30520) > 0
fvar(1) = 0.20
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30521) > 0
fvar(1) = 0.21
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30522) > 0
fvar(1) = 0.22
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30523) > 0
fvar(1) = 0.23
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30524) > 0
fvar(1) = 0.24
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30525) > 0
fvar(1) = 0.25
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30550) > 0
fvar(1) = 0.05
ignorehitpause = 1

;----------------------------------------------------------------------
; AttackMulSet

[State -2, VarSet]
type = VarSet
trigger1 = MoveHit
trigger2 = NumProjID(31500) > 0
fvar(1) = fvar(3)
ignorehitpause = 1

[State -2, VarAdd]
type = VarSet
;triggerall = var(9) > 0
;triggerall = fvar(18) = 0
trigger1 = MoveHit
trigger2 = NumProjID(30500) > 0
trigger3 = NumProjID(31500) > 0
fvar(2) = fvar(2)*((1.0-fvar(1))*ifelse(fvar(2)*(1.0-fvar(1)) > 1.0,(1.0-fvar(1)),1))
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = var(40)/10%10 = 0
fvar(0) = ifelse(fvar(2) > 1,1,fvar(2))*fvar(8)
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = var(40)/10%10 = 1
fvar(0) = ifelse(fvar(2) > 1,1,fvar(2))*fvar(8)*fvar(9)
ignorehitpause = 1

[State -2, VarAdd]
type = VarSet
trigger1 = P2MoveType != H
fvar(2) = 1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = P2MoveType != H
fvar(1) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
fvar(6) = (fvar(4)*fvar(2)*0.75)+10
ignorehitpause = 1

[State -2, VarSet];HitCount
type = VarSet
trigger1 = P2MoveType != H
var(9) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveHit
trigger2 = NumProjID(30500) > 0
trigger3 = NumProjID(31500) > 0
fvar(18) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = fvar(16) != 3
fvar(8) = 1+fvar(15)*0.0005
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = fvar(16) = 3
fvar(8) = 1+fvar(15)/1000.0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveType = H
var(16) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveType = H
var(17) = 0
ignorehitpause = 1

[State -2, VarAdd]		;Knock back
type = VarSet
trigger1 = var(9) > 20
trigger1 = P2StateType != A
fvar(17) = (1.0+((var(9)-20)*0.5))*(-1)
ignorehitpause = 1

[State -2, VarAdd]		;Knock back
type = VarSet
trigger1 = var(9) <= 20
trigger2 = P2StateType = A
fvar(17) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
fvar(9) = ((Enemy,LifeMax/1000.0)-((Enemy,LifeMax-Enemy,Life)*0.0005)) / (Enemy,LifeMax/1000.0)
ignorehitpause = 1

;----------------------------------------------------------------------
; DefenceMulSet

[State -2, DefenceMulSet]
type = DefenceMulSet
trigger1 = var(40)%10 = 1
value = fvar(10)
ignorehitpause = 1

[State -2, VarSet];need more trigger.
type = VarSet
trigger1 = 1
fvar(10) = ((LifeMax/1000.0)-((LifeMax-Life)*0.0005)) / (LifeMax/1000.0)
ignorehitpause = 1

;----------------------------------------------------------------------
; Width

[State -3, Width]
type = Width
trigger1 = FrontEdgeDist < 8 && MoveType != H
edge = 3,

;----------------------------------------------------------------------
; Reinforce Gauge
;----------------------------------------------------------------------
;
; fvar(15)	- Value
; fvar(16)	- Reinforce Level(Blue(1)/Red(2)/White(3))
;

;----------------------------------------------------------------------
; Frame

[State -2, Explod];Gauge - Frame
type = Explod
trigger1 = NumExplod(10030) = 0
anim = 10030
ID = 10030
pos = ifelse(TeamSide = 1,25,295),3
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 0
sprpriority = -5
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge - Blue

[State -2, Explod];Gauge - Blue
type = Explod
trigger1 = NumExplod(10031) = 0
trigger1 = fvar(16) = [1,2]
anim = 10031
ID = 10031
pos = ifelse(TeamSide = 1,27,293),5
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 0
sprpriority = -4
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge - Red

[State -2, Explod];Gauge - Red
type = Explod
trigger1 = NumExplod(10032) = 0
trigger1 = fvar(16) = 2
anim = 10032
ID = 10032
pos = ifelse(TeamSide = 1,27,293),5
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 0
sprpriority = -3
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge - White

[State -2, Explod];Gauge - White
type = Explod
trigger1 = NumExplod(10033) = 0
trigger1 = fvar(16) = 3
anim = 10033
ID = 10033
pos = ifelse(TeamSide = 1,27,293),5
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 0
sprpriority = -3
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; ModifyExplod

[State -2, ModifyExplod]	;Frame
type = ModifyExplod
trigger1 = NumExplod(10030) = 1
ID = 10030
postype = Left
pos = ifelse(TeamSide = 1,25+var(23),295-var(23)),3+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Blue
type = ModifyExplod
trigger1 = NumExplod(10031) = 1
trigger1 = fvar(16) = [1,2]
ID = 10031
scale = ifelse(fvar(16) = 1,fvar(15)/100,ifelse(fvar(16) = 3,0,1)),1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),5+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Red
type = ModifyExplod
trigger1 = NumExplod(10032) = 1
trigger1 = fvar(16) = 2
ID = 10032
scale = (fvar(15)-100)/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),5+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;White
type = ModifyExplod
trigger1 = NumExplod(10033) = 1
trigger1 = fvar(16) = 3
ID = 10033
scale = (fvar(15))/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),5+var(24)
ignorehitpause = 1

;----------------------------------------------------------------------
; RemoveExplod

[State -2, RemoveExplod]	;Blue
type = RemoveExplod
trigger1 = fvar(16) = 3
ID = 10031
ignorehitpause = 1

[State -2, RemoveExplod]	;Red
type = RemoveExplod
trigger1 = fvar(16) = 3
trigger2 = fvar(15) < 100
ID = 10032
ignorehitpause = 1

[State -2, RemoveExplod]	;White
type = RemoveExplod
trigger1 = fvar(16) != 3
ID = 10033
ignorehitpause = 1

;----------------------------------------------------------------------
; VarAdd

[State -2, VarAdd]		;Blue
type = VarAdd
triggerall = RoundState = 2
triggerall = fvar(16) = 1
triggerall = fvar(15) < 100
trigger1 = MoveType != H
trigger2 = StateNo = [120,155]
fvar(15) = 0.167 + (0.04*(StateNo = [150,155]))
ignorehitpause = 1

[State -2, VarAdd]		;Red
type = VarAdd
triggerall = RoundState = 2
triggerall = fvar(16) = 2
triggerall = fvar(15) < 200
trigger1 = MoveType != H
trigger2 = StateNo = [120,155]
fvar(15) = 0.067 + (0.04*(StateNo = [150,155]))
ignorehitpause = 1

[State -2, VarAdd]		;White
type = VarAdd
triggerall = RoundState = 2
trigger1 = MoveType = H
trigger1 = StateNo != [120,155]
trigger1 = StateNo != [5110,5150]
trigger1 = fvar(16) = 3
trigger1 = GameTime % 4 = 0
trigger1 = fvar(15) >= 0
fvar(15) = -0.5
ignorehitpause = 1

[State -2, VarAdd]		;Blue Flag
type = VarSet
trigger1 = fvar(16) != 3
trigger1 = fvar(15) < 100
fvar(16) = 1
ignorehitpause = 1

[State -2, VarAdd]		;Red Flag
type = VarSet
trigger1 = fvar(16) != 3
trigger1 = fvar(15) = [100,199]
fvar(16) = 2
ignorehitpause = 1

[State -2, VarAdd]		;White Flag
type = VarSet
trigger1 = fvar(15) >= 200
fvar(16) = 3
ignorehitpause = 1

[State -2, VarAdd]		;White Flag
type = VarSet
trigger1 = fvar(15) >= 200
trigger1 = fvar(16) = 3
fvar(15) = 100
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = fvar(15) <= 0
fvar(16) = 1
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = fvar(15) < 0
fvar(15) = 0
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = var(40)/100%10 = 1
fvar(16) = 3
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = var(40)/100%10 = 1
fvar(15) = 100
ignorehitpause = 1

;----------------------------------------------------------------------
; Special Features
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Poison Damage for Arcana Heart Characters by Drowin

[State -2, PowerAdd]
type = PowerAdd
triggerall = Enemy,AuthorName = "Drowin arcana"
triggerall = Enemy,fvar(20) > 0
trigger1 = Power > 0
value = -1

[State -2, LifeAdd]
type = LifeAdd
triggerall = Enemy,AuthorName = "Drowin arcana"
triggerall = Enemy,fvar(20) > 0
trigger1 = GameTime % 7 = 0
value = -1
kill = 0

[State -2, PalFX]
type = PalFX
triggerall = Enemy,AuthorName = "Drowin arcana"
trigger1 = Enemy,fvar(20) > 0
add = 100,0,110
mul = 220,220,220
time = 5

;----------------------------------------------------------------------
; Fire Damage for Akiha by tukemon&HAL

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "tukemon&HAL" && Enemy,Name = "Akiha"
trigger1 = Enemy,Var(56) = 1
value = -8
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = Enemy,AuthorName = "tukemon&HAL" && Enemy,Name = "Akiha"
trigger1 = Enemy,Var(51)%10 = 2
trigger1 = Enemy,Var(56) = 1
value = -33

;----------------------------------------------------------------------
; Fire Damage for Akiha Vermilion by 9

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
trigger1 = Enemy,Var(47) = 1
value = -7
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
trigger1 = Enemy,Var(48) = 1 && Enemy,NumExplod(4005)
value = -7
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
trigger1 = Enemy,Var(47) = 1
value = -26

;----------------------------------------------------------------------
; Powder Snow Damage for Len by 9

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Len"
trigger1 = Enemy,Var(47) = 1 || Enemy,Var(48) = 1
value = -Enemy,Var(47)*4-Enemy,Var(48)*4
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Watering can Damage for Hisui by 9

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Hisui"
trigger1 = Enemy,Var(47) = 1
value = -10
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Hisui"
trigger1 = Enemy,Var(47) = 1
value = -135

;----------------------------------------------------------------------
; Ganbarimashita.EX for Warachia by 9

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Hisui"
trigger1 = Enemy,Var(48) = 1
value = IfElse(GameTime%2 = 0, -3, -4)
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Black Crack Damage for Warachia by 9

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 1
value = -10
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 2 || Enemy,Var(47) = 4
value = -15
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 3
value = -30
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 1
value = 6

[State -2]
type = PowerAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 2 || Enemy,Var(47) = 3 || Enemy,Var(47) = 4
value = 15

;----------------------------------------------------------------------
; Modern Science Damage for Kohaku by 9

[State -2]
type = LifeAdd
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Kohaku"
trigger1 = Enemy,Var(47) = 1
value = IfElse(GameTime%2 = 0, -3, -4)
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Curse Damage for Misuzu Kamio by 586

[State -2, LifeAdd]
type = LifeAdd
triggerall = (Enemy,TeamMode = Simul) = 0
triggerall = (TeamMode = Simul) = 0
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "586"
triggerall = Enemy,Name = "Misuzu Kamio"
triggerall = Enemy,fvar(11) > 0
trigger1 = Enemy,var(13) = 1
trigger1 = GameTime % 13 = 0
trigger2 = Enemy,var(13) = 2
trigger2 = GameTime % 11 = 0
trigger3 = Enemy,var(13) = 3
trigger3 = GameTime % 8 = 0
trigger4 = Enemy,var(13) = 4
trigger4 = GameTime % 6 = 0
trigger5 = Enemy,var(13) = 5
trigger5 = GameTime % 3 = 0
value = -1
kill = 0
ignorehitpause = 1

[State -2, PalFX]
type = PalFX
triggerall = (Enemy,TeamMode = Simul) = 0
triggerall = (TeamMode = Simul) = 0
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "586"
triggerall = Enemy,Name = "Misuzu Kamio"
trigger1 = Enemy,fvar(11) > 0
add = -50,150,150
time = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; ¼sŽ›—HXŽq@—ì•„‹y‚ÑŽõ–½‘ŠŽèƒXƒe[ƒg

[State -2]
type       = LifeAdd
triggerall = Enemy,AuthorName = "Souki" && Enemy,Name = "Yuyuko Saigyouji"
trigger1   = Enemy,Var(3) = 1 || Enemy,Var(3) = 2
trigger1   = GameTime%6 = 0
value      = IfElse(Enemy,Var(3) = 1, -2, -3)
kill       = 0

;----------------------------------------------------------------------
; Toxic Smoke Damage for Reisen Udongein Inaba by Shiroto

[State -2]
type = LifeAdd
triggerall = EnemyNear,AuthorName = "Shiroto"
triggerall = EnemyNear,Name = "Reisen Udongein Inaba"
trigger1 = EnemyNear,Var(40) != 0
trigger1 = Pos Y = [-30,10]
trigger1 = GameTime%3 = 0
value = -EnemyNear,Var(40)
kill = 0

;----------------------------------------------------------------------
; ’E°‚Ì‹V §Œä

;U‚èŒü‚«—}§
[State -2]
type = AssertSpecial
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
flag = NoAutoTurn

;ˆÚ“®
[State -2]
type = PosAdd
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
x = -Ceil(EnemyNear,FVar(36))*Facing*EnemyNear,Facing
y = -Ceil(EnemyNear,FVar(37))*(StateType != L)

;StateType != A + StateType != L ‚Ìê‡‹­§—Ž‰ºState‚Ö
[State -2]
type = ChangeState
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
triggerall = (StateType != A)*(Pos Y != 0)*(StateType != L)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
value = 50

;----------------------------------------------------------------------
; U‚èŒü‚«—}§

[State -2]
type = AssertSpecial
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th105")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
flag = NoAutoTurn

;ˆÚ“®
[State -2]
type = PosAdd
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th105")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
x = -Ceil(EnemyNear,FVar(24))*Facing*EnemyNear,Facing
y = -Ceil(EnemyNear,FVar(25))*(StateType != L)

;Statetype != A + Statetype != L ‚Ìê‡‹­§—Ž‰ºState‚Ö
[State -2]
type = ChangeState
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th105")*(TeamMode = Single)
triggerall = (StateType != A)*(Pos Y != 0)*(StateType != L)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
value = 50

;----------------------------------------------------------------------
; Toxic Smoke Damage for Reisen Udongein Inaba by mikage_th105

[State -2]
type = LifeAdd
trigger1 = NumEnemy = 1
trigger1 = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),FVar(21))
value = -Floor(Enemy(0),FVar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy = 2
triggerall = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),FVar(21))
trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th105")*(Enemy(1),FVar(21))
value = -Floor(Enemy(0),FVar(21))*2-Floor(Enemy(1),FVar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Toxic Smoke Damage for Reisen Udongein Inaba by mikage_th

[State -2]
type = LifeAdd
trigger1 = NumEnemy = 1
trigger1 = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th")*(Enemy(0),FVar(35))
value = -Floor(Enemy(0),FVar(35))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy = 2
triggerall = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th")*(Enemy(0),FVar(35))
trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th")*(Enemy(1),FVar(35))
value = -Floor(Enemy(0),FVar(35))*2-Floor(Enemy(1),FVar(35))*2
ignorehitpause = 1
absolute = 1
kill = 0

;----------------------------------------------------------------------
; “y’…_‚ÌâM‚è•ƒ~ƒVƒƒƒOƒW‚³‚Ü‚ÌâM‚è §Œä

;“y’…_‚ÌâM‚è
[State -2]
type = LifeAdd
trigger1 = NumEnemy
trigger1 = (EnemyNear,Name = "Suwako Moriya")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = Floor((EnemyNear,Var(42)%100)*0.1) = [0,1]
trigger1 = (Floor(EnemyNear,FVar(38)))%1000 > 0
trigger1 = Floor(EnemyNear,FVar(38)*0.001) = 2
value = Floor(EnemyNear,FVar(36)*(LifeMax/10000.000000))
ignorehitpause = 1
absolute = 1
kill = 0

;ƒ~ƒVƒƒƒOƒW‚³‚Ü‚ÌâM‚è
[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = (EnemyNear,Name = "Suwako Moriya")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = Floor(EnemyNear,FVar(35)) = 1
trigger1 = MoveType = H
trigger1 = StateNo != [150,155]
trigger2 = Floor(EnemyNear,FVar(35)) = 2
trigger2 = MoveType = H
trigger2 = StateNo = [150,155]
value = Floor(EnemyNear,FVar(33))
ignorehitpause = 1
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Poison Damage for JUDA by SAIKEI

[State -2]
type = LifeAdd
trigger1 = Enemy,Name = "JUDA"
trigger1 = Enemy,AuthorName = "SAIKEI"
trigger1 = Enemy,FVar(23) > 0
trigger1 = Floor(Enemy,FVar(23))%4 = 0
trigger1 = Enemy,Var(0) <= 0
trigger1 = Enemy,MoveType != H || Enemy,MoveType = H && Enemy,HitShakeOver
value = -1
kill = 0

[State -2]
type = PalFX
triggerall = GameTime%20 = 0
trigger1 = Enemy,Name = "JUDA"
trigger1 = Enemy,AuthorName = "SAIKEI"
trigger1 = Enemy,FVar(23) > 0
time = 8
add = 255,0,0

;----------------------------------------------------------------------
; Mogli Recovery for Agrias by ouchi

[State -2]
type = PalFX
triggerall = !IsHelper
trigger1 = RoundState = 2
trigger1 = Alive = 1
trigger1 = NumPartner = 1
trigger1 = Partner,AuthorName = "ouchi" && Partner,Name = "Agrias_Oaks"
trigger1 = Partner,Var(25)%100 = 7
trigger1 = Partner,Var(10) = 100
time = 50
add = 0,0,54
mul = 256,256,256
sinadd = 0,0,108,100

[State -2]
type = LifeAdd
triggerall = !IsHelper
trigger1 = RoundState = 2
trigger1 = Alive = 1
trigger1 = NumPartner = 1
trigger1 = Partner,AuthorName = "ouchi" && Partner,Name = "Agrias_Oaks"
trigger1 = Partner,Var(25)%100 = 7
trigger1 = Partner,Var(10) > 0
value = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Provocation for AIHARA NATSUMI by YU-TOHARU

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = EnemyNear,Name = "AIHARA NATSUMI" && EnemyNear,AuthorName = "YU-TOHARU"
trigger1 = EnemyNear,StateNo = 197 && EnemyNear,StateTime = 70
value = -45

;----------------------------------------------------------------------
; Provocation for AL AZIF by YU-TOHARU

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = EnemyNear,Name = "AL AZIF" && EnemyNear,AuthorName = "YU-TOHARU"
trigger1 = EnemyNear,StateNo = 195 && EnemyNear,StateTime = 30
value = -45

;----------------------------------------------------------------------
; Provocation for MAMIYA by YU-TOHARU

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = EnemyNear,Name = "MAMIYA" && EnemyNear,AuthorName = "YU-TOHARU"
trigger1 = EnemyNear,StateNo = 195 && EnemyNear,StateTime = 30
value = 1000

;----------------------------------------------------------------------
; Personal Settings
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Effect

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = (StateNo = [120,155]) && (StateType != S)
trigger2 = StateNo != [120,155]
ID = 10120

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = (StateNo = [120,155]) && (StateType != C)
trigger2 = StateNo != [120,155]
ID = 10121

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = (StateNo = [120,155]) && (StateType != A)
trigger2 = StateNo != [120,155]
ID = 10122

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 1200
ID = 11200

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 1201
ID = 11201

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 1210
ID = 11210

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 1211
ID = 11211

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 1220
ID = 11220

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 1221
ID = 11221

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != [101200,101201]
ID = 101200

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != [101210,101211]
ID = 101210

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != [101220,101221]
ID = 101220

;----------------------------------------------------------------------
; Explod

[State 5110, Effect]
type = Explod
trigger1 = P2StateNo = 46208
anim = 15110
postype = p2
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

;----------------------------------------------------------------------
; Learned

[State -1, PalFX]
type = PalFX
triggerall = StateNo = [150,153]
trigger1 = P2StateNo = var(15)
trigger1 = var(15) != 0
time = 1
add = 180,180,180

;----------------------------------------------------------------------
; Enemy Detector

[State -2, VarSet]
type = VarSet
trigger1 = P2Name = "DISRUPTER"
trigger2 = P2Name = "MTG"
trigger3 = P2Name = "dragon"
var(15) = 1

;----------------------------------------------------------------------
; Mode Fix for A.I.

[State -2, VarSet]
type = VarSet
trigger1 = var(59) != 0
var(28) = 0

;----------------------------------------------------------------------
; Debug

[State -3, DisplayToClipBoard]
type = null;DisplayToClipBoard
trigger1 = 1
text = "var(57) = %d fvar(2) = %f fvar(3) = %f fvar(1) = %f \n"
params = var(57),fvar(2),fvar(3),fvar(1)
ignorehitpause = 1

[State -3, AppendToClipBoard]
type = AppendToClipBoard
trigger1 = 1
text = "AI:%d E-Pos Y:%f E-Vel Y:%f Dis X:%d Dis Y:%d \n"
params = Var(59), Enemy,Pos Y, Enemy,Vel Y, Floor(P2BodyDist X), Floor(P2BodyDist Y)
ignorehitpause = 1
