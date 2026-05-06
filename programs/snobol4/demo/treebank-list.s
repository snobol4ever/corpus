# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-4)
# 591 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
	.intel_syntax noprefix
# Include SM opcode macro library (one macro per opcode group)
# .include "sm_macros.s"  # assembled separately; macros used by name below
	.text
	.globl  main
	.type   main, @function
main:
	push    rbp
	mov     rbp, rsp
	# scrip_rt_init(argc, argv) -- argc in edi, argv in rsi
	call    scrip_rt_init@PLT
# source-file: /home/claude/corpus/programs/snobol4/demo/treebank-list.sno  (147 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 1                      #  SM_STNO stno=1 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc1:                  
                        movabs  rdi, 10                     
                        call    scrip_rt_push_int@PLT       
.Lpc2:                  
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc3:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc4:                  
# -- BB box scaffold pc=4 op=SM_PAT_LEN --
# proc .bb_box_4
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 31                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc5:                  
# -- BB box scaffold pc=5 op=SM_PAT_CAPTURE --
# proc .bb_box_5
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc6:                  
# -- BB box scaffold pc=6 op=SM_PAT_CAT --
# proc .bb_box_6
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc7:                  
                        movabs  rdi, 405502368              #  var=ALPHABET
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * treebank-list.sno — Penn Treebank s-expression parser (LISP-style)
# ============================================================================
                        mov     edi, 2                      #  SM_STNO stno=2 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc11:                 
                        movabs  rdi, 405502400              #  str="list(head,tail)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc13:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc14:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
                        mov     edi, 3                      #  SM_STNO stno=3 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc15:                 
                        movabs  rdi, 405502464              #  str="list_reverse(lst)acc,cur"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc16:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc17:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc18:                 
                        jmp     .Lpc48                      #  SM_JUMP -> pc=48
.Lpc19:                 
.Lpc20:                 

# ============================================================================
# stmt 4  (line 11):  list_reverse   acc            =
# ============================================================================
                        mov     edi, 4                      #  SM_STNO stno=4 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc21:                 
                        movabs  rdi, 405502640              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc22:                 
                        movabs  rdi, 405502672              #  store -> acc
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc23:                 

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 5                      #  SM_STNO stno=5 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc24:                 
                        movabs  rdi, 405502704              #  var=lst
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc25:                 
                        movabs  rdi, 405502736              #  store -> cur
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc26:                 
.Lpc27:                 

# ============================================================================
# stmt 6  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
                        mov     edi, 6                      #  SM_STNO stno=6 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc28:                 
                        movabs  rdi, 405502832              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc29:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc30:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc31:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc43                       #  SM_JUMP_F -> pc=43
.Lpc32:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 7                      #  SM_STNO stno=7 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc33:                 
                        movabs  rdi, 405502928              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc34:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc35:                 
                        movabs  rdi, 405502992              #  var=acc
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc36:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc37:                 
                        movabs  rdi, 405503056              #  store -> acc
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc38:                 

# ============================================================================
# stmt 8  (line 8):                 DATA('list(head,tail)')
# ============================================================================
                        mov     edi, 8                      #  SM_STNO stno=8 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc39:                 
                        movabs  rdi, 405503088              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc40:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc41:                 
                        movabs  rdi, 405503152              #  store -> cur
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc42:                 
                        jmp     .Lpc26                      #  SM_JUMP -> pc=26
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 9  (line 16):  lr_done        list_reverse   =  acc                        :(RETURN)
# ============================================================================
                        mov     edi, 9                      #  SM_STNO stno=9 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc45:                 
                        movabs  rdi, 405503248              #  var=acc
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc46:                 
                        movabs  rdi, 405503280              #  store -> list_reverse
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc47:                 
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc48:                 
.Lpc49:                 

# ============================================================================
# stmt 10  (line 18):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 10                     #  SM_STNO stno=10 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc50:                 

# ============================================================================
# stmt 11  (line 11):  list_reverse   acc            =
# ============================================================================
                        mov     edi, 11                     #  SM_STNO stno=11 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc51:                 
                        movabs  rdi, 405503376              #  str="stk_push_frame(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc52:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc53:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc54:                 
                        jmp     .Lpc68                      #  SM_JUMP -> pc=68
.Lpc55:                 
.Lpc56:                 

# ============================================================================
# stmt 12  (line 20):  stk_push_frame stk            =  list(list(v,), stk)
# ============================================================================
                        mov     edi, 12                     #  SM_STNO stno=12 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc57:                 
                        movabs  rdi, 405503536              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc58:                 
                        mov     edi, 9                      # SM_PUSH_NULL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc59:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc60:                 
                        movabs  rdi, 405503600              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc61:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        movabs  rdi, 405503664              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc63:                 

# ============================================================================
# stmt 13  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
                        mov     edi, 13                     #  SM_STNO stno=13 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc64:                 
                        movabs  rdi, 405498704              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc65:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc66:                 
                        movabs  rdi, 405498768              #  store -> stk_push_frame
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc67:                 
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc68:                 
.Lpc69:                 

# ============================================================================
# stmt 14  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 14                     #  SM_STNO stno=14 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc70:                 

# ============================================================================
# stmt 15  (line 15):                 cur            =  tail(cur)                  :(lr1)
# ============================================================================
                        mov     edi, 15                     #  SM_STNO stno=15 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc71:                 
                        movabs  rdi, 405498864              #  str="stk_push_item(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc72:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc73:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc74:                 
                        jmp     .Lpc88                      #  SM_JUMP -> pc=88
.Lpc75:                 
.Lpc76:                 

# ============================================================================
# stmt 16  (line 25):  stk_push_item  head(stk)      =  list(v, head(stk))
# ============================================================================
                        mov     edi, 16                     #  SM_STNO stno=16 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc77:                 
                        movabs  rdi, 405499024              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc78:                 
                        movabs  rdi, 405499056              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc79:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc80:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc81:                 
                        movabs  rdi, 405499152              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc82:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc83:                 

# ============================================================================
# stmt 17  (line 17):  list_reverse_end
# ============================================================================
                        mov     edi, 17                     #  SM_STNO stno=17 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc84:                 
                        movabs  rdi, 405499216              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc85:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc86:                 
                        movabs  rdi, 405499280              #  store -> stk_push_item
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc87:                 
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
.Lpc89:                 

# ============================================================================
# stmt 18  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 18                     #  SM_STNO stno=18 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc90:                 

# ============================================================================
# stmt 19  (line 19):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
# ============================================================================
                        mov     edi, 19                     #  SM_STNO stno=19 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc91:                 
                        movabs  rdi, 405499376              #  str="stk_pop_into_parent()child"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc92:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc93:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc94:                 
                        jmp     .Lpc118                     #  SM_JUMP -> pc=118
.Lpc95:                 
.Lpc96:                 

# ============================================================================
# stmt 20  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
                        mov     edi, 20                     #  SM_STNO stno=20 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc97:                 

# ============================================================================
# stmt 21  (line 21):                 stk_push_frame =  .dummy                     :(RETURN)
# ============================================================================
                        mov     edi, 21                     #  SM_STNO stno=21 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc98:                 
                        movabs  rdi, 405499552              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc99:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc100:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc101:                
                        movabs  rdi, 405499648              #  store -> child
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc102:                

# ============================================================================
# stmt 22  (line 22):  stk_push_frame_end
# ============================================================================
                        mov     edi, 22                     #  SM_STNO stno=22 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc103:                
                        movabs  rdi, 405499680              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc104:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc105:                
                        movabs  rdi, 405499744              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc106:                

# ============================================================================
# stmt 23  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 23                     #  SM_STNO stno=23 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc107:                
                        movabs  rdi, 405499776              #  var=child
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc108:                
                        movabs  rdi, 405499808              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc109:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc110:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc111:                
                        movabs  rdi, 405499904              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc112:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc113:                

# ============================================================================
# stmt 24  (line 24):                 DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
# ============================================================================
                        mov     edi, 24                     #  SM_STNO stno=24 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc114:                
                        movabs  rdi, 405499968              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc115:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc116:                
                        movabs  rdi, 405500032              #  store -> stk_pop_into_parent
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc117:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc118:                
.Lpc119:                

# ============================================================================
# stmt 25  (line 36):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 25                     #  SM_STNO stno=25 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc120:                

# ============================================================================
# stmt 26  (line 26):                 stk_push_item  =  .dummy                     :(RETURN)
# ============================================================================
                        mov     edi, 26                     #  SM_STNO stno=26 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc121:                
                        movabs  rdi, 405500128              #  str="stk_pop_final(var)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc122:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc123:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc124:                
                        jmp     .Lpc141                     #  SM_JUMP -> pc=141
.Lpc125:                
.Lpc126:                

# ============================================================================
# stmt 27  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
                        mov     edi, 27                     #  SM_STNO stno=27 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc127:                
                        movabs  rdi, 405500288              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc128:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc129:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc130:                
                        movabs  rdi, 405500384              #  var=var
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc131:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc132:                

# ============================================================================
# stmt 28  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 28                     #  SM_STNO stno=28 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc133:                
                        movabs  rdi, 405500448              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc134:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        movabs  rdi, 405500512              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc136:                

# ============================================================================
# stmt 29  (line 29):                 DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
# ============================================================================
                        mov     edi, 29                     #  SM_STNO stno=29 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc137:                
                        movabs  rdi, 405500544              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc138:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc139:                
                        movabs  rdi, 405500608              #  store -> stk_pop_final
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc140:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc141:                
.Lpc142:                

# ============================================================================
# stmt 30  (line 42):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 30                     #  SM_STNO stno=30 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc143:                

# ============================================================================
# stmt 31  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
                        mov     edi, 31                     #  SM_STNO stno=31 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc144:                
                        movabs  rdi, 405500704              #  str="init_list(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc145:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc146:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc147:                

# ============================================================================
# stmt 32  (line 32):                 stk            =  tail(stk)
# ============================================================================
                        mov     edi, 32                     #  SM_STNO stno=32 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc148:                
                        movabs  rdi, 405511904              #  str="Init_list(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc149:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc150:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc151:                
                        jmp     .Lpc175                     #  SM_JUMP -> pc=175
.Lpc152:                
.Lpc153:                

# ============================================================================
# stmt 33  (line 45):  init_list      $v             =
# ============================================================================
                        mov     edi, 33                     #  SM_STNO stno=33 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc154:                
                        movabs  rdi, 405512064              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc155:                
                        movabs  rdi, 405512096              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc156:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc157:                

# ============================================================================
# stmt 34  (line 34):                 stk_pop_into_parent =  .dummy                :(RETURN)
# ============================================================================
                        mov     edi, 34                     #  SM_STNO stno=34 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc158:                
                        movabs  rdi, 405512160              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc159:                
                        movabs  rdi, 405512192              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc160:                

# ============================================================================
# stmt 35  (line 35):  stk_pop_into_parent_end
# ============================================================================
                        mov     edi, 35                     #  SM_STNO stno=35 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc161:                
                        movabs  rdi, 405512224              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc162:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc163:                
                        movabs  rdi, 405512288              #  store -> init_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc164:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
.Lpc166:                

# ============================================================================
# stmt 36  (line 48):  Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
# ============================================================================
                        mov     edi, 36                     #  SM_STNO stno=36 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc167:                
                        movabs  rdi, 405512384              #  str="epsilon . *init_list("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc168:                
                        movabs  rdi, 405512416              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc169:                
                        movabs  rdi, 405512448              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc170:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc171:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc173:                
                        movabs  rdi, 405512512              #  store -> Init_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc174:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc175:                
.Lpc176:                

# ============================================================================
# stmt 37  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 37                     #  SM_STNO stno=37 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc177:                

# ============================================================================
# stmt 38  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
                        mov     edi, 38                     #  SM_STNO stno=38 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc178:                
                        movabs  rdi, 405512608              #  str="push_list(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc179:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc181:                

# ============================================================================
# stmt 39  (line 39):                 stk            =  tail(stk)
# ============================================================================
                        mov     edi, 39                     #  SM_STNO stno=39 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc182:                
                        movabs  rdi, 405512672              #  str="Push_list(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc184:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc185:                
                        jmp     .Lpc206                     #  SM_JUMP -> pc=206
.Lpc186:                
.Lpc187:                

# ============================================================================
# stmt 40  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
                        mov     edi, 40                     #  SM_STNO stno=40 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc188:                
                        movabs  rdi, 405512832              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc189:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc190:                
                        movabs  rdi, 405512896              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc191:                

# ============================================================================
# stmt 41  (line 41):  stk_pop_final_end
# ============================================================================
                        mov     edi, 41                     #  SM_STNO stno=41 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc192:                
                        movabs  rdi, 405512928              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc193:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc194:                
                        movabs  rdi, 405512992              #  store -> push_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc195:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc196:                
.Lpc197:                

# ============================================================================
# stmt 42  (line 55):  Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
# ============================================================================
                        mov     edi, 42                     #  SM_STNO stno=42 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc198:                
                        movabs  rdi, 405513088              #  str="epsilon . *push_list("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc199:                
                        movabs  rdi, 405513120              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc200:                
                        movabs  rdi, 405513152              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc201:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc202:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc204:                
                        movabs  rdi, 405513216              #  store -> Push_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc205:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc206:                
.Lpc207:                

# ============================================================================
# stmt 43  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 43                     #  SM_STNO stno=43 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc208:                

# ============================================================================
# stmt 44  (line 44):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
                        mov     edi, 44                     #  SM_STNO stno=44 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc209:                
                        movabs  rdi, 405513312              #  str="push_item(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc210:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc211:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc212:                

# ============================================================================
# stmt 45  (line 45):  init_list      $v             =
# ============================================================================
                        mov     edi, 45                     #  SM_STNO stno=45 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc213:                
                        movabs  rdi, 405513376              #  str="Push_item(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc214:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc215:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc216:                
                        jmp     .Lpc237                     #  SM_JUMP -> pc=237
.Lpc217:                
.Lpc218:                

# ============================================================================
# stmt 46  (line 60):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
                        mov     edi, 46                     #  SM_STNO stno=46 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc219:                
                        movabs  rdi, 405513536              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc220:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc221:                
                        movabs  rdi, 405575424              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc222:                

# ============================================================================
# stmt 47  (line 47):                 init_list      =  .dummy                     :(NRETURN)
# ============================================================================
                        mov     edi, 47                     #  SM_STNO stno=47 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc223:                
                        movabs  rdi, 405575456              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc224:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc225:                
                        movabs  rdi, 405575520              #  store -> push_item
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc226:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc227:                
.Lpc228:                

# ============================================================================
# stmt 48  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
                        mov     edi, 48                     #  SM_STNO stno=48 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc229:                
                        movabs  rdi, 405575616              #  str="epsilon . *push_item("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc230:                
                        movabs  rdi, 405575648              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc231:                
                        movabs  rdi, 405575680              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc232:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc233:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc234:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc235:                
                        movabs  rdi, 405575744              #  store -> Push_item
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc236:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc237:                
.Lpc238:                

# ============================================================================
# stmt 49  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 49                     #  SM_STNO stno=49 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc239:                

# ============================================================================
# stmt 50  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 50                     #  SM_STNO stno=50 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc240:                
                        movabs  rdi, 405575840              #  str="pop_list()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc242:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc243:                

# ============================================================================
# stmt 51  (line 51):                 DEFINE('push_list(v)')
# ============================================================================
                        mov     edi, 51                     #  SM_STNO stno=51 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc244:                
                        movabs  rdi, 405575904              #  str="Pop_list()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc245:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc246:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc247:                
                        jmp     .Lpc265                     #  SM_JUMP -> pc=265
.Lpc248:                
.Lpc249:                

# ============================================================================
# stmt 52  (line 67):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
                        mov     edi, 52                     #  SM_STNO stno=52 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc250:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc251:                
                        movabs  rdi, 405576096              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc252:                

# ============================================================================
# stmt 53  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
                        mov     edi, 53                     #  SM_STNO stno=53 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc253:                
                        movabs  rdi, 405576128              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc255:                
                        movabs  rdi, 405576192              #  store -> pop_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc256:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
.Lpc258:                

# ============================================================================
# stmt 54  (line 69):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
                        mov     edi, 54                     #  SM_STNO stno=54 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc259:                
                        movabs  rdi, 405503760              #  var=epsilon
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc260:                
# -- BB box scaffold pc=260 op=SM_PAT_DEREF --
# proc .bb_box_260
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc262:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc263:                
                        movabs  rdi, 405503824              #  store -> Pop_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc264:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc265:                
.Lpc266:                

# ============================================================================
# stmt 55  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 55                     #  SM_STNO stno=55 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc267:                

# ============================================================================
# stmt 56  (line 56):  push_list_end
# ============================================================================
                        mov     edi, 56                     #  SM_STNO stno=56 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc268:                
                        movabs  rdi, 405503920              #  str="pop_final(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc269:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc270:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc271:                

# ============================================================================
# stmt 57  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 57                     #  SM_STNO stno=57 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc272:                
                        movabs  rdi, 405503984              #  str="Pop_final(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc273:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc274:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc275:                
                        jmp     .Lpc296                     #  SM_JUMP -> pc=296
.Lpc276:                
.Lpc277:                

# ============================================================================
# stmt 58  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
                        mov     edi, 58                     #  SM_STNO stno=58 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc278:                
                        movabs  rdi, 405504144              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc279:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc280:                
                        movabs  rdi, 405504208              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc281:                

# ============================================================================
# stmt 59  (line 59):                 DEFINE('Push_item(vs)')                      :(push_item_end)
# ============================================================================
                        mov     edi, 59                     #  SM_STNO stno=59 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc282:                
                        movabs  rdi, 405504240              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc283:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc284:                
                        movabs  rdi, 405504304              #  store -> pop_final
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc285:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc286:                
.Lpc287:                

# ============================================================================
# stmt 60  (line 76):  Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
# ============================================================================
                        mov     edi, 60                     #  SM_STNO stno=60 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc288:                
                        movabs  rdi, 405504400              #  str="epsilon . *pop_final("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc289:                
                        movabs  rdi, 405504432              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc290:                
                        movabs  rdi, 405504464              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc291:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc292:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc293:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc294:                
                        movabs  rdi, 405504528              #  store -> Pop_final
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc295:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc296:                
.Lpc297:                

# ============================================================================
# stmt 61  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 61                     #  SM_STNO stno=61 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc298:                

# ============================================================================
# stmt 62  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
                        mov     edi, 62                     #  SM_STNO stno=62 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc299:                
                        movabs  rdi, 405504624              #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc300:                
                        movabs  rdi, 405504656              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc301:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc302:                
# -- BB box scaffold pc=302 op=SM_PAT_SPAN --
# proc .bb_box_302
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc303:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc304:                
                        movabs  rdi, 405504688              #  store -> delim
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc305:                

# ============================================================================
# stmt 63  (line 63):  push_item_end
# ============================================================================
                        mov     edi, 63                     #  SM_STNO stno=63 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc306:                
                        movabs  rdi, 405504720              #  str="( )"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc307:                
                        movabs  rdi, 405504752              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc308:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc309:                
# -- BB box scaffold pc=309 op=SM_PAT_NOTANY --
# proc .bb_box_309
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 28                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc311:                
                        movabs  rdi, 405504784              #  str="( )"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc312:                
                        movabs  rdi, 405504816              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc313:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc314:                
# -- BB box scaffold pc=314 op=SM_PAT_BREAK --
# proc .bb_box_314
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 30                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc315:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc316:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc317:                
                        movabs  rdi, 405504848              #  store -> word
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc318:                

# ============================================================================
# stmt 64  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 64                     #  SM_STNO stno=64 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc319:                
                        movabs  rdi, 405504880              #  str="("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc320:                
                        movabs  rdi, 405504912              #  var=word
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc321:                
# -- BB box scaffold pc=321 op=SM_PAT_DEREF --
# proc .bb_box_321
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc322:                
# -- BB box scaffold pc=322 op=SM_PAT_CAPTURE --
# proc .bb_box_322
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc323:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        movabs  rdi, 405504976              #  str="tag"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc325:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc326:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc327:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc328:                
                        movabs  rdi, 405505104              #  var=word
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc329:                
# -- BB box scaffold pc=329 op=SM_PAT_DEREF --
# proc .bb_box_329
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc330:                
# -- BB box scaffold pc=330 op=SM_PAT_CAPTURE --
# proc .bb_box_330
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc331:                
                        movabs  rdi, 405505168              #  str="wrd"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc332:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc333:                
# -- BB box scaffold pc=333 op=SM_PAT_DEREF --
# proc .bb_box_333
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
# -- BB box scaffold pc=334 op=SM_PAT_CAT --
# proc .bb_box_334
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc335:                
# -- BB box scaffold pc=335 op=SM_PAT_ALT --
# proc .bb_box_335
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc336:                
# -- BB box scaffold pc=336 op=SM_PAT_CAT --
# proc .bb_box_336
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc337:                
# -- BB box scaffold pc=337 op=SM_PAT_ARBNO --
# proc .bb_box_337
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc339:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc340:                
                        movabs  rdi, 405505264              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc341:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc342:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc343:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc344:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc345:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc346:                
                        movabs  rdi, 405505296              #  store -> group
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc347:                

# ============================================================================
# stmt 65  (line 65):                 DEFINE('pop_list()')
# ============================================================================
                        mov     edi, 65                     #  SM_STNO stno=65 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc348:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc349:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc350:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc351:                
                        movabs  rdi, 405506368              #  str="'bank'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc352:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc353:                
                        movabs  rdi, 405506432              #  str="'BANK'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc354:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc355:                
                        movabs  rdi, 405506496              #  str="'ROOT'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc356:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc357:                
# -- BB box scaffold pc=357 op=SM_PAT_DEREF --
# proc .bb_box_357
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc358:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc359:                
# -- BB box scaffold pc=359 op=SM_PAT_ARBNO --
# proc .bb_box_359
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc360:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc361:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc362:                
# -- BB box scaffold pc=362 op=SM_PAT_DEREF --
# proc .bb_box_362
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc363:                
# -- BB box scaffold pc=363 op=SM_PAT_CAT --
# proc .bb_box_363
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc364:                
# -- BB box scaffold pc=364 op=SM_PAT_CAT --
# proc .bb_box_364
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc365:                
# -- BB box scaffold pc=365 op=SM_PAT_CAT --
# proc .bb_box_365
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc366:                
# -- BB box scaffold pc=366 op=SM_PAT_ARBNO --
# proc .bb_box_366
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc367:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc368:                
                        movabs  rdi, 405506656              #  str="'bank'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc369:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc370:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc371:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc372:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc373:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc374:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc375:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc376:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc377:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        movabs  rdi, 405506720              #  store -> treebank
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc379:                

# ============================================================================
# stmt 66  (line 66):                 DEFINE('Pop_list()')                         :(pop_list_end)
# ============================================================================
                        mov     edi, 66                     #  SM_STNO stno=66 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc380:                
                        movabs  rdi, 405506752              #  str="node_repr(node)r,c,sep"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc381:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc382:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc383:                
                        jmp     .Lpc443                     #  SM_JUMP -> pc=443
.Lpc384:                
.Lpc385:                

# ============================================================================
# stmt 67  (line 108):  node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
# ============================================================================
                        mov     edi, 67                     #  SM_STNO stno=67 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc386:                
                        movabs  rdi, 405506912              #  var=node
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc387:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc388:                
                        movabs  rdi, 405506976              #  var=LCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc389:                
                        movabs  rdi, 405507008              #  var=UCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc390:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc391:                
                        movabs  rdi, 405507072              #  str="STRING"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc392:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc393:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc394:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc403                      #  SM_JUMP_F -> pc=403
.Lpc395:                

# ============================================================================
# stmt 68  (line 68):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
                        mov     edi, 68                     #  SM_STNO stno=68 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc396:                
                        movabs  rdi, 405507168              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc397:                
                        movabs  rdi, 405507200              #  var=node
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc398:                
                        movabs  rdi, 405507232              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc399:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc400:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc401:                
                        movabs  rdi, 405507264              #  store -> node_repr
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc402:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc403:                
.Lpc404:                

# ============================================================================
# stmt 69  (line 110):  nr_list        r              =  '('
# ============================================================================
                        mov     edi, 69                     #  SM_STNO stno=69 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc405:                
                        movabs  rdi, 405507360              #  str="("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc406:                
                        movabs  rdi, 405507392              #  store -> r
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc407:                

# ============================================================================
# stmt 70  (line 70):  pop_list_end
# ============================================================================
                        mov     edi, 70                     #  SM_STNO stno=70 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc408:                
                        movabs  rdi, 405507424              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc409:                
                        movabs  rdi, 405507456              #  store -> sep
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc410:                

# ============================================================================
# stmt 71  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 71                     #  SM_STNO stno=71 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc411:                
                        movabs  rdi, 405507488              #  var=node
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc412:                
                        movabs  rdi, 405507520              #  store -> c
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc413:                
.Lpc414:                

# ============================================================================
# stmt 72  (line 113):  nr_lp          DIFFER(c)                                    :F(nr_done)
# ============================================================================
                        mov     edi, 72                     #  SM_STNO stno=72 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc415:                
                        movabs  rdi, 405507616              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc416:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc417:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc418:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc436                      #  SM_JUMP_F -> pc=436
.Lpc419:                

# ============================================================================
# stmt 73  (line 73):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
# ============================================================================
                        mov     edi, 73                     #  SM_STNO stno=73 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc420:                
                        movabs  rdi, 405507712              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc421:                
                        movabs  rdi, 405507744              #  var=sep
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc422:                
                        movabs  rdi, 405507776              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc423:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc424:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc425:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc426:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc427:                
                        movabs  rdi, 405507872              #  store -> r
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc428:                

# ============================================================================
# stmt 74  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
                        mov     edi, 74                     #  SM_STNO stno=74 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc429:                
                        movabs  rdi, 405507904              #  str=", "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc430:                
                        movabs  rdi, 405507936              #  store -> sep
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc431:                

# ============================================================================
# stmt 75  (line 75):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
                        mov     edi, 75                     #  SM_STNO stno=75 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc432:                
                        movabs  rdi, 405507968              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc433:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc434:                
                        movabs  rdi, 405508032              #  store -> c
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc435:                
                        jmp     .Lpc413                     #  SM_JUMP -> pc=413
.Lpc436:                
.Lpc437:                

# ============================================================================
# stmt 76  (line 117):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
                        mov     edi, 76                     #  SM_STNO stno=76 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc438:                
                        movabs  rdi, 405508128              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc439:                
                        movabs  rdi, 405508160              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc440:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc441:                
                        movabs  rdi, 405508192              #  store -> node_repr
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc442:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc443:                
.Lpc444:                

# ============================================================================
# stmt 77  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 77                     #  SM_STNO stno=77 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc445:                

# ============================================================================
# stmt 78  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 78                     #  SM_STNO stno=78 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc446:                
                        movabs  rdi, 405508288              #  str="pp_node(node,indent,suffix)r,pad,c,nxt"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc447:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc448:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc449:                
                        jmp     .Lpc538                     #  SM_JUMP -> pc=538
.Lpc450:                
.Lpc451:                

# ============================================================================
# stmt 79  (line 121):  pp_node        r              =  node_repr(node)
# ============================================================================
                        mov     edi, 79                     #  SM_STNO stno=79 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc452:                
                        movabs  rdi, 405508464              #  var=node
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc453:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc454:                
                        movabs  rdi, 405508528              #  store -> r
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc455:                

# ============================================================================
# stmt 80  (line 80):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
# ============================================================================
                        mov     edi, 80                     #  SM_STNO stno=80 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc456:                
                        movabs  rdi, 405508560              #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc457:                
                        movabs  rdi, 405508592              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc458:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc459:                
                        movabs  rdi, 405508656              #  store -> pad
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc460:                

# ============================================================================
# stmt 81  (line 81):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 81                     #  SM_STNO stno=81 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc461:                
                        movabs  rdi, 80                     
                        call    scrip_rt_push_int@PLT       
.Lpc462:                
                        movabs  rdi, 405508688              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc463:                
                        movabs  rdi, 405508720              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc464:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc465:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc466:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc467:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc468:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc477                      #  SM_JUMP_F -> pc=477
.Lpc469:                

# ============================================================================
# stmt 82  (line 82):                 group          =
# ============================================================================
                        mov     edi, 82                     #  SM_STNO stno=82 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc470:                
                        movabs  rdi, 405508848              #  var=pad
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc471:                
                        movabs  rdi, 405508880              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc472:                
                        movabs  rdi, 405508912              #  var=suffix
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc473:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc475:                
                        movabs  rdi, 405508944              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc476:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc477:                
.Lpc478:                

# ============================================================================
# stmt 83  (line 125):  pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
# ============================================================================
                        mov     edi, 83                     #  SM_STNO stno=83 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc479:                
                        movabs  rdi, 405509040              #  var=pad
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc480:                
                        movabs  rdi, 405509072              #  str="( "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc481:                
                        movabs  rdi, 405509104              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc482:                
                        movabs  rdi, 405509136              #  var=node
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc483:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc484:                
                        movabs  rdi, 405509200              #  str="',"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc485:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc487:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc489:                
                        movabs  rdi, 405509232              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc490:                

# ============================================================================
# stmt 84  (line 84):  +              (word . tag) Push_list('tag')
# ============================================================================
                        mov     edi, 84                     #  SM_STNO stno=84 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc491:                
                        movabs  rdi, 405509264              #  var=node
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc492:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc493:                
                        movabs  rdi, 405509328              #  store -> c
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc494:                
.Lpc495:                

# ============================================================================
# stmt 85  (line 127):  pp_wch         DIFFER(c)                                    :F(pp_wdone)
# ============================================================================
                        mov     edi, 85                     #  SM_STNO stno=85 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc496:                
                        movabs  rdi, 405509424              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc497:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc498:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc499:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc535                      #  SM_JUMP_F -> pc=535
.Lpc500:                

# ============================================================================
# stmt 86  (line 86):  +                  *delim
# ============================================================================
                        mov     edi, 86                     #  SM_STNO stno=86 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc501:                
                        movabs  rdi, 405509520              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc502:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc503:                
                        movabs  rdi, 405509584              #  store -> nxt
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc504:                

# ============================================================================
# stmt 87  (line 87):  +                  ( *group
# ============================================================================
                        mov     edi, 87                     #  SM_STNO stno=87 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc505:                
                        movabs  rdi, 405509616              #  var=nxt
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc506:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc507:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc508:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc522                      #  SM_JUMP_F -> pc=522
.Lpc509:                

# ============================================================================
# stmt 88  (line 88):  +                  | (word . wrd) Push_item('wrd')
# ============================================================================
                        mov     edi, 88                     #  SM_STNO stno=88 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc510:                
                        movabs  rdi, 405509712              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc511:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc512:                
                        movabs  rdi, 405509776              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc513:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc514:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc515:                
                        movabs  rdi, 405509808              #  str=","
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc516:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc517:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc518:                

# ============================================================================
# stmt 89  (line 89):  +                  )
# ============================================================================
                        mov     edi, 89                     #  SM_STNO stno=89 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc519:                
                        movabs  rdi, 405509872              #  var=nxt
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc520:                
                        movabs  rdi, 405509904              #  store -> c
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc521:                
                        jmp     .Lpc494                     #  SM_JUMP -> pc=494
.Lpc522:                
.Lpc523:                

# ============================================================================
# stmt 90  (line 132):  pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
# ============================================================================
                        mov     edi, 90                     #  SM_STNO stno=90 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc524:                
                        movabs  rdi, 405510000              #  var=c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc525:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc526:                
                        movabs  rdi, 405510064              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc527:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc528:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc529:                
                        movabs  rdi, 405510096              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc530:                
                        movabs  rdi, 405510128              #  var=suffix
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc531:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc532:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc533:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc534:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc535:                
.Lpc536:                

# ============================================================================
# stmt 91  (line 133):  pp_wdone                                                    :(RETURN)
# ============================================================================
                        mov     edi, 91                     #  SM_STNO stno=91 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc537:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc538:                
.Lpc539:                

# ============================================================================
# stmt 92  (line 135):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 92                     #  SM_STNO stno=92 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc540:                

# ============================================================================
# stmt 93  (line 93):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 93                     #  SM_STNO stno=93 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc541:                
                        movabs  rdi, 405510320              #  str="pp_bank()cur"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc542:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc543:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc544:                
                        jmp     .Lpc557                     #  SM_JUMP -> pc=557
.Lpc545:                
.Lpc546:                

# ============================================================================
# stmt 94  (line 137):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
                        mov     edi, 94                     #  SM_STNO stno=94 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc547:                
                        movabs  rdi, 405510480              #  var=bank
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc548:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc549:                
                        movabs  rdi, 405510512              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc550:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc551:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc552:                

# ============================================================================
# stmt 95  (line 95):  +              POS(0)
# ============================================================================
                        mov     edi, 95                     #  SM_STNO stno=95 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc553:                
                        movabs  rdi, 405510576              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc554:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc555:                
                        movabs  rdi, 405510640              #  store -> pp_bank
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc556:                
                        mov     edi, 60                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc557:                
.Lpc558:                

# ============================================================================
# stmt 96  (line 140):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 96                     #  SM_STNO stno=96 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc559:                
.Lpc560:                

# ============================================================================
# stmt 97  (line 141):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
                        mov     edi, 97                     #  SM_STNO stno=97 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc561:                
                        movabs  rdi, 405510800              #  var=INPUT
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc562:                
                        movabs  rdi, 405510832              #  store -> line
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc563:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc572                      #  SM_JUMP_F -> pc=572
.Lpc564:                

# ============================================================================
# stmt 98  (line 98):  +              ARBNO(
# ============================================================================
                        mov     edi, 98                     #  SM_STNO stno=98 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc565:                
                        movabs  rdi, 405510896              #  var=src
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc566:                
                        movabs  rdi, 405510928              #  var=line
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc567:                
                        movabs  rdi, 405510960              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc568:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc569:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc570:                
                        movabs  rdi, 405510992              #  store -> src
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc571:                
                        jmp     .Lpc559                     #  SM_JUMP -> pc=559
.Lpc572:                
.Lpc573:                

# ============================================================================
# stmt 99  (line 143):  slurp_done     src            treebank                      :F(main_fail)
# ============================================================================
                        mov     edi, 99                     #  SM_STNO stno=99 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc574:                
                        movabs  rdi, 405511088              #  var=treebank
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc575:                
# -- BB box scaffold pc=575 op=SM_PAT_DEREF --
# proc .bb_box_575
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc576:                
                        movabs  rdi, 405511120              #  var=src
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc577:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc578:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc579:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc584                      #  SM_JUMP_F -> pc=584
.Lpc580:                

# ============================================================================
# stmt 100  (line 100):  +                  ARBNO(*group)
# ============================================================================
                        mov     edi, 100                    #  SM_STNO stno=100 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc581:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc582:                
                        movabs  rdi, 405511216              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc583:                
                        jmp     .Lpc588                     #  SM_JUMP -> pc=588
.Lpc584:                
.Lpc585:                

# ============================================================================
# stmt 101  (line 145):  main_fail      OUTPUT         =  'Pattern match failed'
# ============================================================================
                        mov     edi, 101                    #  SM_STNO stno=101 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc586:                
                        movabs  rdi, 405511344              #  str="Pattern match failed"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc587:                
                        movabs  rdi, 405511376              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc588:                
.Lpc589:                

# ============================================================================
# stmt 102  (line 102):  +                  Pop_list()
# ============================================================================
                        mov     edi, 102                    #  SM_STNO stno=102 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc590:                
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
