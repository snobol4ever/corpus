                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.S0:                    .string          "TRIM"
.S1:                    .string          "0123456789"
.S2:                    .string          "NUMERALS"
.S3:                    .string          "'-"
.S4:                    .string          "UCASE"
.S5:                    .string          "LCASE"
.S6:                    .string          "WORD"
.S7:                    .string          "WPAT"
.S8:                    .string          "NEXTL"
.S9:                    .string          "INPUT"
.S10:                   .string          "LINE"
.S11:                   .string          "NEXTW"
.S12:                   .string          ""
.S13:                   .string          "N"
.S14:                   .string          "DONE"
.S15:                   .string          " words"
.S16:                   .string          "OUTPUT"
.S17:                   .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lexpression_registry:  .quad            .S8              ; .quad            .L25
                        .quad            .S11             ; .quad            .L30
                        .quad            .S14             ; .quad            .L44
                        .quad            .S17             ; .quad            .L51
                        .quad            0                ; .quad            0
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
# stmt 2  (line 5):        &TRIM    =  1
#=======================================================================================================================
.L0:                    STNO
                        PUSH_INT         1
                        STORE_VAR        .S0 # TRIM
#=======================================================================================================================
# stmt 3  (line 6):        NUMERALS =  '0123456789'
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S1, 0 # "0123456789"
                        STORE_VAR        .S2 # NUMERALS
#=======================================================================================================================
# stmt 4  (line 7):        WORD     =  "'-" NUMERALS &UCASE &LCASE
#=======================================================================================================================
                        STNO
                        PUSH_STR         .S3, 0 # "'-"
                        PUSH_VAR         .S2 # NUMERALS
                        PUSH_VAR         .S4 # UCASE
                        PUSH_VAR         .S5 # LCASE
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .S6 # WORD
#=======================================================================================================================
# stmt 5  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S6 # WORD
                        PAT_BREAK
                        PAT_BOXVAL
                        PUSH_VAR         .S6 # WORD
                        PAT_SPAN
                        PAT_BOXVAL
                        CONCAT
                        STORE_VAR        .S7 # WPAT
.L24:                   LABEL
#=======================================================================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
#=======================================================================================================================
.L25:                   STNO
                        PUSH_VAR         .S9 # INPUT
                        STORE_VAR        .S10 # LINE
                        JUMP_F           .L43
.L29:                   LABEL
#=======================================================================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
#=======================================================================================================================
.L30:                   STNO
                        PUSH_VAR         .S7 # WPAT
                        PAT_DEREF
                        PUSH_VAR         .S10 # LINE
                        PUSH_STR         .S12, 0 # ""
                        EXEC_STMT_VARIANT 1, .S10 # subj=LINE
                        JUMP_F           .L24
#=======================================================================================================================
# stmt 8  (line 11):        N        =  N + 1                            :(NEXTW)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S13 # N
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .S13 # N
                        JUMP             .L29
.L43:                   LABEL
#=======================================================================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
#=======================================================================================================================
.L44:                   STNO
                        PUSH_VAR         .S13 # N
                        COERCE_NUM
                        PUSH_STR         .S15, 0 # " words"
                        CONCAT
                        STORE_VAR        .S16 # OUTPUT
                        LABEL
#=======================================================================================================================
# stmt 10
#=======================================================================================================================
.L51:                   STNO
                        HALT
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
