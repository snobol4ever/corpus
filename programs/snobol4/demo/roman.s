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
	.string "ROMAN(N)UNITS"
.Lstr_1:
	.string "DEFINE"
.Lstr_2:
	.string "ROMAN"
.Lstr_3:
	.string "UNITS"
.Lstr_4:
	.string "N"
.Lstr_5:
	.string ""
.Lstr_6:
	.string ","
.Lstr_7:
	.string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: ROMAN -> .Lpc6
	.quad   .Lstr_2
	.quad   .Lpc6
	.quad   0
	.quad   0
	.text

# ============================================================================
# EM-7c: invariant pattern blobs (baked from sm_phase2_to_patnd → bb_build_flat_text)
# Each block exposes _pat_inv_<id>_α / _β / _γ / _ω.
# scrip_rt_match_blob(blob_α, ...) drives Phase-3 against these blobs.
# ============================================================================
	.intel_syntax noprefix
	.text

# ---- pattern blob 0 (Phase-2 window pc=7..12, SM_EXEC_STMT pc=15) ----
.global _pat_inv_0_α
.global _pat_inv_0_β
.global _pat_inv_0_γ
.global _pat_inv_0_ω
_pat_inv_0_α:
    lea     r10, [rip + Δ]
    cmp     esi, 0
    je      _pat_inv_0_α_body
    jmp     _pat_inv_0_β
_pat_inv_0_α_body:
    lea     rcx, [rip + Σlen]
    mov     eax, [rcx]
    sub     eax, 0
    mov     ecx, eax
    mov     eax, [r10]
    cmp     eax, ecx
    jne     xcat0_o
    jmp     xcat0_mid_g
xcat0_left_b:
    jmp     xcat0_o
xcat0_mid_g:
	.section .data
.Lcap1_vname:
	.string ""
.Lcap1_data:
	.quad 0
	.quad 0
	.long 0
	.long 0
	.long 0
	.long 0
	.quad .Lcap1_vname
	.zero 56
	.zero 24
	.section .text
	.intel_syntax noprefix
	.globl  _cap1_child_α
_cap1_child_α:
    lea     r10, [rip + Δ]
    cmp     esi, 0
    je      _cap1_ab
    jmp     _cap1_cb
_cap1_ab:
	.section .data
.Llen2_z:
	.long 0
	.section .text
	.intel_syntax noprefix
	lea     rdi, [rip + .Llen2_z]
	mov     esi, 0
	call    bb_len@PLT
	test    rax, rax
    jne     _cap1_cs
    jmp     _cap1_cf
_cap1_cb:
	lea     rdi, [rip + .Llen2_z]
	mov     esi, 1
	call    bb_len@PLT
	test    rax, rax
    jne     _cap1_cs
    jmp     _cap1_cf
_cap1_cs:
    lea     rcx, [rip + Σ]
    mov     rax, [rcx]
    movsxd  rcx, dword ptr [r10]
    lea     rax, [rax+rcx]
    mov     rdx, rax
    mov     eax, 1
    ret
_cap1_cf:
    mov     eax, 99
    xor     edx, edx
    ret
	# XNME/XFNME cap box (static cap_t at .Lcap1_data)
	lea     rdi, [rip + .Lcap1_data]
	mov     esi, 0
	call    bb_cap@PLT
	test    rax, rax
    jne     _pat_inv_0_γ
    jmp     xcat0_right_o
xcat0_right_b:
	lea     rdi, [rip + .Lcap1_data]
	mov     esi, 1
	call    bb_cap@PLT
	test    rax, rax
    jne     _pat_inv_0_γ
    jmp     xcat0_right_o
xcat0_right_o:
    jmp     xcat0_left_b
_pat_inv_0_β:
    jmp     xcat0_right_b
xcat0_o:
    jmp     _pat_inv_0_ω
_pat_inv_0_γ:
    lea     rcx, [rip + Σ]
    mov     rax, [rcx]
    movsxd  rcx, dword ptr [r10]
    lea     rax, [rax+rcx]
    mov     rdx, rax
    mov     eax, 1
    ret
_pat_inv_0_ω:
    mov     eax, 99
    xor     edx, edx
    ret
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-7d)
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
	# EM-7d: register user-defined function chunks
	lea     rdi, [rip + .Lchunk_registry]
	call    scrip_rt_register_chunks@PLT
	# cap fixup 0 (cap static): .Lcap1_data -> _cap1_child_α
	lea     rdi, [rip + .Lcap1_data]
	lea     rsi, [rip + _cap1_child_α]
	call    scrip_rt_patch_cap_fn@PLT
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
	SM_PUSH_STR .Lstr_0, 0  # str="ROMAN(N)UNITS"
.Lpc2:                  
	SM_CALL .Lstr_1, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc3:                  
	SM_POP  # SM_POP: discard TOS
.Lpc4:                  
	SM_JUMP .Lpc28  # SM_JUMP -> pc=28
.Lpc5:                  
.Lpc6:                  

# ============================================================================
# stmt 4  (line 10):  ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
# ============================================================================
.Lpc7:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc8:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_RPOS)
.Lpc9:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc10:                 
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_LEN)
.Lpc11:                 
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_CAPTURE)
.Lpc12:                 
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_CAT)
.Lpc13:                 
	SM_PUSH_VAR .Lstr_4  # var=N
.Lpc14:                 
	SM_PUSH_STR .Lstr_5, 0  # str=""
.Lpc15:                 
                        lea     rdi, [rip + _pat_inv_0_α]  # blob entry α  (Phase-2 pc=7..12)
                        lea     rsi, [rip + .Lstr_4]        # subj_name=N
                        mov     edx, 1                      # has_repl=1
                        call    scrip_rt_match_blob@PLT     # EM-7c: Phase-3+5 against baked invariant blob
.Lpc16:                 
	SM_RETURN_VARIANT 0, 2, 16  # SM_RETURN_F
.Lpc17:                 

# ============================================================================
# stmt 6  (line 6):  	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ============================================================================
.Lpc18:                 
	SM_PUSH_VAR .Lstr_3  # var=UNITS
.Lpc19:                 
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc20:                 
	SM_PUSH_STR .Lstr_6, 0  # str=","
.Lpc21:                 
	SM_PAT_BREAK  # SM_PAT_BREAK
.Lpc22:                 
	SM_PAT_CAPTURE 0, .Lstr_3  # SM_PAT_CAPTURE var=UNITS kind=0
.Lpc23:                 
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc24:                 
	SM_PUSH_STR .Lstr_7, 0  # str="0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
.Lpc25:                 
	SM_PUSH_INT 0
.Lpc26:                 
	SM_EXEC_STMT_VARIANT 0  # SM_EXEC_STMT_VARIANT subj=NULL has_repl=0
.Lpc27:                 
	SM_RETURN_VARIANT 1, 2, 27  # SM_FRETURN_F
.Lpc28:                 
	SM_HALT  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
