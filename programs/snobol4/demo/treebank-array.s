	.include "sm_macros.s"
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
# source-file: treebank-array.sno  (156 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.

# ============================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc0:
.Lpc1:                                                      # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc2:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_POS)
.Lpc3:                                                      # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc4:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_LEN)
.Lpc5:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_CAPTURE)
.Lpc6:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_CAT)
.Lpc7:                  PUSH_VAR .Lstr_1                      # var=ALPHABET
.Lpc8:                  PUSH_INT 0                          
.Lpc9:                  lea     rdi, [rip + _pat_inv_0_α]  # blob entry α  (Phase-2 pc=1..6)
	lea     rsi, [rip + .Lstr_1]       # subj_name=ALPHABET
	mov     edx, 0                     # has_repl=0
	call    scrip_rt_match_blob@PLT    # EM-7c: Phase-3+5 against baked invariant blob

# ============================================================================
# stmt 2  (line 2):  * treebank-array.sno — Penn Treebank s-expression parser (array/append style)
# ============================================================================
.Lpc10:
.Lpc11:                 PUSH_STR .Lstr_2, 0                   # str="list(head,tail)"
.Lpc12:                 CALL_FN .Lstr_3, 1                    # SM_CALL fname="DATA" nargs=1
.Lpc13:                 VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc14:
.Lpc15:                 PUSH_INT 0                          
.Lpc16:                 STORE_VAR .Lstr_4                     # store -> frame_id

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 200k treebank-array.sno < VBGinTASA.dat
# ============================================================================
.Lpc17:
.Lpc18:                 CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc19:                 STORE_VAR .Lstr_6                     # store -> stk_tag

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc20:
.Lpc21:                 CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc22:                 STORE_VAR .Lstr_7                     # store -> stk_n

# ============================================================================
# stmt 6  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
# ============================================================================
.Lpc23:
.Lpc24:                 CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc25:                 STORE_VAR .Lstr_8                     # store -> stk_c

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc26:
.Lpc27:                 PUSH_STR .Lstr_9, 0                   # str="stk_push_frame(v)"
.Lpc28:                 CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc29:                 VOID_POP                              # SM_POP: discard TOS
.Lpc30:                 JUMP .Lpc62                           # SM_JUMP -> pc=62
.Lpc31:

# ============================================================================
# stmt 8  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
.Lpc32:
.Lpc33:                 PUSH_VAR .Lstr_4                      # var=frame_id
.Lpc34:                 PUSH_INT 1                          
.Lpc35:                 ARITH 17                              # SM_ADD
.Lpc36:                 STORE_VAR .Lstr_4                     # store -> frame_id

# ============================================================================
# stmt 9  (line 9):                 frame_id       =  0
# ============================================================================
.Lpc37:
.Lpc38:                 PUSH_VAR .Lstr_12                     # var=v
.Lpc39:                 PUSH_VAR .Lstr_6                      # var=stk_tag
.Lpc40:                 PUSH_VAR .Lstr_4                      # var=frame_id
.Lpc41:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 10  (line 10):                 stk_tag        =  TABLE()
# ============================================================================
.Lpc42:
.Lpc43:                 PUSH_INT 0                          
.Lpc44:                 PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc45:                 PUSH_VAR .Lstr_4                      # var=frame_id
.Lpc46:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 11  (line 11):                 stk_n          =  TABLE()
# ============================================================================
.Lpc47:
.Lpc48:                 CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc49:                 PUSH_VAR .Lstr_8                      # var=stk_c
.Lpc50:                 PUSH_VAR .Lstr_4                      # var=frame_id
.Lpc51:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 12  (line 12):                 stk_c          =  TABLE()
# ============================================================================
.Lpc52:
.Lpc53:                 PUSH_VAR .Lstr_4                      # var=frame_id
.Lpc54:                 PUSH_VAR .Lstr_14                     # var=stk
.Lpc55:                 CALL_FN .Lstr_15, 2                   # SM_CALL fname="list" nargs=2
.Lpc56:                 STORE_VAR .Lstr_14                    # store -> stk

# ============================================================================
# stmt 13  (line 13):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc57:
.Lpc58:                 PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc59:                 CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc60:                 STORE_VAR .Lstr_11                    # store -> stk_push_frame
.Lpc61:                 RETURN                                # SM_RETURN
.Lpc62:

# ============================================================================
# stmt 14  (line 22):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc63:

# ============================================================================
# stmt 15  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
.Lpc64:
.Lpc65:                 PUSH_STR .Lstr_19, 0                  # str="stk_push_item(v,cur)"
.Lpc66:                 CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc67:                 VOID_POP                              # SM_POP: discard TOS
.Lpc68:                 JUMP .Lpc97                           # SM_JUMP -> pc=97
.Lpc69:

# ============================================================================
# stmt 16  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
.Lpc70:
.Lpc71:                 PUSH_VAR .Lstr_14                     # var=stk
.Lpc72:                 CALL_FN .Lstr_21, 1                   # SM_CALL fname="head" nargs=1
.Lpc73:                 STORE_VAR .Lstr_22                    # store -> cur

# ============================================================================
# stmt 17  (line 17):                 stk_n[frame_id]      =  0
# ============================================================================
.Lpc74:
.Lpc75:                 PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc76:                 PUSH_VAR .Lstr_22                     # var=cur
.Lpc77:                 CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc78:                 PUSH_INT 1                          
.Lpc79:                 ARITH 17                              # SM_ADD
.Lpc80:                 PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc81:                 PUSH_VAR .Lstr_22                     # var=cur
.Lpc82:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 18  (line 18):                 stk_c[frame_id]      =  TABLE()
# ============================================================================
.Lpc83:
.Lpc84:                 PUSH_VAR .Lstr_12                     # var=v
.Lpc85:                 PUSH_VAR .Lstr_8                      # var=stk_c
.Lpc86:                 PUSH_VAR .Lstr_22                     # var=cur
.Lpc87:                 CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc88:                 PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc89:                 PUSH_VAR .Lstr_22                     # var=cur
.Lpc90:                 CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc91:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 19  (line 19):                 stk                  =  list(frame_id, stk)
# ============================================================================
.Lpc92:
.Lpc93:                 PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc94:                 CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc95:                 STORE_VAR .Lstr_20                    # store -> stk_push_item
.Lpc96:                 RETURN                                # SM_RETURN
.Lpc97:

# ============================================================================
# stmt 20  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc98:

# ============================================================================
# stmt 21  (line 21):  stk_push_frame_end
# ============================================================================
.Lpc99:
.Lpc100:                PUSH_STR .Lstr_25, 0                  # str="stk_pop_into_parent(child,par,n)"
.Lpc101:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc102:                VOID_POP                              # SM_POP: discard TOS
.Lpc103:                JUMP .Lpc144                          # SM_JUMP -> pc=144
.Lpc104:

# ============================================================================
# stmt 22  (line 32):                 child                =  head(stk)
# ============================================================================
.Lpc105:

# ============================================================================
# stmt 23  (line 23):                 DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
# ============================================================================
.Lpc106:
.Lpc107:                PUSH_VAR .Lstr_14                     # var=stk
.Lpc108:                CALL_FN .Lstr_21, 1                   # SM_CALL fname="head" nargs=1
.Lpc109:                STORE_VAR .Lstr_27                    # store -> child

# ============================================================================
# stmt 24  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
.Lpc110:
.Lpc111:                PUSH_VAR .Lstr_14                     # var=stk
.Lpc112:                CALL_FN .Lstr_28, 1                   # SM_CALL fname="tail" nargs=1
.Lpc113:                STORE_VAR .Lstr_14                    # store -> stk

# ============================================================================
# stmt 25  (line 25):                 stk_n[cur]           =  stk_n[cur] + 1
# ============================================================================
.Lpc114:
.Lpc115:                PUSH_VAR .Lstr_14                     # var=stk
.Lpc116:                CALL_FN .Lstr_21, 1                   # SM_CALL fname="head" nargs=1
.Lpc117:                STORE_VAR .Lstr_29                    # store -> par

# ============================================================================
# stmt 26  (line 26):                 stk_c[cur][stk_n[cur]] =  v
# ============================================================================
.Lpc118:
.Lpc119:                PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc120:                PUSH_VAR .Lstr_29                     # var=par
.Lpc121:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc122:                STORE_VAR .Lstr_30                    # store -> n

# ============================================================================
# stmt 27  (line 27):                 stk_push_item        =  .dummy               :(RETURN)
# ============================================================================
.Lpc123:
.Lpc124:                PUSH_VAR .Lstr_30                     # var=n
.Lpc125:                PUSH_INT 1                          
.Lpc126:                ARITH 17                              # SM_ADD
.Lpc127:                PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc128:                PUSH_VAR .Lstr_29                     # var=par
.Lpc129:                CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 28  (line 28):  stk_push_item_end
# ============================================================================
.Lpc130:
.Lpc131:                PUSH_VAR .Lstr_27                     # var=child
.Lpc132:                PUSH_VAR .Lstr_8                      # var=stk_c
.Lpc133:                PUSH_VAR .Lstr_29                     # var=par
.Lpc134:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc135:                PUSH_VAR .Lstr_30                     # var=n
.Lpc136:                PUSH_INT 1                          
.Lpc137:                ARITH 17                              # SM_ADD
.Lpc138:                CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 29  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc139:
.Lpc140:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc141:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc142:                STORE_VAR .Lstr_26                    # store -> stk_pop_into_parent
.Lpc143:                RETURN                                # SM_RETURN
.Lpc144:

# ============================================================================
# stmt 30  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc145:

# ============================================================================
# stmt 31  (line 31):  stk_pop_into_parent
# ============================================================================
.Lpc146:
.Lpc147:                PUSH_STR .Lstr_32, 0                  # str="stk_pop_final(var,child)"
.Lpc148:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc149:                VOID_POP                              # SM_POP: discard TOS
.Lpc150:                JUMP .Lpc169                          # SM_JUMP -> pc=169
.Lpc151:

# ============================================================================
# stmt 32  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
.Lpc152:
.Lpc153:                PUSH_VAR .Lstr_14                     # var=stk
.Lpc154:                CALL_FN .Lstr_21, 1                   # SM_CALL fname="head" nargs=1
.Lpc155:                STORE_VAR .Lstr_27                    # store -> child

# ============================================================================
# stmt 33  (line 33):                 stk                  =  tail(stk)
# ============================================================================
.Lpc156:
.Lpc157:                PUSH_VAR .Lstr_14                     # var=stk
.Lpc158:                CALL_FN .Lstr_28, 1                   # SM_CALL fname="tail" nargs=1
.Lpc159:                STORE_VAR .Lstr_14                    # store -> stk

# ============================================================================
# stmt 34  (line 34):                 par                  =  head(stk)
# ============================================================================
.Lpc160:
.Lpc161:                PUSH_VAR .Lstr_27                     # var=child
.Lpc162:                PUSH_VAR .Lstr_34                     # var=var
.Lpc163:                CALL_FN .Lstr_35, 2                   # SM_CALL fname="ASGN_INDIR" nargs=2

# ============================================================================
# stmt 35  (line 35):                 n                    =  stk_n[par]
# ============================================================================
.Lpc164:
.Lpc165:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc166:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc167:                STORE_VAR .Lstr_33                    # store -> stk_pop_final
.Lpc168:                RETURN                                # SM_RETURN
.Lpc169:

# ============================================================================
# stmt 36  (line 47):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc170:

# ============================================================================
# stmt 37  (line 37):                 stk_c[par][n + 1]    =  child
# ============================================================================
.Lpc171:
.Lpc172:                PUSH_STR .Lstr_37, 0                  # str="init_list(v)"
.Lpc173:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc174:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 38  (line 38):                 stk_pop_into_parent  =  .dummy               :(RETURN)
# ============================================================================
.Lpc175:
.Lpc176:                PUSH_STR .Lstr_38, 0                  # str="Init_list(vs)"
.Lpc177:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc178:                VOID_POP                              # SM_POP: discard TOS
.Lpc179:                JUMP .Lpc215                          # SM_JUMP -> pc=215
.Lpc180:

# ============================================================================
# stmt 39  (line 50):  init_list      $v             =
# ============================================================================
.Lpc181:
.Lpc182:                PUSH_STR .Lstr_40, 0                  # str=""
.Lpc183:                PUSH_VAR .Lstr_12                     # var=v
.Lpc184:                CALL_FN .Lstr_35, 2                   # SM_CALL fname="ASGN_INDIR" nargs=2

# ============================================================================
# stmt 40  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc185:
.Lpc186:                PUSH_STR .Lstr_40, 0                  # str=""
.Lpc187:                STORE_VAR .Lstr_14                    # store -> stk

# ============================================================================
# stmt 41  (line 41):                 DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
# ============================================================================
.Lpc188:
.Lpc189:                PUSH_INT 0                          
.Lpc190:                STORE_VAR .Lstr_4                     # store -> frame_id

# ============================================================================
# stmt 42  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
.Lpc191:
.Lpc192:                CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc193:                STORE_VAR .Lstr_6                     # store -> stk_tag

# ============================================================================
# stmt 43  (line 43):                 stk                  =  tail(stk)
# ============================================================================
.Lpc194:
.Lpc195:                CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc196:                STORE_VAR .Lstr_7                     # store -> stk_n

# ============================================================================
# stmt 44  (line 44):                 $var                 =  child
# ============================================================================
.Lpc197:
.Lpc198:                CALL_FN .Lstr_5, 0                    # SM_CALL fname="TABLE" nargs=0
.Lpc199:                STORE_VAR .Lstr_8                     # store -> stk_c

# ============================================================================
# stmt 45  (line 45):                 stk_pop_final        =  .dummy               :(RETURN)
# ============================================================================
.Lpc200:
.Lpc201:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc202:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc203:                STORE_VAR .Lstr_39                    # store -> init_list
.Lpc204:                RETURN_VARIANT 2, 0, 204              # SM_NRETURN
.Lpc205:

# ============================================================================
# stmt 46  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc206:
.Lpc207:                PUSH_STR .Lstr_42, 0                  # str="epsilon . *init_list("
.Lpc208:                PUSH_VAR .Lstr_43                     # var=vs
.Lpc209:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc210:                CONCAT                                # SM_CONCAT
.Lpc211:                CONCAT                                # SM_CONCAT
.Lpc212:                CALL_FN .Lstr_45, 1                   # SM_CALL fname="EVAL" nargs=1
.Lpc213:                STORE_VAR .Lstr_41                    # store -> Init_list
.Lpc214:                RETURN                                # SM_RETURN
.Lpc215:

# ============================================================================
# stmt 47  (line 59):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc216:

# ============================================================================
# stmt 48  (line 48):                 DEFINE('init_list(v)')
# ============================================================================
.Lpc217:
.Lpc218:                PUSH_STR .Lstr_47, 0                  # str="push_list(v)"
.Lpc219:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc220:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 49  (line 49):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
.Lpc221:
.Lpc222:                PUSH_STR .Lstr_48, 0                  # str="Push_list(vs)"
.Lpc223:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc224:                VOID_POP                              # SM_POP: discard TOS
.Lpc225:                JUMP .Lpc246                          # SM_JUMP -> pc=246
.Lpc226:

# ============================================================================
# stmt 50  (line 62):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc227:
.Lpc228:                PUSH_VAR .Lstr_12                     # var=v
.Lpc229:                CALL_FN .Lstr_11, 1                   # SM_CALL fname="stk_push_frame" nargs=1
.Lpc230:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 51  (line 51):                 stk            =
# ============================================================================
.Lpc231:
.Lpc232:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc233:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc234:                STORE_VAR .Lstr_49                    # store -> push_list
.Lpc235:                RETURN_VARIANT 2, 0, 235              # SM_NRETURN
.Lpc236:

# ============================================================================
# stmt 52  (line 64):  Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc237:
.Lpc238:                PUSH_STR .Lstr_51, 0                  # str="epsilon . *push_list("
.Lpc239:                PUSH_VAR .Lstr_43                     # var=vs
.Lpc240:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc241:                CONCAT                                # SM_CONCAT
.Lpc242:                CONCAT                                # SM_CONCAT
.Lpc243:                CALL_FN .Lstr_45, 1                   # SM_CALL fname="EVAL" nargs=1
.Lpc244:                STORE_VAR .Lstr_50                    # store -> Push_list
.Lpc245:                RETURN                                # SM_RETURN
.Lpc246:

# ============================================================================
# stmt 53  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc247:

# ============================================================================
# stmt 54  (line 54):                 stk_n          =  TABLE()
# ============================================================================
.Lpc248:
.Lpc249:                PUSH_STR .Lstr_53, 0                  # str="push_item(v)"
.Lpc250:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc251:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 55  (line 55):                 stk_c          =  TABLE()
# ============================================================================
.Lpc252:
.Lpc253:                PUSH_STR .Lstr_54, 0                  # str="Push_item(vs)"
.Lpc254:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc255:                VOID_POP                              # SM_POP: discard TOS
.Lpc256:                JUMP .Lpc277                          # SM_JUMP -> pc=277
.Lpc257:

# ============================================================================
# stmt 56  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc258:
.Lpc259:                PUSH_VAR .Lstr_12                     # var=v
.Lpc260:                CALL_FN .Lstr_20, 1                   # SM_CALL fname="stk_push_item" nargs=1
.Lpc261:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 57  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc262:
.Lpc263:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc264:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc265:                STORE_VAR .Lstr_55                    # store -> push_item
.Lpc266:                RETURN_VARIANT 2, 0, 266              # SM_NRETURN
.Lpc267:

# ============================================================================
# stmt 58  (line 71):  Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
# ============================================================================
.Lpc268:
.Lpc269:                PUSH_STR .Lstr_57, 0                  # str="epsilon . *push_item("
.Lpc270:                PUSH_VAR .Lstr_43                     # var=vs
.Lpc271:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc272:                CONCAT                                # SM_CONCAT
.Lpc273:                CONCAT                                # SM_CONCAT
.Lpc274:                CALL_FN .Lstr_45, 1                   # SM_CALL fname="EVAL" nargs=1
.Lpc275:                STORE_VAR .Lstr_56                    # store -> Push_item
.Lpc276:                RETURN                                # SM_RETURN
.Lpc277:

# ============================================================================
# stmt 59  (line 73):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc278:

# ============================================================================
# stmt 60  (line 60):                 DEFINE('push_list(v)')
# ============================================================================
.Lpc279:
.Lpc280:                PUSH_STR .Lstr_59, 0                  # str="pop_list()"
.Lpc281:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc282:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 61  (line 61):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ============================================================================
.Lpc283:
.Lpc284:                PUSH_STR .Lstr_60, 0                  # str="Pop_list()"
.Lpc285:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc286:                VOID_POP                              # SM_POP: discard TOS
.Lpc287:                JUMP .Lpc305                          # SM_JUMP -> pc=305
.Lpc288:

# ============================================================================
# stmt 62  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc289:
.Lpc290:                CALL_FN .Lstr_26, 0                   # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc291:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 63  (line 63):                 push_list      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc292:
.Lpc293:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc294:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc295:                STORE_VAR .Lstr_61                    # store -> pop_list
.Lpc296:                RETURN_VARIANT 2, 0, 296              # SM_NRETURN
.Lpc297:

# ============================================================================
# stmt 64  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc298:
.Lpc299:                PUSH_VAR .Lstr_63                     # var=epsilon
.Lpc300:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc301:                PAT_CAPTURE_FN 0, .Lstr_61            # SM_PAT_CAPTURE_FN fname=pop_list is_imm=0 namelist=(NULL)
.Lpc302:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc303:                STORE_VAR .Lstr_62                    # store -> Pop_list
.Lpc304:                RETURN                                # SM_RETURN
.Lpc305:

# ============================================================================
# stmt 65  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc306:

# ============================================================================
# stmt 66  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc307:
.Lpc308:                PUSH_STR .Lstr_65, 0                  # str="pop_final(v)"
.Lpc309:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc310:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 67  (line 67):                 DEFINE('push_item(v)')
# ============================================================================
.Lpc311:
.Lpc312:                PUSH_STR .Lstr_66, 0                  # str="Pop_final(vs)"
.Lpc313:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc314:                VOID_POP                              # SM_POP: discard TOS
.Lpc315:                JUMP .Lpc336                          # SM_JUMP -> pc=336
.Lpc316:

# ============================================================================
# stmt 68  (line 83):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc317:
.Lpc318:                PUSH_VAR .Lstr_12                     # var=v
.Lpc319:                CALL_FN .Lstr_33, 1                   # SM_CALL fname="stk_pop_final" nargs=1
.Lpc320:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 69  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc321:
.Lpc322:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc323:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc324:                STORE_VAR .Lstr_67                    # store -> pop_final
.Lpc325:                RETURN_VARIANT 2, 0, 325              # SM_NRETURN
.Lpc326:

# ============================================================================
# stmt 70  (line 85):  Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
# ============================================================================
.Lpc327:
.Lpc328:                PUSH_STR .Lstr_69, 0                  # str="epsilon . *pop_final("
.Lpc329:                PUSH_VAR .Lstr_43                     # var=vs
.Lpc330:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc331:                CONCAT                                # SM_CONCAT
.Lpc332:                CONCAT                                # SM_CONCAT
.Lpc333:                CALL_FN .Lstr_45, 1                   # SM_CALL fname="EVAL" nargs=1
.Lpc334:                STORE_VAR .Lstr_68                    # store -> Pop_final
.Lpc335:                RETURN                                # SM_RETURN
.Lpc336:

# ============================================================================
# stmt 71  (line 87):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc337:

# ============================================================================
# stmt 72  (line 72):  push_item_end
# ============================================================================
.Lpc338:
.Lpc339:                PUSH_STR .Lstr_71, 0                  # str="node_repr(f)r,sep,i,n,tag"
.Lpc340:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc341:                VOID_POP                              # SM_POP: discard TOS
.Lpc342:                JUMP .Lpc417                          # SM_JUMP -> pc=417
.Lpc343:

# ============================================================================
# stmt 73  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
.Lpc344:
.Lpc345:                PUSH_VAR .Lstr_73                     # var=f
.Lpc346:                CALL_FN .Lstr_74, 1                   # SM_CALL fname="DATATYPE" nargs=1
.Lpc347:                PUSH_VAR .Lstr_75                     # var=LCASE
.Lpc348:                PUSH_VAR .Lstr_76                     # var=UCASE
.Lpc349:                CALL_FN .Lstr_77, 3                   # SM_CALL fname="REPLACE" nargs=3
.Lpc350:                PUSH_STR .Lstr_78, 0                  # str="STRING"
.Lpc351:                CALL_FN .Lstr_79, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc352:                VOID_POP                              # SM_POP: discard TOS
.Lpc353:                JUMP_F .Lpc362                        # SM_JUMP_F -> pc=362

# ============================================================================
# stmt 74  (line 74):                 DEFINE('pop_list()')
# ============================================================================
.Lpc354:
.Lpc355:                PUSH_STR .Lstr_80, 0                  # str="'"
.Lpc356:                PUSH_VAR .Lstr_73                     # var=f
.Lpc357:                PUSH_STR .Lstr_80, 0                  # str="'"
.Lpc358:                CONCAT                                # SM_CONCAT
.Lpc359:                CONCAT                                # SM_CONCAT
.Lpc360:                STORE_VAR .Lstr_72                    # store -> node_repr
.Lpc361:                RETURN                                # SM_RETURN
.Lpc362:

# ============================================================================
# stmt 75  (line 91):  nr_frame       tag            =  stk_tag[f]
# ============================================================================
.Lpc363:
.Lpc364:                PUSH_VAR .Lstr_6                      # var=stk_tag
.Lpc365:                PUSH_VAR .Lstr_73                     # var=f
.Lpc366:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc367:                STORE_VAR .Lstr_82                    # store -> tag

# ============================================================================
# stmt 76  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc368:
.Lpc369:                PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc370:                PUSH_VAR .Lstr_73                     # var=f
.Lpc371:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc372:                STORE_VAR .Lstr_30                    # store -> n

# ============================================================================
# stmt 77  (line 77):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc373:
.Lpc374:                PUSH_STR .Lstr_83, 0                  # str="('"
.Lpc375:                PUSH_VAR .Lstr_82                     # var=tag
.Lpc376:                PUSH_STR .Lstr_80, 0                  # str="'"
.Lpc377:                CONCAT                                # SM_CONCAT
.Lpc378:                CONCAT                                # SM_CONCAT
.Lpc379:                STORE_VAR .Lstr_84                    # store -> r

# ============================================================================
# stmt 78  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc380:
.Lpc381:                PUSH_INT 0                          
.Lpc382:                STORE_VAR .Lstr_85                    # store -> i
.Lpc383:

# ============================================================================
# stmt 79  (line 95):  nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
# ============================================================================
.Lpc384:
.Lpc385:                PUSH_VAR .Lstr_85                     # var=i
.Lpc386:                PUSH_VAR .Lstr_30                     # var=n
.Lpc387:                CALL_FN .Lstr_87, 2                   # SM_CALL fname="LT" nargs=2
.Lpc388:                PUSH_VAR .Lstr_85                     # var=i
.Lpc389:                PUSH_INT 1                          
.Lpc390:                ARITH 17                              # SM_ADD
.Lpc391:                CONCAT                                # SM_CONCAT
.Lpc392:                STORE_VAR .Lstr_85                    # store -> i
.Lpc393:                JUMP_F .Lpc410                        # SM_JUMP_F -> pc=410

# ============================================================================
# stmt 80  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc394:
.Lpc395:                PUSH_VAR .Lstr_84                     # var=r
.Lpc396:                PUSH_STR .Lstr_88, 0                  # str=", "
.Lpc397:                PUSH_VAR .Lstr_8                      # var=stk_c
.Lpc398:                PUSH_VAR .Lstr_73                     # var=f
.Lpc399:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc400:                PUSH_VAR .Lstr_85                     # var=i
.Lpc401:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc402:                CALL_FN .Lstr_72, 1                   # SM_CALL fname="node_repr" nargs=1
.Lpc403:                CONCAT                                # SM_CONCAT
.Lpc404:                CONCAT                                # SM_CONCAT
.Lpc405:                STORE_VAR .Lstr_84                    # store -> r

# ============================================================================
# stmt 81  (line 81):                 DEFINE('pop_final(v)')
# ============================================================================
.Lpc406:
.Lpc407:                PUSH_VAR .Lstr_85                     # var=i
.Lpc408:                STORE_VAR .Lstr_85                    # store -> i
.Lpc409:                JUMP .Lpc383                          # SM_JUMP -> pc=383
.Lpc410:

# ============================================================================
# stmt 82  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc411:
.Lpc412:                PUSH_VAR .Lstr_84                     # var=r
.Lpc413:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc414:                CONCAT                                # SM_CONCAT
.Lpc415:                STORE_VAR .Lstr_72                    # store -> node_repr
.Lpc416:                RETURN                                # SM_RETURN
.Lpc417:

# ============================================================================
# stmt 83  (line 100):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc418:

# ============================================================================
# stmt 84  (line 84):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc419:
.Lpc420:                PUSH_STR .Lstr_91, 0                  # str="pp_node(f,indent,suffix)r,pad,tag,n,i,nx..."
.Lpc421:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc422:                VOID_POP                              # SM_POP: discard TOS
.Lpc423:                JUMP .Lpc555                          # SM_JUMP -> pc=555
.Lpc424:

# ============================================================================
# stmt 85  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
.Lpc425:
.Lpc426:                PUSH_VAR .Lstr_73                     # var=f
.Lpc427:                CALL_FN .Lstr_74, 1                   # SM_CALL fname="DATATYPE" nargs=1
.Lpc428:                PUSH_VAR .Lstr_75                     # var=LCASE
.Lpc429:                PUSH_VAR .Lstr_76                     # var=UCASE
.Lpc430:                CALL_FN .Lstr_77, 3                   # SM_CALL fname="REPLACE" nargs=3
.Lpc431:                PUSH_STR .Lstr_78, 0                  # str="STRING"
.Lpc432:                CALL_FN .Lstr_79, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc433:                VOID_POP                              # SM_POP: discard TOS
.Lpc434:                JUMP_F .Lpc449                        # SM_JUMP_F -> pc=449

# ============================================================================
# stmt 86  (line 86):  pop_final_end
# ============================================================================
.Lpc435:
.Lpc436:                PUSH_STR .Lstr_93, 0                  # str=" "
.Lpc437:                PUSH_VAR .Lstr_94                     # var=indent
.Lpc438:                CALL_FN .Lstr_95, 2                   # SM_CALL fname="DUPL" nargs=2
.Lpc439:                PUSH_STR .Lstr_80, 0                  # str="'"
.Lpc440:                PUSH_VAR .Lstr_73                     # var=f
.Lpc441:                PUSH_STR .Lstr_80, 0                  # str="'"
.Lpc442:                PUSH_VAR .Lstr_96                     # var=suffix
.Lpc443:                CONCAT                                # SM_CONCAT
.Lpc444:                CONCAT                                # SM_CONCAT
.Lpc445:                CONCAT                                # SM_CONCAT
.Lpc446:                CONCAT                                # SM_CONCAT
.Lpc447:                STORE_VAR .Lstr_97                    # store -> OUTPUT
.Lpc448:                RETURN                                # SM_RETURN
.Lpc449:

# ============================================================================
# stmt 87  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
.Lpc450:
.Lpc451:                PUSH_VAR .Lstr_73                     # var=f
.Lpc452:                CALL_FN .Lstr_72, 1                   # SM_CALL fname="node_repr" nargs=1
.Lpc453:                STORE_VAR .Lstr_84                    # store -> r

# ============================================================================
# stmt 88  (line 88):                 DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
# ============================================================================
.Lpc454:
.Lpc455:                PUSH_STR .Lstr_93, 0                  # str=" "
.Lpc456:                PUSH_VAR .Lstr_94                     # var=indent
.Lpc457:                CALL_FN .Lstr_95, 2                   # SM_CALL fname="DUPL" nargs=2
.Lpc458:                STORE_VAR .Lstr_99                    # store -> pad

# ============================================================================
# stmt 89  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
.Lpc459:
.Lpc460:                PUSH_INT 80                         
.Lpc461:                PUSH_VAR .Lstr_94                     # var=indent
.Lpc462:                PUSH_VAR .Lstr_84                     # var=r
.Lpc463:                CALL_FN .Lstr_100, 1                  # SM_CALL fname="SIZE" nargs=1
.Lpc464:                ARITH 17                              # SM_ADD
.Lpc465:                CALL_FN .Lstr_101, 2                  # SM_CALL fname="GT" nargs=2
.Lpc466:                VOID_POP                              # SM_POP: discard TOS
.Lpc467:                JUMP_F .Lpc476                        # SM_JUMP_F -> pc=476

# ============================================================================
# stmt 90  (line 90):                 node_repr      =  "'" f "'"                  :(RETURN)
# ============================================================================
.Lpc468:
.Lpc469:                PUSH_VAR .Lstr_99                     # var=pad
.Lpc470:                PUSH_VAR .Lstr_84                     # var=r
.Lpc471:                PUSH_VAR .Lstr_96                     # var=suffix
.Lpc472:                CONCAT                                # SM_CONCAT
.Lpc473:                CONCAT                                # SM_CONCAT
.Lpc474:                STORE_VAR .Lstr_97                    # store -> OUTPUT
.Lpc475:                RETURN                                # SM_RETURN
.Lpc476:

# ============================================================================
# stmt 91  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
.Lpc477:
.Lpc478:                PUSH_VAR .Lstr_6                      # var=stk_tag
.Lpc479:                PUSH_VAR .Lstr_73                     # var=f
.Lpc480:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc481:                STORE_VAR .Lstr_82                    # store -> tag

# ============================================================================
# stmt 92  (line 92):                 n              =  stk_n[f]
# ============================================================================
.Lpc482:
.Lpc483:                PUSH_VAR .Lstr_7                      # var=stk_n
.Lpc484:                PUSH_VAR .Lstr_73                     # var=f
.Lpc485:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc486:                STORE_VAR .Lstr_30                    # store -> n

# ============================================================================
# stmt 93  (line 93):                 r              =  "('" tag "'"
# ============================================================================
.Lpc487:
.Lpc488:                PUSH_VAR .Lstr_99                     # var=pad
.Lpc489:                PUSH_STR .Lstr_103, 0                 # str="( "
.Lpc490:                PUSH_STR .Lstr_80, 0                  # str="'"
.Lpc491:                PUSH_VAR .Lstr_82                     # var=tag
.Lpc492:                PUSH_STR .Lstr_104, 0                 # str="',"
.Lpc493:                CONCAT                                # SM_CONCAT
.Lpc494:                CONCAT                                # SM_CONCAT
.Lpc495:                CONCAT                                # SM_CONCAT
.Lpc496:                CONCAT                                # SM_CONCAT
.Lpc497:                STORE_VAR .Lstr_97                    # store -> OUTPUT

# ============================================================================
# stmt 94  (line 94):                 i              =  0
# ============================================================================
.Lpc498:
.Lpc499:                PUSH_INT 0                          
.Lpc500:                STORE_VAR .Lstr_85                    # store -> i
.Lpc501:

# ============================================================================
# stmt 95  (line 112):  pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
# ============================================================================
.Lpc502:
.Lpc503:                PUSH_VAR .Lstr_85                     # var=i
.Lpc504:                PUSH_VAR .Lstr_30                     # var=n
.Lpc505:                CALL_FN .Lstr_87, 2                   # SM_CALL fname="LT" nargs=2
.Lpc506:                PUSH_VAR .Lstr_85                     # var=i
.Lpc507:                PUSH_INT 1                          
.Lpc508:                ARITH 17                              # SM_ADD
.Lpc509:                CONCAT                                # SM_CONCAT
.Lpc510:                STORE_VAR .Lstr_85                    # store -> i
.Lpc511:                JUMP_F .Lpc552                        # SM_JUMP_F -> pc=552

# ============================================================================
# stmt 96  (line 96):                 r              =  r ', ' node_repr(stk_c[f][i])
# ============================================================================
.Lpc512:
.Lpc513:                PUSH_VAR .Lstr_85                     # var=i
.Lpc514:                PUSH_VAR .Lstr_30                     # var=n
.Lpc515:                CALL_FN .Lstr_87, 2                   # SM_CALL fname="LT" nargs=2
.Lpc516:                PUSH_VAR .Lstr_85                     # var=i
.Lpc517:                CONCAT                                # SM_CONCAT
.Lpc518:                STORE_VAR .Lstr_106                   # store -> nxt
.Lpc519:                JUMP_F .Lpc536                        # SM_JUMP_F -> pc=536

# ============================================================================
# stmt 97  (line 97):                 i              =  i                          :(nr_lp)
# ============================================================================
.Lpc520:
.Lpc521:                PUSH_VAR .Lstr_8                      # var=stk_c
.Lpc522:                PUSH_VAR .Lstr_73                     # var=f
.Lpc523:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc524:                PUSH_VAR .Lstr_85                     # var=i
.Lpc525:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc526:                PUSH_VAR .Lstr_94                     # var=indent
.Lpc527:                PUSH_INT 2                          
.Lpc528:                ARITH 17                              # SM_ADD
.Lpc529:                PUSH_STR .Lstr_107, 0                 # str=","
.Lpc530:                CALL_FN .Lstr_92, 3                   # SM_CALL fname="pp_node" nargs=3
.Lpc531:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 98  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc532:
.Lpc533:                PUSH_VAR .Lstr_85                     # var=i
.Lpc534:                STORE_VAR .Lstr_85                    # store -> i
.Lpc535:                JUMP .Lpc501                          # SM_JUMP -> pc=501
.Lpc536:

# ============================================================================
# stmt 99  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
.Lpc537:
.Lpc538:                PUSH_VAR .Lstr_8                      # var=stk_c
.Lpc539:                PUSH_VAR .Lstr_73                     # var=f
.Lpc540:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc541:                PUSH_VAR .Lstr_85                     # var=i
.Lpc542:                CALL_FN .Lstr_23, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc543:                PUSH_VAR .Lstr_94                     # var=indent
.Lpc544:                PUSH_INT 2                          
.Lpc545:                ARITH 17                              # SM_ADD
.Lpc546:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc547:                PUSH_VAR .Lstr_96                     # var=suffix
.Lpc548:                CONCAT                                # SM_CONCAT
.Lpc549:                CALL_FN .Lstr_92, 3                   # SM_CALL fname="pp_node" nargs=3
.Lpc550:                VOID_POP                              # SM_POP: discard TOS
.Lpc551:                RETURN                                # SM_RETURN
.Lpc552:

# ============================================================================
# stmt 100  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc553:
.Lpc554:                RETURN                                # SM_RETURN
.Lpc555:

# ============================================================================
# stmt 101  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc556:

# ============================================================================
# stmt 102  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
.Lpc557:
.Lpc558:                PUSH_STR .Lstr_111, 0                 # str="pp_bank()"
.Lpc559:                CALL_FN .Lstr_10, 1                   # SM_CALL fname="DEFINE" nargs=1
.Lpc560:                VOID_POP                              # SM_POP: discard TOS
.Lpc561:                JUMP .Lpc574                          # SM_JUMP -> pc=574
.Lpc562:

# ============================================================================
# stmt 103  (line 121):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
.Lpc563:
.Lpc564:                PUSH_VAR .Lstr_113                    # var=bank
.Lpc565:                PUSH_INT 0                          
.Lpc566:                PUSH_STR .Lstr_40, 0                  # str=""
.Lpc567:                CALL_FN .Lstr_92, 3                   # SM_CALL fname="pp_node" nargs=3
.Lpc568:                VOID_POP                              # SM_POP: discard TOS

# ============================================================================
# stmt 104  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
.Lpc569:
.Lpc570:                PUSH_STR .Lstr_16, 0                  # str="dummy"
.Lpc571:                CALL_FN .Lstr_17, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc572:                STORE_VAR .Lstr_112                   # store -> pp_bank
.Lpc573:                RETURN                                # SM_RETURN
.Lpc574:

# ============================================================================
# stmt 105  (line 124):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc575:

# ============================================================================
# stmt 106  (line 106):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ============================================================================
.Lpc576:
.Lpc577:                PUSH_STR .Lstr_93, 0                  # str=" "
.Lpc578:                PUSH_VAR .Lstr_0                      # var=nl
.Lpc579:                CONCAT                                # SM_CONCAT
.Lpc580:                PAT_SPAN                              # SM_PAT_SPAN
.Lpc581:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc582:                STORE_VAR .Lstr_115                   # store -> delim

# ============================================================================
# stmt 107  (line 107):                 OUTPUT         =  pad r suffix               :(RETURN)
# ============================================================================
.Lpc583:
.Lpc584:                PUSH_STR .Lstr_116, 0                 # str="( )"
.Lpc585:                PUSH_VAR .Lstr_0                      # var=nl
.Lpc586:                CONCAT                                # SM_CONCAT
.Lpc587:                PAT_NOTANY                            # SM_PAT_NOTANY
.Lpc588:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc589:                PUSH_STR .Lstr_116, 0                 # str="( )"
.Lpc590:                PUSH_VAR .Lstr_0                      # var=nl
.Lpc591:                CONCAT                                # SM_CONCAT
.Lpc592:                PAT_BREAK                             # SM_PAT_BREAK
.Lpc593:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc594:                CONCAT                                # SM_CONCAT
.Lpc595:                STORE_VAR .Lstr_117                   # store -> word

# ============================================================================
# stmt 108  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
.Lpc596:
.Lpc597:                PUSH_STR .Lstr_118, 0                 # str="("
.Lpc598:                PUSH_VAR .Lstr_117                    # var=word
.Lpc599:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc600:                PAT_CAPTURE 0, .Lstr_82               # SM_PAT_CAPTURE var=tag kind=0
.Lpc601:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc602:                PUSH_STR .Lstr_82, 0                  # str="tag"
.Lpc603:                CALL_FN .Lstr_50, 1                   # SM_CALL fname="Push_list" nargs=1
.Lpc604:                PAT_REFNAME .Lstr_115                 # SM_PAT_REFNAME arg="delim"
.Lpc605:                PAT_REFNAME .Lstr_119                 # SM_PAT_REFNAME arg="group"
.Lpc606:                PUSH_VAR .Lstr_117                    # var=word
.Lpc607:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc608:                PAT_CAPTURE 0, .Lstr_120              # SM_PAT_CAPTURE var=wrd kind=0
.Lpc609:                PUSH_STR .Lstr_120, 0                 # str="wrd"
.Lpc610:                CALL_FN .Lstr_56, 1                   # SM_CALL fname="Push_item" nargs=1
.Lpc611:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc612:                PAT_CAT                               # SM_PAT_CAT
.Lpc613:                PAT_ALT                               # SM_PAT_ALT
.Lpc614:                PAT_CAT                               # SM_PAT_CAT
.Lpc615:                PAT_ARBNO                             # SM_PAT_ARBNO
.Lpc616:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc617:                CALL_FN .Lstr_62, 0                   # SM_CALL fname="Pop_list" nargs=0
.Lpc618:                PUSH_STR .Lstr_44, 0                  # str=")"
.Lpc619:                CONCAT                                # SM_CONCAT
.Lpc620:                CONCAT                                # SM_CONCAT
.Lpc621:                CONCAT                                # SM_CONCAT
.Lpc622:                CONCAT                                # SM_CONCAT
.Lpc623:                CONCAT                                # SM_CONCAT
.Lpc624:                STORE_VAR .Lstr_119                   # store -> group

# ============================================================================
# stmt 109  (line 109):                 n              =  stk_n[f]
# ============================================================================
.Lpc625:
.Lpc626:                PAT_LIT .Lstr_118                     # SM_PAT_LIT arg="("
.Lpc627:                PUSH_VAR .Lstr_121                    # var=BAL
.Lpc628:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc629:                PAT_LIT .Lstr_44                      # SM_PAT_LIT arg=")"
.Lpc630:                PAT_CAT                               # SM_PAT_CAT
.Lpc631:                PAT_CAT                               # SM_PAT_CAT
.Lpc632:                PAT_CAPTURE 0, .Lstr_122              # SM_PAT_CAPTURE var=item kind=0
.Lpc633:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc634:                STORE_VAR .Lstr_123                   # store -> spat
.Lpc635:

# ============================================================================
# stmt 110  (line 142):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
.Lpc636:
.Lpc637:                PUSH_VAR .Lstr_125                    # var=INPUT
.Lpc638:                STORE_VAR .Lstr_126                   # store -> line
.Lpc639:                JUMP_F .Lpc648                        # SM_JUMP_F -> pc=648

# ============================================================================
# stmt 111  (line 111):                 i              =  0
# ============================================================================
.Lpc640:
.Lpc641:                PUSH_VAR .Lstr_127                    # var=src
.Lpc642:                PUSH_VAR .Lstr_126                    # var=line
.Lpc643:                PUSH_VAR .Lstr_0                      # var=nl
.Lpc644:                CONCAT                                # SM_CONCAT
.Lpc645:                CONCAT                                # SM_CONCAT
.Lpc646:                STORE_VAR .Lstr_127                   # store -> src
.Lpc647:                JUMP .Lpc635                          # SM_JUMP -> pc=635
.Lpc648:

# ============================================================================
# stmt 112  (line 145):                 dummy          =  init_list('bank')
# ============================================================================
.Lpc649:

# ============================================================================
# stmt 113  (line 113):                 nxt            =  LT(i, n) i                 :F(pp_wlast)
# ============================================================================
.Lpc650:
.Lpc651:                PUSH_STR .Lstr_113, 0                 # str="bank"
.Lpc652:                CALL_FN .Lstr_39, 1                   # SM_CALL fname="init_list" nargs=1
.Lpc653:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 114  (line 114):                 pp_node(stk_c[f][i], indent + 2, ',')
# ============================================================================
.Lpc654:
.Lpc655:                PUSH_STR .Lstr_129, 0                 # str="BANK"
.Lpc656:                CALL_FN .Lstr_11, 1                   # SM_CALL fname="stk_push_frame" nargs=1
.Lpc657:                STORE_VAR .Lstr_16                    # store -> dummy
.Lpc658:

# ============================================================================
# stmt 115  (line 147):  loop           src            spat =  ''                    :F(all_done)
# ============================================================================
.Lpc659:
.Lpc660:                PUSH_VAR .Lstr_123                    # var=spat
.Lpc661:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc662:                PUSH_VAR .Lstr_127                    # var=src
.Lpc663:                PUSH_STR .Lstr_40, 0                  # str=""
.Lpc664:                EXEC_STMT_VARIANT 1, .Lstr_127        # SM_EXEC_STMT_VARIANT subj=src has_repl=1
.Lpc665:                JUMP_F .Lpc691                        # SM_JUMP_F -> pc=691

# ============================================================================
# stmt 116  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
.Lpc666:
.Lpc667:                PUSH_STR .Lstr_131, 0                 # str="ROOT"
.Lpc668:                CALL_FN .Lstr_11, 1                   # SM_CALL fname="stk_push_frame" nargs=1
.Lpc669:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 117  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc670:
.Lpc671:                PUSH_VAR .Lstr_119                    # var=group
.Lpc672:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc673:                PUSH_VAR .Lstr_122                    # var=item
.Lpc674:                PUSH_INT 0                          
.Lpc675:                EXEC_STMT_VARIANT 0, .Lstr_122        # SM_EXEC_STMT_VARIANT subj=item has_repl=0
.Lpc676:                JUMP_F .Lpc681                        # SM_JUMP_F -> pc=681

# ============================================================================
# stmt 118  (line 118):  pp_node_end
# ============================================================================
.Lpc677:
.Lpc678:                CALL_FN .Lstr_26, 0                   # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc679:                STORE_VAR .Lstr_16                    # store -> dummy
.Lpc680:                JUMP .Lpc658                          # SM_JUMP -> pc=658
.Lpc681:

# ============================================================================
# stmt 119  (line 151):  parse_fail     OUTPUT         =  'Parse failed on: ' item
# ============================================================================
.Lpc682:
.Lpc683:                PUSH_STR .Lstr_133, 0                 # str="Parse failed on: "
.Lpc684:                PUSH_VAR .Lstr_122                    # var=item
.Lpc685:                CONCAT                                # SM_CONCAT
.Lpc686:                STORE_VAR .Lstr_97                    # store -> OUTPUT

# ============================================================================
# stmt 120  (line 120):                 DEFINE('pp_bank()')                          :(pp_bank_end)
# ============================================================================
.Lpc687:
.Lpc688:                CALL_FN .Lstr_26, 0                   # SM_CALL fname="stk_pop_into_parent" nargs=0
.Lpc689:                STORE_VAR .Lstr_16                    # store -> dummy
.Lpc690:                JUMP .Lpc658                          # SM_JUMP -> pc=658
.Lpc691:

# ============================================================================
# stmt 121  (line 153):  all_done       dummy          =  stk_pop_final('bank')
# ============================================================================
.Lpc692:
.Lpc693:                PUSH_STR .Lstr_113, 0                 # str="bank"
.Lpc694:                CALL_FN .Lstr_33, 1                   # SM_CALL fname="stk_pop_final" nargs=1
.Lpc695:                STORE_VAR .Lstr_16                    # store -> dummy

# ============================================================================
# stmt 122  (line 122):                 pp_bank        =  .dummy                     :(RETURN)
# ============================================================================
.Lpc696:
.Lpc697:                CALL_FN .Lstr_112, 0                  # SM_CALL fname="pp_bank" nargs=0
.Lpc698:                STORE_VAR .Lstr_16                    # store -> dummy
.Lpc699:                JUMP .Lpc700                          # SM_JUMP -> pc=700
.Lpc700:

# ============================================================================
# stmt 123  (line 123):  pp_bank_end
# ============================================================================
.Lpc701:
.Lpc702:                HALT                                  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
