                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.S0:                    .string          "nl"
.S1:                    .string          "ALPHABET"
.S2:                    .string          "0123456789"
.S3:                    .string          "DIGITS"
.S4:                    .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.S5:                    .string          "UCASE"
.S6:                    .string          "new_sent()"
.S7:                    .string          "DEFINE"
.S8:                    .string          "new_sent"
.S9:                    .string          "num"
.S10:                   .string          "sentno"
.S11:                   .string          "TABLE"
.S12:                   .string          "mem"
.S13:                   .string          "IDX_SET"
.S14:                   .string          "dummy"
.S15:                   .string          "NAME_PUSH"
.S16:                   .string          "new_sent_end"
.S17:                   .string          "add_tok()"
.S18:                   .string          "add_tok"
.S19:                   .string          "IDX"
.S20:                   .string          "wrd"
.S21:                   .string          "DIFFER"
.S22:                   .string          "tag"
.S23:                   .string          "new_wrd"
.S24:                   .string          "new_tag"
.S25:                   .string          "done"
.S26:                   .string          "add_tok_end"
.S27:                   .string          "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
.S28:                   .string          "pp_mem"
.S29:                   .string          "SORT"
.S30:                   .string          "ssk"
.S31:                   .string          "si"
.S32:                   .string          "ns"
.S33:                   .string          "pm_cnt_loop"
.S34:                   .string          "pm_sent_loop"
.S35:                   .string          ""
.S36:                   .string          "last_sent"
.S37:                   .string          "IDENT"
.S38:                   .string          " "
.S39:                   .string          "SIZE"
.S40:                   .string          "DUPL"
.S41:                   .string          "pad"
.S42:                   .string          "EQ"
.S43:                   .string          "{"
.S44:                   .string          ": {"
.S45:                   .string          "pfx"
.S46:                   .string          "NE"
.S47:                   .string          "wsk"
.S48:                   .string          "wi"
.S49:                   .string          "pm_wrd_loop"
.S50:                   .string          "wkey"
.S51:                   .string          "next_wkey"
.S52:                   .string          "ARB"
.S53:                   .string          "'"
.S54:                   .string          "\""
.S55:                   .string          "wq"
.S56:                   .string          "pm_sq"
.S57:                   .string          "pm_tdict"
.S58:                   .string          "tsk"
.S59:                   .string          "ti"
.S60:                   .string          "tline"
.S61:                   .string          "pm_tag_loop"
.S62:                   .string          "tv"
.S63:                   .string          "': "
.S64:                   .string          "pm_tag_sep"
.S65:                   .string          ", "
.S66:                   .string          "pm_tag_close"
.S67:                   .string          "}"
.S68:                   .string          "GT"
.S69:                   .string          ": "
.S70:                   .string          ","
.S71:                   .string          "OUTPUT"
.S72:                   .string          "pm_mid_wrd"
.S73:                   .string          "pm_last_wrd"
.S74:                   .string          "lline"
.S75:                   .string          "pm_last_mid"
.S76:                   .string          "pm_last_emit"
.S77:                   .string          "}}"
.S78:                   .string          "pm_last_mid2"
.S79:                   .string          "},"
.S80:                   .string          "pm_done"
.S81:                   .string          "pp_mem_end"
.S82:                   .string          "slurp"
.S83:                   .string          "INPUT"
.S84:                   .string          "line"
.S85:                   .string          "src"
.S86:                   .string          "slurp_done"
.S87:                   .string          "_CRD :_PUN"
.S88:                   .string          "epsilon"
.S89:                   .string          "_"
.S90:                   .string          "claws"
.S91:                   .string          "fail"
.S92:                   .string          "Pattern match failed"
.S93:                   .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lexpression_registry:  .quad            .S8              ; .quad            .L22
                        .quad            .S16             ; .quad            .L38
                        .quad            .S18             ; .quad            .L45
                        .quad            .S23             ; .quad            .L85
                        .quad            .S24             ; .quad            .L93
                        .quad            .S25             ; .quad            .L103
                        .quad            .S26             ; .quad            .L109
                        .quad            .S28             ; .quad            .L116
                        .quad            .S33             ; .quad            .L128
                        .quad            .S34             ; .quad            .L149
                        .quad            .S49             ; .quad            .L211
                        .quad            .S56             ; .quad            .L255
                        .quad            .S57             ; .quad            .L263
                        .quad            .S61             ; .quad            .L278
                        .quad            .S64             ; .quad            .L318
                        .quad            .S66             ; .quad            .L333
                        .quad            .S72             ; .quad            .L364
                        .quad            .S73             ; .quad            .L377
                        .quad            .S75             ; .quad            .L394
                        .quad            .S76             ; .quad            .L404
                        .quad            .S78             ; .quad            .L417
                        .quad            .S80             ; .quad            .L424
                        .quad            .S81             ; .quad            .L430
                        .quad            .S82             ; .quad            .L432
                        .quad            .S86             ; .quad            .L443
                        .quad            .S91             ; .quad            .L502
                        .quad            .S93             ; .quad            .L506
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
# stmt 1  (line 8):                  &ALPHABET       POS(10) LEN(1) . nl
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
# stmt 2  (line 9):                  DIGITS          =  '0123456789'
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S2, 0 # "0123456789"
                        STORE_VAR        .S3 # DIGITS
#=======================================================================================================================
# stmt 3  (line 10):                  UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S4, 0 # "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        STORE_VAR        .S5 # UCASE
#=======================================================================================================================
# stmt 4  (line 12):                  DEFINE('new_sent()')                            :(new_sent_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S6, 0 # "new_sent()"
                        CALL_FN          .S7, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L37
                        LABEL
.L22:                   UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 5  (line 13):  new_sent        sentno          =  +num
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S9 # num
    # SM_COERCE_NUM — coerce TOS string to number
    COERCE_NUM
                        call             rt_coerce_num@PLT
                        STORE_VAR        .S10 # sentno
#=======================================================================================================================
# stmt 6  (line 14):                  mem[sentno]     =  TABLE()
#=======================================================================================================================
                        STNO
                        CALL_FN          .S11, 0 # TABLE
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S13, 3 # IDX_SET
#=======================================================================================================================
# stmt 7  (line 15):                  new_sent        =  .dummy                       :(NRETURN)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S14, 0 # "dummy"
                        CALL_FN          .S15, 1 # NAME_PUSH
                        STORE_VAR        .S8 # new_sent
                        RETURN_VARIANT   2, 0, 36 # SM_NRETURN
                        LABEL
.L37:
#=======================================================================================================================
# stmt 8  (line 17):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L38:
#=======================================================================================================================
# stmt 9  (line 18):                  DEFINE('add_tok()')                             :(add_tok_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S17, 0 # "add_tok()"
                        CALL_FN          .S7, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L108
                        LABEL
.L45:                   UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 10  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S20 # wrd
                        CALL_FN          .S19, 2 # IDX
                        CALL_FN          .S21, 1 # DIFFER
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L84
#=======================================================================================================================
# stmt 11  (line 20):                  DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S20 # wrd
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S22 # tag
                        CALL_FN          .S19, 2 # IDX
                        CALL_FN          .S21, 1 # DIFFER
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L92
#=======================================================================================================================
# stmt 12  (line 21):                  mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S20 # wrd
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S22 # tag
                        CALL_FN          .S19, 2 # IDX
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S20 # wrd
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S22 # tag
                        CALL_FN          .S13, 3 # IDX_SET
    # SM_JUMP
                                                                    jmp .L102
                        LABEL
.L84:
#=======================================================================================================================
# stmt 13  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
#=======================================================================================================================
                        STNO
.L85:                   CALL_FN          .S11, 0 # TABLE
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S20 # wrd
                        CALL_FN          .S13, 3 # IDX_SET
                        LABEL
.L92:
#=======================================================================================================================
# stmt 14  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
#=======================================================================================================================
                        STNO
.L93:                   PUSH_INT         1
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S20 # wrd
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S22 # tag
                        CALL_FN          .S13, 3 # IDX_SET
                        LABEL
.L102:
#=======================================================================================================================
# stmt 15  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
#=======================================================================================================================
                        STNO
.L103:                  PUSH_STR         .S14, 0 # "dummy"
                        CALL_FN          .S15, 1 # NAME_PUSH
                        STORE_VAR        .S18 # add_tok
                        RETURN_VARIANT   2, 0, 107 # SM_NRETURN
                        LABEL
.L108:
#=======================================================================================================================
# stmt 16  (line 26):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L109:
#=======================================================================================================================
# stmt 17  (line 27):                  DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S27, 0 # "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,..."
                        CALL_FN          .S7, 1 # DEFINE
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L429
                        LABEL
.L116:                  UNHANDLED        75 # SM_DEFINE_ENTRY
#=======================================================================================================================
# stmt 18  (line 28):  pp_mem          ssk             =   SORT(mem)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        CALL_FN          .S29, 1 # SORT
                        STORE_VAR        .S30 # ssk
#=======================================================================================================================
# stmt 19  (line 29):                  si              =   0
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .S31 # si
#=======================================================================================================================
# stmt 20  (line 30):                  ns              =   0
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .S32 # ns
                        LABEL
.L127:
#=======================================================================================================================
# stmt 21  (line 31):  pm_cnt_loop     ns              =   ns + 1
#=======================================================================================================================
                        STNO
.L128:                  PUSH_VAR         .S32 # ns
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        STORE_VAR        .S32 # ns
#=======================================================================================================================
# stmt 22  (line 32):                  ssk[ns,1]                                       :S(pm_cnt_loop)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S30 # ssk
                        PUSH_VAR         .S32 # ns
                        PUSH_INT         1
                        CALL_FN          .S19, 3 # IDX
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_S — jump if last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        jne              .L127
#=======================================================================================================================
# stmt 23  (line 33):                  ns              =   ns - 1
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S32 # ns
                        PUSH_INT         1
    # SUB_NUM
    SUB_NUM
                        mov              rdi, 0x12
                        call             rt_arith@PLT
                        STORE_VAR        .S32 # ns
#=======================================================================================================================
# stmt 24  (line 34):                  si              =   0
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .S31 # si
                        LABEL
.L148:
#=======================================================================================================================
# stmt 25  (line 35):  pm_sent_loop    si              =   si + 1
#=======================================================================================================================
                        STNO
.L149:                  PUSH_VAR         .S31 # si
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        STORE_VAR        .S31 # si
#=======================================================================================================================
# stmt 26  (line 36):                  sentno          =   ssk[si,1]                   :F(pm_done)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S30 # ssk
                        PUSH_VAR         .S31 # si
                        PUSH_INT         1
                        CALL_FN          .S19, 3 # IDX
                        STORE_VAR        .S10 # sentno
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L423
#=======================================================================================================================
# stmt 27  (line 37):                  last_sent       =   ''
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S35, 0 # ""
                        STORE_VAR        .S36 # last_sent
#=======================================================================================================================
# stmt 28  (line 38):                  last_sent       =   IDENT(si, ns) 1
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S31 # si
                        PUSH_VAR         .S32 # ns
                        CALL_FN          .S37, 2 # IDENT
                        PUSH_INT         1
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S36 # last_sent
#=======================================================================================================================
# stmt 29  (line 39):                  pad             =   DUPL(' ', SIZE(sentno) + 4)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S38, 0 # " "
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S39, 1 # SIZE
                        PUSH_INT         4
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        CALL_FN          .S40, 2 # DUPL
                        STORE_VAR        .S41 # pad
#=======================================================================================================================
# stmt 30  (line 40):                  pfx             =   EQ(si, 1) '{' sentno ': {'
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S31 # si
                        PUSH_INT         1
                        CALL_FN          .S42, 2 # EQ
                        PUSH_STR         .S43, 0 # "{"
                        PUSH_VAR         .S10 # sentno
                        PUSH_STR         .S44, 0 # ": {"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S45 # pfx
#=======================================================================================================================
# stmt 31  (line 41):                  pfx             =   NE(si, 1) ' ' sentno ': {'
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S31 # si
                        PUSH_INT         1
                        CALL_FN          .S46, 2 # NE
                        PUSH_STR         .S38, 0 # " "
                        PUSH_VAR         .S10 # sentno
                        PUSH_STR         .S44, 0 # ": {"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S45 # pfx
#=======================================================================================================================
# stmt 32  (line 42):                  wsk             =   SORT(mem[sentno])
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        CALL_FN          .S29, 1 # SORT
                        STORE_VAR        .S47 # wsk
#=======================================================================================================================
# stmt 33  (line 43):                  wi              =   0
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .S48 # wi
                        LABEL
.L210:
#=======================================================================================================================
# stmt 34  (line 44):  pm_wrd_loop     wi              =   wi + 1
#=======================================================================================================================
                        STNO
.L211:                  PUSH_VAR         .S48 # wi
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        STORE_VAR        .S48 # wi
#=======================================================================================================================
# stmt 35  (line 45):                  wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S47 # wsk
                        PUSH_VAR         .S48 # wi
                        PUSH_INT         1
                        CALL_FN          .S19, 3 # IDX
                        STORE_VAR        .S50 # wkey
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L148
#=======================================================================================================================
# stmt 36  (line 46):                  next_wkey       =   ''
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S35, 0 # ""
                        STORE_VAR        .S51 # next_wkey
#=======================================================================================================================
# stmt 37  (line 47):                  next_wkey       =   wsk[wi + 1,1]
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S47 # wsk
                        PUSH_VAR         .S48 # wi
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        PUSH_INT         1
                        CALL_FN          .S19, 3 # IDX
                        STORE_VAR        .S51 # next_wkey
#=======================================================================================================================
# stmt 38  (line 48):                  wrd             =   wkey
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S50 # wkey
                        STORE_VAR        .S20 # wrd
#=======================================================================================================================
# stmt 39  (line 49):                  wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S52 # ARB
                        EXEC_STMT_VARIANT 0
                        PAT_LIT          .S53 # arg="'"
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S20 # wrd
                        PUSH_STR         .S35, 0 # ""
                        EXEC_STMT_VARIANT 1, .S20 # subj=wrd
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L254
#=======================================================================================================================
# stmt 40  (line 50):                  wq              =   '"' wkey '"'                :(pm_tdict)
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S54, 0 # "\""
                        PUSH_VAR         .S50 # wkey
                        PUSH_STR         .S54, 0 # "\""
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S55 # wq
    # SM_JUMP
                                                                    jmp .L262
                        LABEL
.L254:
#=======================================================================================================================
# stmt 41  (line 51):  pm_sq           wq              =   "'" wkey "'"
#=======================================================================================================================
                        STNO
.L255:                  PUSH_STR         .S53, 0 # "'"
                        PUSH_VAR         .S50 # wkey
                        PUSH_STR         .S53, 0 # "'"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S55 # wq
                        LABEL
.L262:
#=======================================================================================================================
# stmt 42  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#=======================================================================================================================
                        STNO
.L263:                  PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S50 # wkey
                        CALL_FN          .S19, 2 # IDX
                        CALL_FN          .S29, 1 # SORT
                        STORE_VAR        .S58 # tsk
#=======================================================================================================================
# stmt 43  (line 53):                  ti              =   0
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .S59 # ti
#=======================================================================================================================
# stmt 44  (line 54):                  tline           =   '{'
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S43, 0 # "{"
                        STORE_VAR        .S60 # tline
                        LABEL
.L277:
#=======================================================================================================================
# stmt 45  (line 55):  pm_tag_loop     ti              =   ti + 1
#=======================================================================================================================
                        STNO
.L278:                  PUSH_VAR         .S59 # ti
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        STORE_VAR        .S59 # ti
#=======================================================================================================================
# stmt 46  (line 56):                  tag             =   tsk[ti,1]                   :F(pm_tag_close)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S58 # tsk
                        PUSH_VAR         .S59 # ti
                        PUSH_INT         1
                        CALL_FN          .S19, 3 # IDX
                        STORE_VAR        .S22 # tag
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L332
#=======================================================================================================================
# stmt 47  (line 57):                  tv              =   mem[sentno][wkey][tag]
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        PUSH_VAR         .S10 # sentno
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S50 # wkey
                        CALL_FN          .S19, 2 # IDX
                        PUSH_VAR         .S22 # tag
                        CALL_FN          .S19, 2 # IDX
                        STORE_VAR        .S62 # tv
#=======================================================================================================================
# stmt 48  (line 58):                  IDENT(tline, '{')                               :F(pm_tag_sep)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S60 # tline
                        PUSH_STR         .S43, 0 # "{"
                        CALL_FN          .S37, 2 # IDENT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L317
#=======================================================================================================================
# stmt 49  (line 59):                  tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S60 # tline
                        PUSH_STR         .S53, 0 # "'"
                        PUSH_VAR         .S22 # tag
                        PUSH_STR         .S63, 0 # "': "
                        PUSH_VAR         .S62 # tv
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
                        STORE_VAR        .S60 # tline
    # SM_JUMP
                                                                    jmp .L277
                        LABEL
.L317:
#=======================================================================================================================
# stmt 50  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#=======================================================================================================================
                        STNO
.L318:                  PUSH_VAR         .S60 # tline
                        PUSH_STR         .S65, 0 # ", "
                        PUSH_STR         .S53, 0 # "'"
                        PUSH_VAR         .S22 # tag
                        PUSH_STR         .S63, 0 # "': "
                        PUSH_VAR         .S62 # tv
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
                        STORE_VAR        .S60 # tline
    # SM_JUMP
                                                                    jmp .L277
                        LABEL
.L332:
#=======================================================================================================================
# stmt 51  (line 61):  pm_tag_close    tline           =   tline '}'
#=======================================================================================================================
                        STNO
.L333:                  PUSH_VAR         .S60 # tline
                        PUSH_STR         .S67, 0 # "}"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S60 # tline
#=======================================================================================================================
# stmt 52  (line 62):                  GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S51 # next_wkey
                        CALL_FN          .S39, 1 # SIZE
                        PUSH_INT         0
                        CALL_FN          .S68, 2 # GT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L376
#=======================================================================================================================
# stmt 53  (line 63):                  IDENT(wi, 1)                                    :F(pm_mid_wrd)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S48 # wi
                        PUSH_INT         1
                        CALL_FN          .S37, 2 # IDENT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L363
#=======================================================================================================================
# stmt 54  (line 64):                  OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S45 # pfx
                        PUSH_VAR         .S55 # wq
                        PUSH_STR         .S69, 0 # ": "
                        PUSH_VAR         .S60 # tline
                        PUSH_STR         .S70, 0 # ","
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
                        STORE_VAR        .S71 # OUTPUT
    # SM_JUMP
                                                                    jmp .L210
                        LABEL
.L363:
#=======================================================================================================================
# stmt 55  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#=======================================================================================================================
                        STNO
.L364:                  PUSH_VAR         .S41 # pad
                        PUSH_VAR         .S55 # wq
                        PUSH_STR         .S69, 0 # ": "
                        PUSH_VAR         .S60 # tline
                        PUSH_STR         .S70, 0 # ","
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
                        STORE_VAR        .S71 # OUTPUT
    # SM_JUMP
                                                                    jmp .L210
                        LABEL
.L376:
#=======================================================================================================================
# stmt 56  (line 66):  pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#=======================================================================================================================
                        STNO
.L377:                  PUSH_VAR         .S48 # wi
                        PUSH_INT         1
                        CALL_FN          .S37, 2 # IDENT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L393
#=======================================================================================================================
# stmt 57  (line 67):                  lline           =   pfx wq ': ' tline           :(pm_last_emit)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S45 # pfx
                        PUSH_VAR         .S55 # wq
                        PUSH_STR         .S69, 0 # ": "
                        PUSH_VAR         .S60 # tline
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S74 # lline
    # SM_JUMP
                                                                    jmp .L403
                        LABEL
.L393:
#=======================================================================================================================
# stmt 58  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
#=======================================================================================================================
                        STNO
.L394:                  PUSH_VAR         .S41 # pad
                        PUSH_VAR         .S55 # wq
                        PUSH_STR         .S69, 0 # ": "
                        PUSH_VAR         .S60 # tline
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S74 # lline
                        LABEL
.L403:
#=======================================================================================================================
# stmt 59  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#=======================================================================================================================
                        STNO
.L404:                  PUSH_VAR         .S36 # last_sent
                        PUSH_INT         1
                        CALL_FN          .S37, 2 # IDENT
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L416
#=======================================================================================================================
# stmt 60  (line 70):                  OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S74 # lline
                        PUSH_STR         .S77, 0 # "}}"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S71 # OUTPUT
    # SM_JUMP
                                                                    jmp .L148
                        LABEL
.L416:
#=======================================================================================================================
# stmt 61  (line 71):  pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#=======================================================================================================================
                        STNO
.L417:                  PUSH_VAR         .S74 # lline
                        PUSH_STR         .S79, 0 # "},"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S71 # OUTPUT
    # SM_JUMP
                                                                    jmp .L148
                        LABEL
.L423:
#=======================================================================================================================
# stmt 62  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
#=======================================================================================================================
                        STNO
.L424:                  PUSH_STR         .S14, 0 # "dummy"
                        CALL_FN          .S15, 1 # NAME_PUSH
                        STORE_VAR        .S28 # pp_mem
                        RETURN
                        LABEL
.L429:
#=======================================================================================================================
# stmt 63  (line 74):  *------------------------------------------------------------------------------
#=======================================================================================================================
                        STNO
.L430:                  LABEL
.L431:
#=======================================================================================================================
# stmt 64  (line 75):  slurp           line            =   INPUT                       :F(slurp_done)
#=======================================================================================================================
                        STNO
.L432:                  PUSH_VAR         .S83 # INPUT
                        STORE_VAR        .S84 # line
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L442
#=======================================================================================================================
# stmt 65  (line 76):                  src             =   src line                    :(slurp)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S85 # src
                        PUSH_VAR         .S84 # line
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S85 # src
    # SM_JUMP
                                                                    jmp .L431
                        LABEL
.L442:
#=======================================================================================================================
# stmt 66  (line 78):                  mem             =   TABLE()
#=======================================================================================================================
                        STNO
.L443:
#=======================================================================================================================
# stmt 67  (line 78):                  mem             =   TABLE()
#=======================================================================================================================
                        STNO
                        CALL_FN          .S11, 0 # TABLE
                        STORE_VAR        .S12 # mem
#=======================================================================================================================
# stmt 68  (line 80):                  claws           =
#=======================================================================================================================
                        STNO
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S3 # DIGITS
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE      0, .S9 # num kind=0
                        PAT_LIT          .S87 # arg="_CRD :_PUN"
                        PUSH_VAR         .S88 # epsilon
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE_FN   0, .S8 # new_sent, (NULL)
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        PUSH_STR         .S89, 0 # "_"
                        EXEC_STMT_VARIANT 0
                        PUSH_STR         .S89, 0 # "_"
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE      0, .S20 # wrd kind=0
                        PAT_LIT          .S89 # arg="_"
                        PUSH_VAR         .S5 # UCASE
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S3 # DIGITS
                        PUSH_VAR         .S5 # UCASE
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE      0, .S22 # tag kind=0
                        PUSH_VAR         .S88 # epsilon
                        EXEC_STMT_VARIANT 0
                        PAT_CAPTURE_FN   0, .S18 # add_tok, (NULL)
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        PAT_LIT          .S38 # arg=" "
                        EXEC_STMT_VARIANT 0
                        EXEC_STMT_VARIANT 0
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S90 # claws
#=======================================================================================================================
# stmt 69  (line 94):                  src             claws                           :F(fail)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S90 # claws
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S85 # src
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0, .S85 # subj=src
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L501
#=======================================================================================================================
# stmt 70  (line 95):                  pp_mem(mem)                                     :(END)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S12 # mem
                        CALL_FN          .S28, 1 # pp_mem
    # SM_VOID_POP — pop and discard TOS
    VOID_POP
                        call             rt_pop_void@PLT
    # SM_JUMP
                                                                    jmp .L505
                        LABEL
.L501:
#=======================================================================================================================
# stmt 71  (line 96):  fail            OUTPUT          =  'Pattern match failed'
#=======================================================================================================================
                        STNO
.L502:                  PUSH_STR         .S92, 0 # "Pattern match failed"
                        STORE_VAR        .S71 # OUTPUT
                        LABEL
.L505:
#=======================================================================================================================
# stmt 72
#=======================================================================================================================
                        STNO
.L506:                  HALT
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
