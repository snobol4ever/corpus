                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.S0:                    .string          "ROMAN(N)UNITS"
.S1:                    .string          "DEFINE"
.S2:                    .string          "ROMAN"
.S3:                    .string          "UNITS"
.S4:                    .string          "N"
.S5:                    .string          ""
.S6:                    .string          ","
.S7:                    .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        .text
                        .section         .data
                        .align           8
.Lexpression_registry:  .quad            .S2              ; .quad            .L6
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
# stmt 2  (line 6):  	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#=======================================================================================================================
                        STNO
.L0:                    PUSH_STR         .S0, 0 # "ROMAN(N)UNITS"
                        CALL_FN          .S1, 1 # DEFINE
    VOID_POP
                                                                    jmp .L29
                        LABEL
.L6:                    DEFINE_ENTRY     # ROMAN
#=======================================================================================================================
# stmt 4  (line 10):  ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#=======================================================================================================================
                        STNO
                        PUSH_INT         1
    PAT_RPOS
                        PUSH_INT         1
    PAT_LEN
                        PAT_CAPTURE      0, .S3 # UNITS kind=0
    PAT_CAT
                        PUSH_VAR         .S4 # N
                        PUSH_STR         .S5, 0 # ""
                        EXEC_STMT_VARIANT 1, .S4 # subj=N
                        RETURN_VARIANT   0, 2, 17 # SM_RETURN_F
#=======================================================================================================================
# stmt 6  (line 14):  	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S3 # UNITS
    PAT_DEREF
                        PUSH_STR         .S6, 0 # ","
    PAT_BREAK
                        PAT_CAPTURE      0, .S3 # UNITS kind=0
    PAT_CAT
                        PUSH_STR         .S7, 0 # "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0
                        RETURN_VARIANT   1, 2, 28 # SM_FRETURN_F
.L29:                   HALT
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
