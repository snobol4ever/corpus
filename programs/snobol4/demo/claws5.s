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
#==================================================