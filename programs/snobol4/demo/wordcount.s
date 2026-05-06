	.section .rodata
.Lstr_0:
	.string "TRIM"
.Lstr_1:
	.string "0123456789"
.Lstr_2:
	.string "NUMERALS"
.Lstr_3:
	.string "'-"
.Lstr_4:
	.string "UCASE"
.Lstr_5:
	.string "LCASE"
.Lstr_6:
	.string "WORD"
.Lstr_7:
	.string "WPAT"
.Lstr_8:
	.string "INPUT"
.Lstr_9:
	.string "LINE"
.Lstr_10:
	.string ""
.Lstr_11:
	.string "Ð;`ðU\177"
.Lstr_12:
	.string "N"
.Lstr_13:
	.string " words"
.Lstr_14:
	.string "OUTPUT"
	.text
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-6)
# 53 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
	.intel_syntax noprefix
# Include SM opcode macro library (one macro per opcode group)
# .include "sm_macros.s"  # assembled separately; macros used by name below
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
.Lpc1:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc2:                  
                        lea     rdi, [rip + .Lstr_0]        # store -> TRIM
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc3:                  

# ============================================================================
# stmt 3  (line 3):  *            apostrophe-joined words (it's, well-known count as one word each).
# ============================================================================
.Lpc4:                  
                        lea     rdi, [rip + .Lstr_1]        # str="0123456789"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc5:                  
                        lea     rdi, [rip + .Lstr_2]        # store -> NUMERALS
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc6:                  

# ============================================================================
# stmt 4
# ============================================================================
.Lpc7:                  
                        lea     rdi, [rip + .Lstr_3]        # str="'-"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc8:                  
                        lea     rdi, [rip + .Lstr_2]        # var=NUMERALS
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc9:                  
                        lea     rdi, [rip + .Lstr_4]        # var=UCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc10:                 
                        lea     rdi, [rip + .Lstr_5]        # var=LCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
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
                        lea     rdi, [rip + .Lstr_6]        # store -> WORD
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc15:                 

# ============================================================================
# stmt 5  (line 5):        &TRIM    =  1
# ============================================================================
.Lpc16:                 
                        lea     rdi, [rip + .Lstr_6]        # var=WORD
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc17:                 
                        call    scrip_rt_pat_break@PLT      # PAT_BREAK
.Lpc18:                 
                        call    scrip_rt_pat_boxval@PLT     # PAT_BOXVAL
.Lpc19:                 
                        lea     rdi, [rip + .Lstr_6]        # var=WORD
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc20:                 
                        call    scrip_rt_pat_span@PLT       # PAT_SPAN
.Lpc21:                 
                        call    scrip_rt_pat_boxval@PLT     # PAT_BOXVAL
.Lpc22:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc23:                 
                        lea     rdi, [rip + .Lstr_7]        # store -> WPAT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc24:                 
.Lpc25:                 

# ============================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
# ============================================================================
.Lpc26:                 
                        lea     rdi, [rip + .Lstr_8]        # var=INPUT
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc27:                 
                        lea     rdi, [rip + .Lstr_9]        # store -> LINE
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc28:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc43                       #  SM_JUMP_F -> pc=43
.Lpc29:                 
.Lpc30:                 

# ============================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
.Lpc31:                 
                        lea     rdi, [rip + .Lstr_7]        # var=WPAT
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc32:                 
                        call    scrip_rt_pat_deref@PLT      # PAT_DEREF
.Lpc33:                 
                        lea     rdi, [rip + .Lstr_9]        # var=LINE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc34:                 
                        lea     rdi, [rip + .Lstr_10]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc35:                 
                        lea     rdi, [rip + .Lstr_11]       # subj=Ð;`ðU
                        mov     esi, 1                      # has_repl=1
                        call    scrip_rt_exec_stmt@PLT      # SM_EXEC_STMT
.Lpc36:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc24                       #  SM_JUMP_F -> pc=24
.Lpc37:                 

# ============================================================================
# stmt 8  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
# ============================================================================
.Lpc38:                 
                        lea     rdi, [rip + .Lstr_12]       # var=N
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc39:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc40:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc41:                 
                        lea     rdi, [rip + .Lstr_12]       # store -> N
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc42:                 
                        jmp     .Lpc29                      #  SM_JUMP -> pc=29
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
# ============================================================================
.Lpc45:                 
                        lea     rdi, [rip + .Lstr_12]       # var=N
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc46:                 
                        mov     edi, 24                     # SM_COERCE_NUM
                        call    scrip_rt_unhandled_op@PLT   
.Lpc47:                 
                        lea     rdi, [rip + .Lstr_13]       # str=" words"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc48:                 
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc49:                 
                        lea     rdi, [rip + .Lstr_14]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc50:                 
.Lpc51:                 

# ============================================================================
# stmt 10  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
.Lpc52:                 
                        call    scrip_rt_halt_tos@PLT       # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
