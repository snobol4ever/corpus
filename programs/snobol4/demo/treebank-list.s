                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.S0:                    .string          "nl"
.S1:                    .string          "ALPHABET"
.S2:                    .string          "list(head,tail)"
.S3:                    .string          "DATA"
.S4:                    .string          "list_reverse(lst)acc,cur"
.S5:                    .string          "DEFINE"
.S6:                    .string          "list_reverse"
.S7:                    .string          ""
.S8:                    .string          "acc"
.S9:                    .string          "lst"
.S10:                   .string          "cur"
.S11:                   .string          "lr1"
.S12:                   .string          "DIFFER"
.S13:                   .string          "head"
.S14:                   .string          "list"
.S15:                   .string          "tail"
.S16:                   .string          "lr_done"
.S17:                   .string          "list_reverse_end"
.S18:                   .string          "stk_push_frame(v)"
.S19:                   .string          "stk_push_frame"
.S20:                   .string          "v"
.S21:                   .string          "stk"
.S22:                   .string          "dummy"
.S23:                   .string          "NAME_PUSH"
.S24:                   .string          "stk_push_frame_end"
.S25:                   .string          "stk_push_item(v)"
.S26:                   .string          "stk_push_item"
.S27:                   .string          "head_SET"
.S28:                   .string          "stk_push_item_end"
.S29:                   .string          "stk_pop_into_parent()child"
.S30:                   .string          "stk_pop_into_parent"
.S31:                   .string          "child"
.S32:                   .string          "stk_pop_into_parent_end"
.S33:                   .string          "stk_pop_final(var)"
.S34:                   .string          "stk_pop_final"
.S35:                   .string          "var"
.S36:                   .string          "ASGN_INDIR"
.S37:                   .string          "stk_pop_final_end"
.S38:                   .string          "init_list(v)"
.S39:                   .string          "Init_list(vs)"
.S40:                   .string          "init_list"
.S41:                   .string          "Init_list"
.S42:                   .string          "epsilon . *init_list("
.S43:                   .string          "vs"
.S44:                   .string          ")"
.S45:                   .string          "EVAL"
.S46:                   .string          "init_list_end"
.S47:                   .string          "push_list(v)"
.S48:                   .string          "Push_list(vs)"
.S49:                   .string          "push_list"
.S50:                   .string          "Push_list"
.S51:                   .string          "epsilon . *push_list("
.S52:                   .string          "push_list_end"
.S53:                   .string          "push_item(v)"
.S54:                   .string          "Push_item(vs)"
.S55:                   .string          "push_item"
.S56:                   .string          "Push_item"
.S57:                   .string          "epsilon . *push_item("
.S58:                   .string          "push_item_end"
.S59:                   .string          "pop_list()"
.S60:                   .string          "Pop_list()"
.S61:                   .string          "pop_list"
.S62:                   .string          "Pop_list"
.S63:                   .string          "epsilon"
.S64:                   .string          "pop_list_end"
.S65:                   .string          "pop_final(v)"
.S66:                   .string          "Pop_final(vs)"
.S67:                   .string          "pop_final"
.S68:                   .string          "Pop_final"
.S69:                   .string          "epsilon . *pop_final("
.S70:                   .string          "pop_final_end"
.S71:                   .string          " "
.S72:                   .string          "delim"
.S73:                   .string          "( )"
.S74:                   .string          "word"
.S75:                   .string          "("
.S76:                   .string          "tag"
.S77:                   .string          "group"
.S78:                   .string          "wrd"
.S79:                   .string          "'bank'"
.S80:                   .string          "'BANK'"
.S81:                   .string          "'ROOT'"
.S82:                   .string          "treebank"
.S83:                   .string          "node_repr(node)r,c,sep"
.S84:                   .string          "node_repr"
.S85:                   .string          "node"
.S86:                   .string          "DATATYPE"
.S87:                   .string          "LCASE"
.S88:                   .string          "UCASE"
.S89:                   .string          "REPLACE"
.S90:                   .string          "STRING"
.S91:                   .string          "IDENT"
.S92:                   .string          "'"
.S93:                   .string          "nr_list"
.S94:                   .string          "r"
.S95:                   .string          "sep"
.S96:                   .string          "c"
.S97:                   .string          "nr_lp"
.S98:                   .string          ", "
.S99:                   .string          "nr_done"
.S100:                  .string          "node_repr_end"
.S101:                  .string          "pp_node(node,indent,suffix)r,pad,c,nxt"
.S102:                  .string          "pp_node"
.S103:                  .string          "indent"
.S104:                  .string          "DUPL"
.S105:                  .string          "pad"
.S106:                  .string          "SIZE"
.S107:                  .string          "GT"
.S108:                  .string          "suffix"
.S109:                  .string          "OUTPUT"
.S110:                  .string          "pp_wrap"
.S111:                  .string          "( "
.S112:                  .string          "',"
.S113:                  .string          "pp_wch"
.S114:                  .string          "nxt"
.S115:                  .string          ","
.S116:                  .string          "pp_wlast"
.S117:                  .string          "pp_wdone"
.S118:                  .string          "pp_node_end"
.S119:                  .string          "pp_bank()cur"
.S120:                  .string          "pp_bank"
.S121:                  .string          "bank"
.S122:                  .string          "pp_bank_end"
.S123:                  .string          "slurp"
.S124:                  .string          "INPUT"
.S125:                  .string          "line"
.S126:                  .string          "src"
.S127:                  .string          "slurp_done"
.S128:                  .string          "main_fail"
.S129:                  .string          "Pattern match failed"
.S130:                  .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lexpression_registry:  .quad            .S6              ; .quad            .L20
                        .quad            .S11             ; .quad            .L28
                        .quad            .S16             ; .quad            .L45
                        .quad            .S17             ; .quad            .L50
                        .quad            .S19             ; .quad            .L57
                        .quad            .S24             ; .quad            .L71
                        .quad            .S26             ; .quad            .L78
                        .quad            .S28             ; .quad            .L92
                        .quad            .S30             ; .quad            .L99
                        .quad            .S32             ; .quad            .L123
                        .quad            .S34             ; .quad            .L130
                        .quad            .S37             ; .quad            .L147
                        .quad            .S40             ; .quad            .L158
                        .quad            .S41             ; .quad            .L172
                        .quad            .S46             ; .quad            .L183
                        .quad            .S49             ; .quad            .L194
                        .quad            .S50             ; .quad            .L205
                        .quad            .S52             ; .quad            .L216
                        .quad            .S55             ; .quad            .L227
                        .quad            .S56             ; .quad            .L238
                        .quad            .S58             ; .quad            .L249
                        .quad            .S61             ; .quad            .L260
                        .quad            .S62             ; .quad            .L270
                        .quad            .S64             ; .quad            .L278
                        .quad            .S67             ; .quad            .L289
                        .quad            .S68             ; .quad            .L300
                        .quad            .S70             ; .quad            .L311
                        .quad            .S84             ; .quad            .L391
                        .quad            .S93             ; .quad            .L411
                        .quad            .S97             ; .quad            .L421
                        .quad            .S99             ; .quad            .L444
                        .quad            .S100            ; .quad            .L451
                        .quad            .S102            ; .quad            .L458
                        .quad            .S110            ; .quad            .L486
                        .quad            .S113            ; .quad            .L503
                        .quad            .S116            ; .quad            .L531
                        .quad            .S117            ; .quad            .L544
                        .quad            .S118            ; .quad            .L547
                        .quad            .S120            ; .quad            .L554
                        .quad            .S122            ; .quad            .L567
                        .quad            .S123            ; .quad            .L569
                        .quad            .S127            ; .quad            .L582
                        .quad            .S128            ; .quad            .L594
                        .quad            .S130            ; .quad            .L598
                        .quad            0                ; .quad            0
                        .text
                        .intel_syntax    noprefix
                        .text
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lexpression_registry]
                        call             rt_register_expressions@PLT
                        call             rt_init@PLT # rt_init(argc, argv)
#=======================================================================================================================
# stmt 1  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
#=======================================================================================================================
                        STNO
.L0:                    PUSH_INT         10
                        EXEC_STMT_VARIANT 0
                        PUSH_INT         1
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE      0, .S0 # nl kind=0
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S1 # ALPHABET
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0, .S1 # subj=ALPHABET
#=======================================================================================================================
# stmt 2  (line 8):                 DATA('list(head,tail)')
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S2, 0 # "list(head,tail)"
                        CALL_FN          .S3, 1 # DATA
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 3  (line 10):                 DEFINE('list_reverse(lst)acc,cur')           :(list_reverse_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S4, 0 # "list_reverse(lst)acc,cur"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L49
                        LABEL
.L20:                   UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 4  (line 11):  list_reverse   acc            =
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S7, 0 # ""
                        STORE_VAR        .S8 # acc
#=======================================================================================================================
# stmt 5  (line 12):                 cur            =  lst
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S9 # lst
                        STORE_VAR        .S10 # cur
                        LABEL
.L27:
#=======================================================================================================================
# stmt 6  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
#=======================================================================================================================
                        STNO
.L28:                   PUSH_VAR         .S10 # cur
                        CALL_FN          .S12, 1 # DIFFER
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L44
#=======================================================================================================================
# stmt 7  (line 14):                 acc            =  list(head(cur), acc)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S10 # cur
                        CALL_FN          .S13, 1 # head
                        PUSH_VAR         .S8 # acc
                        CALL_FN          .S14, 2 # list
                        STORE_VAR        .S8 # acc
#=======================================================================================================================
# stmt 8  (line 15):                 cur            =  tail(cur)                  :(lr1)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S10 # cur
                        CALL_FN          .S15, 1 # tail
                        STORE_VAR        .S10 # cur
    # SM_JUMP
                                                                    jmp .L27
                        LABEL
.L44:
#=======================================================================================================================
# stmt 9  (line 16):  lr_done        list_reverse   =  acc                        :(RETURN)
#=======================================================================================================================
                        STNO
.L45:                   PUSH_VAR         .S8 # acc
                        STORE_VAR        .S6 # list_reverse
                        RETURN
                        LABEL
.L49:
#=======================================================================================================================
# stmt 10  (line 18):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L50:
#=======================================================================================================================
# stmt 11  (line 19):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S18, 0 # "stk_push_frame(v)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L70
                        LABEL
.L57:                   UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 12  (line 20):  stk_push_frame stk            =  list(list(v,), stk)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S20 # v
    # SM_PUSH_NULL — push null descriptor
    PUSH_NULL
                        call             rt_push_null@PLT
                        CALL_FN          .S14, 2 # list
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S14, 2 # list
                        STORE_VAR        .S21 # stk
#=======================================================================================================================
# stmt 13  (line 21):                 stk_push_frame =  .dummy                     :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S19 # stk_push_frame
                        RETURN
                        LABEL
.L70:
#=======================================================================================================================
# stmt 14  (line 23):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L71:
#=======================================================================================================================
# stmt 15  (line 24):                 DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S25, 0 # "stk_push_item(v)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L91
                        LABEL
.L78:                   UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 16  (line 25):  stk_push_item  head(stk)      =  list(v, head(stk))
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S20 # v
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S13, 1 # head
                        CALL_FN          .S14, 2 # list
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S27, 2 # head_SET
#=======================================================================================================================
# stmt 17  (line 26):                 stk_push_item  =  .dummy                     :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S26 # stk_push_item
                        RETURN
                        LABEL
.L91:
#=======================================================================================================================
# stmt 18  (line 28):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L92:
#=======================================================================================================================
# stmt 19  (line 29):                 DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S29, 0 # "stk_pop_into_parent()child"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L122
                        LABEL
.L99:                   UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 20  (line 31):                 child          =  list_reverse(head(stk))
#=======================================================================================================================
                        STNO
#=======================================================================================================================
# stmt 21  (line 31):                 child          =  list_reverse(head(stk))
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S13, 1 # head
                        CALL_FN          .S6, 1 # list_reverse
                        STORE_VAR        .S31 # child
#=======================================================================================================================
# stmt 22  (line 32):                 stk            =  tail(stk)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S15, 1 # tail
                        STORE_VAR        .S21 # stk
#=======================================================================================================================
# stmt 23  (line 33):                 head(stk)      =  list(child, head(stk))
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S31 # child
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S13, 1 # head
                        CALL_FN          .S14, 2 # list
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S27, 2 # head_SET
#=======================================================================================================================
# stmt 24  (line 34):                 stk_pop_into_parent =  .dummy                :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S30 # stk_pop_into_parent
                        RETURN
                        LABEL
.L122:
#=======================================================================================================================
# stmt 25  (line 36):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L123:
#=======================================================================================================================
# stmt 26  (line 37):                 DEFINE('stk_pop_final(var)')                 :(stk_pop_final_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S33, 0 # "stk_pop_final(var)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L146
                        LABEL
.L130:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 27  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S13, 1 # head
                        CALL_FN          .S6, 1 # list_reverse
                        PUSH_VAR         .S35 # var
                        CALL_FN          .S36, 2 # ASGN_INDIR
#=======================================================================================================================
# stmt 28  (line 39):                 stk            =  tail(stk)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S21 # stk
                        CALL_FN          .S15, 1 # tail
                        STORE_VAR        .S21 # stk
#=======================================================================================================================
# stmt 29  (line 40):                 stk_pop_final  =  .dummy                     :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S34 # stk_pop_final
                        RETURN
                        LABEL
.L146:
#=======================================================================================================================
# stmt 30  (line 42):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L147:
#=======================================================================================================================
# stmt 31  (line 43):                 DEFINE('init_list(v)')
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S38, 0 # "init_list(v)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 32  (line 44):                 DEFINE('Init_list(vs)')                      :(init_list_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S39, 0 # "Init_list(vs)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L182
                        LABEL
.L158:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 33  (line 45):  init_list      $v             =
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S7, 0 # ""
                        PUSH_VAR         .S20 # v
                        CALL_FN          .S36, 2 # ASGN_INDIR
#=======================================================================================================================
# stmt 34  (line 46):                 stk            =
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S7, 0 # ""
                        STORE_VAR        .S21 # stk
#=======================================================================================================================
# stmt 35  (line 47):                 init_list      =  .dummy                     :(NRETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S40 # init_list
                        RETURN_VARIANT   2, 0, 170 # SM_NRETURN
                        LABEL
.L172:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 36  (line 48):  Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S42, 0 # "epsilon . *init_list("
                        PUSH_VAR         .S43 # vs
                        PUSH_STR         .S44, 0 # ")"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        CALL_FN          .S45, 1 # EVAL
                        STORE_VAR        .S41 # Init_list
                        RETURN
                        LABEL
.L182:
#=======================================================================================================================
# stmt 37  (line 50):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L183:
#=======================================================================================================================
# stmt 38  (line 51):                 DEFINE('push_list(v)')
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S47, 0 # "push_list(v)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 39  (line 52):                 DEFINE('Push_list(vs)')                      :(push_list_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S48, 0 # "Push_list(vs)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L215
                        LABEL
.L194:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 40  (line 53):  push_list      dummy          =  stk_push_frame(v)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S20 # v
                        CALL_FN          .S19, 1 # stk_push_frame
                        STORE_VAR        .S22 # dummy
#=======================================================================================================================
# stmt 41  (line 54):                 push_list      =  .dummy                     :(NRETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S49 # push_list
                        RETURN_VARIANT   2, 0, 203 # SM_NRETURN
                        LABEL
.L205:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 42  (line 55):  Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S51, 0 # "epsilon . *push_list("
                        PUSH_VAR         .S43 # vs
                        PUSH_STR         .S44, 0 # ")"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        CALL_FN          .S45, 1 # EVAL
                        STORE_VAR        .S50 # Push_list
                        RETURN
                        LABEL
.L215:
#=======================================================================================================================
# stmt 43  (line 57):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L216:
#=======================================================================================================================
# stmt 44  (line 58):                 DEFINE('push_item(v)')
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S53, 0 # "push_item(v)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 45  (line 59):                 DEFINE('Push_item(vs)')                      :(push_item_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S54, 0 # "Push_item(vs)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L248
                        LABEL
.L227:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 46  (line 60):  push_item      dummy          =  stk_push_item(v)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S20 # v
                        CALL_FN          .S26, 1 # stk_push_item
                        STORE_VAR        .S22 # dummy
#=======================================================================================================================
# stmt 47  (line 61):                 push_item      =  .dummy                     :(NRETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S55 # push_item
                        RETURN_VARIANT   2, 0, 236 # SM_NRETURN
                        LABEL
.L238:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 48  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S57, 0 # "epsilon . *push_item("
                        PUSH_VAR         .S43 # vs
                        PUSH_STR         .S44, 0 # ")"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        CALL_FN          .S45, 1 # EVAL
                        STORE_VAR        .S56 # Push_item
                        RETURN
                        LABEL
.L248:
#=======================================================================================================================
# stmt 49  (line 64):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L249:
#=======================================================================================================================
# stmt 50  (line 65):                 DEFINE('pop_list()')
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S59, 0 # "pop_list()"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 51  (line 66):                 DEFINE('Pop_list()')                         :(pop_list_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S60, 0 # "Pop_list()"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L277
                        LABEL
.L260:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 52  (line 67):  pop_list       dummy          =  stk_pop_into_parent()
#=======================================================================================================================
                        STNO
                        CALL_FN          .S30, 0 # stk_pop_into_parent
                        STORE_VAR        .S22 # dummy
#=======================================================================================================================
# stmt 53  (line 68):                 pop_list       =  .dummy                     :(NRETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S61 # pop_list
                        RETURN_VARIANT   2, 0, 268 # SM_NRETURN
                        LABEL
.L270:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 54  (line 69):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S63 # epsilon
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE_FN   0, .S61 # pop_list, (NULL)
                        STORE_VAR        .S62 # Pop_list
                        RETURN
                        LABEL
.L277:
#=======================================================================================================================
# stmt 55  (line 71):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L278:
#=======================================================================================================================
# stmt 56  (line 72):                 DEFINE('pop_final(v)')
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S65, 0 # "pop_final(v)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 57  (line 73):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S66, 0 # "Pop_final(vs)"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L310
                        LABEL
.L289:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 58  (line 74):  pop_final      dummy          =  stk_pop_final(v)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S20 # v
                        CALL_FN          .S34, 1 # stk_pop_final
                        STORE_VAR        .S22 # dummy
#=======================================================================================================================
# stmt 59  (line 75):                 pop_final      =  .dummy                     :(NRETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S67 # pop_final
                        RETURN_VARIANT   2, 0, 298 # SM_NRETURN
                        LABEL
.L300:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 60  (line 76):  Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S69, 0 # "epsilon . *pop_final("
                        PUSH_VAR         .S43 # vs
                        PUSH_STR         .S44, 0 # ")"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        CALL_FN          .S45, 1 # EVAL
                        STORE_VAR        .S68 # Pop_final
                        RETURN
                        LABEL
.L310:
#=======================================================================================================================
# stmt 61  (line 78):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L311:
#=======================================================================================================================
# stmt 62  (line 79):                 delim          =  SPAN(' ' nl)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S71, 0 # " "
                        PUSH_VAR         .S0 # nl
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        EXEC_STMT_VARIANT 0
                        STORE_VAR        .S72 # delim
#=======================================================================================================================
# stmt 63  (line 80):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S73, 0 # "( )"
                        PUSH_VAR         .S0 # nl
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        EXEC_STMT_VARIANT 0
                        PUSH_STR         .S73, 0 # "( )"
                        PUSH_VAR         .S0 # nl
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        EXEC_STMT_VARIANT 0
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S74 # word
#=======================================================================================================================
# stmt 64  (line 82):                 group          =
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S75, 0 # "("
                        PUSH_VAR         .S74 # word
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE      0, .S76 # tag kind=0
                        PUSH_STR         .S76, 0 # "tag"
                        CALL_FN          .S50, 1 # Push_list
                        PAT_REFNAME      .S72 # delim
                        PAT_REFNAME      .S77 # group
                        PUSH_VAR         .S74 # word
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE      0, .S78 # wrd kind=0
                        PUSH_STR         .S78, 0 # "wrd"
                        CALL_FN          .S56, 1 # Push_item
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        CALL_FN          .S62, 0 # Pop_list
                        PUSH_STR         .S44, 0 # ")"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S77 # group
#=======================================================================================================================
# stmt 65  (line 94):                 treebank       =
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0
                        PUSH_STR         .S79, 0 # "'bank'"
                        CALL_FN          .S41, 1 # Init_list
                        PUSH_STR         .S80, 0 # "'BANK'"
                        CALL_FN          .S50, 1 # Push_list
                        PUSH_STR         .S81, 0 # "'ROOT'"
                        CALL_FN          .S50, 1 # Push_list
                        EXEC_STMT_VARIANT 0
                        PAT_REFNAME      .S77 # group
                        EXEC_STMT_VARIANT 0
                        PAT_REFNAME      .S72 # delim
                        CALL_FN          .S62, 0 # Pop_list
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        PUSH_STR         .S79, 0 # "'bank'"
                        CALL_FN          .S68, 1 # Pop_final
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S82 # treebank
#=======================================================================================================================
# stmt 66  (line 107):                 DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S83, 0 # "node_repr(node)r,c,sep"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L450
                        LABEL
.L391:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 67  (line 108):  node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S85 # node
                        CALL_FN          .S86, 1 # DATATYPE
                        PUSH_VAR         .S87 # LCASE
                        PUSH_VAR         .S88 # UCASE
                        CALL_FN          .S89, 3 # REPLACE
                        PUSH_STR         .S90, 0 # "STRING"
                        CALL_FN          .S91, 2 # IDENT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L410
#=======================================================================================================================
# stmt 68  (line 109):                 node_repr      =  "'" node "'"               :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S92, 0 # "'"
                        PUSH_VAR         .S85 # node
                        PUSH_STR         .S92, 0 # "'"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S84 # node_repr
                        RETURN
                        LABEL
.L410:
#=======================================================================================================================
# stmt 69  (line 110):  nr_list        r              =  '('
#=======================================================================================================================
                        STNO
.L411:                  PUSH_STR         .S75, 0 # "("
                        STORE_VAR        .S94 # r
#=======================================================================================================================
# stmt 70  (line 111):                 sep            =
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S7, 0 # ""
                        STORE_VAR        .S95 # sep
#=======================================================================================================================
# stmt 71  (line 112):                 c              =  node
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S85 # node
                        STORE_VAR        .S96 # c
                        LABEL
.L420:
#=======================================================================================================================
# stmt 72  (line 113):  nr_lp          DIFFER(c)                                    :F(nr_done)
#=======================================================================================================================
                        STNO
.L421:                  PUSH_VAR         .S96 # c
                        CALL_FN          .S12, 1 # DIFFER
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L443
#=======================================================================================================================
# stmt 73  (line 114):                 r              =  r sep node_repr(head(c))
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S94 # r
                        PUSH_VAR         .S95 # sep
                        PUSH_VAR         .S96 # c
                        CALL_FN          .S13, 1 # head
                        CALL_FN          .S84, 1 # node_repr
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S94 # r
#=======================================================================================================================
# stmt 74  (line 115):                 sep            =  ', '
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S98, 0 # ", "
                        STORE_VAR        .S95 # sep
#=======================================================================================================================
# stmt 75  (line 116):                 c              =  tail(c)                    :(nr_lp)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S96 # c
                        CALL_FN          .S15, 1 # tail
                        STORE_VAR        .S96 # c
    # SM_JUMP
                                                                    jmp .L420
                        LABEL
.L443:
#=======================================================================================================================
# stmt 76  (line 117):  nr_done        node_repr      =  r ')'                      :(RETURN)
#=======================================================================================================================
                        STNO
.L444:                  PUSH_VAR         .S94 # r
                        PUSH_STR         .S44, 0 # ")"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S84 # node_repr
                        RETURN
                        LABEL
.L450:
#=======================================================================================================================
# stmt 77  (line 119):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L451:
#=======================================================================================================================
# stmt 78  (line 120):                 DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S101, 0 # "pp_node(node,indent,suffix)r,pad,c,nxt"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L546
                        LABEL
.L458:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 79  (line 121):  pp_node        r              =  node_repr(node)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S85 # node
                        CALL_FN          .S84, 1 # node_repr
                        STORE_VAR        .S94 # r
#=======================================================================================================================
# stmt 80  (line 122):                 pad            =  DUPL(' ', indent)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S71, 0 # " "
                        PUSH_VAR         .S103 # indent
                        CALL_FN          .S104, 2 # DUPL
                        STORE_VAR        .S105 # pad
#=======================================================================================================================
# stmt 81  (line 123):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
#=======================================================================================================================
                        STNO
                        PUSH_INT         80
                        PUSH_VAR         .S103 # indent
                        PUSH_VAR         .S94 # r
                        CALL_FN          .S106, 1 # SIZE
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        CALL_FN          .S107, 2 # GT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L485
#=======================================================================================================================
# stmt 82  (line 124):                 OUTPUT         =  pad r suffix               :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S105 # pad
                        PUSH_VAR         .S94 # r
                        PUSH_VAR         .S108 # suffix
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S109 # OUTPUT
                        RETURN
                        LABEL
.L485:
#=======================================================================================================================
# stmt 83  (line 125):  pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#=======================================================================================================================
                        STNO
.L486:                  PUSH_VAR         .S105 # pad
                        PUSH_STR         .S111, 0 # "( "
                        PUSH_STR         .S92, 0 # "'"
                        PUSH_VAR         .S85 # node
                        CALL_FN          .S13, 1 # head
                        PUSH_STR         .S112, 0 # "',"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S109 # OUTPUT
#=======================================================================================================================
# stmt 84  (line 126):                 c              =  tail(node)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S85 # node
                        CALL_FN          .S15, 1 # tail
                        STORE_VAR        .S96 # c
                        LABEL
.L502:
#=======================================================================================================================
# stmt 85  (line 127):  pp_wch         DIFFER(c)                                    :F(pp_wdone)
#=======================================================================================================================
                        STNO
.L503:                  PUSH_VAR         .S96 # c
                        CALL_FN          .S12, 1 # DIFFER
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L543
#=======================================================================================================================
# stmt 86  (line 128):                 nxt            =  tail(c)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S96 # c
                        CALL_FN          .S15, 1 # tail
                        STORE_VAR        .S114 # nxt
#=======================================================================================================================
# stmt 87  (line 129):                 DIFFER(nxt)                                  :F(pp_wlast)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S114 # nxt
                        CALL_FN          .S12, 1 # DIFFER
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L530
#=======================================================================================================================
# stmt 88  (line 130):                 pp_node(head(c), indent + 2, ',')
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S96 # c
                        CALL_FN          .S13, 1 # head
                        PUSH_VAR         .S103 # indent
                        PUSH_INT         2
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        PUSH_STR         .S115, 0 # ","
                        CALL_FN          .S102, 3 # pp_node
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 89  (line 131):                 c              =  nxt                        :(pp_wch)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S114 # nxt
                        STORE_VAR        .S96 # c
    # SM_JUMP
                                                                    jmp .L502
                        LABEL
.L530:
#=======================================================================================================================
# stmt 90  (line 132):  pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#=======================================================================================================================
                        STNO
.L531:                  PUSH_VAR         .S96 # c
                        CALL_FN          .S13, 1 # head
                        PUSH_VAR         .S103 # indent
                        PUSH_INT         2
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        PUSH_STR         .S44, 0 # ")"
                        PUSH_VAR         .S108 # suffix
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        CALL_FN          .S102, 3 # pp_node
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
                        RETURN
                        LABEL
.L543:
#=======================================================================================================================
# stmt 91  (line 133):  pp_wdone                                                    :(RETURN)
#=======================================================================================================================
                        STNO
.L544:                  RETURN
                        LABEL
.L546:
#=======================================================================================================================
# stmt 92  (line 135):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L547:
#=======================================================================================================================
# stmt 93  (line 136):                 DEFINE('pp_bank()cur')                       :(pp_bank_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S119, 0 # "pp_bank()cur"
                        CALL_FN          .S5, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L566
                        LABEL
.L554:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 94  (line 137):  pp_bank        pp_node(bank, 0, '')
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S121 # bank
                        PUSH_INT         0
                        PUSH_STR         .S7, 0 # ""
                        CALL_FN          .S102, 3 # pp_node
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
#=======================================================================================================================
# stmt 95  (line 138):                 pp_bank        =  .dummy                     :(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S22, 0 # "dummy"
                        CALL_FN          .S23, 1 # NAME_PUSH
                        STORE_VAR        .S120 # pp_bank
                        RETURN
                        LABEL
.L566:
#=======================================================================================================================
# stmt 96  (line 140):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L567:                  LABEL
.L568:
#=======================================================================================================================
# stmt 97  (line 141):  slurp          line           =  INPUT                      :F(slurp_done)
#=======================================================================================================================
                        STNO
.L569:                  PUSH_VAR         .S124 # INPUT
                        STORE_VAR        .S125 # line
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L581
#=======================================================================================================================
# stmt 98  (line 142):                 src            =  src line nl                :(slurp)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S126 # src
                        PUSH_VAR         .S125 # line
                        PUSH_VAR         .S0 # nl
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S126 # src
    # SM_JUMP
                                                                    jmp .L568
                        LABEL
.L581:
#=======================================================================================================================
# stmt 99  (line 143):  slurp_done     src            treebank                      :F(main_fail)
#=======================================================================================================================
                        STNO
.L582:                  PUSH_VAR         .S82 # treebank
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S126 # src
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0, .S126 # subj=src
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L593
#=======================================================================================================================
# stmt 100  (line 144):                 dummy          =  pp_bank()                  :(END)
#=======================================================================================================================
                        STNO
                        CALL_FN          .S120, 0 # pp_bank
                        STORE_VAR        .S22 # dummy
    # SM_JUMP
                                                                    jmp .L597
                        LABEL
.L593:
#=======================================================================================================================
# stmt 101  (line 145):  main_fail      OUTPUT         =  'Pattern match failed'
#=======================================================================================================================
                        STNO
.L594:                  PUSH_STR         .S129, 0 # "Pattern match failed"
                        STORE_VAR        .S109 # OUTPUT
                        LABEL
.L597:
#=======================================================================================================================
# stmt 102
#=======================================================================================================================
                        STNO
.L598:                  HALT
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
