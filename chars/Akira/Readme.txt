                            ____________________________________________
===========================| Akira Kazama by KarmaCharmeleon		|===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯      [13.04.2024]

 - Contact:	karmacharmander@gmail.com
 - Website:	https://www.imdb.com/title/tt0367279/
 - Customized version of Capcom's Akira character, for MUGEN 1.0



=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus Daigo Kazama, Yurika Kirishima, Sakura Kasugano, Karin Kanzuki, Ibuki and Yuri Sakazaki



=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.


<NORMAL>

.Renkan Ko						z
	.Renkan Ko					F + z
		.Renkan Ko				F + z
		.Renkan Tsutenda			DF + z
.Kaihosho						F + z
.Tsutenda						DF + z
	.Super Jump					UB / U / UF
.Kutenshu						F + b
	.Totenshu					F + c
.Shin'Iha	         				F/B + 2p		(near opponent)
.Tankyaku						F/B + 2k		(near opponent)
.Kurakusho						F/B + 2p		(Air, near opponent)
     
     
<SPECIAL>
     
.Kiko Kai (EX)						D, DF, F, p
.Airborne Kiko Kai (EX)					(Air) D, DF, F, p
.Hotenshu (EX)						F, D, DF, k
.Urarimon (EX)						D, DB, B, p
.Senshubu (EX)						D, DB, B, k
	.Senshubu					k

     
<SUPER>
     
.Go Kiko Kai (MAX)					D, DF, F, D, DF, F, p
.Haten Mueishu (MAX)					D, DF, F, D, DF, F, k


<Lv3 SUPER>

.Seijo no Tetsui					F, DF, D, DB, B, F, DF, D, DB, B, 2p


<SYSTEM>

.Forward Dash:  		                	F, F
   .Run:                       					hold
.Backward Dash:                 			B, B
.Low Jump:                     				tap U
.High Jump:                     			tap D, U
.Long Low Jump:                 			tap D, tap U            
.Sidestep:                      			a + x
   .Sidestep Attack:            				p / k
.Forward Roll:                  			F + a + x
.Backward Roll:                 			B + a + x
.Parry High:                    			tap F
.Parry Low:                     			tap D
.Air Parry:                     			tap F           	(Air)
.Power Charge:                  			hold b + y
.Zero Counter:                  			B, DB, D, p / k		(during standing or crouching guard)
.Custom Combo:                  			c + z           	(Air also)
.Fall Recovery:                 			2p / a + x      	(while falling and allowed)



=====<Move Details>=====

 - Tsutenda launches the opponent and can be canceled into Super Jump.
 - Upon canceling Tsutenda into Super Jump, the juggle count resets and you get access to Chain Combos in your Air Normals.
 - Kutenshu hits overhead.
 - Hotenshu has airborne strike invincibility on startup. EX Hotenshu has full body invincibility on startup.
 - The second hit of HP Senshubu launches for a juggle reset.
 - EX Senshubu launches for a juggle reset.
 - MAX Go Kiko Kai wall bounces for a juggle reset.
 - Haten Mueishu has full body projectile invincibility.



=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Command, Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage

CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start



=====<Version History>=====

<v.13/04/2024>
- Jumping Heavy Punch and Jumping Heavy Kick now spike the opponent for a hard knockdown during Air Combos.
- Fixed a bug that caused Specific WinQuotes not to trigger against my Ryu.

<v.09/04/2024>
- Changed command file extension from .cmd to .st.
- Crouch friction changed to 0.85.
- Throw techs now preserve the original facing, even when done very late and the throwing character is switching sides.
- Replaced EX activation sound with the one from SFIII (previously, it was Demitri's fireball startup).
- Fixed error in projectile flag increment/decrement when projectile(s) are reflected.
- Fixed error in super projectiles that caused incorrect dampener interactions.
- Guard damage is now based on the damage the hit would do if not guarded, instead of dealing 7 damage in all situations.
- Fixed a bug that jailed opponents into getting thrown.

<v.20/02/2024>
 - Fixed an issue with the Intro on certain screen resolutions.
 - Fixed a bug that caused Senshubu and Uranimon to not knock down airborne opponents.
 - Changed the functionality on Crouching HP.
 - Disabled camera tracking for Kurakusho's target.
 - Reduced width on Kiko Kai.
 - Increased hurtbox size on Kiko Kai.
 - Reduced EX Kikokai startup by 2 frames.
 - Fixed a bug that prevent Airborne Kiko Kai from being canceled during Custom Combo.
 - Reduced recovery for EX Airborne Kiko Kai.
 - Reworked the movement and frame data on all variants of Senshubu.
 - Increased recovery on the MP and HP variants of Urarimon.
 - Go Kiko Kai has a smaller scale to make the MAX variant look bigger (no changes in terms of hitboxes/hurtboxes).
 - Go Kiko Kai skull visual effect now fades out during SuperPause.
 - Nerfed the horizontal range of Haten Mueishu.
 - Buffed Punch Zero Counter.
 - Lie down hurtbox is now larger for better compatibility with attacks that can hit OTG.
 - Improved AI.
 - Added Apple for You compatibility for B. B. Hood by Jmorphman.
 - Added Hammer Throw compatibility for Blizzard by The_None.
 - Added 6 palettes by XANDERAC and 1 palette by KOFHERO77.
 - Fixed errors on the ReadMe.

<v.16/02/2024>
 - First release.



=====<Special Thanks>=====
 - Rabano for sprite set. MotorRoach and Chuchoryu for extra animations.
 - P.o.t.S. and Jmorphman for code, effects, hitsparks, formatting style.
 - miner600, BCDeshiG, and troy99 for voice rips.
 - CountGate for the Win Portrait.
 - Dawn de Era, DeathScythe, Foobs, Kamui, Knuckles8864, KOFHERO77, Kouhai, MT7, ProjectLykaon and XANDERAC for palettes.
 - Everybody at the MFG Discord Server for feedback.
 - Not The MUGEN Fighters Guild for providing hosting, for sure.



=====<Disclaimer>=====

 - The Akira character is property of Capcom
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes