# === BEGIN sm macro library (generated from g_sm_templates[]) ===
# EM-7c-sm-macros: one macro per opcode group; bodies and per-call
#   emissions share one renderer in sm_emit_template.c, so the
#   .s and the C dispatcher cannot drift -- they are paired by
#   shape kind in render_macro_body() / render_call_line().
.macro SM_HALT
    call    scrip_rt_halt_tos@PLT
.endm
.macro SM_PUSH_INT val
    movabs  rdi, \val
    call    scrip_rt_push_int@PLT
.endm
.macro SM_PUSH_STR lbl, n
    lea     rdi, [rip + \lbl]
    mov     esi, \n
    call    scrip_rt_push_str@PLT
.endm
.macro SM_PUSH_VAR lbl
    lea     rdi, [rip + \lbl]
    call    scrip_rt_nv_get@PLT
.endm
.macro SM_STORE_VAR lbl
    lea     rdi, [rip + \lbl]
    call    scrip_rt_nv_set@PLT
.endm
.macro SM_POP
    call    scrip_rt_pop_void@PLT
.endm
.macro SM_PUSH_NULL
    call    scrip_rt_push_null@PLT
.endm
.macro SM_CONCAT
    call    scrip_rt_concat@PLT
.endm
.macro SM_COERCE_NUM
    call    scrip_rt_coerce_num@PLT
.endm
.macro SM_ARITH op
    mov     edi, \op
    call    scrip_rt_arith@PLT
.endm
.macro SM_JUMP tgt
    jmp     \tgt
.endm
.macro SM_JUMP_S tgt
    call    scrip_rt_last_ok@PLT
    test    eax, eax
    jnz     \tgt
.endm
.macro SM_JUMP_F tgt
    call    scrip_rt_last_ok@PLT
    test    eax, eax
    jz     \tgt
.endm
.macro SM_PUSH_CHUNK entry, arity
    movabs  rdi, \entry
    mov     esi, \arity
    call    scrip_rt_push_chunk_descr@PLT
.endm
.macro SM_CALL_CHUNK tgt
    call    \tgt
.endm
.macro SM_RETURN
    ret
.endm
.macro SM_CALL lbl, n
    lea     rdi, [rip + \lbl]
    mov     esi, \n
    call    scrip_rt_call@PLT
.endm
.macro SM_PAT_SPAN
    call    scrip_rt_pat_span@PLT
.endm
.macro SM_PAT_BREAK
    call    scrip_rt_pat_break@PLT
.endm
.macro SM_PAT_ANY
    call    scrip_rt_pat_any@PLT
.endm
.macro SM_PAT_NOTANY
    call    scrip_rt_pat_notany@PLT
.endm
.macro SM_PAT_LEN
    call    scrip_rt_pat_len@PLT
.endm
.macro SM_PAT_POS
    call    scrip_rt_pat_pos@PLT
.endm
.macro SM_PAT_RPOS
    call    scrip_rt_pat_rpos@PLT
.endm
.macro SM_PAT_TAB
    call    scrip_rt_pat_tab@PLT
.endm
.macro SM_PAT_RTAB
    call    scrip_rt_pat_rtab@PLT
.endm
.macro SM_PAT_ARB
    call    scrip_rt_pat_arb@PLT
.endm
.macro SM_PAT_ARBNO
    call    scrip_rt_pat_arbno@PLT
.endm
.macro SM_PAT_REM
    call    scrip_rt_pat_rem@PLT
.endm
.macro SM_PAT_FENCE
    call    scrip_rt_pat_fence@PLT
.endm
.macro SM_PAT_FENCE1
    call    scrip_rt_pat_fence1@PLT
.endm
.macro SM_PAT_FAIL
    call    scrip_rt_pat_fail@PLT
.endm
.macro SM_PAT_ABORT
    call    scrip_rt_pat_abort@PLT
.endm
.macro SM_PAT_SUCCEED
    call    scrip_rt_pat_succeed@PLT
.endm
.macro SM_PAT_BAL
    call    scrip_rt_pat_bal@PLT
.endm
.macro SM_PAT_EPS
    call    scrip_rt_pat_eps@PLT
.endm
.macro SM_PAT_CAT
    call    scrip_rt_pat_cat@PLT
.endm
.macro SM_PAT_ALT
    call    scrip_rt_pat_alt@PLT
.endm
.macro SM_PAT_DEREF
    call    scrip_rt_pat_deref@PLT
.endm
.macro SM_PAT_BOXVAL
    call    scrip_rt_pat_boxval@PLT
.endm
.macro SM_PAT_LIT lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
    call    scrip_rt_pat_lit@PLT
.endm
.macro SM_PAT_REFNAME lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
    call    scrip_rt_pat_refname@PLT
.endm
.macro SM_PAT_USERCALL lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
    call    scrip_rt_pat_usercall@PLT
.endm
.macro SM_PAT_CAPTURE n, lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
    mov     esi, \n
    call    scrip_rt_pat_capture@PLT
.endm
.macro SM_PAT_USERCALL_ARGS n, lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
    mov     esi, \n
    call    scrip_rt_pat_usercall_args@PLT
.endm
.macro SM_PAT_CAPTURE_FN is_imm, fname_lbl, namelist_lbl
    .ifnb \fname_lbl
        lea     rdi, [rip + \fname_lbl]
    .else
        xor     edi, edi
    .endif
    mov     esi, \is_imm
    .ifnb \namelist_lbl
        lea     rdx, [rip + \namelist_lbl]
    .else
        xor     edx, edx
    .endif
    call    scrip_rt_pat_capture_fn@PLT
.endm
.macro SM_PAT_CAPTURE_FN_ARGS is_imm, nargs, fname_lbl
    .ifnb \fname_lbl
        lea     rdi, [rip + \fname_lbl]
    .else
        xor     edi, edi
    .endif
    mov     esi, \is_imm
    mov     edx, \nargs
    call    scrip_rt_pat_capture_fn_args@PLT
.endm
.macro SM_EXEC_STMT_VARIANT has_repl, subj_lbl
    .ifnb \subj_lbl
        lea     rdi, [rip + \subj_lbl]
    .else
        xor     edi, edi
    .endif
    mov     esi, \has_repl
    call    scrip_rt_match_variant@PLT
.endm
.macro SM_UNHANDLED op
    mov     edi, \op
    call    scrip_rt_unhandled_op@PLT
.endm
.macro SM_RETURN_VARIANT kind, cond, pc
    mov     edi, \kind
    mov     esi, \cond
    call    scrip_rt_do_return@PLT
    test    eax, eax
    jz      .Lretskip_\pc
    ret
.Lretskip_\pc\():
.endm
# === END sm macro library ===

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
# Include SM opcode macro library (one macro per opcode group)
# .include "sm_macros.s"  # assembled separately; macros used by name below
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
# source-file: /home/claude/corpus/programs/snobol4/demo/wordcount.sno  (13 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 2  (line 2):  *     Tests: BREAK/SPAN word boundary detection, hyphenated and
# ============================================================================
.Lpc1:                  
	SM_PUSH_INT 1
.Lpc2:                  
	SM_STORE_VAR .Lstr_0  # store -> TRIM
.Lpc3:                  

# ============================================================================
# stmt 3  (line 3):  *            apostrophe-joined words (it's, well-known count as one word each).
# ============================================================================
.Lpc4:                  
	SM_PUSH_STR .Lstr_1, 0  # str="0123456789"
.Lpc5:                  
	SM_STORE_VAR .Lstr_2  # store -> NUMERALS
.Lpc6:                  

# ============================================================================
# stmt 4
# ============================================================================
.Lpc7:                  
	SM_PUSH_STR .Lstr_3, 0  # str="'-"
.Lpc8:                  
	SM_PUSH_VAR .Lstr_2  # var=NUMERALS
.Lpc9:                  
	SM_PUSH_VAR .Lstr_4  # var=UCASE
.Lpc10:                 
	SM_PUSH_VAR .Lstr_5  # var=LCASE
.Lpc11:                 
	SM_CONCAT  # SM_CONCAT
.Lpc12:                 
	SM_CONCAT  # SM_CONCAT
.Lpc13:                 
	SM_CONCAT  # SM_CONCAT
.Lpc14:                 
	SM_STORE_VAR .Lstr_6  # store -> WORD
.Lpc15:                 

# ============================================================================
# stmt 5  (line 5):        &TRIM    =  1
# ============================================================================
.Lpc16:                 
	SM_PUSH_VAR .Lstr_6  # var=WORD
.Lpc17:                 
	SM_PAT_BREAK  # SM_PAT_BREAK
.Lpc18:                 
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc19:                 
	SM_PUSH_VAR .Lstr_6  # var=WORD
.Lpc20:                 
	SM_PAT_SPAN  # SM_PAT_SPAN
.Lpc21:                 
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc22:                 
	SM_CONCAT  # SM_CONCAT
.Lpc23:                 
	SM_STORE_VAR .Lstr_7  # store -> WPAT
.Lpc24:                 
.Lpc25:                 

# ============================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
# ============================================================================
.Lpc26:                 
	SM_PUSH_VAR .Lstr_9  # var=INPUT
.Lpc27:                 
	SM_STORE_VAR .Lstr_10  # store -> LINE
.Lpc28:                 
	SM_JUMP_F .Lpc43  # SM_JUMP_F -> pc=43
.Lpc29:                 
.Lpc30:                 

# ============================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
.Lpc31:                 
	SM_PUSH_VAR .Lstr_7  # var=WPAT
.Lpc32:                 
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc33:                 
	SM_PUSH_VAR .Lstr_10  # var=LINE
.Lpc34:                 
	SM_PUSH_STR .Lstr_12, 0  # str=""
.Lpc35:                 
	SM_EXEC_STMT_VARIANT 1, .Lstr_10  # SM_EXEC_STMT_VARIANT subj=LINE has_repl=1
.Lpc36:                 
	SM_JUMP_F .Lpc24  # SM_JUMP_F -> pc=24
.Lpc37:                 

# ============================================================================
# stmt 8  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
# ============================================================================
.Lpc38:                 
	SM_PUSH_VAR .Lstr_13  # var=N
.Lpc39:                 
	SM_PUSH_INT 1
.Lpc40:                 
	SM_ARITH 17  # SM_ADD
.Lpc41:                 
	SM_STORE_VAR .Lstr_13  # store -> N
.Lpc42:                 
	SM_JUMP .Lpc29  # SM_JUMP -> pc=29
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
# ============================================================================
.Lpc45:                 
	SM_PUSH_VAR .Lstr_13  # var=N
.Lpc46:                 
	SM_COERCE_NUM  # SM_COERCE_NUM
.Lpc47:                 
	SM_PUSH_STR .Lstr_15, 0  # str=" words"
.Lpc48:                 
	SM_CONCAT  # SM_CONCAT
.Lpc49:                 
	SM_STORE_VAR .Lstr_16  # store -> OUTPUT
.Lpc50:                 
.Lpc51:                 

# ============================================================================
# stmt 10  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ============================================================================
.Lpc52:                 
	SM_HALT  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
