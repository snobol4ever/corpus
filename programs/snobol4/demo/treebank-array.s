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
	.string "frame_id"
.Lstr_5:
	.string "TABLE"
.Lstr_6:
	.string "stk_tag"
.Lstr_7:
	.string "stk_n"
.Lstr_8:
	.string "stk_c"
.Lstr_9:
	.string "stk_push_frame(v)"
.Lstr_10:
	.string "DEFINE"
.Lstr_11:
	.string "stk_push_frame"
.Lstr_12:
	.string "v"
.Lstr_13:
	.string "IDX_SET"
.Lstr_14:
	.string "stk"
.Lstr_15:
	.string "list"
.Lstr_16:
	.string "dummy"
.Lstr_17:
	.string "NAME_PUSH"
.Lstr_18:
	.string "stk_push_frame_end"
.Lstr_19:
	.string "stk_push_item(v,cur)"
.Lstr_20:
	.string "stk_push_item"
.Lstr_21:
	.string "head"
.Lstr_22:
	.string "cur"
.Lstr_23:
	.string "IDX"
.Lstr_24:
	.string "stk_push_item_end"
.Lstr_25:
	.string "stk_pop_into_parent(child,par,n)"
.Lstr_26:
	.string "stk_pop_into_parent"
.Lstr_27:
	.string "child"
.Lstr_28:
	.string "tail"
.Lstr_29:
	.string "par"
.Lstr_30:
	.string "n"
.Lstr_31:
	.string "stk_pop_into_parent_end"
.Lstr_32:
	.string "stk_pop_final(var,child)"
.Lstr_33:
	.string "stk_pop_final"
.Lstr_34:
	.string "var"
.Lstr_35:
	.string "ASGN_INDIR"
.Lstr_36:
	.string "stk_pop_final_end"
.Lstr_37:
	.string "init_list(v)"
.Lstr_38:
	.string "Init_list(vs)"
.Lstr_39:
	.string "init_list"
.Lstr_40:
	.string ""
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
	.string "node_repr(f)r,sep,i,n,tag"
.Lstr_72:
	.string "node_repr"
.Lstr_73:
	.string "f"
.Lstr_74:
	.string "DATATYPE"
.Lstr_75:
	.string "LCASE"
.Lstr_76:
	.string "UCASE"
.Lstr_77:
	.string "REPLACE"
.Lstr_78:
	.string "STRING"
.Lstr_79:
	.string "IDENT"
.Lstr_80:
	.string "'"
.Lstr_81:
	.string "nr_frame"
.Lstr_82:
	.string "tag"
.Lstr_83:
	.string "('"
.Lstr_84:
	.string "r"
.Lstr_85:
	.string "i"
.Lstr_86:
	.string "nr_lp"
.Lstr_87:
	.string "LT"
.Lstr_88:
	.string ", "
.Lstr_89:
	.string "nr_done"
.Lstr_90:
	.string "node_repr_end"
.Lstr_91:
	.string "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.Lstr_92:
	.string "pp_node"
.Lstr_93:
	.string " "
.Lstr_94:
	.string "indent"
.Lstr_95:
	.string "DUPL"
.Lstr_96:
	.string "suffix"
.Lstr_97:
	.string "OUTPUT"
.Lstr_98:
	.string "pp_frame"
.Lstr_99:
	.string "pad"
.Lstr_100:
	.string "SIZE"
.Lstr_101:
	.string "GT"
.Lstr_102:
	.string "pp_wrap"
.Lstr_103:
	.string "( "
.Lstr_104:
	.string "',"
.Lstr_105:
	.string "pp_wch"
.Lstr_106:
	.string "nxt"
.Lstr_107:
	.string ","
.Lstr_108:
	.string "pp_wlast"
.Lstr_109:
	.string "pp_wdone"
.Lstr_110:
	.string "pp_node_end"
.Lstr_111:
	.string "pp_bank()"
.Lstr_112:
	.string "pp_bank"
.Lstr_113:
	.string "bank"
.Lstr_114:
	.string "pp_bank_end"
.Lstr_115:
	.string "delim"
.Lstr_116:
	.string "( )"
.Lstr_117:
	.string "word"
.Lstr_118:
	.string "("
.Lstr_119:
	.string "group"
.Lstr_120:
	.string "wrd"
.Lstr_121:
	.string "BAL"
.Lstr_122:
	.string "item"
.Lstr_123:
	.string "spat"
.Lstr_124:
	.string "slurp"
.Lstr_125:
	.string "INPUT"
.Lstr_126:
	.string "line"
.Lstr_127:
	.string "src"
.Lstr_128:
	.string "slurp_done"
.Lstr_129:
	.string "BANK"
.Lstr_130:
	.string "loop"
.Lstr_131:
	.string "ROOT"
.Lstr_132:
	.string "parse_fail"
.Lstr_133:
	.string "Parse failed on: "
.Lstr_134:
	.string "all_done"
.Lstr_135:
	.string "END"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: stk_push_frame -> .Lpc32
	.quad   .Lstr_11
	.quad   .Lpc32
	# chunk: stk_push_frame_end -> .Lpc63
	.quad   .Lstr_18
	.quad   .Lpc63
	# chunk: stk_push_item -> .Lpc70
	.quad   .Lstr_20
	.quad   .Lpc70
	# chunk: stk_push_item_end -> .Lpc98
	.quad   .Lstr_24
	.quad   .Lpc98
	# chunk: stk_pop_into_parent -> .Lpc105
	.quad   .Lstr_26
	.quad   .Lpc105
	# chunk: stk_pop_into_parent_end -> .Lpc145
	.quad   .Lstr_31
	.quad   .Lpc145
	# chunk: stk_pop_final -> .Lpc152
	.quad   .Lstr_33
	.quad   .Lpc152
	# chunk: stk_pop_final_end -> .Lpc170
	.quad   .Lstr_36
	.quad   .Lpc170
	# chunk: init_list -> .Lpc181
	.quad   .Lstr_39
	.quad   .Lpc181
	# chunk: Init_list -> .Lpc206
	.quad   .Lstr_41
	.quad   .Lpc206
	# chunk: init_list_end -> .Lpc216
	.quad   .Lstr_46
	.quad   .Lpc216
	# chunk: push_list -> .Lpc227
	.quad   .Lstr_49
	.quad   .Lpc227
	# chunk: Push_list -> .Lpc237
	.quad   .Lstr_50
	.quad   .Lpc237
	# chunk: push_list_end -> .Lpc247
	.quad   .Lstr_52
	.quad   .Lpc247
	# chunk: push_item -> .Lpc258
	.quad   .Lstr_55
	.quad   .Lpc258
	# chunk: Push_item -> .Lpc268
	.quad   .Lstr_56
	.quad   .Lpc268
	# chunk: push_item_end -> .Lpc278
	.quad   .Lstr_58
	.quad   .Lpc278
	# chunk: pop_list -> .Lpc289
	.quad   .Lstr_61
	.quad   .Lpc289
	# chunk: Pop_list -> .Lpc298
	.quad   .Lstr_62
	.quad   .Lpc298
	# chunk: pop_list_end -> .Lpc306
	.quad   .Lstr_64
	.quad   .Lpc306
	# chunk: pop_final -> .Lpc317
	.quad   .Lstr_67
	.quad   .Lpc317
	# chunk: Pop_final -> .Lpc327
	.quad   .Lstr_68
	.quad   .Lpc327
	# chunk: pop_final_end -> .Lpc337
	.quad   .Lstr_70
	.quad   .Lpc337
	# chunk: node_repr -> .Lpc344
	.quad   .Lstr_72
	.quad   .Lpc344
	# chunk: nr_frame -> .Lpc363
	.quad   .Lstr_81
	.quad   .Lpc363
	# chunk: nr_lp -> .Lpc384
	.quad   .Lstr_86
	.quad   .Lpc384
	# chunk: nr_done -> .Lpc411
	.quad   .Lstr_89
	.quad   .Lpc411
	# chunk: node_repr_end -> .Lpc418
	.quad   .Lstr_90
	.quad   .Lpc418
	# chunk: pp_node -> .Lpc425
	.quad   .Lstr_92
	.quad   .Lpc425
	# chunk: pp_frame -> .Lpc450
	.quad   .Lstr_98
	.quad   .Lpc450
	# chunk: pp_wrap -> .Lpc477
	.quad   .Lstr_102
	.quad   .Lpc477
	# chunk: pp_wch -> .Lpc502
	.quad   .Lstr_105
	.quad   .Lpc502
	# chunk: pp_wlast -> .Lpc537
	.quad   .Lstr_108
	.quad   .Lpc537
	# chunk: pp_wdone -> .Lpc553
	.quad   .Lstr_109
	.quad   .Lpc553
	# chunk: pp_node_end -> .Lpc556
	.quad   .Lstr_110
	.quad   .Lpc556
	# chunk: pp_bank -> .Lpc563
	.quad   .Lstr_112
	.quad   .Lpc563
	# chunk: pp_bank_end -> .Lpc575
	.quad   .Lstr_114
	.quad   .Lpc575
	# chunk: slurp -> .Lpc636
	.quad   .Lstr_124
	.quad   .Lpc636
	# chunk: slurp_done -> .Lpc649
	.quad   .Lstr_128
	.quad   .Lpc649
	# chunk: loop -> .Lpc659
	.quad   .Lstr_130
	.quad   .Lpc659
	# chunk: parse_fail -> .Lpc682
	.quad   .Lstr_132
	.quad   .Lpc682
	# chunk: all_done -> .Lpc692
	.quad   .Lstr_134
	.quad   .Lpc692
	# chunk: END -> .Lpc701
	.quad   .Lstr_135
	.quad   .Lpc701
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
# 703 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/treebank-array.sno  (156 lines)
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
# stmt 2  (line 2):  * treebank-array.sno — Penn Treebank s-expression parser (array/append style)
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
	SM_PUSH_INT 0
.Lpc16:                 
	SM_STORE_VAR .Lstr_4  # store -> frame_id
.Lpc17:                 

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 200k treebank-array.sno < VBGinTASA.dat
# ============================================================================
.Lpc18:                 
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc19:                 
	SM_STORE_VAR .Lstr_6  # store -> stk_tag
.Lpc20:                 

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc21:                 
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc22:                 
	SM_STORE_VAR .Lstr_7  # store -> stk_n
.Lpc23:                 

# ============================================================================
# stmt 6  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
# ============================================================================
.Lpc24:                 
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc25:                 
	SM_STORE_VAR .Lstr_8  # store -> stk_c
.Lpc26:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc27:                 
	SM_PUSH_STR .Lstr_9, 0  # str="stk_push_frame(v)"
.Lpc28:                 
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc29:                 
	SM_POP  # SM_POP: discard TOS
.Lpc30:                 
	SM_JUMP .Lpc62  # SM_JUMP -> pc=62
.Lpc31:                 
.Lpc32:                 

# ============================================================================
# stmt 8  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
.Lpc33:                 
	SM_PUSH_VAR .Lstr_4  # var=frame_id
.Lpc34:                 
	SM_PUSH_INT 1
.Lpc35:                 
	SM_ARITH 17  # SM_ADD
.Lpc36:                 
	SM_STORE_VAR .Lstr_4  # store -> frame_id
.Lpc37:                 

# ============================================================================
# stmt 9  (line 9):                 frame_id       =  0
# ============================================================================
.Lpc38:                 
	SM_PUSH_VAR .Lstr_12  # var=v
.Lpc39:                 
	SM_PUSH_VAR .Lstr_6  # var=stk_tag
.Lpc40:                 
	SM_PUSH_VAR .Lstr_4  # var=frame_id
.Lpc41:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc42:                 

# ============================================================================
# stmt 10  (line 10):                 stk_tag        =  TABLE()
# ============================================================================
.Lpc43:                 
	SM_PUSH_INT 0
.Lpc44:                 
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc45:                 
	SM_PUSH_VAR .Lstr_4  # var=frame_id
.Lpc46:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc47:                 

# ============================================================================
# stmt 11  (line 11):                 stk_n          =  TABLE()
# ============================================================================
.Lpc48:                 
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc49:                 
	SM_PUSH_VAR .Lstr_8  # var=stk_c
.Lpc50:                 
	SM_PUSH_VAR .Lstr_4  # var=frame_id
.Lpc51:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc52:                 

# ============================================================================
# stmt 12  (line 12):                 stk_c          =  TABLE()
# ============================================================================
.Lpc53:                 
	SM_PUSH_VAR .Lstr_4  # var=frame_id
.Lpc54:                 
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc55:                 
	SM_CALL .Lstr_15, 2  # SM_CALL fname="list" nargs=2
.Lpc56:                 
	SM_STORE_VAR .Lstr_14  # store -> stk
.Lpc57:                 

# ============================================================================
# stmt 13  (line 13):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc58:                 
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc59:                 
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc60:                 
	SM_STORE_VAR .Lstr_11  # store -> stk_push_frame
.Lpc61:                 
	SM_RETURN  # SM_RETURN
.Lpc62:                 
.Lpc63:                 

# ============================================================================
# stmt 14  (line 22):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc64:                 

# ============================================================================
# stmt 15  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
.Lpc65:                 
	SM_PUSH_STR .Lstr_19, 0  # str="stk_push_item(v,cur)"
.Lpc66:                 
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc67:                 
	SM_POP  # SM_POP: discard TOS
.Lpc68:                 
	SM_JUMP .Lpc97  # SM_JUMP -> pc=97
.Lpc69:                 
.Lpc70:                 

# ============================================================================
# stmt 16  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
.Lpc71:                 
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc72:                 
	SM_CALL .Lstr_21, 1  # SM_CALL fname="head" nargs=1
.Lpc73:                 
	SM_STORE_VAR .Lstr_22  # store -> cur
.Lpc74:                 

# ============================================================================
# stmt 17  (line 17):                 stk_n[frame_id]      =  0
# ============================================================================
.Lpc75:                 
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc76:                 
	SM_PUSH_VAR .Lstr_22  # var=cur
.Lpc77:                 
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc78:                 
	SM_PUSH_INT 1
.Lpc79:                 
	SM_ARITH 17  # SM_ADD
.Lpc80:                 
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc81:                 
	SM_PUSH_VAR .Lstr_22  # var=cur
.Lpc82:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc83:                 

# ============================================================================
# stmt 18  (line 18):                 stk_c[frame_id]      =  TABLE()
# ============================================================================
.Lpc84:                 
	SM_PUSH_VAR .Lstr_12  # var=v
.Lpc85:                 
	SM_PUSH_VAR .Lstr_8  # var=stk_c
.Lpc86:                 
	SM_PUSH_VAR .Lstr_22  # var=cur
.Lpc87:                 
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc88:                 
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc89:                 
	SM_PUSH_VAR .Lstr_22  # var=cur
.Lpc90:                 
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc91:                 
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc92:                 

# ============================================================================
# stmt 19  (line 19):                 stk                  =  list(frame_id, stk)
# ============================================================================
.Lpc93:                 
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc94:                 
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc95:                 
	SM_STORE_VAR .Lstr_20  # store -> stk_push_item
.Lpc96:                 
	SM_RETURN  # SM_RETURN
.Lpc97:                 
.Lpc98:                 

# ============================================================================
# stmt 20  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc99:                 

# ============================================================================
# stmt 21  (line 21):  stk_push_frame_end
# ============================================================================
.Lpc100:                
	SM_PUSH_STR .Lstr_25, 0  # str="stk_pop_into_parent(child,par,n)"
.Lpc101:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc102:                
	SM_POP  # SM_POP: discard TOS
.Lpc103:                
	SM_JUMP .Lpc144  # SM_JUMP -> pc=144
.Lpc104:                
.Lpc105:                

# ============================================================================
# stmt 22  (line 32):                 child                =  head(stk)
# ============================================================================
.Lpc106:                

# ============================================================================
# stmt 23  (line 23):                 DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
# ============================================================================
.Lpc107:                
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc108:                
	SM_CALL .Lstr_21, 1  # SM_CALL fname="head" nargs=1
.Lpc109:                
	SM_STORE_VAR .Lstr_27  # store -> child
.Lpc110:                

# ============================================================================
# stmt 24  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
.Lpc111:                
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc112:                
	SM_CALL .Lstr_28, 1  # SM_CALL fname="tail" nargs=1
.Lpc113:                
	SM_STORE_VAR .Lstr_14  # store -> stk
.Lpc114:                

# ============================================================================
# stmt 25  (line 25):                 stk_n[cur]           =  stk_n[cur] + 1
# ============================================================================
.Lpc115:                
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc116:                
	SM_CALL .Lstr_21, 1  # SM_CALL fname="head" nargs=1
.Lpc117:                
	SM_STORE_VAR .Lstr_29  # store -> par
.Lpc118:                

# ============================================================================
# stmt 26  (line 26):                 stk_c[cur][stk_n[cur]] =  v
# ============================================================================
.Lpc119:                
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc120:                
	SM_PUSH_VAR .Lstr_29  # var=par
.Lpc121:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc122:                
	SM_STORE_VAR .Lstr_30  # store -> n
.Lpc123:                

# ============================================================================
# stmt 27  (line 27):                 stk_push_item        =  .dummy               :(RETURN)
# ============================================================================
.Lpc124:                
	SM_PUSH_VAR .Lstr_30  # var=n
.Lpc125:                
	SM_PUSH_INT 1
.Lpc126:                
	SM_ARITH 17  # SM_ADD
.Lpc127:                
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc128:                
	SM_PUSH_VAR .Lstr_29  # var=par
.Lpc129:                
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc130:                

# ============================================================================
# stmt 28  (line 28):  stk_push_item_end
# ============================================================================
.Lpc131:                
	SM_PUSH_VAR .Lstr_27  # var=child
.Lpc132:                
	SM_PUSH_VAR .Lstr_8  # var=stk_c
.Lpc133:                
	SM_PUSH_VAR .Lstr_29  # var=par
.Lpc134:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc135:                
	SM_PUSH_VAR .Lstr_30  # var=n
.Lpc136:                
	SM_PUSH_INT 1
.Lpc137:                
	SM_ARITH 17  # SM_ADD
.Lpc138:                
	SM_CALL .Lstr_13, 3  # SM_CALL fname="IDX_SET" nargs=3
.Lpc139:                

# ============================================================================
# stmt 29  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc140:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc141:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc142:                
	SM_STORE_VAR .Lstr_26  # store -> stk_pop_into_parent
.Lpc143:                
	SM_RETURN  # SM_RETURN
.Lpc144:                
.Lpc145:                

# ============================================================================
# stmt 30  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc146:                

# ============================================================================
# stmt 31  (line 31):  stk_pop_into_parent
# ============================================================================
.Lpc147:                
	SM_PUSH_STR .Lstr_32, 0  # str="stk_pop_final(var,child)"
.Lpc148:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc149:                
	SM_POP  # SM_POP: discard TOS
.Lpc150:                
	SM_JUMP .Lpc169  # SM_JUMP -> pc=169
.Lpc151:                
.Lpc152:                

# ============================================================================
# stmt 32  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
.Lpc153:                
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc154:                
	SM_CALL .Lstr_21, 1  # SM_CALL fname="head" nargs=1
.Lpc155:                
	SM_STORE_VAR .Lstr_27  # store -> child
.Lpc156:                

# ============================================================================
# stmt 33  (line 33):                 stk                  =  tail(stk)
# ============================================================================
.Lpc157:                
	SM_PUSH_VAR .Lstr_14  # var=stk
.Lpc158:                
	SM_CALL .Lstr_28, 1  # SM_CALL fname="tail" nargs=1
.Lpc159:                
	SM_STORE_VAR .Lstr_14  # store -> stk
.Lpc160:                

# ============================================================================
# stmt 34  (line 34):                 par                  =  head(stk)
# ============================================================================
.Lpc161:                
	SM_PUSH_VAR .Lstr_27  # var=child
.Lpc162:                
	SM_PUSH_VAR .Lstr_34  # var=var
.Lpc163:                
	SM_CALL .Lstr_35, 2  # SM_CALL fname="ASGN_INDIR" nargs=2
.Lpc164:                

# ============================================================================
# stmt 35  (line 35):                 n                    =  stk_n[par]
# ============================================================================
.Lpc165:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc166:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc167:                
	SM_STORE_VAR .Lstr_33  # store -> stk_pop_final
.Lpc168:                
	SM_RETURN  # SM_RETURN
.Lpc169:                
.Lpc170:                

# ============================================================================
# stmt 36  (line 47):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc171:                

# ============================================================================
# stmt 37  (line 37):                 stk_c[par][n + 1]    =  child
# ============================================================================
.Lpc172:                
	SM_PUSH_STR .Lstr_37, 0  # str="init_list(v)"
.Lpc173:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc174:                
	SM_POP  # SM_POP: discard TOS
.Lpc175:                

# ============================================================================
# stmt 38  (line 38):                 stk_pop_into_parent  =  .dummy               :(RETURN)
# ============================================================================
.Lpc176:                
	SM_PUSH_STR .Lstr_38, 0  # str="Init_list(vs)"
.Lpc177:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc178:                
	SM_POP  # SM_POP: discard TOS
.Lpc179:                
	SM_JUMP .Lpc215  # SM_JUMP -> pc=215
.Lpc180:                
.Lpc181:                

# ============================================================================
# stmt 39  (line 50):  init_list      $v             =
# ============================================================================
.Lpc182:                
	SM_PUSH_STR .Lstr_40, 0  # str=""
.Lpc183:                
	SM_PUSH_VAR .Lstr_12  # var=v
.Lpc184:                
	SM_CALL .Lstr_35, 2  # SM_CALL fname="ASGN_INDIR" nargs=2
.Lpc185:                

# ============================================================================
# stmt 40  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc186:                
	SM_PUSH_STR .Lstr_40, 0  # str=""
.Lpc187:                
	SM_STORE_VAR .Lstr_14  # store -> stk
.Lpc188:                

# ============================================================================
# stmt 41  (line 41):                 DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
# ============================================================================
.Lpc189:                
	SM_PUSH_INT 0
.Lpc190:                
	SM_STORE_VAR .Lstr_4  # store -> frame_id
.Lpc191:                

# ============================================================================
# stmt 42  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
.Lpc192:                
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc193:                
	SM_STORE_VAR .Lstr_6  # store -> stk_tag
.Lpc194:                

# ============================================================================
# stmt 43  (line 43):                 stk                  =  tail(stk)
# ============================================================================
.Lpc195:                
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc196:                
	SM_STORE_VAR .Lstr_7  # store -> stk_n
.Lpc197:                

# ============================================================================
# stmt 44  (line 44):                 $var                 =  child
# ============================================================================
.Lpc198:                
	SM_CALL .Lstr_5, 0  # SM_CALL fname="TABLE" nargs=0
.Lpc199:                
	SM_STORE_VAR .Lstr_8  # store -> stk_c
.Lpc200:                

# ============================================================================
# stmt 45  (line 45):                 stk_pop_final        =  .dummy               :(RETURN)
# ============================================================================
.Lpc201:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc202:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc203:                
	SM_STORE_VAR .Lstr_39  # store -> init_list
.Lpc204:                
	SM_RETURN_VARIANT 2, 0, 204  # SM_NRETURN
.Lpc205:                
.Lpc206:                

# ============================================================================
# stmt 46  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc207:                
	SM_PUSH_STR .Lstr_42, 0  # str="epsilon . *init_list("
.Lpc208:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc209:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc210:                
	SM_CONCAT  # SM_CONCAT
.Lpc211:                
	SM_CONCAT  # SM_CONCAT
.Lpc212:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc213:                
	SM_STORE_VAR .Lstr_41  # store -> Init_list
.Lpc214:                
	SM_RETURN  # SM_RETURN
.Lpc215:                
.Lpc216:                

# ============================================================================
# stmt 47  (line 59):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc217:                

# ============================================================================
# stmt 48  (line 48):                 DEFINE('init_list(v)')
# ============================================================================
.Lpc218:                
	SM_PUSH_STR .Lstr_47, 0  # str="push_list(v)"
.Lpc219:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc220:                
	SM_POP  # SM_POP: discard TOS
.Lpc221:                

# ============================================================================
# stmt 49  (line 49):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
.Lpc222:                
	SM_PUSH_STR .Lstr_48, 0  # str="Push_list(vs)"
.Lpc223:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc224:                
	SM_POP  # SM_POP: discard TOS
.Lpc225:                
	SM_JUMP .Lpc246  # SM_JUMP -> pc=246
.Lpc226:                
.Lpc227:                

# ============================================================================
# stmt 50  (line 62):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc228:                
	SM_PUSH_VAR .Lstr_12  # var=v
.Lpc229:                
	SM_CALL .Lstr_11, 1  # SM_CALL fname="stk_push_frame" nargs=1
.Lpc230:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc231:                

# ============================================================================
# stmt 51  (line 51):                 stk            =
# ============================================================================
.Lpc232:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc233:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc234:                
	SM_STORE_VAR .Lstr_49  # store -> push_list
.Lpc235:                
	SM_RETURN_VARIANT 2, 0, 235  # SM_NRETURN
.Lpc236:                
.Lpc237:                

# ============================================================================
# stmt 52  (line 64):  Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc238:                
	SM_PUSH_STR .Lstr_51, 0  # str="epsilon . *push_list("
.Lpc239:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc240:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc241:                
	SM_CONCAT  # SM_CONCAT
.Lpc242:                
	SM_CONCAT  # SM_CONCAT
.Lpc243:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc244:                
	SM_STORE_VAR .Lstr_50  # store -> Push_list
.Lpc245:                
	SM_RETURN  # SM_RETURN
.Lpc246:                
.Lpc247:                

# ============================================================================
# stmt 53  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc248:                

# ============================================================================
# stmt 54  (line 54):                 stk_n          =  TABLE()
# ============================================================================
.Lpc249:                
	SM_PUSH_STR .Lstr_53, 0  # str="push_item(v)"
.Lpc250:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc251:                
	SM_POP  # SM_POP: discard TOS
.Lpc252:                

# ============================================================================
# stmt 55  (line 55):                 stk_c          =  TABLE()
# ============================================================================
.Lpc253:                
	SM_PUSH_STR .Lstr_54, 0  # str="Push_item(vs)"
.Lpc254:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc255:                
	SM_POP  # SM_POP: discard TOS
.Lpc256:                
	SM_JUMP .Lpc277  # SM_JUMP -> pc=277
.Lpc257:                
.Lpc258:                

# ============================================================================
# stmt 56  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc259:                
	SM_PUSH_VAR .Lstr_12  # var=v
.Lpc260:                
	SM_CALL .Lstr_20, 1  # SM_CALL fname="stk_push_item" nargs=1
.Lpc261:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc262:                

# ============================================================================
# stmt 57  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc263:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc264:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc265:                
	SM_STORE_VAR .Lstr_55  # store -> push_item
.Lpc266:                
	SM_RETURN_VARIANT 2, 0, 266  # SM_NRETURN
.Lpc267:                
.Lpc268:                

# ============================================================================
# stmt 58  (line 71):  Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
# ============================================================================
.Lpc269:                
	SM_PUSH_STR .Lstr_57, 0  # str="epsilon . *push_item("
.Lpc270:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc271:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc272:                
	SM_CONCAT  # SM_CONCAT
.Lpc273:                
	SM_CONCAT  # SM_CONCAT
.Lpc274:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc275:                
	SM_STORE_VAR .Lstr_56  # store -> Push_item
.Lpc276:                
	SM_RETURN  # SM_RETURN
.Lpc277:                
.Lpc278:                

# ============================================================================
# stmt 59  (line 73):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc279:                

# ============================================================================
# stmt 60  (line 60):                 DEFINE('push_list(v)')
# ============================================================================
.Lpc280:                
	SM_PUSH_STR .Lstr_59, 0  # str="pop_list()"
.Lpc281:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc282:                
	SM_POP  # SM_POP: discard TOS
.Lpc283:                

# ============================================================================
# stmt 61  (line 61):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ============================================================================
.Lpc284:                
	SM_PUSH_STR .Lstr_60, 0  # str="Pop_list()"
.Lpc285:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc286:                
	SM_POP  # SM_POP: discard TOS
.Lpc287:                
	SM_JUMP .Lpc305  # SM_JUMP -> pc=305
.Lpc288:                
.Lpc289:                

# ============================================================================
# stmt 62  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc290:                
	SM_CALL .Lstr_26, 0  # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc291:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc292:                

# ============================================================================
# stmt 63  (line 63):                 push_list      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc293:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc294:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc295:                
	SM_STORE_VAR .Lstr_61  # store -> pop_list
.Lpc296:                
	SM_RETURN_VARIANT 2, 0, 296  # SM_NRETURN
.Lpc297:                
.Lpc298:                

# ============================================================================
# stmt 64  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc299:                
	SM_PUSH_VAR .Lstr_63  # var=epsilon
.Lpc300:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc301:                
	SM_PAT_CAPTURE_FN 0, .Lstr_61  # SM_PAT_CAPTURE_FN fname=pop_list is_imm=0 namelist=(NULL)
.Lpc302:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc303:                
	SM_STORE_VAR .Lstr_62  # store -> Pop_list
.Lpc304:                
	SM_RETURN  # SM_RETURN
.Lpc305:                
.Lpc306:                

# ============================================================================
# stmt 65  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc307:                

# ============================================================================
# stmt 66  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc308:                
	SM_PUSH_STR .Lstr_65, 0  # str="pop_final(v)"
.Lpc309:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc310:                
	SM_POP  # SM_POP: discard TOS
.Lpc311:                

# ============================================================================
# stmt 67  (line 67):                 DEFINE('push_item(v)')
# ============================================================================
.Lpc312:                
	SM_PUSH_STR .Lstr_66, 0  # str="Pop_final(vs)"
.Lpc313:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc314:                
	SM_POP  # SM_POP: discard TOS
.Lpc315:                
	SM_JUMP .Lpc336  # SM_JUMP -> pc=336
.Lpc316:                
.Lpc317:                

# ============================================================================
# stmt 68  (line 83):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc318:                
	SM_PUSH_VAR .Lstr_12  # var=v
.Lpc319:                
	SM_CALL .Lstr_33, 1  # SM_CALL fname="stk_pop_final" nargs=1
.Lpc320:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc321:                

# ============================================================================
# stmt 69  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc322:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc323:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc324:                
	SM_STORE_VAR .Lstr_67  # store -> pop_final
.Lpc325:                
	SM_RETURN_VARIANT 2, 0, 325  # SM_NRETURN
.Lpc326:                
.Lpc327:                

# ============================================================================
# stmt 70  (line 85):  Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
# ============================================================================
.Lpc328:                
	SM_PUSH_STR .Lstr_69, 0  # str="epsilon . *pop_final("
.Lpc329:                
	SM_PUSH_VAR .Lstr_43  # var=vs
.Lpc330:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc331:                
	SM_CONCAT  # SM_CONCAT
.Lpc332:                
	SM_CONCAT  # SM_CONCAT
.Lpc333:                
	SM_CALL .Lstr_45, 1  # SM_CALL fname="EVAL" nargs=1
.Lpc334:                
	SM_STORE_VAR .Lstr_68  # store -> Pop_final
.Lpc335:                
	SM_RETURN  # SM_RETURN
.Lpc336:                
.Lpc337:                

# ============================================================================
# stmt 71  (line 87):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc338:                

# ============================================================================
# stmt 72  (line 72):  push_item_end
# ============================================================================
.Lpc339:                
	SM_PUSH_STR .Lstr_71, 0  # str="node_repr(f)r,sep,i,n,tag"
.Lpc340:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc341:                
	SM_POP  # SM_POP: discard TOS
.Lpc342:                
	SM_JUMP .Lpc417  # SM_JUMP -> pc=417
.Lpc343:                
.Lpc344:                

# ============================================================================
# stmt 73  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
.Lpc345:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc346:                
	SM_CALL .Lstr_74, 1  # SM_CALL fname="DATATYPE" nargs=1
.Lpc347:                
	SM_PUSH_VAR .Lstr_75  # var=LCASE
.Lpc348:                
	SM_PUSH_VAR .Lstr_76  # var=UCASE
.Lpc349:                
	SM_CALL .Lstr_77, 3  # SM_CALL fname="REPLACE" nargs=3
.Lpc350:                
	SM_PUSH_STR .Lstr_78, 0  # str="STRING"
.Lpc351:                
	SM_CALL .Lstr_79, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc352:                
	SM_POP  # SM_POP: discard TOS
.Lpc353:                
	SM_JUMP_F .Lpc362  # SM_JUMP_F -> pc=362
.Lpc354:                

# ============================================================================
# stmt 74  (line 74):                 DEFINE('pop_list()')
# ============================================================================
.Lpc355:                
	SM_PUSH_STR .Lstr_80, 0  # str="'"
.Lpc356:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc357:                
	SM_PUSH_STR .Lstr_80, 0  # str="'"
.Lpc358:                
	SM_CONCAT  # SM_CONCAT
.Lpc359:                
	SM_CONCAT  # SM_CONCAT
.Lpc360:                
	SM_STORE_VAR .Lstr_72  # store -> node_repr
.Lpc361:                
	SM_RETURN  # SM_RETURN
.Lpc362:                
.Lpc363:                

# ============================================================================
# stmt 75  (line 91):  nr_frame       tag            =  stk_tag[f]
# ============================================================================
.Lpc364:                
	SM_PUSH_VAR .Lstr_6  # var=stk_tag
.Lpc365:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc366:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc367:                
	SM_STORE_VAR .Lstr_82  # store -> tag
.Lpc368:                

# ============================================================================
# stmt 76  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc369:                
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc370:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc371:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc372:                
	SM_STORE_VAR .Lstr_30  # store -> n
.Lpc373:                

# ============================================================================
# stmt 77  (line 77):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc374:                
	SM_PUSH_STR .Lstr_83, 0  # str="('"
.Lpc375:                
	SM_PUSH_VAR .Lstr_82  # var=tag
.Lpc376:                
	SM_PUSH_STR .Lstr_80, 0  # str="'"
.Lpc377:                
	SM_CONCAT  # SM_CONCAT
.Lpc378:                
	SM_CONCAT  # SM_CONCAT
.Lpc379:                
	SM_STORE_VAR .Lstr_84  # store -> r
.Lpc380:                

# ============================================================================
# stmt 78  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc381:                
	SM_PUSH_INT 0
.Lpc382:                
	SM_STORE_VAR .Lstr_85  # store -> i
.Lpc383:                
.Lpc384:                

# ============================================================================
# stmt 79  (line 95):  nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
# ============================================================================
.Lpc385:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc386:                
	SM_PUSH_VAR .Lstr_30  # var=n
.Lpc387:                
	SM_CALL .Lstr_87, 2  # SM_CALL fname="LT" nargs=2
.Lpc388:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc389:                
	SM_PUSH_INT 1
.Lpc390:                
	SM_ARITH 17  # SM_ADD
.Lpc391:                
	SM_CONCAT  # SM_CONCAT
.Lpc392:                
	SM_STORE_VAR .Lstr_85  # store -> i
.Lpc393:                
	SM_JUMP_F .Lpc410  # SM_JUMP_F -> pc=410
.Lpc394:                

# ============================================================================
# stmt 80  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc395:                
	SM_PUSH_VAR .Lstr_84  # var=r
.Lpc396:                
	SM_PUSH_STR .Lstr_88, 0  # str=", "
.Lpc397:                
	SM_PUSH_VAR .Lstr_8  # var=stk_c
.Lpc398:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc399:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc400:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc401:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc402:                
	SM_CALL .Lstr_72, 1  # SM_CALL fname="node_repr" nargs=1
.Lpc403:                
	SM_CONCAT  # SM_CONCAT
.Lpc404:                
	SM_CONCAT  # SM_CONCAT
.Lpc405:                
	SM_STORE_VAR .Lstr_84  # store -> r
.Lpc406:                

# ============================================================================
# stmt 81  (line 81):                 DEFINE('pop_final(v)')
# ============================================================================
.Lpc407:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc408:                
	SM_STORE_VAR .Lstr_85  # store -> i
.Lpc409:                
	SM_JUMP .Lpc383  # SM_JUMP -> pc=383
.Lpc410:                
.Lpc411:                

# ============================================================================
# stmt 82  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc412:                
	SM_PUSH_VAR .Lstr_84  # var=r
.Lpc413:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc414:                
	SM_CONCAT  # SM_CONCAT
.Lpc415:                
	SM_STORE_VAR .Lstr_72  # store -> node_repr
.Lpc416:                
	SM_RETURN  # SM_RETURN
.Lpc417:                
.Lpc418:                

# ============================================================================
# stmt 83  (line 100):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc419:                

# ============================================================================
# stmt 84  (line 84):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc420:                
	SM_PUSH_STR .Lstr_91, 0  # str="pp_node(f,indent,suffix)r,pad,tag,n,i,nx..."
.Lpc421:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc422:                
	SM_POP  # SM_POP: discard TOS
.Lpc423:                
	SM_JUMP .Lpc555  # SM_JUMP -> pc=555
.Lpc424:                
.Lpc425:                

# ============================================================================
# stmt 85  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
.Lpc426:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc427:                
	SM_CALL .Lstr_74, 1  # SM_CALL fname="DATATYPE" nargs=1
.Lpc428:                
	SM_PUSH_VAR .Lstr_75  # var=LCASE
.Lpc429:                
	SM_PUSH_VAR .Lstr_76  # var=UCASE
.Lpc430:                
	SM_CALL .Lstr_77, 3  # SM_CALL fname="REPLACE" nargs=3
.Lpc431:                
	SM_PUSH_STR .Lstr_78, 0  # str="STRING"
.Lpc432:                
	SM_CALL .Lstr_79, 2  # SM_CALL fname="IDENT" nargs=2
.Lpc433:                
	SM_POP  # SM_POP: discard TOS
.Lpc434:                
	SM_JUMP_F .Lpc449  # SM_JUMP_F -> pc=449
.Lpc435:                

# ============================================================================
# stmt 86  (line 86):  pop_final_end
# ============================================================================
.Lpc436:                
	SM_PUSH_STR .Lstr_93, 0  # str=" "
.Lpc437:                
	SM_PUSH_VAR .Lstr_94  # var=indent
.Lpc438:                
	SM_CALL .Lstr_95, 2  # SM_CALL fname="DUPL" nargs=2
.Lpc439:                
	SM_PUSH_STR .Lstr_80, 0  # str="'"
.Lpc440:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc441:                
	SM_PUSH_STR .Lstr_80, 0  # str="'"
.Lpc442:                
	SM_PUSH_VAR .Lstr_96  # var=suffix
.Lpc443:                
	SM_CONCAT  # SM_CONCAT
.Lpc444:                
	SM_CONCAT  # SM_CONCAT
.Lpc445:                
	SM_CONCAT  # SM_CONCAT
.Lpc446:                
	SM_CONCAT  # SM_CONCAT
.Lpc447:                
	SM_STORE_VAR .Lstr_97  # store -> OUTPUT
.Lpc448:                
	SM_RETURN  # SM_RETURN
.Lpc449:                
.Lpc450:                

# ============================================================================
# stmt 87  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
.Lpc451:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc452:                
	SM_CALL .Lstr_72, 1  # SM_CALL fname="node_repr" nargs=1
.Lpc453:                
	SM_STORE_VAR .Lstr_84  # store -> r
.Lpc454:                

# ============================================================================
# stmt 88  (line 88):                 DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
# ============================================================================
.Lpc455:                
	SM_PUSH_STR .Lstr_93, 0  # str=" "
.Lpc456:                
	SM_PUSH_VAR .Lstr_94  # var=indent
.Lpc457:                
	SM_CALL .Lstr_95, 2  # SM_CALL fname="DUPL" nargs=2
.Lpc458:                
	SM_STORE_VAR .Lstr_99  # store -> pad
.Lpc459:                

# ============================================================================
# stmt 89  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
.Lpc460:                
	SM_PUSH_INT 80
.Lpc461:                
	SM_PUSH_VAR .Lstr_94  # var=indent
.Lpc462:                
	SM_PUSH_VAR .Lstr_84  # var=r
.Lpc463:                
	SM_CALL .Lstr_100, 1  # SM_CALL fname="SIZE" nargs=1
.Lpc464:                
	SM_ARITH 17  # SM_ADD
.Lpc465:                
	SM_CALL .Lstr_101, 2  # SM_CALL fname="GT" nargs=2
.Lpc466:                
	SM_POP  # SM_POP: discard TOS
.Lpc467:                
	SM_JUMP_F .Lpc476  # SM_JUMP_F -> pc=476
.Lpc468:                

# ============================================================================
# stmt 90  (line 90):                 node_repr      =  "'" f "'"                  :(RETURN)
# ============================================================================
.Lpc469:                
	SM_PUSH_VAR .Lstr_99  # var=pad
.Lpc470:                
	SM_PUSH_VAR .Lstr_84  # var=r
.Lpc471:                
	SM_PUSH_VAR .Lstr_96  # var=suffix
.Lpc472:                
	SM_CONCAT  # SM_CONCAT
.Lpc473:                
	SM_CONCAT  # SM_CONCAT
.Lpc474:                
	SM_STORE_VAR .Lstr_97  # store -> OUTPUT
.Lpc475:                
	SM_RETURN  # SM_RETURN
.Lpc476:                
.Lpc477:                

# ============================================================================
# stmt 91  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
.Lpc478:                
	SM_PUSH_VAR .Lstr_6  # var=stk_tag
.Lpc479:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc480:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc481:                
	SM_STORE_VAR .Lstr_82  # store -> tag
.Lpc482:                

# ============================================================================
# stmt 92  (line 92):                 n              =  stk_n[f]
# ============================================================================
.Lpc483:                
	SM_PUSH_VAR .Lstr_7  # var=stk_n
.Lpc484:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc485:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc486:                
	SM_STORE_VAR .Lstr_30  # store -> n
.Lpc487:                

# ============================================================================
# stmt 93  (line 93):                 r              =  "('" tag "'"
# ============================================================================
.Lpc488:                
	SM_PUSH_VAR .Lstr_99  # var=pad
.Lpc489:                
	SM_PUSH_STR .Lstr_103, 0  # str="( "
.Lpc490:                
	SM_PUSH_STR .Lstr_80, 0  # str="'"
.Lpc491:                
	SM_PUSH_VAR .Lstr_82  # var=tag
.Lpc492:                
	SM_PUSH_STR .Lstr_104, 0  # str="',"
.Lpc493:                
	SM_CONCAT  # SM_CONCAT
.Lpc494:                
	SM_CONCAT  # SM_CONCAT
.Lpc495:                
	SM_CONCAT  # SM_CONCAT
.Lpc496:                
	SM_CONCAT  # SM_CONCAT
.Lpc497:                
	SM_STORE_VAR .Lstr_97  # store -> OUTPUT
.Lpc498:                

# ============================================================================
# stmt 94  (line 94):                 i              =  0
# ============================================================================
.Lpc499:                
	SM_PUSH_INT 0
.Lpc500:                
	SM_STORE_VAR .Lstr_85  # store -> i
.Lpc501:                
.Lpc502:                

# ============================================================================
# stmt 95  (line 112):  pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
# ============================================================================
.Lpc503:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc504:                
	SM_PUSH_VAR .Lstr_30  # var=n
.Lpc505:                
	SM_CALL .Lstr_87, 2  # SM_CALL fname="LT" nargs=2
.Lpc506:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc507:                
	SM_PUSH_INT 1
.Lpc508:                
	SM_ARITH 17  # SM_ADD
.Lpc509:                
	SM_CONCAT  # SM_CONCAT
.Lpc510:                
	SM_STORE_VAR .Lstr_85  # store -> i
.Lpc511:                
	SM_JUMP_F .Lpc552  # SM_JUMP_F -> pc=552
.Lpc512:                

# ============================================================================
# stmt 96  (line 96):                 r              =  r ', ' node_repr(stk_c[f][i])
# ============================================================================
.Lpc513:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc514:                
	SM_PUSH_VAR .Lstr_30  # var=n
.Lpc515:                
	SM_CALL .Lstr_87, 2  # SM_CALL fname="LT" nargs=2
.Lpc516:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc517:                
	SM_CONCAT  # SM_CONCAT
.Lpc518:                
	SM_STORE_VAR .Lstr_106  # store -> nxt
.Lpc519:                
	SM_JUMP_F .Lpc536  # SM_JUMP_F -> pc=536
.Lpc520:                

# ============================================================================
# stmt 97  (line 97):                 i              =  i                          :(nr_lp)
# ============================================================================
.Lpc521:                
	SM_PUSH_VAR .Lstr_8  # var=stk_c
.Lpc522:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc523:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc524:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc525:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc526:                
	SM_PUSH_VAR .Lstr_94  # var=indent
.Lpc527:                
	SM_PUSH_INT 2
.Lpc528:                
	SM_ARITH 17  # SM_ADD
.Lpc529:                
	SM_PUSH_STR .Lstr_107, 0  # str=","
.Lpc530:                
	SM_CALL .Lstr_92, 3  # SM_CALL fname="pp_node" nargs=3
.Lpc531:                
	SM_POP  # SM_POP: discard TOS
.Lpc532:                

# ============================================================================
# stmt 98  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc533:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc534:                
	SM_STORE_VAR .Lstr_85  # store -> i
.Lpc535:                
	SM_JUMP .Lpc501  # SM_JUMP -> pc=501
.Lpc536:                
.Lpc537:                

# ============================================================================
# stmt 99  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
.Lpc538:                
	SM_PUSH_VAR .Lstr_8  # var=stk_c
.Lpc539:                
	SM_PUSH_VAR .Lstr_73  # var=f
.Lpc540:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc541:                
	SM_PUSH_VAR .Lstr_85  # var=i
.Lpc542:                
	SM_CALL .Lstr_23, 2  # SM_CALL fname="IDX" nargs=2
.Lpc543:                
	SM_PUSH_VAR .Lstr_94  # var=indent
.Lpc544:                
	SM_PUSH_INT 2
.Lpc545:                
	SM_ARITH 17  # SM_ADD
.Lpc546:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc547:                
	SM_PUSH_VAR .Lstr_96  # var=suffix
.Lpc548:                
	SM_CONCAT  # SM_CONCAT
.Lpc549:                
	SM_CALL .Lstr_92, 3  # SM_CALL fname="pp_node" nargs=3
.Lpc550:                
	SM_POP  # SM_POP: discard TOS
.Lpc551:                
	SM_RETURN  # SM_RETURN
.Lpc552:                
.Lpc553:                

# ============================================================================
# stmt 100  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc554:                
	SM_RETURN  # SM_RETURN
.Lpc555:                
.Lpc556:                

# ============================================================================
# stmt 101  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc557:                

# ============================================================================
# stmt 102  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
.Lpc558:                
	SM_PUSH_STR .Lstr_111, 0  # str="pp_bank()"
.Lpc559:                
	SM_CALL .Lstr_10, 1  # SM_CALL fname="DEFINE" nargs=1
.Lpc560:                
	SM_POP  # SM_POP: discard TOS
.Lpc561:                
	SM_JUMP .Lpc574  # SM_JUMP -> pc=574
.Lpc562:                
.Lpc563:                

# ============================================================================
# stmt 103  (line 121):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
.Lpc564:                
	SM_PUSH_VAR .Lstr_113  # var=bank
.Lpc565:                
	SM_PUSH_INT 0
.Lpc566:                
	SM_PUSH_STR .Lstr_40, 0  # str=""
.Lpc567:                
	SM_CALL .Lstr_92, 3  # SM_CALL fname="pp_node" nargs=3
.Lpc568:                
	SM_POP  # SM_POP: discard TOS
.Lpc569:                

# ============================================================================
# stmt 104  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
.Lpc570:                
	SM_PUSH_STR .Lstr_16, 0  # str="dummy"
.Lpc571:                
	SM_CALL .Lstr_17, 1  # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc572:                
	SM_STORE_VAR .Lstr_112  # store -> pp_bank
.Lpc573:                
	SM_RETURN  # SM_RETURN
.Lpc574:                
.Lpc575:                

# ============================================================================
# stmt 105  (line 124):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc576:                

# ============================================================================
# stmt 106  (line 106):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ============================================================================
.Lpc577:                
	SM_PUSH_STR .Lstr_93, 0  # str=" "
.Lpc578:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc579:                
	SM_CONCAT  # SM_CONCAT
.Lpc580:                
	SM_PAT_SPAN  # SM_PAT_SPAN
.Lpc581:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc582:                
	SM_STORE_VAR .Lstr_115  # store -> delim
.Lpc583:                

# ============================================================================
# stmt 107  (line 107):                 OUTPUT         =  pad r suffix               :(RETURN)
# ============================================================================
.Lpc584:                
	SM_PUSH_STR .Lstr_116, 0  # str="( )"
.Lpc585:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc586:                
	SM_CONCAT  # SM_CONCAT
.Lpc587:                
	SM_PAT_NOTANY  # SM_PAT_NOTANY
.Lpc588:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc589:                
	SM_PUSH_STR .Lstr_116, 0  # str="( )"
.Lpc590:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc591:                
	SM_CONCAT  # SM_CONCAT
.Lpc592:                
	SM_PAT_BREAK  # SM_PAT_BREAK
.Lpc593:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc594:                
	SM_CONCAT  # SM_CONCAT
.Lpc595:                
	SM_STORE_VAR .Lstr_117  # store -> word
.Lpc596:                

# ============================================================================
# stmt 108  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
.Lpc597:                
	SM_PUSH_STR .Lstr_118, 0  # str="("
.Lpc598:                
	SM_PUSH_VAR .Lstr_117  # var=word
.Lpc599:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc600:                
	SM_PAT_CAPTURE 0, .Lstr_82  # SM_PAT_CAPTURE var=tag kind=0
.Lpc601:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc602:                
	SM_PUSH_STR .Lstr_82, 0  # str="tag"
.Lpc603:                
	SM_CALL .Lstr_50, 1  # SM_CALL fname="Push_list" nargs=1
.Lpc604:                
	SM_PAT_REFNAME .Lstr_115  # SM_PAT_REFNAME arg="delim"
.Lpc605:                
	SM_PAT_REFNAME .Lstr_119  # SM_PAT_REFNAME arg="group"
.Lpc606:                
	SM_PUSH_VAR .Lstr_117  # var=word
.Lpc607:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc608:                
	SM_PAT_CAPTURE 0, .Lstr_120  # SM_PAT_CAPTURE var=wrd kind=0
.Lpc609:                
	SM_PUSH_STR .Lstr_120, 0  # str="wrd"
.Lpc610:                
	SM_CALL .Lstr_56, 1  # SM_CALL fname="Push_item" nargs=1
.Lpc611:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc612:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc613:                
	SM_PAT_ALT  # SM_PAT_ALT
.Lpc614:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc615:                
	SM_PAT_ARBNO  # SM_PAT_ARBNO
.Lpc616:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc617:                
	SM_CALL .Lstr_62, 0  # SM_CALL fname="Pop_list" nargs=0
.Lpc618:                
	SM_PUSH_STR .Lstr_44, 0  # str=")"
.Lpc619:                
	SM_CONCAT  # SM_CONCAT
.Lpc620:                
	SM_CONCAT  # SM_CONCAT
.Lpc621:                
	SM_CONCAT  # SM_CONCAT
.Lpc622:                
	SM_CONCAT  # SM_CONCAT
.Lpc623:                
	SM_CONCAT  # SM_CONCAT
.Lpc624:                
	SM_STORE_VAR .Lstr_119  # store -> group
.Lpc625:                

# ============================================================================
# stmt 109  (line 109):                 n              =  stk_n[f]
# ============================================================================
.Lpc626:                
	SM_PAT_LIT .Lstr_118  # SM_PAT_LIT arg="("
.Lpc627:                
	SM_PUSH_VAR .Lstr_121  # var=BAL
.Lpc628:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc629:                
	SM_PAT_LIT .Lstr_44  # SM_PAT_LIT arg=")"
.Lpc630:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc631:                
	SM_PAT_CAT  # SM_PAT_CAT
.Lpc632:                
	SM_PAT_CAPTURE 0, .Lstr_122  # SM_PAT_CAPTURE var=item kind=0
.Lpc633:                
	SM_PAT_BOXVAL  # SM_PAT_BOXVAL
.Lpc634:                
	SM_STORE_VAR .Lstr_123  # store -> spat
.Lpc635:                
.Lpc636:                

# ============================================================================
# stmt 110  (line 142):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
.Lpc637:                
	SM_PUSH_VAR .Lstr_125  # var=INPUT
.Lpc638:                
	SM_STORE_VAR .Lstr_126  # store -> line
.Lpc639:                
	SM_JUMP_F .Lpc648  # SM_JUMP_F -> pc=648
.Lpc640:                

# ============================================================================
# stmt 111  (line 111):                 i              =  0
# ============================================================================
.Lpc641:                
	SM_PUSH_VAR .Lstr_127  # var=src
.Lpc642:                
	SM_PUSH_VAR .Lstr_126  # var=line
.Lpc643:                
	SM_PUSH_VAR .Lstr_0  # var=nl
.Lpc644:                
	SM_CONCAT  # SM_CONCAT
.Lpc645:                
	SM_CONCAT  # SM_CONCAT
.Lpc646:                
	SM_STORE_VAR .Lstr_127  # store -> src
.Lpc647:                
	SM_JUMP .Lpc635  # SM_JUMP -> pc=635
.Lpc648:                
.Lpc649:                

# ============================================================================
# stmt 112  (line 145):                 dummy          =  init_list('bank')
# ============================================================================
.Lpc650:                

# ============================================================================
# stmt 113  (line 113):                 nxt            =  LT(i, n) i                 :F(pp_wlast)
# ============================================================================
.Lpc651:                
	SM_PUSH_STR .Lstr_113, 0  # str="bank"
.Lpc652:                
	SM_CALL .Lstr_39, 1  # SM_CALL fname="init_list" nargs=1
.Lpc653:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc654:                

# ============================================================================
# stmt 114  (line 114):                 pp_node(stk_c[f][i], indent + 2, ',')
# ============================================================================
.Lpc655:                
	SM_PUSH_STR .Lstr_129, 0  # str="BANK"
.Lpc656:                
	SM_CALL .Lstr_11, 1  # SM_CALL fname="stk_push_frame" nargs=1
.Lpc657:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc658:                
.Lpc659:                

# ============================================================================
# stmt 115  (line 147):  loop           src            spat =  ''                    :F(all_done)
# ============================================================================
.Lpc660:                
	SM_PUSH_VAR .Lstr_123  # var=spat
.Lpc661:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc662:                
	SM_PUSH_VAR .Lstr_127  # var=src
.Lpc663:                
	SM_PUSH_STR .Lstr_40, 0  # str=""
.Lpc664:                
	SM_EXEC_STMT_VARIANT 1, .Lstr_127  # SM_EXEC_STMT_VARIANT subj=src has_repl=1
.Lpc665:                
	SM_JUMP_F .Lpc691  # SM_JUMP_F -> pc=691
.Lpc666:                

# ============================================================================
# stmt 116  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
.Lpc667:                
	SM_PUSH_STR .Lstr_131, 0  # str="ROOT"
.Lpc668:                
	SM_CALL .Lstr_11, 1  # SM_CALL fname="stk_push_frame" nargs=1
.Lpc669:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc670:                

# ============================================================================
# stmt 117  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc671:                
	SM_PUSH_VAR .Lstr_119  # var=group
.Lpc672:                
	SM_PAT_DEREF  # SM_PAT_DEREF
.Lpc673:                
	SM_PUSH_VAR .Lstr_122  # var=item
.Lpc674:                
	SM_PUSH_INT 0
.Lpc675:                
	SM_EXEC_STMT_VARIANT 0, .Lstr_122  # SM_EXEC_STMT_VARIANT subj=item has_repl=0
.Lpc676:                
	SM_JUMP_F .Lpc681  # SM_JUMP_F -> pc=681
.Lpc677:                

# ============================================================================
# stmt 118  (line 118):  pp_node_end
# ============================================================================
.Lpc678:                
	SM_CALL .Lstr_26, 0  # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc679:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc680:                
	SM_JUMP .Lpc658  # SM_JUMP -> pc=658
.Lpc681:                
.Lpc682:                

# ============================================================================
# stmt 119  (line 151):  parse_fail     OUTPUT         =  'Parse failed on: ' item
# ============================================================================
.Lpc683:                
	SM_PUSH_STR .Lstr_133, 0  # str="Parse failed on: "
.Lpc684:                
	SM_PUSH_VAR .Lstr_122  # var=item
.Lpc685:                
	SM_CONCAT  # SM_CONCAT
.Lpc686:                
	SM_STORE_VAR .Lstr_97  # store -> OUTPUT
.Lpc687:                

# ============================================================================
# stmt 120  (line 120):                 DEFINE('pp_bank()')                          :(pp_bank_end)
# ============================================================================
.Lpc688:                
	SM_CALL .Lstr_26, 0  # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc689:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc690:                
	SM_JUMP .Lpc658  # SM_JUMP -> pc=658
.Lpc691:                
.Lpc692:                

# ============================================================================
# stmt 121  (line 153):  all_done       dummy          =  stk_pop_final('bank')
# ============================================================================
.Lpc693:                
	SM_PUSH_STR .Lstr_113, 0  # str="bank"
.Lpc694:                
	SM_CALL .Lstr_33, 1  # SM_CALL fname="stk_pop_final" nargs=1
.Lpc695:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc696:                

# ============================================================================
# stmt 122  (line 122):                 pp_bank        =  .dummy                     :(RETURN)
# ============================================================================
.Lpc697:                
	SM_CALL .Lstr_112, 0  # SM_CALL fname="pp_bank" nargs=0
.Lpc698:                
	SM_STORE_VAR .Lstr_16  # store -> dummy
.Lpc699:                
	SM_JUMP .Lpc700  # SM_JUMP -> pc=700
.Lpc700:                
.Lpc701:                

# ============================================================================
# stmt 123  (line 123):  pp_bank_end
# ============================================================================
.Lpc702:                
	SM_HALT  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
