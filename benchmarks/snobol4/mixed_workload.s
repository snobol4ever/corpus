                        .intel_syntax    noprefix
                        .text
                        .file            1 "mixed_workload.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_assign_save_bx, @function
n0_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_assign_save_bx, .-n0_match_assign_save_bx
                        .type            n1_match_break_bx, @function
n1_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        mov              r11, 2
                        movsxd           rcx, r14d
.Lmatch_break_α_7_0:    cmp              ecx, r15d;                           jl    .Lmatch_break_α_7_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_break_α_7_240:  movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_7_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_7_0
.Lmatch_break_α_7_1:    mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r11, 2
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n1_match_break_bx, .-n1_match_break_bx
                        .type            n2_match_assign_cond_bx, @function
n2_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              r11, 3
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_lit_α
n2_match_assign_cond_β: mov              r11, 3
                        sub              r12, 24;                             jmp   n1_match_break_β
                        .size            n2_match_assign_cond_bx, .-n2_match_assign_cond_bx
                        .type            n3_match_lit_bx, @function
n3_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n2_match_assign_cond_β
                        add              r14d, 1;                             jmp   PAT$0_γ
n3_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n2_match_assign_cond_β
                        .size            n3_match_lit_bx, .-n3_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n3_match_lit_β
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
                        mov              edi, 12
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 12
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "RSUM"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "MIXED_WORKLOAD"
.Lgvan3:                .string          "ZPAT"
.Lgvan4:                .string          "ZWORD"
.Lgvan5:                .string          "ZI"
.Lgvan6:                .string          "ZS"
.Lgvan7:                .string          "ZTAB"
.Lgvan8:                .string          "ZDATA"
.Lgvan9:                .string          "ZIDX"
.Lgvan10:               .string          "ZTOT"
.Lgvan11:               .string          "ZJ"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n12_statement_begin_α:  mov              r11, 5
                        mov              r10, 1;                              jmp   n13_lit_integer_α
n12_statement_begin_β:  mov              r11, 5;                              jmp   n16_statement_begin_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_kw_assign_snobol4_α
.Llit_integer_α_179_0:  .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_kw_assign_snobol4_bx, @function
n14_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_180_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_180_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lkw_assign_snobol4_α_180_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
.Lkw_assign_snobol4_α_180_0:
                        .quad            1
                        .size            n14_kw_assign_snobol4_bx, .-n14_kw_assign_snobol4_bx
                        .type            n15_statement_end_bx, @function
n15_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 8
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n16_statement_begin_α
                        .size            n15_statement_end_bx, .-n15_statement_end_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n16_statement_begin_α:  mov              r11, 9
                        mov              r10, 2;                              jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 9;                              jmp   n20_statement_begin_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_kw_assign_snobol4_α
.Llit_integer_α_185_0:  .quad            0
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_kw_assign_snobol4_bx, @function
n18_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_186_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_186_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lkw_assign_snobol4_α_186_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_statement_end_α
.Lkw_assign_snobol4_α_186_0:
                        .quad            0
                        .size            n18_kw_assign_snobol4_bx, .-n18_kw_assign_snobol4_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n20_statement_begin_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_statement_begin_bx, @function
n20_statement_begin_bx:
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n20_statement_begin_α:  mov              r11, 13
                        mov              r10, 3;                              jmp   n21_lit_integer_α
n20_statement_begin_β:  mov              r11, 13;                             jmp   n25_statement_begin_α
                        .size            n20_statement_begin_bx, .-n20_statement_begin_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_unop_α
.Llit_integer_α_191_0:  .quad            1
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_unop_bx, @function
n22_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_α:             sub              rsp, 16
                        mov              r11, 15
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_kw_assign_snobol4_α
n22_unop_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n20_statement_begin_β
                        .size            n22_unop_bx, .-n22_unop_bx
                        .type            n23_kw_assign_snobol4_bx, @function
n23_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_193_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_193_240
                        add              rsp, 16;                             jmp   n22_unop_β
.Lkw_assign_snobol4_α_193_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_statement_end_α
.Lkw_assign_snobol4_α_193_0:
                        .quad            10
                        .size            n23_kw_assign_snobol4_bx, .-n23_kw_assign_snobol4_bx
                        .type            n24_statement_end_bx, @function
n24_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 17
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n25_statement_begin_α
                        .size            n24_statement_end_bx, .-n24_statement_end_bx
                        .type            n25_statement_begin_bx, @function
n25_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('RSUM(N)')                               :(RSUM_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n25_statement_begin_α:  mov              r11, 18
                        mov              r10, 4;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 18;                             jmp   n46_statement_begin_α
                        .size            n25_statement_begin_bx, .-n25_statement_begin_bx
                        .type            n26_define_bx, @function
n26_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 19
                        mov              rdi, qword ptr [rip + .Ldefine_α_199_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_199_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_199_0]
                        lea              rsi, [rip + RSUM_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 19;                             jmp   n25_statement_begin_β
.Ldefine_α_199_0:       .quad            .Ldefine_α_199_0_s
.Ldefine_α_199_0_s:     .string          "RSUM"
.Ldefine_α_199_1:       .quad            .Ldefine_α_199_1_s
.Ldefine_α_199_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_200_245
#-----------------------------------------------------------------------------------------------------------------------
RSUM_α:                 sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # RSUM
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_200_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_200_41
.Ldefine_α_200_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_200_41:      lea              rcx, [rip + RSUM_γ]
                        lea              rax, [rip + RSUM_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
RSUM_γ:                 mov              rdi, qword ptr [r9 + 0]              # RSUM
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_200_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_200_110
.Ldefine_α_200_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_200_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
RSUM_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_200_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_200_180
.Ldefine_α_200_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_200_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_200_245:
                        .size            n26_define_bx, .-n26_define_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 20
                        mov              r10, 4;                              jmp   n46_statement_begin_α
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
#=======================================================================================================================
# RSUM    RSUM = EQ(N, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n28_statement_begin_α:  mov              r11, 21
                        mov              r10, 5;                              jmp   n29_var_α
n28_statement_begin_β:  mov              r11, 21;                             jmp   n37_statement_begin_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_var_bx, @function
n29_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 22
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
                        .size            n29_var_bx, .-n29_var_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_coerce_numeric_α
n30_lit_integer_β:      mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Llit_integer_α_206_0:  .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_coerce_numeric_bx, @function
n31_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 24
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_208_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_208_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_208_0
.Lcoerce_numeric_α_208_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_coerce_numeric_α
.Lcoerce_numeric_α_208_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_coerce_numeric_α
n31_coerce_numeric_β:   mov              r11, 24
                        add              rsp, 16;                             jmp   n30_lit_integer_β
                        .size            n31_coerce_numeric_bx, .-n31_coerce_numeric_bx
                        .type            n32_coerce_numeric_bx, @function
n32_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 25
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_210_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_210_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_210_0
.Lcoerce_numeric_α_210_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_cmp_test_α
.Lcoerce_numeric_α_210_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_cmp_test_α
n32_coerce_numeric_β:   mov              r11, 25
                        add              rsp, 16;                             jmp   n31_coerce_numeric_β
                        .size            n32_coerce_numeric_bx, .-n32_coerce_numeric_bx
                        .type            n33_cmp_test_bx, @function
n33_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_cmp_test_α:         sub              rsp, 16
                        mov              r11, 26
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_212_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lcmp_test_α_212_239
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lcmp_test_α_212_239:                                                         jmp   n34_lit_integer_α
.Lcmp_test_α_212_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lcmp_test_α_212_240
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lcmp_test_α_212_240:                                                         jmp   n34_lit_integer_α
n33_cmp_test_β:         mov              r11, 26
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
                        .size            n33_cmp_test_bx, .-n33_cmp_test_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_assign_α
.Llit_integer_α_213_0:  .quad            0
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n36_statement_end_α
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 29
                        mov              r10, 5
                        add              rsp, 96;                             jmp   RETURN
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#=======================================================================================================================
#         RSUM = N + RSUM(N - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n37_statement_begin_α:  mov              r11, 30
                        mov              r10, 6;                              jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 30;                             jmp   RETURN
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_var_α
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_lit_integer_α
n39_var_β:              mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_binop_α
n40_lit_integer_β:      mov              r11, 33
                        add              rsp, 16;                             jmp   n39_var_β
.Llit_integer_α_221_0:  .quad            1
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_binop_bx, @function
n41_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            sub              rsp, 16
                        mov              r11, 34
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_222_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_222_7
.Lbinop_α_222_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_222_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_222_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_222_4
.Lbinop_α_222_3:        movq             xmm0, rsi
.Lbinop_α_222_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_222_7:                                                              jmp   n42_call_α
.Lbinop_α_222_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_222_240
                        add              rsp, 16;                             jmp   n40_lit_integer_β
.Lbinop_α_222_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_call_α
n41_binop_β:            mov              r11, 34
                        add              rsp, 16;                             jmp   n40_lit_integer_β
                        .size            n41_binop_bx, .-n41_binop_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
                        mov              r11, 35
                        lea              rcx, [rip + .Lcall_sig224z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lcall_sig224z:         .quad            1
                        .quad            .Lcall_α_224_2
                        .quad            .Lcall_α_224_2
                        .quad            16
.Lcall_α_224_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_224_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_224_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_224_240
                        add              rsp, 16;                             jmp   n41_binop_β
.Lcall_α_224_240:                                                             jmp   n43_binop_α
n42_call_β:             mov              r11, 35;                             jmp   n41_binop_β
.Lcall_β_224_0:         .quad            .Lcall_β_224_0_s
.Lcall_β_224_0_s:       .string          "RSUM"
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_binop_bx, @function
n43_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            sub              rsp, 16
                        mov              r11, 36
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_225_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_225_7
.Lbinop_α_225_2:        and              edx, 1;                              jz    .Lbinop_α_225_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_225_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_225_4
.Lbinop_α_225_3:        movq             xmm0, rsi
.Lbinop_α_225_4:        cmp              cl, 5;                               je    .Lbinop_α_225_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_225_6
.Lbinop_α_225_5:        movq             xmm1, rdi
.Lbinop_α_225_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_225_7:                                                              jmp   n44_assign_α
.Lbinop_α_225_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_225_240
                        add              rsp, 32;                             jmp   n41_binop_β
.Lbinop_α_225_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
                        .size            n43_binop_bx, .-n43_binop_bx
                        .type            n44_assign_bx, @function
n44_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n45_statement_end_α
                        .size            n44_assign_bx, .-n44_assign_bx
                        .type            n45_statement_end_bx, @function
n45_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 38
                        mov              r10, 6
                        add              rsp, 96;                             jmp   RETURN
                        .size            n45_statement_end_bx, .-n45_statement_end_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#=======================================================================================================================
# RSUM_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n46_statement_begin_α:  mov              r11, 39
                        mov              r10, 7;                              jmp   n47_statement_end_α
n46_statement_begin_β:  mov              r11, 39;                             jmp   n48_statement_begin_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 40
                        mov              r10, 7;                              jmp   n48_statement_begin_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_statement_begin_bx, @function
n48_statement_begin_bx:
#=======================================================================================================================
#         ZPAT = BREAK(',') . ZWORD ','
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n48_statement_begin_α:  mov              r11, 41
                        mov              r10, 8;                              jmp   n49_lit_string_α
n48_statement_begin_β:  mov              r11, 41;                             jmp   n53_statement_begin_α
                        .size            n48_statement_begin_bx, .-n48_statement_begin_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
.Llit_string_α_235_0:   .quad            .Llit_string_α_235_0_s
.Llit_string_α_235_0_s: .string          "PAT$0"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 43
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_rkfnzd237:       .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_rkfnzd237]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_236_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
.Lcall_α_236_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
n50_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZPAT
                        mov              qword ptr [r9 + 56], rdx;            jmp   n52_statement_end_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 45
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n53_statement_begin_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_statement_begin_bx, @function
n53_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('MIXED_WORKLOAD(N)')                     :(MIXED_WORKLOAD_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n53_statement_begin_α:  mov              r11, 46
                        mov              r10, 9;                              jmp   n54_define_α
n53_statement_begin_β:  mov              r11, 46;                             jmp   n153_statement_begin_α
                        .size            n53_statement_begin_bx, .-n53_statement_begin_bx
                        .type            n54_define_bx, @function
n54_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_define_α:           mov              r11, 47
                        mov              rdi, qword ptr [rip + .Ldefine_α_244_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_244_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n56_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_244_0]
                        lea              rsi, [rip + MIXED_WORKLOAD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_statement_end_α
n54_define_β:           mov              r11, 47;                             jmp   n53_statement_begin_β
.Ldefine_α_244_0:       .quad            .Ldefine_α_244_0_s
.Ldefine_α_244_0_s:     .string          "MIXED_WORKLOAD"
.Ldefine_α_244_1:       .quad            .Ldefine_α_244_1_s
.Ldefine_α_244_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_245_245
#-----------------------------------------------------------------------------------------------------------------------
MIXED_WORKLOAD_α:       sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # MIXED_WORKLOAD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_245_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_245_41
.Ldefine_α_245_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_245_41:      lea              rcx, [rip + MIXED_WORKLOAD_γ]
                        lea              rax, [rip + MIXED_WORKLOAD_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n56_statement_begin_α];  jmp   rax
MIXED_WORKLOAD_γ:       mov              rdi, qword ptr [r9 + 32]             # MIXED_WORKLOAD
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_245_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_245_110
.Ldefine_α_245_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_245_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MIXED_WORKLOAD_ω:       mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # MIXED_WORKLOAD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_245_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_245_180
.Ldefine_α_245_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_245_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_245_245:
                        .size            n54_define_bx, .-n54_define_bx
                        .type            n55_statement_end_bx, @function
n55_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 48
                        mov              r10, 9;                              jmp   n153_statement_begin_α
                        .size            n55_statement_end_bx, .-n55_statement_end_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#=======================================================================================================================
# MIXED_WORKLOAD  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n56_statement_begin_α:  mov              r11, 49
                        mov              r10, 10;                             jmp   n57_lit_integer_α
n56_statement_begin_β:  mov              r11, 49;                             jmp   n60_statement_begin_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_assign_α
.Llit_integer_α_250_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_assign_bx, @function
n58_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n59_statement_end_α
                        .size            n58_assign_bx, .-n58_assign_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 52
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n60_statement_begin_α
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_statement_begin_bx, @function
n60_statement_begin_bx:
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n60_statement_begin_α:  mov              r11, 53
                        mov              r10, 11;                             jmp   n61_lit_integer_α
n60_statement_begin_β:  mov              r11, 53;                             jmp   n64_statement_begin_α
                        .size            n60_statement_begin_bx, .-n60_statement_begin_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_assign_α
.Llit_integer_α_256_0:  .quad            0
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n63_statement_end_α
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 56
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n64_statement_begin_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#=======================================================================================================================
# ZBL     ZTAB = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n64_statement_begin_α:  mov              r11, 57
                        mov              r10, 12;                             jmp   n65_lit_integer_α
n64_statement_begin_β:  mov              r11, 57;                             jmp   n69_statement_begin_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_α
.Llit_integer_α_262_0:  .quad            16
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             sub              rsp, 16
                        mov              r11, 59
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_rkfnzd264:       .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_rkfnzd264]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_263_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Lcall_α_263_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
n66_call_β:             mov              r11, 59
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZTAB
                        mov              qword ptr [r9 + 120], rdx;           jmp   n68_statement_end_α
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 61
                        mov              r10, 12
                        add              rsp, 32;                             jmp   n69_statement_begin_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#=======================================================================================================================
#         ZDATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n69_statement_begin_α:  mov              r11, 62
                        mov              r10, 13;                             jmp   n70_lit_string_α
n69_statement_begin_β:  mov              r11, 62;                             jmp   n73_statement_begin_α
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_lit_string_bx, @function
n70_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Llit_string_α_270_0:   .quad            .Llit_string_α_270_0_s
.Llit_string_α_270_0_s: .string          "10,20,30,40,50,60,70,80,90,100,"
                        .size            n70_lit_string_bx, .-n70_lit_string_bx
                        .type            n71_assign_bx, @function
n71_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZDATA
                        mov              qword ptr [r9 + 136], rdx;           jmp   n72_statement_end_α
                        .size            n71_assign_bx, .-n71_assign_bx
                        .type            n72_statement_end_bx, @function
n72_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 65
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n73_statement_begin_α
                        .size            n72_statement_end_bx, .-n72_statement_end_bx
                        .type            n73_statement_begin_bx, @function
n73_statement_begin_bx:
#=======================================================================================================================
#         ZIDX = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n73_statement_begin_α:  mov              r11, 66
                        mov              r10, 14;                             jmp   n74_lit_integer_α
n73_statement_begin_β:  mov              r11, 66;                             jmp   n77_statement_begin_α
                        .size            n73_statement_begin_bx, .-n73_statement_begin_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_assign_α
.Llit_integer_α_276_0:  .quad            0
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZIDX
                        mov              qword ptr [r9 + 152], rdx;           jmp   n76_statement_end_α
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_statement_end_bx, @function
n76_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 69
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n77_statement_begin_α
                        .size            n76_statement_end_bx, .-n76_statement_end_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#=======================================================================================================================
# ZPARSE  ZDATA ? ZPAT =                                  :F(ZCALC)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n77_statement_begin_α:  mov              r11, 70
                        mov              r10, 15;                             jmp   n78_var_α
n77_statement_begin_β:  mov              r11, 70;                             jmp   n101_statement_begin_α
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 128]            # ZDATA
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_var_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 48]             # ZPAT
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_assign_α
n79_var_β:              mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_assign_bx, @function
n80_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 73
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_284_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_match_begin_α
n80_assign_β:           mov              r11, 73;                             jmp   n79_var_β
.Lassign_α_284_0:       .quad            .Lassign_α_284_0_s
.Lassign_α_284_0_s:     .string          "PATV$0"
                        .size            n80_assign_bx, .-n80_assign_bx
                        .type            n81_match_begin_bx, @function
n81_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_begin_α:      mov              r11, 74
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
.Lmatch_begin_α_286_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_286_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n82_match_defer_α
n81_match_begin_β:      mov              r11, 74
.Lmatch_begin_α_286_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_286_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_286_1
                                                                              jmp   .Lmatch_begin_α_286_0
.Lmatch_begin_β_286_1:
n81_match_begin_af:     mov              r11, 74
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
                        pop              rbp;                                 jmp   n80_assign_β
                        .size            n81_match_begin_bx, .-n81_match_begin_bx
                        .type            n82_match_defer_bx, @function
n82_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_match_defer_α:      mov              r11, 75
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_287_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_287_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_287_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_287_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_287_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_287_23
                                                                              jmp   .Lmatch_defer_α_287_22
.Lmatch_defer_α_287_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_287_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_287_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_287_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_287_0
.Lmatch_defer_α_287_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_287_0
.Lmatch_defer_α_287_22: push             r14
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
.Lmatch_defer_α_287_23: test             rax, rax;                            jz    .Lmatch_defer_α_287_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_287_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_287_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_287_4:  lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 592], eax;          jmp   n83_match_end_α
.Lmatch_defer_α_287_5:                                                        jmp   n81_match_begin_β
.Lmatch_defer_α_287_0:  mov              eax, edx
                        test             eax, eax;                            js    n81_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_287_6]
                        push             rcx
                        push             rax;                                 jmp   n83_match_end_α
.Lmatch_defer_α_287_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n81_match_begin_β
n82_match_defer_β:      mov              r11, 75
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_287_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_287_12
                                                                              jmp   rax
.Lmatch_defer_β_287_12:                                                       jmp   qword ptr [rsp]
                        .size            n82_match_defer_bx, .-n82_match_defer_bx
                        .type            n83_match_end_bx, @function
n83_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_match_end_α:        mov              r11, 76
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
                        test             rax, rax;                            je    .Lmatch_end_α_289_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n81_match_begin_af
.Lmatch_end_α_289_13:   add              rsp, 16
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
                        pop              rbp;                                 jmp   n84_lit_string_α
                        .size            n83_match_end_bx, .-n83_match_end_bx
                        .type            n84_lit_string_bx, @function
n84_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_match_replace_α
.Llit_string_α_290_0:   .quad            .Llit_string_α_290_0_s
.Llit_string_α_290_0_s: .string          ""
                        .size            n84_lit_string_bx, .-n84_lit_string_bx
                        .type            n85_match_replace_bx, @function
n85_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_replace_α:    mov              r11, 78
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_292_0]
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
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_292_1
.Lmatch_replace_α_292_0:
                        .quad            .Lmatch_replace_α_292_0_s
.Lmatch_replace_α_292_0_s:
                        .string          "ZDATA"
.Lmatch_replace_α_292_1:
                                                                              jmp   n86_statement_end_α
                        .size            n85_match_replace_bx, .-n85_match_replace_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 79
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n87_statement_begin_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#=======================================================================================================================
#         ZIDX = ZIDX + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n87_statement_begin_α:  mov              r11, 80
                        mov              r10, 16;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 80;                             jmp   n93_statement_begin_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_integer_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_lit_integer_bx, @function
n89_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_binop_α
n89_lit_integer_β:      mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Llit_integer_α_298_0:  .quad            1
                        .size            n89_lit_integer_bx, .-n89_lit_integer_bx
                        .type            n90_binop_bx, @function
n90_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              r11, 83
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_299_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_299_7
.Lbinop_α_299_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_299_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_299_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_299_4
.Lbinop_α_299_3:        movq             xmm0, rsi
.Lbinop_α_299_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_299_7:                                                              jmp   n91_assign_α
.Lbinop_α_299_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_299_240
                        add              rsp, 16;                             jmp   n89_lit_integer_β
.Lbinop_α_299_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_assign_α
                        .size            n90_binop_bx, .-n90_binop_bx
                        .type            n91_assign_bx, @function
n91_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 84
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZIDX
                        mov              qword ptr [r9 + 152], rdx;           jmp   n92_statement_end_α
                        .size            n91_assign_bx, .-n91_assign_bx
                        .type            n92_statement_end_bx, @function
n92_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 85
                        mov              r10, 16
                        add              rsp, 48;                             jmp   n93_statement_begin_α
                        .size            n92_statement_end_bx, .-n92_statement_end_bx
                        .type            n93_statement_begin_bx, @function
n93_statement_begin_bx:
#=======================================================================================================================
#         ZTAB[ZIDX] = ZWORD + 0                          :(ZPARSE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n93_statement_begin_α:  mov              r11, 86
                        mov              r10, 17;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 86;                             jmp   n77_statement_begin_α
                        .size            n93_statement_begin_bx, .-n93_statement_begin_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 112]            # ZTAB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_var_α
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
n95_var_β:              mov              r11, 88
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 64]             # ZWORD
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_lit_integer_α
n96_var_β:              mov              r11, 89
                        add              rsp, 16;                             jmp   n95_var_β
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_308_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_binop_α
n97_lit_integer_β:      mov              r11, 90
                        add              rsp, 16;                             jmp   n96_var_β
.Llit_integer_α_308_0:  .quad            0
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_binop_bx, @function
n98_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              r11, 91
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_309_2
                        add              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_309_7
.Lbinop_α_309_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_309_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lbinop_α_309_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_309_4
.Lbinop_α_309_3:        movq             xmm0, rsi
.Lbinop_α_309_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_309_7:                                                              jmp   n99_assign_var_α
.Lbinop_α_309_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_309_240
                        add              rsp, 16;                             jmp   n97_lit_integer_β
.Lbinop_α_309_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_assign_var_α
n98_binop_β:            mov              r11, 91
                        add              rsp, 16;                             jmp   n97_lit_integer_β
                        .size            n98_binop_bx, .-n98_binop_bx
                        .type            n99_assign_var_bx, @function
n99_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_var_α:       sub              rsp, 16
                        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_311_0
                        test             rsi, rsi;                            je    .Lassign_var_α_311_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_311_238
                        add              rsp, 16;                             jmp   n98_binop_β
.Lassign_var_α_311_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_statement_end_α
.Lassign_var_α_311_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_311_239
                        add              rsp, 16;                             jmp   n98_binop_β
.Lassign_var_α_311_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_311_240
                        add              rsp, 16;                             jmp   n98_binop_β
.Lassign_var_α_311_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_statement_end_α
                        .size            n99_assign_var_bx, .-n99_assign_var_bx
                        .type            n100_statement_end_bx, @function
n100_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 93
                        mov              r10, 17
                        add              rsp, 96;                             jmp   n77_statement_begin_α
                        .size            n100_statement_end_bx, .-n100_statement_end_bx
                        .type            n101_statement_begin_bx, @function
n101_statement_begin_bx:
#=======================================================================================================================
# ZCALC   ZTOT = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n101_statement_begin_α: mov              r11, 94
                        mov              r10, 18;                             jmp   n102_lit_integer_α
n101_statement_begin_β: mov              r11, 94;                             jmp   n105_statement_begin_α
                        .size            n101_statement_begin_bx, .-n101_statement_begin_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_assign_α
.Llit_integer_α_316_0:  .quad            0
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_assign_bx, @function
n103_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZTOT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n104_statement_end_α
                        .size            n103_assign_bx, .-n103_assign_bx
                        .type            n104_statement_end_bx, @function
n104_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 97
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n105_statement_begin_α
                        .size            n104_statement_end_bx, .-n104_statement_end_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
#=======================================================================================================================
#         ZJ = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n105_statement_begin_α: mov              r11, 98
                        mov              r10, 19;                             jmp   n106_lit_integer_α
n105_statement_begin_β: mov              r11, 98;                             jmp   n109_statement_begin_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_322_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_assign_α
.Llit_integer_α_322_0:  .quad            0
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_assign_bx, @function
n107_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZJ
                        mov              qword ptr [r9 + 184], rdx;           jmp   n108_statement_end_α
                        .size            n107_assign_bx, .-n107_assign_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 101
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n109_statement_begin_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#=======================================================================================================================
# ZADD    ZJ = LT(ZJ, ZIDX) ZJ + 1                        :F(ZNEXT)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n109_statement_begin_α: mov              r11, 102
                        mov              r10, 20;                             jmp   n110_var_α
n109_statement_begin_β: mov              r11, 102;                            jmp   n129_statement_begin_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_var_α
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_coerce_numeric_α
n111_var_β:             mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_coerce_numeric_bx, @function
n112_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 105
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_331_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_331_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_331_0
.Lcoerce_numeric_α_331_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_coerce_numeric_α
.Lcoerce_numeric_α_331_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_coerce_numeric_α
n112_coerce_numeric_β:  mov              r11, 105
                        add              rsp, 16;                             jmp   n111_var_β
                        .size            n112_coerce_numeric_bx, .-n112_coerce_numeric_bx
                        .type            n113_coerce_numeric_bx, @function
n113_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 106
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_333_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_333_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_333_0
.Lcoerce_numeric_α_333_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_cmp_test_α
.Lcoerce_numeric_α_333_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_cmp_test_α
n113_coerce_numeric_β:  mov              r11, 106
                        add              rsp, 16;                             jmp   n112_coerce_numeric_β
                        .size            n113_coerce_numeric_bx, .-n113_coerce_numeric_bx
                        .type            n114_cmp_test_bx, @function
n114_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_cmp_test_α:        sub              rsp, 16
                        mov              r11, 107
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_335_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_335_239
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
.Lcmp_test_α_335_239:                                                         jmp   n115_var_α
.Lcmp_test_α_335_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_335_240
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
.Lcmp_test_α_335_240:                                                         jmp   n115_var_α
n114_cmp_test_β:        mov              r11, 107
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
                        .size            n114_cmp_test_bx, .-n114_cmp_test_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_lit_integer_α
n115_var_β:             mov              r11, 108
                        add              rsp, 16;                             jmp   n114_cmp_test_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_lit_integer_bx, @function
n116_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_binop_α
n116_lit_integer_β:     mov              r11, 109
                        add              rsp, 16;                             jmp   n115_var_β
.Llit_integer_α_337_0:  .quad            1
                        .size            n116_lit_integer_bx, .-n116_lit_integer_bx
                        .type            n117_binop_bx, @function
n117_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:           sub              rsp, 16
                        mov              r11, 110
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_338_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_338_7
.Lbinop_α_338_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_338_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_338_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_338_4
.Lbinop_α_338_3:        movq             xmm0, rsi
.Lbinop_α_338_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_338_7:                                                              jmp   n118_assign_α
.Lbinop_α_338_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_338_240
                        add              rsp, 16;                             jmp   n116_lit_integer_β
.Lbinop_α_338_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_assign_α
                        .size            n117_binop_bx, .-n117_binop_bx
                        .type            n118_assign_bx, @function
n118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZJ
                        mov              qword ptr [r9 + 184], rdx;           jmp   n119_statement_end_α
                        .size            n118_assign_bx, .-n118_assign_bx
                        .type            n119_statement_end_bx, @function
n119_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:   mov              r11, 112
                        mov              r10, 20
                        add              rsp, 128;                            jmp   n120_statement_begin_α
                        .size            n119_statement_end_bx, .-n119_statement_end_bx
                        .type            n120_statement_begin_bx, @function
n120_statement_begin_bx:
#=======================================================================================================================
#         ZTOT = ZTOT + ZTAB[ZJ]                          :(ZADD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n120_statement_begin_α: mov              r11, 113
                        mov              r10, 21;                             jmp   n121_var_α
n120_statement_begin_β: mov              r11, 113;                            jmp   n109_statement_begin_α
                        .size            n120_statement_begin_bx, .-n120_statement_begin_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 160]            # ZTOT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_var_α
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 112]            # ZTAB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_var_α
n122_var_β:             mov              r11, 115
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n120_statement_begin_β
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_subscript_α
n123_var_β:             mov              r11, 116
                        add              rsp, 16;                             jmp   n122_var_β
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_subscript_bx, @function
n124_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_subscript_α:       sub              rsp, 16
                        mov              r11, 117
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_347_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lsubscript_α_347_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_deref_α
n124_subscript_β:       mov              r11, 117
                        add              rsp, 16;                             jmp   n123_var_β
                        .size            n124_subscript_bx, .-n124_subscript_bx
                        .type            n125_deref_bx, @function
n125_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_deref_α:           sub              rsp, 16
                        mov              r11, 118
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_348_240
                        add              rsp, 16;                             jmp   n124_subscript_β
.Lderef_α_348_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_binop_α
n125_deref_β:           mov              r11, 118
                        add              rsp, 16;                             jmp   n124_subscript_β
                        .size            n125_deref_bx, .-n125_deref_bx
                        .type            n126_binop_bx, @function
n126_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
                        mov              r11, 119
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_349_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_349_7
.Lbinop_α_349_2:        and              edx, 1;                              jz    .Lbinop_α_349_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_349_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_349_4
.Lbinop_α_349_3:        movq             xmm0, rsi
.Lbinop_α_349_4:        cmp              cl, 5;                               je    .Lbinop_α_349_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_349_6
.Lbinop_α_349_5:        movq             xmm1, rdi
.Lbinop_α_349_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_349_7:                                                              jmp   n127_assign_α
.Lbinop_α_349_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_349_240
                        add              rsp, 16;                             jmp   n125_deref_β
.Lbinop_α_349_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_assign_α
                        .size            n126_binop_bx, .-n126_binop_bx
                        .type            n127_assign_bx, @function
n127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZTOT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n128_statement_end_α
                        .size            n127_assign_bx, .-n127_assign_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 121
                        mov              r10, 21
                        add              rsp, 96;                             jmp   n109_statement_begin_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#=======================================================================================================================
# ZNEXT   ZS = ZS + ZTOT + RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n129_statement_begin_α: mov              r11, 122
                        mov              r10, 22;                             jmp   n130_var_α
n129_statement_begin_β: mov              r11, 122;                            jmp   n138_statement_begin_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_var_bx, @function
n130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_var_α
                        .size            n130_var_bx, .-n130_var_bx
                        .type            n131_var_bx, @function
n131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 160]            # ZTOT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_binop_α
n131_var_β:             mov              r11, 124
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
                        .size            n131_var_bx, .-n131_var_bx
                        .type            n132_binop_bx, @function
n132_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           sub              rsp, 16
                        mov              r11, 125
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_357_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_357_7
.Lbinop_α_357_2:        and              edx, 1;                              jz    .Lbinop_α_357_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_357_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_357_4
.Lbinop_α_357_3:        movq             xmm0, rsi
.Lbinop_α_357_4:        cmp              cl, 5;                               je    .Lbinop_α_357_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_357_6
.Lbinop_α_357_5:        movq             xmm1, rdi
.Lbinop_α_357_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_357_7:                                                              jmp   n133_lit_integer_α
.Lbinop_α_357_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_357_240
                        add              rsp, 16;                             jmp   n131_var_β
.Lbinop_α_357_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_lit_integer_α
n132_binop_β:           mov              r11, 125
                        add              rsp, 16;                             jmp   n131_var_β
                        .size            n132_binop_bx, .-n132_binop_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_α
n133_lit_integer_β:     mov              r11, 126
                        add              rsp, 16;                             jmp   n132_binop_β
.Llit_integer_α_358_0:  .quad            10
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        mov              r11, 127
                        lea              rcx, [rip + .Lcall_sig360z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lcall_sig360z:         .quad            1
                        .quad            .Lcall_α_360_2
                        .quad            .Lcall_α_360_2
                        .quad            16
.Lcall_α_360_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_360_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_360_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_360_240
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lcall_α_360_240:                                                             jmp   n135_binop_α
n134_call_β:            mov              r11, 127;                            jmp   n133_lit_integer_β
.Lcall_β_360_0:         .quad            .Lcall_β_360_0_s
.Lcall_β_360_0_s:       .string          "RSUM"
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_binop_bx, @function
n135_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:           sub              rsp, 16
                        mov              r11, 128
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_361_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_361_7
.Lbinop_α_361_2:        and              edx, 1;                              jz    .Lbinop_α_361_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_361_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_361_4
.Lbinop_α_361_3:        movq             xmm0, rsi
.Lbinop_α_361_4:        cmp              cl, 5;                               je    .Lbinop_α_361_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_361_6
.Lbinop_α_361_5:        movq             xmm1, rdi
.Lbinop_α_361_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_361_7:                                                              jmp   n136_assign_α
.Lbinop_α_361_0:        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_361_240
                        add              rsp, 32;                             jmp   n133_lit_integer_β
.Lbinop_α_361_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_assign_α
                        .size            n135_binop_bx, .-n135_binop_bx
                        .type            n136_assign_bx, @function
n136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              r11, 129
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n137_statement_end_α
                        .size            n136_assign_bx, .-n136_assign_bx
                        .type            n137_statement_end_bx, @function
n137_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   mov              r11, 130
                        mov              r10, 22
                        add              rsp, 96;                             jmp   n138_statement_begin_α
                        .size            n137_statement_end_bx, .-n137_statement_end_bx
                        .type            n138_statement_begin_bx, @function
n138_statement_begin_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n138_statement_begin_α: mov              r11, 131
                        mov              r10, 23;                             jmp   n139_var_α
n138_statement_begin_β: mov              r11, 131;                            jmp   n149_statement_begin_α
                        .size            n138_statement_begin_bx, .-n138_statement_begin_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_coerce_numeric_α
n140_var_β:             mov              r11, 133
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n138_statement_begin_β
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_coerce_numeric_bx, @function
n141_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 134
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_370_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_370_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_370_0
.Lcoerce_numeric_α_370_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_coerce_numeric_α
.Lcoerce_numeric_α_370_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_coerce_numeric_α
n141_coerce_numeric_β:  mov              r11, 134
                        add              rsp, 16;                             jmp   n140_var_β
                        .size            n141_coerce_numeric_bx, .-n141_coerce_numeric_bx
                        .type            n142_coerce_numeric_bx, @function
n142_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 135
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_372_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_372_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_372_0
.Lcoerce_numeric_α_372_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_cmp_test_α
.Lcoerce_numeric_α_372_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_cmp_test_α
n142_coerce_numeric_β:  mov              r11, 135
                        add              rsp, 16;                             jmp   n141_coerce_numeric_β
                        .size            n142_coerce_numeric_bx, .-n142_coerce_numeric_bx
                        .type            n143_cmp_test_bx, @function
n143_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_cmp_test_α:        sub              rsp, 16
                        mov              r11, 136
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_374_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_374_239
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
.Lcmp_test_α_374_239:                                                         jmp   n144_var_α
.Lcmp_test_α_374_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_374_240
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
.Lcmp_test_α_374_240:                                                         jmp   n144_var_α
n143_cmp_test_β:        mov              r11, 136
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
                        .size            n143_cmp_test_bx, .-n143_cmp_test_bx
                        .type            n144_var_bx, @function
n144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_lit_integer_α
n144_var_β:             mov              r11, 137
                        add              rsp, 16;                             jmp   n143_cmp_test_β
                        .size            n144_var_bx, .-n144_var_bx
                        .type            n145_lit_integer_bx, @function
n145_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_binop_α
n145_lit_integer_β:     mov              r11, 138
                        add              rsp, 16;                             jmp   n144_var_β
.Llit_integer_α_376_0:  .quad            1
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_binop_bx, @function
n146_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:           sub              rsp, 16
                        mov              r11, 139
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_377_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_377_7
.Lbinop_α_377_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_377_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_377_4
.Lbinop_α_377_3:        movq             xmm0, rsi
.Lbinop_α_377_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_377_7:                                                              jmp   n147_assign_α
.Lbinop_α_377_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_377_240
                        add              rsp, 16;                             jmp   n145_lit_integer_β
.Lbinop_α_377_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_assign_α
                        .size            n146_binop_bx, .-n146_binop_bx
                        .type            n147_assign_bx, @function
n147_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              r11, 140
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n148_statement_end_α
                        .size            n147_assign_bx, .-n147_assign_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 141
                        mov              r10, 23
                        add              rsp, 128;                            jmp   n64_statement_begin_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#=======================================================================================================================
#         MIXED_WORKLOAD = ZS                             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n149_statement_begin_α: mov              r11, 142
                        mov              r10, 24;                             jmp   n150_var_α
n149_statement_begin_β: mov              r11, 142;                            jmp   RETURN
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_var_bx, @function
n150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_assign_α
                        .size            n150_var_bx, .-n150_var_bx
                        .type            n151_assign_bx, @function
n151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # MIXED_WORKLOAD
                        mov              qword ptr [r9 + 40], rdx;            jmp   n152_statement_end_α
                        .size            n151_assign_bx, .-n151_assign_bx
                        .type            n152_statement_end_bx, @function
n152_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 145
                        mov              r10, 24
                        add              rsp, 16;                             jmp   RETURN
                        .size            n152_statement_end_bx, .-n152_statement_end_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
#=======================================================================================================================
# MIXED_WORKLOAD_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n153_statement_begin_α: mov              r11, 146
                        mov              r10, 25;                             jmp   n154_statement_end_α
n153_statement_begin_β: mov              r11, 146;                            jmp   n155_statement_begin_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 147
                        mov              r10, 25;                             jmp   n155_statement_begin_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_statement_begin_bx, @function
n155_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'RSUM(10) = ' RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n155_statement_begin_α: mov              r11, 148
                        mov              r10, 26;                             jmp   n156_lit_string_α
n155_statement_begin_β: mov              r11, 148;                            jmp   n162_statement_begin_α
                        .size            n155_statement_begin_bx, .-n155_statement_begin_bx
                        .type            n156_lit_string_bx, @function
n156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_lit_integer_α
.Llit_string_α_393_0:   .quad            .Llit_string_α_393_0_s
.Llit_string_α_393_0_s: .string          "RSUM(10) = "
                        .size            n156_lit_string_bx, .-n156_lit_string_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_call_α
n157_lit_integer_β:     mov              r11, 150
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n155_statement_begin_β
.Llit_integer_α_394_0:  .quad            10
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_call_bx, @function
n158_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 151
                        lea              rcx, [rip + .Lcall_sig396z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lcall_sig396z:         .quad            1
                        .quad            .Lcall_α_396_2
                        .quad            .Lcall_α_396_2
                        .quad            16
.Lcall_α_396_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_396_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_396_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_396_240
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lcall_α_396_240:                                                             jmp   n159_binop_α
n158_call_β:            mov              r11, 151;                            jmp   n157_lit_integer_β
.Lcall_β_396_0:         .quad            .Lcall_β_396_0_s
.Lcall_β_396_0_s:       .string          "RSUM"
                        .size            n158_call_bx, .-n158_call_bx
                        .type            n159_binop_bx, @function
n159_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:           sub              rsp, 16
                        mov              r11, 152
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_assign_α
                        .size            n159_binop_bx, .-n159_binop_bx
                        .type            n160_assign_bx, @function
n160_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 153
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_398_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_statement_end_α
.Lassign_α_398_0:       .quad            .Lassign_α_398_0_s
.Lassign_α_398_0_s:     .string          "OUTPUT"
                        .size            n160_assign_bx, .-n160_assign_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 154
                        mov              r10, 26
                        add              rsp, 64;                             jmp   n162_statement_begin_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_statement_begin_bx, @function
n162_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'one record = ' MIXED_WORKLOAD(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n162_statement_begin_α: mov              r11, 155
                        mov              r10, 27;                             jmp   n163_lit_string_α
n162_statement_begin_β: mov              r11, 155;                            jmp   n169_statement_begin_α
                        .size            n162_statement_begin_bx, .-n162_statement_begin_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      sub              rsp, 16
                        mov              r11, 156
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_lit_integer_α
.Llit_string_α_403_0:   .quad            .Llit_string_α_403_0_s
.Llit_string_α_403_0_s: .string          "one record = "
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_lit_integer_bx, @function
n164_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_call_α
n164_lit_integer_β:     mov              r11, 157
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
.Llit_integer_α_404_0:  .quad            1
                        .size            n164_lit_integer_bx, .-n164_lit_integer_bx
                        .type            n165_call_bx, @function
n165_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:            sub              rsp, 16
                        mov              r11, 158
                        lea              rcx, [rip + .Lcall_sig406z]
                        lea              rax, [rip + MIXED_WORKLOAD_α];       jmp   rax
.Lcall_sig406z:         .quad            1
                        .quad            .Lcall_α_406_2
                        .quad            .Lcall_α_406_2
                        .quad            16
.Lcall_α_406_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_406_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_406_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_406_240
                        add              rsp, 16;                             jmp   n164_lit_integer_β
.Lcall_α_406_240:                                                             jmp   n166_binop_α
n165_call_β:            mov              r11, 158;                            jmp   n164_lit_integer_β
.Lcall_β_406_0:         .quad            .Lcall_β_406_0_s
.Lcall_β_406_0_s:       .string          "MIXED_WORKLOAD"
                        .size            n165_call_bx, .-n165_call_bx
                        .type            n166_binop_bx, @function
n166_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           sub              rsp, 16
                        mov              r11, 159
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_assign_α
                        .size            n166_binop_bx, .-n166_binop_bx
                        .type            n167_assign_bx, @function
n167_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:          mov              r11, 160
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_408_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_statement_end_α
.Lassign_α_408_0:       .quad            .Lassign_α_408_0_s
.Lassign_α_408_0_s:     .string          "OUTPUT"
                        .size            n167_assign_bx, .-n167_assign_bx
                        .type            n168_statement_end_bx, @function
n168_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   mov              r11, 161
                        mov              r10, 27
                        add              rsp, 64;                             jmp   n169_statement_begin_α
                        .size            n168_statement_end_bx, .-n168_statement_end_bx
                        .type            n169_statement_begin_bx, @function
n169_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = '20 records = ' MIXED_WORKLOAD(20)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n169_statement_begin_α: mov              r11, 162
                        mov              r10, 28;                             jmp   n170_lit_string_α
n169_statement_begin_β: mov              r11, 162;                            jmp   main_γ
                        .size            n169_statement_begin_bx, .-n169_statement_begin_bx
                        .type            n170_lit_string_bx, @function
n170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_lit_integer_α
.Llit_string_α_413_0:   .quad            .Llit_string_α_413_0_s
.Llit_string_α_413_0_s: .string          "20 records = "
                        .size            n170_lit_string_bx, .-n170_lit_string_bx
                        .type            n171_lit_integer_bx, @function
n171_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_call_α
n171_lit_integer_β:     mov              r11, 164
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n169_statement_begin_β
.Llit_integer_α_414_0:  .quad            20
                        .size            n171_lit_integer_bx, .-n171_lit_integer_bx
                        .type            n172_call_bx, @function
n172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            sub              rsp, 16
                        mov              r11, 165
                        lea              rcx, [rip + .Lcall_sig416z]
                        lea              rax, [rip + MIXED_WORKLOAD_α];       jmp   rax
.Lcall_sig416z:         .quad            1
                        .quad            .Lcall_α_416_2
                        .quad            .Lcall_α_416_2
                        .quad            16
.Lcall_α_416_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_416_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_416_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_416_240
                        add              rsp, 16;                             jmp   n171_lit_integer_β
.Lcall_α_416_240:                                                             jmp   n173_binop_α
n172_call_β:            mov              r11, 165;                            jmp   n171_lit_integer_β
.Lcall_β_416_0:         .quad            .Lcall_β_416_0_s
.Lcall_β_416_0_s:       .string          "MIXED_WORKLOAD"
                        .size            n172_call_bx, .-n172_call_bx
                        .type            n173_binop_bx, @function
n173_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_binop_α:           sub              rsp, 16
                        mov              r11, 166
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_assign_α
                        .size            n173_binop_bx, .-n173_binop_bx
                        .type            n174_assign_bx, @function
n174_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              r11, 167
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_418_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_statement_end_α
.Lassign_α_418_0:       .quad            .Lassign_α_418_0_s
.Lassign_α_418_0_s:     .string          "OUTPUT"
                        .size            n174_assign_bx, .-n174_assign_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 168
                        mov              r10, 28
                        add              rsp, 64;                             jmp   main_γ
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_define_bx, @function
n176_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 169
                        mov              edi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n176_define_bx, .-n176_define_bx
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
.Lseala2:               .string          "RSUM"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            RSUM_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + RSUM_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "MIXED_WORKLOAD"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            MIXED_WORKLOAD_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + MIXED_WORKLOAD_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "ZWORD"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
