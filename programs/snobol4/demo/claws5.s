# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-4)
# 508 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/claws5.sno  (98 lines)
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
                        movabs  rdi, 1004139648             #  var=ALPHABET
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * claws5.sno — CLAWS5 POS-tagged corpus tokenizer (one-phase)
# ============================================================================
                        mov     edi, 2                      #  SM_STNO stno=2 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc11:                 
                        movabs  rdi, 1004139680             #  str="0123456789"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        movabs  rdi, 1004139712             #  store -> DIGITS
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc13:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
                        mov     edi, 3                      #  SM_STNO stno=3 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc14:                 
                        movabs  rdi, 1004137472             #  str="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc15:                 
                        movabs  rdi, 1004139744             #  store -> UCASE
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc16:                 

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 34000 claws5.sno < claws5.input
# ============================================================================
                        mov     edi, 4                      #  SM_STNO stno=4 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc17:                 
                        movabs  rdi, 1004139776             #  str="new_sent()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc18:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc20:                 
                        jmp     .Lpc36                      #  SM_JUMP -> pc=36
.Lpc21:                 
.Lpc22:                 

# ============================================================================
# stmt 5  (line 13):  new_sent        sentno          =  +num
# ============================================================================
                        mov     edi, 5                      #  SM_STNO stno=5 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc23:                 
                        movabs  rdi, 1004139936             #  var=num
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc24:                 
                        mov     edi, 24                     # SM_COERCE_NUM
                        call    scrip_rt_unhandled_op@PLT   
.Lpc25:                 
                        movabs  rdi, 1004139968             #  store -> sentno
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc26:                 

# ============================================================================
# stmt 6  (line 6):  * Memory: -P 34000 required only for full corpus (CLAWS5inTASA.dat, 989 lines).
# ============================================================================
                        mov     edi, 6                      #  SM_STNO stno=6 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc27:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc28:                 
                        movabs  rdi, 1004123072             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc29:                 
                        movabs  rdi, 1004123104             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc30:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc31:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 7                      #  SM_STNO stno=7 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc32:                 
                        movabs  rdi, 1004123168             #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc33:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc34:                 
                        movabs  rdi, 1004123232             #  store -> new_sent
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc35:                 
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc36:                 
.Lpc37:                 

# ============================================================================
# stmt 8  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 8                      #  SM_STNO stno=8 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc38:                 

# ============================================================================
# stmt 9  (line 9):                  DIGITS          =  '0123456789'
# ============================================================================
                        mov     edi, 9                      #  SM_STNO stno=9 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc39:                 
                        movabs  rdi, 1004123328             #  str="add_tok()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc40:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc41:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc42:                 
                        jmp     .Lpc106                     #  SM_JUMP -> pc=106
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 10  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
                        mov     edi, 10                     #  SM_STNO stno=10 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc45:                 
                        movabs  rdi, 1004123488             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc46:                 
                        movabs  rdi, 1004123520             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc47:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc48:                 
                        movabs  rdi, 1004123584             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc49:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc50:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc51:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc52:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc82                       #  SM_JUMP_F -> pc=82
.Lpc53:                 

# ============================================================================
# stmt 11  (line 11):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 11                     #  SM_STNO stno=11 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc54:                 
                        movabs  rdi, 1004123712             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc55:                 
                        movabs  rdi, 1004123744             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc56:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc57:                 
                        movabs  rdi, 1004123808             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc58:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc59:                 
                        movabs  rdi, 1004123872             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc60:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc61:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc63:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc90                       #  SM_JUMP_F -> pc=90
.Lpc64:                 

# ============================================================================
# stmt 12  (line 12):                  DEFINE('new_sent()')                            :(new_sent_end)
# ============================================================================
                        mov     edi, 12                     #  SM_STNO stno=12 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc65:                 
                        movabs  rdi, 1004119408             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc66:                 
                        movabs  rdi, 1004119440             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc67:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc68:                 
                        movabs  rdi, 1004119504             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc69:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc70:                 
                        movabs  rdi, 1004119568             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc71:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc72:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc73:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc74:                 
                        movabs  rdi, 1004119632             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc75:                 
                        movabs  rdi, 1004119664             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc76:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc77:                 
                        movabs  rdi, 1004119728             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc78:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc79:                 
                        movabs  rdi, 1004119792             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc80:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc81:                 
                        jmp     .Lpc100                     #  SM_JUMP -> pc=100
.Lpc82:                 
.Lpc83:                 

# ============================================================================
# stmt 13  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
                        mov     edi, 13                     #  SM_STNO stno=13 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc84:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc85:                 
                        movabs  rdi, 1004119984             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc86:                 
                        movabs  rdi, 1004120016             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc87:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        movabs  rdi, 1004120080             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc89:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc90:                 
.Lpc91:                 

# ============================================================================
# stmt 14  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
                        mov     edi, 14                     #  SM_STNO stno=14 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc92:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc93:                 
                        movabs  rdi, 1004120208             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc94:                 
                        movabs  rdi, 1004120240             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc95:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc96:                 
                        movabs  rdi, 1004120304             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc97:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc98:                 
                        movabs  rdi, 1004120368             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc99:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc100:                
.Lpc101:                

# ============================================================================
# stmt 15  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
                        mov     edi, 15                     #  SM_STNO stno=15 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc102:                
                        movabs  rdi, 1004120496             #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc103:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc104:                
                        movabs  rdi, 1004120560             #  store -> add_tok
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc105:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc106:                
.Lpc107:                

# ============================================================================
# stmt 16  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 16                     #  SM_STNO stno=16 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc108:                

# ============================================================================
# stmt 17  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 17                     #  SM_STNO stno=17 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc109:                
                        movabs  rdi, 1004120656             #  str="pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,..."
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc110:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc111:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc112:                
                        jmp     .Lpc426                     #  SM_JUMP -> pc=426
.Lpc113:                
.Lpc114:                

# ============================================================================
# stmt 18  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
                        mov     edi, 18                     #  SM_STNO stno=18 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc115:                
                        movabs  rdi, 1004120896             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc116:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc117:                
                        movabs  rdi, 1004120960             #  store -> ssk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc118:                

# ============================================================================
# stmt 19  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
                        mov     edi, 19                     #  SM_STNO stno=19 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc119:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc120:                
                        movabs  rdi, 1004120992             #  store -> si
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc121:                

# ============================================================================
# stmt 20  (line 20):                  DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
# ============================================================================
                        mov     edi, 20                     #  SM_STNO stno=20 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc122:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc123:                
                        movabs  rdi, 1004121024             #  store -> ns
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc124:                
.Lpc125:                

# ============================================================================
# stmt 21  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
                        mov     edi, 21                     #  SM_STNO stno=21 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc126:                
                        movabs  rdi, 1004121120             #  var=ns
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc127:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc128:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc129:                
                        movabs  rdi, 1004121152             #  store -> ns
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc130:                

# ============================================================================
# stmt 22  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
                        mov     edi, 22                     #  SM_STNO stno=22 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc131:                
                        movabs  rdi, 1004121184             #  var=ssk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc132:                
                        movabs  rdi, 1004121216             #  var=ns
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc133:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc134:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc136:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jnz     .Lpc124                     #  SM_JUMP_S -> pc=124
.Lpc137:                

# ============================================================================
# stmt 23  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
                        mov     edi, 23                     #  SM_STNO stno=23 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc138:                
                        movabs  rdi, 1004121280             #  var=ns
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc139:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc140:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc141:                
                        movabs  rdi, 1004121312             #  store -> ns
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc142:                

# ============================================================================
# stmt 24  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
                        mov     edi, 24                     #  SM_STNO stno=24 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc143:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc144:                
                        movabs  rdi, 1004121344             #  store -> si
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc145:                
.Lpc146:                

# ============================================================================
# stmt 25  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
                        mov     edi, 25                     #  SM_STNO stno=25 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc147:                
                        movabs  rdi, 1004121440             #  var=si
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc148:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc149:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc150:                
                        movabs  rdi, 1004132208             #  store -> si
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc151:                

# ============================================================================
# stmt 26  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 26                     #  SM_STNO stno=26 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc152:                
                        movabs  rdi, 1004132240             #  var=ssk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc153:                
                        movabs  rdi, 1004132272             #  var=si
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc154:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc155:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc156:                
                        movabs  rdi, 1004132336             #  store -> sentno
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc157:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc420                      #  SM_JUMP_F -> pc=420
.Lpc158:                

# ============================================================================
# stmt 27  (line 27):                  DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
# ============================================================================
                        mov     edi, 27                     #  SM_STNO stno=27 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc159:                
                        movabs  rdi, 1004132400             #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc160:                
                        movabs  rdi, 1004132432             #  store -> last_sent
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc161:                

# ============================================================================
# stmt 28  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
                        mov     edi, 28                     #  SM_STNO stno=28 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc162:                
                        movabs  rdi, 1004132464             #  var=si
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc163:                
                        movabs  rdi, 1004132496             #  var=ns
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc164:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc166:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc167:                
                        movabs  rdi, 1004132560             #  store -> last_sent
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc168:                

# ============================================================================
# stmt 29  (line 29):                  si              =   0
# ============================================================================
                        mov     edi, 29                     #  SM_STNO stno=29 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc169:                
                        movabs  rdi, 1004132592             #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc170:                
                        movabs  rdi, 1004132624             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc171:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc173:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc174:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc175:                
                        movabs  rdi, 1004132720             #  store -> pad
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc176:                

# ============================================================================
# stmt 30  (line 30):                  ns              =   0
# ============================================================================
                        mov     edi, 30                     #  SM_STNO stno=30 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc177:                
                        movabs  rdi, 1004132752             #  var=si
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc178:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc179:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        movabs  rdi, 1004132816             #  str="{"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc181:                
                        movabs  rdi, 1004132848             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc182:                
                        movabs  rdi, 1004132880             #  str=": {"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc184:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc185:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc186:                
                        movabs  rdi, 1004132912             #  store -> pfx
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc187:                

# ============================================================================
# stmt 31  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
                        mov     edi, 31                     #  SM_STNO stno=31 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc188:                
                        movabs  rdi, 1004132944             #  var=si
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc189:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc190:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc191:                
                        movabs  rdi, 1004133008             #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc192:                
                        movabs  rdi, 1004133040             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc193:                
                        movabs  rdi, 1004133072             #  str=": {"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc194:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc195:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc196:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc197:                
                        movabs  rdi, 1004133104             #  store -> pfx
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc198:                

# ============================================================================
# stmt 32  (line 32):                  ssk[ns,1]                                       :S(pm_cnt_loop)
# ============================================================================
                        mov     edi, 32                     #  SM_STNO stno=32 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc199:                
                        movabs  rdi, 1004133136             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc200:                
                        movabs  rdi, 1004133168             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc201:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc202:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        movabs  rdi, 1004133264             #  store -> wsk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc204:                

# ============================================================================
# stmt 33  (line 33):                  ns              =   ns - 1
# ============================================================================
                        mov     edi, 33                     #  SM_STNO stno=33 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc205:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc206:                
                        movabs  rdi, 1004133296             #  store -> wi
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc207:                
.Lpc208:                

# ============================================================================
# stmt 34  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
                        mov     edi, 34                     #  SM_STNO stno=34 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc209:                
                        movabs  rdi, 1004133392             #  var=wi
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc210:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc211:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc212:                
                        movabs  rdi, 1004133424             #  store -> wi
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc213:                

# ============================================================================
# stmt 35  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
                        mov     edi, 35                     #  SM_STNO stno=35 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc214:                
                        movabs  rdi, 1004133456             #  var=wsk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc215:                
                        movabs  rdi, 1004133488             #  var=wi
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc216:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc217:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc218:                
                        movabs  rdi, 1004133552             #  store -> wkey
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc219:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc145                      #  SM_JUMP_F -> pc=145
.Lpc220:                

# ============================================================================
# stmt 36  (line 36):                  sentno          =   ssk[si,1]                   :F(pm_done)
# ============================================================================
                        mov     edi, 36                     #  SM_STNO stno=36 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc221:                
                        movabs  rdi, 1004133584             #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc222:                
                        movabs  rdi, 1004133616             #  store -> next_wkey
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc223:                

# ============================================================================
# stmt 37  (line 37):                  last_sent       =   ''
# ============================================================================
                        mov     edi, 37                     #  SM_STNO stno=37 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc224:                
                        movabs  rdi, 1004133648             #  var=wsk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc225:                
                        movabs  rdi, 1004133680             #  var=wi
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc226:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc227:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc228:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc229:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc230:                
                        movabs  rdi, 1004133744             #  store -> next_wkey
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc231:                

# ============================================================================
# stmt 38  (line 38):                  last_sent       =   IDENT(si, ns) 1
# ============================================================================
                        mov     edi, 38                     #  SM_STNO stno=38 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc232:                
                        movabs  rdi, 1004133776             #  var=wkey
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc233:                
                        movabs  rdi, 1004133808             #  store -> wrd
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc234:                

# ============================================================================
# stmt 39  (line 39):                  pad             =   DUPL(' ', SIZE(sentno) + 4)
# ============================================================================
                        mov     edi, 39                     #  SM_STNO stno=39 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc235:                
                        movabs  rdi, 1004133840             #  var=ARB
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc236:                
# -- BB box scaffold pc=236 op=SM_PAT_DEREF --
# proc .bb_box_236
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc237:                
# -- BB box scaffold pc=237 op=SM_PAT_LIT --
# proc .bb_box_237
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc238:                
# -- BB box scaffold pc=238 op=SM_PAT_CAT --
# proc .bb_box_238
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc239:                
                        movabs  rdi, 1004133904             #  var=wrd
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc240:                
                        movabs  rdi, 1004133936             #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc242:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc251                      #  SM_JUMP_F -> pc=251
.Lpc243:                

# ============================================================================
# stmt 40  (line 40):                  pfx             =   EQ(si, 1) '{' sentno ': {'
# ============================================================================
                        mov     edi, 40                     #  SM_STNO stno=40 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc244:                
                        movabs  rdi, 1004134000             #  str="\""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc245:                
                        movabs  rdi, 1004134032             #  var=wkey
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc246:                
                        movabs  rdi, 1004134064             #  str="\""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc247:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc248:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc249:                
                        movabs  rdi, 1004134096             #  store -> wq
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc250:                
                        jmp     .Lpc259                     #  SM_JUMP -> pc=259
.Lpc251:                
.Lpc252:                

# ============================================================================
# stmt 41  (line 51):  pm_sq           wq              =   "'" wkey "'"
# ============================================================================
                        mov     edi, 41                     #  SM_STNO stno=41 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc253:                
                        movabs  rdi, 1004134224             #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        movabs  rdi, 1004134256             #  var=wkey
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc255:                
                        movabs  rdi, 1004134288             #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc256:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc258:                
                        movabs  rdi, 1004134320             #  store -> wq
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc259:                
.Lpc260:                

# ============================================================================
# stmt 42  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
                        mov     edi, 42                     #  SM_STNO stno=42 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc261:                
                        movabs  rdi, 1004134416             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc262:                
                        movabs  rdi, 1004134448             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc263:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc264:                
                        movabs  rdi, 1004134512             #  var=wkey
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc265:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc266:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
                        movabs  rdi, 1004134608             #  store -> tsk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc268:                

# ============================================================================
# stmt 43  (line 43):                  wi              =   0
# ============================================================================
                        mov     edi, 43                     #  SM_STNO stno=43 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc269:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc270:                
                        movabs  rdi, 1004134640             #  store -> ti
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc271:                

# ============================================================================
# stmt 44  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
                        mov     edi, 44                     #  SM_STNO stno=44 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc272:                
                        movabs  rdi, 1004134672             #  str="{"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc273:                
                        movabs  rdi, 1004134704             #  store -> tline
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc274:                
.Lpc275:                

# ============================================================================
# stmt 45  (line 55):  pm_tag_loop     ti              =   ti + 1
# ============================================================================
                        mov     edi, 45                     #  SM_STNO stno=45 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc276:                
                        movabs  rdi, 1004134800             #  var=ti
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc277:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc278:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc279:                
                        movabs  rdi, 1004134832             #  store -> ti
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc280:                

# ============================================================================
# stmt 46  (line 46):                  next_wkey       =   ''
# ============================================================================
                        mov     edi, 46                     #  SM_STNO stno=46 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc281:                
                        movabs  rdi, 1004134864             #  var=tsk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc282:                
                        movabs  rdi, 1004134896             #  var=ti
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc283:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc284:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc285:                
                        movabs  rdi, 1004134960             #  store -> tag
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc286:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc329                      #  SM_JUMP_F -> pc=329
.Lpc287:                

# ============================================================================
# stmt 47  (line 47):                  next_wkey       =   wsk[wi + 1,1]
# ============================================================================
                        mov     edi, 47                     #  SM_STNO stno=47 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc288:                
                        movabs  rdi, 1004135024             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc289:                
                        movabs  rdi, 1004135056             #  var=sentno
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc290:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc291:                
                        movabs  rdi, 1004135120             #  var=wkey
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc292:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc293:                
                        movabs  rdi, 1004135184             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc294:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc295:                
                        movabs  rdi, 1004135248             #  store -> tv
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc296:                

# ============================================================================
# stmt 48  (line 48):                  wrd             =   wkey
# ============================================================================
                        mov     edi, 48                     #  SM_STNO stno=48 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc297:                
                        movabs  rdi, 1004135280             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc298:                
                        movabs  rdi, 1004135312             #  str="{"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc299:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc300:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc301:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc314                      #  SM_JUMP_F -> pc=314
.Lpc302:                

# ============================================================================
# stmt 49  (line 49):                  wrd             ?   ARB "'"  =  ''              :F(pm_sq)
# ============================================================================
                        mov     edi, 49                     #  SM_STNO stno=49 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc303:                
                        movabs  rdi, 1004135408             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc304:                
                        movabs  rdi, 1004135440             #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc305:                
                        movabs  rdi, 1004135472             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc306:                
                        movabs  rdi, 1004135504             #  str="': "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc307:                
                        movabs  rdi, 1004135536             #  var=tv
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc308:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc309:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc311:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc312:                
                        movabs  rdi, 1004135568             #  store -> tline
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc313:                
                        jmp     .Lpc274                     #  SM_JUMP -> pc=274
.Lpc314:                
.Lpc315:                

# ============================================================================
# stmt 50  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
                        mov     edi, 50                     #  SM_STNO stno=50 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc316:                
                        movabs  rdi, 1004135664             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc317:                
                        movabs  rdi, 1004135696             #  str=", "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc318:                
                        movabs  rdi, 1004135728             #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc319:                
                        movabs  rdi, 1004135760             #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc320:                
                        movabs  rdi, 1004124000             #  str="': "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc321:                
                        movabs  rdi, 1004124032             #  var=tv
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc322:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc323:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc325:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc326:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc327:                
                        movabs  rdi, 1004124064             #  store -> tline
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc328:                
                        jmp     .Lpc274                     #  SM_JUMP -> pc=274
.Lpc329:                
.Lpc330:                

# ============================================================================
# stmt 51  (line 61):  pm_tag_close    tline           =   tline '}'
# ============================================================================
                        mov     edi, 51                     #  SM_STNO stno=51 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc331:                
                        movabs  rdi, 1004124160             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc332:                
                        movabs  rdi, 1004124192             #  str="}"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc333:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        movabs  rdi, 1004124224             #  store -> tline
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc335:                

# ============================================================================
# stmt 52  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
                        mov     edi, 52                     #  SM_STNO stno=52 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc336:                
                        movabs  rdi, 1004124256             #  var=next_wkey
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc337:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc339:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc340:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc341:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc373                      #  SM_JUMP_F -> pc=373
.Lpc342:                

# ============================================================================
# stmt 53  (line 53):                  ti              =   0
# ============================================================================
                        mov     edi, 53                     #  SM_STNO stno=53 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc343:                
                        movabs  rdi, 1004124384             #  var=wi
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc344:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc345:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc346:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc347:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc360                      #  SM_JUMP_F -> pc=360
.Lpc348:                

# ============================================================================
# stmt 54  (line 54):                  tline           =   '{'
# ============================================================================
                        mov     edi, 54                     #  SM_STNO stno=54 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc349:                
                        movabs  rdi, 1004124480             #  var=pfx
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc350:                
                        movabs  rdi, 1004124512             #  var=wq
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc351:                
                        movabs  rdi, 1004124544             #  str=": "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc352:                
                        movabs  rdi, 1004124576             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc353:                
                        movabs  rdi, 1004124608             #  str=","
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc354:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc355:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc356:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc357:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc358:                
                        movabs  rdi, 1004124640             #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc359:                
                        jmp     .Lpc207                     #  SM_JUMP -> pc=207
.Lpc360:                
.Lpc361:                

# ============================================================================
# stmt 55  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
                        mov     edi, 55                     #  SM_STNO stno=55 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc362:                
                        movabs  rdi, 1004124736             #  var=pad
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc363:                
                        movabs  rdi, 1004124768             #  var=wq
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc364:                
                        movabs  rdi, 1004124800             #  str=": "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc365:                
                        movabs  rdi, 1004124832             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc366:                
                        movabs  rdi, 1004124864             #  str=","
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc367:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc368:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc369:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc370:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc371:                
                        movabs  rdi, 1004124896             #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc372:                
                        jmp     .Lpc207                     #  SM_JUMP -> pc=207
.Lpc373:                
.Lpc374:                

# ============================================================================
# stmt 56  (line 66):  pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
# ============================================================================
                        mov     edi, 56                     #  SM_STNO stno=56 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc375:                
                        movabs  rdi, 1004124992             #  var=wi
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc376:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc377:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc379:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc390                      #  SM_JUMP_F -> pc=390
.Lpc380:                

# ============================================================================
# stmt 57  (line 57):                  tv              =   mem[sentno][wkey][tag]
# ============================================================================
                        mov     edi, 57                     #  SM_STNO stno=57 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc381:                
                        movabs  rdi, 1004125088             #  var=pfx
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc382:                
                        movabs  rdi, 1004125120             #  var=wq
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc383:                
                        movabs  rdi, 1004125152             #  str=": "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc384:                
                        movabs  rdi, 1004125184             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc385:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc386:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc387:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc388:                
                        movabs  rdi, 1004125216             #  store -> lline
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc389:                
                        jmp     .Lpc400                     #  SM_JUMP -> pc=400
.Lpc390:                
.Lpc391:                

# ============================================================================
# stmt 58  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
                        mov     edi, 58                     #  SM_STNO stno=58 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc392:                
                        movabs  rdi, 1004125344             #  var=pad
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc393:                
                        movabs  rdi, 1004125376             #  var=wq
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc394:                
                        movabs  rdi, 1004125408             #  str=": "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc395:                
                        movabs  rdi, 1004125440             #  var=tline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc396:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc397:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc398:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc399:                
                        movabs  rdi, 1004125472             #  store -> lline
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc400:                
.Lpc401:                

# ============================================================================
# stmt 59  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
                        mov     edi, 59                     #  SM_STNO stno=59 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc402:                
                        movabs  rdi, 1004125568             #  var=last_sent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc403:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc404:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc405:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc406:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc413                      #  SM_JUMP_F -> pc=413
.Lpc407:                

# ============================================================================
# stmt 60  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
                        mov     edi, 60                     #  SM_STNO stno=60 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc408:                
                        movabs  rdi, 1004125664             #  var=lline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc409:                
                        movabs  rdi, 1004125696             #  str="}}"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc410:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc411:                
                        movabs  rdi, 1004125728             #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc412:                
                        jmp     .Lpc145                     #  SM_JUMP -> pc=145
.Lpc413:                
.Lpc414:                

# ============================================================================
# stmt 61  (line 71):  pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
# ============================================================================
                        mov     edi, 61                     #  SM_STNO stno=61 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc415:                
                        movabs  rdi, 1004125824             #  var=lline
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc416:                
                        movabs  rdi, 1004125856             #  str="},"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc417:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc418:                
                        movabs  rdi, 1004125888             #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc419:                
                        jmp     .Lpc145                     #  SM_JUMP -> pc=145
.Lpc420:                
.Lpc421:                

# ============================================================================
# stmt 62  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
                        mov     edi, 62                     #  SM_STNO stno=62 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc422:                
                        movabs  rdi, 1004125984             #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc423:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc424:                
                        movabs  rdi, 1004126048             #  store -> pp_mem
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc425:                
                        ret                                 #  SM_RETURN
.Lpc426:                
.Lpc427:                

# ============================================================================
# stmt 63  (line 74):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 63                     #  SM_STNO stno=63 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc428:                
.Lpc429:                

# ============================================================================
# stmt 64  (line 75):  slurp           line            =   INPUT                       :F(slurp_done)
# ============================================================================
                        mov     edi, 64                     #  SM_STNO stno=64 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc430:                
                        movabs  rdi, 1004126208             #  var=INPUT
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc431:                
                        movabs  rdi, 1004126240             #  store -> line
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc432:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc439                      #  SM_JUMP_F -> pc=439
.Lpc433:                

# ============================================================================
# stmt 65  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
                        mov     edi, 65                     #  SM_STNO stno=65 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc434:                
                        movabs  rdi, 1004127344             #  var=src
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc435:                
                        movabs  rdi, 1004127376             #  var=line
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc436:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc437:                
                        movabs  rdi, 1004127408             #  store -> src
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc438:                
                        jmp     .Lpc428                     #  SM_JUMP -> pc=428
.Lpc439:                
.Lpc440:                

# ============================================================================
# stmt 66  (line 78):                  mem             =   TABLE()
# ============================================================================
                        mov     edi, 66                     #  SM_STNO stno=66 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc441:                

# ============================================================================
# stmt 67  (line 67):                  lline           =   pfx wq ': ' tline           :(pm_last_emit)
# ============================================================================
                        mov     edi, 67                     #  SM_STNO stno=67 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc442:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc443:                
                        movabs  rdi, 1004127536             #  store -> mem
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc444:                

# ============================================================================
# stmt 68  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
                        mov     edi, 68                     #  SM_STNO stno=68 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc445:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc446:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc447:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc448:                
                        movabs  rdi, 1004127568             #  var=DIGITS
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc449:                
# -- BB box scaffold pc=449 op=SM_PAT_SPAN --
# proc .bb_box_449
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc450:                
# -- BB box scaffold pc=450 op=SM_PAT_CAPTURE --
# proc .bb_box_450
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc451:                
# -- BB box scaffold pc=451 op=SM_PAT_LIT --
# proc .bb_box_451
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc452:                
                        movabs  rdi, 1004127664             #  var=epsilon
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc453:                
# -- BB box scaffold pc=453 op=SM_PAT_DEREF --
# proc .bb_box_453
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc454:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc455:                
# -- BB box scaffold pc=455 op=SM_PAT_CAT --
# proc .bb_box_455
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc456:                
# -- BB box scaffold pc=456 op=SM_PAT_CAT --
# proc .bb_box_456
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc457:                
                        movabs  rdi, 1004127728             #  str="_"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc458:                
# -- BB box scaffold pc=458 op=SM_PAT_NOTANY --
# proc .bb_box_458
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 28                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc459:                
                        movabs  rdi, 1004127760             #  str="_"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc460:                
# -- BB box scaffold pc=460 op=SM_PAT_BREAK --
# proc .bb_box_460
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 30                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc461:                
# -- BB box scaffold pc=461 op=SM_PAT_CAT --
# proc .bb_box_461
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc462:                
# -- BB box scaffold pc=462 op=SM_PAT_CAPTURE --
# proc .bb_box_462
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc463:                
# -- BB box scaffold pc=463 op=SM_PAT_LIT --
# proc .bb_box_463
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc464:                
                        movabs  rdi, 1004127856             #  var=UCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc465:                
# -- BB box scaffold pc=465 op=SM_PAT_ANY --
# proc .bb_box_465
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 27                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc466:                
                        movabs  rdi, 1004127888             #  var=DIGITS
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc467:                
                        movabs  rdi, 1004127920             #  var=UCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc468:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc469:                
# -- BB box scaffold pc=469 op=SM_PAT_SPAN --
# proc .bb_box_469
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc470:                
# -- BB box scaffold pc=470 op=SM_PAT_CAT --
# proc .bb_box_470
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc471:                
# -- BB box scaffold pc=471 op=SM_PAT_CAPTURE --
# proc .bb_box_471
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc472:                
                        movabs  rdi, 1004127984             #  var=epsilon
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc473:                
# -- BB box scaffold pc=473 op=SM_PAT_DEREF --
# proc .bb_box_473
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc475:                
# -- BB box scaffold pc=475 op=SM_PAT_CAT --
# proc .bb_box_475
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc476:                
# -- BB box scaffold pc=476 op=SM_PAT_CAT --
# proc .bb_box_476
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc477:                
# -- BB box scaffold pc=477 op=SM_PAT_CAT --
# proc .bb_box_477
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc478:                
# -- BB box scaffold pc=478 op=SM_PAT_ALT --
# proc .bb_box_478
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc479:                
# -- BB box scaffold pc=479 op=SM_PAT_LIT --
# proc .bb_box_479
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc480:                
# -- BB box scaffold pc=480 op=SM_PAT_CAT --
# proc .bb_box_480
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc481:                
# -- BB box scaffold pc=481 op=SM_PAT_ARBNO --
# proc .bb_box_481
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc482:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc483:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc484:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc485:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc487:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        movabs  rdi, 1004128080             #  store -> claws
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc489:                

# ============================================================================
# stmt 69  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
                        mov     edi, 69                     #  SM_STNO stno=69 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc490:                
                        movabs  rdi, 1004128112             #  var=claws
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc491:                
# -- BB box scaffold pc=491 op=SM_PAT_DEREF --
# proc .bb_box_491
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc492:                
                        movabs  rdi, 1004128144             #  var=src
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc493:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc494:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc495:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc501                      #  SM_JUMP_F -> pc=501
.Lpc496:                

# ============================================================================
# stmt 70  (line 70):                  OUTPUT          =   lline '}}'                  :(pm_sent_loop)
# ============================================================================
                        mov     edi, 70                     #  SM_STNO stno=70 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc497:                
                        movabs  rdi, 1004128208             #  var=mem
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc498:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc499:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc500:                
                        jmp     .Lpc505                     #  SM_JUMP -> pc=505
.Lpc501:                
.Lpc502:                

# ============================================================================
# stmt 71  (line 96):  fail            OUTPUT          =  'Pattern match failed'
# ============================================================================
                        mov     edi, 71                     #  SM_STNO stno=71 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc503:                
                        movabs  rdi, 1004128368             #  str="Pattern match failed"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc504:                
                        movabs  rdi, 1004128400             #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc505:                
.Lpc506:                

# ============================================================================
# stmt 72  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
                        mov     edi, 72                     #  SM_STNO stno=72 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc507:                
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
