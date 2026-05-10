                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.Lstr_0:                .string          "nl"
.Lstr_1:                .string          "ALPHABET"
.Lstr_2:                .string          "list(head,tail)"
.Lstr_3:                .string          "DATA"
.Lstr_4:                .string          "list_reverse(lst)acc,cur"
.Lstr_5:                .string          "DEFINE"
.Lstr_6:                .string          "list_reverse"
.Lstr_7:                .string          ""
.Lstr_8:                .string          "acc"
.Lstr_9:                .string          "lst"
.Lstr_10:               .string          "cur"
.Lstr_11:               .string          "lr1"
.Lstr_12:               .string          "DIFFER"
.Lstr_13:               .string          "head"
.Lstr_14:               .string          "list"
.Lstr_15:               .string          "tail"
.Lstr_16:               .string          "lr_done"
.Lstr_17:               .string          "list_reverse_end"
.Lstr_18:               .string          "stk_push_frame(v)"
.Lstr_19:               .string          "stk_push_frame"
.Lstr_20:               .string          "v"
.Lstr_21:               .string          "stk"
.Lstr_22:               .string          "dummy"
.Lstr_23:               .string          "NAME_PUSH"
.Lstr_24:               .string          "stk_push_frame_end"
.Lstr_25:               .string          "stk_push_item(v)"
.Lstr_26:               .string          "stk_push_item"
.Lstr_27:               .string          "head_SET"
.Lstr_28:               .string          "stk_push_item_end"
.Lstr_29:               .string          "stk_pop_into_parent()child"
.Lstr_30:               .string          "stk_pop_into_parent"
.Lstr_31:               .string          "child"
.Lstr_32:               .string          "stk_pop_into_parent_end"
.Lstr_33:               .string          "stk_pop_final(var)"
.Lstr_34:               .string          "stk_pop_final"
.Lstr_35:               .string          "var"
.Lstr_36:               .string          "ASGN_INDIR"
.Lstr_37:               .string          "stk_pop_final_end"
.Lstr_38:               .string          "init_list(v)"
.Lstr_39:               .string          "Init_list(vs)"
.Lstr_40:               .string          "init_list"
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
.Lstr_71:               .string          " "
.Lstr_72:               .string          "delim"
.Lstr_73:               .string          "( )"
.Lstr_74:               .string          "word"
.Lstr_75:               .string          "("
.Lstr_76:               .string          "tag"
.Lstr_77:               .string          "group"
.Lstr_78:               .string          "wrd"
.Lstr_79:               .string          "'bank'"
.Lstr_80:               .string          "'BANK'"
.Lstr_81:               .string          "'ROOT'"
.Lstr_82:               .string          "treebank"
.Lstr_83:               .string          "node_repr(node)r,c,sep"
.Lstr_84:               .string          "node_repr"
.Lstr_85:               .string          "node"
.Lstr_86:               .string          "DATATYPE"
.Lstr_87:               .string          "LCASE"
.Lstr_88:               .string          "UCASE"
.Lstr_89:               .string          "REPLACE"
.Lstr_90:               .string          "STRING"
.Lstr_91:               .string          "IDENT"
.Lstr_92:               .string          "'"
.Lstr_93:               .string          "nr_list"
.Lstr_94:               .string          "r"
.Lstr_95:               .string          "sep"
.Lstr_96:               .string          "c"
.Lstr_97:               .string          "nr_lp"
.Lstr_98:               .string          ", "
.Lstr_99:               .string          "nr_done"
.Lstr_100:              .string          "node_repr_end"
.Lstr_101:              .string          "pp_node(node,indent,suffix)r,pad,c,nxt"
.Lstr_102:              .string          "pp_node"
.Lstr_103:              .string          "indent"
.Lstr_104:              .string          "DUPL"
.Lstr_105:              .string          "pad"
.Lstr_106:              .string          "SIZE"
.Lstr_107:              .string          "GT"
.Lstr_108:              .string          "suffix"
.Lstr_109:              .string          "OUTPUT"
.Lstr_110:              .string          "pp_wrap"
.Lstr_111:              .string          "( "
.Lstr_112:              .string          "',"
.Lstr_113:              .string          "pp_wch"
.Lstr_114:              .string          "nxt"
.Lstr_115:              .string          ","
.Lstr_116:              .string          "pp_wlast"
.Lstr_117:              .string          "pp_wdone"
.Lstr_118:              .string          "pp_node_end"
.Lstr_119:              .string          "pp_bank()cur"
.Lstr_120:              .string          "pp_bank"
.Lstr_121:              .string          "bank"
.Lstr_122:              .string          "pp_bank_end"
.Lstr_123:              .string          "slurp"
.Lstr_124:              .string          "INPUT"
.Lstr_125:              .string          "line"
.Lstr_126:              .string          "src"
.Lstr_127:              .string          "slurp_done"
.Lstr_128:              .string          "main_fail"
.Lstr_129:              .string          "Pattern match failed"
.Lstr_130:              .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:
                        .quad            .Lstr_6
                        .quad            .Lpc20
                        .quad            .Lstr_11
                        .quad            .Lpc27
                        .quad            .Lstr_16
                        .quad            .Lpc44
                        .quad            .Lstr_17
                        .quad            .Lpc49
                        .quad            .Lstr_19
                        .quad            .Lpc56
                        .quad            .Lstr_24
                        .quad            .Lpc69
                        .quad            .Lstr_26
                        .quad            .Lpc76
                        .quad            .Lstr_28
                        .quad            .Lpc89
                        .quad            .Lstr_30
                        .quad            .Lpc96
                        .quad            .Lstr_32
                        .quad            .Lpc119
                        .quad            .Lstr_34
                        .quad            .Lpc126
                        .quad            .Lstr_37
                        .quad            .Lpc142
                        .quad            .Lstr_40
                        .quad            .Lpc153
                        .quad            .Lstr_41
                        .quad            .Lpc166
                        .quad            .Lstr_46
                        .quad            .Lpc176
                        .quad            .Lstr_49
                        .quad            .Lpc187
                        .quad            .Lstr_50
                        .quad            .Lpc197
                        .quad            .Lstr_52
                        .quad            .Lpc207
                        .quad            .Lstr_55
                        .quad            .Lpc218
                        .quad            .Lstr_56
                        .quad            .Lpc228
                        .quad            .Lstr_58
                        .quad            .Lpc238
                        .quad            .Lstr_61
                        .quad            .Lpc249
                        .quad            .Lstr_62
                        .quad            .Lpc258
                        .quad            .Lstr_64
                        .quad            .Lpc266
                        .quad            .Lstr_67
                        .quad            .Lpc277
                        .quad            .Lstr_68
                        .quad            .Lpc287
                        .quad            .Lstr_70
                        .quad            .Lpc297
                        .quad            .Lstr_84
                        .quad            .Lpc385
                        .quad            .Lstr_93
                        .quad            .Lpc404
                        .quad            .Lstr_97
                        .quad            .Lpc414
                        .quad            .Lstr_99
                        .quad            .Lpc437
                        .quad            .Lstr_100
                        .quad            .Lpc444
                        .quad            .Lstr_102
                        .quad            .Lpc451
                        .quad            .Lstr_110
                        .quad            .Lpc478
                        .quad            .Lstr_113
                        .quad            .Lpc495
                        .quad            .Lstr_116
                        .quad            .Lpc523
                        .quad            .Lstr_117
                        .quad            .Lpc536
                        .quad            .Lstr_118
                        .quad            .Lpc539
                        .quad            .Lstr_120
                        .quad            .Lpc546
                        .quad            .Lstr_122
                        .quad            .Lpc558
                        .quad            .Lstr_123
                        .quad            .Lpc560
                        .quad            .Lstr_127
                        .quad            .Lpc573
                        .quad            .Lstr_128
                        .quad            .Lpc585
                        .quad            .Lstr_130
                        .quad            .Lpc589
                        .quad            0 # sentinel
                        .quad            0
                        .text
                        .intel_syntax    noprefix
                        .text
                        .global          pat_inv_0_α
                        .global          pat_inv_0_β
                        .global          pat_inv_0_γ
                        .global          pat_inv_0_ω
pat_inv_0_α:
                        lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               pat_inv_0_α_body
                        jmp              pat_inv_0_β
pat_inv_0_α_body:
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
                        .globl           cap1_child_α
cap1_child_α:
                        lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               cap1_α_body
                        jmp              cap1_β
cap1_α_body:
                        .section         .data
.Llen2_z:
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 0
                        call             bb_len@PLT
                        test             rax, rax
                        jne              cap1_γ
                        jmp              cap1_ω
cap1_β:
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 1
                        call             bb_len@PLT
                        test             rax, rax
                        jne              cap1_γ
                        jmp              cap1_ω
cap1_γ:
                        lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
cap1_ω:
                        mov              eax, 99
                        xor              edx, edx
                        ret
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 0
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              pat_inv_0_γ
                        jmp              xcat0_right_ω
xcat0_right_β:
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 1
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              pat_inv_0_γ
                        jmp              xcat0_right_ω
xcat0_right_ω:
                        jmp              xcat0_left_β
pat_inv_0_β:
                        jmp              xcat0_right_β
xcat0_ω:
                        jmp              pat_inv_0_ω
pat_inv_0_γ:
                        lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
pat_inv_0_ω:
                        mov              eax, 99
                        xor              edx, edx
                        ret
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lchunk_registry] # EM-7d: register user-defined function expressions
                        call             rt_register_expressions@PLT
                        lea              rdi, [rip + .Lcap1_data] # cap fixup 0 (static): .Lcap1_data -> cap1_child_α
                        lea              rsi, [rip + cap1_child_α]
                        call             rt_patch_cap_fn@PLT
                        call             rt_init@PLT # rt_init(argc, argv)
# source-file: treebank-list.sno  (147 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
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
# stmt 3  (line 10):                 DEFINE('list_reverse(lst)acc,cur')           :(list_reverse_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_4, 0 # "list_reverse(lst)acc,cur"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc48
                        LABEL
# ======================================================================================================================
# stmt 4  (line 11):  list_reverse   acc            =
# ======================================================================================================================
.Lpc20:                 STNO
                        PUSH_STR         .Lstr_7, 0 # ""
                        STORE_VAR        .Lstr_8 # acc
# ======================================================================================================================
# stmt 5  (line 12):                 cur            =  lst
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_9 # lst
                        STORE_VAR        .Lstr_10 # cur
.Lpc26:                 LABEL
# ======================================================================================================================
# stmt 6  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ======================================================================================================================
.Lpc27:                 STNO
                        PUSH_VAR         .Lstr_10 # cur
                        CALL_FN          .Lstr_12, 1 # DIFFER
                        VOID_POP
                        JUMP_F           .Lpc43
# ======================================================================================================================
# stmt 7  (line 14):                 acc            =  list(head(cur), acc)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_10 # cur
                        CALL_FN          .Lstr_13, 1 # head
                        PUSH_VAR         .Lstr_8 # acc
                        CALL_FN          .Lstr_14, 2 # list
                        STORE_VAR        .Lstr_8 # acc
# ======================================================================================================================
# stmt 8  (line 15):                 cur            =  tail(cur)                  :(lr1)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_10 # cur
                        CALL_FN          .Lstr_15, 1 # tail
                        STORE_VAR        .Lstr_10 # cur
                        JUMP             .Lpc26
.Lpc43:                 LABEL
# ======================================================================================================================
# stmt 9  (line 16):  lr_done        list_reverse   =  acc                        :(RETURN)
# ======================================================================================================================
.Lpc44:                 STNO
                        PUSH_VAR         .Lstr_8 # acc
                        STORE_VAR        .Lstr_6 # list_reverse
                        RETURN
.Lpc48:                 LABEL
# ======================================================================================================================
# stmt 10  (line 18):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc49:                 STNO
# ======================================================================================================================
# stmt 11  (line 19):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_18, 0 # "stk_push_frame(v)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc68
                        LABEL
# ======================================================================================================================
# stmt 12  (line 20):  stk_push_frame stk            =  list(list(v,), stk)
# ======================================================================================================================
.Lpc56:                 STNO
                        PUSH_VAR         .Lstr_20 # v
                        PUSH_NULL
                        CALL_FN          .Lstr_14, 2 # list
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_14, 2 # list
                        STORE_VAR        .Lstr_21 # stk
# ======================================================================================================================
# stmt 13  (line 21):                 stk_push_frame =  .dummy                     :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_19 # stk_push_frame
                        RETURN
.Lpc68:                 LABEL
# ======================================================================================================================
# stmt 14  (line 23):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc69:                 STNO
# ======================================================================================================================
# stmt 15  (line 24):                 DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_25, 0 # "stk_push_item(v)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc88
                        LABEL
# ======================================================================================================================
# stmt 16  (line 25):  stk_push_item  head(stk)      =  list(v, head(stk))
# ======================================================================================================================
.Lpc76:                 STNO
                        PUSH_VAR         .Lstr_20 # v
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_13, 1 # head
                        CALL_FN          .Lstr_14, 2 # list
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_27, 2 # head_SET
# ======================================================================================================================
# stmt 17  (line 26):                 stk_push_item  =  .dummy                     :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_26 # stk_push_item
                        RETURN
.Lpc88:                 LABEL
# ======================================================================================================================
# stmt 18  (line 28):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc89:                 STNO
# ======================================================================================================================
# stmt 19  (line 29):                 DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_29, 0 # "stk_pop_into_parent()child"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc118
                        LABEL
# ======================================================================================================================
# stmt 20  (line 31):                 child          =  list_reverse(head(stk))
# ======================================================================================================================
.Lpc96:                 STNO
# ======================================================================================================================
# stmt 21  (line 31):                 child          =  list_reverse(head(stk))
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_13, 1 # head
                        CALL_FN          .Lstr_6, 1 # list_reverse
                        STORE_VAR        .Lstr_31 # child
# ======================================================================================================================
# stmt 22  (line 32):                 stk            =  tail(stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_15, 1 # tail
                        STORE_VAR        .Lstr_21 # stk
# ======================================================================================================================
# stmt 23  (line 33):                 head(stk)      =  list(child, head(stk))
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_31 # child
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_13, 1 # head
                        CALL_FN          .Lstr_14, 2 # list
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_27, 2 # head_SET
# ======================================================================================================================
# stmt 24  (line 34):                 stk_pop_into_parent =  .dummy                :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_30 # stk_pop_into_parent
                        RETURN
.Lpc118:                LABEL
# ======================================================================================================================
# stmt 25  (line 36):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc119:                STNO
# ======================================================================================================================
# stmt 26  (line 37):                 DEFINE('stk_pop_final(var)')                 :(stk_pop_final_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_33, 0 # "stk_pop_final(var)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc141
                        LABEL
# ======================================================================================================================
# stmt 27  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ======================================================================================================================
.Lpc126:                STNO
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_13, 1 # head
                        CALL_FN          .Lstr_6, 1 # list_reverse
                        PUSH_VAR         .Lstr_35 # var
                        CALL_FN          .Lstr_36, 2 # ASGN_INDIR
# ======================================================================================================================
# stmt 28  (line 39):                 stk            =  tail(stk)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_21 # stk
                        CALL_FN          .Lstr_15, 1 # tail
                        STORE_VAR        .Lstr_21 # stk
# ======================================================================================================================
# stmt 29  (line 40):                 stk_pop_final  =  .dummy                     :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_34 # stk_pop_final
                        RETURN
.Lpc141:                LABEL
# ======================================================================================================================
# stmt 30  (line 42):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc142:                STNO
# ======================================================================================================================
# stmt 31  (line 43):                 DEFINE('init_list(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_38, 0 # "init_list(v)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 32  (line 44):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_39, 0 # "Init_list(vs)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc175
                        LABEL
# ======================================================================================================================
# stmt 33  (line 45):  init_list      $v             =
# ======================================================================================================================
.Lpc153:                STNO
                        PUSH_STR         .Lstr_7, 0 # ""
                        PUSH_VAR         .Lstr_20 # v
                        CALL_FN          .Lstr_36, 2 # ASGN_INDIR
# ======================================================================================================================
# stmt 34  (line 46):                 stk            =
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_7, 0 # ""
                        STORE_VAR        .Lstr_21 # stk
# ======================================================================================================================
# stmt 35  (line 47):                 init_list      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_40 # init_list
                        RETURN_VARIANT   2, 0, 164 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 36  (line 48):  Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
# ======================================================================================================================
.Lpc166:                STNO
                        PUSH_STR         .Lstr_42, 0 # "epsilon . *init_list("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_41 # Init_list
                        RETURN
.Lpc175:                LABEL
# ======================================================================================================================
# stmt 37  (line 50):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc176:                STNO
# ======================================================================================================================
# stmt 38  (line 51):                 DEFINE('push_list(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_47, 0 # "push_list(v)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 39  (line 52):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_48, 0 # "Push_list(vs)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc206
                        LABEL
# ======================================================================================================================
# stmt 40  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ======================================================================================================================
.Lpc187:                STNO
                        PUSH_VAR         .Lstr_20 # v
                        CALL_FN          .Lstr_19, 1 # stk_push_frame
                        STORE_VAR        .Lstr_22 # dummy
# ======================================================================================================================
# stmt 41  (line 54):                 push_list      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_49 # push_list
                        RETURN_VARIANT   2, 0, 195 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 42  (line 55):  Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
# ======================================================================================================================
.Lpc197:                STNO
                        PUSH_STR         .Lstr_51, 0 # "epsilon . *push_list("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_50 # Push_list
                        RETURN
.Lpc206:                LABEL
# ======================================================================================================================
# stmt 43  (line 57):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc207:                STNO
# ======================================================================================================================
# stmt 44  (line 58):                 DEFINE('push_item(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_53, 0 # "push_item(v)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 45  (line 59):                 DEFINE('Push_item(vs)')                      :(push_item_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_54, 0 # "Push_item(vs)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc237
                        LABEL
# ======================================================================================================================
# stmt 46  (line 60):  push_item      dummy          =  stk_push_item(v)
# ======================================================================================================================
.Lpc218:                STNO
                        PUSH_VAR         .Lstr_20 # v
                        CALL_FN          .Lstr_26, 1 # stk_push_item
                        STORE_VAR        .Lstr_22 # dummy
# ======================================================================================================================
# stmt 47  (line 61):                 push_item      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_55 # push_item
                        RETURN_VARIANT   2, 0, 226 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 48  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ======================================================================================================================
.Lpc228:                STNO
                        PUSH_STR         .Lstr_57, 0 # "epsilon . *push_item("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_56 # Push_item
                        RETURN
.Lpc237:                LABEL
# ======================================================================================================================
# stmt 49  (line 64):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc238:                STNO
# ======================================================================================================================
# stmt 50  (line 65):                 DEFINE('pop_list()')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_59, 0 # "pop_list()"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 51  (line 66):                 DEFINE('Pop_list()')                         :(pop_list_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_60, 0 # "Pop_list()"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc265
                        LABEL
# ======================================================================================================================
# stmt 52  (line 67):  pop_list       dummy          =  stk_pop_into_parent()
# ======================================================================================================================
.Lpc249:                STNO
                        CALL_FN          .Lstr_30, 0 # stk_pop_into_parent
                        STORE_VAR        .Lstr_22 # dummy
# ======================================================================================================================
# stmt 53  (line 68):                 pop_list       =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_61 # pop_list
                        RETURN_VARIANT   2, 0, 256 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 54  (line 69):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ======================================================================================================================
.Lpc258:                STNO
                        PUSH_VAR         .Lstr_63 # epsilon
                        PAT_DEREF
                        PAT_CAPTURE_FN   0, .Lstr_61 # pop_list, (NULL)
                        PAT_BOXVAL
                        STORE_VAR        .Lstr_62 # Pop_list
                        RETURN
.Lpc265:                LABEL
# ======================================================================================================================
# stmt 55  (line 71):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc266:                STNO
# ======================================================================================================================
# stmt 56  (line 72):                 DEFINE('pop_final(v)')
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_65, 0 # "pop_final(v)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
# ======================================================================================================================
# stmt 57  (line 73):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_66, 0 # "Pop_final(vs)"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc296
                        LABEL
# ======================================================================================================================
# stmt 58  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ======================================================================================================================
.Lpc277:                STNO
                        PUSH_VAR         .Lstr_20 # v
                        CALL_FN          .Lstr_34, 1 # stk_pop_final
                        STORE_VAR        .Lstr_22 # dummy
# ======================================================================================================================
# stmt 59  (line 75):                 pop_final      =  .dummy                     :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_67 # pop_final
                        RETURN_VARIANT   2, 0, 285 # SM_NRETURN
                        LABEL
# ======================================================================================================================
# stmt 60  (line 76):  Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
# ======================================================================================================================
.Lpc287:                STNO
                        PUSH_STR         .Lstr_69, 0 # "epsilon . *pop_final("
                        PUSH_VAR         .Lstr_43 # vs
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        CONCAT
                        CALL_FN          .Lstr_45, 1 # EVAL
                        STORE_VAR        .Lstr_68 # Pop_final
                        RETURN
.Lpc296:                LABEL
# ======================================================================================================================
# stmt 61  (line 78):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc297:                STNO
# ======================================================================================================================
# stmt 62  (line 79):                 delim          =  SPAN(' ' nl)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_71, 0 # " "
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        PAT_SPAN
                        PAT_BOXVAL
                        STORE_VAR        .Lstr_72 # delim
# ======================================================================================================================
# stmt 63  (line 80):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_73, 0 # "( )"
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        PAT_NOTANY
                        PAT_BOXVAL
                        PUSH_STR         .Lstr_73, 0 # "( )"
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        PAT_BREAK
                        PAT_BOXVAL
                        CONCAT
                        STORE_VAR        .Lstr_74 # word
# ======================================================================================================================
# stmt 64  (line 82):                 group          =
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_75, 0 # "("
                        PUSH_VAR         .Lstr_74 # word
                        PAT_DEREF
                        PAT_CAPTURE      0, .Lstr_76 # tag kind=0
                        PAT_BOXVAL
                        PUSH_STR         .Lstr_76, 0 # "tag"
                        CALL_FN          .Lstr_50, 1 # Push_list
                        PAT_REFNAME      .Lstr_72 # delim
                        PAT_REFNAME      .Lstr_77 # group
                        PUSH_VAR         .Lstr_74 # word
                        PAT_DEREF
                        PAT_CAPTURE      0, .Lstr_78 # wrd kind=0
                        PUSH_STR         .Lstr_78, 0 # "wrd"
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
                        STORE_VAR        .Lstr_77 # group
# ======================================================================================================================
# stmt 65  (line 94):                 treebank       =
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        PAT_POS
                        PAT_BOXVAL
                        PUSH_STR         .Lstr_79, 0 # "'bank'"
                        CALL_FN          .Lstr_41, 1 # Init_list
                        PUSH_STR         .Lstr_80, 0 # "'BANK'"
                        CALL_FN          .Lstr_50, 1 # Push_list
                        PUSH_STR         .Lstr_81, 0 # "'ROOT'"
                        CALL_FN          .Lstr_50, 1 # Push_list
                        PAT_DEREF
                        PAT_REFNAME      .Lstr_77 # group
                        PAT_ARBNO
                        PAT_REFNAME      .Lstr_72 # delim
                        CALL_FN          .Lstr_62, 0 # Pop_list
                        PAT_DEREF
                        PAT_CAT
                        PAT_CAT
                        PAT_CAT
                        PAT_ARBNO
                        PAT_BOXVAL
                        PUSH_STR         .Lstr_79, 0 # "'bank'"
                        CALL_FN          .Lstr_68, 1 # Pop_final
                        PUSH_INT         0
                        PAT_RPOS
                        PAT_BOXVAL
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_82 # treebank
# ======================================================================================================================
# stmt 66  (line 107):                 DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_83, 0 # "node_repr(node)r,c,sep"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc443
                        LABEL
# ======================================================================================================================
# stmt 67  (line 108):  node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
# ======================================================================================================================
.Lpc385:                STNO
                        PUSH_VAR         .Lstr_85 # node
                        CALL_FN          .Lstr_86, 1 # DATATYPE
                        PUSH_VAR         .Lstr_87 # LCASE
                        PUSH_VAR         .Lstr_88 # UCASE
                        CALL_FN          .Lstr_89, 3 # REPLACE
                        PUSH_STR         .Lstr_90, 0 # "STRING"
                        CALL_FN          .Lstr_91, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc403
# ======================================================================================================================
# stmt 68  (line 109):                 node_repr      =  "'" node "'"               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_92, 0 # "'"
                        PUSH_VAR         .Lstr_85 # node
                        PUSH_STR         .Lstr_92, 0 # "'"
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_84 # node_repr
                        RETURN
.Lpc403:                LABEL
# ======================================================================================================================
# stmt 69  (line 110):  nr_list        r              =  '('
# ======================================================================================================================
.Lpc404:                STNO
                        PUSH_STR         .Lstr_75, 0 # "("
                        STORE_VAR        .Lstr_94 # r
# ======================================================================================================================
# stmt 70  (line 111):                 sep            =
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_7, 0 # ""
                        STORE_VAR        .Lstr_95 # sep
# ======================================================================================================================
# stmt 71  (line 112):                 c              =  node
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_85 # node
                        STORE_VAR        .Lstr_96 # c
.Lpc413:                LABEL
# ======================================================================================================================
# stmt 72  (line 113):  nr_lp          DIFFER(c)                                    :F(nr_done)
# ======================================================================================================================
.Lpc414:                STNO
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_12, 1 # DIFFER
                        VOID_POP
                        JUMP_F           .Lpc436
# ======================================================================================================================
# stmt 73  (line 114):                 r              =  r sep node_repr(head(c))
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_94 # r
                        PUSH_VAR         .Lstr_95 # sep
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_13, 1 # head
                        CALL_FN          .Lstr_84, 1 # node_repr
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_94 # r
# ======================================================================================================================
# stmt 74  (line 115):                 sep            =  ', '
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_98, 0 # ", "
                        STORE_VAR        .Lstr_95 # sep
# ======================================================================================================================
# stmt 75  (line 116):                 c              =  tail(c)                    :(nr_lp)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_15, 1 # tail
                        STORE_VAR        .Lstr_96 # c
                        JUMP             .Lpc413
.Lpc436:                LABEL
# ======================================================================================================================
# stmt 76  (line 117):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ======================================================================================================================
.Lpc437:                STNO
                        PUSH_VAR         .Lstr_94 # r
                        PUSH_STR         .Lstr_44, 0 # ")"
                        CONCAT
                        STORE_VAR        .Lstr_84 # node_repr
                        RETURN
.Lpc443:                LABEL
# ======================================================================================================================
# stmt 77  (line 119):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc444:                STNO
# ======================================================================================================================
# stmt 78  (line 120):                 DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_101, 0 # "pp_node(node,indent,suffix)r,pad,c,nxt"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc538
                        LABEL
# ======================================================================================================================
# stmt 79  (line 121):  pp_node        r              =  node_repr(node)
# ======================================================================================================================
.Lpc451:                STNO
                        PUSH_VAR         .Lstr_85 # node
                        CALL_FN          .Lstr_84, 1 # node_repr
                        STORE_VAR        .Lstr_94 # r
# ======================================================================================================================
# stmt 80  (line 122):                 pad            =  DUPL(' ', indent)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_71, 0 # " "
                        PUSH_VAR         .Lstr_103 # indent
                        CALL_FN          .Lstr_104, 2 # DUPL
                        STORE_VAR        .Lstr_105 # pad
# ======================================================================================================================
# stmt 81  (line 123):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ======================================================================================================================
                        STNO
                        PUSH_INT         80
                        PUSH_VAR         .Lstr_103 # indent
                        PUSH_VAR         .Lstr_94 # r
                        CALL_FN          .Lstr_106, 1 # SIZE
                        ADD_NUM
                        CALL_FN          .Lstr_107, 2 # GT
                        VOID_POP
                        JUMP_F           .Lpc477
# ======================================================================================================================
# stmt 82  (line 124):                 OUTPUT         =  pad r suffix               :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_105 # pad
                        PUSH_VAR         .Lstr_94 # r
                        PUSH_VAR         .Lstr_108 # suffix
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_109 # OUTPUT
                        RETURN
.Lpc477:                LABEL
# ======================================================================================================================
# stmt 83  (line 125):  pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
# ======================================================================================================================
.Lpc478:                STNO
                        PUSH_VAR         .Lstr_105 # pad
                        PUSH_STR         .Lstr_111, 0 # "( "
                        PUSH_STR         .Lstr_92, 0 # "'"
                        PUSH_VAR         .Lstr_85 # node
                        CALL_FN          .Lstr_13, 1 # head
                        PUSH_STR         .Lstr_112, 0 # "',"
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_109 # OUTPUT
# ======================================================================================================================
# stmt 84  (line 126):                 c              =  tail(node)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_85 # node
                        CALL_FN          .Lstr_15, 1 # tail
                        STORE_VAR        .Lstr_96 # c
.Lpc494:                LABEL
# ======================================================================================================================
# stmt 85  (line 127):  pp_wch         DIFFER(c)                                    :F(pp_wdone)
# ======================================================================================================================
.Lpc495:                STNO
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_12, 1 # DIFFER
                        VOID_POP
                        JUMP_F           .Lpc535
# ======================================================================================================================
# stmt 86  (line 128):                 nxt            =  tail(c)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_15, 1 # tail
                        STORE_VAR        .Lstr_114 # nxt
# ======================================================================================================================
# stmt 87  (line 129):                 DIFFER(nxt)                                  :F(pp_wlast)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_114 # nxt
                        CALL_FN          .Lstr_12, 1 # DIFFER
                        VOID_POP
                        JUMP_F           .Lpc522
# ======================================================================================================================
# stmt 88  (line 130):                 pp_node(head(c), indent + 2, ',')
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_13, 1 # head
                        PUSH_VAR         .Lstr_103 # indent
                        PUSH_INT         2
                        ADD_NUM
                        PUSH_STR         .Lstr_115, 0 # ","
                        CALL_FN          .Lstr_102, 3 # pp_node
                        VOID_POP
# ======================================================================================================================
# stmt 89  (line 131):                 c              =  nxt                        :(pp_wch)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_114 # nxt
                        STORE_VAR        .Lstr_96 # c
                        JUMP             .Lpc494
.Lpc522:                LABEL
# ======================================================================================================================
# stmt 90  (line 132):  pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
# ======================================================================================================================
.Lpc523:                STNO
                        PUSH_VAR         .Lstr_96 # c
                        CALL_FN          .Lstr_13, 1 # head
                        PUSH_VAR         .Lstr_103 # indent
                        PUSH_INT         2
                        ADD_NUM
                        PUSH_STR         .Lstr_44, 0 # ")"
                        PUSH_VAR         .Lstr_108 # suffix
                        CONCAT
                        CALL_FN          .Lstr_102, 3 # pp_node
                        VOID_POP
                        RETURN
.Lpc535:                LABEL
# ======================================================================================================================
# stmt 91  (line 133):  pp_wdone                                                    :(RETURN)
# ======================================================================================================================
.Lpc536:                STNO
                        RETURN
.Lpc538:                LABEL
# ======================================================================================================================
# stmt 92  (line 135):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc539:                STNO
# ======================================================================================================================
# stmt 93  (line 136):                 DEFINE('pp_bank()cur')                       :(pp_bank_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_119, 0 # "pp_bank()cur"
                        CALL_FN          .Lstr_5, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc557
                        LABEL
# ======================================================================================================================
# stmt 94  (line 137):  pp_bank        pp_node(bank, 0, '')
# ======================================================================================================================
.Lpc546:                STNO
                        PUSH_VAR         .Lstr_121 # bank
                        PUSH_INT         0
                        PUSH_STR         .Lstr_7, 0 # ""
                        CALL_FN          .Lstr_102, 3 # pp_node
                        VOID_POP
# ======================================================================================================================
# stmt 95  (line 138):                 pp_bank        =  .dummy                     :(RETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_22, 0 # "dummy"
                        CALL_FN          .Lstr_23, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_120 # pp_bank
                        RETURN
.Lpc557:                LABEL
# ======================================================================================================================
# stmt 96  (line 140):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc558:                STNO
.Lpc559:                LABEL
# ======================================================================================================================
# stmt 97  (line 141):  slurp          line           =  INPUT                      :F(slurp_done)
# ======================================================================================================================
.Lpc560:                STNO
                        PUSH_VAR         .Lstr_124 # INPUT
                        STORE_VAR        .Lstr_125 # line
                        JUMP_F           .Lpc572
# ======================================================================================================================
# stmt 98  (line 142):                 src            =  src line nl                :(slurp)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_126 # src
                        PUSH_VAR         .Lstr_125 # line
                        PUSH_VAR         .Lstr_0 # nl
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_126 # src
                        JUMP             .Lpc559
.Lpc572:                LABEL
# ======================================================================================================================
# stmt 99  (line 143):  slurp_done     src            treebank                      :F(main_fail)
# ======================================================================================================================
.Lpc573:                STNO
                        PUSH_VAR         .Lstr_82 # treebank
                        PAT_DEREF
                        PUSH_VAR         .Lstr_126 # src
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0, .Lstr_126 # subj=src
                        JUMP_F           .Lpc584
# ======================================================================================================================
# stmt 100  (line 144):                 dummy          =  pp_bank()                  :(END)
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_120, 0 # pp_bank
                        STORE_VAR        .Lstr_22 # dummy
                        JUMP             .Lpc588
.Lpc584:                LABEL
# ======================================================================================================================
# stmt 101  (line 145):  main_fail      OUTPUT         =  'Pattern match failed'
# ======================================================================================================================
.Lpc585:                STNO
                        PUSH_STR         .Lstr_129, 0 # "Pattern match failed"
                        STORE_VAR        .Lstr_109 # OUTPUT
.Lpc588:                LABEL
# ======================================================================================================================
# stmt 102
# ======================================================================================================================
.Lpc589:                STNO
                        HALT
# -- epilogue -------------------------------------------
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
