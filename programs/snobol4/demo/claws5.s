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
	.string "nl"
.Lstr_1:
	.string "ALPHABET"
.Lstr_2:
	.string "0123456789"
.Lstr_3:
	.string "DIGITS"
.Lstr_4:
	.string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.Lstr_5:
	.string "UCASE"
.Lstr_6:
	.string "new_sent()"
.Lstr_7:
	.string "DEFINE"
.Lstr_8:
	.string "new_sent"
.Lstr_9:
	.string "num"
.Lstr_10:
	.string "sentno"
.Lstr_11:
	.string "TABLE"
.Lstr_12:
	.string "mem"
.Lstr_13:
	.string "IDX_SET"
.Lstr_14:
	.string "dummy"
.Lstr_15:
	.string "NAME_PUSH"
.Lstr_16:
	.string "new_sent_end"
.Lstr_17:
	.string "add_tok()"
.Lstr_18:
	.string "add_tok"
.Lstr_19:
	.string "IDX"
.Lstr_20:
	.string "wrd"
.Lstr_21:
	.string "DIFFER"
.Lstr_22:
	.string "tag"
.Lstr_23:
	.string "new_wrd"
.Lstr_24:
	.string "new_tag"
.Lstr_25:
	.string "done"
.Lstr_26:
	.string "add_tok_end"
.Lstr_27:
	.string "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
.Lstr_28:
	.string "pp_mem"
.Lstr_29:
	.string "SORT"
.Lstr_30:
	.string "ssk"
.Lstr_31:
	.string "si"
.Lstr_32:
	.string "ns"
.Lstr_33:
	.string "pm_cnt_loop"
.Lstr_34:
	.string "pm_sent_loop"
.Lstr_35:
	.string ""
.Lstr_36:
	.string "last_sent"
.Lstr_37:
	.string "IDENT"
.Lstr_38:
	.string " "
.Lstr_39:
	.string "SIZE"
.Lstr_40:
	.string "DUPL"
.Lstr_41:
	.string "pad"
.Lstr_42:
	.string "EQ"
.Lstr_43:
	.string "{"
.Lstr_44:
	.string ": {"
.Lstr_45:
	.string "pfx"
.Lstr_46:
	.string "NE"
.Lstr_47:
	.string "wsk"
.Lstr_48:
	.string "wi"
.Lstr_49:
	.string "pm_wrd_loop"
.Lstr_50:
	.string "wkey"
.Lstr_51:
	.string "next_wkey"
.Lstr_52:
	.string "ARB"
.Lstr_53:
	.string "'"
.Lstr_54:
	.string "\""
.Lstr_55:
	.string "wq"
.Lstr_56:
	.string "pm_sq"
.Lstr_57:
	.string "pm_tdict"
.Lstr_58:
	.string "tsk"
.Lstr_59:
	.string "ti"
.Lstr_60:
	.string "tline"
.Lstr_61:
	.string "pm_tag_loop"
.Lstr_62:
	.string "tv"
.Lstr_63:
	.string "': "
.Lstr_64:
	.string "pm_tag_sep"
.Lstr_65:
	.string ", "
.Lstr_66:
	.string "pm_tag_close"
.Lstr_67:
	.string "}"
.Lstr_68:
	.string "GT"
.Lstr_69:
	.string ": "
.Lstr_70:
	.string ","
.Lstr_71:
	.string "OUTPUT"
.Lstr_72:
	.string "pm_mid_wrd"
.Lstr_73:
	.string "pm_last_wrd"
.Lstr_74:
	.string "lline"
.Lstr_75:
	.string "pm_last_mid"
.Lstr_76:
	.string "pm_last_emit"
.Lstr_77:
	.string "}}"
.Lstr_78:
	.string "pm_last_mid2"
.Lstr_79:
	.string "},"
.Lstr_80:
	.string "pm_done"
.Lstr_81:
	.string "pp_mem_end"
.Lstr_82:
	.string "slurp"
.Lstr_83:
	.string "INPUT"
.Lstr_84:
	.string "line"
.Lstr_85:
	.string "src"
.Lstr_86:
	.string "slurp_done"
.Lstr_87:
	.string "_CRD :_PUN"
.Lstr_88:
	.string "epsilon"
.Lstr_89:
	.string "_"
.Lstr_90:
	.string "claws"
.Lstr_91:
	.string "fail"
.Lstr_92:
	.string "Pattern match failed"
.Lstr_93:
	.string "END"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: new_sent -> .Lpc22
	.quad   .Lstr_8
	.quad   .Lpc22
	# chunk: new_sent_end -> .Lpc37
	.quad   .Lstr_16
	.quad   .Lpc37
	# chunk: add_tok -> .Lpc44
	.quad   .Lstr_18
	.quad   .Lpc44
	# chunk: new_wrd -> .Lpc83
	.quad   .Lstr_23
	.quad   .Lpc83
	# chunk: new_tag -> .Lpc91
	.quad   .Lstr_24
	.quad   .Lpc91
	# chunk: done -> .Lpc101
	.quad   .Lstr_25
	.quad   .Lpc101
	# chunk: add_tok_end -> .Lpc107
	.quad   .Lstr_26
	.quad   .Lpc107
	# chunk: pp_mem -> .Lpc114
	.quad   .Lstr_28
	.quad   .Lpc114
	# chunk: pm_cnt_loop -> .Lpc125
	.quad   .Lstr_33
	.quad   .Lpc125
	# chunk: pm_sent_loop -> .Lpc146
	.quad   .Lstr_34
	.quad   .Lpc146
	# chunk: pm_wrd_loop -> .Lpc208
	.quad   .Lstr_49
	.quad   .Lpc208
	# chunk: pm_sq -> .Lpc252
	.quad   .Lstr_56
	.quad   .Lpc252
	# chunk: pm_tdict -> .Lpc260
	.quad   .Lstr_57
	.quad   .Lpc260
	# chunk: pm_tag_loop -> .Lpc275
	.quad   .Lstr_61
	.quad   .Lpc275
	# chunk: pm_tag_sep -> .Lpc315
	.quad   .Lstr_64
	.quad   .Lpc315
	# chunk: pm_tag_close -> .Lpc330
	.quad   .Lstr_66
	.quad   .Lpc330
	# chunk: pm_mid_wrd -> .Lpc361
	.quad   .Lstr_72
	.quad   .Lpc361
	# chunk: pm_last_wrd -> .Lpc374
	.quad   .Lstr_73
	.quad   .Lpc374
	# chunk: pm_last_mid -> .Lpc391
	.quad   .Lstr_75
	.quad   .Lpc391
	# chunk: pm_last_emit -> .Lpc401
	.quad   .Lstr_76
	.quad   .Lpc401
	# chunk: pm_last_mid2 -> .Lpc414
	.quad   .Lstr_78
	.quad   .Lpc414
	# chunk: pm_done -> .Lpc421
	.quad   .Lstr_80
	.quad   .Lpc421
	# chunk: pp_mem_end -> .Lpc427
	.quad   .Lstr_81
	.quad   .Lpc427
	# chunk: slurp -> .Lpc429
	.quad   .Lstr_82
	.quad   .Lpc429
	# chunk: slurp_done -> .Lpc440
	.quad   .Lstr_86
	.quad   .Lpc440
	# chunk: fail -> .Lpc502
	.quad   .Lstr_91
	.quad   .Lpc502
	# chunk: END -> .Lpc506
	.quad   .Lstr_93
	.quad   .Lpc506
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

# ---- pattern blob 0 (Phase-2 window pc=1..6, SM_EXEC_STMT pc=9) ----
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
    mov     eax, [r10]
    cmp     eax, 0
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
# 508 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/claws5.sno  (98 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc1:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc2:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_POS)
.Lpc3:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc4:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_LEN)
.Lpc5:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_CAPTURE)
.Lpc6:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_CAT)
.Lpc7:                  
	SM_PUSH_VAR .Lstr_1  # var=ALPHABET
.Lpc8:                  
	SM_PUSH_INT 0
.Lpc9:                  
                        lea     rdi, [rip + _pat_inv_0_α]  # blob entry α  (Phase-2 pc=1..6)
                        lea     rsi, [rip + .Lstr_1]        # subj_name=ALPHABET
                        mov     edx, 0                      # has_repl=0
                        call    scrip_rt_match_blob@PLT     # EM-7c: Phase-3+5 against baked invariant blob
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * claws5.sno — CLAWS5 POS-tagged corpus tokenizer (one-phase)
# ============================================================================
.Lpc11:                 
	SM_PUSH_STR .Lstr_2, 0  # str="0123456789"
.Lpc12:                 
	SM_STORE_VAR .Lstr_3  # store -> DIGITS
.Lpc13:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc14:                 
	SM_PUSH_STR .Lstr_4, 0  # str="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.Lpc15:                 
	SM_STORE_VAR .Lstr_5  # store -> UCASE
.Lpc16:                 

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 34000 claws5.sno < claws5.input
# ============================================================================
.Lpc17:                 
	SM_PUSH_STR .Lstr_6, 0  # str="new_sent()"
.Lpc18:                 
	SM_CALL .Lstr_7, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc19:                 
	SM_POP  # SM_POP: discard TOS
.Lpc20:                 
	SM_JUMP .Lpc36  # SM_JUMP -> pc=36
.Lpc21:                 
.Lpc22:                 

# ============================================================================
# stmt 5  (line 13):  new_sent        sentno          =  +num
# ============================================================================
.Lpc23:                 
	SM_PUSH_VAR .Lstr_9  # var=num
.Lpc24:                 
	SM_COERCE_NUM  # SM_COERCE_NUM
.Lpc25:                 
	SM_STORE_VAR .Lstr_10  # store -> sentno
.Lpc26:                 

# ============================================================================
# stmt 6  (line 6):  * Memory: -P 34000 required only for full corpus (CLAWS5inTASA.dat, 989 lines).
# ============================================================================
.Lpc27:                 
	SM_CALL .Lstr_11, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc28:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc29:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc30:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc31:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc32:                 
	SM_PUSH_STR .Lstr_14, 0  # str="dummy"
.Lpc33:                 
	SM_CALL .Lstr_15, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc34:                 
	SM_STORE_VAR .Lstr_8  # store -> new_sent
.Lpc35:                 
	SM_RETURN_VARIANT 2, 0, 35  # SM_NRETURN
.Lpc36:                 
.Lpc37:                 

# ============================================================================
# stmt 8  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc38:                 

# ============================================================================
# stmt 9  (line 9):                  DIGITS          =  '0123456789'
# ============================================================================
.Lpc39:                 
	SM_PUSH_STR .Lstr_17, 0  # str="add_tok()"
.Lpc40:                 
	SM_CALL .Lstr_7, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc41:                 
	SM_POP  # SM_POP: discard TOS
.Lpc42:                 
	SM_JUMP .Lpc106  # SM_JUMP -> pc=106
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 10  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
.Lpc45:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc46:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc47:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc48:                 
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc49:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc50:                 
	SM_CALL .Lstr_21, 1  # SM_CALL fname="DIFFER" nargs=1
.Lpc51:                 
	SM_POP  # SM_POP: discard TOS
.Lpc52:                 
	SM_JUMP_F .Lpc82  # SM_JUMP_F -> pc=82
.Lpc53:                 

# ============================================================================
# stmt 11  (line 11):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc54:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc55:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc56:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc57:                 
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc58:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc59:                 
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc60:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc61:                 
	SM_CALL .Lstr_21, 1  # SM_CALL fname="DIFFER" nargs=1
.Lpc62:                 
	SM_POP  # SM_POP: discard TOS
.Lpc63:                 
	SM_JUMP_F .Lpc90  # SM_JUMP_F -> pc=90
.Lpc64:                 

# ============================================================================
# stmt 12  (line 12):                  DEFINE('new_sent()')                            :(new_sent_end)
# ============================================================================
.Lpc65:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc66:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc67:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc68:                 
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc69:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc70:                 
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc71:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc72:                 
	SM_PUSH_INT 1
.Lpc73:                 
	SM_ARITH 17  # SM_ADD
.Lpc74:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc75:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc76:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc77:                 
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc78:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc79:                 
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc80:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc81:                 
	SM_JUMP .Lpc100  # SM_JUMP -> pc=100
.Lpc82:                 
.Lpc83:                 

# ============================================================================
# stmt 13  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
.Lpc84:                 
	SM_CALL .Lstr_11, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc85:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc86:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc87:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc88:                 
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc89:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc90:                 
.Lpc91:                 

# ============================================================================
# stmt 14  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
.Lpc92:                 
	SM_PUSH_INT 1
.Lpc93:                 
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc94:                 
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc95:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc96:                 
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc97:                 
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc98:                 
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc99:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc100:                
.Lpc101:                

# ============================================================================
# stmt 15  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
.Lpc102:                
	SM_PUSH_STR .Lstr_14, 0  # str="dummy"
.Lpc103:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc104:                
	SM_STORE_VAR .Lstr_18  # store -> add_tok
.Lpc105:                
	SM_RETURN_VARIANT 2, 0, 105  # SM_NRETURN
.Lpc106:                
.Lpc107:                

# ============================================================================
# stmt 16  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc108:                

# ============================================================================
# stmt 17  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc109:                
	SM_PUSH_STR .Lstr_27, 0  # str="pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,..."
.Lpc110:                
	SM_CALL .Lstr_7, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc111:                
	SM_POP  # SM_POP: discard TOS
.Lpc112:                
	SM_JUMP .Lpc426  # SM_JUMP -> pc=426
.Lpc113:                
.Lpc114:                

# ============================================================================
# stmt 18  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
.Lpc115:                
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc116:                
	SM_CALL .Lstr_29, 1  # SM_CALL fname="SORT" nargs=1
.Lpc117:                
	SM_STORE_VAR .Lstr_30  # store -> ssk
.Lpc118:                

# ============================================================================
# stmt 19  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
.Lpc119:                
	SM_PUSH_INT 0
.Lpc120:                
	SM_STORE_VAR .Lstr_31  # store -> si
.Lpc121:                

# ============================================================================
# stmt 20  (line 20):                  DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
# ============================================================================
.Lpc122:                
	SM_PUSH_INT 0
.Lpc123:                
	SM_STORE_VAR .Lstr_32  # store -> ns
.Lpc124:                
.Lpc125:                

# ============================================================================
# stmt 21  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
.Lpc126:                
	SM_PUSH_VAR .Lstr_32  # var=ns
.Lpc127:                
	SM_PUSH_INT 1
.Lpc128:                
	SM_ARITH 17  # SM_ADD
.Lpc129:                
	SM_STORE_VAR .Lstr_32  # store -> ns
.Lpc130:                

# ============================================================================
# stmt 22  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
.Lpc131:                
	SM_PUSH_VAR .Lstr_30  # var=ssk
.Lpc132:                
	SM_PUSH_VAR .Lstr_32  # var=ns
.Lpc133:                
	SM_PUSH_INT 1
.Lpc134:                
	SM_CALL .Lstr_19, 3  # SM_CALL fname="IDX" nargs=3
.Lpc135:                
	SM_POP  # SM_POP: discard TOS
.Lpc136:                
	SM_JUMP_S .Lpc124  # SM_JUMP_S -> pc=124
.Lpc137:                

# ============================================================================
# stmt 23  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
.Lpc138:                
	SM_PUSH_VAR .Lstr_32  # var=ns
.Lpc139:                
	SM_PUSH_INT 1
.Lpc140:                
	SM_ARITH 18  # SM_SUB
.Lpc141:                
	SM_STORE_VAR .Lstr_32  # store -> ns
.Lpc142:                

# ============================================================================
# stmt 24  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
.Lpc143:                
	SM_PUSH_INT 0
.Lpc144:                
	SM_STORE_VAR .Lstr_31  # store -> si
.Lpc145:                
.Lpc146:                

# ============================================================================
# stmt 25  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
.Lpc147:                
	SM_PUSH_VAR .Lstr_31  # var=si
.Lpc148:                
	SM_PUSH_INT 1
.Lpc149:                
	SM_ARITH 17  # SM_ADD
.Lpc150:                
	SM_STORE_VAR .Lstr_31  # store -> si
.Lpc151:                

# ============================================================================
# stmt 26  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc152:                
	SM_PUSH_VAR .Lstr_30  # var=ssk
.Lpc153:                
	SM_PUSH_VAR .Lstr_31  # var=si
.Lpc154:                
	SM_PUSH_INT 1
.Lpc155:                
	SM_CALL .Lstr_19, 3  # SM_CALL fname="IDX" nargs=3
.Lpc156:                
	SM_STORE_VAR .Lstr_10  # store -> sentno
.Lpc157:                
	SM_JUMP_F .Lpc420  # SM_JUMP_F -> pc=420
.Lpc158:                

# ============================================================================
# stmt 27  (line 27):                  DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
# ============================================================================
.Lpc159:                
	SM_PUSH_STR .Lstr_35, 0  # str=""
.Lpc160:                
	SM_STORE_VAR .Lstr_36  # store -> last_sent
.Lpc161:                

# ============================================================================
# stmt 28  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
.Lpc162:                
	SM_PUSH_VAR .Lstr_31  # var=si
.Lpc163:                
	SM_PUSH_VAR .Lstr_32  # var=ns
.Lpc164:                
	SM_CALL .Lstr_37, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc165:                
	SM_PUSH_INT 1
.Lpc166:                
	SM_CONCAT  # SM_CONCAT
.Lpc167:                
	SM_STORE_VAR .Lstr_36  # store -> last_sent
.Lpc168:                

# ============================================================================
# stmt 29  (line 29):                  si              =   0
# ============================================================================
.Lpc169:                
	SM_PUSH_STR .Lstr_38, 0  # str=" "
.Lpc170:                
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc171:                
	SM_CALL .Lstr_39, 1  # SM_CALL fname="SIZE" nargs=1
.Lpc172:                
	SM_PUSH_INT 4
.Lpc173:                
	SM_ARITH 17  # SM_ADD
.Lpc174:                
	SM_CALL .Lstr_40, 2  # SM_CALL fname="DUPL" nargs=2
.Lpc175:                
	SM_STORE_VAR .Lstr_41  # store -> pad
.Lpc176:                

# ============================================================================
# stmt 30  (line 30):                  ns              =   0
# ============================================================================
.Lpc177:                
	SM_PUSH_VAR .Lstr_31  # var=si
.Lpc178:                
	SM_PUSH_INT 1
.Lpc179:                
	SM_CALL .Lstr_42, 2  # SM_CALL fname="EQ" nargs=2
.Lpc180:                
	SM_PUSH_STR .Lstr_43, 0  # str="{"
.Lpc181:                
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc182:                
	SM_PUSH_STR .Lstr_44, 0  # str=": {"
.Lpc183:                
	SM_CONCAT  # SM_CONCAT
.Lpc184:                
	SM_CONCAT  # SM_CONCAT
.Lpc185:                
	SM_CONCAT  # SM_CONCAT
.Lpc186:                
	SM_STORE_VAR .Lstr_45  # store -> pfx
.Lpc187:                

# ============================================================================
# stmt 31  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
.Lpc188:                
	SM_PUSH_VAR .Lstr_31  # var=si
.Lpc189:                
	SM_PUSH_INT 1
.Lpc190:                
	SM_CALL .Lstr_46, 2  # SM_CALL fname="NE" nargs=2
.Lpc191:                
	SM_PUSH_STR .Lstr_38, 0  # str=" "
.Lpc192:                
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc193:                
	SM_PUSH_STR .Lstr_44, 0  # str=": {"
.Lpc194:                
	SM_CONCAT  # SM_CONCAT
.Lpc195:                
	SM_CONCAT  # SM_CONCAT
.Lpc196:                
	SM_CONCAT  # SM_CONCAT
.Lpc197:                
	SM_STORE_VAR .Lstr_45  # store -> pfx
.Lpc198:                

# ============================================================================
# stmt 32  (line 32):                  ssk[ns,1]                                       :S(pm_cnt_loop)
# ============================================================================
.Lpc199:                
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc200:                
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc201:                
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc202:                
	SM_CALL .Lstr_29, 1  # SM_CALL fname="SORT" nargs=1
.Lpc203:                
	SM_STORE_VAR .Lstr_47  # store -> wsk
.Lpc204:                

# ============================================================================
# stmt 33  (line 33):                  ns              =   ns - 1
# ============================================================================
.Lpc205:                
	SM_PUSH_INT 0
.Lpc206:                
	SM_STORE_VAR .Lstr_48  # store -> wi
.Lpc207:                
.Lpc208:                

# ============================================================================
# stmt 34  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
.Lpc209:                
	SM_PUSH_VAR .Lstr_48  # var=wi
.Lpc210:                
	SM_PUSH_INT 1
.Lpc211:                
	SM_ARITH 17  # SM_ADD
.Lpc212:                
	SM_STORE_VAR .Lstr_48  # store -> wi
.Lpc213:                

# ============================================================================
# stmt 35  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
.Lpc214:                
	SM_PUSH_VAR .Lstr_47  # var=wsk
.Lpc215:                
	SM_PUSH_VAR .Lstr_48  # var=wi
.Lpc216:                
	SM_PUSH_INT 1
.Lpc217:                
	SM_CALL .Lstr_19, 3  # SM_CALL fname="IDX" nargs=3
.Lpc218:                
	SM_STORE_VAR .Lstr_50  # store -> wkey
.Lpc219:                
	SM_JUMP_F .Lpc145  # SM_JUMP_F -> pc=145
.Lpc220:                

# ============================================================================
# stmt 36  (line 36):                  sentno          =   ssk[si,1]                   :F(pm_done)
# ============================================================================
.Lpc221:                
	SM_PUSH_STR .Lstr_35, 0  # str=""
.Lpc222:                
	SM_STORE_VAR .Lstr_51  # store -> next_wkey
.Lpc223:                

# ============================================================================
# stmt 37  (line 37):                  last_sent       =   ''
# ============================================================================
.Lpc224:                
	SM_PUSH_VAR .Lstr_47  # var=wsk
.Lpc225:                
	SM_PUSH_VAR .Lstr_48  # var=wi
.Lpc226:                
	SM_PUSH_INT 1
.Lpc227:                
	SM_ARITH 17  # SM_ADD
.Lpc228:                
	SM_PUSH_INT 1
.Lpc229:                
	SM_CALL .Lstr_19, 3  # SM_CALL fname="IDX" nargs=3
.Lpc230:                
	SM_STORE_VAR .Lstr_51  # store -> next_wkey
.Lpc231:                

# ============================================================================
# stmt 38  (line 38):                  last_sent       =   IDENT(si, ns) 1
# ============================================================================
.Lpc232:                
	SM_PUSH_VAR .Lstr_50  # var=wkey
.Lpc233:                
	SM_STORE_VAR .Lstr_20  # store -> wrd
.Lpc234:                

# ============================================================================
# stmt 39  (line 39):                  pad             =   DUPL(' ', SIZE(sentno) + 4)
# ============================================================================
.Lpc235:                
	SM_PUSH_VAR .Lstr_52  # var=ARB
.Lpc236:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc237:                
	SM_PAT_LIT .Lstr_53  # SM_PAT_LIT arg="'"
.Lpc238:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc239:                
	SM_PUSH_VAR .Lstr_20  # var=wrd
.Lpc240:                
	SM_PUSH_STR .Lstr_35, 0  # str=""
.Lpc241:                
	SM_EXEC_STMT_VARIANT 1, .Lstr_20  # SM_EXEC_STMT_VARIANT subj=wrd has_repl=1
.Lpc242:                
	SM_JUMP_F .Lpc251  # SM_JUMP_F -> pc=251
.Lpc243:                

# ============================================================================
# stmt 40  (line 40):                  pfx             =   EQ(si, 1) '{' sentno ': {'
# ============================================================================
.Lpc244:                
	SM_PUSH_STR .Lstr_54, 0  # str="\""
.Lpc245:                
	SM_PUSH_VAR .Lstr_50  # var=wkey
.Lpc246:                
	SM_PUSH_STR .Lstr_54, 0  # str="\""
.Lpc247:                
	SM_CONCAT  # SM_CONCAT
.Lpc248:                
	SM_CONCAT  # SM_CONCAT
.Lpc249:                
	SM_STORE_VAR .Lstr_55  # store -> wq
.Lpc250:                
	SM_JUMP .Lpc259  # SM_JUMP -> pc=259
.Lpc251:                
.Lpc252:                

# ============================================================================
# stmt 41  (line 51):  pm_sq           wq              =   "'" wkey "'"
# ============================================================================
.Lpc253:                
	SM_PUSH_STR .Lstr_53, 0  # str="'"
.Lpc254:                
	SM_PUSH_VAR .Lstr_50  # var=wkey
.Lpc255:                
	SM_PUSH_STR .Lstr_53, 0  # str="'"
.Lpc256:                
	SM_CONCAT  # SM_CONCAT
.Lpc257:                
	SM_CONCAT  # SM_CONCAT
.Lpc258:                
	SM_STORE_VAR .Lstr_55  # store -> wq
.Lpc259:                
.Lpc260:                

# ============================================================================
# stmt 42  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
.Lpc261:                
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc262:                
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc263:                
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc264:                
	SM_PUSH_VAR .Lstr_50  # var=wkey
.Lpc265:                
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc266:                
	SM_CALL .Lstr_29, 1  # SM_CALL fname="SORT" nargs=1
.Lpc267:                
	SM_STORE_VAR .Lstr_58  # store -> tsk
.Lpc268:                

# ============================================================================
# stmt 43  (line 43):                  wi              =   0
# ============================================================================
.Lpc269:                
	SM_PUSH_INT 0
.Lpc270:                
	SM_STORE_VAR .Lstr_59  # store -> ti
.Lpc271:                

# ============================================================================
# stmt 44  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
.Lpc272:                
	SM_PUSH_STR .Lstr_43, 0  # str="{"
.Lpc273:                
	SM_STORE_VAR .Lstr_60  # store -> tline
.Lpc274:                
.Lpc275:                

# ============================================================================
# stmt 45  (line 55):  pm_tag_loop     ti              =   ti + 1
# ============================================================================
.Lpc276:                
	SM_PUSH_VAR .Lstr_59  # var=ti
.Lpc277:                
	SM_PUSH_INT 1
.Lpc278:                
	SM_ARITH 17  # SM_ADD
.Lpc279:                
	SM_STORE_VAR .Lstr_59  # store -> ti
.Lpc280:                

# ============================================================================
# stmt 46  (line 46):                  next_wkey       =   ''
# ============================================================================
.Lpc281:                
	SM_PUSH_VAR .Lstr_58  # var=tsk
.Lpc282:                
	SM_PUSH_VAR .Lstr_59  # var=ti
.Lpc283:                
	SM_PUSH_INT 1
.Lpc284:                
	SM_CALL .Lstr_19, 3  # SM_CALL fname="IDX" nargs=3
.Lpc285:                
	SM_STORE_VAR .Lstr_22  # store -> tag
.Lpc286:                
	SM_JUMP_F .Lpc329  # SM_JUMP_F -> pc=329
.Lpc287:                

# ============================================================================
# stmt 47  (line 47):                  next_wkey       =   wsk[wi + 1,1]
# ============================================================================
.Lpc288:                
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc289:                
	SM_PUSH_VAR .Lstr_10  # var=sentno
.Lpc290:                
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc291:                
	SM_PUSH_VAR .Lstr_50  # var=wkey
.Lpc292:                
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc293:                
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc294:                
	SM_CALL .Lstr_19, 2  # SM_CALL fname="IDX" nargs=2
.Lpc295:                
	SM_STORE_VAR .Lstr_62  # store -> tv
.Lpc296:                

# ============================================================================
# stmt 48  (line 48):                  wrd             =   wkey
# ============================================================================
.Lpc297:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc298:                
	SM_PUSH_STR .Lstr_43, 0  # str="{"
.Lpc299:                
	SM_CALL .Lstr_37, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc300:                
	SM_POP  # SM_POP: discard TOS
.Lpc301:                
	SM_JUMP_F .Lpc314  # SM_JUMP_F -> pc=314
.Lpc302:                

# ============================================================================
# stmt 49  (line 49):                  wrd             ?   ARB "'"  =  ''              :F(pm_sq)
# ============================================================================
.Lpc303:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc304:                
	SM_PUSH_STR .Lstr_53, 0  # str="'"
.Lpc305:                
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc306:                
	SM_PUSH_STR .Lstr_63, 0  # str="': "
.Lpc307:                
	SM_PUSH_VAR .Lstr_62  # var=tv
.Lpc308:                
	SM_CONCAT  # SM_CONCAT
.Lpc309:                
	SM_CONCAT  # SM_CONCAT
.Lpc310:                
	SM_CONCAT  # SM_CONCAT
.Lpc311:                
	SM_CONCAT  # SM_CONCAT
.Lpc312:                
	SM_STORE_VAR .Lstr_60  # store -> tline
.Lpc313:                
	SM_JUMP .Lpc274  # SM_JUMP -> pc=274
.Lpc314:                
.Lpc315:                

# ============================================================================
# stmt 50  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
.Lpc316:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc317:                
	SM_PUSH_STR .Lstr_65, 0  # str=", "
.Lpc318:                
	SM_PUSH_STR .Lstr_53, 0  # str="'"
.Lpc319:                
	SM_PUSH_VAR .Lstr_22  # var=tag
.Lpc320:                
	SM_PUSH_STR .Lstr_63, 0  # str="': "
.Lpc321:                
	SM_PUSH_VAR .Lstr_62  # var=tv
.Lpc322:                
	SM_CONCAT  # SM_CONCAT
.Lpc323:                
	SM_CONCAT  # SM_CONCAT
.Lpc324:                
	SM_CONCAT  # SM_CONCAT
.Lpc325:                
	SM_CONCAT  # SM_CONCAT
.Lpc326:                
	SM_CONCAT  # SM_CONCAT
.Lpc327:                
	SM_STORE_VAR .Lstr_60  # store -> tline
.Lpc328:                
	SM_JUMP .Lpc274  # SM_JUMP -> pc=274
.Lpc329:                
.Lpc330:                

# ============================================================================
# stmt 51  (line 61):  pm_tag_close    tline           =   tline '}'
# ============================================================================
.Lpc331:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc332:                
	SM_PUSH_STR .Lstr_67, 0  # str="}"
.Lpc333:                
	SM_CONCAT  # SM_CONCAT
.Lpc334:                
	SM_STORE_VAR .Lstr_60  # store -> tline
.Lpc335:                

# ============================================================================
# stmt 52  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
.Lpc336:                
	SM_PUSH_VAR .Lstr_51  # var=next_wkey
.Lpc337:                
	SM_CALL .Lstr_39, 1  # SM_CALL fname="SIZE" nargs=1
.Lpc338:                
	SM_PUSH_INT 0
.Lpc339:                
	SM_CALL .Lstr_68, 2  # SM_CALL fname="GT" nargs=2
.Lpc340:                
	SM_POP  # SM_POP: discard TOS
.Lpc341:                
	SM_JUMP_F .Lpc373  # SM_JUMP_F -> pc=373
.Lpc342:                

# ============================================================================
# stmt 53  (line 53):                  ti              =   0
# ============================================================================
.Lpc343:                
	SM_PUSH_VAR .Lstr_48  # var=wi
.Lpc344:                
	SM_PUSH_INT 1
.Lpc345:                
	SM_CALL .Lstr_37, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc346:                
	SM_POP  # SM_POP: discard TOS
.Lpc347:                
	SM_JUMP_F .Lpc360  # SM_JUMP_F -> pc=360
.Lpc348:                

# ============================================================================
# stmt 54  (line 54):                  tline           =   '{'
# ============================================================================
.Lpc349:                
	SM_PUSH_VAR .Lstr_45  # var=pfx
.Lpc350:                
	SM_PUSH_VAR .Lstr_55  # var=wq
.Lpc351:                
	SM_PUSH_STR .Lstr_69, 0  # str=": "
.Lpc352:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc353:                
	SM_PUSH_STR .Lstr_70, 0  # str=","
.Lpc354:                
	SM_CONCAT  # SM_CONCAT
.Lpc355:                
	SM_CONCAT  # SM_CONCAT
.Lpc356:                
	SM_CONCAT  # SM_CONCAT
.Lpc357:                
	SM_CONCAT  # SM_CONCAT
.Lpc358:                
	SM_STORE_VAR .Lstr_71  # store -> OUTPUT
.Lpc359:                
	SM_JUMP .Lpc207  # SM_JUMP -> pc=207
.Lpc360:                
.Lpc361:                

# ============================================================================
# stmt 55  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
.Lpc362:                
	SM_PUSH_VAR .Lstr_41  # var=pad
.Lpc363:                
	SM_PUSH_VAR .Lstr_55  # var=wq
.Lpc364:                
	SM_PUSH_STR .Lstr_69, 0  # str=": "
.Lpc365:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc366:                
	SM_PUSH_STR .Lstr_70, 0  # str=","
.Lpc367:                
	SM_CONCAT  # SM_CONCAT
.Lpc368:                
	SM_CONCAT  # SM_CONCAT
.Lpc369:                
	SM_CONCAT  # SM_CONCAT
.Lpc370:                
	SM_CONCAT  # SM_CONCAT
.Lpc371:                
	SM_STORE_VAR .Lstr_71  # store -> OUTPUT
.Lpc372:                
	SM_JUMP .Lpc207  # SM_JUMP -> pc=207
.Lpc373:                
.Lpc374:                

# ============================================================================
# stmt 56  (line 66):  pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
# ============================================================================
.Lpc375:                
	SM_PUSH_VAR .Lstr_48  # var=wi
.Lpc376:                
	SM_PUSH_INT 1
.Lpc377:                
	SM_CALL .Lstr_37, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc378:                
	SM_POP  # SM_POP: discard TOS
.Lpc379:                
	SM_JUMP_F .Lpc390  # SM_JUMP_F -> pc=390
.Lpc380:                

# ============================================================================
# stmt 57  (line 57):                  tv              =   mem[sentno][wkey][tag]
# ============================================================================
.Lpc381:                
	SM_PUSH_VAR .Lstr_45  # var=pfx
.Lpc382:                
	SM_PUSH_VAR .Lstr_55  # var=wq
.Lpc383:                
	SM_PUSH_STR .Lstr_69, 0  # str=": "
.Lpc384:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc385:                
	SM_CONCAT  # SM_CONCAT
.Lpc386:                
	SM_CONCAT  # SM_CONCAT
.Lpc387:                
	SM_CONCAT  # SM_CONCAT
.Lpc388:                
	SM_STORE_VAR .Lstr_74  # store -> lline
.Lpc389:                
	SM_JUMP .Lpc400  # SM_JUMP -> pc=400
.Lpc390:                
.Lpc391:                

# ============================================================================
# stmt 58  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
.Lpc392:                
	SM_PUSH_VAR .Lstr_41  # var=pad
.Lpc393:                
	SM_PUSH_VAR .Lstr_55  # var=wq
.Lpc394:                
	SM_PUSH_STR .Lstr_69, 0  # str=": "
.Lpc395:                
	SM_PUSH_VAR .Lstr_60  # var=tline
.Lpc396:                
	SM_CONCAT  # SM_CONCAT
.Lpc397:                
	SM_CONCAT  # SM_CONCAT
.Lpc398:                
	SM_CONCAT  # SM_CONCAT
.Lpc399:                
	SM_STORE_VAR .Lstr_74  # store -> lline
.Lpc400:                
.Lpc401:                

# ============================================================================
# stmt 59  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
.Lpc402:                
	SM_PUSH_VAR .Lstr_36  # var=last_sent
.Lpc403:                
	SM_PUSH_INT 1
.Lpc404:                
	SM_CALL .Lstr_37, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc405:                
	SM_POP  # SM_POP: discard TOS
.Lpc406:                
	SM_JUMP_F .Lpc413  # SM_JUMP_F -> pc=413
.Lpc407:                

# ============================================================================
# stmt 60  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
.Lpc408:                
	SM_PUSH_VAR .Lstr_74  # var=lline
.Lpc409:                
	SM_PUSH_STR .Lstr_77, 0  # str="}}"
.Lpc410:                
	SM_CONCAT  # SM_CONCAT
.Lpc411:                
	SM_STORE_VAR .Lstr_71  # store -> OUTPUT
.Lpc412:                
	SM_JUMP .Lpc145  # SM_JUMP -> pc=145
.Lpc413:                
.Lpc414:                

# ============================================================================
# stmt 61  (line 71):  pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
# ============================================================================
.Lpc415:                
	SM_PUSH_VAR .Lstr_74  # var=lline
.Lpc416:                
	SM_PUSH_STR .Lstr_79, 0  # str="},"
.Lpc417:                
	SM_CONCAT  # SM_CONCAT
.Lpc418:                
	SM_STORE_VAR .Lstr_71  # store -> OUTPUT
.Lpc419:                
	SM_JUMP .Lpc145  # SM_JUMP -> pc=145
.Lpc420:                
.Lpc421:                

# ============================================================================
# stmt 62  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
.Lpc422:                
	SM_PUSH_STR .Lstr_14, 0  # str="dummy"
.Lpc423:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc424:                
	SM_STORE_VAR .Lstr_28  # store -> pp_mem
.Lpc425:                
	SM_RETURN  # SM_RETURN
.Lpc426:                
.Lpc427:                

# ============================================================================
# stmt 63  (line 74):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc428:                
.Lpc429:                

# ============================================================================
# stmt 64  (line 75):  slurp           line            =   INPUT                       :F(slurp_done)
# ============================================================================
.Lpc430:                
	SM_PUSH_VAR .Lstr_83  # var=INPUT
.Lpc431:                
	SM_STORE_VAR .Lstr_84  # store -> line
.Lpc432:                
	SM_JUMP_F .Lpc439  # SM_JUMP_F -> pc=439
.Lpc433:                

# ============================================================================
# stmt 65  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
.Lpc434:                
	SM_PUSH_VAR .Lstr_85  # var=src
.Lpc435:                
	SM_PUSH_VAR .Lstr_84  # var=line
.Lpc436:                
	SM_CONCAT  # SM_CONCAT
.Lpc437:                
	SM_STORE_VAR .Lstr_85  # store -> src
.Lpc438:                
	SM_JUMP .Lpc428  # SM_JUMP -> pc=428
.Lpc439:                
.Lpc440:                

# ============================================================================
# stmt 66  (line 78):                  mem             =   TABLE()
# ============================================================================
.Lpc441:                

# ============================================================================
# stmt 67  (line 67):                  lline           =   pfx wq ': ' tline           :(pm_last_emit)
# ============================================================================
.Lpc442:                
	SM_CALL .Lstr_11, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc443:                
	SM_STORE_VAR .Lstr_12  # store -> mem
.Lpc444:                

# ============================================================================
# stmt 68  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
.Lpc445:                
	SM_PUSH_INT 0
.Lpc446:                
	SM_PAT_POS  # SM_PAT_POS
.Lpc447:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc448:                
	SM_PUSH_VAR .Lstr_3  # var=DIGITS
.Lpc449:                
	SM_PAT_SPAN  # SM_PAT_SPAN
.Lpc450:                
	SM_PAT_CAPTURE 0, .Lstr_9  # SM_PAT_CAPTURE var=num kind=0
.Lpc451:                
	SM_PAT_LIT .Lstr_87  # SM_PAT_LIT arg="_CRD :_PUN"
.Lpc452:                
	SM_PUSH_VAR .Lstr_88  # var=epsilon
.Lpc453:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc454:                
	SM_PAT_CAPTURE_FN 0, .Lstr_8  # SM_PAT_CAPTURE_FN fname=new_sent is_imm=0 namelist=(NULL)
.Lpc455:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc456:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc457:                
	SM_PUSH_STR .Lstr_89, 0  # str="_"
.Lpc458:                
	SM_PAT_NOTANY  # SM_PAT_NOTANY
.Lpc459:                
	SM_PUSH_STR .Lstr_89, 0  # str="_"
.Lpc460:                
	SM_PAT_BREAK  # SM_PAT_BREAK
.Lpc461:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc462:                
	SM_PAT_CAPTURE 0, .Lstr_20  # SM_PAT_CAPTURE var=wrd kind=0
.Lpc463:                
	SM_PAT_LIT .Lstr_89  # SM_PAT_LIT arg="_"
.Lpc464:                
	SM_PUSH_VAR .Lstr_5  # var=UCASE
.Lpc465:                
	SM_PAT_ANY  # SM_PAT_ANY
.Lpc466:                
	SM_PUSH_VAR .Lstr_3  # var=DIGITS
.Lpc467:                
	SM_PUSH_VAR .Lstr_5  # var=UCASE
.Lpc468:                
	SM_CONCAT  # SM_CONCAT
.Lpc469:                
	SM_PAT_SPAN  # SM_PAT_SPAN
.Lpc470:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc471:                
	SM_PAT_CAPTURE 0, .Lstr_22  # SM_PAT_CAPTURE var=tag kind=0
.Lpc472:                
	SM_PUSH_VAR .Lstr_88  # var=epsilon
.Lpc473:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc474:                
	SM_PAT_CAPTURE_FN 0, .Lstr_18  # SM_PAT_CAPTURE_FN fname=add_tok is_imm=0 namelist=(NULL)
.Lpc475:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc476:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc477:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc478:                
	SM_PAT_ALT  # SM_PAT_ALT
.Lpc479:                
	SM_PAT_LIT .Lstr_38  # SM_PAT_LIT arg=" "
.Lpc480:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc481:                
	SM_PAT_ARBNO  # SM_PAT_ARBNO
.Lpc482:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc483:                
	SM_PUSH_INT 0
.Lpc484:                
	SM_PAT_RPOS  # SM_PAT_RPOS
.Lpc485:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc486:                
	SM_CONCAT  # SM_CONCAT
.Lpc487:                
	SM_CONCAT  # SM_CONCAT
.Lpc488:                
	SM_STORE_VAR .Lstr_90  # store -> claws
.Lpc489:                

# ============================================================================
# stmt 69  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
.Lpc490:                
	SM_PUSH_VAR .Lstr_90  # var=claws
.Lpc491:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc492:                
	SM_PUSH_VAR .Lstr_85  # var=src
.Lpc493:                
	SM_PUSH_INT 0
.Lpc494:                
	SM_EXEC_STMT_VARIANT 0, .Lstr_85  # SM_EXEC_STMT_VARIANT subj=src has_repl=0
.Lpc495:                
	SM_JUMP_F .Lpc501  # SM_JUMP_F -> pc=501
.Lpc496:                

# ============================================================================
# stmt 70  (line 70):                  OUTPUT          =   lline '}}'                  :(pm_sent_loop)
# ============================================================================
.Lpc497:                
	SM_PUSH_VAR .Lstr_12  # var=mem
.Lpc498:                
	SM_CALL .Lstr_28, 1  # SM_CALL fname="pp_mem" nargs=1
.Lpc499:                
	SM_POP  # SM_POP: discard TOS
.Lpc500:                
	SM_JUMP .Lpc505  # SM_JUMP -> pc=505
.Lpc501:                
.Lpc502:                

# ============================================================================
# stmt 71  (line 96):  fail            OUTPUT          =  'Pattern match failed'
# ============================================================================
.Lpc503:                
	SM_PUSH_STR .Lstr_92, 0  # str="Pattern match failed"
.Lpc504:                
	SM_STORE_VAR .Lstr_71  # store -> OUTPUT
.Lpc505:                
.Lpc506:                

# ============================================================================
# stmt 72  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
.Lpc507:                
	SM_HALT  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
