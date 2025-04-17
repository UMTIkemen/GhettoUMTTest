;---|AI Commands|-----------------------------------------------------------
[Command]
Name = "AI_00"
Command = a, a
Time = 0
[Command]
Name = "AI_01"
Command = a, b
Time = 0
[Command]
Name = "AI_02"
Command = a, c
Time = 0
[Command]
Name = "AI_03"
Command = a, x
Time = 0
[Command]
Name = "AI_04"
Command = a, y
Time = 0
[Command]
Name = "AI_05"
Command = a, z
Time = 0
[Command]
Name = "AI_06"
Command = a, s
Time = 0
[Command]
Name = "AI_07"
Command = b, a
Time = 0
[Command]
Name = "AI_08"
Command = b, b
Time = 0
[Command]
Name = "AI_09"
Command = b, c
Time = 0
[Command]
Name = "AI_10"
Command = b, x
Time = 0
[Command]
Name = "AI_11"
Command = b, y
Time = 0
[Command]
Name = "AI_12"
Command = b, z
Time = 0
[Command]
Name = "AI_13"
Command = b, s
Time = 0
[Command]
Name = "AI_14"
Command = c, a
Time = 0
[Command]
Name = "AI_15"
Command = c, b
Time = 0
[Command]
Name = "AI_16"
Command = c, c
Time = 0
[Command]
Name = "AI_17"
Command = c, x
Time = 0
[Command]
Name = "AI_18"
Command = c, y
Time = 0
[Command]
Name = "AI_19"
Command = c, z
Time = 0
[Command]
Name = "AI_20"
Command = c, s
Time = 0
[Command]
Name = "AI_21"
Command = x, a
Time = 0
[Command]
Name = "AI_22"
Command = x, b
Time = 0
[Command]
Name = "AI_23"
Command = x, c
Time = 0
[Command]
Name = "AI_24"
Command = x, x
Time = 0
[Command]
Name = "AI_25"
Command = x, y
Time = 0
[Command]
Name = "AI_26"
Command = x, z
Time = 0
[Command]
Name = "AI_27"
Command = x, s
Time = 0
[Command]
Name = "AI_28"
Command = y, a
Time = 0
[Command]
Name = "AI_29"
Command = y, b
Time = 0
[Command]
Name = "AI_30"
Command = y, c
Time = 0
[Command]
Name = "AI_31"
Command = y, x
Time = 0
[Command]
Name = "AI_32"
Command = y, y
Time = 0
[Command]
Name = "AI_33"
Command = y, z
Time = 0
[Command]
Name = "AI_34"
Command = y, s
Time = 0
[Command]
Name = "AI_35"
Command = s, a
Time = 0
[Command]
Name = "AI_36"
Command = s, b
Time = 0
[Command]
Name = "AI_37"
Command = s, c
Time = 0
[Command]
Name = "AI_38"
Command = s, x
Time = 0
[Command]
Name = "AI_39"
Command = s, y
Time = 0
[Command]
Name = "AI_40"
Command = s, z
Time = 0
[Command]
Name = "AI_41"
Command = s, s
Time = 0
[Command]
Name = "AI_42"
Command = U, U
Time = 0
[Command]
Name = "AI_43"
Command = U, F
Time = 0
[Command]
Name = "AI_44"
Command = U, D
Time = 0
[Command]
Name = "AI_45"
Command = U, B
Time = 0
[Command]
Name = "AI_46"
Command = F, U
Time = 0
[Command]
Name = "AI_47"
Command = F, F
Time = 0
[Command]
Name = "AI_48"
Command = F, D
Time = 0
[Command]
Name = "AI_49"
Command = F, B
Time = 0
;------------------------------------------------------------------------
; ݂ ȑ D   w ڂ  x ̃R }   h t @ C   ł  B
;  R }   h Ɋւ   ݒ ͂S   \   ɂȂ  Ă  ܂  B
;==============================================================================
; Win Ő p p [ g
;==============================================================================
;------------------------------------------------------------------------------
;       Win ł   i   m ɂ Linux ł   j ǉ    ꂽ v f ̓ B
;  R }   h ֘A ̏    ݒ  C ӂɎw  o    悤 ɂȂ   (` E ցE L)
;
; w { ^     } b v x ̓{ ^   z u ύX p ̍  ځB
;   ` p [ g ł        ύX   Ȃ  Ă ǂ  悤 ɂȂ         B
;  ʓ| L   l p   ȁI i ú 
;
; w f t H   g ݒ x ł͊e[Command] ŏȗ      ꍇ  
;    ͎ t   ԂƓ  ͋L     Ԃ \ ߌ  ߂Ă      ځB
;
;
;    ̂Q   ڂ͏ȗ  \ B
;------------------------------------------------------------------------------
;-|  { ^     } b v i { ^   R   t B O j|----------------------------------------   P  

[Remap]
x = x      ; w { ^   ̓  ͔      ۂɉ    { ^   Ɋ  蓖 Ă B
y = y      ; x { ^   @ @ @ @ @ @ @ @ @ V
z = z      ; y { ^   @ @ @ @ @ @ @ @ @ V
a = a      ; ` { ^   @ @ @ @ @ @ @ @ @ V
b = b      ; a { ^   @ @ @ @ @ @ @ @ @ V
c = c      ; b { ^   @ @ @ @ @ @ @ @ @ V
s = s      ; X ^ [ g { ^   @ @ @ @ @ @ V

;------------------------------------------------------------------------------
;  Ⴆ ΁u {   w { ^   ŏo    p   `  a { ^   ɕς      ꍇ v Ȃ A
;
; x = b
;
;  ŊȒP ɏo    B g  Ȃ  { ^    g   Ă   { ^   Ɋ  蓖 Ă鎖  \ B
;------------------------------------------------------------------------------
;-|  f t H   g ݒ  |-----------------------------------------------------------   Q  

[Defaults]
command.time = 15  ; W   ̃R }   h   ͎ t   ԁB
                   ; e R }   h ŏȗ    Ă   ꍇ ɗL   B
                   ;   ̃p     [ ^        ꍇ A f t H   g ͂P t   [   ɂȂ B
                   ; i @M.U.G.E.N ł̂P t   [   @   @ P ^ U O b @ j

command.buffer.time = 1  ; W   ̃R }   h   ͋L     ԁB
                         ;   ͂       ɃR }   h  L     A
                         ; w 𗣂  Ă R }   h         Ă    Ԃ 
                         ;     Őݒ肵     Ԃ̕  ێ     B
                         ; P ` R O t   [   ܂ł̊ԂŐݒ \ B
                         ; f t H   g ͂P t   [   B

;==============================================================================   R  
;  R }   h  ` p [ g i   ̓L [  ݒ肷  j
;==============================================================================
;------------------------------------------------------------------------------
;        L [ ƃ{ ^   ̑g ݍ  킹 Ŋi   Q [   ɂ     
; w   ̓R }   h x 𒼐ڐݒ E ҏW    p [ g B
;
;     R }   h ɖ  O  t   ē  ̓L [  g ݍ  킹  P   ȍ ƂɂȂ邯 ǁA
;  g ݍ  킹   Ɠ       o    ͓̂ Փx           B
;
;    L Łu     ̌  ܂ v Ɓu g ݍ  킹 ɕK v ȃA   t @ x b g ƋL   v  
;  S Đ     ܂  傤 B
;------------------------------------------------------------------------------
;       ̌  ܂聡
;
; [Command]          F   ̓R }   h  P  `    B
; name = "***"       F R }   h      ߂ B 啶   Ə        ʂ    B
; command = ###      F   ۂɓ  ͂   L [  g ݍ  킹  B ڍׂ͌ q B
; time = &&&         F   ͎ t   Ԃ ݒ i I v V     j B
; buffer.time = @@@  F   ͋L     Ԃ ݒ i I v V     j B
;
;    l ^ ł      Ă   ʂ A o ^   \ Ȑ  ͍ő w P Q W x ܂ŁB
;
;
;   w K { R }   h   x Ə    Ă R }   h ́A V X e     ŏ      Ă܂  B
; @ R }   h    ς     A     Ă͂    ܂   B L [ ̕ύX ͏o   ܂  B
;------------------------------------------------------------------------------
;   K v ȃA   t @ x b g ƋL    
;
;   L ́ucommand = ### v ́w### x ɊY     镔   ŁA
;  g ݍ  킹  L [ ƃ{ ^    ݒ肵 Ȃ   ΂Ȃ Ȃ  B
;
;    ݒ肵   L [  { ^    M.U.G.E.N ̃I v V       [ h ɂ   
;   u L [ R   t B O v ɂĐݒ肵   L [ ȂǂɑΉ    Ă  ܂  B
;
;        L [   i S ĕK   啶   Łj
;
;  @B  @ F u    v ɃL [      i Backward  j
;  @D  @ F u     v ɃL [      i Downward  j
;  @F  @ F u O   v ɃL [      i Forward  j
;  @U  @ F u    v ɃL [      i Upward  j
;
;  @DB @ F u   ΂߉  v ɃL [      i uD v ƁuB v       ɓ  ͂  ꂽ    F   j
;  @UB @ F u   ΂ߏ v ɃL [      i uU v ƁuB v       ɓ  ͂  ꂽ    F   j
;  @DF @ F u O ΂߉  v ɃL [      i uD v ƁuF v       ɓ  ͂  ꂽ    F   j
;  @UF @ F u O ΂ߏ v ɃL [      i uU v ƁuF v       ɓ  ͂  ꂽ    F   j
;
;    { ^     i S ĕK         Łj
;
;  @a  @ F u ` { ^   v     
;  @b  @ F u a { ^   v     
;  @c  @ F u b { ^   v     
;  @x  @ F u w { ^   v     
;  @y  @ F u x { ^   v     
;  @z  @ F u y { ^   v     
;  @s  @ F u X ^ [ g { ^   v     
;
;    L     i   ͌  ʂ ω      閽 ߁j
;
;  @/  @ F i X   b V   j L [  { ^    u       ςȂ  v ɂ  Ă  鎖  F      ꍇ ɒǉ     
;
;  @ @ i  j F @/b       =  a { ^          ܂܂ɂ   
;  @ @ @ @ @ @ @/F       =  O L [        ܂܂ɂ   
;  @ @ @ @ @ @ @/U,z     =   L [        ܂܂y { ^      ͂   
;
; @ @                                                            
;
;  @~  @ F i `   _ j L [  { ^     u     ꂽ   v  F      ꍇ ɒǉ     
;
;  @ @ i  j F @~x       =  w { ^   𗣂 
;  @ @ @ @ @ @ @~DF      = u O ΂߉  v ̃L [ 𗣂 
;  @ @ @ @ @ @ @~DB,F,c  = u   ΂߉  v 𗣂     ɑO L [ E b { ^   ̏  Ԃɓ  ͂   
;
;  @ @ @ @ @ @   u { ^   𗣂  ܂ł̎  ԁi   ߎ  ԁj v  ݒ肷 鎖   o    
;
;  @ @ @ @ @ @ @~30x     =  w { ^          ܂܂ɂ  āA R O t   [   ȏ o     痣  
;  @ @ @ @ @ @ @~50B,F,a =    L [  T O t   [   ܂ŗ  ߂đO L [ E ` { ^   ̏  Ԃɓ  ͂   
;
; @ @                                                            
;
;  @$  @ F i h   j     L [ ́u     ̓ ǂꂩ     ͂   Ă  鎖 v  F      ꍇ ɒǉ     
;
;  @ @ i  j F @$B       = u    v u   ΂߉  v u   ΂ߏ v ̂ǂꂩ     ͂   Ă     
;  @ @ @ @ @ @ @$UF      = u O v u  v u O ΂ߏ v ̂ǂꂩ     ͂   Ă     
;
;  @ @ @ @ @ @     ̋L   ́u     L [ v ł    g   ܂   B
;
; @ @                                                            
;
;  @+  @ F i v   X j { ^    u         v   Ă  鎖  F      ꍇ ɒǉ     
;
;  @ @ i  j F @x+y      =  w { ^   Ƃx { ^   𓯎         
;  @ @ @ @ @ @ @a+b+c    =  ` { ^   Ƃa { ^   Ƃb { ^   𓯎         
;
;  @ @ @ @ @ @     ̋L   ́u { ^   v ł    g   ܂   B
;
; @ @                                                            
;
;  @>  @ F i O   [ ^ [ U   j  Ȃ iWin łŒǉ    ꂽ L   j
;  @ @ @ @ @ @ @ @ @ @ @ @ u   ̃L [     ͂   Ă  Ȃ     m F   āA   ̃L [      v ꍇ
;
;  @ @ i  j F @a,>~a    =  ` { ^   ȊO     ͂   Ă  Ȃ   Ԃł` { ^   𗣂 
;  @ @ @ @ @ @ @F,>~F,>F =  O L [ ȊO     ͂   Ă  Ȃ   ԂőO L [ 𗣂  A
; @ @ @ @ @ @ @ @ @ @ @ @ @     x O L [    ͂   
;
;-------------------------------------------------------------------------------
;        ̋L   ͑S đg ݍ  킹 Ďg       o   遜
;
;  @ @ i  j F @~80$DB,DF,F,/a+y+c
;  @ @ @ @ @ @ @
;  @ @ @ @ @ @ u    v u   v u   ΂߉  v ̂ǂꂩ  W O t   [   ܂ŗ  ߂ 
;  @ @ @ @ @ @ u O ΂߉  v   u O v    ͂     A ` Ƃx Ƃb 𓯎          ܂܂ɂ   
;
;------------------------------------------------------------------------------
;-|    K E Z |-----------------------------------------------------------------

;     O       Ȃ ΁A Ⴄ R }   h ł     X e [ g ̋Z  o       \ B

[Command]
name = "kill"
command = ~x, x, F, y, z
time = 40

[Command]
name = "246a"
command = ~D, F, c

[Command]
name = "kou_xy"
command = ~B, D, DB, x+y

[Command]
name = "upper_xy"
command = ~D,DB,$B,D,DB,$B,x+y
time = 30
buffer.time = 3

[Command]
name = "upper_xy"
command = ~D,DB,$B,D,DB,$B,y+z
time = 30
buffer.time = 3

[Command]
name = "upper_xy"
command = ~D,DB,$B,D,DB,$B,z+x
time = 30
buffer.time = 3

;------------------------------------------------------------------------------
;-|  K E Z |-------------------------------------------------------------------
[Command]
name = "46x"
command = ~48$B,$F,x
time = 12

[Command]
name = "46x"
command = ~48$B,$F,~x
time = 12

[Command]
name = "46y"
command = ~48$B,$F,y
time = 12

[Command]
name = "46y"
command = ~48$B,$F,~y
time = 12

[Command]
name = "46z"
command = ~48$B,$F,z
time = 12

[Command]
name = "46z"
command = ~48$B,$F,~z
time = 12

[Command]
name = "46a"
command = ~48$B,$F,c
time = 12

[Command]
name = "46a"
command = ~48$B,$F,~c
time = 12

[Command]
name = "41236a"
command = ~B, D, F, c

[Command]
name = "41236x"
command = ~B,DB,$D,DF,$F,x

[Command]
name = "41236y"
command = ~B,DB,$D,DF,$F,y

[Command]
name = "41236z"
command = ~B,DB,$D,DF,$F,z

[Command]
name = "kou_x"
command = ~B, D, DB, x

[Command]
name = "kou_y"
command = ~B, D, DB, y

[Command]
name = "kou_z"
command = ~B, D, DB, z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y
 

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, c

[Command]
name = "QCF_xy"
command = ~D,DF,$F,D,DF,$F,x
time = 24
buffer.time = 3

[Command]
name = "QCF_xy"
command = ~D,DF,$F,D,DF,$F,y
time = 24
buffer.time = 3

[Command]
name = "QCF_xy"
command = ~D,DF,$F,D,DF,$F,z
time = 24
buffer.time = 3

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DB, B, c

[Command]
name = "heart_c"
command = ~DF, x

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_x"
command = F, F, x

[Command]
name = "BOM_x"
command = ~D,D, x

[Command]
name = "BOM_y"
command = ~D,D, y

[Command]
name = "BOM_z"
command = ~D,D, z

[Command]
name = "46x"
command = ~32$B,$F,x
time = 12

[Command]
name = "46y"
command = ~32$B,$F,y
time = 12

[Command]
name = "46z"
command = ~32$B,$F,z
time = 12
;------------------------------------------------------------------------------
;-|  L [ Q  A       |---------------------------------------------------------

[Command]
name = "FF"       ; K { R }   h  
command = F, F
time = 10

[Command]
name = "BB"       ; K { R }   h  
command = B, B
time = 10

;------------------------------------------------------------------------------
;-|          |-----------------------------------------------------------------

[Command]
name = "recovery" ; K { R }   h  
command = x+y
time = 1

[Command]
name = "recovery" ; K { R }   h  
command = y+z
time = 1

[Command]
name = "recovery" ; K { R }   h  
command = x+z
time = 1

[Command]
name = "recovery" ; K { R }   h  
command = c
time = 1

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "z+a"
command = z+a
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+a"
command = y+a
time = 1

[Command]
name = "y+c"
command = y+a
time = 1

[Command]
name = "b+a"
command = b+a
time = 1

[Command]
name = "LM"
command = x+y
time = 1

[Command]
name = "MH"
command = y+z
time = 1

[Command]
name = "LH"
command = x+z
time = 1
;------------------------------------------------------------------------------
;-|      L [ { { ^   |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1
;------------------------------------------------------------------------------
;-|  { ^   P   |---------------------------------------------------------------

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

;---------------------------
[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_a"
command = /a

[Command]
name = "hold_c"
command = /c
;------------------------------------------------------------------------------
;-|      L [ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ; K { R }   h  
command = /$F
time = 1

[Command]
name = "holdback"  ; K { R }   h  
command = /$B
time = 1

[Command]
name = "holdup"    ; K { R }   h  
command = /$U
time = 1

[Command]
name = "holddown"  ; K { R }   h  
command = /$D
time = 1

;==============================================================================   S  
;  X e [ g G   g   [ p [ g i Z Ȃǂ o    悤 ɂ  邽 ߂̏    ݒ j
;==============================================================================
;------------------------------------------------------------------------------
;  R }   h   Ɠ  ͂   R }   h  ݒ肵          Ӗ        ̂ŁA        
; u   ۂɓ  ͂    R }   h łǂ̔ԍ  ̃X e [ g  ǂ         ŏo   邩 v
;     ߂Ȃ   ΂Ȃ Ȃ  B
;
;  X e [ g R   g   [   uChangeState v     g  Ȃ    ǁA
;     Ȃɓ   Ȃ  ̂Ńg   K [  o   Ă  炷   o    B
;
;                Ă    ΊȒP ȃg   K [ ݒ ̗   ͊o     邩 ƁB
;
;  G   g   [ ̏  Ԃɂ͂     x ̖@       邯 ǁA
;    ܂  t H   _ ́u   l ^.txt v  Q ƁB i g       \     ׶  ׁj
;
; ChangeState ȂǃX e [ g R   g   [   ̊ { I Ȑݒu   
;    ܂  t H   _ ́u e   v   [ g.txt v  Q ƁB
;------------------------------------------------------------------------------
;      펞 Ď  X e [ g i ] P j  
;  R }   h t @ C   i ̃X e [ g G   g   [ p [ g j ɕK v ȍ  ڂł  B
;   ΂ɏ    Ă͂    Ȃ  ̂ŗv   ӁB
;
;  ʏ ̐H 炢  ԈȊO ́uP2StateNo v  uTargetState v   Ő  䂳 ꂽ A
;  쐬 ҂  C ӂɎw 肵     葤 ̐H 炢 X e [ g Ɍ   A
;  o ^     X e [ g R   g   [     L   ɂ͂Ȃ ܂   B
;------------------------------------------------------------------------------

[Statedef -1] ;     ̍s ͐ ΂ɏ    Ȃ  łˁB K {   ڂł  B

;==============================================================================
;    K E Z
;==============================================================================
;------------------------------------------------------------------------------
;      Ł  ɂĎ  ۂɎg   Ă   u X } b V   J   t [ A b p [  ChangeState v    
;    čs   ܂   Im9   M D L)
;
;  ܂     ̃R }   h    ͂      Ȃ ΁A
;  K   w Ăяo   R }   h ̃g   K [ x ͐ݒ肵 ܂  傤 B
;     ȏ   łȂ     A R }   h ͒ʏ utriggerall v ̕  Őݒ肵       ǂ  B
;
; utriggerall v Ƃ́w L   ɂȂ 󋵂   肷 邽 ߂̏   x  w 肷  B
; triggerall ̏     L   ɂȂ Ȃ     Atrigger1 ȍ~ ̏    L   ɂ͂Ȃ Ȃ  B
;    ł   ₹  B X e [ g 쐬 ̊ { e N j b N ̈ Ȃ̂Ŋo   Ă    ĂˁB
;       triggerall  trigger1 ȍ~       Ɓu P ̂ł́v g   Ȃ  ̂Œ  ӁB
; itrigger1 ȍ~  S ăR     g      M.U.G.E.N ł  ̃L      I  Ŏ    Ă݂悤 j
;
;
;    w p   [ Q [ W x ́u X [ p [ R   { Q [ W v  u   K E Z Q [ W v Ȃǂ 
;  @ Ă΂ Ă镔   ̃Q [ W ł  B
;  @ Q [ W   u P O O O | C   g v Ȃ w   x   P x Ɠ    Ӗ  ɂȂ ܂  B
;
;  @ ܂  p b ƌ  AM.U.G.E.N ̃p   [ Q [ W   Ďd g ݂ 
;  @ X g y d q n V   [ Y ́u X [ p [ R   {   x   Q [ W v ܂ ܂   ˁi   
;------------------------------------------------------------------------------
[State -1,  i   ̐Ⓒ]
type = ChangeState
value = 3300
triggerall = !var(49)
triggerall = power >= 3000
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = command = "upper_xy"  
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,425]
trigger3 = stateno = [1000,1700]
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1,  薼]
type = ChangeState
value = 3000
triggerall = !var(49)
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = command = "QCF_xy"  
triggerall = power >= 1000
triggerall = var(26) = 0 ;numhelper(3080) = 0
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = stateno = [200,425]
trigger3 = stateno = [1000,1700]
;ignorehitpause = 1

[State -1,  ]
type = ChangeState
value = 3200
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_xy" 
triggerall = power >= 1000
triggerall = var(26)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,425]
trigger3 = stateno = [1000,1700]
;ignorehitpause = 1
;==============================================================================
;  K E Z
;==============================================================================
[State -1,     ǂ     I]
type = ChangeState
value = 1400
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "41236x" || command = "41236y" || command = "41236z"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
 
;------------------------------------------------------------------------------
[State -1,    ͍Ăэ  ݎn ߂ I]
type = ChangeState
value = 1000
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCF_x"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,    ͍Ăэ  ݎn ߂ IM]
type = ChangeState
value = 1010
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCF_y"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,    ͍Ăэ  ݎn ߂ IH]
type = ChangeState
value = 1030
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCF_z"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
 
;------------------------------------------------------------------------------
[State -1, A   ͍Ăэ  ݎn ߂ I]
type = ChangeState
value = 1500
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_x"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7

[State -1, A   ͍Ăэ  ݎn ߂ I]
type = ChangeState
value = 1510
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_y"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7

[State -1, A   ͍Ăэ  ݎn ߂ I]
type = ChangeState
value = 1530
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_z"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7
  
;------------------------------------------------------------------------------
[State -1,  w   Ԃ         āx  щz         c I I]
type = ChangeState
value = 1200
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = command = "kou_x"
triggerall = statetype != A
;triggerall = power >= 250 || var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,  w   Ԃ         āx  щz         c I I]
type = ChangeState
value = 1200
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = command = "kou_y"
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,  w   Ԃ         āx  щz         c I I]
type = ChangeState
value = 1200
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "kou_z"
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1,Soff g h     b IL]
type = ChangeState
value = 1100
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;ignorehitpause = 1

[State -1,Soff g h     b IM]
type = ChangeState
value = 1100
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,Soff g h     b IH]
type = ChangeState
value = 1120
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
  
;==============================================================================
[State -1, _ b V     p  ]
type = ChangeState
value = 1790
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = command = "46x" || command = "46y" || command = "46z"
trigger1 = statetype != A
trigger1 = ctrl
 
[State -1, ^   Ȃ  _ b V     p  ]
type = ChangeState
value = 1700
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(31)
triggerall = command = "46x" || command = "46y" || command = "46z"
trigger1 = statetype != A
trigger1 = ctrl
 
;==============================================================================
;  ړ  ֘A
;==============================================================================
[State -1,     ]
type = ChangeState
value = 100
triggerall = var(59)<=0
triggerall = roundstate = 2
trigger1 = command = "FF" || (command = "holdfwd" && command!="holdback" && (command="a"))
trigger1 = statetype = S
trigger1 = ctrl

[State -1,  o b N X e b v]
type = ChangeState
value = 105
triggerall = var(59)<=0
triggerall = roundstate = 2
trigger1 = command = "BB" || (command = "holdback" && command!="holdfwd" && (command="a"))
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
;     Z
;==============================================================================
;------------------------------------------------------------------------------
[State -1,        ǂ߂ cF]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = command = "holdfwd"
triggerall = command = "LM" || command = "MH" || command = "LH"
trigger1 = statetype != A && ctrl
value = 750

[State -1,        ǂ߂ cN]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "LM" || command = "MH" || command = "LH"
trigger1 = statetype != A && ctrl
value = 752

[State -1,        ǂ߂ cB]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
trigger1 = statetype != A && ctrl
trigger1 = command = "holdback"
trigger1 = command = "LM" || command = "MH" || command = "LH"
value = 754
;------------------------------------------------------------------------------
[State -1,     ]
type = ChangeState
value = 800
triggerall = !var(49)
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = var(59)<=0
triggerall = roundstate = 2
trigger1 = command != "holdback"

[State -1,     (   )]
type = ChangeState
value = 801
triggerall = !var(49)
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = var(59)<=0
triggerall = roundstate = 2 
trigger1 = command = "holdback"
 
[State -1,   ̖ڒׂ ]
type = ChangeState
value = 900 
triggerall = command = "c"
triggerall = numhelper(1001)
triggerall = (helper(1001), stateno = 10120) || (helper(1001), stateno = 418)
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
trigger10 = (stateno = 205) && time >= 4
trigger11 = (stateno = 215) && time >= 7
trigger12 = (stateno = 225) && time >= 13
trigger13 = (stateno = 405) && time >= 5
trigger14 = (stateno = 415) && time >= 7
trigger15 = (stateno = 425) && time >= 7
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1,   ̖ڒׂ ]
type = ChangeState
value = 900 
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49) 
triggerall = command = "c"
triggerall = numhelper(1001) = 0 || stateno = [200,425]
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
trigger10 = (stateno = 205) && time >= 4
trigger11 = (stateno = 215) && time >= 7
trigger12 = (stateno = 225) && time >= 13
trigger13 = (stateno = 405) && time >= 5
trigger14 = (stateno = 415) && time >= 7
trigger15 = (stateno = 425) && time >= 7
ignorehitpause = 0

;---------------------------------------------------------------------------
; A h o   V   O i     j
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "LM" || command = "MH" || command = "LH"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
; A h o   V   O i   Ⴊ ݁j
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0  
trigger1 = command = "LM" || command = "MH" || command = "LH"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;Son A h o   V   O i     j
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0  
trigger1 = command = "LM" || command = "MH" || command = "LH"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
ignorehitpause = 1
value = 14400
;---------------------------------------------------------------------------
;Son A h o   V   O i   Ⴊ ݁j
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0  
trigger1 = command = "LM" || command = "MH" || command = "LH"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
value = 14405
;------------------------------------------------------------------------------
[State -1,  [   v b c   L     Z  ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 500
triggerall = command = "a"
trigger1 = stateno = 200 && time >= 4
trigger2 = stateno = 210 && time >= 7
trigger3 = stateno = 220 && time >= 13
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = stateno = 400 && time >= 4
trigger7 = stateno = 410 && time >= 7
trigger8 = stateno = 420 && time >= 7
trigger9 = stateno = 450 && time >= 11
trigger10 = stateno = 452 && time >= 12
trigger11 = stateno = 454 && time >= 17
trigger12 = stateno = 1005 || stateno = 1015 || stateno = 1035 || stateno = 1055
trigger12 = time >= 2
trigger13 = stateno = 1100 || stateno = 1110
trigger13 = time >= 25
trigger14 = stateno = 1120 || stateno = 1150
trigger14 = time >= 31
trigger15 = stateno = 1400 || stateno = 1460
trigger15 = time >= 13
trigger16 = stateno = 1401 || stateno = 1461
trigger16 = time >= 100
trigger17 = stateno = 1700 || stateno = 1750
trigger17 = time >= 5
trigger18 = stateno = 205 && time >= 8
trigger19 = stateno = 215 && time >= 10
trigger20 = stateno = 225 && time >= 15
trigger21 = stateno = 405 && time >= 5
trigger22 = stateno = 415 && time >= 7
trigger23 = stateno = 425 && time >= 7
value = 700
ignorehitpause = 0
  

[State -1,       Ԓ   ]
type = ChangeState
value = 6666
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "kou_x" || command = "kou_y" || command = "kou_z"
triggerall = numhelper(1205) = 0
triggerall = numhelper(1001) = 0 || helper(1001),stateno = 1103
trigger1 = power >= 3000 ;&& !var(31)
trigger1 = statetype != A
trigger1 = movetype = H
trigger1 = stateno = [5000, 5019]

;trigger2 = power >= 500 && var(31)
;trigger2 = statetype != A
;trigger2 = movetype = H
;trigger2 = stateno = [5000, 5019]
;==============================================================================
;  ʏ U   Z
;==============================================================================
;------------------------------------------------------------------------------

[State -1, D      ]
type = ChangeState
value = 205
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, D      ]
type = ChangeState
value = 215
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, D      ]
type = ChangeState
value = 225
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1,       ]
type = ChangeState
value = 200
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl; || stateno = 100 || stateno = 105
;trigger2 = stateno = 200 && time >= 4
trigger2 = stateno = 400 && time >= 4
trigger3 = stateno = 602

[State -1,       ]
type = ChangeState
value = 210
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl; || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 4
ignorhitpause = 1

[State -1,       ]
type = ChangeState
value = 220
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = command != "holddown"
;triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl; || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 4
trigger5 = (stateno = 410) && time >= 7

[State -1,       ];EBver
type = ChangeState
value = 210
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 200 && time >= 4

[State -1,       ];EBver
type = ChangeState
value = 220
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 210 && time >= 5

[State -1,    ͍Ă ];EBver
type = ChangeState
value = 1030
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 220 && time >= 8

[State -1,    ̔  eSC];EBver
type = null;ChangeState
value = 3000
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 250 && time >= 12
 
;------------------------------------------------------------------------------
[State -1,     ]
type = ChangeState
value = 195
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Son    ]
type = null;ChangeState
value = 195
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1,    Ⴊ ݎ ]
type = ChangeState
value = 400
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 4
trigger3 = stateno = 400 && time >= 4

[State -1, D   Ⴊ ݎ ]
type = ChangeState
value = 405
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1,    Ⴊ ݒ ]
type = ChangeState
value = 410
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
;triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 4

[State -1, D   Ⴊ ݒ ]
type = ChangeState
value = 415
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1,    Ⴊ ݋ ]
type = ChangeState
value = 420
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
;triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7

[State -1, D   Ⴊ ݋ ]
type = ChangeState
value = 425
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20
;------------------------------------------------------------------------------
[State -1,ON   Ⴊ ݎ ]
type = null;ChangeState
value = 10400
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = (stateno = 10200) && time >= 5
trigger2 = (stateno = 10400) && time >= 5

[State -1,ON   Ⴊ ݒ ]
type = null;ChangeState
value = 10410
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5

[State -1,ON   Ⴊ ݋ ]
type = null;ChangeState
value = 10420
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 8
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 6
;------------------------------------------------------------------------------

[State -1,  W     v  ]
type = ChangeState
value = 600
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) = 1
trigger2 = ctrl

[State -1,  W     v  ]
type = ChangeState
value = 610
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) = 2
trigger2 = ctrl
trigger3 = command = "y"
trigger3 = stateno = 600 & movecontact

[State -1,  W     v  ]
type = ChangeState
value = 620
triggerall = var(59)<=0
triggerall = roundstate = 2
triggerall = !var(49)
trigger1 = command = "z"
;trigger1 = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) = 3
trigger2 = ctrl
trigger3 = command = "z"
trigger3 = stateno = 600 & movecontact
trigger4 = command = "z"
trigger4 = stateno = 610 & movecontact
;trigger2 = stateno = 600 || stateno = 610
;trigger2 = movecontact
 
[State -1, Taunt]
type =SelfState
value = 14500
Triggerall = roundstate = 2 
Triggerall = command = "c"   
Trigger1 = StateNo = [5110,5120]
ignorehitpause = 0
 
[State -1, Taunt]
type =SelfState
value = 14500
triggerall = !var(35)
Triggerall = roundstate = 2
Triggerall = var(26)
Triggerall = command = "c"  
trigger1 = numhelper(1001)
Trigger1 = StateNo = [1000,1035] 
trigger1 = helper(1001), movehit
Trigger2 = StateNo = [1100,1120]  
trigger2 = movecontact
trigger3 = stateno = 1703 && time >= 20
trigger4 = stateno = 1401 && time >= 120
trigger5 = numhelper(1001)
trigger5 = stateno = [1500,1535] 
trigger5 = helper(1001), movehit
ignorehitpause = 0

; X ^   h    i     j
 
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;AI--------------------------------------------------------------------------

;AI Command Check
[State -1, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper
trigger1 = command = "AI_01" || command = "AI_02" || command = "AI_03" || command = "AI_04"
trigger2 = command = "AI_05" || command = "AI_06" || command = "AI_07" || command = "AI_08"
trigger3 = command = "AI_09" || command = "AI_10" || command = "AI_11" || command = "AI_12"
trigger4 = command = "AI_13" || command = "AI_14" || command = "AI_15" || command = "AI_16"
trigger5 = command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
Trigger6 = Command = "AI_21" || Command = "AI_22" || Command = "AI_23" || Command = "AI_24"
Trigger7 = Command = "AI_24" || Command = "AI_26" || Command = "AI_27" || Command = "AI_28"
Trigger8 = Command = "AI_29" || Command = "AI_30" || Command = "AI_31" || Command = "AI_32"
Trigger9 = Command = "AI_33" || Command = "AI_34" || Command = "AI_35" || Command = "AI_36"
Trigger10 = Command = "AI_37" || Command = "AI_38" || Command = "AI_39" || Command = "AI_40"
Trigger11 = Command = "AI_41" || Command = "AI_42" || Command = "AI_43" || Command = "AI_44"
Trigger12 = Command = "AI_45" || Command = "AI_46" || Command = "AI_47" || Command = "AI_48"
Trigger13 = Command = "AI_49" || Command = "AI_00"
;Trigger14 = 1;AI   N   X C b `
V = 59
Value = 1
IgnoreHitPause = 1

[State -1,  ]
type = ChangeState
value = 3200
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = power >= 2300
triggerall = statetype != A
triggerall = enemynear,moveType != A && !InGuardDist
triggerall = enemynear,stateType != A
triggerall = enemynear,stateType != L
triggerall = ctrl
trigger1 = p2life < 420 && life < 600
trigger2 = life < 620
trigger2 =  power >= 2600

[State -1,  i   ̐Ⓒ]
type = ChangeState
value = 3300
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = power >= 2300
triggerall = statetype != A
triggerall = P2Dist X < 100
triggerall = var(57) = 0
trigger1 = ctrl
trigger1 = enemynear,moveType = A && InGuardDist
trigger1 = life < 670

[State -1,    ԏ   ]
type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 250 || var(31)
triggerall = P2StateNo != 1230;   Ԕ єF  
triggerall = var(58) = 0
triggerall = ctrl
trigger1 = enemynear,moveType = A
trigger1 = p2bodydist X >0 && p2bodydist X < 100
trigger1 = random = [0,95]
trigger2 = var(57) = [2,160]
trigger2 = statetype = S
trigger3 = P2MoveType!=A && InGuardDist; ȈՔ ѓ   m
value = 1200

[State -1,        ǂ߂ cN]
type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = P2StateNo != 1230;   Ԕ єF  
triggerall = statetype != A && ctrl
triggerall = var(57) < 80
triggerall = var(57) > 0
trigger1 = enemynear,moveType = A
trigger1 = p2dist X >0 && p2dist X < 70
value = 752

[State -1,        ǂ߂ cB]
type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = var(57) > 130
triggerall = var(57) < -90
trigger1 = backedgedist > 100
trigger1 = statetype != A && ctrl
trigger1 = enemynear,moveType = A
trigger1 = p2dist X >0 && p2dist X < 70
value = 754

[State -1,        ǂ߂ cF]
type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = P2StateNo != 1230;   Ԕ єF  
triggerall = statetype != A && ctrl
trigger1 = P2MoveType!=A && InGuardDist; ȈՔ ѓ   m
trigger1 = p2dist X > 285
trigger2 = var(57) < 130
trigger2 = var(57) > -90
trigger2 = backedgedist < 100
trigger2 = statetype != A && ctrl
trigger2 = enemynear,moveType = A
trigger2 = p2dist X >0 && p2dist X < 70
trigger3 = power <= 250
trigger3 = var(57) = [2,160]
trigger3 = statetype = S
trigger3 = random = [0,60]
value = 750

[State -1,   ̖ڒׂ ]
type = ChangeState
value = 900
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = !var(25) || var(26)
triggerall = numhelper(1001) = 0 || stateno = [200,425]
triggerall = power >= 500
triggerall = statetype != A
Triggerall= EnemyNear,StateType != A
Triggerall= EnemyNear,StateType != L
triggerall = P2Dist X = [130,150] 
triggerall = ctrl
trigger1= EnemyNear,moveType = A
trigger1 = EnemyNear,vel x >! 0
trigger2 = EnemyNear,stateType = S
trigger2 = random = [0,60]
trigger2 = EnemyNear,vel x >! 0

[State -1,   ̖ڒׂ ]
type = ChangeState
value = 900
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = !var(25) || var(26)
triggerall = numhelper(1001) = 1
triggerall = helper(1001), stateno = 10120
triggerall = statetype != A
Triggerall= EnemyNear,StateType != A
Triggerall= EnemyNear,StateType != L
triggerall = P2Dist X = [130,150] 
triggerall = ctrl
trigger1= EnemyNear,moveType = A
trigger1 = EnemyNear,vel x >! 0
trigger2 = EnemyNear,stateType = S
trigger2 = random = [0,60]
trigger2 = EnemyNear,vel x >! 0

[State -1]
Type = ChangeState
Value = 120
TriggerAll = Ctrl
triggerall = !var(49)
TriggerAll = InGuardDist
triggerall = NumHelper(2) = 0
triggerall = var(26) = 0
Triggerall = var(59)>0
trigger1 = p2movetype = A
trigger1 = p2bodydist X >0 && p2bodydist X < 90
trigger2 = power <= 250
trigger2 = var(57) = [2,100]
ignorehitpause = 1

;---------------------------------------------------------------------------
; A h o   V   O i     j
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
triggerall = !var(30)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = P2BodyDist X = [-20,90]
triggerall = var(57) <= 0
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random = [0,350]
trigger1 = inguarddist
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
; A h o   V   O i   Ⴊ ݁j
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
triggerall = !var(30)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = P2BodyDist X = [-20,90]
triggerall = var(57) <= 0
triggerall = power >= 100
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random = [0,350]
trigger1 = inguarddist
value = 4105

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  b R   {;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[State -1,    Ⴊ ݎ ]
type = ChangeState
value = 400
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(58) = 0
triggerall = var(58) != 4
triggerall = p2stateno != [10425,10427]
Triggerall = p2statetype != L
triggerall = p2statetype != A
trigger1 = P2StateNo != 1230
trigger1 = p2statetype = C && p2statetype != A
trigger1 =  p2dist X >-15 && p2dist X <50
trigger1 = ctrl
trigger2 = P2StateNo = 1230;   Ԕ єF  
trigger2 =  p2dist X >-15 && p2dist X <50
trigger2 = ctrl
trigger3 = P2StateNo != 1230
trigger3 =  p2dist X >-15 && p2dist X <50
trigger3 = ctrl
trigger4 = stateno = 400 && time >= 6
trigger4 =  p2dist X >-15 && p2dist X <50
ignorehitpause = 1

[State -1,       ]
type = ChangeState
value = 200
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
Triggerall = p2statetype != L
triggerall = P2StateNo != 1230
Trigger1 = StateNo = 901 && animtime = 0
trigger1 =  p2dist X >-15 && p2dist X <60

[State -1,       ]
type = ChangeState
value = 210
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1= var(58) = 0
Trigger1 = StateNo = 200 && time >= 4
Trigger1 = Movecontact
trigger1 = p2movetype = H
trigger2 = var(58) = 0
Trigger2 = StateNo = 400 && time >= 4
Trigger2 = Movecontact
trigger2 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 220
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall =  p2dist X >0 && p2dist X <87
trigger1= var(58) = 0
Trigger1 = StateNo = 210 && time >= 7
Trigger1 = Movehit
Trigger1 = p2bodydist X <105
trigger1 = p2movetype = H

[State -1,Soff g h     b IL]
type = ChangeState
value = 1100
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1= var(58) = 0
Trigger1 = StateNo = 210 && time >= 7
Trigger1 = Moveguarded
trigger1 = p2movetype = H

[State -1,Soff g h     b IEX]
type = ChangeState
value = 115000
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = power >= 500 && !var(31)
triggerall = statetype != A
triggerall = p2life < 220
triggerall = p2life > 50
triggerall= var(58) = 0
triggerall= EnemyNear,time <= 30
Trigger1 = ctrl
trigger1 =  p2bodydist X >-5 && p2bodydist X <70
Trigger1 = p2statetype = L
trigger1 = p2stateno = 10427
Trigger2 = stateno = 20
trigger2 =  p2bodydist X >-5 && p2bodydist X <70
Trigger2 = p2statetype = L
trigger2 = p2stateno = 10427

[State -1,Soff g h     b IH]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall= var(58) = 0
triggerall= EnemyNear,time <= 30
Trigger1 = ctrl
trigger1 =  p2bodydist X >-5 && p2bodydist X <70
Trigger1 = p2statetype = L
trigger1 = p2stateno = 10427
Trigger2 = stateno = 20
trigger2 =  p2bodydist X >-5 && p2bodydist X <70
Trigger2 = p2statetype = L
trigger2 = p2stateno = 10427

[State -1,EX _ b V     p  ]
type = ChangeState
value = 1795
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = power >= 500
triggerall = statetype != A
trigger1 = random = [0,160]
Trigger1 = stateno = 1100 && animtime = 0
Trigger1 = Moveguarded
trigger1= EnemyNear,moveType != A

[State -1, _ b V     p  ]
type = ChangeState
value = 1790
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = statetype != A
trigger1 = random = [161,520]
Trigger1 = stateno = 1100 && animtime = 0
Trigger1 = Moveguarded
trigger1= EnemyNear,moveType != A

[State -1, _ b V     p  ]
type = ChangeState
value = 1790
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = statetype != A
trigger1 = StateNo = 420 && animtime = 0
trigger1 = movehit
trigger1 = p2dist Y =  [-150,-75]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     ܂łŊ {(       Ŏ  s);;;;;;;;;;;;;;;;;;;
; R   { P

[State -1,    ͍Ăэ  ݎn ߂ IM]
type = ChangeState
value = 1010
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall =  p2bodydist X >0 && p2bodydist X <150
triggerall =  p2dist X >0 && p2dist X <108
Trigger1 = StateNo = 220 && time >= 7
trigger1= var(58) = 1
Trigger1 = Movehit
trigger1 = p2movetype = H

[State -1,     ]
type = ChangeState
value = 100
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
Trigger1 = StateNo = 1015 && animtime = 0
trigger1= var(58) = 1
trigger1 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = p2statetype != L
trigger1 = var(58) = 1
trigger1 = stateno = 100 && animtime = 0
trigger1 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1= var(58) = 1
Trigger1 = StateNo = 200 && time >= 4
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,    Ⴊ ݋ ]
type = ChangeState
value = 420
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1 = statetype != A
trigger1= var(58) = 1
Trigger1 = StateNo = 210 && time >= 7
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,Soff g h     b IM]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1= var(58) = 1
Trigger1 = StateNo = 420 && time >= 7
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,Soff g h     b IEX]
type = ChangeState
value = 115000
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = power >= 500 && !var(31)
triggerall = statetype != A
trigger1 = p2life < 220
trigger1 = p2life > 50
trigger1= var(58) = 1
Trigger1 = StateNo = 1100 && animtime = 0 
Trigger1 = MoveHit

[State -1,Soff g h     b IH]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1= var(58) = 1
Trigger1 = StateNo = 1100 && animtime = 0 
Trigger1 = MoveHit

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; R   { Q i Q [ W    j

[State -1,    ͍Ăэ  ݎn ߂ IM]
type = ChangeState
value = 1010
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall =  p2bodydist X >0 && p2bodydist X <150
triggerall =  p2dist X >0 && p2dist X <108
trigger1= var(58) = 2
Trigger1 = StateNo = 220 && time >= 13
Trigger1 = Movecontact
trigger1 = p2movetype = H
trigger2= var(58) = 3
Trigger2 = StateNo = 420 && time >= 7
Trigger2 = MoveHit
trigger2 = p2movetype = H
trigger3 = var(58) = 6
Trigger3 = StateNo = 420 && time >= 7
Trigger3 = MoveHit
trigger3 = p2movetype = H

[State -1, _ b V     p  ]
type = ChangeState
value = 1790
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
Triggerall = StateNo = 1015 && animtime = 0
triggerall = statetype != A
triggerall = p2movetype = H
trigger1= var(58) = 6

[State -1,     ]
type = ChangeState
value = 100
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
Triggerall = StateNo = 1015 && animtime = 0
triggerall = statetype != A
triggerall = p2movetype = H
trigger1= var(58) = 2
trigger2= var(58) = 3

[State -1, D   Ⴊ ݒ ]
type = ChangeState
value = 415
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = statetype != A
trigger1= var(58) = 3
Trigger1 = StateNo = 100 && time > 4
trigger1 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = p2statetype != L
trigger1 = var(58) = 2
trigger1 = stateno = 100 && animtime = 0
trigger1 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1 = var(58) = 2
Trigger1 = StateNo = 200 && time >= 4
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,    Ⴊ ݋ ]
type = ChangeState
value = 420
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1 = statetype != A
trigger1= var(58) = 2
Trigger1 = StateNo = 210 && time >= 7
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,Soff g h     b IEX]
type = ChangeState
value = 115000
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = power >= 500 && !var(31)
triggerall = statetype != A
triggerall = var(58) = 4
trigger1 = p2life < 220
trigger1 = p2life > 50
trigger1 = ctrl
Trigger1 = p2statetype = L
trigger1 = p2stateno = 10427

[State -1,Soff g h     b IH]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = var(58) = 4
trigger1 = ctrl
Trigger1 = p2statetype = L
trigger1 = p2stateno = 10427
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; R   {3 i t   Ō  ܂ ΍  ΉA Q [ W    ʂ D G j
[State -1,    ͍Ăэ  ݎn ߂ IM]
type = ChangeState
value = 1010
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall =  p2bodydist X >0 && p2bodydist X <140
triggerall =  p2dist X >0 && p2dist X <108
Trigger1 = StateNo = 220 
trigger1= var(58) = 5
Trigger1 = Movehit
trigger1 = p2movetype = H

[State -1,     ]
type = ChangeState
value = 100
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
Trigger1 = StateNo = 1015 && animtime = 0
trigger1= var(58) = 5
trigger1 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = p2statetype != L
trigger1 = var(58) = 5
trigger1 = stateno = 100 && animtime = 0
trigger1 = p2movetype = H

[State -1,       ]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1= var(58) = 5
Trigger1 = StateNo = 200 && time >= 4
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,    Ⴊ ݋ ]
type = ChangeState
value = 420
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
trigger1 = statetype != A
trigger1= var(58) = 5
Trigger1 = StateNo = 210 && time >= 7
Trigger1 = MoveHit
trigger1 = p2movetype = H

[State -1,     ǂ     I]
type = ChangeState
value = 1400
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = statetype != A
trigger1 = P2bodyDist X = [0,72]
trigger1 = statetype != A
trigger1= var(58) = 5
Trigger1 = StateNo = 420 && time >= 7

[State -1,Soff g h     b IEX]
type = ChangeState
value = 115000
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = power >= 500 && !var(31)
triggerall = statetype != A
trigger1 = ctrl
trigger1 =  p2bodydist X >-5 && p2bodydist X <70
trigger1 = p2life < 220
trigger1 = p2life > 50
trigger1= var(58) = 5
Trigger1 = p2statetype = L
trigger1 = p2stateno = 10427

[State -1,Soff g h     b IH]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = var(58) = 5
trigger1 = ctrl
trigger1 =  p2bodydist X >-5 && p2bodydist X <70
Trigger1 = p2statetype = L
trigger1 = p2stateno = 10427
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; P   W?

[State -1,     ]
type = ChangeState
value = 800
triggerall = var(59) = 1 && RoundState = 2
triggerall = !var(49)
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
TriggerAll= EnemyNear,StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype != A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random = [0,333]
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random = [0,333]
trigger3 = enemynear,animtime <= -10
trigger3 = random = [0,333]
trigger4 = p2dist X >-15 && p2dist X <30
trigger4 = stateno = 20

[State -1, _ b V     p  ]
type = ChangeState
value = 1790
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = statetype != A
trigger1 = StateNo = 420 && animtime = 0
trigger1 = movehit
trigger1 = p2dist Y =  [-150,-75]

[State -1,    Ⴊ ݋ ]
type = ChangeState
value = 420
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = var(58) = 0
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2stateno != [10425,10427]
triggerall = ctrl
trigger1 = enemynear,vel X <=! 6
trigger1 = P2Dist X = [0,55]
trigger1 = p2dist Y =  [-150,-40]
trigger1 = p2statetype != L

[State -1,  W     v  ]
type = ChangeState
value = 610
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = var(58) = 0
triggerall = ctrl
triggerall = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -45
trigger1 = P2Dist X = [0,45]

[State -1,  W     v  ]
type = ChangeState
value = 620
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = var(58) = 0
triggerall = P2StateNo != 1230;   Ԕ єF  
triggerall = ctrl
trigger1 = statetype = A
trigger1 = P2Dist X = [0,110]
trigger1 = P2Dist y = [-25,25]

[State -1,  W     v]
type = ChangeState
value = 40
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(58) = 0
triggerall = enemynear,vel x <! 0
triggerall = ctrl
trigger1 = P2StateNo != 1230;   Ԕ єF  
Trigger1 = EnemyNear,MoveType != A
trigger1 = P2Dist X = [145,160] 
trigger1 = enemynear,statetype != L
trigger1 = p2stateno != [10425,10427]
trigger2 = P2StateNo = 1230;   Ԕ єF  
trigger2 = P2Dist X = [145,190] 

[State -1, walk]
type = ChangeState
value = 20
triggerall = var(59)>0 && roundstate = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2dist X > 38
triggerall = ctrl
trigger1 = stateno = 10
trigger1 = enemynear,statetype = L
trigger2 = stateno = 10
trigger3 = stateno = 40
trigger3 = enemynear,statetype = L
trigger4 = stateno = 40
trigger5 = stateno = 0