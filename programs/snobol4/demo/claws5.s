                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.Lstr_0:                .string          "nl"
.Lstr_1:                .string          "ALPHABET"
.Lstr_2:                .string          "0123456789"
.Lstr_3:                .string          "DIGITS"
.Lstr_4:                .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.Lstr_5:                .string          "UCASE"
.Lstr_6:                .string          "new_sent()"
.Lstr_7:                .string          "DEFINE"
.Lstr_8:                .string          "new_sent"
.Lstr_9:                .string          "num"
.Lstr_10:               .string          "sentno"
.Lstr_11:               .string          "TABLE"
.Lstr_12:               .string          "mem"
.Lstr_13:               .string          "IDX_SET"
.Lstr_14:               .string          "dummy"
.Lstr_15:               .string          "NAME_PUSH"
.Lstr_16:               .string          "new_sent_end"
.Lstr_17:               .string          "add_tok()"
.Lstr_18:               .string          "add_tok"
.Lstr_19:               .string          "IDX"
.Lstr_20:               .string          "wrd"
.Lstr_21:               .string          "DIFFER"
.Lstr_22:               .string          "tag"
.Lstr_23:               .string          "new_wrd"
.Lstr_24:               .string          "new_tag"
.Lstr_25:               .string          "done"
.Lstr_26:               .string          "add_tok_end"
.Lstr_27:               .string          "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
.Lstr_28:               .string          "pp_mem"
.Lstr_29:               .string          "SORT"
.Lstr_30:               .string          "ssk"
.Lstr_31:               .string          "si"
.Lstr_32:               .string          "ns"
.Lstr_33:               .string          "pm_cnt_loop"
.Lstr_34:               .string          "pm_sent_loop"
.Lstr_35:               .string          ""
.Lstr_36:               .string          "last_sent"
.Lstr_37:               .string          "IDENT"
.Lstr_38:               .string          " "
.Lstr_39:               .string          "SIZE"
.Lstr_40:               .string          "DUPL"
.Lstr_41:               .string          "pad"
.Lstr_42:               .string          "EQ"
.Lstr_43:               .string          "{"
.Lstr_44:               .string          ": {"
.Lstr_45:               .string          "pfx"
.Lstr_46:               .string          "NE"
.Lstr_47:               .string          "wsk"
.Lstr_48:               .string          "wi"
.Lstr_49:               .string          "pm_wrd_loop"
.Lstr_50:               .string          "wkey"
.Lstr_51:               .string          "next_wkey"
.Lstr_52:               .string          "ARB"
.Lstr_53:               .string          "'"
.Lstr_54:               .string          "\""
.Lstr_55:               .string          "wq"
.Lstr_56:               .string          "pm_sq"
.Lstr_57:               .string          "pm_tdict"
.Lstr_58:               .string          "tsk"
.Lstr_59:               .string          "ti"
.Lstr_60:               .string          "tline"
.Lstr_61:               .string          "pm_tag_loop"
.Lstr_62:               .string          "tv"
.Lstr_63:               .string          "': "
.Lstr_64:               .string          "pm_tag_sep"
.Lstr_65:               .string          ", "
.Lstr_66:               .string          "pm_tag_close"
.Lstr_67:               .string          "}"
.Lstr_68:               .string          "GT"
.Lstr_69:               .string          ": "
.Lstr_70:               .string          ","
.Lstr_71:               .string          "OUTPUT"
.Lstr_72:               .string          "pm_mid_wrd"
.Lstr_73:               .string          "pm_last_wrd"
.Lstr_74:               .string          "lline"
.Lstr_75:               .string          "pm_last_mid"
.Lstr_76:               .string          "pm_last_emit"
.Lstr_77:               .string          "}}"
.Lstr_78:               .string          "pm_last_mid2"
.Lstr_79:               .string          "},"
.Lstr_80:               .string          "pm_done"
.Lstr_81:               .string          "pp_mem_end"
.Lstr_82:               .string          "slurp"
.Lstr_83:               .string          "INPUT"
.Lstr_84:               .string          "line"
.Lstr_85:               .string          "src"
.Lstr_86:               .string          "slurp_done"
.Lstr_87:               .string          "_CRD :_PUN"
.Lstr_88:               .string          "epsilon"
.Lstr_89:               .string          "_"
.Lstr_90:               .string          "claws"
.Lstr_91:               .string          "fail"
.Lstr_92:               .string          "Pattern match failed"
.Lstr_93:               .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:
                        .quad            .Lstr_8
                        .quad            .Lpc22
                        .quad            .Lstr_16
                        .quad            .Lpc37
                        .quad            .Lstr_18
                        .quad            .Lpc44
                        .quad            .Lstr_23
                        .quad            .Lpc83
                        .quad            .Lstr_24
                        .quad            .Lpc91
                        .quad            .Lstr_25
                        .quad            .Lpc101
                        .quad            .Lstr_26
                        .quad            .Lpc107
                        .quad            .Lstr_28
                        .quad            .Lpc114
                        .quad            .Lstr_33
                        .quad            .Lpc125
                        .quad            .Lstr_34
                        .quad            .Lpc146
                        .quad            .Lstr_49
                        .quad            .Lpc208
                        .quad            .Lstr_56
                        .quad            .Lpc252
                        .quad            .Lstr_57
                        .quad            .Lpc260
                        .quad            .Lstr_61
                        .quad            .Lpc275
                        .quad            .Lstr_64
                        .quad            .Lpc315
                        .quad            .Lstr_66
                        .quad            .Lpc330
                        .quad            .Lstr_72
                        .quad            .Lpc361
                        .quad            .Lstr_73
                        .quad            .Lpc374
                        .quad            .Lstr_75
                        .quad            .Lpc391
                        .quad            .Lstr_76
                        .quad            .Lpc401
                        .quad            .Lstr_78
                        .quad            .Lpc414
                        .quad            .Lstr_80
                        .quad            .Lpc421
                        .quad            .Lstr_81
                        .quad            .Lpc427
                        .quad            .Lstr_82
                        .quad            .Lpc429
                        .quad            .Lstr_86
                        .quad            .Lpc440
                        .quad            .Lstr_91
                        .quad            .Lpc502
                        .quad            .Lstr_93
                        .quad            .Lpc506
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
# source-file: claws5.sno  (98 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
# ======================================================================================================================
# stmt 1  (line 8):                  &ALPHABET       POS(10) LEN(1) . nl
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
# stmt 2  (line 9):                  DIGITS          =  '0123456789'
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_2, 0 # "0123456789"
                        STORE_VAR        .Lstr_3 # DIGITS
# ======================================================================================================================
# stmt 3  (line 10):                  UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_4, 0 # "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        STORE_VAR        .Lstr_5 # UCASE
# ======================================================================================================================
# stmt 4  (line 12):                  DEFINE('new_sent()')                            :(new_sent_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_6, 0 # "new_sent()"
                        CALL_FN          .Lstr_7, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc36
                        LABEL
# ======================================================================================================================
# stmt 5  (line 13):  new_sent        sentno          =  +num
# ======================================================================================================================
.Lpc22:                 STNO
                        PUSH_VAR         .Lstr_9 # num
                        COERCE_NUM
                        STORE_VAR        .Lstr_10 # sentno
# ======================================================================================================================
# stmt 6  (line 14):                  mem[sentno]     =  TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_11, 0 # TABLE
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_13, 3 # IDX_SET
# ======================================================================================================================
# stmt 7  (line 15):                  new_sent        =  .dummy                       :(NRETURN)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_14, 0 # "dummy"
                        CALL_FN          .Lstr_15, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_8 # new_sent
                        RETURN_VARIANT   2, 0, 35 # SM_NRETURN
.Lpc36:                 LABEL
# ======================================================================================================================
# stmt 8  (line 17):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc37:                 STNO
# ======================================================================================================================
# stmt 9  (line 18):                  DEFINE('add_tok()')                             :(add_tok_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_17, 0 # "add_tok()"
                        CALL_FN          .Lstr_7, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc106
                        LABEL
# ======================================================================================================================
# stmt 10  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ======================================================================================================================
.Lpc44:                 STNO
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_20 # wrd
                        CALL_FN          .Lstr_19, 2 # IDX
                        CALL_FN          .Lstr_21, 1 # DIFFER
                        VOID_POP
                        JUMP_F           .Lpc82
# ======================================================================================================================
# stmt 11  (line 20):                  DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_20 # wrd
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_22 # tag
                        CALL_FN          .Lstr_19, 2 # IDX
                        CALL_FN          .Lstr_21, 1 # DIFFER
                        VOID_POP
                        JUMP_F           .Lpc90
# ======================================================================================================================
# stmt 12  (line 21):                  mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_20 # wrd
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_22 # tag
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_INT         1
                        ADD_NUM
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_20 # wrd
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_22 # tag
                        CALL_FN          .Lstr_13, 3 # IDX_SET
                        JUMP             .Lpc100
.Lpc82:                 LABEL
# ======================================================================================================================
# stmt 13  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ======================================================================================================================
.Lpc83:                 STNO
                        CALL_FN          .Lstr_11, 0 # TABLE
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_20 # wrd
                        CALL_FN          .Lstr_13, 3 # IDX_SET
.Lpc90:                 LABEL
# ======================================================================================================================
# stmt 14  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ======================================================================================================================
.Lpc91:                 STNO
                        PUSH_INT         1
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_20 # wrd
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_22 # tag
                        CALL_FN          .Lstr_13, 3 # IDX_SET
.Lpc100:                LABEL
# ======================================================================================================================
# stmt 15  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ======================================================================================================================
.Lpc101:                STNO
                        PUSH_STR         .Lstr_14, 0 # "dummy"
                        CALL_FN          .Lstr_15, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_18 # add_tok
                        RETURN_VARIANT   2, 0, 105 # SM_NRETURN
.Lpc106:                LABEL
# ======================================================================================================================
# stmt 16  (line 26):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc107:                STNO
# ======================================================================================================================
# stmt 17  (line 27):                  DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_27, 0 # "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,..."
                        CALL_FN          .Lstr_7, 1 # DEFINE
                        VOID_POP
                        JUMP             .Lpc426
                        LABEL
# ======================================================================================================================
# stmt 18  (line 28):  pp_mem          ssk             =   SORT(mem)
# ======================================================================================================================
.Lpc114:                STNO
                        PUSH_VAR         .Lstr_12 # mem
                        CALL_FN          .Lstr_29, 1 # SORT
                        STORE_VAR        .Lstr_30 # ssk
# ======================================================================================================================
# stmt 19  (line 29):                  si              =   0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_31 # si
# ======================================================================================================================
# stmt 20  (line 30):                  ns              =   0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_32 # ns
.Lpc124:                LABEL
# ======================================================================================================================
# stmt 21  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ======================================================================================================================
.Lpc125:                STNO
                        PUSH_VAR         .Lstr_32 # ns
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .Lstr_32 # ns
# ======================================================================================================================
# stmt 22  (line 32):                  ssk[ns,1]                                       :S(pm_cnt_loop)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_30 # ssk
                        PUSH_VAR         .Lstr_32 # ns
                        PUSH_INT         1
                        CALL_FN          .Lstr_19, 3 # IDX
                        VOID_POP
                        JUMP_S           .Lpc124
# ======================================================================================================================
# stmt 23  (line 33):                  ns              =   ns - 1
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_32 # ns
                        PUSH_INT         1
                        SUB_NUM
                        STORE_VAR        .Lstr_32 # ns
# ======================================================================================================================
# stmt 24  (line 34):                  si              =   0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_31 # si
.Lpc145:                LABEL
# ======================================================================================================================
# stmt 25  (line 35):  pm_sent_loop    si              =   si + 1
# ======================================================================================================================
.Lpc146:                STNO
                        PUSH_VAR         .Lstr_31 # si
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .Lstr_31 # si
# ======================================================================================================================
# stmt 26  (line 36):                  sentno          =   ssk[si,1]                   :F(pm_done)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_30 # ssk
                        PUSH_VAR         .Lstr_31 # si
                        PUSH_INT         1
                        CALL_FN          .Lstr_19, 3 # IDX
                        STORE_VAR        .Lstr_10 # sentno
                        JUMP_F           .Lpc420
# ======================================================================================================================
# stmt 27  (line 37):                  last_sent       =   ''
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_35, 0 # ""
                        STORE_VAR        .Lstr_36 # last_sent
# ======================================================================================================================
# stmt 28  (line 38):                  last_sent       =   IDENT(si, ns) 1
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_31 # si
                        PUSH_VAR         .Lstr_32 # ns
                        CALL_FN          .Lstr_37, 2 # IDENT
                        PUSH_INT         1
                        CONCAT
                        STORE_VAR        .Lstr_36 # last_sent
# ======================================================================================================================
# stmt 29  (line 39):                  pad             =   DUPL(' ', SIZE(sentno) + 4)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_38, 0 # " "
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_39, 1 # SIZE
                        PUSH_INT         4
                        ADD_NUM
                        CALL_FN          .Lstr_40, 2 # DUPL
                        STORE_VAR        .Lstr_41 # pad
# ======================================================================================================================
# stmt 30  (line 40):                  pfx             =   EQ(si, 1) '{' sentno ': {'
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_31 # si
                        PUSH_INT         1
                        CALL_FN          .Lstr_42, 2 # EQ
                        PUSH_STR         .Lstr_43, 0 # "{"
                        PUSH_VAR         .Lstr_10 # sentno
                        PUSH_STR         .Lstr_44, 0 # ": {"
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_45 # pfx
# ======================================================================================================================
# stmt 31  (line 41):                  pfx             =   NE(si, 1) ' ' sentno ': {'
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_31 # si
                        PUSH_INT         1
                        CALL_FN          .Lstr_46, 2 # NE
                        PUSH_STR         .Lstr_38, 0 # " "
                        PUSH_VAR         .Lstr_10 # sentno
                        PUSH_STR         .Lstr_44, 0 # ": {"
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_45 # pfx
# ======================================================================================================================
# stmt 32  (line 42):                  wsk             =   SORT(mem[sentno])
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        CALL_FN          .Lstr_29, 1 # SORT
                        STORE_VAR        .Lstr_47 # wsk
# ======================================================================================================================
# stmt 33  (line 43):                  wi              =   0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_48 # wi
.Lpc207:                LABEL
# ======================================================================================================================
# stmt 34  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ======================================================================================================================
.Lpc208:                STNO
                        PUSH_VAR         .Lstr_48 # wi
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .Lstr_48 # wi
# ======================================================================================================================
# stmt 35  (line 45):                  wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_47 # wsk
                        PUSH_VAR         .Lstr_48 # wi
                        PUSH_INT         1
                        CALL_FN          .Lstr_19, 3 # IDX
                        STORE_VAR        .Lstr_50 # wkey
                        JUMP_F           .Lpc145
# ======================================================================================================================
# stmt 36  (line 46):                  next_wkey       =   ''
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_35, 0 # ""
                        STORE_VAR        .Lstr_51 # next_wkey
# ======================================================================================================================
# stmt 37  (line 47):                  next_wkey       =   wsk[wi + 1,1]
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_47 # wsk
                        PUSH_VAR         .Lstr_48 # wi
                        PUSH_INT         1
                        ADD_NUM
                        PUSH_INT         1
                        CALL_FN          .Lstr_19, 3 # IDX
                        STORE_VAR        .Lstr_51 # next_wkey
# ======================================================================================================================
# stmt 38  (line 48):                  wrd             =   wkey
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_50 # wkey
                        STORE_VAR        .Lstr_20 # wrd
# ======================================================================================================================
# stmt 39  (line 49):                  wrd             ?   ARB "'"  =  ''              :F(pm_sq)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_52 # ARB
                        PAT_DEREF
                        PAT_LIT          .Lstr_53 # arg="'"
                        PAT_CAT
                        PUSH_VAR         .Lstr_20 # wrd
                        PUSH_STR         .Lstr_35, 0 # ""
                        EXEC_STMT_VARIANT 1, .Lstr_20 # subj=wrd
                        JUMP_F           .Lpc251
# ======================================================================================================================
# stmt 40  (line 50):                  wq              =   '"' wkey '"'                :(pm_tdict)
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_54, 0 # "\""
                        PUSH_VAR         .Lstr_50 # wkey
                        PUSH_STR         .Lstr_54, 0 # "\""
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_55 # wq
                        JUMP             .Lpc259
.Lpc251:                LABEL
# ======================================================================================================================
# stmt 41  (line 51):  pm_sq           wq              =   "'" wkey "'"
# ======================================================================================================================
.Lpc252:                STNO
                        PUSH_STR         .Lstr_53, 0 # "'"
                        PUSH_VAR         .Lstr_50 # wkey
                        PUSH_STR         .Lstr_53, 0 # "'"
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_55 # wq
.Lpc259:                LABEL
# ======================================================================================================================
# stmt 42  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ======================================================================================================================
.Lpc260:                STNO
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_50 # wkey
                        CALL_FN          .Lstr_19, 2 # IDX
                        CALL_FN          .Lstr_29, 1 # SORT
                        STORE_VAR        .Lstr_58 # tsk
# ======================================================================================================================
# stmt 43  (line 53):                  ti              =   0
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        STORE_VAR        .Lstr_59 # ti
# ======================================================================================================================
# stmt 44  (line 54):                  tline           =   '{'
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_43, 0 # "{"
                        STORE_VAR        .Lstr_60 # tline
.Lpc274:                LABEL
# ======================================================================================================================
# stmt 45  (line 55):  pm_tag_loop     ti              =   ti + 1
# ======================================================================================================================
.Lpc275:                STNO
                        PUSH_VAR         .Lstr_59 # ti
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .Lstr_59 # ti
# ======================================================================================================================
# stmt 46  (line 56):                  tag             =   tsk[ti,1]                   :F(pm_tag_close)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_58 # tsk
                        PUSH_VAR         .Lstr_59 # ti
                        PUSH_INT         1
                        CALL_FN          .Lstr_19, 3 # IDX
                        STORE_VAR        .Lstr_22 # tag
                        JUMP_F           .Lpc329
# ======================================================================================================================
# stmt 47  (line 57):                  tv              =   mem[sentno][wkey][tag]
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # mem
                        PUSH_VAR         .Lstr_10 # sentno
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_50 # wkey
                        CALL_FN          .Lstr_19, 2 # IDX
                        PUSH_VAR         .Lstr_22 # tag
                        CALL_FN          .Lstr_19, 2 # IDX
                        STORE_VAR        .Lstr_62 # tv
# ======================================================================================================================
# stmt 48  (line 58):                  IDENT(tline, '{')                               :F(pm_tag_sep)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_60 # tline
                        PUSH_STR         .Lstr_43, 0 # "{"
                        CALL_FN          .Lstr_37, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc314
# ======================================================================================================================
# stmt 49  (line 59):                  tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_60 # tline
                        PUSH_STR         .Lstr_53, 0 # "'"
                        PUSH_VAR         .Lstr_22 # tag
                        PUSH_STR         .Lstr_63, 0 # "': "
                        PUSH_VAR         .Lstr_62 # tv
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_60 # tline
                        JUMP             .Lpc274
.Lpc314:                LABEL
# ======================================================================================================================
# stmt 50  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ======================================================================================================================
.Lpc315:                STNO
                        PUSH_VAR         .Lstr_60 # tline
                        PUSH_STR         .Lstr_65, 0 # ", "
                        PUSH_STR         .Lstr_53, 0 # "'"
                        PUSH_VAR         .Lstr_22 # tag
                        PUSH_STR         .Lstr_63, 0 # "': "
                        PUSH_VAR         .Lstr_62 # tv
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_60 # tline
                        JUMP             .Lpc274
.Lpc329:                LABEL
# ======================================================================================================================
# stmt 51  (line 61):  pm_tag_close    tline           =   tline '}'
# ======================================================================================================================
.Lpc330:                STNO
                        PUSH_VAR         .Lstr_60 # tline
                        PUSH_STR         .Lstr_67, 0 # "}"
                        CONCAT
                        STORE_VAR        .Lstr_60 # tline
# ======================================================================================================================
# stmt 52  (line 62):                  GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_51 # next_wkey
                        CALL_FN          .Lstr_39, 1 # SIZE
                        PUSH_INT         0
                        CALL_FN          .Lstr_68, 2 # GT
                        VOID_POP
                        JUMP_F           .Lpc373
# ======================================================================================================================
# stmt 53  (line 63):                  IDENT(wi, 1)                                    :F(pm_mid_wrd)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_48 # wi
                        PUSH_INT         1
                        CALL_FN          .Lstr_37, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc360
# ======================================================================================================================
# stmt 54  (line 64):                  OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_45 # pfx
                        PUSH_VAR         .Lstr_55 # wq
                        PUSH_STR         .Lstr_69, 0 # ": "
                        PUSH_VAR         .Lstr_60 # tline
                        PUSH_STR         .Lstr_70, 0 # ","
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_71 # OUTPUT
                        JUMP             .Lpc207
.Lpc360:                LABEL
# ======================================================================================================================
# stmt 55  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ======================================================================================================================
.Lpc361:                STNO
                        PUSH_VAR         .Lstr_41 # pad
                        PUSH_VAR         .Lstr_55 # wq
                        PUSH_STR         .Lstr_69, 0 # ": "
                        PUSH_VAR         .Lstr_60 # tline
                        PUSH_STR         .Lstr_70, 0 # ","
                        CONCAT
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_71 # OUTPUT
                        JUMP             .Lpc207
.Lpc373:                LABEL
# ======================================================================================================================
# stmt 56  (line 66):  pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
# ======================================================================================================================
.Lpc374:                STNO
                        PUSH_VAR         .Lstr_48 # wi
                        PUSH_INT         1
                        CALL_FN          .Lstr_37, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc390
# ======================================================================================================================
# stmt 57  (line 67):                  lline           =   pfx wq ': ' tline           :(pm_last_emit)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_45 # pfx
                        PUSH_VAR         .Lstr_55 # wq
                        PUSH_STR         .Lstr_69, 0 # ": "
                        PUSH_VAR         .Lstr_60 # tline
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_74 # lline
                        JUMP             .Lpc400
.Lpc390:                LABEL
# ======================================================================================================================
# stmt 58  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ======================================================================================================================
.Lpc391:                STNO
                        PUSH_VAR         .Lstr_41 # pad
                        PUSH_VAR         .Lstr_55 # wq
                        PUSH_STR         .Lstr_69, 0 # ": "
                        PUSH_VAR         .Lstr_60 # tline
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_74 # lline
.Lpc400:                LABEL
# ======================================================================================================================
# stmt 59  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ======================================================================================================================
.Lpc401:                STNO
                        PUSH_VAR         .Lstr_36 # last_sent
                        PUSH_INT         1
                        CALL_FN          .Lstr_37, 2 # IDENT
                        VOID_POP
                        JUMP_F           .Lpc413
# ======================================================================================================================
# stmt 60  (line 70):                  OUTPUT          =   lline '}}'                  :(pm_sent_loop)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_74 # lline
                        PUSH_STR         .Lstr_77, 0 # "}}"
                        CONCAT
                        STORE_VAR        .Lstr_71 # OUTPUT
                        JUMP             .Lpc145
.Lpc413:                LABEL
# ======================================================================================================================
# stmt 61  (line 71):  pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
# ======================================================================================================================
.Lpc414:                STNO
                        PUSH_VAR         .Lstr_74 # lline
                        PUSH_STR         .Lstr_79, 0 # "},"
                        CONCAT
                        STORE_VAR        .Lstr_71 # OUTPUT
                        JUMP             .Lpc145
.Lpc420:                LABEL
# ======================================================================================================================
# stmt 62  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ======================================================================================================================
.Lpc421:                STNO
                        PUSH_STR         .Lstr_14, 0 # "dummy"
                        CALL_FN          .Lstr_15, 1 # NAME_PUSH
                        STORE_VAR        .Lstr_28 # pp_mem
                        RETURN
.Lpc426:                LABEL
# ======================================================================================================================
# stmt 63  (line 74):  *------------------------------------------------------------------------------
# ======================================================================================================================
.Lpc427:                STNO
.Lpc428:                LABEL
# ======================================================================================================================
# stmt 64  (line 75):  slurp           line            =   INPUT                       :F(slurp_done)
# ======================================================================================================================
.Lpc429:                STNO
                        PUSH_VAR         .Lstr_83 # INPUT
                        STORE_VAR        .Lstr_84 # line
                        JUMP_F           .Lpc439
# ======================================================================================================================
# stmt 65  (line 76):                  src             =   src line                    :(slurp)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_85 # src
                        PUSH_VAR         .Lstr_84 # line
                        CONCAT
                        STORE_VAR        .Lstr_85 # src
                        JUMP             .Lpc428
.Lpc439:                LABEL
# ======================================================================================================================
# stmt 66  (line 78):                  mem             =   TABLE()
# ======================================================================================================================
.Lpc440:                STNO
# ======================================================================================================================
# stmt 67  (line 78):                  mem             =   TABLE()
# ======================================================================================================================
                        STNO
                        CALL_FN          .Lstr_11, 0 # TABLE
                        STORE_VAR        .Lstr_12 # mem
# ======================================================================================================================
# stmt 68  (line 80):                  claws           =
# ======================================================================================================================
                        STNO
                        PUSH_INT         0
                        PAT_POS
                        PAT_BOXVAL
                        PUSH_VAR         .Lstr_3 # DIGITS
                        PAT_SPAN
                        PAT_CAPTURE      0, .Lstr_9 # num kind=0
                        PAT_LIT          .Lstr_87 # arg="_CRD :_PUN"
                        PUSH_VAR         .Lstr_88 # epsilon
                        PAT_DEREF
                        PAT_CAPTURE_FN   0, .Lstr_8 # new_sent, (NULL)
                        PAT_CAT
                        PAT_CAT
                        PUSH_STR         .Lstr_89, 0 # "_"
                        PAT_NOTANY
                        PUSH_STR         .Lstr_89, 0 # "_"
                        PAT_BREAK
                        PAT_CAT
                        PAT_CAPTURE      0, .Lstr_20 # wrd kind=0
                        PAT_LIT          .Lstr_89 # arg="_"
                        PUSH_VAR         .Lstr_5 # UCASE
                        PAT_ANY
                        PUSH_VAR         .Lstr_3 # DIGITS
                        PUSH_VAR         .Lstr_5 # UCASE
                        CONCAT
                        PAT_SPAN
                        PAT_CAT
                        PAT_CAPTURE      0, .Lstr_22 # tag kind=0
                        PUSH_VAR         .Lstr_88 # epsilon
                        PAT_DEREF
                        PAT_CAPTURE_FN   0, .Lstr_18 # add_tok, (NULL)
                        PAT_CAT
                        PAT_CAT
                        PAT_CAT
                        PAT_ALT
                        PAT_LIT          .Lstr_38 # arg=" "
                        PAT_CAT
                        PAT_ARBNO
                        PAT_BOXVAL
                        PUSH_INT         0
                        PAT_RPOS
                        PAT_BOXVAL
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_90 # claws
# ======================================================================================================================
# stmt 69  (line 94):                  src             claws                           :F(fail)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_90 # claws
                        PAT_DEREF
                        PUSH_VAR         .Lstr_85 # src
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0, .Lstr_85 # subj=src
                        JUMP_F           .Lpc501
# ======================================================================================================================
# stmt 70  (line 95):                  pp_mem(mem)                                     :(END)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_12 # mem
                        CALL_FN          .Lstr_28, 1 # pp_mem
                        VOID_POP
                        JUMP             .Lpc505
.Lpc501:                LABEL
# ======================================================================================================================
# stmt 71  (line 96):  fail            OUTPUT          =  'Pattern match failed'
# ======================================================================================================================
.Lpc502:                STNO
                        PUSH_STR         .Lstr_92, 0 # "Pattern match failed"
                        STORE_VAR        .Lstr_71 # OUTPUT
.Lpc505:                LABEL
# ======================================================================================================================
# stmt 72
# ======================================================================================================================
.Lpc506:                STNO
                        HALT
# -- epilogue -------------------------------------------
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
