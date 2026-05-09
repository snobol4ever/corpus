	.include "sm_macros.s"
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
	.string "NEXTL"
.Lstr_9:
	.string "INPUT"
.Lstr_10:
	.string "LINE"
.Lstr_11:
	.string "NEXTW"
.Lstr_12:
	.string ""
.Lstr_13:
	.string "N"
.Lstr_14:
	.string "DONE"
.Lstr_15:
	.string " words"
.Lstr_16:
	.string "OUTPUT"
.Lstr_17:
	.string "END"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: NEXTL -> .Lpc25
	.quad   .Lstr_8
	.quad   .Lpc25
	# chunk: NEXTW -> .Lpc30
	.quad   .Lstr_11
	.quad   .Lpc30
	# chunk: DONE -> .Lpc44
	.quad   .Lstr_14
	.quad   .Lpc44
	# chunk: END -> .Lpc51
	.quad   .Lstr_17
	.quad   .Lpc51
	.quad   0
	.quad   0
	.text
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-7d)
# 53 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
	.intel_syntax noprefix
	.globl  main
	.type   main, @function
main:
	push    rbp
	mov     rbp, rsp
	# EM-7d: register user-defined function chunks
	lea     rdi, [rip + .Lchunk_registry]
	call    scrip_rt_register_chunks@PLT
	# scrip_rt_init(argc, argv) -- argc in edi, argv in rsi
	call    scrip_rt_init@PLT
# source-file: wordcount.sno  (13 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.

# ============================================================================
# stmt 2  (line 2):  *     Tests: BREAK/SPAN word boundary detection, hyphenated and
# ============================================================================
.Lpc0:
.Lpc1:                  PUSH_INT 1                          
.Lpc2:                  STORE_VAR .Lstr_0                     # store -> TRIM

# ============================================================================
# stmt 3  (line 3):  *            apostrophe-joined words (it's, well-known count as one word each).
# ============================================================================
.Lpc3:
.Lpc4:                  PUSH_STR .Lstr_1, 0                   # str="0123456789"
.Lpc5:                  STORE_VAR .Lstr_2                     # store -> NUMERALS

# ============================================================================
# stmt 4
# ============================================================================
.Lpc6:
.Lpc7:                  PUSH_STR .Lstr_3, 0                   # str="'-"
.Lpc8:                  PUSH_VAR .Lstr_2                      # var=NUMERALS
.Lpc9:                  PUSH_VAR .Lstr_4                      # var=UCASE
.Lpc10:                 PUSH_VAR .Lstr_5                      # var=LCASE
.Lpc11:                 CONCAT                                # SM_CONCAT
.Lpc12:                 CONCAT                                # SM_CONCAT
.Lpc13:                 CONCAT                                # SM_CONCAT
.Lpc14:                 STORE_VAR .Lstr_6                     # store -> WORD

# ============================================================================
# stmt 5  (line 5):        &TRIM    =  1
# ============================================================================
.Lpc15:
.Lpc16:                 PUSH_VAR .Lstr_6                      # var=WORD
.Lpc17:                 PAT_BREAK                             # SM_PAT_BREAK
.Lpc18:                 PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc19:                 PUSH_VAR .Lstr_6                      # var=WORD
.Lpc20:                 PAT_SPAN                              # SM_PAT_SPAN
.Lpc21:                 PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc22:                 CONCAT                                # SM_CONCAT
.Lpc23:                 STORE_VAR .Lstr_7                     # store -> WPAT
.Lpc24:

# ============================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
# ============================================================================
.Lpc25:
.Lpc26:                 PUSH_VAR .Lstr_9                      # var=INPUT
.Lpc27:                 STORE_VAR .Lstr_10                    # store -> LINE
.Lpc28:                 JUMP_F .Lpc43                         # SM_JUMP_F -> pc=43
.Lpc29:

# ============================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
.Lpc30:
.Lpc31:                 PUSH_VAR .Lstr_7                      # var=WPAT
.Lpc32:                 PAT_DEREF                             # SM_PAT_DEREF
.Lpc33:                 PUSH_VAR .Lstr_10                     # var=LINE
.Lpc34:                 PUSH_STR .Lstr_12, 0                  # str=""
.Lpc35:                 EXEC_STMT_VARIANT 1, .Lstr_10         # SM_EXEC_STMT_VARIANT subj=LINE has_repl=1
.Lpc36:                 JUMP_F .Lpc24                         # SM_JUMP_F -> pc=24

# ============================================================================
# stmt 8  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
# ============================================================================
.Lpc37:
.Lpc38:                 PUSH_VAR .Lstr_13                     # var=N
.Lpc39:                 PUSH_INT 1                          
.Lpc40:                 ARITH 17                              # SM_ADD
.Lpc41:                 STORE_VAR .Lstr_13                    # store -> N
.Lpc42:                 JUMP .Lpc29                           # SM_JUMP -> pc=29
.Lpc43:

# ============================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
# ============================================================================
.Lpc44:
.Lpc45:                 PUSH_VAR .Lstr_13                     # var=N
.Lpc46:                 COERCE_NUM                            # SM_COERCE_NUM
.Lpc47:                 PUSH_STR .Lstr_15, 0                  # str=" words"
.Lpc48:                 CONCAT                                # SM_CONCAT
.Lpc49:                 STORE_VAR .Lstr_16                    # store -> OUTPUT
.Lpc50:

# ============================================================================
# stmt 10  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
.Lpc51:
.Lpc52:                 HALT                                  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
