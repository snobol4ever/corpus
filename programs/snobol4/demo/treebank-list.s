                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.Lstr_0:
                        .string          "nl"
.Lstr_1:
                        .string          "ALPHABET"
.Lstr_2:
                        .string          "list(head,tail)"
.Lstr_3:
                        .string          "DATA"
.Lstr_4:
                        .string          "list_reverse(lst)acc,cur"
.Lstr_5:
                        .string          "DEFINE"
.Lstr_6:
                        .string          "list_reverse"
.Lstr_7:
                        .string          ""
.Lstr_8:
                        .string          "acc"
.Lstr_9:
                        .string          "lst"
.Lstr_10:
                        .string          "cur"
.Lstr_11:
                        .string          "lr1"
.Lstr_12:
                        .string          "DIFFER"
.Lstr_13:
                        .string          "head"
.Lstr_14:
                        .string          "list"
.Lstr_15:
                        .string          "tail"
.Lstr_16:
                        .string          "lr_done"
.Lstr_17:
                        .string          "list_reverse_end"
.Lstr_18:
                        .string          "stk_push_frame(v)"
.Lstr_19:
                        .string          "stk_push_frame"
.Lstr_20:
                        .string          "v"
.Lstr_21:
                        .string          "stk"
.Lstr_22:
                        .string          "dummy"
.Lstr_23:
                        .string          "NAME_PUSH"
.Lstr_24:
                        .string          "stk_push_frame_end"
.Lstr_25:
                        .string          "stk_push_item(v)"
.Lstr_26:
                        .string          "stk_push_item"
.Lstr_27:
                        .string          "head_SET"
.Lstr_28:
                        .string          "stk_push_item_end"
.Lstr_29:
                        .string          "stk_pop_into_parent()child"
.Lstr_30:
                        .string          "stk_pop_into_parent"
.Lstr_31:
                        .string          "child"
.Lstr_32:
                        .string          "stk_pop_into_parent_end"
.Lstr_33:
                        .string          "stk_pop_final(var)"
.Lstr_34:
                        .string          "stk_pop_final"
.Lstr_35:
                        .string          "var"
.Lstr_36:
                        .string          "ASGN_INDIR"
.Lstr_37:
                        .string          "stk_pop_final_end"
.Lstr_38:
                        .string          "init_list(v)"
.Lstr_39:
                        .string          "Init_list(vs)"
.Lstr_40:
                        .string          "init_list"
.Lstr_41:
                        .string          "Init_list"
.Lstr_42:
                        .string          "epsilon . *init_list("
.Lstr_43:
                        .string          "vs"
.Lstr_44:
                        .string          ")"
.Lstr_45:
                        .string          "EVAL"
.Lstr_46:
                        .string          "init_list_end"
.Lstr_47:
                        .string          "push_list(v)"
.Lstr_48:
                        .string          "Push_list(vs)"
.Lstr_49:
                        .string          "push_list"
.Lstr_50:
                        .string          "Push_list"
.Lstr_51:
                        .string          "epsilon . *push_list("
.Lstr_52:
                        .string          "push_list_end"
.Lstr_53:
                        .string          "push_item(v)"
.Lstr_54:
                        .string          "Push_item(vs)"
.Lstr_55:
                        .string          "push_item"
.Lstr_56:
                        .string          "Push_item"
.Lstr_57:
                        .string          "epsilon . *push_item("
.Lstr_58:
                        .string          "push_item_end"
.Lstr_59:
                        .string          "pop_list()"
.Lstr_60:
                        .string          "Pop_list()"
.Lstr_61:
                        .string          "pop_list"
.Lstr_62:
                        .string          "Pop_list"
.Lstr_63:
                        .string          "epsilon"
.Lstr_64:
                        .string          "pop_list_end"
.Lstr_65:
                        .string          "pop_final(v)"
.Lstr_66:
                        .string          "Pop_final(vs)"
.Lstr_67:
                        .string          "pop_final"
.Lstr_68:
                        .string          "Pop_final"
.Lstr_69:
                        .string          "epsilon . *pop_final("
.Lstr_70:
                        .string          "pop_final_end"
.Lstr_71:
                        .string          " "
.Lstr_72:
                        .string          "delim"
.Lstr_73:
                        .string          "( )"
.Lstr_74:
                        .string          "word"
.Lstr_75:
                        .string          "("
.Lstr_76:
                        .string          "tag"
.Lstr_77:
                        .string          "group"
.Lstr_78:
                        .string          "wrd"
.Lstr_79:
                        .string          "'bank'"
.Lstr_80:
                        .string          "'BANK'"
.Lstr_81:
                        .string          "'ROOT'"
.Lstr_82:
                        .string          "treebank"
.Lstr_83:
                        .string          "node_repr(node)r,c,sep"
.Lstr_84:
                        .string          "node_repr"
.Lstr_85:
                        .string          "node"
.Lstr_86:
                        .string          "DATATYPE"
.Lstr_87:
                        .string          "LCASE"
.Lstr_88:
                        .string          "UCASE"
.Lstr_89:
                        .string          "REPLACE"
.Lstr_90:
                        .string          "STRING"
.Lstr_91:
                        .string          "IDENT"
.Lstr_92:
                        .string          "'"
.Lstr_93:
                        .string          "nr_list"
.Lstr_94:
                        .string          "r"
.Lstr_95:
                        .string          "sep"
.Lstr_96:
                        .string          "c"
.Lstr_97:
                        .string          "nr_lp"
.Lstr_98:
                        .string          ", "
.Lstr_99:
                        .string          "nr_done"
.Lstr_100:
                        .string          "node_repr_end"
.Lstr_101:
                        .string          "pp_node(node,indent,suffix)r,pad,c,nxt"
.Lstr_102:
                        .string          "pp_node"
.Lstr_103:
                        .string          "indent"
.Lstr_104:
                        .string          "DUPL"
.Lstr_105:
                        .string          "pad"
.Lstr_106:
                        .string          "SIZE"
.Lstr_107:
                        .string          "GT"
.Lstr_108:
                        .string          "suffix"
.Lstr_109:
                        .string          "OUTPUT"
.Lstr_110:
                        .string          "pp_wrap"
.Lstr_111:
                        .string          "( "
.Lstr_112:
                        .string          "',"
.Lstr_113:
                        .string          "pp_wch"
.Lstr_114:
                        .string          "nxt"
.Lstr_115:
                        .string          ","
.Lstr_116:
                        .string          "pp_wlast"
.Lstr_117:
                        .string          "pp_wdone"
.Lstr_118:
                        .string          "pp_node_end"
.Lstr_119:
                        .string          "pp_bank()cur"
.Lstr_120:
                        .string          "pp_bank"
.Lstr_121:
                        .string          "bank"
.Lstr_122:
                        .string          "pp_bank_end"
.Lstr_123:
                        .string          "slurp"
.Lstr_124:
                        .string          "INPUT"
.Lstr_125:
                        .string          "line"
.Lstr_126:
                        .string          "src"
.Lstr_127:
                        .string          "slurp_done"
.Lstr_128:
                        .string          "main_fail"
.Lstr_129:
                        .string          "Pattern match failed"
.Lstr_130:
                        .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:
                        .quad            .Lstr_6 # expression: list_reverse -> .Lpc20
                        .quad            .Lpc20
                        .quad            .Lstr_11 # expression: lr1 -> .Lpc27
                        .quad            .Lpc27
                        .quad            .Lstr_16 # expression: lr_done -> .Lpc44
                        .quad            .Lpc44
                        .quad            .Lstr_17 # expression: list_reverse_end -> .Lpc49
                        .quad            .Lpc49
                        .quad            .Lstr_19 # expression: stk_push_frame -> .Lpc56
                        .quad            .Lpc56
                        .quad            .Lstr_24 # expression: stk_push_frame_end -> .Lpc69
                        .quad            .Lpc69
                        .quad            .Lstr_26 # expression: stk_push_item -> .Lpc76
                        .quad            .Lpc76
                        .quad            .Lstr_28 # expression: stk_push_item_end -> .Lpc89
                        .quad            .Lpc89
                        .quad            .Lstr_30 # expression: stk_pop_into_parent -> .Lpc96
                        .quad            .Lpc96
                        .quad            .Lstr_32 # expression: stk_pop_into_parent_end -> .Lpc119
                        .quad            .Lpc119
                        .quad            .Lstr_34 # expression: stk_pop_final -> .Lpc126
                        .quad            .Lpc126
                        .quad            .Lstr_37 # expression: stk_pop_final_end -> .Lpc142
                        .quad            .Lpc142
                        .quad            .Lstr_40 # expression: init_list -> .Lpc153
                        .quad            .Lpc153
                        .quad            .Lstr_41 # expression: Init_list -> .Lpc166
                        .quad            .Lpc166
                        .quad            .Lstr_46 # expression: init_list_end -> .Lpc176
                        .quad            .Lpc176
                        .quad            .Lstr_49 # expression: push_list -> .Lpc187
                        .quad            .Lpc187
                        .quad            .Lstr_50 # expression: Push_list -> .Lpc197
                        .quad            .Lpc197
                        .quad            .Lstr_52 # expression: push_list_end -> .Lpc207
                        .quad            .Lpc207
                        .quad            .Lstr_55 # expression: push_item -> .Lpc218
                        .quad            .Lpc218
                        .quad            .Lstr_56 # expression: Push_item -> .Lpc228
                        .quad            .Lpc228
                        .quad            .Lstr_58 # expression: push_item_end -> .Lpc238
                        .quad            .Lpc238
                        .quad            .Lstr_61 # expression: pop_list -> .Lpc249
                        .quad            .Lpc249
                        .quad            .Lstr_62 # expression: Pop_list -> .Lpc258
                        .quad            .Lpc258
                        .quad            .Lstr_64 # expression: pop_list_end -> .Lpc266
                        .quad            .Lpc266
                        .quad            .Lstr_67 # expression: pop_final -> .Lpc277
                        .quad            .Lpc277
                        .quad            .Lstr_68 # expression: Pop_final -> .Lpc287
                        .quad            .Lpc287
                        .quad            .Lstr_70 # expression: pop_final_end -> .Lpc297
                        .quad            .Lpc297
                        .quad            .Lstr_84 # expression: node_repr -> .Lpc385
                        .quad            .Lpc385
                        .quad            .Lstr_93 # expression: nr_list -> .Lpc404
                        .quad            .Lpc404
                        .quad            .Lstr_97 # expression: nr_lp -> .Lpc414
                        .quad            .Lpc414
                        .quad            .Lstr_99 # expression: nr_done -> .Lpc437
                        .quad            .Lpc437
                        .quad            .Lstr_100 # expression: node_repr_end -> .Lpc444
                        .quad            .Lpc444
                        .quad            .Lstr_102 # expression: pp_node -> .Lpc451
                        .quad            .Lpc451
                        .quad            .Lstr_110 # expression: pp_wrap -> .Lpc478
                        .quad            .Lpc478
                        .quad            .Lstr_113 # expression: pp_wch -> .Lpc495
                        .quad            .Lpc495
                        .quad            .Lstr_116 # expression: pp_wlast -> .Lpc523
                        .quad            .Lpc523
                        .quad            .Lstr_117 # expression: pp_wdone -> .Lpc536
                        .quad            .Lpc536
                        .quad            .Lstr_118 # expression: pp_node_end -> .Lpc539
                        .quad            .Lpc539
                        .quad            .Lstr_120 # expression: pp_bank -> .Lpc546
                        .quad            .Lpc546
                        .quad            .Lstr_122 # expression: pp_bank_end -> .Lpc558
                        .quad            .Lpc558
                        .quad            .Lstr_123 # expression: slurp -> .Lpc560
                        .quad            .Lpc560
                        .quad            .Lstr_127 # expression: slurp_done -> .Lpc573
                        .quad            .Lpc573
                        .quad            .Lstr_128 # expression: main_fail -> .Lpc585
                        .quad            .Lpc585
                        .quad            .Lstr_130 # expression: END -> .Lpc589
                        .quad            .Lpc589
                        .quad            0 # sentinel
                        .quad            0
                        .text
# ============================================================================
# EM-7c: invariant pattern blobs (baked from sm_phase2_to_patnd → bb_build_flat_text)
# Each block exposes _pat_inv_<id>_α / _β / _γ / _ω.
# rt_match_blob(blob_α, ...) drives Phase-3 against these blobs.
# ============================================================================
                        .intel_syntax    noprefix
                        .text
# ---- pattern blob 0 (Phase-2 window pc=1..6, SM_EXEC_STMT pc=9) ----
                        .global          _pat_inv_0_α
                        .global          _pat_inv_0_β
                        .global          _pat_inv_0_γ
                        .global          _pat_inv_0_ω
_pat_inv_0_α:
                        lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               _pat_inv_0_α_body
                        jmp              _pat_inv_0_β
_pat_inv_0_α_body:
                        POS_α           0, xcat0_γ, xcat0_ω
xcat0_left_β:
                        POS_β           xcat0_ω
xcat0_γ:
                        .section         .data
.Lcap1_vname:
                        .string          ""
.Lcap1_data:
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lcap1_vname
                        .zero            56
                        .zero            24
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           _cap1_child_α
_cap1_child_α:
                        lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               _cap1_α_body
                        jmp              _cap1_β
_cap1_α_body:
                        .section         .data
.Llen2_z:
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 0
                        call             bb_len@PLT
                        test             rax, rax
                        jne              _cap1_γ
                        jmp              _cap1_ω
_cap1_β:
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 1
                        call             bb_len@PLT
                        test             rax, rax
                        jne              _cap1_γ
                        jmp              _cap1_ω
_cap1_γ:
                        lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
_cap1_ω:
                        mov              eax, 99
                        xor              edx, edx
                        ret
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 0
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              _pat_inv_0_γ
                        jmp              xcat0_right_ω
xcat0_right_β:
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 1
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              _pat_inv_0_γ
                        jmp              xcat0_right_ω
xcat0_right_ω:
                        jmp              xcat0_left_β
_pat_inv_0_β:
                        jmp              xcat0_right_β
xcat0_ω:
                        jmp              _pat_inv_0_ω
_pat_inv_0_γ:
                        lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
_pat_inv_0_ω:
                        mov              eax, 99
                        xor              edx, edx
                        ret
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-7d)
# 591 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lchunk_registry] # EM-7d: register user-defined function expressions
                        call             rt_register_expressions@PLT
                        lea              rdi, [rip + .Lcap1_data] # cap fixup 0 (static): .Lcap1_data -> _cap1_child_α
                        lea              rsi, [rip + _cap1_child_α]
                        call             rt_patch_cap_fn@PLT
                        call             rt_init@PLT # rt_init(argc, argv)
# source-file: treebank-list.sno  (147 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
# ============================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc0:                  STNO
.Lpc1:                  # PUSH_INT       baked  _pat_inv_0 pc=1..6
.Lpc2:                  # PAT_POS        baked  _pat_inv_0 pc=1..6
.Lpc3:                  # PUSH_INT       baked  _pat_inv_0 pc=1..6
.Lpc4:                  # PAT_LEN        baked  _pat_inv_0 pc=1..6
.Lpc5:                  # PAT_CAPTURE    baked  _pat_inv_0 pc=1..6
.Lpc6:                  # PAT_CAT        baked  _pat_inv_0 pc=1..6
.Lpc7:                  PUSH_VAR         .Lstr_1 # var=ALPHABET
.Lpc8:                  PUSH_INT         0
.Lpc9:                  lea              rdi, [rip + _pat_inv_0_α] # blob entry α  (Phase-2 pc=1..6)
                        lea              rsi, [rip + .Lstr_1] # subj_name=ALPHABET
                        mov              edx, 0 # has_repl=0
                        call             rt_match_blob@PLT # EM-7c: Phase-3+5 against baked invariant blob
# ============================================================================
# stmt 2  (line 2):  * treebank-list.sno — Penn Treebank s-expression parser (LISP-style)
# ============================================================================
.Lpc10:                 STNO
.Lpc11:                 PUSH_STR         .Lstr_2, 0 # str="list(head,tail)"
.Lpc12:                 CALL_FN          .Lstr_3, 1 # fname="DATA"
.Lpc13:                 VOID_POP
# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc14:                 STNO
.Lpc15:                 PUSH_STR         .Lstr_4, 0 # str="list_reverse(lst)acc,cur"
.Lpc16:                 CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc17:                 VOID_POP
.Lpc18:                 JUMP             .Lpc48
.Lpc19:                 LABEL
# ============================================================================
# stmt 4  (line 11):  list_reverse   acc            =
# ============================================================================
.Lpc20:                 STNO
.Lpc21:                 PUSH_STR         .Lstr_7, 0 # str=""
.Lpc22:                 STORE_VAR        .Lstr_8 # store -> acc
# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc23:                 STNO
.Lpc24:                 PUSH_VAR         .Lstr_9 # var=lst
.Lpc25:                 STORE_VAR        .Lstr_10 # store -> cur
.Lpc26:                 LABEL
# ============================================================================
# stmt 6  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
.Lpc27:                 STNO
.Lpc28:                 PUSH_VAR         .Lstr_10 # var=cur
.Lpc29:                 CALL_FN          .Lstr_12, 1 # fname="DIFFER"
.Lpc30:                 VOID_POP
.Lpc31:                 JUMP_F           .Lpc43
# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc32:                 STNO
.Lpc33:                 PUSH_VAR         .Lstr_10 # var=cur
.Lpc34:                 CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc35:                 PUSH_VAR         .Lstr_8 # var=acc
.Lpc36:                 CALL_FN          .Lstr_14, 2 # fname="list"
.Lpc37:                 STORE_VAR        .Lstr_8 # store -> acc
# ============================================================================
# stmt 8  (line 8):                 DATA('list(head,tail)')
# ============================================================================
.Lpc38:                 STNO
.Lpc39:                 PUSH_VAR         .Lstr_10 # var=cur
.Lpc40:                 CALL_FN          .Lstr_15, 1 # fname="tail"
.Lpc41:                 STORE_VAR        .Lstr_10 # store -> cur
.Lpc42:                 JUMP             .Lpc26
.Lpc43:                 LABEL
# ============================================================================
# stmt 9  (line 16):  lr_done        list_reverse   =  acc                        :(RETURN)
# ============================================================================
.Lpc44:                 STNO
.Lpc45:                 PUSH_VAR         .Lstr_8 # var=acc
.Lpc46:                 STORE_VAR        .Lstr_6 # store -> list_reverse
.Lpc47:                 RETURN
.Lpc48:                 LABEL
# ============================================================================
# stmt 10  (line 18):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc49:                 STNO
# ============================================================================
# stmt 11  (line 11):  list_reverse   acc            =
# ============================================================================
.Lpc50:                 STNO
.Lpc51:                 PUSH_STR         .Lstr_18, 0 # str="stk_push_frame(v)"
.Lpc52:                 CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc53:                 VOID_POP
.Lpc54:                 JUMP             .Lpc68
.Lpc55:                 LABEL
# ============================================================================
# stmt 12  (line 20):  stk_push_frame stk            =  list(list(v,), stk)
# ============================================================================
.Lpc56:                 STNO
.Lpc57:                 PUSH_VAR         .Lstr_20 # var=v
.Lpc58:                 PUSH_NULL
.Lpc59:                 CALL_FN          .Lstr_14, 2 # fname="list"
.Lpc60:                 PUSH_VAR         .Lstr_21 # var=stk
.Lpc61:                 CALL_FN          .Lstr_14, 2 # fname="list"
.Lpc62:                 STORE_VAR        .Lstr_21 # store -> stk
# ============================================================================
# stmt 13  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
.Lpc63:                 STNO
.Lpc64:                 PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc65:                 CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc66:                 STORE_VAR        .Lstr_19 # store -> stk_push_frame
.Lpc67:                 RETURN
.Lpc68:                 LABEL
# ============================================================================
# stmt 14  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc69:                 STNO
# ============================================================================
# stmt 15  (line 15):                 cur            =  tail(cur)                  :(lr1)
# ============================================================================
.Lpc70:                 STNO
.Lpc71:                 PUSH_STR         .Lstr_25, 0 # str="stk_push_item(v)"
.Lpc72:                 CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc73:                 VOID_POP
.Lpc74:                 JUMP             .Lpc88
.Lpc75:                 LABEL
# ============================================================================
# stmt 16  (line 25):  stk_push_item  head(stk)      =  list(v, head(stk))
# ============================================================================
.Lpc76:                 STNO
.Lpc77:                 PUSH_VAR         .Lstr_20 # var=v
.Lpc78:                 PUSH_VAR         .Lstr_21 # var=stk
.Lpc79:                 CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc80:                 CALL_FN          .Lstr_14, 2 # fname="list"
.Lpc81:                 PUSH_VAR         .Lstr_21 # var=stk
.Lpc82:                 CALL_FN          .Lstr_27, 2 # fname="head_SET"
# ============================================================================
# stmt 17  (line 17):  list_reverse_end
# ============================================================================
.Lpc83:                 STNO
.Lpc84:                 PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc85:                 CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc86:                 STORE_VAR        .Lstr_26 # store -> stk_push_item
.Lpc87:                 RETURN
.Lpc88:                 LABEL
# ============================================================================
# stmt 18  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc89:                 STNO
# ============================================================================
# stmt 19  (line 19):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
# ============================================================================
.Lpc90:                 STNO
.Lpc91:                 PUSH_STR         .Lstr_29, 0 # str="stk_pop_into_parent()child"
.Lpc92:                 CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc93:                 VOID_POP
.Lpc94:                 JUMP             .Lpc118
.Lpc95:                 LABEL
# ============================================================================
# stmt 20  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
.Lpc96:                 STNO
# ============================================================================
# stmt 21  (line 21):                 stk_push_frame =  .dummy                     :(RETURN)
# ============================================================================
.Lpc97:                 STNO
.Lpc98:                 PUSH_VAR         .Lstr_21 # var=stk
.Lpc99:                 CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc100:                CALL_FN          .Lstr_6, 1 # fname="list_reverse"
.Lpc101:                STORE_VAR        .Lstr_31 # store -> child
# ============================================================================
# stmt 22  (line 22):  stk_push_frame_end
# ============================================================================
.Lpc102:                STNO
.Lpc103:                PUSH_VAR         .Lstr_21 # var=stk
.Lpc104:                CALL_FN          .Lstr_15, 1 # fname="tail"
.Lpc105:                STORE_VAR        .Lstr_21 # store -> stk
# ============================================================================
# stmt 23  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc106:                STNO
.Lpc107:                PUSH_VAR         .Lstr_31 # var=child
.Lpc108:                PUSH_VAR         .Lstr_21 # var=stk
.Lpc109:                CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc110:                CALL_FN          .Lstr_14, 2 # fname="list"
.Lpc111:                PUSH_VAR         .Lstr_21 # var=stk
.Lpc112:                CALL_FN          .Lstr_27, 2 # fname="head_SET"
# ============================================================================
# stmt 24  (line 24):                 DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
# ============================================================================
.Lpc113:                STNO
.Lpc114:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc115:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc116:                STORE_VAR        .Lstr_30 # store -> stk_pop_into_parent
.Lpc117:                RETURN
.Lpc118:                LABEL
# ============================================================================
# stmt 25  (line 36):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc119:                STNO
# ============================================================================
# stmt 26  (line 26):                 stk_push_item  =  .dummy                     :(RETURN)
# ============================================================================
.Lpc120:                STNO
.Lpc121:                PUSH_STR         .Lstr_33, 0 # str="stk_pop_final(var)"
.Lpc122:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc123:                VOID_POP
.Lpc124:                JUMP             .Lpc141
.Lpc125:                LABEL
# ============================================================================
# stmt 27  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
.Lpc126:                STNO
.Lpc127:                PUSH_VAR         .Lstr_21 # var=stk
.Lpc128:                CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc129:                CALL_FN          .Lstr_6, 1 # fname="list_reverse"
.Lpc130:                PUSH_VAR         .Lstr_35 # var=var
.Lpc131:                CALL_FN          .Lstr_36, 2 # fname="ASGN_INDIR"
# ============================================================================
# stmt 28  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc132:                STNO
.Lpc133:                PUSH_VAR         .Lstr_21 # var=stk
.Lpc134:                CALL_FN          .Lstr_15, 1 # fname="tail"
.Lpc135:                STORE_VAR        .Lstr_21 # store -> stk
# ============================================================================
# stmt 29  (line 29):                 DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
# ============================================================================
.Lpc136:                STNO
.Lpc137:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc138:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc139:                STORE_VAR        .Lstr_34 # store -> stk_pop_final
.Lpc140:                RETURN
.Lpc141:                LABEL
# ============================================================================
# stmt 30  (line 42):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc142:                STNO
# ============================================================================
# stmt 31  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
.Lpc143:                STNO
.Lpc144:                PUSH_STR         .Lstr_38, 0 # str="init_list(v)"
.Lpc145:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc146:                VOID_POP
# ============================================================================
# stmt 32  (line 32):                 stk            =  tail(stk)
# ============================================================================
.Lpc147:                STNO
.Lpc148:                PUSH_STR         .Lstr_39, 0 # str="Init_list(vs)"
.Lpc149:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc150:                VOID_POP
.Lpc151:                JUMP             .Lpc175
.Lpc152:                LABEL
# ============================================================================
# stmt 33  (line 45):  init_list      $v             =
# ============================================================================
.Lpc153:                STNO
.Lpc154:                PUSH_STR         .Lstr_7, 0 # str=""
.Lpc155:                PUSH_VAR         .Lstr_20 # var=v
.Lpc156:                CALL_FN          .Lstr_36, 2 # fname="ASGN_INDIR"
# ============================================================================
# stmt 34  (line 34):                 stk_pop_into_parent =  .dummy                :(RETURN)
# ============================================================================
.Lpc157:                STNO
.Lpc158:                PUSH_STR         .Lstr_7, 0 # str=""
.Lpc159:                STORE_VAR        .Lstr_21 # store -> stk
# ============================================================================
# stmt 35  (line 35):  stk_pop_into_parent_end
# ============================================================================
.Lpc160:                STNO
.Lpc161:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc162:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc163:                STORE_VAR        .Lstr_40 # store -> init_list
.Lpc164:                RETURN_VARIANT   2, 0, 164 # SM_NRETURN
.Lpc165:                LABEL
# ============================================================================
# stmt 36  (line 48):  Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
# ============================================================================
.Lpc166:                STNO
.Lpc167:                PUSH_STR         .Lstr_42, 0 # str="epsilon . *init_list("
.Lpc168:                PUSH_VAR         .Lstr_43 # var=vs
.Lpc169:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc170:                CONCAT
.Lpc171:                CONCAT
.Lpc172:                CALL_FN          .Lstr_45, 1 # fname="EVAL"
.Lpc173:                STORE_VAR        .Lstr_41 # store -> Init_list
.Lpc174:                RETURN
.Lpc175:                LABEL
# ============================================================================
# stmt 37  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc176:                STNO
# ============================================================================
# stmt 38  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
.Lpc177:                STNO
.Lpc178:                PUSH_STR         .Lstr_47, 0 # str="push_list(v)"
.Lpc179:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc180:                VOID_POP
# ============================================================================
# stmt 39  (line 39):                 stk            =  tail(stk)
# ============================================================================
.Lpc181:                STNO
.Lpc182:                PUSH_STR         .Lstr_48, 0 # str="Push_list(vs)"
.Lpc183:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc184:                VOID_POP
.Lpc185:                JUMP             .Lpc206
.Lpc186:                LABEL
# ============================================================================
# stmt 40  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc187:                STNO
.Lpc188:                PUSH_VAR         .Lstr_20 # var=v
.Lpc189:                CALL_FN          .Lstr_19, 1 # fname="stk_push_frame"
.Lpc190:                STORE_VAR        .Lstr_22 # store -> dummy
# ============================================================================
# stmt 41  (line 41):  stk_pop_final_end
# ============================================================================
.Lpc191:                STNO
.Lpc192:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc193:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc194:                STORE_VAR        .Lstr_49 # store -> push_list
.Lpc195:                RETURN_VARIANT   2, 0, 195 # SM_NRETURN
.Lpc196:                LABEL
# ============================================================================
# stmt 42  (line 55):  Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
# ============================================================================
.Lpc197:                STNO
.Lpc198:                PUSH_STR         .Lstr_51, 0 # str="epsilon . *push_list("
.Lpc199:                PUSH_VAR         .Lstr_43 # var=vs
.Lpc200:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc201:                CONCAT
.Lpc202:                CONCAT
.Lpc203:                CALL_FN          .Lstr_45, 1 # fname="EVAL"
.Lpc204:                STORE_VAR        .Lstr_50 # store -> Push_list
.Lpc205:                RETURN
.Lpc206:                LABEL
# ============================================================================
# stmt 43  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc207:                STNO
# ============================================================================
# stmt 44  (line 44):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
.Lpc208:                STNO
.Lpc209:                PUSH_STR         .Lstr_53, 0 # str="push_item(v)"
.Lpc210:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc211:                VOID_POP
# ============================================================================
# stmt 45  (line 45):  init_list      $v             =
# ============================================================================
.Lpc212:                STNO
.Lpc213:                PUSH_STR         .Lstr_54, 0 # str="Push_item(vs)"
.Lpc214:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc215:                VOID_POP
.Lpc216:                JUMP             .Lpc237
.Lpc217:                LABEL
# ============================================================================
# stmt 46  (line 60):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc218:                STNO
.Lpc219:                PUSH_VAR         .Lstr_20 # var=v
.Lpc220:                CALL_FN          .Lstr_26, 1 # fname="stk_push_item"
.Lpc221:                STORE_VAR        .Lstr_22 # store -> dummy
# ============================================================================
# stmt 47  (line 47):                 init_list      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc222:                STNO
.Lpc223:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc224:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc225:                STORE_VAR        .Lstr_55 # store -> push_item
.Lpc226:                RETURN_VARIANT   2, 0, 226 # SM_NRETURN
.Lpc227:                LABEL
# ============================================================================
# stmt 48  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
.Lpc228:                STNO
.Lpc229:                PUSH_STR         .Lstr_57, 0 # str="epsilon . *push_item("
.Lpc230:                PUSH_VAR         .Lstr_43 # var=vs
.Lpc231:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc232:                CONCAT
.Lpc233:                CONCAT
.Lpc234:                CALL_FN          .Lstr_45, 1 # fname="EVAL"
.Lpc235:                STORE_VAR        .Lstr_56 # store -> Push_item
.Lpc236:                RETURN
.Lpc237:                LABEL
# ============================================================================
# stmt 49  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc238:                STNO
# ============================================================================
# stmt 50  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc239:                STNO
.Lpc240:                PUSH_STR         .Lstr_59, 0 # str="pop_list()"
.Lpc241:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc242:                VOID_POP
# ============================================================================
# stmt 51  (line 51):                 DEFINE('push_list(v)')
# ============================================================================
.Lpc243:                STNO
.Lpc244:                PUSH_STR         .Lstr_60, 0 # str="Pop_list()"
.Lpc245:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc246:                VOID_POP
.Lpc247:                JUMP             .Lpc265
.Lpc248:                LABEL
# ============================================================================
# stmt 52  (line 67):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc249:                STNO
.Lpc250:                CALL_FN          .Lstr_30, 0 # fname="stk_pop_into_parent"
.Lpc251:                STORE_VAR        .Lstr_22 # store -> dummy
# ============================================================================
# stmt 53  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc252:                STNO
.Lpc253:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc254:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc255:                STORE_VAR        .Lstr_61 # store -> pop_list
.Lpc256:                RETURN_VARIANT   2, 0, 256 # SM_NRETURN
.Lpc257:                LABEL
# ============================================================================
# stmt 54  (line 69):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc258:                STNO
.Lpc259:                PUSH_VAR         .Lstr_63 # var=epsilon
.Lpc260:                PAT_DEREF
.Lpc261:                PAT_CAPTURE_FN   0, .Lstr_61 # fname=pop_list namelist=(NULL)
.Lpc262:                PAT_BOXVAL
.Lpc263:                STORE_VAR        .Lstr_62 # store -> Pop_list
.Lpc264:                RETURN
.Lpc265:                LABEL
# ============================================================================
# stmt 55  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc266:                STNO
# ============================================================================
# stmt 56  (line 56):  push_list_end
# ============================================================================
.Lpc267:                STNO
.Lpc268:                PUSH_STR         .Lstr_65, 0 # str="pop_final(v)"
.Lpc269:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc270:                VOID_POP
# ============================================================================
# stmt 57  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc271:                STNO
.Lpc272:                PUSH_STR         .Lstr_66, 0 # str="Pop_final(vs)"
.Lpc273:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc274:                VOID_POP
.Lpc275:                JUMP             .Lpc296
.Lpc276:                LABEL
# ============================================================================
# stmt 58  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc277:                STNO
.Lpc278:                PUSH_VAR         .Lstr_20 # var=v
.Lpc279:                CALL_FN          .Lstr_34, 1 # fname="stk_pop_final"
.Lpc280:                STORE_VAR        .Lstr_22 # store -> dummy
# ============================================================================
# stmt 59  (line 59):                 DEFINE('Push_item(vs)')                      :(push_item_end)
# ============================================================================
.Lpc281:                STNO
.Lpc282:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc283:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc284:                STORE_VAR        .Lstr_67 # store -> pop_final
.Lpc285:                RETURN_VARIANT   2, 0, 285 # SM_NRETURN
.Lpc286:                LABEL
# ============================================================================
# stmt 60  (line 76):  Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
# ============================================================================
.Lpc287:                STNO
.Lpc288:                PUSH_STR         .Lstr_69, 0 # str="epsilon . *pop_final("
.Lpc289:                PUSH_VAR         .Lstr_43 # var=vs
.Lpc290:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc291:                CONCAT
.Lpc292:                CONCAT
.Lpc293:                CALL_FN          .Lstr_45, 1 # fname="EVAL"
.Lpc294:                STORE_VAR        .Lstr_68 # store -> Pop_final
.Lpc295:                RETURN
.Lpc296:                LABEL
# ============================================================================
# stmt 61  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc297:                STNO
# ============================================================================
# stmt 62  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
.Lpc298:                STNO
.Lpc299:                PUSH_STR         .Lstr_71, 0 # str=" "
.Lpc300:                PUSH_VAR         .Lstr_0 # var=nl
.Lpc301:                CONCAT
.Lpc302:                PAT_SPAN
.Lpc303:                PAT_BOXVAL
.Lpc304:                STORE_VAR        .Lstr_72 # store -> delim
# ============================================================================
# stmt 63  (line 63):  push_item_end
# ============================================================================
.Lpc305:                STNO
.Lpc306:                PUSH_STR         .Lstr_73, 0 # str="( )"
.Lpc307:                PUSH_VAR         .Lstr_0 # var=nl
.Lpc308:                CONCAT
.Lpc309:                PAT_NOTANY
.Lpc310:                PAT_BOXVAL
.Lpc311:                PUSH_STR         .Lstr_73, 0 # str="( )"
.Lpc312:                PUSH_VAR         .Lstr_0 # var=nl
.Lpc313:                CONCAT
.Lpc314:                PAT_BREAK
.Lpc315:                PAT_BOXVAL
.Lpc316:                CONCAT
.Lpc317:                STORE_VAR        .Lstr_74 # store -> word
# ============================================================================
# stmt 64  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc318:                STNO
.Lpc319:                PUSH_STR         .Lstr_75, 0 # str="("
.Lpc320:                PUSH_VAR         .Lstr_74 # var=word
.Lpc321:                PAT_DEREF
.Lpc322:                PAT_CAPTURE      0, .Lstr_76 # var=tag kind=0
.Lpc323:                PAT_BOXVAL
.Lpc324:                PUSH_STR         .Lstr_76, 0 # str="tag"
.Lpc325:                CALL_FN          .Lstr_50, 1 # fname="Push_list"
.Lpc326:                PAT_REFNAME      .Lstr_72 # var="delim"
.Lpc327:                PAT_REFNAME      .Lstr_77 # var="group"
.Lpc328:                PUSH_VAR         .Lstr_74 # var=word
.Lpc329:                PAT_DEREF
.Lpc330:                PAT_CAPTURE      0, .Lstr_78 # var=wrd kind=0
.Lpc331:                PUSH_STR         .Lstr_78, 0 # str="wrd"
.Lpc332:                CALL_FN          .Lstr_56, 1 # fname="Push_item"
.Lpc333:                PAT_DEREF
.Lpc334:                PAT_CAT
.Lpc335:                PAT_ALT
.Lpc336:                PAT_CAT
.Lpc337:                PAT_ARBNO
.Lpc338:                PAT_BOXVAL
.Lpc339:                CALL_FN          .Lstr_62, 0 # fname="Pop_list"
.Lpc340:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc341:                CONCAT
.Lpc342:                CONCAT
.Lpc343:                CONCAT
.Lpc344:                CONCAT
.Lpc345:                CONCAT
.Lpc346:                STORE_VAR        .Lstr_77 # store -> group
# ============================================================================
# stmt 65  (line 65):                 DEFINE('pop_list()')
# ============================================================================
.Lpc347:                STNO
.Lpc348:                PUSH_INT         0
.Lpc349:                PAT_POS
.Lpc350:                PAT_BOXVAL
.Lpc351:                PUSH_STR         .Lstr_79, 0 # str="'bank'"
.Lpc352:                CALL_FN          .Lstr_41, 1 # fname="Init_list"
.Lpc353:                PUSH_STR         .Lstr_80, 0 # str="'BANK'"
.Lpc354:                CALL_FN          .Lstr_50, 1 # fname="Push_list"
.Lpc355:                PUSH_STR         .Lstr_81, 0 # str="'ROOT'"
.Lpc356:                CALL_FN          .Lstr_50, 1 # fname="Push_list"
.Lpc357:                PAT_DEREF
.Lpc358:                PAT_REFNAME      .Lstr_77 # var="group"
.Lpc359:                PAT_ARBNO
.Lpc360:                PAT_REFNAME      .Lstr_72 # var="delim"
.Lpc361:                CALL_FN          .Lstr_62, 0 # fname="Pop_list"
.Lpc362:                PAT_DEREF
.Lpc363:                PAT_CAT
.Lpc364:                PAT_CAT
.Lpc365:                PAT_CAT
.Lpc366:                PAT_ARBNO
.Lpc367:                PAT_BOXVAL
.Lpc368:                PUSH_STR         .Lstr_79, 0 # str="'bank'"
.Lpc369:                CALL_FN          .Lstr_68, 1 # fname="Pop_final"
.Lpc370:                PUSH_INT         0
.Lpc371:                PAT_RPOS
.Lpc372:                PAT_BOXVAL
.Lpc373:                CONCAT
.Lpc374:                CONCAT
.Lpc375:                CONCAT
.Lpc376:                CONCAT
.Lpc377:                CONCAT
.Lpc378:                STORE_VAR        .Lstr_82 # store -> treebank
# ============================================================================
# stmt 66  (line 66):                 DEFINE('Pop_list()')                         :(pop_list_end)
# ============================================================================
.Lpc379:                STNO
.Lpc380:                PUSH_STR         .Lstr_83, 0 # str="node_repr(node)r,c,sep"
.Lpc381:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc382:                VOID_POP
.Lpc383:                JUMP             .Lpc443
.Lpc384:                LABEL
# ============================================================================
# stmt 67  (line 108):  node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
# ============================================================================
.Lpc385:                STNO
.Lpc386:                PUSH_VAR         .Lstr_85 # var=node
.Lpc387:                CALL_FN          .Lstr_86, 1 # fname="DATATYPE"
.Lpc388:                PUSH_VAR         .Lstr_87 # var=LCASE
.Lpc389:                PUSH_VAR         .Lstr_88 # var=UCASE
.Lpc390:                CALL_FN          .Lstr_89, 3 # fname="REPLACE"
.Lpc391:                PUSH_STR         .Lstr_90, 0 # str="STRING"
.Lpc392:                CALL_FN          .Lstr_91, 2 # fname="IDENT"
.Lpc393:                VOID_POP
.Lpc394:                JUMP_F           .Lpc403
# ============================================================================
# stmt 68  (line 68):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc395:                STNO
.Lpc396:                PUSH_STR         .Lstr_92, 0 # str="'"
.Lpc397:                PUSH_VAR         .Lstr_85 # var=node
.Lpc398:                PUSH_STR         .Lstr_92, 0 # str="'"
.Lpc399:                CONCAT
.Lpc400:                CONCAT
.Lpc401:                STORE_VAR        .Lstr_84 # store -> node_repr
.Lpc402:                RETURN
.Lpc403:                LABEL
# ============================================================================
# stmt 69  (line 110):  nr_list        r              =  '('
# ============================================================================
.Lpc404:                STNO
.Lpc405:                PUSH_STR         .Lstr_75, 0 # str="("
.Lpc406:                STORE_VAR        .Lstr_94 # store -> r
# ============================================================================
# stmt 70  (line 70):  pop_list_end
# ============================================================================
.Lpc407:                STNO
.Lpc408:                PUSH_STR         .Lstr_7, 0 # str=""
.Lpc409:                STORE_VAR        .Lstr_95 # store -> sep
# ============================================================================
# stmt 71  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc410:                STNO
.Lpc411:                PUSH_VAR         .Lstr_85 # var=node
.Lpc412:                STORE_VAR        .Lstr_96 # store -> c
.Lpc413:                LABEL
# ============================================================================
# stmt 72  (line 113):  nr_lp          DIFFER(c)                                    :F(nr_done)
# ============================================================================
.Lpc414:                STNO
.Lpc415:                PUSH_VAR         .Lstr_96 # var=c
.Lpc416:                CALL_FN          .Lstr_12, 1 # fname="DIFFER"
.Lpc417:                VOID_POP
.Lpc418:                JUMP_F           .Lpc436
# ============================================================================
# stmt 73  (line 73):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
# ============================================================================
.Lpc419:                STNO
.Lpc420:                PUSH_VAR         .Lstr_94 # var=r
.Lpc421:                PUSH_VAR         .Lstr_95 # var=sep
.Lpc422:                PUSH_VAR         .Lstr_96 # var=c
.Lpc423:                CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc424:                CALL_FN          .Lstr_84, 1 # fname="node_repr"
.Lpc425:                CONCAT
.Lpc426:                CONCAT
.Lpc427:                STORE_VAR        .Lstr_94 # store -> r
# ============================================================================
# stmt 74  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc428:                STNO
.Lpc429:                PUSH_STR         .Lstr_98, 0 # str=", "
.Lpc430:                STORE_VAR        .Lstr_95 # store -> sep
# ============================================================================
# stmt 75  (line 75):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc431:                STNO
.Lpc432:                PUSH_VAR         .Lstr_96 # var=c
.Lpc433:                CALL_FN          .Lstr_15, 1 # fname="tail"
.Lpc434:                STORE_VAR        .Lstr_96 # store -> c
.Lpc435:                JUMP             .Lpc413
.Lpc436:                LABEL
# ============================================================================
# stmt 76  (line 117):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc437:                STNO
.Lpc438:                PUSH_VAR         .Lstr_94 # var=r
.Lpc439:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc440:                CONCAT
.Lpc441:                STORE_VAR        .Lstr_84 # store -> node_repr
.Lpc442:                RETURN
.Lpc443:                LABEL
# ============================================================================
# stmt 77  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc444:                STNO
# ============================================================================
# stmt 78  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc445:                STNO
.Lpc446:                PUSH_STR         .Lstr_101, 0 # str="pp_node(node,indent,suffix)r,pad,c,nxt"
.Lpc447:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc448:                VOID_POP
.Lpc449:                JUMP             .Lpc538
.Lpc450:                LABEL
# ============================================================================
# stmt 79  (line 121):  pp_node        r              =  node_repr(node)
# ============================================================================
.Lpc451:                STNO
.Lpc452:                PUSH_VAR         .Lstr_85 # var=node
.Lpc453:                CALL_FN          .Lstr_84, 1 # fname="node_repr"
.Lpc454:                STORE_VAR        .Lstr_94 # store -> r
# ============================================================================
# stmt 80  (line 80):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
# ============================================================================
.Lpc455:                STNO
.Lpc456:                PUSH_STR         .Lstr_71, 0 # str=" "
.Lpc457:                PUSH_VAR         .Lstr_103 # var=indent
.Lpc458:                CALL_FN          .Lstr_104, 2 # fname="DUPL"
.Lpc459:                STORE_VAR        .Lstr_105 # store -> pad
# ============================================================================
# stmt 81  (line 81):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc460:                STNO
.Lpc461:                PUSH_INT         80
.Lpc462:                PUSH_VAR         .Lstr_103 # var=indent
.Lpc463:                PUSH_VAR         .Lstr_94 # var=r
.Lpc464:                CALL_FN          .Lstr_106, 1 # fname="SIZE"
.Lpc465:                ADD_NUM
.Lpc466:                CALL_FN          .Lstr_107, 2 # fname="GT"
.Lpc467:                VOID_POP
.Lpc468:                JUMP_F           .Lpc477
# ============================================================================
# stmt 82  (line 82):                 group          =
# ============================================================================
.Lpc469:                STNO
.Lpc470:                PUSH_VAR         .Lstr_105 # var=pad
.Lpc471:                PUSH_VAR         .Lstr_94 # var=r
.Lpc472:                PUSH_VAR         .Lstr_108 # var=suffix
.Lpc473:                CONCAT
.Lpc474:                CONCAT
.Lpc475:                STORE_VAR        .Lstr_109 # store -> OUTPUT
.Lpc476:                RETURN
.Lpc477:                LABEL
# ============================================================================
# stmt 83  (line 125):  pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
# ============================================================================
.Lpc478:                STNO
.Lpc479:                PUSH_VAR         .Lstr_105 # var=pad
.Lpc480:                PUSH_STR         .Lstr_111, 0 # str="( "
.Lpc481:                PUSH_STR         .Lstr_92, 0 # str="'"
.Lpc482:                PUSH_VAR         .Lstr_85 # var=node
.Lpc483:                CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc484:                PUSH_STR         .Lstr_112, 0 # str="',"
.Lpc485:                CONCAT
.Lpc486:                CONCAT
.Lpc487:                CONCAT
.Lpc488:                CONCAT
.Lpc489:                STORE_VAR        .Lstr_109 # store -> OUTPUT
# ============================================================================
# stmt 84  (line 84):  +              (word . tag) Push_list('tag')
# ============================================================================
.Lpc490:                STNO
.Lpc491:                PUSH_VAR         .Lstr_85 # var=node
.Lpc492:                CALL_FN          .Lstr_15, 1 # fname="tail"
.Lpc493:                STORE_VAR        .Lstr_96 # store -> c
.Lpc494:                LABEL
# ============================================================================
# stmt 85  (line 127):  pp_wch         DIFFER(c)                                    :F(pp_wdone)
# ============================================================================
.Lpc495:                STNO
.Lpc496:                PUSH_VAR         .Lstr_96 # var=c
.Lpc497:                CALL_FN          .Lstr_12, 1 # fname="DIFFER"
.Lpc498:                VOID_POP
.Lpc499:                JUMP_F           .Lpc535
# ============================================================================
# stmt 86  (line 86):  +                  *delim
# ============================================================================
.Lpc500:                STNO
.Lpc501:                PUSH_VAR         .Lstr_96 # var=c
.Lpc502:                CALL_FN          .Lstr_15, 1 # fname="tail"
.Lpc503:                STORE_VAR        .Lstr_114 # store -> nxt
# ============================================================================
# stmt 87  (line 87):  +                  ( *group
# ============================================================================
.Lpc504:                STNO
.Lpc505:                PUSH_VAR         .Lstr_114 # var=nxt
.Lpc506:                CALL_FN          .Lstr_12, 1 # fname="DIFFER"
.Lpc507:                VOID_POP
.Lpc508:                JUMP_F           .Lpc522
# ============================================================================
# stmt 88  (line 88):  +                  | (word . wrd) Push_item('wrd')
# ============================================================================
.Lpc509:                STNO
.Lpc510:                PUSH_VAR         .Lstr_96 # var=c
.Lpc511:                CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc512:                PUSH_VAR         .Lstr_103 # var=indent
.Lpc513:                PUSH_INT         2
.Lpc514:                ADD_NUM
.Lpc515:                PUSH_STR         .Lstr_115, 0 # str=","
.Lpc516:                CALL_FN          .Lstr_102, 3 # fname="pp_node"
.Lpc517:                VOID_POP
# ============================================================================
# stmt 89  (line 89):  +                  )
# ============================================================================
.Lpc518:                STNO
.Lpc519:                PUSH_VAR         .Lstr_114 # var=nxt
.Lpc520:                STORE_VAR        .Lstr_96 # store -> c
.Lpc521:                JUMP             .Lpc494
.Lpc522:                LABEL
# ============================================================================
# stmt 90  (line 132):  pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
# ============================================================================
.Lpc523:                STNO
.Lpc524:                PUSH_VAR         .Lstr_96 # var=c
.Lpc525:                CALL_FN          .Lstr_13, 1 # fname="head"
.Lpc526:                PUSH_VAR         .Lstr_103 # var=indent
.Lpc527:                PUSH_INT         2
.Lpc528:                ADD_NUM
.Lpc529:                PUSH_STR         .Lstr_44, 0 # str=")"
.Lpc530:                PUSH_VAR         .Lstr_108 # var=suffix
.Lpc531:                CONCAT
.Lpc532:                CALL_FN          .Lstr_102, 3 # fname="pp_node"
.Lpc533:                VOID_POP
.Lpc534:                RETURN
.Lpc535:                LABEL
# ============================================================================
# stmt 91  (line 133):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc536:                STNO
.Lpc537:                RETURN
.Lpc538:                LABEL
# ============================================================================
# stmt 92  (line 135):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc539:                STNO
# ============================================================================
# stmt 93  (line 93):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc540:                STNO
.Lpc541:                PUSH_STR         .Lstr_119, 0 # str="pp_bank()cur"
.Lpc542:                CALL_FN          .Lstr_5, 1 # fname="DEFINE"
.Lpc543:                VOID_POP
.Lpc544:                JUMP             .Lpc557
.Lpc545:                LABEL
# ============================================================================
# stmt 94  (line 137):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
.Lpc546:                STNO
.Lpc547:                PUSH_VAR         .Lstr_121 # var=bank
.Lpc548:                PUSH_INT         0
.Lpc549:                PUSH_STR         .Lstr_7, 0 # str=""
.Lpc550:                CALL_FN          .Lstr_102, 3 # fname="pp_node"
.Lpc551:                VOID_POP
# ============================================================================
# stmt 95  (line 95):  +              POS(0)
# ============================================================================
.Lpc552:                STNO
.Lpc553:                PUSH_STR         .Lstr_22, 0 # str="dummy"
.Lpc554:                CALL_FN          .Lstr_23, 1 # fname="NAME_PUSH"
.Lpc555:                STORE_VAR        .Lstr_120 # store -> pp_bank
.Lpc556:                RETURN
.Lpc557:                LABEL
# ============================================================================
# stmt 96  (line 140):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc558:                STNO
.Lpc559:                LABEL
# ============================================================================
# stmt 97  (line 141):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
.Lpc560:                STNO
.Lpc561:                PUSH_VAR         .Lstr_124 # var=INPUT
.Lpc562:                STORE_VAR        .Lstr_125 # store -> line
.Lpc563:                JUMP_F           .Lpc572
# ============================================================================
# stmt 98  (line 98):  +              ARBNO(
# ============================================================================
.Lpc564:                STNO
.Lpc565:                PUSH_VAR         .Lstr_126 # var=src
.Lpc566:                PUSH_VAR         .Lstr_125 # var=line
.Lpc567:                PUSH_VAR         .Lstr_0 # var=nl
.Lpc568:                CONCAT
.Lpc569:                CONCAT
.Lpc570:                STORE_VAR        .Lstr_126 # store -> src
.Lpc571:                JUMP             .Lpc559
.Lpc572:                LABEL
# ============================================================================
# stmt 99  (line 143):  slurp_done     src            treebank                      :F(main_fail)
# ============================================================================
.Lpc573:                STNO
.Lpc574:                PUSH_VAR         .Lstr_82 # var=treebank
.Lpc575:                PAT_DEREF
.Lpc576:                PUSH_VAR         .Lstr_126 # var=src
.Lpc577:                PUSH_INT         0
.Lpc578:                EXEC_STMT_VARIANT 0, .Lstr_126 # subj=src
.Lpc579:                JUMP_F           .Lpc584
# ============================================================================
# stmt 100  (line 100):  +                  ARBNO(*group)
# ============================================================================
.Lpc580:                STNO
.Lpc581:                CALL_FN          .Lstr_120, 0 # fname="pp_bank"
.Lpc582:                STORE_VAR        .Lstr_22 # store -> dummy
.Lpc583:                JUMP             .Lpc588
.Lpc584:                LABEL
# ============================================================================
# stmt 101  (line 145):  main_fail      OUTPUT         =  'Pattern match failed'
# ============================================================================
.Lpc585:                STNO
.Lpc586:                PUSH_STR         .Lstr_129, 0 # str="Pattern match failed"
.Lpc587:                STORE_VAR        .Lstr_109 # store -> OUTPUT
.Lpc588:                LABEL
# ============================================================================
# stmt 102  (line 102):  +                  Pop_list()
# ============================================================================
.Lpc589:                STNO
.Lpc590:                HALT
# -- epilogue -------------------------------------------
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
