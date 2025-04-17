====================================> OSAKA <====================================
From A! - Taisen Shiyou (and of course Azumanga Daioh!), converted to MUGEN 1.0 by jade_midori
Version: 1.7, Dated: 08.25.2023

------------------------------------------------------------------------------------------
Changelist:

1.7 (08.25.2023):
	-Implemented an Invalid Combo message.
	-Added an infinite prevention system with air chains on grounded opponents.
	-Updated stagger default animation.
	-Grab:
		-Spiced up Tech Hit animation.
		-Teching now restores the original direction of the grab.
	-Wallsplat should no longer leave much of the other character off screen.
	-Fixed some bugs regarding wallbounce state (i.e hitting the incorrect wall)
	-Removed some rogue playsnds that reference nonexistent sounds.
	-Relaunches on Super moves are heavily penalized now, unless Showtime is concluded fully.

1.6 (07.29.2023):
	-Applied new meter gain and dampening system from Mi Oh.
	-Implemented the fall.defence_up bypass Mi Oh has.
	-Applied new damage dampening cap for super moves. (32% -> 36.25%)
	-Revised some wrong chip damage values in some moves.
	-Increased horizontal speeds all across the board.
	-You can now cancel running into grabbing for extra pressure.
	-Reduced grab dampening penalty (50% -> 85%)
	-Revised some of the names of the EX moves to their actual names.
	-5A, 5B has more horizontal range
	-5B has more vertical range
	-5C moves further ahead by a few pixels.
	-QCBx2 + A/B/C > B + C AND F + C: Gave a few more frames of startup invincibility.
	-QCBx2 + A/B/C > F + C: Fade to white should look better.
	-QCF + A/B/C: Hitbox+hurtbox of invisible projectile extended further down.
	-QCB + A/B/C: Base Damage Reduced (80 -> 60)
	-Hitting projectiles while sliding back from cornerpush reset it, it should be fixed.
	-Increased Super Jump height by a lot.

1.45 (07.07.2022):
	-QCBx2 + A/B/C > B + C: Fixed Guard Crush being gone from hits 1-4.

1.4 (03.24.2022):
	-Finally removed neccessity for MUGEN's default juggle point in system. Airjuggle changed from 1 to 0 as a result.
	-Wallbounce states should no longer push you in the case you hit them from behind.
	-Reverted 75% proration from supermoves to a more sensible 85% except for Super Moves that purposedly are a free juggle.
(those vary depending on abusability)
	-Retimed some fall.recovertimes to allow for more rewarding combo structure.
	-Improved Soft-Hard Knockdown detection. In particular the janky OTG recovers should work properly now.
	-Recovery near ground should be fully invincible for the opponent until they actually recover.
	-Projectiles have been reduced to about 20 base damage when fall-off is in play.
	-50% damage dampener penalty on a successful grab.
	-HUD Elements (Dull, Cool, Danger, Burst timer, Showtime, etc) have been realigned and now scale vertically depending on your
MUGEN's resolution. Burst bar relocated to prevent overlap with the Showtime letter graphics. Super portraits do the same thing.
	-RDP command should come out less often if just finished blocking. Unfortunately this means the shortcut B, QCB doesn't work as you'd expect as EX Osaka.
	-EX Osaka Ukiwa: No longer resets.
	-Vertical velocity on air chains now only happens if the previous normal actually hit.

1.3 (02.09.2022):
	-Removed an embarrassing debug oversight with her doing St.C over and over on P2 side.
	-Super moves now have 75% proration if comboed into.
	-Most Super moves now induce, in addition to an untechable hit, an unhittable knockdown on their final hit. Guard Cancels are also affected by this, but techable just before hitting
the ground.
	-Added Show Time and Burst Mode cancelling out of all super moves.
	-Show Time now actually resets all juggle flags on hit in addition to resetting the state of all soft-hard knockdowns.
	-SFF now has color separation.
	-Changed run jump velocities.
	-QCBx2 + A/B/C Super base damage reduced to 150/15 on hit/block.

1.0 (02.01.2022):
	-This is the first version of the character.

------------------------------------------------------------------------------------------
Important:
	-I do not own any of the sounds, sprites or characters used in this character, A! - Taisen Shiyou was made by Yukidaruma
	-Make sure your Max Explods and Max Helpers (56) are set as high as possible, along with your computer being able to do that.

------------------------------------------------------------------------------------------
FAQ:

Q: Is this character supported in 1.1?
A: It should be, I hope.

Q: Why not directly 1.1?
A: Good question, I just wanted her to be accessible for most people, you should have no problems converting her SFF to 1.1 standards
so you can use the portraits that you want!

Q: What's the gameplay style
A: It's from this Azumanga Daioh! Doujin fighting game A! - Taisen Shiyou. But changed to suit my liking.

------------------------------------------------------------------------------------------
Description:

Osaka is just as weird as you'd expect her to play like. Having some relatively strong distance control special moves along with some good mobility tools. Outside of that however she
is not very mobile and to strenghen her special moves she needs to use her Mezameyo~ move, which can leave her very exposed. With some extremely powerful supers however, one mistake can
spell certain doom if she manages to convert.

EX Osaka on the other hand, sacrifices her strange movepool into a more straight forward, almost straight out Sol Badguy moveset.

Caution should be taken if either of these Osakas use burst mode, as the resulting enhanced moves can be very deadly.

------------------------------------------------------------------------------------------
Known Issues:

-MUGEN really hates it when you hit people that have hit the ground OTG and then force them into a default falling state. It asserts invulnerability and ruins a couple combos,
can we please make the liedown nothitby fix a thing? <:) As a result and cause I want portability to a full game later to be easier I'm not doing anything about it, hope Ikemen devs take
note of this issue cause it really ruins the gameplay I intended.

-Any character that deals damage via state check of 5110 will sadly not work, now I thought long and hard about this one, cause I've always bypassed the normal Liedown state, because uuuh
it sucks because of not only the forced invuln (I do have a bypass of that) but also the mashing, which means that if you press every button imaginable you just kinda get up instantly, and
this character already has a short liedown time. So it's like pick your poison, ruin OTGs or ruin this type of state checking, and honestly I feel that if you wanna deal damage to somebody
in a throw by landing, you should have some sort of custom state so this type of thing doesn't happen. Honestly Neither situation is ideal, but I am going in favor for the liedown state.

------------------------------------------------------------------------------------------
Gameplay Notes:

	-All grabs have 4 frames of throw protection
	-All Non-Super Hard knockdowns are such UNLESS you OTG, in which case they become soft knockdowns and therefore techable before landing on the ground, with a generous window for it
to be registered. To reiterate, here's the list of types of knockdowns:
		-Soft: Can be recovered at a point in time after being hit.
		-Soft-Hard: Can be recovered only after if you are hit OTG once.
		-Hard: Can never be recovered from.
	-You can only juggle 1 group move per combo before fall-off/whiffing ensues.
	-All moves can potentially induce OTGs, depending on the hitbox of the move.
	-Normals induce resets once the hitstun is over.
	-Doing Grounded Showtime and then ending the Air Showtime resets all juggle status and OTGs.
	-Ground Showtime is an OTG, slower when you haven't combo'd into it (and also overhead in that situation).
	-Counter hits increase the damage dealt by any hit by 20%.
	-BURST! is enabled as soon as DANGER! shows up
	-Grabs are comboable into, but throw protection starts if P2 just comes out of hitstun. (Think KOF)
	
Juggling:

Osaka's moves are split into 7 groups, however you don't always have access to every group:
	Group 1: Bang, Up Bang
	Group 2: 2C, Ukiwa
	Group 3: Harisen Chop, E-Cho~, E-Cho~ (EX)
	Group 4: Uwa, Kowa~a~tsu!
	Group 5: Gun Harisen
	Group 6: Harisen Shoryu Attack
	Group 7: Rotating Kick, Harisen Slash

------------------------------------------------------------------------------------------
Moves:

A, B, C = Attacks
X = SC = Stylish Cancel
Y = G = Grab Button

Moves that are Regular Osaka are marked with [O]

Moves that are EX Osaka only are marked with [EX]

A/B/C Means A, B, or C.

360 = Full Circle Motion
QCF = Quarter Circle Forward (236)
QCB = Quarter Circle Back (214)
HCF = Half Circle Forward (41236)
HCB = Half Circle Back (63214)
DP = Dragon Punch (623)
RDP = Reverse Dragon Punch (421)
x2 = Do Motion Twice

Assume all moves are done in the ground, unless otherwise stated.

	Movement:
		-6, 6: Dash
		-4, 4: Backdash
			-Invuln for the first few frames.
		-2, 8: Super Jump.

	Unique:
		-[O] 6+B: Karakasa
			-A simple overhead that resets on hit.

		-[EX] 6+B: E-Cho~
			-Same as [O] HCB, F + A/B/C with reduced damage.

		-3+C: Ukiwa
			-EX Osaka's hits multiple times.
			-Soft knockdown.
		-G: Grab
			-Opponent must tech by holding a side direction and pressing Y before the tech window stops.

	Special:
		-[O] QCF + A/B/C: Bang
			-All versions are the same
			-Wobble on grounded hit
			-Soft-Hard Knockdown on the air

		-[O] DP + A/B/C: Up Bang
			-All versions are the same
			-Soft-Hard knockdown on hit

		-[O] QCB + A/B/C: Uwa, Kowa~a~tsu!
			-Strength of button increases distance from Osaka.

		-[O] HCB, F + A/B/C: E-cho~
			-All versions are the same
			-First few frames have auto-guard.
			-Unblockable if the auto-guard is successful.
			-Guard breaks if powered up.

		-RDP + A/B/C: Harisen Chop
			-Strength changes distance travelled
			-Overhead move
			-When powered up it causes a ground-bounce.
			-As EX Osaka this move Gains a massive hitbox during Burst.

		-[O] 2, 2 + A/B/C: Mezameyo~
			-Powers up "Bang", "Uwa, Kowa~a~tsu!", "E-cho~" and "Harisen Chop" for a single use

		-[EX] QCF + A/B/C: Gun Harisen
			-Strength exchanges faster projectile velocity for endlag.
			-Soft-Hard knockdown.
			-Affected by BURST drastically, at the cost of no version variance.

		-[EX] DP + A/B/C: Harisen Shoryu Attack
			-A: Full start-up Invuln
			-B: High invuln, more damage, more punishable.
			-C: No invuln, most damage, extremely punishable.
			-Soft-Hard knockdown.
			-Affected by BURST drastically, at the cost of no version variance.

		-[EX] QCB + A/B/C: Rotating Kick
			-A: Full projectile Invulnerability starting from the third animation frame.
			-B: Full projectile Invulnerability starting from the third animation frame until the end of the first hit. More distance, damage and active frames.
			-C: No invulnerability whatsoever, Most distance and damage, with about similar active frames as B.
			-No Burst: Soft Knockdown.
			-Burst: Soft-Hard Knockdown.
			-Affected by BURST drastically, at the cost of version variance.

		-[EX] (Air) QCF + A/B/C: Harisen Slash
			-All versions are the same
			-Spawns a projectile that does a Soft-hard knockdown.
			-Affected by BURST to hit 3 times.

	Style Actions:
		-(Requires 1 bar of Super) X: Showtime
			-Follow the directions on screen, then when all of them are complete, press C to finish for the damage, or press X (With 1 extra bar of meter) to go into...
		-(Requires 1 bar of Super) (In Air) X: Air Showtime
			-Similar to Grounded Showtime, however the sequence is different, when it's complete, press A to get them away at full range, B to get them to ground bounce,
C to get them away but not too far from you.
			-Completing this sequence all the way from a Grounded Showtime restores any juggles used up already.
		-(Requires 1 bar of Super) QCF + X: Harisen Smack EX
			-UNBLOCKABLE
			-Full armor and invincible until the hitbox comes out, the only way out of it is to jump.
		-(Requires 1/2 bar of Super) (While blocking) 412 + X: Guard Cancel
			-Does tiny damage.
		-(Requires AT LEAST 3 bars of Super) (While in Danger Range) 2, 2 + X: BURST MODE!
			-Lasts for 200 frames for each while bar consumed: 600, 800 and 1000 respectively for 3, 4 and 5 meters. All meter is then spent.
			-Buffs the following:
				-Damage
				-Remaining Health (About 25% damage decrease)
				-Walk and (Back)Dash speed
				-Regular Osaka does not need to Mezameyo~ to use her enhanced special moves, and will store a charge once Burst Runs out.
				-EX Osaka gains insane properties onto her special moves.
			-Cannot gain super meter while it is active.
			-All Super Meter use is converted to Burst Mode time, with a 25% discount.
			-Gives access to character's BURST SUPER.

	Super Moves:
		-[O] (Requires 1 bar of Super) QCBx2 + A/B/C: Oki ten den de?
			-Hold a F or B and press C to activate either:
				-4 + C: Pans
					Osaka strikes a pan 5 times, all 5 hits cause guard break.
				-6 + C: Knife
					Command grab that does insane damage, but can easily be jumped.
			-Take advantage of the mixup nature of this move. They might jump on reaction expecting the knife, causing them to get caught on the pans.
			-Always a hard knockdown
		-[O] (Requires 1 bar of Super) QCFx2 + A/B/C: Namako~
			-Osaka tosses a bunch of Sea Slugs, with random velocities. Despite the randomness it's still a very solid combo option and possibly her best super at longer ranges.
			-Hard Knockdown
		-[EX] (Requires 1 bar of Super) QCBx2 + A/B/C: Large Slash
			-A single strike reversal, mostly anti-air style super.
			-Hard Knockdown
		-[EX] (Requires 1 bar of Super) QCFx2 + A/B/C: Thunder
			-5 powerful lightnings strike in sequence in front of Osaka.
			-Hard Knockdown

	BURST SUPER:
		-(In BURST) QCB, QCF + A/B/C: Harisen dai Shoryuu Ichigeki
			-A single strike reversal super, on hit it deals 550 damage.
			-Hard Knockdown

------------------------------------------------------------------------------------------
What's left?

-More Voices and knowing where to place the ones that I already have.
-Any other strange bugs or game breaking exploits that come to me.

------------------------------------------------------------------------------------------
Credits (Tell me if I forgot you):

-Kiyohiko Azuma (Creator of Azumanga Daioh!)
-Yuki Matsuoka (voices Osaka)
-Yukidaruma (For creating A! Taisen Shiyou)
-Yamori X (Testing, Damage Dampening, Palettes)
-Cluster (Color Separation and Palettes)
-The_None (NJS, Custom State methods)
-Jesuszilla (Push box code)
-RicePigeon (Cross reference with certain codes and a few things that escape my brain lol)
-Vans (Cornerpush)
-PotS (Some snippets of code everyone uses these days lol)
-Inktrebuchet (Explaining how the cond double redirect exploit works)
-Caddie (Forced liedown Invuln fix)
-PlasmoidThunder (Code snippet for invulnerability that lasts till recovery near ground)
-Evoga, Noise Factory (Graphics for the letters in Show-Time)
-SNK (Certain hitspark graphics)
-EXAMU (Certain graphics)
-Arcsys and Daisuke Ishiwatari (Sol Badguy quotes)

------------------------------------------------------------------------------------------
Contact:

You know where to find me. Yell at me if I did something stupid or wrong lol:

MFG: https://mugenguild.com/forum/profile/jademidori-82039
MFFA: https://mugenfreeforall.com/profile/4486-jade_midori/
Twitter: https://twitter.com/jade_midori_
YouTube: https://www.youtube.com/channel/UCn2DLeMgoRjZ0PjgVCEpb9w
