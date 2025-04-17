                            __________________________________________
===========================| Joe Higashi by Jmorphman                 |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯             [2024.03.03]

 - Contact: Jmorphman@gmail.com
 - Website: http://network.mugenguild.com/jmorphman/

 - Customized version of SNK Playmore's Joe character, for MUGEN 1.0

=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SF3
 - Special intros versus Mai Shiranui, Dan Hibiki, Sagat, King, and Adon



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

.Nihon Nage:                                F/B + 2p   (near opponent)
.Hiza Jigoku:                               F/B + 2k   (near opponent)


<SPECIAL>

.Hurricane Upper (EX):                      B, DB, D, DF, F, p
.Slash Kick (EX):                           B, DB, D, DF, F, k
.Tiger Kick (EX):                           F, D, DF, k
.Ogon no Kakato (EX):                       D, DB, B, k
.Bakuretsuken (EX):                         p, p, p, p
    .Bakuretsu Hook:                        D, DF, F, x / y
    .Bakuretsu Upper:                       D, DF, F, z


<SUPER>

.Screw Upper (MAX):                         D, DF, F, D, DF, F, p
.Bakuretsu Hurricane Tiger Kakato (MAX):    D, DF, F, DF, D, DB, B, p
.Ogon no Tiger Kick (MAX):                  D, DF, F, UF, k              (hold to delay)


<LV3 SUPER>

.Double Cyclone Upper:                      D, DB, B, D, DB, B, p


<SYSTEM>

.Forward Dash:                              F, F
    .Run:                                   hold
.Backward Dash:                             B, B
.Low Jump:                                  tap U
.High Jump:                                 tap D, U
.Long Low Jump:                             tap D, tap U
.Sidestep:                                  a + x
    .Sidestep Attack:                       p / k
.Forward Roll:                              F + a + x
.Backward Roll:                             B + a + x
.Parry High:                                tap F
.Parry Low:                                 tap D
.Air Parry:                                 tap F                        (Air)
.Power Charge:                              hold b + y
.Zero Counter:                              B, DB, D, p / k              (during standing or crouching guard)
.Custom Combo:                              c + z                        (Air also)
.Fall Recovery:                             2p / a + x                   (while falling and allowed)



=====<Move Details>=====

 - During Hiza Jigoku, you and your opponent can mash buttons to respectively increase or decrease the number of hits.
 - EX Slash Kick can be juggled afterwards with any attack if both hits connect; however, this can only be done once per combo.
 - Ogon no Kakato can hit twice against airborne opponents.
 - EX Ogon no Kakato is an overhead, and has enough frame advantage to link attacks from.
 - The last button used when performing Bakuretsuken determines its strength. If it is two punch buttons, the EX version is triggered
 - Keep tapping punch button(s) to extend Bakuretsuken for a limited amount of time
 - Bakuretsuken can also be performed by inputting "F, D, DF, p"; much like the standard way of performing the move, it can be extended
   by mashing one or more of the punch button(s).
 - Bakuretsu Hook or Bakuretsu Upper can be performed at any time during any strength of Bakuretsuken (except EX Bakuretsuken).
 - Bakuretsu Hook is an overhead.
 - Both Bakuretsu Upper and EX Bakuretsuken can be juggled afterwards with any attack (the last hit must connect for EX Bakuretsuken);
   however, this can only be done once per combo (if both attacks are used in the same combo, the juggle reset will only occur once).
 - The kick used to activate (level one) Ogon no Tiger Kick determines its velocity.
 - The kick button can be held down to delay Ogon no Tiger Kick.


=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage


CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing
   faster and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start


=====<Version History>=====

<v.2024/03/03>
 - Added in-game movelists (accessible in IKEMEN only)
 - Added an HTML movelist to the directory for cleaner, easier-to-read movelist viewing
 - Changed command file extension from .cmd to .st
 - Crouch friction changed to 0.85
 - The air hit velocities of all normals are now based (mostly) on CvS2
 - Guard damage is now based on the damage the hit would do if not guarded, instead of dealing 7 damage in all situations
 - Throw techs now preserve the original facing, even when done very late and the throwing character is switching sides
 - Removed bug where throws would whiff against opponents who remain in state 140
 - Replaced EX activation sound with the one from SFIII (previously, it was Demitri's fireball startup)
 - Fixed error in projectile flag increment/decrement when projectile(s) are reflected
 - Fixed bug where EX Golden Heel did different amounts of damage based on the strength of the last special move used
 - Moved the second voicelip during Golden Tiger Kick to be further away from the first voiceclip, to avoid cutting off the first one

<v.2023/01/22>
 - As a result of a resolution miscalculation, certain hitboxes, velocities, and PosAdds that were taken from CvS2 were incorrect; data
   has thus been rerecorded and fixed. Hit vels have also (in most cases) been standardized to replicate CvS2 behavior.
 - Using a juggle reset move twice no longer turns on the "juggle flag" (var(16)); it is now possible to combo off that second juggle
   reset move by activating Custom Combo, but otherwise, continuing the combo from that second move remains impossible (in most cases).
 - State 5110 is now overriden to prevent hardcoded MUGEN behavior of early wakeup if buttons are mashed.
 - More consistent handling of whether moves do hard or soft knockdown (in general: specials except for command throws do soft
   knockdown, command throws and supers do hard knockdown)
 - Run stop no longer uses S physics and instead a more accurate VelAdd
 - Removed bug where gravity would kick in one tick early for jumping normals done at the first possible moment
 - All aerial get hit animations now use the same hitbox
 - Tweaked how hard the damage dampener kicks in when connecting a super off a juggle reset
 - Fixed Custom Combo dampener incorrectly kicking in to the harshest penalty
 - Throw whiff animation has a longer recovery period
 - Most projectiles now use HitPause, HitTime, and vels identical to the ones used in medium normal attacks; however, the frame data is
   actually slightly improved by this change.
 - EX Slash Kick now causes wall bounce... like it did originally.
 - The arcing effect in Ogon no Kakato now unbinds itself from Joe once his leg finishes making said arc, as in CvS2.
 - Resolved a bug in EX Ogon no Kakato where Joe would sometimes go above the oppponent and switch sides with them.
 - Bakuretsuken shortcut command changed to F, D, DF + p (from HCB + p)
 - Adjusted the anim timing and vels of Bakuretsu Hook; additionally, it now causes hard knockdown.
 - Bakuretsu Upper now causes a juggle reset (with a limited ability to follow up compared to EX Bakuretsuken); it also shares the
   juggle reset with EX Bakuretsuken. Also added a brief afterimage effect to the startup.
 - Fixed bug where Screw Upper would not connect on opponents with extremely thin hitboxes if done point blank.
 - MAX Ogon no Tiger Kick damage increased.
 - All superpauses in this character now take the same amount of time as all of my other characters; prior to this update, they all
   lasted 8 ticks longer compared to everyone else. This was done solely to ensure that the voice clips that play during Bakuretsu
   Hurricane Tiger Kakato didn't overlap over each other (the extra 8 ticks added enough of a buffer between the clips), but after
   playing around with it a bit, I've managed to place their respective start points in a way where they do not noticeably overlap one
   another.
 - Simplified the timer system that determines how long to apply flame particles to opponents
 - All move names have been standardized to use the official names (for example, "TNT Punch" is now "Bakuretsuken")

<v.2021/11/29>
 - fixed minor guard input bug
 - removed "Tick Fix"
 - fixed bug where certain System.st states had gravity applied twice

<v.2019/12/31>
 - super invincibility fixed/updated

<v.2017/09/22>
 - Double Cyclone Upper hitbox slightly increased.
 - added intro vs M206 Sagat
 - Buffering system adjustmented to make half-circle motions easier (inputs that skip some or all diagonals are now allowed)

<v.2017/09/05>
 - Total revamp/recode. Added a more extensive color separation by Shao_kun. Overhauled sprites, damage levels, animations, hitboxes,
   and coding. Now (mostly) uses frame data/velocities/timings from CvS2.
 - Hit sparks reduced 65% in size
 - Added EXPLODsive Buffering system, projectile reflection, and compatibility with the Reigi no Ishizue super from Vans's Chizuru.
 - LP/MP Hurricane Upper projectiles now fade away after travelling a short distance
 - EX Slash Kick now launches opponents upwards, and no longer wall bounces, so that comboing off it is easier
 - EX Ogon no Kakato had its damage adjusted, can no longer be comboed into, and can be performed multiple times per combo
 - Added alternative command for Bakuretsuken
 - Added new sprites for Bakuretsu Hook
 - EX Bakuretsuken has new animation and hit behavior patterned after KOFXIII
 - MAX Screw Upper now goes full screen, and won't lose hits as it moves forward
 - Ogon no Tiger Kick had its damage adjusted, it has new effects, and its hit behavior now matches KOF2002UM

<v.2011/09/05>
 - Tiger Kick behavior changed back to CvS2
 - Throw damage changed
 - Changed around some canceling rules

<v.2010/04/10>
 - Major CLSN overhaul
 - Fixed P2 side turns intro
 - Adjusted the size of the hitboxes for Bakuretsu Hook.
 - Adjusted EX Hurricane Upper behavior
 - Added AI
 - EX Slash Kick bounce now uses MUGEN's default hitsparks
 - All versions of Tiger Kick (save for the EX version) do 2 hits now
 - New, better quality voices on EX Hurricane Upper and Bakuretsu Upper
 - EX Ogon no Kakato behavior modified (based on KOFXIII)
 - Bakuretsu Hurricane Tiger Kakato's number of hits adjusted (both versions)
 - Ogon no Tiger Kick now behaves like it does in KOF2002UM, level 2 version added

<v.2010/08/01>
 - Total overhaul: GetHits redone, palettes redone, and other miscellaneous fixes.
 - Made Bakuretsu Hook an overhead.
 - Fixed Level 2 AfterImage frameGap bug.
 - Adjusted EnvShake on the throws.
 - Fixed some minor hitspark bugs.
 - Adjusted some Tiger Kick velocities.
 - Redid all projectile code.
 - EX Ogon no Kakato now has autoguard.
 - Fixed some minor sound bugs.

<v.2010/06/28>
 - Fixed a a bug during the intro vs Mai Shiranui where a hit sound would play when a hurricane 
   projectile began fading away.
 - Removed a weird PosAdd bug during Cheap K.O.
 - Corrected a minor bug in the command file for Screw Upper.
 - Adjusted some normal move HitDef animTypes and velocities.
 - Modified the behavior of opponents hit by Zero Counter.
 - Fixed a bug that allowed you to cancel normal moves into a taunt.

<v.2010/06/04>
 - Fixed some minor PalFX issues relating to EX Tiger Kick and Ogon no Tiger Kick.
 - Removed a minor hit sound bug in the small projectile at the beginning of Screw Upper.
 - Adjusted some constants.
 - Modified the behavior of opponents hit by Ogon no Kakato on the ground.

<v.2010/05/27>
 - Fixed a bug that gave back power when performing a Zero Counter.
 - Corrected a Ogon no Tiger Kick FX misalignment problem when performed on a blocking opponent.
 - Removed a minor bug where the hit sound for a connected Hurrican Upper projectile would play when a
   projectile faded away without hitting anything during Bakuretsu Hurricane Tiger Kakato.
 - Improved chances of connecting both hits of EX Slash Kick on an airborne opponent.
 - Fixed a minor sound error in Hurricane Upper.
 - Corrected minor bug in Nihon Nage.

<v.2010/05/23>
 - Fixed a bug in EX Slash Kick that prevented the second hit from connecting with an opponent that is airborne.
 - Corrected a minor bug in Ogon no Tiger Kick that caused the top layer FX to become misaligned when
   performed on a blocking opponent in a corner.
 - Removed minor bug where the hit sound for a connected Hurricane Upper projectile would play when the
   projectile hit a guarding opponent.
 - Modified the behavior of the turns intro, allowing the intros against Dan Hibiki and the Muay Thai
   fighters to be shown after landing.
 - Fixed minor bug where the impact dust from an opponent being slammed into the ground by a Ogon no Kakato would play twice.
 - Modified the animations of the hit by Ogon no Kakato states.

<v.2010/05/21>
 - Redid Double Cyclone Upper; the bug that allowed opponents to be hit up to thirteen times was removed and the
   opponent will now only be hit the full twelve times if they are hit at the beginning of the move.
 - Changed the default Level 3 Super Portrait to a zoomed in version that is a different color.
 - Increased the timing for the half circle and super moves, so they are easier to pull off.
 - Modified EX Ogon no Kakato so that its y velocity is no longer determined by whether the opponent is
   airborne.

<v.2010/05/18>
 - Fixed the bug in EX Slash Kick that causes a debug flood for some characters.
 - Toned down the damage of MAX Bakuretsu Hurricane Tiger Kakato.
 - Lowered jump height to a more reasonable level.
 - Fixed issues with Hurricane Upper projectiles colliding with other projectiles.
 - Backwards dash goes slightly faster so it looks better.
 - MAX Bakuretsu Hurricane Tiger Kakato's hurricane portion doesn't push the opponent back so far, and the hitbox
   for the first hit of the Tiger Knee part has been resized to ensure the entire move connects.
 - EX Ogon no Kakato no longer homes in on enemies and all hits are now overheads.
 - Added an alternate Level 3 Super Portrait by .:[HaDeS]:.

<v.2010/05/17>
 - First release


=====<Special Thanks>=====
 - aokmaniac13 for sprite rips
 - P.o.t.S. for code, effects, hitsparks, and formatting style
 - Shao_kun for the expanded color separation
 - Jesuszilla for the alternate small portrait
 - CrazyKoopa for the EX Slash Kick effects
 - Froz for all other effects
 - FeLo_Llop for Ogon no Tiger Kick effect fixes
 - Hatter for the KOF XIII stance sprites
 - Graphicus, Balthazar, and C.V.S.N.B. for the EX Bakuretsuken sprites
 - sethzel for the Midnight Bliss and Pharaoh's Curse sprites
 - TMasta for the Bakuretsu Hook sprites
 - .:[HaDeS]:. for the alternate Lv3 Super Portrait
 - Ayumifan-x, Cyclysm, duo_Ranger, Eigh_Hero, .:[HaDeS]:., Hoshi, Kirishima, MalaDingDong, MC2, and
   PsychoKrusher for palettes
 - Everybody at the MUGEN Fighters Guild for feedback.
 - The MUGEN Fighters Guild for providing hosting.


=====<Disclaimer>=====

 - The Joe Higashi character is property of SNK Playmore
 - Capcom vs SNK is property of Capcom
 - This Mugen character is a non-profit fan work, it cannot be used for any commercial purposes
 