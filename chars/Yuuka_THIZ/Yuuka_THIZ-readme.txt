-------------------------------------
Yuuka Kazami - Incident Zero version
for MUGEN
-------------------------------------
Author: RicePigeon

=======================================
10/31/2020 - Version 2020.10.31
=======================================

- [System] Fixed bug where Projectiles were not adding Power or Spirit in Type-ß.
- [System] Fixed graphical bug in Alignment/Palette selector.
- [System] Fixed minor positioning error in ground tech state.
- Crush Attack: Damage now affected by proration.
- 2z: Hit velocity on block increased.
- Throw/Air Throw: Tech window increased (8f/16f->15f/27f).
- Throw/Air Throw: Fixed Ikemen-exclusive bugs.
- Soil Tilling: Tech window in combos decreased (16f->15f).
- Soil Tilling: Fixed Ikemen-exclusive bugs.
- Drifting Dandelion: Tech window in combos decreased (16f->15f).
- Drifting Dandelion: Fixed Ikemen-exclusive bugs.
- "Reflowering of Gensokyo": Fixed Ikemen-exclusive bugs.
- "Master Spark": Fixed minor bug in Type-ß where Spirit gains were lower than they should be.
- "True Master Spark": Fixed Ikemen-exclusive bugs.

=======================================
06/28/2020 - Version 2020.06.28
=======================================

- 5y: Recovery frames increased by 2f.
- Flower Parasol Charge: Command changed to D,DF,F+x/y/z (236x/y/z), velocity on all versions increased.
- Flower Parasol Charge: Armor now reduces damage by 80%.
- Flower Parasol Charge [X ver]: Recovery decreased by 2f, no longer possesses armor.
- Flower Parasol Charge [Y ver]: Active frames decreased by 2f, recovery frames decreased by 2f.
- Flower Parasol Charge [Z ver]: Startup, Active & Recovery frames increased by 1f.
- Flower Parasol Charge [Z ver]: Now has more than 1 hit of armor, armor now only activates against projectiles.
- Soil Tilling: Now has a followup command that can be used before the final hit (214x/y/z & 236x/y/z).
- Flowers in the Wind: No longer Yuuka's Unique Skill. Command changed to F,D,DF+X/Y/Z (623x/y/z). Properties changed.
- Fantastic Spring Flowers: Now acts as Yuuka's Unique Skill. Now has a static 24f startup. Projectile now tracks opponent's position.
- Flytrap: Now places opponent in a dizzy state rather than a crumple animation. Damage decreased (120/140/160 -> 80/90/100).
- "Reflowering of Gensokyo": Can now hit opponents in Flytrap's dizzy state.

=======================================
04/19/2020 - Version 2020.04.19
=======================================

- [System] Fixed tick fix code in CMD file.
- [System] Fixed minor graphical bug involving Spellcard text.
- [System] Fall Recovertime values adjusted to compensate for recently discovered engine bug.
- [System] Fixed bug involving corner wallbounces.
- [System] Type-A and Type-B alignments have been merged into a single new alignment called Type-α. Type-C has been renamed Type-ß.
- [System] Foward dashing during Type-α now behaves the same as the former Type-B. Grazing removed.
- [System] Type-α Spirit meter from taking damage increased (33%->50%).
- [System] Normals now deal chip damage during Type-α.
- [System] Just Defend: Now usable regardless of alignment.
- [System] Last Word minimum damage scaling increased (30%->50%).
- [System] Type-ß alignment now scales all damage by 80%. Damage reduction during Spell Overdrive removed.
- Guard Cancel: Can now be used by any alignments. Now costs 1000 Power instead of 25% Spirit.
- Guard Cancel: Fixed bug that erroneously allowed Guard Cancels to gain Counterhit properties.
- Dash Cancel: Now always costs 50% Spirit, regardless of whether Spell Overdrive is active.
- Spell Rage: Removed.
- Throw: Now has 2f of startup.
- 3z: Is now Jump Cancellable.
- Air Throw: Fixed bug that caused throw to erroneously hit twice.
- "True Master Spark": Total damage increased (640->714).

=======================================
06/21/2019 - Version 2019.06.21
=======================================

- [System] Characters in the Type-C alignment can now cancel Spellcards into other Spellcards, at an additional proration.
- [System] Corrected jump cancel timings of forward dash.
- [System] Minor adjustments to hurtboxes in some gethit states.
- [System] Added compatibility with Suwako_THIZ's Blighted Earth effects.
- [System] Corrected Wallbounce & Groundbounce behaviors.
- [System] Adjusted how the character handles landing sounds in certain basic states.
- [System] Fixed IKEMEN exclusive visual issue where certain effect helpers would incorrectly generate a shadow.
- Spell Trance: Now consumes 100% Spirit, Power requirement reduced (2000->1000).
- Spell Trance: Last Words no longer require Spirit while Spell Trance is active.
- Spell Overdrive: Now gives a 50% velocity increase to walk & dashing.
- Spell Overdrive: Now allows Specials to be cancelled into another Special once per chain.
- "True Master Spark": Corrected premature sound fading.

=======================================
05/09/2019 - Version 2019.05.09
=======================================

- [System] Air dashes now have a height restriction.
- [System] Corrected shadow bugs on certain helpers.

=======================================
03/14/2019 - Version 2019.03.14
=======================================

- [System] Adjusted Ground tech behavior.
- [System] Corrected bug in groundbounce & hitbounce behaviors.

=======================================
03/03/2019 - Version 2019.03.03
=======================================

- [System] Revised Dash Cancel graphic.
- [System] Minor changes to recovery frame flagging.
- [System] Minor changes to handling of hitstun decay on certain attacks

=========================================
02/02/2019 - Version 2019.02.02
=========================================

- First release.

------------------
Contents
------------------

1. Contents (You're reading this)
2. System Mechanics
3. Move List
   - Notable Moves
   - Specials & Supers
   - Spellcards
4. Special Thanks

----------
Moves
----------

F - Toward
B - Back
U - Up
D - Down

x - Weak Attack
y - Medium Attack
z - Strong Attack
a - Unique Skill
b - Bombs/Special Actions
c - Shortcut for X+Y+Z

Start - Taunt


----------------
System Mechanics
----------------

* Type-α alignment causes all Normals & Command Normals to deal non-KO-able chip damage.
* Type-ß alignment scales all damage done by 80%.

* Hold x/y/z - Safe Fall [Ground] / Air Tech [Air].
- Recovers quickly after being knocked down. Hold Back or Forward to tech in that direction. Cannot Safe Fall/Tech any moves that cause 
  a Hard Knockdown.

* 1, 4, or 7 - Just Defend

* 412 + X/Y/Z - Guard Cancel [G]
- Counterattack. Costs 1000 Power, can only be done during blockstun.

* 5b - Bomb [G] (Type-α Only)
- Requires 100% Spirit.

* 236b - Crush Attack (Type-α Only)
- Requires 500 Power. Causes a knockdown on hit, causes a guard crush if blocked.

* X+Y+Z - Spell Trance [G] (Type-α Only)
- Requires 1000 Power and 100% Spirit. Allows unlimited use of Spellcards for a limited time. Ends when Last Word is used.

* 5b - Dash Cancel (Type-ß Only)
- Requires 50% Spirit, can only be done on successful hit. Cancels current action into a forward dash.

* X+Y+Z - Spell Overdrive [G] (Type-ß Only)
- Requires 1000 Power. Allows all grounded Normals to be jump cancelled and allows chaining from Medium into Heavy Normals. Allows 
  Specials to be cancelled into another Special once per chain. Ends when any Spellcard is used.

--------------
Notable moves
--------------

Jump Cancellable Normals: 3z

Unique Skill: Fantastic Spring Flowers [G]
- Yuuka causes a sunflower projectile to sprout at the opponent's position when used. Projectile hits low and causes a hard 
  knockdown, but does not hit airborne opponents.

* F,F or B,B: Dash/Air Dash
- Does a forward or backward dash. Forward Dash behavior differs in Type-B alignment and gains graze properties. Can double air dash
  during Type-C alignment.

* F+z or B+z - Throw [GA]
- Yuuka's throw. Can hit opponents in hitstun, but not blockstun. Using a throw during a combo gives the opponent additional
  time to throw escape.

* [Z] (5[z]) - Charged Parasol Smack [G]
- Charged version of Yuuka's standing Z normal. Safer on block, causes knockdown, and grants one hit of armor.

* DF+Z (3z) - Uppercut [G Only]
- Yuuka delivers an uppercut to the opponent. Semi fast anti-air that knocks down on hit, and knocks the 
  opponent up into the air.

* j.D+Z (j.2z) - Air Kick [A Only]
- Yuuka delivers a midair kick that also hits behind her. Has long active frame duration and can cross up. Causes
  grounded opponents to be put into a dizzy state on hit, which Yuuka can grab them out of.

-----------------
Specials & Supers
-----------------

Note: Each move indicates if it can be done on the ground only [G], in the air only [A], or both [GA]

* F,DF,D,DB,B + X/Y/Z (63214X, 63214Y, & 63214Z) - Soil Tilling [G Only]
- Yuuka's primary command grab, where she proceeds to knock the opponent down and deliver a flurry of brutal punches
  to the opponent's face before leaping off of them. Button press determines the range of the grab, with the Y and Z
  versions performing a running grab. All versions have a follow-up that can be performed with D,DB,B+x/y/z or 
  D,DF,F+x/y/z before the final hit, where Yuuka will instead throw the opponent up and either behind her or in front 
  of her, allowing for her to contine a combo.

* F,DF,D,DB,B + X/Y/Z (63214X, 63214Y, & 63214Z) - Drifting Dandelion [A Only]
- Aerial command grab. Yuuka dashes forward in midair before attempting an aerial grab. Button press determines the
  startup and distance travelled.

* D,DF,F + X/Y/Z (236X, 236Y, & 236Z) - Flower Parasol Charge [G Only]
- Yuuka charges forward while thrusting her parasol, causes a wallbounce on counterhit. The Y version has 1 hit of 
  armor, while the Z version has multiple hits of armor against projectiles only.

* F,D,DF + X/Y/Z (623x, 623Y, or 623Z) - Flowers in the Wind [G Only]
- Yuuka creates a whirlwind of flower petals around herself that knocks the opponent up. Moves a small distance depending on
  button press, with the Z version not moving Yuuka at all, but giving her startup invulnerability.

* B,D,DB + X/Y/Z (421X, 421Y, or 421Z) - Flytrap [G Only]
- Yuuka thrusts her parasol toward the sky, impaling her opponent before kicking them into a reeling state. Powerful Anti-air
  that is unblockable, and can be comboed into, but can only hit airborne opponents. Each version moves Yuuka a certain 
  distance, as well as differing damage and timing.

-----------------------------
Spellcards
-----------------------------

* F,DF,D,DB,B,F,DF,D,DB,B + X/Y/Z (6321463214x, 6321463214y, or 6321463214z) - Flower Sign "Reflowering of Gensokyo" [G Only]
- Yuuka grabs the opponent before dragging them along the ground, stomping them into the corner.

* D,DF,F,D,DF,F + X/Y/Z (236236X, 236236Y, or 236236Z) - Love Sign "Master Spark" [GA]
- Yuuka pulls out her parasol and fires a power beam downward at an angle. Lacks horizontal range, but hits OTG.

-----------------------------
Last Word Spellcards
-----------------------------

Note 1: In Type-α, Last Words can only be performed during Spell Trance, and ends Spell Trance on use.
Note 2: Last Words cannot be used during Type-ß.

* F,DF,D,DB,B,F,DF,D,DB,B + B (6321463214b) - "True Master Spark" [G Only]
- Yuuka grabs the opponent and uppercuts them before unleashing her original version of the Master Spark. High
  damage command grab

---------------
Special Thanks:
---------------

Elecbyte 		- For making MUGEN and making all kinds of fantasy fights possible.
ZUN & Tasofro		- Touhou much?
Necromancer		- His/Her code archive
P.o.t.S.		- Original damage dampening code, revised Parry code
Jmorphman & JustNoPoint	- Explodsive buffering system
Moiky			- Original sprites
TheAnswer		- Running Grab sprites
Daiya			- Portraits


Sprite & Palette submissions:
- 

And anyone else I forgot to mention
