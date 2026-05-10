                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.Lstr_0:                .string          "TRIM"
.Lstr_1:                .string          "0123456789"
.Lstr_2:                .string          "NUMERALS"
.Lstr_3:                .string          "'-"
.Lstr_4:                .string          "UCASE"
.Lstr_5:                .string          "LCASE"
.Lstr_6:                .string          "WORD"
.Lstr_7:                .string          "WPAT"
.Lstr_8:                .string          "NEXTL"
.Lstr_9:                .string          "INPUT"
.Lstr_10:               .string          "LINE"
.Lstr_11:               .string          "NEXTW"
.Lstr_12:               .string          ""
.Lstr_13:               .string          "N"
.Lstr_14:               .string          "DONE"
.Lstr_15:               .string          " words"
.Lstr_16:               .string          "OUTPUT"
.Lstr_17:               .string          "END"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:
                        .quad            .Lstr_8          ; .quad            .Lpc25
                        .quad            .Lstr_11         ; .quad            .Lpc30
                        .quad            .Lstr_14         ; .quad            .Lpc44
                        .quad            .Lstr_17         ; .quad            .Lpc51
                        .quad            0                ; .quad            0
                        .text
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lchunk_registry]
                        call             rt_register_expressions@PLT
                        call             rt_init@PLT # rt_init(argc, argv)
# source-file: wordcount.sno  (13 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
# ======================================================================================================================
# stmt 2  (line 5):        &TRIM    =  1
# ======================================================================================================================
.Lpc0:                  STNO
                        PUSH_INT         1
                        STORE_VAR        .Lstr_0 # TRIM
# ======================================================================================================================
# stmt 3  (line 6):        NUMERALS =  '0123456789'
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_1, 0 # "0123456789"
                        STORE_VAR        .Lstr_2 # NUMERALS
# ======================================================================================================================
# stmt 4  (line 7):        WORD     =  "'-" NUMERALS &UCASE &LCASE
# ======================================================================================================================
                        STNO
                        PUSH_STR         .Lstr_3, 0 # "'-"
                        PUSH_VAR         .Lstr_2 # NUMERALS
                        PUSH_VAR         .Lstr_4 # UCASE
                        PUSH_VAR         .Lstr_5 # LCASE
                        CONCAT
                        CONCAT
                        CONCAT
                        STORE_VAR        .Lstr_6 # WORD
# ======================================================================================================================
# stmt 5  (line 8):        WPAT     =  BREAK(WORD) SPAN(WORD)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_6 # WORD
                        PAT_BREAK
                        PAT_BOXVAL
                        PUSH_VAR         .Lstr_6 # WORD
                        PAT_SPAN
                        PAT_BOXVAL
                        CONCAT
                        STORE_VAR        .Lstr_7 # WPAT
.Lpc24:                 LABEL
# ======================================================================================================================
# stmt 6  (line 9):  NEXTL LINE     =  INPUT                            :F(DONE)
# ======================================================================================================================
.Lpc25:                 STNO
                        PUSH_VAR         .Lstr_9 # INPUT
                        STORE_VAR        .Lstr_10 # LINE
                        JUMP_F           .Lpc43
.Lpc29:                 LABEL
# ======================================================================================================================
# stmt 7  (line 10):  NEXTW LINE     ?  WPAT =                           :F(NEXTL)
# ======================================================================================================================
.Lpc30:                 STNO
                        PUSH_VAR         .Lstr_7 # WPAT
                        PAT_DEREF
                        PUSH_VAR         .Lstr_10 # LINE
                        PUSH_STR         .Lstr_12, 0 # ""
                        EXEC_STMT_VARIANT 1, .Lstr_10 # subj=LINE
                        JUMP_F           .Lpc24
# ======================================================================================================================
# stmt 8  (line 11):        N        =  N + 1                            :(NEXTW)
# ======================================================================================================================
                        STNO
                        PUSH_VAR         .Lstr_13 # N
                        PUSH_INT         1
                        ADD_NUM
                        STORE_VAR        .Lstr_13 # N
                        JUMP             .Lpc29
.Lpc43:                 LABEL
# ======================================================================================================================
# stmt 9  (line 12):  DONE  OUTPUT   =  +N ' words'
# ======================================================================================================================
.Lpc44:                 STNO
                        PUSH_VAR         .Lstr_13 # N
                        COERCE_NUM
                        PUSH_STR         .Lstr_15, 0 # " words"
                        CONCAT
                        STORE_VAR        .Lstr_16 # OUTPUT
                        LABEL
# ======================================================================================================================
# stmt 10
# ======================================================================================================================
.Lpc51:                 STNO
                        HALT
# -- epilogue -------------------------------------------
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
