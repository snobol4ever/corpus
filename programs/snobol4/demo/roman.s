	.section .rodata
.Lstr_0:
	.string "ROMAN(N)UNITS"
.Lstr_1:
	.string "DEFINE"
.Lstr_2:
	.string "UNITS"
.Lstr_3:
	.string "N"
.Lstr_4:
	.string ""
.Lstr_5:
	.string "p×("
.Lstr_6:
	.string ","
.Lstr_7:
	.string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
	.text
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-6)
# 29 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/roman.sno  (36 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 2  (line 2):  *	N must be positive and less than 4000
# ============================================================================
.Lpc1:                  
                        lea     rdi, [rip + .Lstr_0]        # str="ROMAN(N)UNITS"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc2:                  
                        lea     rdi, [rip + .Lstr_1]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc3:                  
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc4:                  
                        jmp     .Lpc28                      #  SM_JUMP -> pc=28
.Lpc5:                  
.Lpc6:                  

# ============================================================================
# stmt 4  (line 10):  ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
# ============================================================================
.Lpc7:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc8:                  
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc9:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc10:                 
                        mov     edi, 31                     # SM_PAT_LEN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc11:                 
                        mov     edi, 50                     # SM_PAT_CAPTURE
                        call    scrip_rt_unhandled_op@PLT   
.Lpc12:                 
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc13:                 
                        lea     rdi, [rip + .Lstr_3]        # var=N
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc14:                 
                        lea     rdi, [rip + .Lstr_4]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc15:                 
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc16:                 
                        mov     edi, 0                      # kind=0 (0=RET 1=FRET 2=NRET)
                        mov     esi, 2                      # cond=2 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_RETURN_F
                        test    eax, eax                    # fire?
                        jz      .Lretskip_16                # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_16:
.Lpc17:                 

# ============================================================================
# stmt 6  (line 6):  	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ============================================================================
.Lpc18:                 
                        lea     rdi, [rip + .Lstr_2]        # var=UNITS
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc19:                 
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc20:                 
                        lea     rdi, [rip + .Lstr_6]        # str=","
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc21:                 
                        mov     edi, 30                     # SM_PAT_BREAK
                        call    scrip_rt_unhandled_op@PLT   
.Lpc22:                 
                        mov     edi, 50                     # SM_PAT_CAPTURE
                        call    scrip_rt_unhandled_op@PLT   
.Lpc23:                 
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc24:                 
                        lea     rdi, [rip + .Lstr_7]        # str="0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc25:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc26:                 
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc27:                 
                        mov     edi, 1                      # kind=1 (0=RET 1=FRET 2=NRET)
                        mov     esi, 2                      # cond=2 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_FRETURN_F
                        test    eax, eax                    # fire?
                        jz      .Lretskip_27                # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_27:
.Lpc28:                 
                        call    scrip_rt_halt_tos@PLT       # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
