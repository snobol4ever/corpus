                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.Lstr_0:                .string          "nl"
.Lstr_1:                .string          "ALPHABET"
.Lstr_2:                .string          "list(head,tail)"
.Lstr_3:                .string          "DATA"
.Lstr_4:                .string          "frame_id"
.Lstr_5:                .string          "TABLE"
.Lstr_6:                .string          "stk_tag"
.Lstr_7:                .string          "stk_n"
.Lstr_8:                .string          "stk_c"
.Lstr_9:                .string          "stk_push_frame(v)"
.Lstr_10:               .string          "DEFINE"
.Lstr_11:               .string          "stk_push_frame"
.Lstr_12:               .string          "v"
.Lstr_13:               .string          "IDX_SET"
.Lstr_14:               .string          "stk"
.Lstr_15:               .string          "list"
.Lstr_16:               .string          "dummy"
.Lstr_17:               .string          "NAME_PUSH"
.Lstr_18:               .string          "stk_push_frame_end"
.Lstr_19:               .string          "stk_push_item(v,cur)"
.Lstr_20:               .string          "stk_push_item"
.Lstr_21:               .string          "head"
.Lstr_22:               .string          "cur"
.Lstr_23:               .string          "IDX"
.Lstr_24:               .string          "stk_push_item_end"
.Lstr_25:               .string          "stk_pop_into_parent(child,par,n)"
.Lstr_26:               .string          "stk_pop_into_parent"
.Lstr_27:               .string          "child"
.Lstr_28:               .string          "tail"
.Lstr_29:               .string          "par"
.Lstr_30:               .string          "n"
.Lstr_31:               .string          "stk_pop_into_parent_end"
.Lstr_32:               .string          "stk_pop_final(var,child)"
.Lstr_33:               .string          "stk_pop_final"
.Lstr_34:               .string          "var"
.Lstr_35:               .string          "ASGN_INDIR"
.Lstr_36:               .string          "stk_pop_final_end"
.Lstr_37:               .string          "init_list(v)"
.Lstr_38:               .string          "Init_list(vs)"
.Lstr_39:               .string          "init_list"
.Lstr_40:               .string          ""
.Lstr_41:               .string          "Init_list"
.Lstr_42:               .string          "epsilon . *init_list("
.Lstr_43:               .string          "vs"
.Lstr_44:               .string          ")"
.Lstr_45:               .string          "EVAL"
.Lstr_46:               .string          "init_list_end"
.Lstr_47:               .string          "push_list(v)"
.Lstr_48:               .string          "Push_list(vs)"
.Lstr_49:               .string          "push_list"
.Lstr_50:               .string          "Push_list"
.Lstr_51:               .string          "epsilon . *push_list("
.Lstr_52:               .string          "push_list_end"
.Lstr_53:               .string          "push_item(v)"
.Lstr_54:               .string          "Push_item(vs)"
.Lstr_55:               .string          "push_item"
.Lstr_56:               .string          "Push_item"
.Lstr_57:               .string          "epsilon . *push_item("
.Lstr_58:               .string          "push_item_end"
.Lstr_59:               .string          "pop_list()"
.Lstr_60:               .string          "Pop_list()"
.Lstr_61:               .string          "pop_list"
.Lstr_62:               .string          "Pop_list"
.Lstr_63:               .string          "epsilon"
.Lstr_64:               .string          "pop_list_end"
.Lstr_65:               .string          "pop_final(v)"
.Lstr_66:               .string          "Pop_final(vs)"
.Lstr_67:               .string          "pop_final"
.Lstr_68:               .string          "Pop_final"
.Lstr_69:               .string          "epsilon . *pop_final("
.Lstr_70:               .string          "pop_final_end"
.Lstr_71:               .string          "node_repr(f)r,sep,i,n,tag"
.Lstr_72:               .string          "node_repr"
.Lstr_73:               .string          "f"
.Lstr_74:               .string          "DATATYPE"
.Lstr_75:               .string          "LCASE"
.Lstr_76:               .string          "UCASE"
.Lstr_77:               .string          "REPLACE"
.Lstr_78:               .string          "STRING"
.Lstr_79:               .string          "IDENT"
.Lstr_80:               .string          "'"
.Lstr_81:               .string          "nr_frame"
.Lstr_82:               .string          "tag"
.Lstr_83:               .string          "('"
.Lstr_84:               .string          "r"
.Lstr_85:               .string          "i"
.Lstr_86:               .string          "nr_lp"
.Lstr_87:               .string          "LT"
.Lstr_88:               .string          ", "
.Lstr_89:               .string          "nr_done"
.Lstr_90:               .string          "node_repr_end"
.Lstr_91:               .string          "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.Lstr_92:               .string          "pp_node"
.Lstr_93:               .string          " "
.Lstr_94:               .string          "indent"
.Lstr_95:               .string          "DUPL"
.Lstr_96:               .string          "suffix"
.Lstr_97:               .string          "OUTPUT"
.Lstr_98:               .string          "pp_frame"
.Lstr_99:               .string          "pad"
.Lstr_100:              .string          "SIZE"
.Lstr_101:              .string          "GT"
.Lstr_102:              .string          "pp_wrap"
.Lstr_103:              .string          "( "
.Lstr_104:              .string          "',"
.Lstr_105:              .string          "pp_wch"
.Lstr_106:              .string          "nxt"
.Lstr_107:              .string          ","
.Lstr_108:              .string          "pp_wlast"
.Lstr_109:              .string          "pp_wdone"
.Lstr_110:              .string          "pp_node_end"
.Lstr_111:              .string          "pp_bank()"
.Lstr_112:              .string          "pp_bank"
.Lstr_113:              .string          "bank"
.Lstr_114:              .string          "pp_bank_end"
.Lstr_115:              .string          "delim"
.Lstr_116:              .string          "( )"
.Lstr_117:              .string          "word"
.Lstr_118:              .string          "("
.Lstr_119:              .string          "group"
.Lstr_120:              .string          "wrd"
.Lstr_121:              .string          "BAL"
.Lstr_122:              .string          "item"
.Lstr_123:              .string          "spat"
.Lstr_124:              .string          "slurp"
.Lstr_125:              .string          "INPUT"
.Lstr_126:              .string          "line"
.Lstr_127:              .string          "src"
.Lstr_128:              .string          "slurp_done"
.Lstr_129:              .string          "BANK"
.Lstr_130:              .string          "loop"
.Lstr_131:              .string          "ROOT"
.Lstr_132:              .string          "parse_fail"
.Lstr_133:              .string          "Parse failed on: "
.Lstr_134:              .string          "all_done"
.Lstr_135:              .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:       .quad            .Lstr_11         ; .quad            .Lpc32
                        .quad            .Lstr_18         ; .quad            .Lpc63
                        .quad            .Lstr_20         ; .quad            .Lpc70
                        .quad            .Lstr_24         ; .quad            .Lpc98
                        .quad            .Lstr_26         ; .quad            .Lpc105
                        .quad            .Lstr_31         ; .quad            .Lpc145
                        .quad            .Lstr_33         ; .quad            .Lpc152
                        .quad            .Lstr_36         ; .quad            .Lpc170
                        .quad            .Lstr_39         ; .quad            .Lpc181
                        .quad            .Lstr_41         ; .quad            .Lpc206
                        .quad            .Lstr_46         ; .quad            .Lpc216
                        .quad            .Lstr_49         ; .quad            .Lpc227
                        .quad            .Lstr_50         ; .quad            .Lpc237
                        .quad            .Lstr_52         ; .quad            .Lpc247
                        .quad            .Lstr_55         ; .quad            .Lpc258
                        .quad            .Lstr_56         ; .quad            .Lpc268
                        .quad            .Lstr_58         ; .quad            .Lpc278
                        .quad            .Lstr_61         ; .quad            .Lpc289
                        .quad            .Lstr_62         ; .quad            .Lpc298
                        .quad            .Lstr_64         ; .quad            .Lpc306
                        .quad            .Lstr_67         ; .quad            .Lpc317
                        .quad            .Lstr_68         ; .quad            .Lpc327
                        .quad            .Lstr_70         ; .quad            .Lpc337
                        .quad            .Lstr_72         ; .quad            .Lpc344
                        .quad            .Lstr_81         ; .quad            .Lpc363
                        .quad            .Lstr_86         ; .quad            .Lpc384
                        .quad            .Lstr_89         ; .quad            .Lpc411
                        .quad            .Lstr_90         ; .quad            .Lpc418
                        .quad            .Lstr_92         ; .quad            .Lpc425
                        .quad            .Lstr_98         ; .quad            .Lpc450
                        .quad            .Lstr_102        ; .quad            .Lpc477
                        .quad            .Lstr_105        ; .quad            .Lpc502
                        .quad            .Lstr_108        ; .quad            .Lpc537
                        .quad            .Lstr_109        ; .quad            .Lpc553
                        .quad            .Lstr_110        ; .quad            .Lpc556
                        .quad            .Lstr_112        ; .quad            .Lpc563
                        .quad            .Lstr_114        ; .quad            .Lpc575
                        .quad            .Lstr_124        ; .quad            .Lpc636
                        .quad            .Lstr_128        ; .quad            .Lpc649
                        .quad            .Lstr_130        ; .quad            .Lpc659
                        .quad            .Lstr_132        ; .quad            .Lpc682
                        .quad            .Lstr_134        ; .quad            .Lpc692
                        .quad            .Lstr_135        ; .quad            .Lpc701
                        .quad            0                ; .quad            0
                        .text
                        .intel_syntax    noprefix
                        .text
# ======================================================================================================================
# pattern pat_inv_0: POS(0) LEN(0) . <var>
# ======================================================================================================================
                        .global          pat_inv_0_α
                        .global          pat_inv_0_β
                        .global          pat_inv_0_γ
                        .global          pat_inv_0_ω
pat_inv_0_α:            lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               pat_inv_0_α_body;          jmp pat_inv_0_β
# ----------------------------------------------------------------------------------------------------------------------
# BOX POS(0)  [xcat0_γ]
pat_inv_0_α_body:       POS_α            0, xcat0_γ, xcat0_ω # POS(0)
xcat0_left_β:           POS_β            xcat0_ω
# ----------------------------------------------------------------------------------------------------------------------
# BOX CAP_COND  [pat_inv_0_γ]
xcat0_γ:                .section         .data
.Lcap1_vname:           .string          ""
.Lcap1_data:            .quad            0
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
                        .globl           cap1_child_α
cap1_child_α:           lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               cap1_α_body;               jmp cap1_β
# ----------------------------------------------------------------------------------------------------------------------
# BOX LEN(0)  [cap1_γ]
cap1_α_body:            .section         .data
.Llen2_z:               .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 0
                        call             bb_len@PLT
                        test             rax, rax
                        jne              cap1_γ;                    jmp cap1_ω
cap1_β:                 lea              rdi, [rip + .Llen2_z]
                        mov              esi, 1
                        call             bb_len@PLT
                        test             rax, rax
                        jne              cap1_γ;                    jmp cap1_ω
cap1_γ:                 lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
cap1_ω:                 mov              eax, 99
                        xor              edx, edx
                        ret
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 0
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              pat_inv_0_γ;               jmp xcat0_right_ω
xcat0_right_β:          lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 1
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              pat_inv_0_γ;               jmp xcat0_right_ω
xcat0_right_ω:                                                      jmp xcat0_left_β
pat_inv_0_β:                                                        jmp xcat0_right_β
xcat0_ω:                                                            jmp pat_inv_0_ω
pat_inv_0_γ:            lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
pat_inv_0_ω:            mov              eax, 99
                        xor              edx, edx
                        ret
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lchunk_registry]
                        call             rt_register_expressions@PLT
                        lea              rdi, [rip + .Lcap1_data]
                        lea              rsi, [rip + cap1_child_α]
                        call             rt_patch_cap_fn@PLT
                        call             rt_init@PLT # rt_init(argc, argv)
# ======================================================================================================================
# stmt 1  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
# ======================================================================================================================
.Lpc0:                  STNO
                        # PUSH_INT       baked  pat_inv_0 pc=1..6
                        # PAT_POS        baked  pat_inv_0 pc=1..6
                        # PUSH_INT       baked  pat_inv_0 pc=1..6
                        # PAT_LEN        baked  pat_inv_0 pc=1..6
                        # PAT_CAPTURE    baked  pat_inv_0 pc=1..6
                        # PAT_CAT        baked  pat_inv_0 pc=1..6
                        PUSH_VAR         .Lstr_1 # ALPHABET
                        PUSH_INT         0
                        lea              rdi, [rip + pat_inv_0_α]
                        lea              rsi, [rip + .Lstr_1]
                        mov              edx, 0
                        call             rt_match_blob@PLT
# ======================================================================================================================
# stmt 2  (line 8):                 DATA('list(head,tail)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_2, 0 # "list(head,tail)"
                        CALL_FN          .Lstr_3, 1 # DATA
                        VOID_POP
# ======================================================================================================================
# stmt 3  (line 9):                 frame_id       =  0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_4 # frame_id
# ======================================================================================================================
# stmt 4  (line 10):                 stk_tag        =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        STORE_VAR        .Lstr_6 # stk_tag
# ======================================================================================================================
# stmt 5  (line 11):                 stk_n          =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        STORE_VAR        .Lstr_7 # stk_n
# ======================================================================================================================
# stmt 6  (line 12):                 stk_c          =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        STORE_VAR        .Lstr_8 # stk_c
# ======================================================================================================================
# stmt 7  (line 14):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_9, 0 # "stk_push_frame(v)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc62
                        LABEL
# ======================================================================================================================
# stmt 8  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ======================================================================================================================
.Lpc32:                 STNO
                        PUSH_VAR         .Lstr_4 # frame_id
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .Lstr_4 # frame_id
# ======================================================================================================================
# stmt 9  (line 16):                 stk_tag[frame_id]    =  v
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # v
                        PUSH_VAR         .Lstr_6 # stk_tag
                        PUSH_VAR         .Lstr_4 # frame_id
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 10  (line 17):                 stk_n[frame_id]      =  0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_4 # frame_id
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 11  (line 18):                 stk_c[frame_id]      =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        PUSH_VAR         .Lstr_8 # stk_c
                        PUSH_VAR         .Lstr_4 # frame_id
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 12  (line 19):                 stk                  =  list(frame_id, stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_4 # frame_id
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_15, 2 # list
                        STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 13  (line 20):                 stk_push_frame       =  .dummy               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_11 # stk_push_frame
                        RETURN
.Lpc62:                 LABEL
# ======================================================================================================================
# stmt 14  (line 22):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc63:                 STNO
# ======================================================================================================================
# stmt 15  (line 23):                 DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_19, 0 # "stk_push_item(v,cur)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc97
                        LABEL
# ======================================================================================================================
# stmt 16  (line 24):  stk_push_item  cur                  =  head(stk)
# ======================================================================================================================
.Lpc70:                 STNO
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_21, 1 # head
                        STORE_VAR        .Lstr_22 # cur
# ======================================================================================================================
# stmt 17  (line 25):                 stk_n[cur]           =  stk_n[cur] + 1
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_22 # cur
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_INT         1
                        ADD_NUM
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_22 # cur
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 18  (line 26):                 stk_c[cur][stk_n[cur]] =  v
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # v
                        PUSH_VAR         .Lstr_8 # stk_c
                        PUSH_VAR         .Lstr_22 # cur
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_22 # cur
                        CALL_FN          .Lstr_23, 2 # IDX
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 19  (line 27):                 stk_push_item        =  .dummy               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_20 # stk_push_item
                        RETURN
.Lpc97:                 LABEL
# ======================================================================================================================
# stmt 20  (line 29):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc98:                 STNO
# ======================================================================================================================
# stmt 21  (line 30):                 DEFINE('stk_pop_into_parent(child,par,n)')   :(stk_pop_into_parent_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_25, 0 # "stk_pop_into_parent(child,par,n)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc144
                        LABEL
# ======================================================================================================================
# stmt 22  (line 32):                 child                =  head(stk)
# ======================================================================================================================
.Lpc105:                STNO
# ======================================================================================================================
# stmt 23  (line 32):                 child                =  head(stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_21, 1 # head
                        STORE_VAR        .Lstr_27 # child
# ======================================================================================================================
# stmt 24  (line 33):                 stk                  =  tail(stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_28, 1 # tail
                        STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 25  (line 34):                 par                  =  head(stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_21, 1 # head
                        STORE_VAR        .Lstr_29 # par
# ======================================================================================================================
# stmt 26  (line 35):                 n                    =  stk_n[par]
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_29 # par
                        CALL_FN          .Lstr_23, 2 # IDX
                        STORE_VAR        .Lstr_30 # n
# ======================================================================================================================
# stmt 27  (line 36):                 stk_n[par]           =  n + 1
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_30 # n
                        PUSH_INT         1
                        ADD_NUM
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_29 # par
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 28  (line 37):                 stk_c[par][n + 1]    =  child
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_27 # child
                        PUSH_VAR         .Lstr_8 # stk_c
                        PUSH_VAR         .Lstr_29 # par
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_30 # n
                        PUSH_INT         1
                        ADD_NUM
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 29  (line 38):                 stk_pop_into_parent  =  .dummy               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_26 # stk_pop_into_parent
                        RETURN
.Lpc144:                LABEL
# ======================================================================================================================
# stmt 30  (line 40):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc145:                STNO
# ======================================================================================================================
# stmt 31  (line 41):                 DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_32, 0 # "stk_pop_final(var,child)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc169
                        LABEL
# ======================================================================================================================
# stmt 32  (line 42):  stk_pop_final  child                =  head(stk)
# ======================================================================================================================
.Lpc152:                STNO
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_21, 1 # head
                        STORE_VAR        .Lstr_27 # child
# ======================================================================================================================
# stmt 33  (line 43):                 stk                  =  tail(stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_14 # stk
                        CALL_FN          .Lstr_28, 1 # tail
                        STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 34  (line 44):                 $var                 =  child
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_27 # child
                        PUSH_VAR         .Lstr_34 # var
                        CALL_FN          .Lstr_35, 2 # ASGN_INDIR
# ======================================================================================================================
# stmt 35  (line 45):                 stk_pop_final        =  .dummy               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_33 # stk_pop_final
                        RETURN
.Lpc169:                LABEL
# ======================================================================================================================
# stmt 36  (line 47):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc170:                STNO
# ======================================================================================================================
# stmt 37  (line 48):                 DEFINE('init_list(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_37, 0 # "init_list(v)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 38  (line 49):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_38, 0 # "Init_list(vs)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc215
                        LABEL
# ======================================================================================================================
# stmt 39  (line 50):  init_list      $v             =
# ======================================================================================================================
.Lpc181:                STNO
                        PUSH_STR         .Lstr_40, 0 # ""
                        PUSH_VAR         .Lstr_12 # v
                        CALL_FN          .Lstr_35, 2 # ASGN_INDIR
# ======================================================================================================================
# stmt 40  (line 51):                 stk            =
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_40, 0 # ""
                        STORE_VAR        .Lstr_14 # stk
# ======================================================================================================================
# stmt 41  (line 52):                 frame_id       =  0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_4 # frame_id
# ======================================================================================================================
# stmt 42  (line 53):                 stk_tag        =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        STORE_VAR        .Lstr_6 # stk_tag
# ======================================================================================================================
# stmt 43  (line 54):                 stk_n          =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        STORE_VAR        .Lstr_7 # stk_n
# ======================================================================================================================
# stmt 44  (line 55):                 stk_c          =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_5, 0 # TABLE
                        STORE_VAR        .Lstr_8 # stk_c
# ======================================================================================================================
# stmt 45  (line 56):                 init_list      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_39 # init_list
                        RETURN_VARIANT   2, 0, 204 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 46  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc206:                STNO
                        PUSH_STR         .Lstr_42, 0 # "epsilon . *init_list("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_41 # Init_list
                        RETURN
.Lpc215:                LABEL
# ======================================================================================================================
# stmt 47  (line 59):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc216:                STNO
# ======================================================================================================================
# stmt 48  (line 60):                 DEFINE('push_list(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_47, 0 # "push_list(v)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 49  (line 61):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_48, 0 # "Push_list(vs)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc246
                        LABEL
# ======================================================================================================================
# stmt 50  (line 62):  push_list      dummy          =  stk_push_frame(v)
# ======================================================================================================================
.Lpc227:                STNO
                        PUSH_VAR         .Lstr_12 # v
                        CALL_FN          .Lstr_11, 1 # stk_push_frame
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 51  (line 63):                 push_list      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_49 # push_list
                        RETURN_VARIANT   2, 0, 235 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 52  (line 64):  Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc237:                STNO
                        PUSH_STR         .Lstr_51, 0 # "epsilon . *push_list("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_50 # Push_list
                        RETURN
.Lpc246:                LABEL
# ======================================================================================================================
# stmt 53  (line 66):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc247:                STNO
# ======================================================================================================================
# stmt 54  (line 67):                 DEFINE('push_item(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_53, 0 # "push_item(v)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 55  (line 68):                 DEFINE('Push_item(vs)')                      :(push_item_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_54, 0 # "Push_item(vs)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc277
                        LABEL
# ======================================================================================================================
# stmt 56  (line 69):  push_item      dummy          =  stk_push_item(v)
# ======================================================================================================================
.Lpc258:                STNO
                        PUSH_VAR         .Lstr_12 # v
                        CALL_FN          .Lstr_20, 1 # stk_push_item
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 57  (line 70):                 push_item      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_55 # push_item
                        RETURN_VARIANT   2, 0, 266 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 58  (line 71):  Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc268:                STNO
                        PUSH_STR         .Lstr_57, 0 # "epsilon . *push_item("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_56 # Push_item
                        RETURN
.Lpc277:                LABEL
# ======================================================================================================================
# stmt 59  (line 73):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc278:                STNO
# ======================================================================================================================
# stmt 60  (line 74):                 DEFINE('pop_list()')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_59, 0 # "pop_list()"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 61  (line 75):                 DEFINE('Pop_list()')                         :(pop_list_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_60, 0 # "Pop_list()"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc305
                        LABEL
# ======================================================================================================================
# stmt 62  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ======================================================================================================================
.Lpc289:                STNO
                        CALL_FN          .Lstr_26, 0 # stk_pop_into_parent
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 63  (line 77):                 pop_list       =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_61 # pop_list
                        RETURN_VARIANT   2, 0, 296 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 64  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ======================================================================================================================
.Lpc298:                STNO
                        PUSH_VAR         .Lstr_63 # epsilon
                        PAT_DEREF
                        PAT_CAPTURE_FN   0, .Lstr_61 # pop_list, (NULL)
                        PAT_BOXVAL
                        STORE_VAR        .Lstr_62 # Pop_list
                        RETURN
.Lpc305:                LABEL
# ======================================================================================================================
# stmt 65  (line 80):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc306:                STNO
# ======================================================================================================================
# stmt 66  (line 81):                 DEFINE('pop_final(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_65, 0 # "pop_final(v)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 67  (line 82):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_66, 0 # "Pop_final(vs)"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc336
                        LABEL
# ======================================================================================================================
# stmt 68  (line 83):  pop_final      dummy          =  stk_pop_final(v)
# ======================================================================================================================
.Lpc317:                STNO
                        PUSH_VAR         .Lstr_12 # v
                        CALL_FN          .Lstr_33, 1 # stk_pop_final
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 69  (line 84):                 pop_final      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_67 # pop_final
                        RETURN_VARIANT   2, 0, 325 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 70  (line 85):  Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
# ======================================================================================================================
.Lpc327:                STNO
                        PUSH_STR         .Lstr_69, 0 # "epsilon . *pop_final("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_68 # Pop_final
                        RETURN
.Lpc336:                LABEL
# ======================================================================================================================
# stmt 71  (line 87):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc337:                STNO
# ======================================================================================================================
# stmt 72  (line 88):                 DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_71, 0 # "node_repr(f)r,sep,i,n,tag"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc417
                        LABEL
# ======================================================================================================================
# stmt 73  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ======================================================================================================================
.Lpc344:                STNO
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_74, 1 # DATATYPE
                        PUSH_VAR         .Lstr_75 # LCASE
                        PUSH_VAR         .Lstr_76 # UCASE
                        CALL_FN          .Lstr_77, 3 # REPLACE
                        PUSH_STR         .Lstr_78, 0 # "STRING"
                        CALL_FN          .Lstr_79, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc362
# ======================================================================================================================
# stmt 74  (line 90):                 node_repr      =  "'" f "'"                  :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_80, 0 # "'"
                        PUSH_VAR         .Lstr_73 # f
                        PUSH_STR         .Lstr_80, 0 # "'"
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_72 # node_repr
                        RETURN
.Lpc362:                LABEL
# ======================================================================================================================
# stmt 75  (line 91):  nr_frame       tag            =  stk_tag[f]
# ======================================================================================================================
.Lpc363:                STNO
                        PUSH_VAR         .Lstr_6 # stk_tag
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        STORE_VAR        .Lstr_82 # tag
# ======================================================================================================================
# stmt 76  (line 92):                 n              =  stk_n[f]
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        STORE_VAR        .Lstr_30 # n
# ======================================================================================================================
# stmt 77  (line 93):                 r              =  "('" tag "'"
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_83, 0 # "('"
                        PUSH_VAR         .Lstr_82 # tag
                        PUSH_STR         .Lstr_80, 0 # "'"
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_84 # r
# ======================================================================================================================
# stmt 78  (line 94):                 i              =  0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_85 # i
.Lpc383:                LABEL
# ======================================================================================================================
# stmt 79  (line 95):  nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
# ======================================================================================================================
.Lpc384:                STNO
                        PUSH_VAR         .Lstr_85 # i
                        PUSH_VAR         .Lstr_30 # n
                        CALL_FN          .Lstr_87, 2 # LT
                        PUSH_VAR         .Lstr_85 # i
                        PUSH_INT         1
                        ADD_NUM
                        CONCAT
                        STORE_VAR        .Lstr_85 # i
                        JUMP_F           .Lpc410
# ======================================================================================================================
# stmt 80  (line 96):                 r              =  r ', ' node_repr(stk_c[f][i])
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_84 # r
                        PUSH_STR         .Lstr_88, 0 # ", "
                        PUSH_VAR         .Lstr_8 # stk_c
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_85 # i
                        CALL_FN          .Lstr_23, 2 # IDX
                        CALL_FN          .Lstr_72, 1 # node_repr
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_84 # r
# ======================================================================================================================
# stmt 81  (line 97):                 i              =  i                          :(nr_lp)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_85 # i
                        STORE_VAR        .Lstr_85 # i
                        JUMP             .Lpc383
.Lpc410:                LABEL
# ======================================================================================================================
# stmt 82  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ======================================================================================================================
.Lpc411:                STNO
                        PUSH_VAR         .Lstr_84 # r
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        STORE_VAR        .Lstr_72 # node_repr
                        RETURN
.Lpc417:                LABEL
# ======================================================================================================================
# stmt 83  (line 100):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc418:                STNO
# ======================================================================================================================
# stmt 84  (line 101):                 DEFINE('pp_node(f,indent,suffix)r,pad,tag,n,i,nxt') :(pp_node_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_91, 0 # "pp_node(f,indent,suffix)r,pad,tag,n,i,nx..."
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc555
                        LABEL
# ======================================================================================================================
# stmt 85  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ======================================================================================================================
.Lpc425:                STNO
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_74, 1 # DATATYPE
                        PUSH_VAR         .Lstr_75 # LCASE
                        PUSH_VAR         .Lstr_76 # UCASE
                        CALL_FN          .Lstr_77, 3 # REPLACE
                        PUSH_STR         .Lstr_78, 0 # "STRING"
                        CALL_FN          .Lstr_79, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc449
# ======================================================================================================================
# stmt 86  (line 103):                 OUTPUT         =  DUPL(' ', indent) "'" f "'" suffix  :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_93, 0 # " "
                        PUSH_VAR         .Lstr_94 # indent
                        CALL_FN          .Lstr_95, 2 # DUPL
                        PUSH_STR         .Lstr_80, 0 # "'"
                        PUSH_VAR         .Lstr_73 # f
                        PUSH_STR         .Lstr_80, 0 # "'"
                        PUSH_VAR         .Lstr_96 # suffix
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_97 # OUTPUT
                        RETURN
.Lpc449:                LABEL
# ======================================================================================================================
# stmt 87  (line 104):  pp_frame       r              =  node_repr(f)
# ======================================================================================================================
.Lpc450:                STNO
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_72, 1 # node_repr
                        STORE_VAR        .Lstr_84 # r
# ======================================================================================================================
# stmt 88  (line 105):                 pad            =  DUPL(' ', indent)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_93, 0 # " "
                        PUSH_VAR         .Lstr_94 # indent
                        CALL_FN          .Lstr_95, 2 # DUPL
                        STORE_VAR        .Lstr_99 # pad
# ======================================================================================================================
# stmt 89  (line 106):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ======================================================================================================================
                        STNO
                        PUSH_INT         80
                        PUSH_VAR         .Lstr_94 # indent
                        PUSH_VAR         .Lstr_84 # r
                        CALL_FN          .Lstr_100, 1 # SIZE
                        ADD_NUM
                        CALL_FN          .Lstr_101, 2 # GT
                        VOID_POP
                        JUMP_F           .Lpc476
# ======================================================================================================================
# stmt 90  (line 107):                 OUTPUT         =  pad r suffix               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_99 # pad
                        PUSH_VAR         .Lstr_84 # r
                        PUSH_VAR         .Lstr_96 # suffix
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_97 # OUTPUT
                        RETURN
.Lpc476:                LABEL
# ======================================================================================================================
# stmt 91  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ======================================================================================================================
.Lpc477:                STNO
                        PUSH_VAR         .Lstr_6 # stk_tag
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        STORE_VAR        .Lstr_82 # tag
# ======================================================================================================================
# stmt 92  (line 109):                 n              =  stk_n[f]
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_7 # stk_n
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        STORE_VAR        .Lstr_30 # n
# ======================================================================================================================
# stmt 93  (line 110):                 OUTPUT         =  pad '( ' "'" tag "',"
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_99 # pad
                        PUSH_STR         .Lstr_103, 0 # "( "
                        PUSH_STR         .Lstr_80, 0 # "'"
                        PUSH_VAR         .Lstr_82 # tag
                        PUSH_STR         .Lstr_104, 0 # "',"
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_97 # OUTPUT
# ======================================================================================================================
# stmt 94  (line 111):                 i              =  0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_85 # i
.Lpc501:                LABEL
# ======================================================================================================================
# stmt 95  (line 112):  pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
# ======================================================================================================================
.Lpc502:                STNO
                        PUSH_VAR         .Lstr_85 # i
                        PUSH_VAR         .Lstr_30 # n
                        CALL_FN          .Lstr_87, 2 # LT
                        PUSH_VAR         .Lstr_85 # i
                        PUSH_INT         1
                        ADD_NUM
                        CONCAT
                        STORE_VAR        .Lstr_85 # i
                        JUMP_F           .Lpc552
# ======================================================================================================================
# stmt 96  (line 113):                 nxt            =  LT(i, n) i                 :F(pp_wlast)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_85 # i
                        PUSH_VAR         .Lstr_30 # n
                        CALL_FN          .Lstr_87, 2 # LT
                        PUSH_VAR         .Lstr_85 # i
                        CONCAT
                        STORE_VAR        .Lstr_106 # nxt
                        JUMP_F           .Lpc536
# ======================================================================================================================
# stmt 97  (line 114):                 pp_node(stk_c[f][i], indent + 2, ',')
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_8 # stk_c
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_85 # i
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_94 # indent
                        PUSH_INT         2
                        ADD_NUM
                        PUSH_STR         .Lstr_107, 0 # ","
                        CALL_FN          .Lstr_92, 3 # pp_node
                        VOID_POP
# ======================================================================================================================
# stmt 98  (line 115):                 i              =  i                          :(pp_wch)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_85 # i
                        STORE_VAR        .Lstr_85 # i
                        JUMP             .Lpc501
.Lpc536:                LABEL
# ======================================================================================================================
# stmt 99  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ======================================================================================================================
.Lpc537:                STNO
                        PUSH_VAR         .Lstr_8 # stk_c
                        PUSH_VAR         .Lstr_73 # f
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_85 # i
                        CALL_FN          .Lstr_23, 2 # IDX
                        PUSH_VAR         .Lstr_94 # indent
                        PUSH_INT         2
                        ADD_NUM
                        PUSH_STR         .Lstr_44, 0 # ")"
                        PUSH_VAR         .Lstr_96 # suffix
                        CONCAT
                        CALL_FN          .Lstr_92, 3 # pp_node
                        VOID_POP
                        RETURN
.Lpc552:                LABEL
# ======================================================================================================================
# stmt 100  (line 117):  pp_wdone                                                    :(RETURN)
# ======================================================================================================================
.Lpc553:                STNO
                        RETURN
.Lpc555:                LABEL
# ======================================================================================================================
# stmt 101  (line 119):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc556:                STNO
# ======================================================================================================================
# stmt 102  (line 120):                 DEFINE('pp_bank()')                          :(pp_bank_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_111, 0 # "pp_bank()"
                        CALL_FN          .Lstr_10, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc574
                        LABEL
# ======================================================================================================================
# stmt 103  (line 121):  pp_bank        pp_node(bank, 0, '')
# ======================================================================================================================
.Lpc563:                STNO
                        PUSH_VAR         .Lstr_113 # bank
                        PUSH_INT         0
                        PUSH_STR         .Lstr_40, 0 # ""
                        CALL_FN          .Lstr_92, 3 # pp_node
                        VOID_POP
# ======================================================================================================================
# stmt 104  (line 122):                 pp_bank        =  .dummy                     :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_16, 0 # "dummy"
                        CALL_FN          .Lstr_17, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_112 # pp_bank
                        RETURN
.Lpc574:                LABEL
# ======================================================================================================================
# stmt 105  (line 124):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc575:                STNO
# ======================================================================================================================
# stmt 106  (line 125):                 delim          =  SPAN(' ' nl)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_93, 0 # " "
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        PAT_SPAN
                        PAT_BOXVAL
                        STORE_VAR        .Lstr_115 # delim
# ======================================================================================================================
# stmt 107  (line 126):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_116, 0 # "( )"
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        PAT_NOTANY
                        PAT_BOXVAL
                        PUSH_STR         .Lstr_116, 0 # "( )"
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        PAT_BREAK
                        PAT_BOXVAL
                        CONCAT
                        STORE_VAR        .Lstr_117 # word
# ======================================================================================================================
# stmt 108  (line 128):                 group          =
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_118, 0 # "("
                        PUSH_VAR         .Lstr_117 # word
                        PAT_DEREF
                        PAT_CAPTURE      0, .Lstr_82 # tag kind=0
                        PAT_BOXVAL
                        PUSH_STR         .Lstr_82, 0 # "tag"
                        CALL_FN          .Lstr_50, 1 # Push_list
                        PAT_REFNAME      .Lstr_115 # delim
                        PAT_REFNAME      .Lstr_119 # group
                        PUSH_VAR         .Lstr_117 # word
                        PAT_DEREF
                        PAT_CAPTURE      0, .Lstr_120 # wrd kind=0
                        PUSH_STR         .Lstr_120, 0 # "wrd"
                        CALL_FN          .Lstr_56, 1 # Push_item
                        PAT_DEREF
                        PAT_CAT
                        PAT_ALT
                        PAT_CAT
                        PAT_ARBNO
                        PAT_BOXVAL
                        CALL_FN          .Lstr_62, 0 # Pop_list
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_119 # group
# ======================================================================================================================
# stmt 109  (line 140):                 spat           =  ('(' BAL ')') . item
# ======================================================================================================================
                        STNO
                        PAT_LIT          .Lstr_118 # arg="("
                        PUSH_VAR         .Lstr_121 # BAL
                        PAT_DEREF
                        PAT_LIT          .Lstr_44 # arg=")"
                        PAT_CAT
                        PAT_CAT
                        PAT_CAPTURE      0, .Lstr_122 # item kind=0
                        PAT_BOXVAL
                        STORE_VAR        .Lstr_123 # spat
.Lpc635:                LABEL
# ======================================================================================================================
# stmt 110  (line 142):  slurp          line           =  INPUT                      :F(slurp_done)
# ======================================================================================================================
.Lpc636:                STNO
                        PUSH_VAR         .Lstr_125 # INPUT
                        STORE_VAR        .Lstr_126 # line
                        JUMP_F           .Lpc648
# ======================================================================================================================
# stmt 111  (line 143):                 src            =  src line nl                :(slurp)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_127 # src
                        PUSH_VAR         .Lstr_126 # line
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_127 # src
                        JUMP             .Lpc635
.Lpc648:                LABEL
# ======================================================================================================================
# stmt 112  (line 145):                 dummy          =  init_list('bank')
# ======================================================================================================================
.Lpc649:                STNO
# ======================================================================================================================
# stmt 113  (line 145):                 dummy          =  init_list('bank')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_113, 0 # "bank"
                        CALL_FN          .Lstr_39, 1 # init_list
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 114  (line 146):                 dummy          =  stk_push_frame('BANK')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_129, 0 # "BANK"
                        CALL_FN          .Lstr_11, 1 # stk_push_frame
                        STORE_VAR        .Lstr_16 # dummy
.Lpc658:                LABEL
# ======================================================================================================================
# stmt 115  (line 147):  loop           src            spat =  ''                    :F(all_done)
# ======================================================================================================================
.Lpc659:                STNO
                        PUSH_VAR         .Lstr_123 # spat
                        PAT_DEREF
                        PUSH_VAR         .Lstr_127 # src
                        PUSH_STR         .Lstr_40, 0 # ""
                        EXEC_STMT_VARIANT 1, .Lstr_127 # subj=src
                        JUMP_F           .Lpc691
# ======================================================================================================================
# stmt 116  (line 148):                 dummy          =  stk_push_frame('ROOT')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_131, 0 # "ROOT"
                        CALL_FN          .Lstr_11, 1 # stk_push_frame
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 117  (line 149):                 item           group                         :F(parse_fail)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_119 # group
                        PAT_DEREF
                        PUSH_VAR         .Lstr_122 # item
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0, .Lstr_122 # subj=item
                        JUMP_F           .Lpc681
# ======================================================================================================================
# stmt 118  (line 150):                 dummy          =  stk_pop_into_parent()      :(loop)
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_26, 0 # stk_pop_into_parent
                        STORE_VAR        .Lstr_16 # dummy
                        JUMP             .Lpc658
.Lpc681:                LABEL
# ======================================================================================================================
# stmt 119  (line 151):  parse_fail     OUTPUT         =  'Parse failed on: ' item
# ======================================================================================================================
.Lpc682:                STNO
                        PUSH_STR         .Lstr_133, 0 # "Parse failed on: "
                        PUSH_VAR         .Lstr_122 # item
                        CONCAT
                        STORE_VAR        .Lstr_97 # OUTPUT
# ======================================================================================================================
# stmt 120  (line 152):                 dummy          =  stk_pop_into_parent()      :(loop)
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_26, 0 # stk_pop_into_parent
                        STORE_VAR        .Lstr_16 # dummy
                        JUMP             .Lpc658
.Lpc691:                LABEL
# ======================================================================================================================
# stmt 121  (line 153):  all_done       dummy          =  stk_pop_final('bank')
# ======================================================================================================================
.Lpc692:                STNO
                        PUSH_STR         .Lstr_113, 0 # "bank"
                        CALL_FN          .Lstr_33, 1 # stk_pop_final
                        STORE_VAR        .Lstr_16 # dummy
# ======================================================================================================================
# stmt 122  (line 154):                 dummy          =  pp_bank()                  :(END)
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_112, 0 # pp_bank
                        STORE_VAR        .Lstr_16 # dummy
                        JUMP             .Lpc700
.Lpc700:                LABEL
# ======================================================================================================================
# stmt 123
# ======================================================================================================================
.Lpc701:                STNO
                        HALT
# -- epilogue -------------------------------------------
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
