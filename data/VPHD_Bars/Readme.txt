;============================================================================
;V HD Lifebars
;============================================================================

Since MUGEN 1.1 has been publicly released/leaked, its my great
pleasure to finally release these lifebars I've been working with
since last month. All of the animations I created for the Rounds,
Fight, KO, etc. were all animated one by one using Photoshop, so I
apologize if they don't have any flashy effects like Blazblue, Chaos
Code, or Aquapazza round/fight/ko animations

The basic inspiration for these bars were a mix of Chaos Code, Kingdom
Hearts, P4U & Night In-Birth. Hope the bars will be to a lot of
peoples taste in terms of aesthetics and hope you enjoy using this
creation of mine. 

Like my previous 2 lifebars, these will use the standard character
portraits, but there is an option for using custom portraits. Thats
why I provided 2 separate DEF files for you to choose.

A template is provided, but I can only give you guyz the PSD file since
its near impossible using anything else besides PS to create the 
custom portraits (well its just my opinion since I only use PS to edit
images).

I also provided an example KFM character so you can see how I inserted
the portraits in the char's SFF and at what coordinates.

Good luck & Happy MUGEN-ing.

;----------------------------------------------------------------------
Important NOtes
;----------------------------------------------------------------------

Lifebars only supported for MUGEN 1.1, please set your localcoord
in system.def to 1280,720.
All your characters need to be on localcoord 426.66,320.25 for the
portraits to be shown correctly.
Lifebars only support HD resolution MUGENs.

;------------------------------------------------------------------------

;------------------------------------------------------------------------
; To implement this lifebar to your MUGEN
;------------------------------------------------------------------------
- Add the files to the designated folders (files in the fonts folder go
  into fonts, data into data, etc.)
- Open the system.def and change this line, "fight = fight.def",
  to "fight = FightHD.def"
  ;----------------------------------------
   Alternative (for custom portrait usage)
   "fight = FightHD_Custom.def"
  ;----------------------------------------
- open your mugen.cfg in the data folder and set the time to 200
- Start MUGEN.exe

;------------------------------------------------------------------------

Thanks to:
silenthill/Phantom Blood - for Beta testing
TheWilster    - P4 Arena Announcer Sounds
Adobe       - for their Photoshop software