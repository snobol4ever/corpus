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
.Lexpression_registry:  .quad            .S8              ; .quad            .L23
                        .quad            .S11             ; .quad            .L28
                        .quad            .S14             ; .quad            .L42
                        .quad            .S17             ; .quad            .L49
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
                        STNO
.L0:                    PUSH_INT         1
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
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S6 # WORD
#=======================================================================================================================
# stmt 5  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S6 # WORD
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S6 # WORD
                        EXEC_STMT_VARIANT 0
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S7 # WPAT
                        LABEL
.L22:
#=======================================================================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
#=======================================================================================================================
                        STNO
.L23:                   PUSH_VAR         .S9 # INPUT
                        STORE_VAR        .S10 # LINE
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L41
                        LABEL
.L27:
#=======================================================================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
#=======================================================================================================================
                        STNO
.L28:                   PUSH_VAR         .S7 # WPAT
                        EXEC_STMT_VARIANT 0
                        PUSH_VAR         .S10 # LINE
                        PUSH_STR         .S12, 0 # ""
                        EXEC_STMT_VARIANT 1, .S10 # subj=LINE
    # SM_JUMP_F — jump if not last_ok
                        call             rt_last_ok@PLT
                        test             rax, rax
                        je               .L22
#=======================================================================================================================
# stmt 8  (line 11):        N        =  N + 1                            :(NEXTW)
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S13 # N
                        PUSH_INT         1
    # ADD_NUM
    ADD_NUM
                        mov              rdi, 0x11
                        call             rt_arith@PLT
                        STORE_VAR        .S13 # N
    # SM_JUMP
                                                                    jmp .L27
                        LABEL
.L41:
#=======================================================================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
#=======================================================================================================================
                        STNO
.L42:                   PUSH_VAR         .S13 # N
    # SM_COERCE_NUM — coerce TOS string to number
    COERCE_NUM
                        call             rt_coerce_num@PLT
                        PUSH_STR         .S15, 0 # " words"
    # SM_CONCAT — pop right+left, push concat result
    CONCAT
                        call             rt_concat@PLT
                        STORE_VAR        .S16 # OUTPUT
                        LABEL
#=======================================================================================================================
# stmt 10
#=======================================================================================================================
                        STNO
.L49:                   HALT
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
