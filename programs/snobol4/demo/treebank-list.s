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
	.string "list(head,tail)"
.Lstr_3:
	.string "DATA"
.Lstr_4:
	.string "list_reverse(lst)acc,cur"
.Lstr_5:
	.string "DEFINE"
.Lstr_6:
	.string "list_reverse"
.Lstr_7:
	.string ""
.Lstr_8:
	.string "acc"
.Lstr_9:
	.string "lst"
.Lstr_10:
	.string "cur"
.Lstr_11:
	.string "lr1"
.Lstr_12:
	.string "DIFFER"
.Lstr_13:
	.string "head"
.Lstr_14:
	.string "list"
.Lstr_15:
	.string "tail"
.Lstr_16:
	.string "lr_done"
.Lstr_17:
	.string "list_reverse_end"
.Lstr_18:
	.string "stk_push_frame(v)"
.Lstr_19:
	.string "stk_push_frame"
.Lstr_20:
	.string "v"
.Lstr_21:
	.string "stk"
.Lstr_22:
	.string "dummy"
.Lstr_23:
	.string "NAME_PUSH"
.Lstr_24:
	.string "stk_push_frame_end"
.Lstr_25:
	.string "stk_push_item(v)"
.Lstr_26:
	.string "stk_push_item"
.Lstr_27:
	.string "head_SET"
.Lstr_28:
	.string "stk_push_item_end"
.Lstr_29:
	.string "stk_pop_into_parent()child"
.Lstr_30:
	.string "stk_pop_into_parent"
.Lstr_31:
	.string "child"
.Lstr_32:
	.string "stk_pop_into_parent_end"
.Lstr_33:
	.string "stk_pop_final(var)"
.Lstr_34:
	.string "stk_pop_final"
.Lstr_35:
	.string "var"
.Lstr_36:
	.string "ASGN_INDIR"
.Lstr_37:
	.string "stk_pop_final_end"
.Lstr_38:
	.string "init_list(v)"
.Lstr_39:
	.string "Init_list(vs)"
.Lstr_40:
	.string "init_list"
.Lstr_41:
	.string "Init_list"
.Lstr_42:
	.string "epsilon . *init_list("
.Lstr_43:
	.string "vs"
.Lstr_44:
	.string ")"
.Lstr_45:
	.string "EVAL"
.Lstr_46:
	.string "init_list_end"
.Lstr_47:
	.string "push_list(v)"
.Lstr_48:
	.string "Push_list(vs)"
.Lstr_49:
	.string "push_list"
.Lstr_50:
	.string "Push_list"
.Lstr_51:
	.string "epsilon . *push_list("
.Lstr_52:
	.string "push_list_end"
.Lstr_53:
	.string "push_item(v)"
.Lstr_54:
	.string "Push_item(vs)"
.Lstr_55:
	.string "push_item"
.Lstr_56:
	.string "Push_item"
.Lstr_57:
	.string "epsilon . *push_item("
.Lstr_58:
	.string "push_item_end"
.Lstr_59:
	.string "pop_list()"
.Lstr_60:
	.string "Pop_list()"
.Lstr_61:
	.string "pop_list"
.Lstr_62:
	.string "Pop_list"
.Lstr_63:
	.string "epsilon"
.Lstr_64:
	.string "pop_list_end"
.Lstr_65:
	.string "pop_final(v)"
.Lstr_66:
	.string "Pop_final(vs)"
.Lstr_67:
	.string "pop_final"
.Lstr_68:
	.string "Pop_final"
.Lstr_69:
	.string "epsilon . *pop_final("
.Lstr_70:
	.string "pop_final_end"
.Lstr_71:
	.string " "
.Lstr_72:
	.string "delim"
.Lstr_73:
	.string "( )"
.Lstr_74:
	.string "word"
.Lstr_75:
	.string "("
.Lstr_76:
	.string "tag"
.Lstr_77:
	.string "group"
.Lstr_78:
	.string "wrd"
.Lstr_79:
	.string "'bank'"
.Lstr_80:
	.string "'BANK'"
.Lstr_81:
	.string "'ROOT'"
.Lstr_82:
	.string "treebank"
.Lstr_83:
	.string "node_repr(node)r,c,sep"
.Lstr_84:
	.string "node_repr"
.Lstr_85:
	.string "node"
.Lstr_86:
	.string "DATATYPE"
.Lstr_87:
	.string "LCASE"
.Lstr_88:
	.string "UCASE"
.Lstr_89:
	.string "REPLACE"
.Lstr_90:
	.string "STRING"
.Lstr_91:
	.string "IDENT"
.Lstr_92:
	.string "'"
.Lstr_93:
	.string "nr_list"
.Lstr_94:
	.string "r"
.Lstr_95:
	.string "sep"
.Lstr_96:
	.string "c"
.Lstr_97:
	.string "nr_lp"
.Lstr_98:
	.string ", "
.Lstr_99:
	.string "nr_done"
.Lstr_100:
	.string "node_repr_end"
.Lstr_101:
	.string "pp_node(node,indent,suffix)r,pad,c,nxt"
.Lstr_102:
	.string "pp_node"
.Lstr_103:
	.string "indent"
.Lstr_104:
	.string "DUPL"
.Lstr_105:
	.string "pad"
.Lstr_106:
	.string "SIZE"
.Lstr_107:
	.string "GT"
.Lstr_108:
	.string "suffix"
.Lstr_109:
	.string "OUTPUT"
.Lstr_110:
	.string "pp_wrap"
.Lstr_111:
	.string "( "
.Lstr_112:
	.string "',"
.Lstr_113:
	.string "pp_wch"
.Lstr_114:
	.string "nxt"
.Lstr_115:
	.string ","
.Lstr_116:
	.string "pp_wlast"
.Lstr_117:
	.string "pp_wdone"
.Lstr_118:
	.string "pp_node_end"
.Lstr_119:
	.string "pp_bank()cur"
.Lstr_120:
	.string "pp_bank"
.Lstr_121:
	.string "bank"
.Lstr_122:
	.string "pp_bank_end"
.Lstr_123:
	.string "slurp"
.Lstr_124:
	.string "INPUT"
.Lstr_125:
	.string "line"
.Lstr_126:
	.string "src"
.Lstr_127:
	.string "slurp_done"
.Lstr_128:
	.string "main_fail"
.Lstr_129:
	.string "Pattern match failed"
.Lstr_130:
	.string "END"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: list_reverse -> .Lpc20
	.quad   .Lstr_6
	.quad   .Lpc20
	# chunk: lr1 -> .Lpc27
	.quad   .Lstr_11
	.quad   .Lpc27
	# chunk: lr_done -> .Lpc44
	.quad   .Lstr_16
	.quad   .Lpc44
	# chunk: list_reverse_end -> .Lpc49
	.quad   .Lstr_17
	.quad   .Lpc49
	# chunk: stk_push_frame -> .Lpc56
	.quad   .Lstr_19
	.quad   .Lpc56
	# chunk: stk_push_frame_end -> .Lpc69
	.quad   .Lstr_24
	.quad   .Lpc69
	# chunk: stk_push_item -> .Lpc76
	.quad   .Lstr_26
	.quad   .Lpc76
	# chunk: stk_push_item_end -> .Lpc89
	.quad   .Lstr_28
	.quad   .Lpc89
	# chunk: stk_pop_into_parent -> .Lpc96
	.quad   .Lstr_30
	.quad   .Lpc96
	# chunk: stk_pop_into_parent_end -> .Lpc119
	.quad   .Lstr_32
	.quad   .Lpc119
	# chunk: stk_pop_final -> .Lpc126
	.quad   .Lstr_34
	.quad   .Lpc126
	# chunk: stk_pop_final_end -> .Lpc142
	.quad   .Lstr_37
	.quad   .Lpc142
	# chunk: init_list -> .Lpc153
	.quad   .Lstr_40
	.quad   .Lpc153
	# chunk: Init_list -> .Lpc166
	.quad   .Lstr_41
	.quad   .Lpc166
	# chunk: init_list_end -> .Lpc176
	.quad   .Lstr_46
	.quad   .Lpc176
	# chunk: push_list -> .Lpc187
	.quad   .Lstr_49
	.quad   .Lpc187
	# chunk: Push_list -> .Lpc197
	.quad   .Lstr_50
	.quad   .Lpc197
	# chunk: push_list_end -> .Lpc207
	.quad   .Lstr_52
	.quad   .Lpc207
	# chunk: push_item -> .Lpc218
	.quad   .Lstr_55
	.quad   .Lpc218
	# chunk: Push_item -> .Lpc228
	.quad   .Lstr_56
	.quad   .Lpc228
	# chunk: push_item_end -> .Lpc238
	.quad   .Lstr_58
	.quad   .Lpc238
	# chunk: pop_list -> .Lpc249
	.quad   .Lstr_61
	.quad   .Lpc249
	# chunk: Pop_list -> .Lpc258
	.quad   .Lstr_62
	.quad   .Lpc258
	# chunk: pop_list_end -> .Lpc266
	.quad   .Lstr_64
	.quad   .Lpc266
	# chunk: pop_final -> .Lpc277
	.quad   .Lstr_67
	.quad   .Lpc277
	# chunk: Pop_final -> .Lpc287
	.quad   .Lstr_68
	.quad   .Lpc287
	# chunk: pop_final_end -> .Lpc297
	.quad   .Lstr_70
	.quad   .Lpc297
	# chunk: node_repr -> .Lpc385
	.quad   .Lstr_84
	.quad   .Lpc385
	# chunk: nr_list -> .Lpc404
	.quad   .Lstr_93
	.quad   .Lpc404
	# chunk: nr_lp -> .Lpc414
	.quad   .Lstr_97
	.quad   .Lpc414
	# chunk: nr_done -> .Lpc437
	.quad   .Lstr_99
	.quad   .Lpc437
	# chunk: node_repr_end -> .Lpc444
	.quad   .Lstr_100
	.quad   .Lpc444
	# chunk: pp_node -> .Lpc451
	.quad   .Lstr_102
	.quad   .Lpc451
	# chunk: pp_wrap -> .Lpc478
	.quad   .Lstr_110
	.quad   .Lpc478
	# chunk: pp_wch -> .Lpc495
	.quad   .Lstr_113
	.quad   .Lpc495
	# chunk: pp_wlast -> .Lpc523
	.quad   .Lstr_116
	.quad   .Lpc523
	# chunk: pp_wdone -> .Lpc536
	.quad   .Lstr_117
	.quad   .Lpc536
	# chunk: pp_node_end -> .Lpc539
	.quad   .Lstr_118
	.quad   .Lpc539
	# chunk: pp_bank -> .Lpc546
	.quad   .Lstr_120
	.quad   .Lpc546
	# chunk: pp_bank_end -> .Lpc558
	.quad   .Lstr_122
	.quad   .Lpc558
	# chunk: slurp -> .Lpc560
	.quad   .Lstr_123
	.quad   .Lpc560
	# chunk: slurp_done -> .Lpc573
	.quad   .Lstr_127
	.quad   .Lpc573
	# chunk: main_fail -> .Lpc585
	.quad   .Lstr_128
	.quad   .Lpc585
	# chunk: END -> .Lpc589
	.quad   .Lstr_130
	.quad   .Lpc589
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
# 591 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/treebank-list.sno  (147 lines)
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
# stmt 2  (line 2):  * treebank-list.sno — Penn Treebank s-expression parser (LISP-style)
# ============================================================================
.Lpc11:                 
	SM_PUSH_STR .Lstr_2, 0  # str="list(head,tail)"
.Lpc12:                 
	SM_CALL .Lstr_3, 1  # SM_CALL fname="DATA" nargs=1
.Lpc13:                 
	SM_POP  # SM_POP: discard TOS
.Lpc14:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc15:                 
	SM_PUSH_STR .Lstr_4, 0  # str="list_reverse(lst)acc,cur"
.Lpc16:                 
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc17:                 
	SM_POP  # SM_POP: discard TOS
.Lpc18:                 
	SM_JUMP .Lpc48  # SM_JUMP -> pc=48
.Lpc19:                 
.Lpc20:                 

# ============================================================================
# stmt 4  (line 11):  list_reverse   acc            =
# ============================================================================
.Lpc21:                 
	SM_PUSH_STR .Lstr_7, 0  # str=""
.Lpc22:                 
	SM_STORE_VAR .Lstr_8  # store -> acc
.Lpc23:                 

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc24:                 
	SM_PUSH_VAR .Lstr_9  # var=lst
.Lpc25:                 
	SM_STORE_VAR .Lstr_10  # store -> cur
.Lpc26:                 
.Lpc27:                 

# ============================================================================
# stmt 6  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
.Lpc28:                 
	SM_PUSH_VAR .Lstr_10  # var=cur
.Lpc29:                 
	SM_CALL .Lstr_12, 1  # SM_CALL fname="DIFFER" nargs=1
.Lpc30:                 
	SM_POP  # SM_POP: discard TOS
.Lpc31:                 
	SM_JUMP_F .Lpc43  # SM_JUMP_F -> pc=43
.Lpc32:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc33:                 
	SM_PUSH_VAR .Lstr_10  # var=cur
.Lpc34:                 
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc35:                 
	SM_PUSH_VAR .Lstr_8  # var=acc
.Lpc36:                 
	SM_CALL .Lstr_14, 2  # SM_CALL fname="list" nargs=2
.Lpc37:                 
	SM_STORE_VAR .Lstr_8  # store -> acc
.Lpc38:                 

# ============================================================================
# stmt 8  (line 8):                 DATA('list(head,tail)')
# ============================================================================
.Lpc39:                 
	SM_PUSH_VAR .Lstr_10  # var=cur
.Lpc40:                 
	SM_CALL .Lstr_15, 1  # SM_CALL fname="tail" nargs=1
.Lpc41:                 
	SM_STORE_VAR .Lstr_10  # store -> cur
.Lpc42:                 
	SM_JUMP .Lpc26  # SM_JUMP -> pc=26
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 9  (line 16):  lr_done        list_reverse   =  acc                        :(RETURN)
# ============================================================================
.Lpc45:                 
	SM_PUSH_VAR .Lstr_8  # var=acc
.Lpc46:                 
	SM_STORE_VAR .Lstr_6  # store -> list_reverse
.Lpc47:                 
	SM_RETURN  # SM_RETURN
.Lpc48:                 
.Lpc49:                 

# ============================================================================
# stmt 10  (line 18):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc50:                 

# ============================================================================
# stmt 11  (line 11):  list_reverse   acc            =
# ============================================================================
.Lpc51:                 
	SM_PUSH_STR .Lstr_18, 0  # str="stk_push_frame(v)"
.Lpc52:                 
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc53:                 
	SM_POP  # SM_POP: discard TOS
.Lpc54:                 
	SM_JUMP .Lpc68  # SM_JUMP -> pc=68
.Lpc55:                 
.Lpc56:                 

# ============================================================================
# stmt 12  (line 20):  stk_push_frame stk            =  list(list(v,), stk)
# ============================================================================
.Lpc57:                 
	SM_PUSH_VAR .Lstr_20  # var=v
.Lpc58:                 
	SM_PUSH_NULL  # SM_PUSH_NULL
.Lpc59:                 
	SM_CALL .Lstr_14, 2  # SM_CALL fname="list" nargs=2
.Lpc60:                 
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc61:                 
	SM_CALL .Lstr_14, 2  # SM_CALL fname="list" nargs=2
.Lpc62:                 
	SM_STORE_VAR .Lstr_21  # store -> stk
.Lpc63:                 

# ============================================================================
# stmt 13  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
.Lpc64:                 
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc65:                 
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc66:                 
	SM_STORE_VAR .Lstr_19  # store -> stk_push_frame
.Lpc67:                 
	SM_RETURN  # SM_RETURN
.Lpc68:                 
.Lpc69:                 

# ============================================================================
# stmt 14  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc70:                 

# ============================================================================
# stmt 15  (line 15):                 cur            =  tail(cur)                  :(lr1)
# ============================================================================
.Lpc71:                 
	SM_PUSH_STR .Lstr_25, 0  # str="stk_push_item(v)"
.Lpc72:                 
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc73:                 
	SM_POP  # SM_POP: discard TOS
.Lpc74:                 
	SM_JUMP .Lpc88  # SM_JUMP -> pc=88
.Lpc75:                 
.Lpc76:                 

# ============================================================================
# stmt 16  (line 25):  stk_push_item  head(stk)      =  list(v, head(stk))
# ============================================================================
.Lpc77:                 
	SM_PUSH_VAR .Lstr_20  # var=v
.Lpc78:                 
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc79:                 
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc80:                 
	SM_CALL .Lstr_14, 2  # SM_CALL fname="list" nargs=2
.Lpc81:                 
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc82:                 
	SM_CALL .Lstr_27, 2  # SM_CALL fname="head_SET" nargs=2
.Lpc83:                 

# ============================================================================
# stmt 17  (line 17):  list_reverse_end
# ============================================================================
.Lpc84:                 
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc85:                 
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc86:                 
	SM_STORE_VAR .Lstr_26  # store -> stk_push_item
.Lpc87:                 
	SM_RETURN  # SM_RETURN
.Lpc88:                 
.Lpc89:                 

# ============================================================================
# stmt 18  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc90:                 

# ============================================================================
# stmt 19  (line 19):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
# ============================================================================
.Lpc91:                 
	SM_PUSH_STR .Lstr_29, 0  # str="stk_pop_into_parent()child"
.Lpc92:                 
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc93:                 
	SM_POP  # SM_POP: discard TOS
.Lpc94:                 
	SM_JUMP .Lpc118  # SM_JUMP -> pc=118
.Lpc95:                 
.Lpc96:                 

# ============================================================================
# stmt 20  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
.Lpc97:                 

# ============================================================================
# stmt 21  (line 21):                 stk_push_frame =  .dummy                     :(RETURN)
# ============================================================================
.Lpc98:                 
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc99:                 
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc100:                
	SM_CALL .Lstr_6, 1  # SM_CALL fname="list_reverse" nargs=1
.Lpc101:                
	SM_STORE_VAR .Lstr_31  # store -> child
.Lpc102:                

# ============================================================================
# stmt 22  (line 22):  stk_push_frame_end
# ============================================================================
.Lpc103:                
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc104:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="tail" nargs=1
.Lpc105:                
	SM_STORE_VAR .Lstr_21  # store -> stk
.Lpc106:                

# ============================================================================
# stmt 23  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc107:                
	SM_PUSH_VAR .Lstr_31  # var=child
.Lpc108:                
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc109:                
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc110:                
	SM_CALL .Lstr_14, 2  # SM_CALL fname="list" nargs=2
.Lpc111:                
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc112:                
	SM_CALL .Lstr_27, 2  # SM_CALL fname="head_SET" nargs=2
.Lpc113:                

# ============================================================================
# stmt 24  (line 24):                 DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
# ============================================================================
.Lpc114:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc115:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc116:                
	SM_STORE_VAR .Lstr_30  # store -> stk_pop_into_parent
.Lpc117:                
	SM_RETURN  # SM_RETURN
.Lpc118:                
.Lpc119:                

# ============================================================================
# stmt 25  (line 36):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc120:                

# ============================================================================
# stmt 26  (line 26):                 stk_push_item  =  .dummy                     :(RETURN)
# ============================================================================
.Lpc121:                
	SM_PUSH_STR .Lstr_33, 0  # str="stk_pop_final(var)"
.Lpc122:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc123:                
	SM_POP  # SM_POP: discard TOS
.Lpc124:                
	SM_JUMP .Lpc141  # SM_JUMP -> pc=141
.Lpc125:                
.Lpc126:                

# ============================================================================
# stmt 27  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
.Lpc127:                
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc128:                
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc129:                
	SM_CALL .Lstr_6, 1  # SM_CALL fname="list_reverse" nargs=1
.Lpc130:                
	SM_PUSH_VAR .Lstr_35  # var=var
.Lpc131:                
	SM_CALL .Lstr_36, 2  # SM_CALL fname="ASGN_INDIR" nargs=2
.Lpc132:                

# ============================================================================
# stmt 28  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc133:                
	SM_PUSH_VAR .Lstr_21  # var=stk
.Lpc134:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="tail" nargs=1
.Lpc135:                
	SM_STORE_VAR .Lstr_21  # store -> stk
.Lpc136:                

# ============================================================================
# stmt 29  (line 29):                 DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
# ============================================================================
.Lpc137:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc138:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc139:                
	SM_STORE_VAR .Lstr_34  # store -> stk_pop_final
.Lpc140:                
	SM_RETURN  # SM_RETURN
.Lpc141:                
.Lpc142:                

# ============================================================================
# stmt 30  (line 42):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc143:                

# ============================================================================
# stmt 31  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
.Lpc144:                
	SM_PUSH_STR .Lstr_38, 0  # str="init_list(v)"
.Lpc145:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc146:                
	SM_POP  # SM_POP: discard TOS
.Lpc147:                

# ============================================================================
# stmt 32  (line 32):                 stk            =  tail(stk)
# ============================================================================
.Lpc148:                
	SM_PUSH_STR .Lstr_39, 0  # str="Init_list(vs)"
.Lpc149:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc150:                
	SM_POP  # SM_POP: discard TOS
.Lpc151:                
	SM_JUMP .Lpc175  # SM_JUMP -> pc=175
.Lpc152:                
.Lpc153:                

# ============================================================================
# stmt 33  (line 45):  init_list      $v             =
# ============================================================================
.Lpc154:                
	SM_PUSH_STR .Lstr_7, 0  # str=""
.Lpc155:                
	SM_PUSH_VAR .Lstr_20  # var=v
.Lpc156:                
	SM_CALL .Lstr_36, 2  # SM_CALL fname="ASGN_INDIR" nargs=2
.Lpc157:                

# ============================================================================
# stmt 34  (line 34):                 stk_pop_into_parent =  .dummy                :(RETURN)
# ============================================================================
.Lpc158:                
	SM_PUSH_STR .Lstr_7, 0  # str=""
.Lpc159:                
	SM_STORE_VAR .Lstr_21  # store -> stk
.Lpc160:                

# ============================================================================
# stmt 35  (line 35):  stk_pop_into_parent_end
# ============================================================================
.Lpc161:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc162:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc163:                
	SM_STORE_VAR .Lstr_40  # store -> init_list
.Lpc164:                
	SM_RETURN_VARIANT 2, 0, 164  # SM_NRETURN
.Lpc165:                
.Lpc166:                

# ============================================================================
# stmt 36  (line 48):  Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
# ============================================================================
.Lpc167:                
	SM_PUSH_STR .Lstr_42, 0  # str="epsilon . *init_list("
.Lpc168:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc169:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc170:                
	SM_CONCAT  # SM_CONCAT
.Lpc171:                
	SM_CONCAT  # SM_CONCAT
.Lpc172:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc173:                
	SM_STORE_VAR .Lstr_41  # store -> Init_list
.Lpc174:                
	SM_RETURN  # SM_RETURN
.Lpc175:                
.Lpc176:                

# ============================================================================
# stmt 37  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc177:                

# ============================================================================
# stmt 38  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
.Lpc178:                
	SM_PUSH_STR .Lstr_47, 0  # str="push_list(v)"
.Lpc179:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc180:                
	SM_POP  # SM_POP: discard TOS
.Lpc181:                

# ============================================================================
# stmt 39  (line 39):                 stk            =  tail(stk)
# ============================================================================
.Lpc182:                
	SM_PUSH_STR .Lstr_48, 0  # str="Push_list(vs)"
.Lpc183:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc184:                
	SM_POP  # SM_POP: discard TOS
.Lpc185:                
	SM_JUMP .Lpc206  # SM_JUMP -> pc=206
.Lpc186:                
.Lpc187:                

# ============================================================================
# stmt 40  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc188:                
	SM_PUSH_VAR .Lstr_20  # var=v
.Lpc189:                
	SM_CALL .Lstr_19, 1  # SM_CALL fname="stk_push_frame" nargs=1
.Lpc190:                
	SM_STORE_VAR .Lstr_22  # store -> dummy
.Lpc191:                

# ============================================================================
# stmt 41  (line 41):  stk_pop_final_end
# ============================================================================
.Lpc192:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc193:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc194:                
	SM_STORE_VAR .Lstr_49  # store -> push_list
.Lpc195:                
	SM_RETURN_VARIANT 2, 0, 195  # SM_NRETURN
.Lpc196:                
.Lpc197:                

# ============================================================================
# stmt 42  (line 55):  Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
# ============================================================================
.Lpc198:                
	SM_PUSH_STR .Lstr_51, 0  # str="epsilon . *push_list("
.Lpc199:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc200:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc201:                
	SM_CONCAT  # SM_CONCAT
.Lpc202:                
	SM_CONCAT  # SM_CONCAT
.Lpc203:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc204:                
	SM_STORE_VAR .Lstr_50  # store -> Push_list
.Lpc205:                
	SM_RETURN  # SM_RETURN
.Lpc206:                
.Lpc207:                

# ============================================================================
# stmt 43  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc208:                

# ============================================================================
# stmt 44  (line 44):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
.Lpc209:                
	SM_PUSH_STR .Lstr_53, 0  # str="push_item(v)"
.Lpc210:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc211:                
	SM_POP  # SM_POP: discard TOS
.Lpc212:                

# ============================================================================
# stmt 45  (line 45):  init_list      $v             =
# ============================================================================
.Lpc213:                
	SM_PUSH_STR .Lstr_54, 0  # str="Push_item(vs)"
.Lpc214:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc215:                
	SM_POP  # SM_POP: discard TOS
.Lpc216:                
	SM_JUMP .Lpc237  # SM_JUMP -> pc=237
.Lpc217:                
.Lpc218:                

# ============================================================================
# stmt 46  (line 60):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc219:                
	SM_PUSH_VAR .Lstr_20  # var=v
.Lpc220:                
	SM_CALL .Lstr_26, 1  # SM_CALL fname="stk_push_item" nargs=1
.Lpc221:                
	SM_STORE_VAR .Lstr_22  # store -> dummy
.Lpc222:                

# ============================================================================
# stmt 47  (line 47):                 init_list      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc223:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc224:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc225:                
	SM_STORE_VAR .Lstr_55  # store -> push_item
.Lpc226:                
	SM_RETURN_VARIANT 2, 0, 226  # SM_NRETURN
.Lpc227:                
.Lpc228:                

# ============================================================================
# stmt 48  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
.Lpc229:                
	SM_PUSH_STR .Lstr_57, 0  # str="epsilon . *push_item("
.Lpc230:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc231:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc232:                
	SM_CONCAT  # SM_CONCAT
.Lpc233:                
	SM_CONCAT  # SM_CONCAT
.Lpc234:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc235:                
	SM_STORE_VAR .Lstr_56  # store -> Push_item
.Lpc236:                
	SM_RETURN  # SM_RETURN
.Lpc237:                
.Lpc238:                

# ============================================================================
# stmt 49  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc239:                

# ============================================================================
# stmt 50  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc240:                
	SM_PUSH_STR .Lstr_59, 0  # str="pop_list()"
.Lpc241:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc242:                
	SM_POP  # SM_POP: discard TOS
.Lpc243:                

# ============================================================================
# stmt 51  (line 51):                 DEFINE('push_list(v)')
# ============================================================================
.Lpc244:                
	SM_PUSH_STR .Lstr_60, 0  # str="Pop_list()"
.Lpc245:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc246:                
	SM_POP  # SM_POP: discard TOS
.Lpc247:                
	SM_JUMP .Lpc265  # SM_JUMP -> pc=265
.Lpc248:                
.Lpc249:                

# ============================================================================
# stmt 52  (line 67):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc250:                
	SM_CALL .Lstr_30, 0  # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc251:                
	SM_STORE_VAR .Lstr_22  # store -> dummy
.Lpc252:                

# ============================================================================
# stmt 53  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc253:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc254:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc255:                
	SM_STORE_VAR .Lstr_61  # store -> pop_list
.Lpc256:                
	SM_RETURN_VARIANT 2, 0, 256  # SM_NRETURN
.Lpc257:                
.Lpc258:                

# ============================================================================
# stmt 54  (line 69):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc259:                
	SM_PUSH_VAR .Lstr_63  # var=epsilon
.Lpc260:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc261:                
	SM_PAT_CAPTURE_FN 0, .Lstr_61  # SM_PAT_CAPTURE_FN fname=pop_list is_imm=0 namelist=(NULL)
.Lpc262:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc263:                
	SM_STORE_VAR .Lstr_62  # store -> Pop_list
.Lpc264:                
	SM_RETURN  # SM_RETURN
.Lpc265:                
.Lpc266:                

# ============================================================================
# stmt 55  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc267:                

# ============================================================================
# stmt 56  (line 56):  push_list_end
# ============================================================================
.Lpc268:                
	SM_PUSH_STR .Lstr_65, 0  # str="pop_final(v)"
.Lpc269:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc270:                
	SM_POP  # SM_POP: discard TOS
.Lpc271:                

# ============================================================================
# stmt 57  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc272:                
	SM_PUSH_STR .Lstr_66, 0  # str="Pop_final(vs)"
.Lpc273:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc274:                
	SM_POP  # SM_POP: discard TOS
.Lpc275:                
	SM_JUMP .Lpc296  # SM_JUMP -> pc=296
.Lpc276:                
.Lpc277:                

# ============================================================================
# stmt 58  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc278:                
	SM_PUSH_VAR .Lstr_20  # var=v
.Lpc279:                
	SM_CALL .Lstr_34, 1  # SM_CALL fname="stk_pop_final" nargs=1
.Lpc280:                
	SM_STORE_VAR .Lstr_22  # store -> dummy
.Lpc281:                

# ============================================================================
# stmt 59  (line 59):                 DEFINE('Push_item(vs)')                      :(push_item_end)
# ============================================================================
.Lpc282:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc283:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc284:                
	SM_STORE_VAR .Lstr_67  # store -> pop_final
.Lpc285:                
	SM_RETURN_VARIANT 2, 0, 285  # SM_NRETURN
.Lpc286:                
.Lpc287:                

# ============================================================================
# stmt 60  (line 76):  Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
# ============================================================================
.Lpc288:                
	SM_PUSH_STR .Lstr_69, 0  # str="epsilon . *pop_final("
.Lpc289:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc290:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc291:                
	SM_CONCAT  # SM_CONCAT
.Lpc292:                
	SM_CONCAT  # SM_CONCAT
.Lpc293:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc294:                
	SM_STORE_VAR .Lstr_68  # store -> Pop_final
.Lpc295:                
	SM_RETURN  # SM_RETURN
.Lpc296:                
.Lpc297:                

# ============================================================================
# stmt 61  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc298:                

# ============================================================================
# stmt 62  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
.Lpc299:                
	SM_PUSH_STR .Lstr_71, 0  # str=" "
.Lpc300:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc301:                
	SM_CONCAT  # SM_CONCAT
.Lpc302:                
	SM_PAT_SPAN  # SM_PAT_SPAN
.Lpc303:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc304:                
	SM_STORE_VAR .Lstr_72  # store -> delim
.Lpc305:                

# ============================================================================
# stmt 63  (line 63):  push_item_end
# ============================================================================
.Lpc306:                
	SM_PUSH_STR .Lstr_73, 0  # str="( )"
.Lpc307:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc308:                
	SM_CONCAT  # SM_CONCAT
.Lpc309:                
	SM_PAT_NOTANY  # SM_PAT_NOTANY
.Lpc310:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc311:                
	SM_PUSH_STR .Lstr_73, 0  # str="( )"
.Lpc312:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc313:                
	SM_CONCAT  # SM_CONCAT
.Lpc314:                
	SM_PAT_BREAK  # SM_PAT_BREAK
.Lpc315:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc316:                
	SM_CONCAT  # SM_CONCAT
.Lpc317:                
	SM_STORE_VAR .Lstr_74  # store -> word
.Lpc318:                

# ============================================================================
# stmt 64  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc319:                
	SM_PUSH_STR .Lstr_75, 0  # str="("
.Lpc320:                
	SM_PUSH_VAR .Lstr_74  # var=word
.Lpc321:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc322:                
	SM_PAT_CAPTURE 0, .Lstr_76  # SM_PAT_CAPTURE var=tag kind=0
.Lpc323:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc324:                
	SM_PUSH_STR .Lstr_76, 0  # str="tag"
.Lpc325:                
	SM_CALL .Lstr_50, 1  # SM_CALL fname="Push_list" nargs=1
.Lpc326:                
	SM_PAT_REFNAME .Lstr_72  # SM_PAT_REFNAME arg="delim"
.Lpc327:                
	SM_PAT_REFNAME .Lstr_77  # SM_PAT_REFNAME arg="group"
.Lpc328:                
	SM_PUSH_VAR .Lstr_74  # var=word
.Lpc329:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc330:                
	SM_PAT_CAPTURE 0, .Lstr_78  # SM_PAT_CAPTURE var=wrd kind=0
.Lpc331:                
	SM_PUSH_STR .Lstr_78, 0  # str="wrd"
.Lpc332:                
	SM_CALL .Lstr_56, 1  # SM_CALL fname="Push_item" nargs=1
.Lpc333:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc334:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc335:                
	SM_PAT_ALT  # SM_PAT_ALT
.Lpc336:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc337:                
	SM_PAT_ARBNO  # SM_PAT_ARBNO
.Lpc338:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc339:                
	SM_CALL .Lstr_62, 0  # SM_CALL fname="Pop_list" nargs=0
.Lpc340:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc341:                
	SM_CONCAT  # SM_CONCAT
.Lpc342:                
	SM_CONCAT  # SM_CONCAT
.Lpc343:                
	SM_CONCAT  # SM_CONCAT
.Lpc344:                
	SM_CONCAT  # SM_CONCAT
.Lpc345:                
	SM_CONCAT  # SM_CONCAT
.Lpc346:                
	SM_STORE_VAR .Lstr_77  # store -> group
.Lpc347:                

# ============================================================================
# stmt 65  (line 65):                 DEFINE('pop_list()')
# ============================================================================
.Lpc348:                
	SM_PUSH_INT 0
.Lpc349:                
	SM_PAT_POS  # SM_PAT_POS
.Lpc350:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc351:                
	SM_PUSH_STR .Lstr_79, 0  # str="'bank'"
.Lpc352:                
	SM_CALL .Lstr_41, 1  # SM_CALL fname="Init_list" nargs=1
.Lpc353:                
	SM_PUSH_STR .Lstr_80, 0  # str="'BANK'"
.Lpc354:                
	SM_CALL .Lstr_50, 1  # SM_CALL fname="Push_list" nargs=1
.Lpc355:                
	SM_PUSH_STR .Lstr_81, 0  # str="'ROOT'"
.Lpc356:                
	SM_CALL .Lstr_50, 1  # SM_CALL fname="Push_list" nargs=1
.Lpc357:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc358:                
	SM_PAT_REFNAME .Lstr_77  # SM_PAT_REFNAME arg="group"
.Lpc359:                
	SM_PAT_ARBNO  # SM_PAT_ARBNO
.Lpc360:                
	SM_PAT_REFNAME .Lstr_72  # SM_PAT_REFNAME arg="delim"
.Lpc361:                
	SM_CALL .Lstr_62, 0  # SM_CALL fname="Pop_list" nargs=0
.Lpc362:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc363:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc364:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc365:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc366:                
	SM_PAT_ARBNO  # SM_PAT_ARBNO
.Lpc367:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc368:                
	SM_PUSH_STR .Lstr_79, 0  # str="'bank'"
.Lpc369:                
	SM_CALL .Lstr_68, 1  # SM_CALL fname="Pop_final" nargs=1
.Lpc370:                
	SM_PUSH_INT 0
.Lpc371:                
	SM_PAT_RPOS  # SM_PAT_RPOS
.Lpc372:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc373:                
	SM_CONCAT  # SM_CONCAT
.Lpc374:                
	SM_CONCAT  # SM_CONCAT
.Lpc375:                
	SM_CONCAT  # SM_CONCAT
.Lpc376:                
	SM_CONCAT  # SM_CONCAT
.Lpc377:                
	SM_CONCAT  # SM_CONCAT
.Lpc378:                
	SM_STORE_VAR .Lstr_82  # store -> treebank
.Lpc379:                

# ============================================================================
# stmt 66  (line 66):                 DEFINE('Pop_list()')                         :(pop_list_end)
# ============================================================================
.Lpc380:                
	SM_PUSH_STR .Lstr_83, 0  # str="node_repr(node)r,c,sep"
.Lpc381:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc382:                
	SM_POP  # SM_POP: discard TOS
.Lpc383:                
	SM_JUMP .Lpc443  # SM_JUMP -> pc=443
.Lpc384:                
.Lpc385:                

# ============================================================================
# stmt 67  (line 108):  node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
# ============================================================================
.Lpc386:                
	SM_PUSH_VAR .Lstr_85  # var=node
.Lpc387:                
	SM_CALL .Lstr_86, 1  # SM_CALL fname="DATATYPE" nargs=1
.Lpc388:                
	SM_PUSH_VAR .Lstr_87  # var=LCASE
.Lpc389:                
	SM_PUSH_VAR .Lstr_88  # var=UCASE
.Lpc390:                
	SM_CALL .Lstr_89, 3  # SM_CALL fname="REPLACE" nargs=3
.Lpc391:                
	SM_PUSH_STR .Lstr_90, 0  # str="STRING"
.Lpc392:                
	SM_CALL .Lstr_91, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc393:                
	SM_POP  # SM_POP: discard TOS
.Lpc394:                
	SM_JUMP_F .Lpc403  # SM_JUMP_F -> pc=403
.Lpc395:                

# ============================================================================
# stmt 68  (line 68):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc396:                
	SM_PUSH_STR .Lstr_92, 0  # str="'"
.Lpc397:                
	SM_PUSH_VAR .Lstr_85  # var=node
.Lpc398:                
	SM_PUSH_STR .Lstr_92, 0  # str="'"
.Lpc399:                
	SM_CONCAT  # SM_CONCAT
.Lpc400:                
	SM_CONCAT  # SM_CONCAT
.Lpc401:                
	SM_STORE_VAR .Lstr_84  # store -> node_repr
.Lpc402:                
	SM_RETURN  # SM_RETURN
.Lpc403:                
.Lpc404:                

# ============================================================================
# stmt 69  (line 110):  nr_list        r              =  '('
# ============================================================================
.Lpc405:                
	SM_PUSH_STR .Lstr_75, 0  # str="("
.Lpc406:                
	SM_STORE_VAR .Lstr_94  # store -> r
.Lpc407:                

# ============================================================================
# stmt 70  (line 70):  pop_list_end
# ============================================================================
.Lpc408:                
	SM_PUSH_STR .Lstr_7, 0  # str=""
.Lpc409:                
	SM_STORE_VAR .Lstr_95  # store -> sep
.Lpc410:                

# ============================================================================
# stmt 71  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc411:                
	SM_PUSH_VAR .Lstr_85  # var=node
.Lpc412:                
	SM_STORE_VAR .Lstr_96  # store -> c
.Lpc413:                
.Lpc414:                

# ============================================================================
# stmt 72  (line 113):  nr_lp          DIFFER(c)                                    :F(nr_done)
# ============================================================================
.Lpc415:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc416:                
	SM_CALL .Lstr_12, 1  # SM_CALL fname="DIFFER" nargs=1
.Lpc417:                
	SM_POP  # SM_POP: discard TOS
.Lpc418:                
	SM_JUMP_F .Lpc436  # SM_JUMP_F -> pc=436
.Lpc419:                

# ============================================================================
# stmt 73  (line 73):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
# ============================================================================
.Lpc420:                
	SM_PUSH_VAR .Lstr_94  # var=r
.Lpc421:                
	SM_PUSH_VAR .Lstr_95  # var=sep
.Lpc422:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc423:                
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc424:                
	SM_CALL .Lstr_84, 1  # SM_CALL fname="node_repr" nargs=1
.Lpc425:                
	SM_CONCAT  # SM_CONCAT
.Lpc426:                
	SM_CONCAT  # SM_CONCAT
.Lpc427:                
	SM_STORE_VAR .Lstr_94  # store -> r
.Lpc428:                

# ============================================================================
# stmt 74  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc429:                
	SM_PUSH_STR .Lstr_98, 0  # str=", "
.Lpc430:                
	SM_STORE_VAR .Lstr_95  # store -> sep
.Lpc431:                

# ============================================================================
# stmt 75  (line 75):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc432:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc433:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="tail" nargs=1
.Lpc434:                
	SM_STORE_VAR .Lstr_96  # store -> c
.Lpc435:                
	SM_JUMP .Lpc413  # SM_JUMP -> pc=413
.Lpc436:                
.Lpc437:                

# ============================================================================
# stmt 76  (line 117):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc438:                
	SM_PUSH_VAR .Lstr_94  # var=r
.Lpc439:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc440:                
	SM_CONCAT  # SM_CONCAT
.Lpc441:                
	SM_STORE_VAR .Lstr_84  # store -> node_repr
.Lpc442:                
	SM_RETURN  # SM_RETURN
.Lpc443:                
.Lpc444:                

# ============================================================================
# stmt 77  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc445:                

# ============================================================================
# stmt 78  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc446:                
	SM_PUSH_STR .Lstr_101, 0  # str="pp_node(node,indent,suffix)r,pad,c,nxt"
.Lpc447:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc448:                
	SM_POP  # SM_POP: discard TOS
.Lpc449:                
	SM_JUMP .Lpc538  # SM_JUMP -> pc=538
.Lpc450:                
.Lpc451:                

# ============================================================================
# stmt 79  (line 121):  pp_node        r              =  node_repr(node)
# ============================================================================
.Lpc452:                
	SM_PUSH_VAR .Lstr_85  # var=node
.Lpc453:                
	SM_CALL .Lstr_84, 1  # SM_CALL fname="node_repr" nargs=1
.Lpc454:                
	SM_STORE_VAR .Lstr_94  # store -> r
.Lpc455:                

# ============================================================================
# stmt 80  (line 80):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
# ============================================================================
.Lpc456:                
	SM_PUSH_STR .Lstr_71, 0  # str=" "
.Lpc457:                
	SM_PUSH_VAR .Lstr_103  # var=indent
.Lpc458:                
	SM_CALL .Lstr_104, 2  # SM_CALL fname="DUPL" nargs=2
.Lpc459:                
	SM_STORE_VAR .Lstr_105  # store -> pad
.Lpc460:                

# ============================================================================
# stmt 81  (line 81):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc461:                
	SM_PUSH_INT 80
.Lpc462:                
	SM_PUSH_VAR .Lstr_103  # var=indent
.Lpc463:                
	SM_PUSH_VAR .Lstr_94  # var=r
.Lpc464:                
	SM_CALL .Lstr_106, 1  # SM_CALL fname="SIZE" nargs=1
.Lpc465:                
	SM_ARITH 17  # SM_ADD
.Lpc466:                
	SM_CALL .Lstr_107, 2  # SM_CALL fname="GT" nargs=2
.Lpc467:                
	SM_POP  # SM_POP: discard TOS
.Lpc468:                
	SM_JUMP_F .Lpc477  # SM_JUMP_F -> pc=477
.Lpc469:                

# ============================================================================
# stmt 82  (line 82):                 group          =
# ============================================================================
.Lpc470:                
	SM_PUSH_VAR .Lstr_105  # var=pad
.Lpc471:                
	SM_PUSH_VAR .Lstr_94  # var=r
.Lpc472:                
	SM_PUSH_VAR .Lstr_108  # var=suffix
.Lpc473:                
	SM_CONCAT  # SM_CONCAT
.Lpc474:                
	SM_CONCAT  # SM_CONCAT
.Lpc475:                
	SM_STORE_VAR .Lstr_109  # store -> OUTPUT
.Lpc476:                
	SM_RETURN  # SM_RETURN
.Lpc477:                
.Lpc478:                

# ============================================================================
# stmt 83  (line 125):  pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
# ============================================================================
.Lpc479:                
	SM_PUSH_VAR .Lstr_105  # var=pad
.Lpc480:                
	SM_PUSH_STR .Lstr_111, 0  # str="( "
.Lpc481:                
	SM_PUSH_STR .Lstr_92, 0  # str="'"
.Lpc482:                
	SM_PUSH_VAR .Lstr_85  # var=node
.Lpc483:                
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc484:                
	SM_PUSH_STR .Lstr_112, 0  # str="',"
.Lpc485:                
	SM_CONCAT  # SM_CONCAT
.Lpc486:                
	SM_CONCAT  # SM_CONCAT
.Lpc487:                
	SM_CONCAT  # SM_CONCAT
.Lpc488:                
	SM_CONCAT  # SM_CONCAT
.Lpc489:                
	SM_STORE_VAR .Lstr_109  # store -> OUTPUT
.Lpc490:                

# ============================================================================
# stmt 84  (line 84):  +              (word . tag) Push_list('tag')
# ============================================================================
.Lpc491:                
	SM_PUSH_VAR .Lstr_85  # var=node
.Lpc492:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="tail" nargs=1
.Lpc493:                
	SM_STORE_VAR .Lstr_96  # store -> c
.Lpc494:                
.Lpc495:                

# ============================================================================
# stmt 85  (line 127):  pp_wch         DIFFER(c)                                    :F(pp_wdone)
# ============================================================================
.Lpc496:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc497:                
	SM_CALL .Lstr_12, 1  # SM_CALL fname="DIFFER" nargs=1
.Lpc498:                
	SM_POP  # SM_POP: discard TOS
.Lpc499:                
	SM_JUMP_F .Lpc535  # SM_JUMP_F -> pc=535
.Lpc500:                

# ============================================================================
# stmt 86  (line 86):  +                  *delim
# ============================================================================
.Lpc501:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc502:                
	SM_CALL .Lstr_15, 1  # SM_CALL fname="tail" nargs=1
.Lpc503:                
	SM_STORE_VAR .Lstr_114  # store -> nxt
.Lpc504:                

# ============================================================================
# stmt 87  (line 87):  +                  ( *group
# ============================================================================
.Lpc505:                
	SM_PUSH_VAR .Lstr_114  # var=nxt
.Lpc506:                
	SM_CALL .Lstr_12, 1  # SM_CALL fname="DIFFER" nargs=1
.Lpc507:                
	SM_POP  # SM_POP: discard TOS
.Lpc508:                
	SM_JUMP_F .Lpc522  # SM_JUMP_F -> pc=522
.Lpc509:                

# ============================================================================
# stmt 88  (line 88):  +                  | (word . wrd) Push_item('wrd')
# ============================================================================
.Lpc510:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc511:                
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc512:                
	SM_PUSH_VAR .Lstr_103  # var=indent
.Lpc513:                
	SM_PUSH_INT 2
.Lpc514:                
	SM_ARITH 17  # SM_ADD
.Lpc515:                
	SM_PUSH_STR .Lstr_115, 0  # str=","
.Lpc516:                
	SM_CALL .Lstr_102, 3  # SM_CALL fname="pp_node" nargs=3
.Lpc517:                
	SM_POP  # SM_POP: discard TOS
.Lpc518:                

# ============================================================================
# stmt 89  (line 89):  +                  )
# ============================================================================
.Lpc519:                
	SM_PUSH_VAR .Lstr_114  # var=nxt
.Lpc520:                
	SM_STORE_VAR .Lstr_96  # store -> c
.Lpc521:                
	SM_JUMP .Lpc494  # SM_JUMP -> pc=494
.Lpc522:                
.Lpc523:                

# ============================================================================
# stmt 90  (line 132):  pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
# ============================================================================
.Lpc524:                
	SM_PUSH_VAR .Lstr_96  # var=c
.Lpc525:                
	SM_CALL .Lstr_13, 1  # SM_CALL fname="head" nargs=1
.Lpc526:                
	SM_PUSH_VAR .Lstr_103  # var=indent
.Lpc527:                
	SM_PUSH_INT 2
.Lpc528:                
	SM_ARITH 17  # SM_ADD
.Lpc529:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc530:                
	SM_PUSH_VAR .Lstr_108  # var=suffix
.Lpc531:                
	SM_CONCAT  # SM_CONCAT
.Lpc532:                
	SM_CALL .Lstr_102, 3  # SM_CALL fname="pp_node" nargs=3
.Lpc533:                
	SM_POP  # SM_POP: discard TOS
.Lpc534:                
	SM_RETURN  # SM_RETURN
.Lpc535:                
.Lpc536:                

# ============================================================================
# stmt 91  (line 133):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc537:                
	SM_RETURN  # SM_RETURN
.Lpc538:                
.Lpc539:                

# ============================================================================
# stmt 92  (line 135):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc540:                

# ============================================================================
# stmt 93  (line 93):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc541:                
	SM_PUSH_STR .Lstr_119, 0  # str="pp_bank()cur"
.Lpc542:                
	SM_CALL .Lstr_5, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc543:                
	SM_POP  # SM_POP: discard TOS
.Lpc544:                
	SM_JUMP .Lpc557  # SM_JUMP -> pc=557
.Lpc545:                
.Lpc546:                

# ============================================================================
# stmt 94  (line 137):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
.Lpc547:                
	SM_PUSH_VAR .Lstr_121  # var=bank
.Lpc548:                
	SM_PUSH_INT 0
.Lpc549:                
	SM_PUSH_STR .Lstr_7, 0  # str=""
.Lpc550:                
	SM_CALL .Lstr_102, 3  # SM_CALL fname="pp_node" nargs=3
.Lpc551:                
	SM_POP  # SM_POP: discard TOS
.Lpc552:                

# ============================================================================
# stmt 95  (line 95):  +              POS(0)
# ============================================================================
.Lpc553:                
	SM_PUSH_STR .Lstr_22, 0  # str="dummy"
.Lpc554:                
	SM_CALL .Lstr_23, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc555:                
	SM_STORE_VAR .Lstr_120  # store -> pp_bank
.Lpc556:                
	SM_RETURN  # SM_RETURN
.Lpc557:                
.Lpc558:                

# ============================================================================
# stmt 96  (line 140):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc559:                
.Lpc560:                

# ============================================================================
# stmt 97  (line 141):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
.Lpc561:                
	SM_PUSH_VAR .Lstr_124  # var=INPUT
.Lpc562:                
	SM_STORE_VAR .Lstr_125  # store -> line
.Lpc563:                
	SM_JUMP_F .Lpc572  # SM_JUMP_F -> pc=572
.Lpc564:                

# ============================================================================
# stmt 98  (line 98):  +              ARBNO(
# ============================================================================
.Lpc565:                
	SM_PUSH_VAR .Lstr_126  # var=src
.Lpc566:                
	SM_PUSH_VAR .Lstr_125  # var=line
.Lpc567:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc568:                
	SM_CONCAT  # SM_CONCAT
.Lpc569:                
	SM_CONCAT  # SM_CONCAT
.Lpc570:                
	SM_STORE_VAR .Lstr_126  # store -> src
.Lpc571:                
	SM_JUMP .Lpc559  # SM_JUMP -> pc=559
.Lpc572:                
.Lpc573:                

# ============================================================================
# stmt 99  (line 143):  slurp_done     src            treebank                      :F(main_fail)
# ============================================================================
.Lpc574:                
	SM_PUSH_VAR .Lstr_82  # var=treebank
.Lpc575:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc576:                
	SM_PUSH_VAR .Lstr_126  # var=src
.Lpc577:                
	SM_PUSH_INT 0
.Lpc578:                
	SM_EXEC_STMT_VARIANT 0, .Lstr_126  # SM_EXEC_STMT_VARIANT subj=src has_repl=0
.Lpc579:                
	SM_JUMP_F .Lpc584  # SM_JUMP_F -> pc=584
.Lpc580:                

# ============================================================================
# stmt 100  (line 100):  +                  ARBNO(*group)
# ============================================================================
.Lpc581:                
	SM_CALL .Lstr_120, 0  # SM_CALL fname="pp_bank" nargs=0
.Lpc582:                
	SM_STORE_VAR .Lstr_22  # store -> dummy
.Lpc583:                
	SM_JUMP .Lpc588  # SM_JUMP -> pc=588
.Lpc584:                
.Lpc585:                

# ============================================================================
# stmt 101  (line 145):  main_fail      OUTPUT         =  'Pattern match failed'
# ============================================================================
.Lpc586:                
	SM_PUSH_STR .Lstr_129, 0  # str="Pattern match failed"
.Lpc587:                
	SM_STORE_VAR .Lstr_109  # store -> OUTPUT
.Lpc588:                
.Lpc589:                

# ============================================================================
# stmt 102  (line 102):  +                  Pop_list()
# ============================================================================
.Lpc590:                
	SM_HALT  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
