# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-4)
# 53 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/wordcount.sno  (13 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 2  (line 2):  *     Tests: BREAK/SPAN word boundary detection, hyphenated and
# ============================================================================
                        mov     edi, 2                      #  SM_STNO stno=2 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc1:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc2:                  
                        movabs  rdi, 869889408              #  store -> TRIM
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc3:                  

# ============================================================================
# stmt 3  (line 3):  *            apostrophe-joined words (it's, well-known count as one word each).
# ============================================================================
                        mov     edi, 3                      #  SM_STNO stno=3 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc4:                  
                        movabs  rdi, 869889440              #  str="0123456789"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc5:                  
                        movabs  rdi, 869889472              #  store -> NUMERALS
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc6:                  

# ============================================================================
# stmt 4
# ============================================================================
                        mov     edi, 4                      #  SM_STNO stno=4 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc7:                  
                        movabs  rdi, 869870480              #  str="'-"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc8:                  
                        movabs  rdi, 869870512              #  var=NUMERALS
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc9:                  
                        movabs  rdi, 869870544              #  var=UCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc10:                 
                        movabs  rdi, 869870576              #  var=LCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc11:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc12:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc13:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc14:                 
                        movabs  rdi, 869870608              #  store -> WORD
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc15:                 

# ============================================================================
# stmt 5  (line 5):        &TRIM    =  1
# ============================================================================
                        mov     edi, 5                      #  SM_STNO stno=5 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc16:                 
                        movabs  rdi, 869870640              #  var=WORD
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc17:                 
# -- BB box scaffold pc=17 op=SM_PAT_BREAK --
# proc .bb_box_17
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 30                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc18:                 
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        movabs  rdi, 869870672              #  var=WORD
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc20:                 
# -- BB box scaffold pc=20 op=SM_PAT_SPAN --
# proc .bb_box_20
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc21:                 
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc22:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc23:                 
                        movabs  rdi, 869870704              #  store -> WPAT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc24:                 
.Lpc25:                 

# ============================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
# ============================================================================
                        mov     edi, 6                      #  SM_STNO stno=6 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc26:                 
                        movabs  rdi, 869870800              #  var=INPUT
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc27:                 
                        movabs  rdi, 869870832              #  store -> LINE
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc28:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc43                       #  SM_JUMP_F -> pc=43
.Lpc29:                 
.Lpc30:                 

# ============================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
                        mov     edi, 7                      #  SM_STNO stno=7 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc31:                 
                        movabs  rdi, 869870960              #  var=WPAT
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc32:                 
# -- BB box scaffold pc=32 op=SM_PAT_DEREF --
# proc .bb_box_32
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc33:                 
                        movabs  rdi, 869870992              #  var=LINE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc34:                 
                        movabs  rdi, 869871024              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc35:                 
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc36:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc24                       #  SM_JUMP_F -> pc=24
.Lpc37:                 

# ============================================================================
# stmt 8  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
# ============================================================================
                        mov     edi, 8                      #  SM_STNO stno=8 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc38:                 
                        movabs  rdi, 869871056              #  var=N
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc39:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc40:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc41:                 
                        movabs  rdi, 869871088              #  store -> N
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc42:                 
                        jmp     .Lpc29                      #  SM_JUMP -> pc=29
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
# ============================================================================
                        mov     edi, 9                      #  SM_STNO stno=9 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc45:                 
                        movabs  rdi, 869871184              #  var=N
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc46:                 
                        mov     edi, 24                     # SM_COERCE_NUM
                        call    scrip_rt_unhandled_op@PLT   
.Lpc47:                 
                        movabs  rdi, 869871216              #  str=" words"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc48:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc49:                 
                        movabs  rdi, 869871248              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc50:                 
.Lpc51:                 

# ============================================================================
# stmt 10  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
                        mov     edi, 10                     #  SM_STNO stno=10 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc52:                 
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
