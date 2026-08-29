                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/wordcount/wordcount.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_var_bx, @function
n0_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               sub              rsp, 16
                        mov              r11, 1
                        mov              rax, qword ptr [r9 + 80]             # PAT$0$A0
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_coerce_string_α
                        .size            n0_var_bx, .-n0_var_bx
                        .type            n1_coerce_string_bx, @function
n1_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_coerce_string_α:     sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 4522053
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_match_break_α
                        .size            n1_coerce_string_bx, .-n1_coerce_string_bx
                        .type            n2_match_break_bx, @function
n2_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_break_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              edi, r14d
                        mov              rsi, qword ptr [rsp + 24]            # coerce_string
                        mov              edx, dword ptr [rsp + 20]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sg_scan_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, r15d;                           jl    .Lmatch_break_α_8_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   PAT$0_ω
.Lmatch_break_α_8_240:  mov              dword ptr [rbp + -64], r14d
                        mov              r14d, eax;                           jmp   n3_match_span_α
n2_match_break_β:       mov              r11, 3
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 32;                             jmp   PAT$0_ω
                        .size            n2_match_break_bx, .-n2_match_break_bx
                        .type            n3_match_span_bx, @function
n3_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_span_α:        sub              rsp, 16
                        mov              r11, 4
                        lea              rdi, [rip + .S0]
                        lea              rsi, [rbp + -96]
                        lea              rdx, [rbp + -88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pat_prim_str@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jns   .Lmatch_span_α_10_239
                        add              rsp, 16;                             jmp   n2_match_break_β
.Lmatch_span_α_10_239:  mov              r8, qword ptr [rbp + -96]
                        mov              dword ptr [rbp + -96], 0
.Lmatch_span_α_10_0:    mov              eax, r14d
                        add              eax, dword ptr [rbp + -96]
                        cmp              eax, r15d;                           jge   .Lmatch_span_α_10_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              eax, dword ptr [rbp + -88]
                        mov              edx, 0
.Lmatch_span_α_10_2:    cmp              edx, eax;                            jge   .Lmatch_span_α_10_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi;                            je    .Lmatch_span_α_10_3
                        add              edx, 1;                              jmp   .Lmatch_span_α_10_2
.Lmatch_span_α_10_3:    add              dword ptr [rbp + -96], 1;            jmp   .Lmatch_span_α_10_0
.Lmatch_span_α_10_1:    mov              eax, dword ptr [rbp + -96]
                        test             eax, eax;                            jg    .Lmatch_span_α_10_240
                        add              rsp, 16;                             jmp   n2_match_break_β
.Lmatch_span_α_10_240:  mov              edx, r14d
                        mov              dword ptr [rbp + -92], edx
                        add              edx, eax
                        mov              r14d, edx;                           jmp   PAT$0_γ
n3_match_span_β:        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -92]
                        add              rsp, 16;                             jmp   n2_match_break_β
                        .size            n3_match_span_bx, .-n3_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n3_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "NUMERALS"
.Lgvan1:                .string          "WORD"
.Lgvan2:                .string          "WPAT"
.Lgvan3:                .string          "LINE"
.Lgvan4:                .string          "N"
.Lgvan5:                .string          "PAT$0$A0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n11_statement_begin_bx, @function
n11_statement_begin_bx:
#=======================================================================================================================
#       &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n11_statement_begin_α:  mov              r11, 5
                        mov              r10, 1;                              jmp   n12_lit_integer_α
n11_statement_begin_β:  mov              r11, 5;                              jmp   n15_statement_begin_α
                        .size            n11_statement_begin_bx, .-n11_statement_begin_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_66_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_66_0:   .quad            1
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_67_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_67_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_67_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_67_0:
                        .quad            1
                        .size            n13_kw_assign_snobol4_bx, .-n13_kw_assign_snobol4_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 8
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n15_statement_begin_α
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_statement_begin_bx, @function
n15_statement_begin_bx:
#=======================================================================================================================
#       NUMERALS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n15_statement_begin_α:  mov              r11, 9
                        mov              r10, 2;                              jmp   n16_lit_string_α
n15_statement_begin_β:  mov              r11, 9;                              jmp   n19_statement_begin_α
                        .size            n15_statement_begin_bx, .-n15_statement_begin_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_72_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
.Llit_string_α_72_0:    .quad            .Llit_string_α_72_0_s
.Llit_string_α_72_0_s:  .string          "0123456789"
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_assign_bx, @function
n17_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # NUMERALS
                        mov              qword ptr [r9 + 8], rdx;             jmp   n18_statement_end_α
                        .size            n17_assign_bx, .-n17_assign_bx
                        .type            n18_statement_end_bx, @function
n18_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n19_statement_begin_α
                        .size            n18_statement_end_bx, .-n18_statement_end_bx
                        .type            n19_statement_begin_bx, @function
n19_statement_begin_bx:
#=======================================================================================================================
#       WORD = "'-" NUMERALS &UCASE &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n19_statement_begin_α:  mov              r11, 13
                        mov              r10, 3;                              jmp   n20_lit_string_α
n19_statement_begin_β:  mov              r11, 13;                             jmp   n29_statement_begin_α
                        .size            n19_statement_begin_bx, .-n19_statement_begin_bx
                        .type            n20_lit_string_bx, @function
n20_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_var_α
.Llit_string_α_78_0:    .quad            .Llit_string_α_78_0_s
.Llit_string_α_78_0_s:  .string          "'-"
                        .size            n20_lit_string_bx, .-n20_lit_string_bx
                        .type            n21_var_bx, @function
n21_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              sub              rsp, 16
                        mov              r11, 15
                        mov              rax, qword ptr [r9 + 0]              # NUMERALS
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_binop_α
n21_var_β:              mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
                        .size            n21_var_bx, .-n21_var_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_kw_snobol4_α
n22_binop_β:            mov              r11, 16
                        add              rsp, 16;                             jmp   n21_var_β
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_kw_snobol4_bx, @function
n23_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_kw_snobol4_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_81_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_binop_α
.Lkw_snobol4_α_81_0:    .quad            25
                        .size            n23_kw_snobol4_bx, .-n23_kw_snobol4_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # kw_snobol4
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_kw_snobol4_α
n24_binop_β:            mov              r11, 18
                        add              rsp, 32;                             jmp   n22_binop_β
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_kw_snobol4_bx, @function
n25_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_kw_snobol4_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_83_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_binop_α
.Lkw_snobol4_α_83_0:    .quad            26
                        .size            n25_kw_snobol4_bx, .-n25_kw_snobol4_bx
                        .type            n26_binop_bx, @function
n26_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            sub              rsp, 16
                        mov              r11, 20
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # kw_snobol4
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_assign_α
                        .size            n26_binop_bx, .-n26_binop_bx
                        .type            n27_assign_bx, @function
n27_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # WORD
                        mov              qword ptr [r9 + 24], rdx;            jmp   n28_statement_end_α
                        .size            n27_assign_bx, .-n27_assign_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 22
                        mov              r10, 3
                        add              rsp, 112;                            jmp   n29_statement_begin_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#=======================================================================================================================
#       WPAT = BREAK(WORD) SPAN(WORD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n29_statement_begin_α:  mov              r11, 23
                        mov              r10, 4;                              jmp   n30_var_α
n29_statement_begin_β:  mov              r11, 23;                             jmp   n37_statement_begin_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 24
                        mov              rax, qword ptr [r9 + 16]             # WORD
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_assign_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT$0$A0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n32_lit_string_α
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_lit_string_bx, @function
n32_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_lit_string_α
n32_lit_string_β:       mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Llit_string_α_92_0:    .quad            .Llit_string_α_92_0_s
.Llit_string_α_92_0_s:  .string          "PAT$0"
                        .size            n32_lit_string_bx, .-n32_lit_string_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
n33_lit_string_β:       mov              r11, 27
                        add              rsp, 16;                             jmp   n32_lit_string_β
.Llit_string_α_93_0:    .quad            .Llit_string_α_93_0_s
.Llit_string_α_93_0_s:  .string          "1"
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 28
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_rkfnzd95:        .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_rkfnzd95]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_94_240
                        add              rsp, 16;                             jmp   n33_lit_string_β
.Lcall_α_94_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
n34_call_β:             mov              r11, 28
                        add              rsp, 16;                             jmp   n33_lit_string_β
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # WPAT
                        mov              qword ptr [r9 + 40], rdx;            jmp   n36_statement_end_α
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 30
                        mov              r10, 4
                        add              rsp, 64;                             jmp   n37_statement_begin_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#=======================================================================================================================
# NEXTL LINE = INPUT  :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n37_statement_begin_α:  mov              r11, 31
                        mov              r10, 5;                              jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 31;                             jmp   n57_statement_begin_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rdi, qword ptr [rip + .Lvar_α_101_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_101_240
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lvar_α_101_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
.Lvar_α_101_0:          .quad            .Lvar_α_101_0_s
.Lvar_α_101_0_s:        .string          "INPUT"
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # LINE
                        mov              qword ptr [r9 + 56], rdx;            jmp   n40_statement_end_α
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 34
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n41_statement_begin_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#=======================================================================================================================
# NEXTW LINE ? WPAT =  :F(NEXTL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n41_statement_begin_α:  mov              r11, 35
                        mov              r10, 6;                              jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 35;                             jmp   n37_statement_begin_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 36
                        mov              rax, qword ptr [r9 + 48]             # LINE
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 32]             # WPAT
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
n43_var_β:              mov              r11, 37
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_α
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_assign_bx, @function
n44_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 38
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_109_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_match_begin_α
n44_assign_β:           mov              r11, 38;                             jmp   n43_var_β
.Lassign_α_109_0:       .quad            .Lassign_α_109_0_s
.Lassign_α_109_0_s:     .string          "PATV$0"
                        .size            n44_assign_bx, .-n44_assign_bx
                        .type            n45_match_begin_bx, @function
n45_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_match_begin_α:      mov              r11, 39
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_111_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_111_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n46_match_defer_α
n45_match_begin_β:      mov              r11, 39
.Lmatch_begin_α_111_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_111_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_111_1
                                                                              jmp   .Lmatch_begin_α_111_0
.Lmatch_begin_β_111_1:
n45_match_begin_af:     mov              r11, 39
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n44_assign_β
                        .size            n45_match_begin_bx, .-n45_match_begin_bx
                        .type            n46_match_defer_bx, @function
n46_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_match_defer_α:      mov              r11, 40
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_112_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_112_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_112_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_112_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_112_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_112_23
                                                                              jmp   .Lmatch_defer_α_112_22
.Lmatch_defer_α_112_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_112_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_112_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_112_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_112_0
.Lmatch_defer_α_112_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_112_0
.Lmatch_defer_α_112_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lmatch_defer_α_112_23: test             rax, rax;                            jz    .Lmatch_defer_α_112_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_112_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_112_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_112_4:  lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 320], eax;          jmp   n47_match_end_α
.Lmatch_defer_α_112_5:                                                        jmp   n45_match_begin_β
.Lmatch_defer_α_112_0:  mov              eax, edx
                        test             eax, eax;                            js    n45_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_112_6]
                        push             rcx
                        push             rax;                                 jmp   n47_match_end_α
.Lmatch_defer_α_112_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n45_match_begin_β
n46_match_defer_β:      mov              r11, 40
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_112_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_112_12
                                                                              jmp   rax
.Lmatch_defer_β_112_12:                                                       jmp   qword ptr [rsp]
                        .size            n46_match_defer_bx, .-n46_match_defer_bx
                        .type            n47_match_end_bx, @function
n47_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_match_end_α:        mov              r11, 41
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -48], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmatch_end_α_114_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n45_match_begin_af
.Lmatch_end_α_114_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -48]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n48_lit_string_α
                        .size            n47_match_end_bx, .-n47_match_end_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_match_replace_α
.Llit_string_α_115_0:   .quad            .Llit_string_α_115_0_s
.Llit_string_α_115_0_s: .string          ""
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_match_replace_bx, @function
n49_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_match_replace_α:    mov              r11, 43
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_117_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_117_1
.Lmatch_replace_α_117_0:
                        .quad            .Lmatch_replace_α_117_0_s
.Lmatch_replace_α_117_0_s:
                        .string          "LINE"
.Lmatch_replace_α_117_1:
                                                                              jmp   n50_statement_end_α
                        .size            n49_match_replace_bx, .-n49_match_replace_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 44
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n51_statement_begin_α
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#=======================================================================================================================
#       N = N + 1  :(NEXTW)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n51_statement_begin_α:  mov              r11, 45
                        mov              r10, 7;                              jmp   n52_var_α
n51_statement_begin_β:  mov              r11, 45;                             jmp   n41_statement_begin_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              r11, 46
                        mov              rax, qword ptr [r9 + 64]             # N
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_integer_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_integer_β:      mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Llit_integer_α_123_0:  .quad            1
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_binop_bx, @function
n54_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              r11, 48
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_124_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_124_7
.Lbinop_α_124_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_124_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_124_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_124_4
.Lbinop_α_124_3:        movq             xmm0, rsi
.Lbinop_α_124_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_124_7:                                                              jmp   n55_assign_α
.Lbinop_α_124_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_124_240
                        add              rsp, 16;                             jmp   n53_lit_integer_β
.Lbinop_α_124_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
                        .size            n54_binop_bx, .-n54_binop_bx
                        .type            n55_assign_bx, @function
n55_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 49
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # N
                        mov              qword ptr [r9 + 72], rdx;            jmp   n56_statement_end_α
                        .size            n55_assign_bx, .-n55_assign_bx
                        .type            n56_statement_end_bx, @function
n56_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 50
                        mov              r10, 7
                        add              rsp, 48;                             jmp   n41_statement_begin_α
                        .size            n56_statement_end_bx, .-n56_statement_end_bx
                        .type            n57_statement_begin_bx, @function
n57_statement_begin_bx:
#=======================================================================================================================
# DONE  OUTPUT = +N ' words'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n57_statement_begin_α:  mov              r11, 51
                        mov              r10, 8;                              jmp   n58_var_α
n57_statement_begin_β:  mov              r11, 51;                             jmp   main_γ
                        .size            n57_statement_begin_bx, .-n57_statement_begin_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 64]             # N
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_unop_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_unop_bx, @function
n59_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_unop_α:             sub              rsp, 16
                        mov              r11, 53
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_lit_string_α
n59_unop_β:             mov              r11, 53
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
                        .size            n59_unop_bx, .-n59_unop_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_binop_α
n60_lit_string_β:       mov              r11, 54
                        add              rsp, 16;                             jmp   n59_unop_β
.Llit_string_α_132_0:   .quad            .Llit_string_α_132_0_s
.Llit_string_α_132_0_s: .string          " words"
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            sub              rsp, 16
                        mov              r11, 55
                        mov              rdi, qword ptr [rsp + 32]            # unop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_assign_α
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 56
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_134_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_statement_end_α
.Lassign_α_134_0:       .quad            .Lassign_α_134_0_s
.Lassign_α_134_0_s:     .string          "OUTPUT"
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 57
                        mov              r10, 8
                        add              rsp, 64;                             jmp   main_γ
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            64
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "WORD"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1
                        .byte            0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
