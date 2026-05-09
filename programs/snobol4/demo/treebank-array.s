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
                        .string          "frame_id"
.Lstr_5:
                        .string          "TABLE"
.Lstr_6:
                        .string          "stk_tag"
.Lstr_7:
                        .string          "stk_n"
.Lstr_8:
                        .string          "stk_c"
.Lstr_9:
                        .string          "stk_push_frame(v)"
.Lstr_10:
                        .string          "DEFINE"
.Lstr_11:
                        .string          "stk_push_frame"
.Lstr_12:
                        .string          "v"
.Lstr_13:
                        .string          "IDX_SET"
.Lstr_14:
                        .string          "stk"
.Lstr_15:
                        .string          "list"
.Lstr_16:
                        .string          "dummy"
.Lstr_17:
                        .string          "NAME_PUSH"
.Lstr_18:
                        .string          "stk_push_frame_end"
.Lstr_19:
                        .string          "stk_push_item(v,cur)"
.Lstr_20:
                        .string          "stk_push_item"
.Lstr_21:
                        .string          "head"
.Lstr_22:
                        .string          "cur"
.Lstr_23:
                        .string          "IDX"
.Lstr_24:
                        .string          "stk_push_item_end"
.Lstr_25:
                        .string          "stk_pop_into_parent(child,par,n)"
.Lstr_26:
                        .string          "stk_pop_into_parent"
.Lstr_27:
                        .string          "child"
.Lstr_28:
                        .string          "tail"
.Lstr_29:
                        .string          "par"
.Lstr_30:
                        .string          "n"
.Lstr_31:
                        .string          "stk_pop_into_parent_end"
.Lstr_32:
                        .string          "stk_pop_final(var,child)"
.Lstr_33:
                        .string          "stk_pop_final"
.Lstr_34:
                        .string          "var"
.Lstr_35:
                        .string          "ASGN_INDIR"
.Lstr_36:
                        .string          "stk_pop_final_end"
.Lstr_37:
                        .string          "init_list(v)"
.Lstr_38:
                        .string          "Init_list(vs)"
.Lstr_39:
                        .string          "init_list"
.Lstr_40:
                        .string          ""
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
                        .string          "node_repr(f)r,sep,i,n,tag"
.Lstr_72:
                        .string          "node_repr"
.Lstr_73:
                        .string          "f"
.Lstr_74:
                        .string          "DATATYPE"
.Lstr_75:
                        .string          "LCASE"
.Lstr_76:
                        .string          "UCASE"
.Lstr_77:
                        .string          "REPLACE"
.Lstr_78:
                        .string          "STRING"
.Lstr_79:
                        .string          "IDENT"
.Lstr_80:
                        .string          "'"
.Lstr_81:
                        .string          "nr_frame"
.Lstr_82:
                        .string          "tag"
.Lstr_83:
                        .string          "('"
.Lstr_84:
                        .string          "r"
.Lstr_85:
                        .string          "i"
.Lstr_86:
                        .string          "nr_lp"
.Lstr_87:
                        .string          "LT"
.Lstr_88:
                        .string          ", "
.Lstr_89:
                        .string          "nr_done"
.Lstr_90:
                        .string          "node_repr_end"
.Lstr_91:
                        .string          "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.Lstr_92:
                        .string          "pp_node"
.Lstr_93:
                        .string          " "
.Lstr_94:
                        .string          "indent"
.Lstr_95:
                        .string          "DUPL"
.Lstr_96:
                        .string          "suffix"
.Lstr_97:
                        .string          "OUTPUT"
.Lstr_98:
                        .string          "pp_frame"
.Lstr_99:
                        .string          "pad"
.Lstr_100:
                        .string          "SIZE"
.Lstr_101:
                        .string          "GT"
.Lstr_102:
                        .string          "pp_wrap"
.Lstr_103:
                        .string          "( "
.Lstr_104:
                        .string          "',"
.Lstr_105:
                        .string          "pp_wch"
.Lstr_106:
                        .string          "nxt"
.Lstr_107:
                        .string          ","
.Lstr_108:
                        .string          "pp_wlast"
.Lstr_109:
                        .string          "pp_wdone"
.Lstr_110:
                        .string          "pp_node_end"
.Lstr_111:
                        .string          "pp_bank()"
.Lstr_112:
                        .string          "pp_bank"
.Lstr_113:
                        .string          "bank"
.Lstr_114:
                        .string          "pp_bank_end"
.Lstr_115:
                        .string          "delim"
.Lstr_116:
                        .string          "( )"
.Lstr_117:
                        .string          "word"
.Lstr_118:
                        .string          "("
.Lstr_119:
                        .string          "group"
.Lstr_120:
                        .string          "wrd"
.Lstr_121:
                        .string          "BAL"
.Lstr_122:
                        .string          "item"
.Lstr_123:
                        .string          "spat"
.Lstr_124:
                        .string          "slurp"
.Lstr_125:
                        .string          "INPUT"
.Lstr_126:
                        .string          "line"
.Lstr_127:
                        .string          "src"
.Lstr_128:
                        .string          "slurp_done"
.Lstr_129:
                        .string          "BANK"
.Lstr_130:
                        .string          "loop"
.Lstr_131:
                        .string          "ROOT"
.Lstr_132:
                        .string          "parse_fail"
.Lstr_133:
                        .string          "Parse failed on: "
.Lstr_134:
                        .string          "all_done"
.Lstr_135:
                        .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:
                        .quad            .Lstr_11 # expression: stk_push_frame -> .Lpc32
                        .quad            .Lpc32
                        .quad            .Lstr_18 # expression: stk_push_frame_end -> .Lpc63
                        .quad            .Lpc63
                        .quad            .Lstr_20 # expression: stk_push_item -> .Lpc70
                        .quad            .Lpc70
                        .quad            .Lstr_24 # expression: stk_push_item_end -> .Lpc98
                        .quad            .Lpc98
                        .quad            .Lstr_26 # expression: stk_pop_into_parent -> .Lpc105
                        .quad            .Lpc105
                        .quad            .Lstr_31 # expression: stk_pop_into_parent_end -> .Lpc145
                        .quad            .Lpc145
                        .quad            .Lstr_33 # expression: stk_pop_final -> .Lpc152
                        .quad            .Lpc152
                        .quad            .Lstr_36 # expression: stk_pop_final_end -> .Lpc170
                        .quad            .Lpc170
                        .quad            .Lstr_39 # expression: init_list -> .Lpc181
                        .quad            .Lpc181
                        .quad            .Lstr_41 # expression: Init_list -> .Lpc206
                        .quad            .Lpc206
                        .quad            .Lstr_46 # expression: init_list_end -> .Lpc216
                        .quad            .Lpc216
                        .quad            .Lstr_49 # expression: push_list -> .Lpc227
                        .quad            .Lpc227
                        .quad            .Lstr_50 # expression: Push_list -> .Lpc237
                        .quad            .Lpc237
                        .quad            .Lstr_52 # expression: push_list_end -> .Lpc247
                        .quad            .Lpc247
                        .quad            .Lstr_55 # expression: push_item -> .Lpc258
                        .quad            .Lpc258
                        .quad            .Lstr_56 # expression: Push_item -> .Lpc268
                        .quad            .Lpc268
                        .quad            .Lstr_58 # expression: push_item_end -> .Lpc278
                        .quad            .Lpc278
                        .quad            .Lstr_61 # expression: pop_list -> .Lpc289
                        .quad            .Lpc289
                        .quad            .Lstr_62 # expression: Pop_list -> .Lpc298
                        .quad            .Lpc298
                        .quad            .Lstr_64 # expression: pop_list_end -> .Lpc306
                        .quad            .Lpc306
                        .quad            .Lstr_67 # expression: pop_final -> .Lpc317
                        .quad            .Lpc317
                        .quad            .Lstr_68 # expression: Pop_final -> .Lpc327
                        .quad            .Lpc327
                        .quad            .Lstr_70 # expression: pop_final_end -> .Lpc337
                        .quad            .Lpc337
                        .quad            .Lstr_72 # expression: node_repr -> .Lpc344
                        .quad            .Lpc344
                        .quad            .Lstr_81 # expression: nr_frame -> .Lpc363
                        .quad            .Lpc363
                        .quad            .Lstr_86 # expression: nr_lp -> .Lpc384
                        .quad            .Lpc384
                        .quad            .Lstr_89 # expression: nr_done -> .Lpc411
                        .quad            .Lpc411
                        .quad            .Lstr_90 # expression: node_repr_end -> .Lpc418
                        .quad            .Lpc418
                        .quad            .Lstr_92 # expression: pp_node -> .Lpc425
                        .quad            .Lpc425
                        .quad            .Lstr_98 # expression: pp_frame -> .Lpc450
                        .quad            .Lpc450
                        .quad            .Lstr_102 # expression: pp_wrap -> .Lpc477
                        .quad            .Lpc477
                        .quad            .Lstr_105 # expression: pp_wch -> .Lpc502
                        .quad            .Lpc502
                        .quad            .Lstr_108 # expression: pp_wlast -> .Lpc537
                        .quad            .Lpc537
                        .quad            .Lstr_109 # expression: pp_wdone -> .Lpc553
                        .quad            .Lpc553
                        .quad            .Lstr_110 # expression: pp_node_end -> .Lpc556
                        .quad            .Lpc556
                        .quad            .Lstr_112 # expression: pp_bank -> .Lpc563
                        .quad            .Lpc563
                        .quad            .Lstr_114 # expression: pp_bank_end -> .Lpc575
                        .quad            .Lpc575
                        .quad            .Lstr_124 # expression: slurp -> .Lpc636
                        .quad            .Lpc636
                        .quad            .Lstr_128 # expression: slurp_done -> .Lpc649
                        .quad            .Lpc649
                        .quad            .Lstr_130 # expression: loop -> .Lpc659
                        .quad            .Lpc659
                        .quad            .Lstr_132 # expression: parse_fail -> .Lpc682
                        .quad            .Lpc682
                        .quad            .Lstr_134 # expression: all_done -> .Lpc692
                        .quad            .Lpc692
                        .quad            .Lstr_135 # expression: END -> .Lpc701
                        .quad            .Lpc701
                        .quad            0 # sentinel
                        .quad            0
                        .text
# ======================================================================================================================
# EM-7c: invariant pattern blobs (baked from sm_phase2_to_patnd → bb_build_flat_text)
# Each block exposes _pat_inv_<id>_α / _β / _γ / _ω.
# rt_match_blob(blob_α, ...) drives Phase-3 against these blobs.
# ======================================================================================================================
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
# 703 SM instructions. Links against libscrip_rt.so.
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
# source-file: treebank-array.sno  (156 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
# ======================================================================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc0:                  STNO
.Lpc1:                  # PUSH_INT       baked  _pat_inv_0 pc=1..6
.Lpc2:                  # PAT_POS        baked  _pat_inv_0 pc=1..6
.Lpc3:                  # PUSH_INT       baked  _pat_inv_0 pc=1..6
.Lpc4:                  # PAT_LEN        baked  _pat_inv_0 pc=1..6
.Lpc5:                  # PAT_CAPTURE    baked  _pat_inv_0 pc=1..6
.Lpc6:                  # PAT_CAT        baked  _pat_inv_0 pc=1..6
.Lpc7:                  PUSH_VAR         .Lstr_1 # ALPHABET
.Lpc8:                  PUSH_INT         0
.Lpc9:                  lea              rdi, [rip + _pat_inv_0_α] # blob entry α  (Phase-2 pc=1..6)
                        lea              rsi, [rip + .Lstr_1] # subj_name=ALPHABET
                        mov              edx, 0 # has_repl=0
                        call             rt_match_blob@PLT # EM-7c: Phase-3+5 against baked invariant blob
# ======================================================================================================================
# stmt 2  (line 2):  * treebank-array.sno — Penn Treebank s-expression parser (array/append style)
# ======================================================================================================================
.Lpc10:                 STNO
.Lpc11:                 PUSH_STR         .Lstr_2, 0 # "list(head,tail)"
.Lpc12:                 CALL_FN          .Lstr_3, 1 # DATA
.Lpc13:                 VOID_POP
# ======================================================================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ======================================================================================================================
.Lpc14:                 STNO
.Lpc15:                 PUSH_INT         0
.Lpc16:                 STORE_VAR        .Lstr_4 # frame_id
# ======================================================================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 200k treebank-array.sno < VBGinTASA.dat
# ======================================================================================================================
.Lpc17:                 STNO
.Lpc18:                 CALL_FN          .Lstr_5, 0 # TABLE
.Lpc19:                 STORE_VAR        .Lstr_6 # stk_tag
# ======================================================================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc20:                 STNO
.Lpc21:                 CALL_FN          .Lstr_5, 0 # TABLE
.Lpc22:                 STORE_VAR        .Lstr_7 # stk_n
# ======================================================================================================================
# stmt 6  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
# ======================================================================================================================
.Lpc23:                 STNO
.Lpc24:                 CALL_FN          .Lstr_5, 0 # TABLE
.Lpc25:                 STORE_VAR        .Lstr_8 # stk_c
# ======================================================================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc26:                 STNO
.Lpc27:                 PUSH_STR         .Lstr_9, 0 # "stk_push_frame(v)"
.Lpc28:                 CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc29:                 VOID_POP
.Lpc30:                 JUMP             .Lpc62
.Lpc31:                 LABEL
# ======================================================================================================================
# stmt 8  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ======================================================================================================================
.Lpc32:                 STNO
.Lpc33:                 PUSH_VAR         .Lstr_4 # frame_id
.Lpc34:                 PUSH_INT         1
.Lpc35:                 ADD_NUM
.Lpc36:                 STORE_VAR        .Lstr_4 # frame_id
# ======================================================================================================================
# stmt 9  (line 9):                 frame_id       =  0
# ======================================================================================================================
.Lpc37:                 STNO
.Lpc38:                 PUSH_VAR         .Lstr_12 # v
.Lpc39:                 PUSH_VAR         .Lstr_6 # stk_tag
.Lpc40:                 PUSH_VAR         .Lstr_4 # frame_id
.Lpc41:                 CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 10  (line 10):                 stk_tag        =  TABLE()
# ======================================================================================================================
.Lpc42:                 STNO
.Lpc43:                 PUSH_INT         0
.Lpc44:                 PUSH_VAR         .Lstr_7 # stk_n
.Lpc45:                 PUSH_VAR         .Lstr_4 # frame_id
.Lpc46:                 CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 11  (line 11):                 stk_n          =  TABLE()
# ======================================================================================================================
.Lpc47:                 STNO
.Lpc48:                 CALL_FN          .Lstr_5, 0 # TABLE
.Lpc49:                 PUSH_VAR         .Lstr_8 # stk_c
.Lpc50:                 PUSH_VAR         .Lstr_4 # frame_id
.Lpc51:                 CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 12  (line 12):                 stk_c          =  TABLE()
# ======================================================================================================================
.Lpc52:                 STNO
.Lpc53:                 PUSH_VAR         .Lstr_4 # frame_id
.Lpc54:                 PUSH_VAR         .Lstr_14 # stk
.Lpc55:                 CALL_FN          .Lstr_15, 2 # list
.Lpc56:                 STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 13  (line 13):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc57:                 STNO
.Lpc58:                 PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc59:                 CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc60:                 STORE_VAR        .Lstr_11 # stk_push_frame
.Lpc61:                 RETURN
.Lpc62:                 LABEL
# ======================================================================================================================
# stmt 14  (line 22):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc63:                 STNO
# ======================================================================================================================
# stmt 15  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ======================================================================================================================
.Lpc64:                 STNO
.Lpc65:                 PUSH_STR         .Lstr_19, 0 # "stk_push_item(v,cur)"
.Lpc66:                 CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc67:                 VOID_POP
.Lpc68:                 JUMP             .Lpc97
.Lpc69:                 LABEL
# ======================================================================================================================
# stmt 16  (line 24):  stk_push_item  cur                  =  head(stk)
# ======================================================================================================================
.Lpc70:                 STNO
.Lpc71:                 PUSH_VAR         .Lstr_14 # stk
.Lpc72:                 CALL_FN          .Lstr_21, 1 # head
.Lpc73:                 STORE_VAR        .Lstr_22 # cur
# ======================================================================================================================
# stmt 17  (line 17):                 stk_n[frame_id]      =  0
# ======================================================================================================================
.Lpc74:                 STNO
.Lpc75:                 PUSH_VAR         .Lstr_7 # stk_n
.Lpc76:                 PUSH_VAR         .Lstr_22 # cur
.Lpc77:                 CALL_FN          .Lstr_23, 2 # IDX
.Lpc78:                 PUSH_INT         1
.Lpc79:                 ADD_NUM
.Lpc80:                 PUSH_VAR         .Lstr_7 # stk_n
.Lpc81:                 PUSH_VAR         .Lstr_22 # cur
.Lpc82:                 CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 18  (line 18):                 stk_c[frame_id]      =  TABLE()
# ======================================================================================================================
.Lpc83:                 STNO
.Lpc84:                 PUSH_VAR         .Lstr_12 # v
.Lpc85:                 PUSH_VAR         .Lstr_8 # stk_c
.Lpc86:                 PUSH_VAR         .Lstr_22 # cur
.Lpc87:                 CALL_FN          .Lstr_23, 2 # IDX
.Lpc88:                 PUSH_VAR         .Lstr_7 # stk_n
.Lpc89:                 PUSH_VAR         .Lstr_22 # cur
.Lpc90:                 CALL_FN          .Lstr_23, 2 # IDX
.Lpc91:                 CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 19  (line 19):                 stk                  =  list(frame_id, stk)
# ======================================================================================================================
.Lpc92:                 STNO
.Lpc93:                 PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc94:                 CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc95:                 STORE_VAR        .Lstr_20 # stk_push_item
.Lpc96:                 RETURN
.Lpc97:                 LABEL
# ======================================================================================================================
# stmt 20  (line 29):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc98:                 STNO
# ======================================================================================================================
# stmt 21  (line 21):  stk_push_frame_end
# ======================================================================================================================
.Lpc99:                 STNO
.Lpc100:                PUSH_STR         .Lstr_25, 0 # "stk_pop_into_parent(child,par,n)"
.Lpc101:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc102:                VOID_POP
.Lpc103:                JUMP             .Lpc144
.Lpc104:                LABEL
# ======================================================================================================================
# stmt 22  (line 32):                 child                =  head(stk)
# ======================================================================================================================
.Lpc105:                STNO
# ======================================================================================================================
# stmt 23  (line 23):                 DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
# ======================================================================================================================
.Lpc106:                STNO
.Lpc107:                PUSH_VAR         .Lstr_14 # stk
.Lpc108:                CALL_FN          .Lstr_21, 1 # head
.Lpc109:                STORE_VAR        .Lstr_27 # child
# ======================================================================================================================
# stmt 24  (line 24):  stk_push_item  cur                  =  head(stk)
# ======================================================================================================================
.Lpc110:                STNO
.Lpc111:                PUSH_VAR         .Lstr_14 # stk
.Lpc112:                CALL_FN          .Lstr_28, 1 # tail
.Lpc113:                STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 25  (line 25):                 stk_n[cur]           =  stk_n[cur] + 1
# ======================================================================================================================
.Lpc114:                STNO
.Lpc115:                PUSH_VAR         .Lstr_14 # stk
.Lpc116:                CALL_FN          .Lstr_21, 1 # head
.Lpc117:                STORE_VAR        .Lstr_29 # par
# ======================================================================================================================
# stmt 26  (line 26):                 stk_c[cur][stk_n[cur]] =  v
# ======================================================================================================================
.Lpc118:                STNO
.Lpc119:                PUSH_VAR         .Lstr_7 # stk_n
.Lpc120:                PUSH_VAR         .Lstr_29 # par
.Lpc121:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc122:                STORE_VAR        .Lstr_30 # n
# ======================================================================================================================
# stmt 27  (line 27):                 stk_push_item        =  .dummy               :(RETURN)
# ======================================================================================================================
.Lpc123:                STNO
.Lpc124:                PUSH_VAR         .Lstr_30 # n
.Lpc125:                PUSH_INT         1
.Lpc126:                ADD_NUM
.Lpc127:                PUSH_VAR         .Lstr_7 # stk_n
.Lpc128:                PUSH_VAR         .Lstr_29 # par
.Lpc129:                CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 28  (line 28):  stk_push_item_end
# ======================================================================================================================
.Lpc130:                STNO
.Lpc131:                PUSH_VAR         .Lstr_27 # child
.Lpc132:                PUSH_VAR         .Lstr_8 # stk_c
.Lpc133:                PUSH_VAR         .Lstr_29 # par
.Lpc134:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc135:                PUSH_VAR         .Lstr_30 # n
.Lpc136:                PUSH_INT         1
.Lpc137:                ADD_NUM
.Lpc138:                CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 29  (line 29):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc139:                STNO
.Lpc140:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc141:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc142:                STORE_VAR        .Lstr_26 # stk_pop_into_parent
.Lpc143:                RETURN
.Lpc144:                LABEL
# ======================================================================================================================
# stmt 30  (line 40):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc145:                STNO
# ======================================================================================================================
# stmt 31  (line 31):  stk_pop_into_parent
# ======================================================================================================================
.Lpc146:                STNO
.Lpc147:                PUSH_STR         .Lstr_32, 0 # "stk_pop_final(var,child)"
.Lpc148:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc149:                VOID_POP
.Lpc150:                JUMP             .Lpc169
.Lpc151:                LABEL
# ======================================================================================================================
# stmt 32  (line 42):  stk_pop_final  child                =  head(stk)
# ======================================================================================================================
.Lpc152:                STNO
.Lpc153:                PUSH_VAR         .Lstr_14 # stk
.Lpc154:                CALL_FN          .Lstr_21, 1 # head
.Lpc155:                STORE_VAR        .Lstr_27 # child
# ======================================================================================================================
# stmt 33  (line 33):                 stk                  =  tail(stk)
# ======================================================================================================================
.Lpc156:                STNO
.Lpc157:                PUSH_VAR         .Lstr_14 # stk
.Lpc158:                CALL_FN          .Lstr_28, 1 # tail
.Lpc159:                STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 34  (line 34):                 par                  =  head(stk)
# ======================================================================================================================
.Lpc160:                STNO
.Lpc161:                PUSH_VAR         .Lstr_27 # child
.Lpc162:                PUSH_VAR         .Lstr_34 # var
.Lpc163:                CALL_FN          .Lstr_35, 2 # ASGN_INDIR
# ======================================================================================================================
# stmt 35  (line 35):                 n                    =  stk_n[par]
# ======================================================================================================================
.Lpc164:                STNO
.Lpc165:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc166:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc167:                STORE_VAR        .Lstr_33 # stk_pop_final
.Lpc168:                RETURN
.Lpc169:                LABEL
# ======================================================================================================================
# stmt 36  (line 47):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc170:                STNO
# ======================================================================================================================
# stmt 37  (line 37):                 stk_c[par][n + 1]    =  child
# ======================================================================================================================
.Lpc171:                STNO
.Lpc172:                PUSH_STR         .Lstr_37, 0 # "init_list(v)"
.Lpc173:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc174:                VOID_POP
# ======================================================================================================================
# stmt 38  (line 38):                 stk_pop_into_parent  =  .dummy               :(RETURN)
# ======================================================================================================================
.Lpc175:                STNO
.Lpc176:                PUSH_STR         .Lstr_38, 0 # "Init_list(vs)"
.Lpc177:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc178:                VOID_POP
.Lpc179:                JUMP             .Lpc215
.Lpc180:                LABEL
# ======================================================================================================================
# stmt 39  (line 50):  init_list      $v             =
# ======================================================================================================================
.Lpc181:                STNO
.Lpc182:                PUSH_STR         .Lstr_40, 0 # ""
.Lpc183:                PUSH_VAR         .Lstr_12 # v
.Lpc184:                CALL_FN          .Lstr_35, 2 # ASGN_INDIR
# ======================================================================================================================
# stmt 40  (line 40):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc185:                STNO
.Lpc186:                PUSH_STR         .Lstr_40, 0 # ""
.Lpc187:                STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 41  (line 41):                 DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
# ======================================================================================================================
.Lpc188:                STNO
.Lpc189:                PUSH_INT         0
.Lpc190:                STORE_VAR        .Lstr_4 # frame_id
# ======================================================================================================================
# stmt 42  (line 42):  stk_pop_final  child                =  head(stk)
# ======================================================================================================================
.Lpc191:                STNO
.Lpc192:                CALL_FN          .Lstr_5, 0 # TABLE
.Lpc193:                STORE_VAR        .Lstr_6 # stk_tag
# ======================================================================================================================
# stmt 43  (line 43):                 stk                  =  tail(stk)
# ======================================================================================================================
.Lpc194:                STNO
.Lpc195:                CALL_FN          .Lstr_5, 0 # TABLE
.Lpc196:                STORE_VAR        .Lstr_7 # stk_n
# ======================================================================================================================
# stmt 44  (line 44):                 $var                 =  child
# ======================================================================================================================
.Lpc197:                STNO
.Lpc198:                CALL_FN          .Lstr_5, 0 # TABLE
.Lpc199:                STORE_VAR        .Lstr_8 # stk_c
# ======================================================================================================================
# stmt 45  (line 45):                 stk_pop_final        =  .dummy               :(RETURN)
# ======================================================================================================================
.Lpc200:                STNO
.Lpc201:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc202:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc203:                STORE_VAR        .Lstr_39 # init_list
.Lpc204:                RETURN_VARIANT   2, 0, 204 # SM_NRETURN
.Lpc205:                LABEL
# ======================================================================================================================
# stmt 46  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc206:                STNO
.Lpc207:                PUSH_STR         .Lstr_42, 0 # "epsilon . *init_list("
.Lpc208:                PUSH_VAR         .Lstr_43 # vs
.Lpc209:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc210:                CONCAT
.Lpc211:                CONCAT
.Lpc212:                CALL_FN          .Lstr_45, 1 # EVAL
.Lpc213:                STORE_VAR        .Lstr_41 # Init_list
.Lpc214:                RETURN
.Lpc215:                LABEL
# ======================================================================================================================
# stmt 47  (line 59):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc216:                STNO
# ======================================================================================================================
# stmt 48  (line 48):                 DEFINE('init_list(v)')
# ======================================================================================================================
.Lpc217:                STNO
.Lpc218:                PUSH_STR         .Lstr_47, 0 # "push_list(v)"
.Lpc219:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc220:                VOID_POP
# ======================================================================================================================
# stmt 49  (line 49):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ======================================================================================================================
.Lpc221:                STNO
.Lpc222:                PUSH_STR         .Lstr_48, 0 # "Push_list(vs)"
.Lpc223:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc224:                VOID_POP
.Lpc225:                JUMP             .Lpc246
.Lpc226:                LABEL
# ======================================================================================================================
# stmt 50  (line 62):  push_list      dummy          =  stk_push_frame(v)
# ======================================================================================================================
.Lpc227:                STNO
.Lpc228:                PUSH_VAR         .Lstr_12 # v
.Lpc229:                CALL_FN          .Lstr_11, 1 # stk_push_frame
.Lpc230:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 51  (line 51):                 stk            =
# ======================================================================================================================
.Lpc231:                STNO
.Lpc232:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc233:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc234:                STORE_VAR        .Lstr_49 # push_list
.Lpc235:                RETURN_VARIANT   2, 0, 235 # SM_NRETURN
.Lpc236:                LABEL
# ======================================================================================================================
# stmt 52  (line 64):  Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc237:                STNO
.Lpc238:                PUSH_STR         .Lstr_51, 0 # "epsilon . *push_list("
.Lpc239:                PUSH_VAR         .Lstr_43 # vs
.Lpc240:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc241:                CONCAT
.Lpc242:                CONCAT
.Lpc243:                CALL_FN          .Lstr_45, 1 # EVAL
.Lpc244:                STORE_VAR        .Lstr_50 # Push_list
.Lpc245:                RETURN
.Lpc246:                LABEL
# ======================================================================================================================
# stmt 53  (line 66):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc247:                STNO
# ======================================================================================================================
# stmt 54  (line 54):                 stk_n          =  TABLE()
# ======================================================================================================================
.Lpc248:                STNO
.Lpc249:                PUSH_STR         .Lstr_53, 0 # "push_item(v)"
.Lpc250:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc251:                VOID_POP
# ======================================================================================================================
# stmt 55  (line 55):                 stk_c          =  TABLE()
# ======================================================================================================================
.Lpc252:                STNO
.Lpc253:                PUSH_STR         .Lstr_54, 0 # "Push_item(vs)"
.Lpc254:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc255:                VOID_POP
.Lpc256:                JUMP             .Lpc277
.Lpc257:                LABEL
# ======================================================================================================================
# stmt 56  (line 69):  push_item      dummy          =  stk_push_item(v)
# ======================================================================================================================
.Lpc258:                STNO
.Lpc259:                PUSH_VAR         .Lstr_12 # v
.Lpc260:                CALL_FN          .Lstr_20, 1 # stk_push_item
.Lpc261:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 57  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc262:                STNO
.Lpc263:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc264:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc265:                STORE_VAR        .Lstr_55 # push_item
.Lpc266:                RETURN_VARIANT   2, 0, 266 # SM_NRETURN
.Lpc267:                LABEL
# ======================================================================================================================
# stmt 58  (line 71):  Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc268:                STNO
.Lpc269:                PUSH_STR         .Lstr_57, 0 # "epsilon . *push_item("
.Lpc270:                PUSH_VAR         .Lstr_43 # vs
.Lpc271:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc272:                CONCAT
.Lpc273:                CONCAT
.Lpc274:                CALL_FN          .Lstr_45, 1 # EVAL
.Lpc275:                STORE_VAR        .Lstr_56 # Push_item
.Lpc276:                RETURN
.Lpc277:                LABEL
# ======================================================================================================================
# stmt 59  (line 73):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc278:                STNO
# ======================================================================================================================
# stmt 60  (line 60):                 DEFINE('push_list(v)')
# ======================================================================================================================
.Lpc279:                STNO
.Lpc280:                PUSH_STR         .Lstr_59, 0 # "pop_list()"
.Lpc281:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc282:                VOID_POP
# ======================================================================================================================
# stmt 61  (line 61):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ======================================================================================================================
.Lpc283:                STNO
.Lpc284:                PUSH_STR         .Lstr_60, 0 # "Pop_list()"
.Lpc285:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc286:                VOID_POP
.Lpc287:                JUMP             .Lpc305
.Lpc288:                LABEL
# ======================================================================================================================
# stmt 62  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ======================================================================================================================
.Lpc289:                STNO
.Lpc290:                CALL_FN          .Lstr_26, 0 # stk_pop_into_parent
.Lpc291:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 63  (line 63):                 push_list      =  .dummy                     :(NRETURN)
# ======================================================================================================================
.Lpc292:                STNO
.Lpc293:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc294:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc295:                STORE_VAR        .Lstr_61 # pop_list
.Lpc296:                RETURN_VARIANT   2, 0, 296 # SM_NRETURN
.Lpc297:                LABEL
# ======================================================================================================================
# stmt 64  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ======================================================================================================================
.Lpc298:                STNO
.Lpc299:                PUSH_VAR         .Lstr_63 # epsilon
.Lpc300:                PAT_DEREF
.Lpc301:                PAT_CAPTURE_FN   0, .Lstr_61 # pop_list, (NULL)
.Lpc302:                PAT_BOXVAL
.Lpc303:                STORE_VAR        .Lstr_62 # Pop_list
.Lpc304:                RETURN
.Lpc305:                LABEL
# ======================================================================================================================
# stmt 65  (line 80):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc306:                STNO
# ======================================================================================================================
# stmt 66  (line 66):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc307:                STNO
.Lpc308:                PUSH_STR         .Lstr_65, 0 # "pop_final(v)"
.Lpc309:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc310:                VOID_POP
# ======================================================================================================================
# stmt 67  (line 67):                 DEFINE('push_item(v)')
# ======================================================================================================================
.Lpc311:                STNO
.Lpc312:                PUSH_STR         .Lstr_66, 0 # "Pop_final(vs)"
.Lpc313:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc314:                VOID_POP
.Lpc315:                JUMP             .Lpc336
.Lpc316:                LABEL
# ======================================================================================================================
# stmt 68  (line 83):  pop_final      dummy          =  stk_pop_final(v)
# ======================================================================================================================
.Lpc317:                STNO
.Lpc318:                PUSH_VAR         .Lstr_12 # v
.Lpc319:                CALL_FN          .Lstr_33, 1 # stk_pop_final
.Lpc320:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 69  (line 69):  push_item      dummy          =  stk_push_item(v)
# ======================================================================================================================
.Lpc321:                STNO
.Lpc322:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc323:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc324:                STORE_VAR        .Lstr_67 # pop_final
.Lpc325:                RETURN_VARIANT   2, 0, 325 # SM_NRETURN
.Lpc326:                LABEL
# ======================================================================================================================
# stmt 70  (line 85):  Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc327:                STNO
.Lpc328:                PUSH_STR         .Lstr_69, 0 # "epsilon . *pop_final("
.Lpc329:                PUSH_VAR         .Lstr_43 # vs
.Lpc330:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc331:                CONCAT
.Lpc332:                CONCAT
.Lpc333:                CALL_FN          .Lstr_45, 1 # EVAL
.Lpc334:                STORE_VAR        .Lstr_68 # Pop_final
.Lpc335:                RETURN
.Lpc336:                LABEL
# ======================================================================================================================
# stmt 71  (line 87):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc337:                STNO
# ======================================================================================================================
# stmt 72  (line 72):  push_item_end
# ======================================================================================================================
.Lpc338:                STNO
.Lpc339:                PUSH_STR         .Lstr_71, 0 # "node_repr(f)r,sep,i,n,tag"
.Lpc340:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc341:                VOID_POP
.Lpc342:                JUMP             .Lpc417
.Lpc343:                LABEL
# ======================================================================================================================
# stmt 73  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ======================================================================================================================
.Lpc344:                STNO
.Lpc345:                PUSH_VAR         .Lstr_73 # f
.Lpc346:                CALL_FN          .Lstr_74, 1 # DATATYPE
.Lpc347:                PUSH_VAR         .Lstr_75 # LCASE
.Lpc348:                PUSH_VAR         .Lstr_76 # UCASE
.Lpc349:                CALL_FN          .Lstr_77, 3 # REPLACE
.Lpc350:                PUSH_STR         .Lstr_78, 0 # "STRING"
.Lpc351:                CALL_FN          .Lstr_79, 2 # IDENT
.Lpc352:                VOID_POP
.Lpc353:                JUMP_F           .Lpc362
# ======================================================================================================================
# stmt 74  (line 74):                 DEFINE('pop_list()')
# ======================================================================================================================
.Lpc354:                STNO
.Lpc355:                PUSH_STR         .Lstr_80, 0 # "'"
.Lpc356:                PUSH_VAR         .Lstr_73 # f
.Lpc357:                PUSH_STR         .Lstr_80, 0 # "'"
.Lpc358:                CONCAT
.Lpc359:                CONCAT
.Lpc360:                STORE_VAR        .Lstr_72 # node_repr
.Lpc361:                RETURN
.Lpc362:                LABEL
# ======================================================================================================================
# stmt 75  (line 91):  nr_frame       tag            =  stk_tag[f]
# ======================================================================================================================
.Lpc363:                STNO
.Lpc364:                PUSH_VAR         .Lstr_6 # stk_tag
.Lpc365:                PUSH_VAR         .Lstr_73 # f
.Lpc366:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc367:                STORE_VAR        .Lstr_82 # tag
# ======================================================================================================================
# stmt 76  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ======================================================================================================================
.Lpc368:                STNO
.Lpc369:                PUSH_VAR         .Lstr_7 # stk_n
.Lpc370:                PUSH_VAR         .Lstr_73 # f
.Lpc371:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc372:                STORE_VAR        .Lstr_30 # n
# ======================================================================================================================
# stmt 77  (line 77):                 pop_list       =  .dummy                     :(NRETURN)
# ======================================================================================================================
.Lpc373:                STNO
.Lpc374:                PUSH_STR         .Lstr_83, 0 # "('"
.Lpc375:                PUSH_VAR         .Lstr_82 # tag
.Lpc376:                PUSH_STR         .Lstr_80, 0 # "'"
.Lpc377:                CONCAT
.Lpc378:                CONCAT
.Lpc379:                STORE_VAR        .Lstr_84 # r
# ======================================================================================================================
# stmt 78  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ======================================================================================================================
.Lpc380:                STNO
.Lpc381:                PUSH_INT         0
.Lpc382:                STORE_VAR        .Lstr_85 # i
.Lpc383:                LABEL
# ======================================================================================================================
# stmt 79  (line 95):  nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
# ======================================================================================================================
.Lpc384:                STNO
.Lpc385:                PUSH_VAR         .Lstr_85 # i
.Lpc386:                PUSH_VAR         .Lstr_30 # n
.Lpc387:                CALL_FN          .Lstr_87, 2 # LT
.Lpc388:                PUSH_VAR         .Lstr_85 # i
.Lpc389:                PUSH_INT         1
.Lpc390:                ADD_NUM
.Lpc391:                CONCAT
.Lpc392:                STORE_VAR        .Lstr_85 # i
.Lpc393:                JUMP_F           .Lpc410
# ======================================================================================================================
# stmt 80  (line 80):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc394:                STNO
.Lpc395:                PUSH_VAR         .Lstr_84 # r
.Lpc396:                PUSH_STR         .Lstr_88, 0 # ", "
.Lpc397:                PUSH_VAR         .Lstr_8 # stk_c
.Lpc398:                PUSH_VAR         .Lstr_73 # f
.Lpc399:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc400:                PUSH_VAR         .Lstr_85 # i
.Lpc401:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc402:                CALL_FN          .Lstr_72, 1 # node_repr
.Lpc403:                CONCAT
.Lpc404:                CONCAT
.Lpc405:                STORE_VAR        .Lstr_84 # r
# ======================================================================================================================
# stmt 81  (line 81):                 DEFINE('pop_final(v)')
# ======================================================================================================================
.Lpc406:                STNO
.Lpc407:                PUSH_VAR         .Lstr_85 # i
.Lpc408:                STORE_VAR        .Lstr_85 # i
.Lpc409:                JUMP             .Lpc383
.Lpc410:                LABEL
# ======================================================================================================================
# stmt 82  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ======================================================================================================================
.Lpc411:                STNO
.Lpc412:                PUSH_VAR         .Lstr_84 # r
.Lpc413:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc414:                CONCAT
.Lpc415:                STORE_VAR        .Lstr_72 # node_repr
.Lpc416:                RETURN
.Lpc417:                LABEL
# ======================================================================================================================
# stmt 83  (line 100):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc418:                STNO
# ======================================================================================================================
# stmt 84  (line 84):                 pop_final      =  .dummy                     :(NRETURN)
# ======================================================================================================================
.Lpc419:                STNO
.Lpc420:                PUSH_STR         .Lstr_91, 0 # "pp_node(f,indent,suffix)r,pad,tag,n,i,nx..."
.Lpc421:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc422:                VOID_POP
.Lpc423:                JUMP             .Lpc555
.Lpc424:                LABEL
# ======================================================================================================================
# stmt 85  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ======================================================================================================================
.Lpc425:                STNO
.Lpc426:                PUSH_VAR         .Lstr_73 # f
.Lpc427:                CALL_FN          .Lstr_74, 1 # DATATYPE
.Lpc428:                PUSH_VAR         .Lstr_75 # LCASE
.Lpc429:                PUSH_VAR         .Lstr_76 # UCASE
.Lpc430:                CALL_FN          .Lstr_77, 3 # REPLACE
.Lpc431:                PUSH_STR         .Lstr_78, 0 # "STRING"
.Lpc432:                CALL_FN          .Lstr_79, 2 # IDENT
.Lpc433:                VOID_POP
.Lpc434:                JUMP_F           .Lpc449
# ======================================================================================================================
# stmt 86  (line 86):  pop_final_end
# ======================================================================================================================
.Lpc435:                STNO
.Lpc436:                PUSH_STR         .Lstr_93, 0 # " "
.Lpc437:                PUSH_VAR         .Lstr_94 # indent
.Lpc438:                CALL_FN          .Lstr_95, 2 # DUPL
.Lpc439:                PUSH_STR         .Lstr_80, 0 # "'"
.Lpc440:                PUSH_VAR         .Lstr_73 # f
.Lpc441:                PUSH_STR         .Lstr_80, 0 # "'"
.Lpc442:                PUSH_VAR         .Lstr_96 # suffix
.Lpc443:                CONCAT
.Lpc444:                CONCAT
.Lpc445:                CONCAT
.Lpc446:                CONCAT
.Lpc447:                STORE_VAR        .Lstr_97 # OUTPUT
.Lpc448:                RETURN
.Lpc449:                LABEL
# ======================================================================================================================
# stmt 87  (line 104):  pp_frame       r              =  node_repr(f)
# ======================================================================================================================
.Lpc450:                STNO
.Lpc451:                PUSH_VAR         .Lstr_73 # f
.Lpc452:                CALL_FN          .Lstr_72, 1 # node_repr
.Lpc453:                STORE_VAR        .Lstr_84 # r
# ======================================================================================================================
# stmt 88  (line 88):                 DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
# ======================================================================================================================
.Lpc454:                STNO
.Lpc455:                PUSH_STR         .Lstr_93, 0 # " "
.Lpc456:                PUSH_VAR         .Lstr_94 # indent
.Lpc457:                CALL_FN          .Lstr_95, 2 # DUPL
.Lpc458:                STORE_VAR        .Lstr_99 # pad
# ======================================================================================================================
# stmt 89  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ======================================================================================================================
.Lpc459:                STNO
.Lpc460:                PUSH_INT         80
.Lpc461:                PUSH_VAR         .Lstr_94 # indent
.Lpc462:                PUSH_VAR         .Lstr_84 # r
.Lpc463:                CALL_FN          .Lstr_100, 1 # SIZE
.Lpc464:                ADD_NUM
.Lpc465:                CALL_FN          .Lstr_101, 2 # GT
.Lpc466:                VOID_POP
.Lpc467:                JUMP_F           .Lpc476
# ======================================================================================================================
# stmt 90  (line 90):                 node_repr      =  "'" f "'"                  :(RETURN)
# ======================================================================================================================
.Lpc468:                STNO
.Lpc469:                PUSH_VAR         .Lstr_99 # pad
.Lpc470:                PUSH_VAR         .Lstr_84 # r
.Lpc471:                PUSH_VAR         .Lstr_96 # suffix
.Lpc472:                CONCAT
.Lpc473:                CONCAT
.Lpc474:                STORE_VAR        .Lstr_97 # OUTPUT
.Lpc475:                RETURN
.Lpc476:                LABEL
# ======================================================================================================================
# stmt 91  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ======================================================================================================================
.Lpc477:                STNO
.Lpc478:                PUSH_VAR         .Lstr_6 # stk_tag
.Lpc479:                PUSH_VAR         .Lstr_73 # f
.Lpc480:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc481:                STORE_VAR        .Lstr_82 # tag
# ======================================================================================================================
# stmt 92  (line 92):                 n              =  stk_n[f]
# ======================================================================================================================
.Lpc482:                STNO
.Lpc483:                PUSH_VAR         .Lstr_7 # stk_n
.Lpc484:                PUSH_VAR         .Lstr_73 # f
.Lpc485:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc486:                STORE_VAR        .Lstr_30 # n
# ======================================================================================================================
# stmt 93  (line 93):                 r              =  "('" tag "'"
# ======================================================================================================================
.Lpc487:                STNO
.Lpc488:                PUSH_VAR         .Lstr_99 # pad
.Lpc489:                PUSH_STR         .Lstr_103, 0 # "( "
.Lpc490:                PUSH_STR         .Lstr_80, 0 # "'"
.Lpc491:                PUSH_VAR         .Lstr_82 # tag
.Lpc492:                PUSH_STR         .Lstr_104, 0 # "',"
.Lpc493:                CONCAT
.Lpc494:                CONCAT
.Lpc495:                CONCAT
.Lpc496:                CONCAT
.Lpc497:                STORE_VAR        .Lstr_97 # OUTPUT
# ======================================================================================================================
# stmt 94  (line 94):                 i              =  0
# ======================================================================================================================
.Lpc498:                STNO
.Lpc499:                PUSH_INT         0
.Lpc500:                STORE_VAR        .Lstr_85 # i
.Lpc501:                LABEL
# ======================================================================================================================
# stmt 95  (line 112):  pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
# ======================================================================================================================
.Lpc502:                STNO
.Lpc503:                PUSH_VAR         .Lstr_85 # i
.Lpc504:                PUSH_VAR         .Lstr_30 # n
.Lpc505:                CALL_FN          .Lstr_87, 2 # LT
.Lpc506:                PUSH_VAR         .Lstr_85 # i
.Lpc507:                PUSH_INT         1
.Lpc508:                ADD_NUM
.Lpc509:                CONCAT
.Lpc510:                STORE_VAR        .Lstr_85 # i
.Lpc511:                JUMP_F           .Lpc552
# ======================================================================================================================
# stmt 96  (line 96):                 r              =  r ', ' node_repr(stk_c[f][i])
# ======================================================================================================================
.Lpc512:                STNO
.Lpc513:                PUSH_VAR         .Lstr_85 # i
.Lpc514:                PUSH_VAR         .Lstr_30 # n
.Lpc515:                CALL_FN          .Lstr_87, 2 # LT
.Lpc516:                PUSH_VAR         .Lstr_85 # i
.Lpc517:                CONCAT
.Lpc518:                STORE_VAR        .Lstr_106 # nxt
.Lpc519:                JUMP_F           .Lpc536
# ======================================================================================================================
# stmt 97  (line 97):                 i              =  i                          :(nr_lp)
# ======================================================================================================================
.Lpc520:                STNO
.Lpc521:                PUSH_VAR         .Lstr_8 # stk_c
.Lpc522:                PUSH_VAR         .Lstr_73 # f
.Lpc523:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc524:                PUSH_VAR         .Lstr_85 # i
.Lpc525:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc526:                PUSH_VAR         .Lstr_94 # indent
.Lpc527:                PUSH_INT         2
.Lpc528:                ADD_NUM
.Lpc529:                PUSH_STR         .Lstr_107, 0 # ","
.Lpc530:                CALL_FN          .Lstr_92, 3 # pp_node
.Lpc531:                VOID_POP
# ======================================================================================================================
# stmt 98  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ======================================================================================================================
.Lpc532:                STNO
.Lpc533:                PUSH_VAR         .Lstr_85 # i
.Lpc534:                STORE_VAR        .Lstr_85 # i
.Lpc535:                JUMP             .Lpc501
.Lpc536:                LABEL
# ======================================================================================================================
# stmt 99  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ======================================================================================================================
.Lpc537:                STNO
.Lpc538:                PUSH_VAR         .Lstr_8 # stk_c
.Lpc539:                PUSH_VAR         .Lstr_73 # f
.Lpc540:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc541:                PUSH_VAR         .Lstr_85 # i
.Lpc542:                CALL_FN          .Lstr_23, 2 # IDX
.Lpc543:                PUSH_VAR         .Lstr_94 # indent
.Lpc544:                PUSH_INT         2
.Lpc545:                ADD_NUM
.Lpc546:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc547:                PUSH_VAR         .Lstr_96 # suffix
.Lpc548:                CONCAT
.Lpc549:                CALL_FN          .Lstr_92, 3 # pp_node
.Lpc550:                VOID_POP
.Lpc551:                RETURN
.Lpc552:                LABEL
# ======================================================================================================================
# stmt 100  (line 117):  pp_wdone                                                    :(RETURN)
# ======================================================================================================================
.Lpc553:                STNO
.Lpc554:                RETURN
.Lpc555:                LABEL
# ======================================================================================================================
# stmt 101  (line 119):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc556:                STNO
# ======================================================================================================================
# stmt 102  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ======================================================================================================================
.Lpc557:                STNO
.Lpc558:                PUSH_STR         .Lstr_111, 0 # "pp_bank()"
.Lpc559:                CALL_FN          .Lstr_10, 1 # DEFINE
.Lpc560:                VOID_POP
.Lpc561:                JUMP             .Lpc574
.Lpc562:                LABEL
# ======================================================================================================================
# stmt 103  (line 121):  pp_bank        pp_node(bank, 0, '')
# ======================================================================================================================
.Lpc563:                STNO
.Lpc564:                PUSH_VAR         .Lstr_113 # bank
.Lpc565:                PUSH_INT         0
.Lpc566:                PUSH_STR         .Lstr_40, 0 # ""
.Lpc567:                CALL_FN          .Lstr_92, 3 # pp_node
.Lpc568:                VOID_POP
# ======================================================================================================================
# stmt 104  (line 104):  pp_frame       r              =  node_repr(f)
# ======================================================================================================================
.Lpc569:                STNO
.Lpc570:                PUSH_STR         .Lstr_16, 0 # "dummy"
.Lpc571:                CALL_FN          .Lstr_17, 1 # NAME_PUSH
.Lpc572:                STORE_VAR        .Lstr_112 # pp_bank
.Lpc573:                RETURN
.Lpc574:                LABEL
# ======================================================================================================================
# stmt 105  (line 124):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc575:                STNO
# ======================================================================================================================
# stmt 106  (line 106):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ======================================================================================================================
.Lpc576:                STNO
.Lpc577:                PUSH_STR         .Lstr_93, 0 # " "
.Lpc578:                PUSH_VAR         .Lstr_0 # nl
.Lpc579:                CONCAT
.Lpc580:                PAT_SPAN
.Lpc581:                PAT_BOXVAL
.Lpc582:                STORE_VAR        .Lstr_115 # delim
# ======================================================================================================================
# stmt 107  (line 107):                 OUTPUT         =  pad r suffix               :(RETURN)
# ======================================================================================================================
.Lpc583:                STNO
.Lpc584:                PUSH_STR         .Lstr_116, 0 # "( )"
.Lpc585:                PUSH_VAR         .Lstr_0 # nl
.Lpc586:                CONCAT
.Lpc587:                PAT_NOTANY
.Lpc588:                PAT_BOXVAL
.Lpc589:                PUSH_STR         .Lstr_116, 0 # "( )"
.Lpc590:                PUSH_VAR         .Lstr_0 # nl
.Lpc591:                CONCAT
.Lpc592:                PAT_BREAK
.Lpc593:                PAT_BOXVAL
.Lpc594:                CONCAT
.Lpc595:                STORE_VAR        .Lstr_117 # word
# ======================================================================================================================
# stmt 108  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ======================================================================================================================
.Lpc596:                STNO
.Lpc597:                PUSH_STR         .Lstr_118, 0 # "("
.Lpc598:                PUSH_VAR         .Lstr_117 # word
.Lpc599:                PAT_DEREF
.Lpc600:                PAT_CAPTURE      0, .Lstr_82 # tag kind=0
.Lpc601:                PAT_BOXVAL
.Lpc602:                PUSH_STR         .Lstr_82, 0 # "tag"
.Lpc603:                CALL_FN          .Lstr_50, 1 # Push_list
.Lpc604:                PAT_REFNAME      .Lstr_115 # delim
.Lpc605:                PAT_REFNAME      .Lstr_119 # group
.Lpc606:                PUSH_VAR         .Lstr_117 # word
.Lpc607:                PAT_DEREF
.Lpc608:                PAT_CAPTURE      0, .Lstr_120 # wrd kind=0
.Lpc609:                PUSH_STR         .Lstr_120, 0 # "wrd"
.Lpc610:                CALL_FN          .Lstr_56, 1 # Push_item
.Lpc611:                PAT_DEREF
.Lpc612:                PAT_CAT
.Lpc613:                PAT_ALT
.Lpc614:                PAT_CAT
.Lpc615:                PAT_ARBNO
.Lpc616:                PAT_BOXVAL
.Lpc617:                CALL_FN          .Lstr_62, 0 # Pop_list
.Lpc618:                PUSH_STR         .Lstr_44, 0 # ")"
.Lpc619:                CONCAT
.Lpc620:                CONCAT
.Lpc621:                CONCAT
.Lpc622:                CONCAT
.Lpc623:                CONCAT
.Lpc624:                STORE_VAR        .Lstr_119 # group
# ======================================================================================================================
# stmt 109  (line 109):                 n              =  stk_n[f]
# ======================================================================================================================
.Lpc625:                STNO
.Lpc626:                PAT_LIT          .Lstr_118 # arg="("
.Lpc627:                PUSH_VAR         .Lstr_121 # BAL
.Lpc628:                PAT_DEREF
.Lpc629:                PAT_LIT          .Lstr_44 # arg=")"
.Lpc630:                PAT_CAT
.Lpc631:                PAT_CAT
.Lpc632:                PAT_CAPTURE      0, .Lstr_122 # item kind=0
.Lpc633:                PAT_BOXVAL
.Lpc634:                STORE_VAR        .Lstr_123 # spat
.Lpc635:                LABEL
# ======================================================================================================================
# stmt 110  (line 142):  slurp          line           =  INPUT                      :F(slurp_done)
# ======================================================================================================================
.Lpc636:                STNO
.Lpc637:                PUSH_VAR         .Lstr_125 # INPUT
.Lpc638:                STORE_VAR        .Lstr_126 # line
.Lpc639:                JUMP_F           .Lpc648
# ======================================================================================================================
# stmt 111  (line 111):                 i              =  0
# ======================================================================================================================
.Lpc640:                STNO
.Lpc641:                PUSH_VAR         .Lstr_127 # src
.Lpc642:                PUSH_VAR         .Lstr_126 # line
.Lpc643:                PUSH_VAR         .Lstr_0 # nl
.Lpc644:                CONCAT
.Lpc645:                CONCAT
.Lpc646:                STORE_VAR        .Lstr_127 # src
.Lpc647:                JUMP             .Lpc635
.Lpc648:                LABEL
# ======================================================================================================================
# stmt 112  (line 145):                 dummy          =  init_list('bank')
# ======================================================================================================================
.Lpc649:                STNO
# ======================================================================================================================
# stmt 113  (line 113):                 nxt            =  LT(i, n) i                 :F(pp_wlast)
# ======================================================================================================================
.Lpc650:                STNO
.Lpc651:                PUSH_STR         .Lstr_113, 0 # "bank"
.Lpc652:                CALL_FN          .Lstr_39, 1 # init_list
.Lpc653:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 114  (line 114):                 pp_node(stk_c[f][i], indent + 2, ',')
# ======================================================================================================================
.Lpc654:                STNO
.Lpc655:                PUSH_STR         .Lstr_129, 0 # "BANK"
.Lpc656:                CALL_FN          .Lstr_11, 1 # stk_push_frame
.Lpc657:                STORE_VAR        .Lstr_16 # dummy
.Lpc658:                LABEL
# ======================================================================================================================
# stmt 115  (line 147):  loop           src            spat =  ''                    :F(all_done)
# ======================================================================================================================
.Lpc659:                STNO
.Lpc660:                PUSH_VAR         .Lstr_123 # spat
.Lpc661:                PAT_DEREF
.Lpc662:                PUSH_VAR         .Lstr_127 # src
.Lpc663:                PUSH_STR         .Lstr_40, 0 # ""
.Lpc664:                EXEC_STMT_VARIANT 1, .Lstr_127 # subj=src
.Lpc665:                JUMP_F           .Lpc691
# ======================================================================================================================
# stmt 116  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ======================================================================================================================
.Lpc666:                STNO
.Lpc667:                PUSH_STR         .Lstr_131, 0 # "ROOT"
.Lpc668:                CALL_FN          .Lstr_11, 1 # stk_push_frame
.Lpc669:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 117  (line 117):  pp_wdone                                                    :(RETURN)
# ======================================================================================================================
.Lpc670:                STNO
.Lpc671:                PUSH_VAR         .Lstr_119 # group
.Lpc672:                PAT_DEREF
.Lpc673:                PUSH_VAR         .Lstr_122 # item
.Lpc674:                PUSH_INT         0
.Lpc675:                EXEC_STMT_VARIANT 0, .Lstr_122 # subj=item
.Lpc676:                JUMP_F           .Lpc681
# ======================================================================================================================
# stmt 118  (line 118):  pp_node_end
# ======================================================================================================================
.Lpc677:                STNO
.Lpc678:                CALL_FN          .Lstr_26, 0 # stk_pop_into_parent
.Lpc679:                STORE_VAR        .Lstr_16 # dummy
.Lpc680:                JUMP             .Lpc658
.Lpc681:                LABEL
# ======================================================================================================================
# stmt 119  (line 151):  parse_fail     OUTPUT         =  'Parse failed on: ' item
# ======================================================================================================================
.Lpc682:                STNO
.Lpc683:                PUSH_STR         .Lstr_133, 0 # "Parse failed on: "
.Lpc684:                PUSH_VAR         .Lstr_122 # item
.Lpc685:                CONCAT
.Lpc686:                STORE_VAR        .Lstr_97 # OUTPUT
# ======================================================================================================================
# stmt 120  (line 120):                 DEFINE('pp_bank()')                          :(pp_bank_end)
# ======================================================================================================================
.Lpc687:                STNO
.Lpc688:                CALL_FN          .Lstr_26, 0 # stk_pop_into_parent
.Lpc689:                STORE_VAR        .Lstr_16 # dummy
.Lpc690:                JUMP             .Lpc658
.Lpc691:                LABEL
# ======================================================================================================================
# stmt 121  (line 153):  all_done       dummy          =  stk_pop_final('bank')
# ======================================================================================================================
.Lpc692:                STNO
.Lpc693:                PUSH_STR         .Lstr_113, 0 # "bank"
.Lpc694:                CALL_FN          .Lstr_33, 1 # stk_pop_final
.Lpc695:                STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 122  (line 122):                 pp_bank        =  .dummy                     :(RETURN)
# ======================================================================================================================
.Lpc696:                STNO
.Lpc697:                CALL_FN          .Lstr_112, 0 # pp_bank
.Lpc698:                STORE_VAR        .Lstr_16 # dummy
.Lpc699:                JUMP             .Lpc700
.Lpc700:                LABEL
# ======================================================================================================================
# stmt 123  (line 123):  pp_bank_end
# ======================================================================================================================
.Lpc701:                STNO
.Lpc702:                HALT
# -- epilogue -------------------------------------------
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
