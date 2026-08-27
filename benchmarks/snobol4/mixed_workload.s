                        .intel_syntax    noprefix
                        .text
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
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        mov              r11, 2
                        movsxd           rcx, r14d
.Lx7_0:                 cmp              ecx, r15d;                           jl    .Lx7_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx7_240:               movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx7_1
                        add              ecx, 1;                              jmp   .Lx7_0
.Lx7_1:                 mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r11, 2
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
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
                        sub              rsp, 8
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
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:  mov              r11, 5
                        mov              r10, 1;                              jmp   n13_lit_integer_α
n12_statement_begin_β:  mov              r11, 5;                              jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_keyword_assign_snobol4_α
.Lx180_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx181_0]
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
                        cmp              al, 104;                             jne   .Lx181_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lx181_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
.Lx181_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 8
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 9
                        mov              r10, 2;                              jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 9;                              jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_keyword_assign_snobol4_α
.Lx186_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rip + .Lx187_0]
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
                        cmp              al, 104;                             jne   .Lx187_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx187_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_statement_end_α
.Lx187_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 13
                        mov              r10, 3;                              jmp   n21_lit_integer_α
n20_statement_begin_β:  mov              r11, 13;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_unop_α
.Lx192_0:               .quad            1
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_keyword_assign_snobol4_α
n22_unop_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n20_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lx194_0]
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
                        cmp              al, 104;                             jne   .Lx194_240
                        add              rsp, 16;                             jmp   n22_unop_β
.Lx194_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_statement_end_α
.Lx194_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 17
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('RSUM(N)')                               :(RSUM_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 18
                        mov              r10, 4;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 18;                             jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lx200_0]
                        mov              rsi, qword ptr [rip + .Lx200_1]
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
                        mov              rdi, qword ptr [rip + .Lx200_0]
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
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "RSUM"
.Lx200_1:               .quad            .Lx200_1_s
.Lx200_1_s:             .string          "N"
                                                                              jmp   .Lx201_245
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
                        cmp              rdx, 0;                              jbe   .Lx201_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx201_41
.Lx201_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx201_41:              lea              rcx, [rip + RSUM_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx201_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx201_110
.Lx201_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx201_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx201_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx201_180
.Lx201_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx201_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx201_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 20
                        mov              r10, 4;                              jmp   n46_statement_begin_α
#=======================================================================================================================
# RSUM    RSUM = EQ(N, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 21
                        mov              r10, 5;                              jmp   n29_var_α
n28_statement_begin_β:  mov              r11, 21;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 22
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_coerce_numeric_α
n30_lit_integer_β:      mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx207_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 24
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx209_1
                        cmp              al, 3;                               jne   .Lx209_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx209_0
.Lx209_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_coerce_numeric_α
.Lx209_0:               lea              rdi, [rsp + 32]
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
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 25
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx211_1
                        cmp              al, 3;                               jne   .Lx211_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx211_0
.Lx211_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_cmp_test_α
.Lx211_0:               lea              rdi, [rsp + 32]
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
#-----------------------------------------------------------------------------------------------------------------------
n33_cmp_test_α:         sub              rsp, 16
                        mov              r11, 26
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx213_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lx213_239
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lx213_239:                                                                   jmp   n34_lit_integer_α
.Lx213_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx213_240
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lx213_240:                                                                   jmp   n34_lit_integer_α
n33_cmp_test_β:         mov              r11, 26
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_assign_α
.Lx214_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 29
                        mov              r10, 5
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
#         RSUM = N + RSUM(N - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 30
                        mov              r10, 6;                              jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 30;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_var_α
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
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_binop_α
n40_lit_integer_β:      mov              r11, 33
                        add              rsp, 16;                             jmp   n39_var_β
.Lx222_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            sub              rsp, 16
                        mov              r11, 34
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx223_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx223_7
.Lx223_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx223_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx223_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx223_4
.Lx223_3:               movq             xmm0, rsi
.Lx223_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx223_7:                                                                     jmp   n42_call_α
.Lx223_0:               mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lx223_240
                        add              rsp, 16;                             jmp   n40_lit_integer_β
.Lx223_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_call_α
n41_binop_β:            mov              r11, 34
                        add              rsp, 16;                             jmp   n40_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
                        mov              r11, 35
                        lea              rcx, [rip + .Lsig225z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig225z:              .quad            1
                        .quad            .Lx225_2
                        .quad            .Lx225_2
                        .quad            16
.Lx225_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx225_29
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
.Lx225_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx225_240
                        add              rsp, 16;                             jmp   n41_binop_β
.Lx225_240:                                                                   jmp   n43_binop_α
n42_call_β:             mov              r11, 35;                             jmp   n41_binop_β
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            sub              rsp, 16
                        mov              r11, 36
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx226_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx226_7
.Lx226_2:               and              edx, 1;                              jz    .Lx226_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx226_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx226_4
.Lx226_3:               movq             xmm0, rsi
.Lx226_4:               cmp              cl, 5;                               je    .Lx226_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx226_6
.Lx226_5:               movq             xmm1, rdi
.Lx226_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx226_7:                                                                     jmp   n44_assign_α
.Lx226_0:               mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lx226_240
                        add              rsp, 32;                             jmp   n41_binop_β
.Lx226_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 38
                        mov              r10, 6
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# RSUM_END  <stmt 7, line 14: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 39
                        mov              r10, 7;                              jmp   n47_statement_end_α
n46_statement_begin_β:  mov              r11, 39;                             jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 40
                        mov              r10, 7;                              jmp   n48_statement_begin_α
#=======================================================================================================================
#         ZPAT = BREAK(',') . ZWORD ','
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 41
                        mov              r10, 8;                              jmp   n49_lit_string_α
n48_statement_begin_β:  mov              r11, 41;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 43
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd238:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd238]
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
                        cmp              al, 104;                             jne   .Lx237_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
.Lx237_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
n50_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZPAT
                        mov              qword ptr [r9 + 56], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 45
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         DEFINE('MIXED_WORKLOAD(N)')                     :(MIXED_WORKLOAD_END)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 46
                        mov              r10, 9;                              jmp   n54_define_α
n53_statement_begin_β:  mov              r11, 46;                             jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_define_α:           mov              r11, 47
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              rsi, qword ptr [rip + .Lx245_1]
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
                        mov              rdi, qword ptr [rip + .Lx245_0]
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
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "MIXED_WORKLOAD"
.Lx245_1:               .quad            .Lx245_1_s
.Lx245_1_s:             .string          "N"
                                                                              jmp   .Lx246_245
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
                        cmp              rdx, 0;                              jbe   .Lx246_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx246_41
.Lx246_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx246_41:              lea              rcx, [rip + MIXED_WORKLOAD_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx246_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx246_110
.Lx246_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx246_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx246_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx246_180
.Lx246_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx246_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx246_245:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 48
                        mov              r10, 9;                              jmp   n154_statement_begin_α
#=======================================================================================================================
# MIXED_WORKLOAD  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 49
                        mov              r10, 10;                             jmp   n57_lit_integer_α
n56_statement_begin_β:  mov              r11, 49;                             jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_assign_α
.Lx251_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n59_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 52
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n60_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 53
                        mov              r10, 11;                             jmp   n61_lit_integer_α
n60_statement_begin_β:  mov              r11, 53;                             jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_assign_α
.Lx257_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 56
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n64_statement_begin_α
#=======================================================================================================================
# ZBL     ZTAB = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 57
                        mov              r10, 12;                             jmp   n65_lit_integer_α
n64_statement_begin_β:  mov              r11, 57;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_α
.Lx263_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             sub              rsp, 16
                        mov              r11, 59
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd265:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd265]
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
                        cmp              al, 104;                             jne   .Lx264_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Lx264_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
n66_call_β:             mov              r11, 59
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZTAB
                        mov              qword ptr [r9 + 120], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 61
                        mov              r10, 12
                        add              rsp, 32;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         ZDATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 62
                        mov              r10, 13;                             jmp   n70_lit_string_α
n69_statement_begin_β:  mov              r11, 62;                             jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZDATA
                        mov              qword ptr [r9 + 136], rdx;           jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 65
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n73_statement_begin_α
#=======================================================================================================================
#         ZIDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 66
                        mov              r10, 14;                             jmp   n74_lit_integer_α
n73_statement_begin_β:  mov              r11, 66;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_assign_α
.Lx277_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZIDX
                        mov              qword ptr [r9 + 152], rdx;           jmp   n76_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 69
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#=======================================================================================================================
# ZPARSE  ZDATA ? ZPAT =                                  :F(ZCALC)
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 70
                        mov              r10, 15;                             jmp   n78_var_α
n77_statement_begin_β:  mov              r11, 70;                             jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 128]            # ZDATA
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 48]             # ZPAT
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_assign_α
n79_var_β:              mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 73
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_match_begin_α
n80_assign_β:           mov              r11, 73;                             jmp   n79_var_β
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "PATV$0"
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
.Lx287_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx287_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n82_match_defer_α
n81_match_begin_β:      mov              r11, 74
.Lx287_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx287_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx287_1
                                                                              jmp   .Lx287_0
.Lx287_1:
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
#-----------------------------------------------------------------------------------------------------------------------
n82_match_defer_α:      mov              r11, 75
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lx288_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx288_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx288_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx288_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx288_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx288_0
.Lx288_31:              mov              edx, -1;                             jmp   .Lx288_0
.Lx288_30:              push             r14
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
                        test             rax, rax;                            jz    .Lx288_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx288_5]
                        push             rcx
                        lea              rcx, [rip + .Lx288_4]
                        push             rcx;                                 jmp   rax
.Lx288_4:               lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 592], eax;          jmp   n83_match_end_α
.Lx288_5:                                                                     jmp   n81_match_begin_β
.Lx288_0:               mov              eax, edx
                        test             eax, eax;                            js    n81_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx288_6]
                        push             rcx
                        push             rax;                                 jmp   n83_match_end_α
.Lx288_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n81_match_begin_β
n82_match_defer_β:      mov              r11, 75
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx288_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx288_12
                                                                              jmp   rax
.Lx288_12:                                                                    jmp   qword ptr [rsp]
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
                        test             rax, rax;                            je    .Lx290_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n81_match_begin_af
.Lx290_13:              add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_match_replace_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n85_match_replace_α:    mov              r11, 78
                        mov              rdi, qword ptr [rip + .Lx293_0]
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
                        add              rsp, 16;                             jmp   .Lx293_1
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "ZDATA"
.Lx293_1:                                                                     jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 79
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n87_statement_begin_α
#=======================================================================================================================
#         ZIDX = ZIDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 80
                        mov              r10, 16;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 80;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_binop_α
n89_lit_integer_β:      mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx299_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              r11, 83
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx300_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx300_7
.Lx300_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx300_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx300_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx300_4
.Lx300_3:               movq             xmm0, rsi
.Lx300_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx300_7:                                                                     jmp   n91_assign_α
.Lx300_0:               mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lx300_240
                        add              rsp, 16;                             jmp   n89_lit_integer_β
.Lx300_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 84
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZIDX
                        mov              qword ptr [r9 + 152], rdx;           jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 85
                        mov              r10, 16
                        add              rsp, 48;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#         ZTAB[ZIDX] = ZWORD + 0                          :(ZPARSE)
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 86
                        mov              r10, 17;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 86;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 112]            # ZTAB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_subscript_α
n95_var_β:              mov              r11, 88
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:        sub              rsp, 16
                        mov              r11, 89
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx308_240
                        add              rsp, 16;                             jmp   n95_var_β
.Lx308_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
n96_subscript_β:        mov              r11, 89
                        add              rsp, 16;                             jmp   n95_var_β
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 64]             # ZWORD
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_lit_integer_α
n97_var_β:              mov              r11, 90
                        add              rsp, 16;                             jmp   n96_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_binop_α
n98_lit_integer_β:      mov              r11, 91
                        add              rsp, 16;                             jmp   n97_var_β
.Lx310_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:            sub              rsp, 16
                        mov              r11, 92
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx311_2
                        add              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx311_7
.Lx311_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx311_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lx311_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx311_4
.Lx311_3:               movq             xmm0, rsi
.Lx311_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx311_7:                                                                     jmp   n100_assign_var_α
.Lx311_0:               mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lx311_240
                        add              rsp, 16;                             jmp   n98_lit_integer_β
.Lx311_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_assign_var_α
n99_binop_β:            mov              r11, 92
                        add              rsp, 16;                             jmp   n98_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_var_α:      sub              rsp, 16
                        mov              r11, 93
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
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
                        cmp              al, 104;                             jne   .Lx312_240
                        add              rsp, 16;                             jmp   n99_binop_β
.Lx312_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   mov              r11, 94
                        mov              r10, 17
                        add              rsp, 112;                            jmp   n77_statement_begin_α
#=======================================================================================================================
# ZCALC   ZTOT = 0
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α: mov              r11, 95
                        mov              r10, 18;                             jmp   n103_lit_integer_α
n102_statement_begin_β: mov              r11, 95;                             jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_assign_α
.Lx317_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZTOT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 98
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n106_statement_begin_α
#=======================================================================================================================
#         ZJ = 0
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α: mov              r11, 99
                        mov              r10, 19;                             jmp   n107_lit_integer_α
n106_statement_begin_β: mov              r11, 99;                             jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_assign_α
.Lx323_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZJ
                        mov              qword ptr [r9 + 184], rdx;           jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 102
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n110_statement_begin_α
#=======================================================================================================================
# ZADD    ZJ = LT(ZJ, ZIDX) ZJ + 1                        :F(ZNEXT)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 103
                        mov              r10, 20;                             jmp   n111_var_α
n110_statement_begin_β: mov              r11, 103;                            jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_coerce_numeric_α
n112_var_β:             mov              r11, 105
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 106
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx332_1
                        cmp              al, 3;                               jne   .Lx332_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx332_0
.Lx332_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_coerce_numeric_α
.Lx332_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_coerce_numeric_α
n113_coerce_numeric_β:  mov              r11, 106
                        add              rsp, 16;                             jmp   n112_var_β
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 107
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx334_1
                        cmp              al, 3;                               jne   .Lx334_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx334_0
.Lx334_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_cmp_test_α
.Lx334_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_cmp_test_α
n114_coerce_numeric_β:  mov              r11, 107
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n115_cmp_test_α:        sub              rsp, 16
                        mov              r11, 108
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx336_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx336_239
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lx336_239:                                                                   jmp   n116_var_α
.Lx336_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx336_240
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lx336_240:                                                                   jmp   n116_var_α
n115_cmp_test_β:        mov              r11, 108
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 109
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_integer_α
n116_var_β:             mov              r11, 109
                        add              rsp, 16;                             jmp   n115_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_binop_α
n117_lit_integer_β:     mov              r11, 110
                        add              rsp, 16;                             jmp   n116_var_β
.Lx338_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              r11, 111
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx339_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx339_7
.Lx339_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx339_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx339_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx339_4
.Lx339_3:               movq             xmm0, rsi
.Lx339_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx339_7:                                                                     jmp   n119_assign_α
.Lx339_0:               mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lx339_240
                        add              rsp, 16;                             jmp   n117_lit_integer_β
.Lx339_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 112
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZJ
                        mov              qword ptr [r9 + 184], rdx;           jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   mov              r11, 113
                        mov              r10, 20
                        add              rsp, 128;                            jmp   n121_statement_begin_α
#=======================================================================================================================
#         ZTOT = ZTOT + ZTAB[ZJ]                          :(ZADD)
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α: mov              r11, 114
                        mov              r10, 21;                             jmp   n122_var_α
n121_statement_begin_β: mov              r11, 114;                            jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 160]            # ZTOT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 112]            # ZTAB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
n123_var_β:             mov              r11, 116
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_subscript_α
n124_var_β:             mov              r11, 117
                        add              rsp, 16;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n125_subscript_α:       sub              rsp, 16
                        mov              r11, 118
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
                        cmp              al, 104;                             jne   .Lx348_240
                        add              rsp, 16;                             jmp   n124_var_β
.Lx348_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_deref_α
n125_subscript_β:       mov              r11, 118
                        add              rsp, 16;                             jmp   n124_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_deref_α:           sub              rsp, 16
                        mov              r11, 119
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
                        cmp              al, 104;                             jne   .Lx349_240
                        add              rsp, 16;                             jmp   n125_subscript_β
.Lx349_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_binop_α
n126_deref_β:           mov              r11, 119
                        add              rsp, 16;                             jmp   n125_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:           sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx350_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx350_7
.Lx350_2:               and              edx, 1;                              jz    .Lx350_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx350_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx350_4
.Lx350_3:               movq             xmm0, rsi
.Lx350_4:               cmp              cl, 5;                               je    .Lx350_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx350_6
.Lx350_5:               movq             xmm1, rdi
.Lx350_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx350_7:                                                                     jmp   n128_assign_α
.Lx350_0:               mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lx350_240
                        add              rsp, 16;                             jmp   n126_deref_β
.Lx350_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZTOT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n129_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 122
                        mov              r10, 21
                        add              rsp, 96;                             jmp   n110_statement_begin_α
#=======================================================================================================================
# ZNEXT   ZS = ZS + ZTOT + RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 123
                        mov              r10, 22;                             jmp   n131_var_α
n130_statement_begin_β: mov              r11, 123;                            jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 160]            # ZTOT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_binop_α
n132_var_β:             mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:           sub              rsp, 16
                        mov              r11, 126
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx358_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx358_7
.Lx358_2:               and              edx, 1;                              jz    .Lx358_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx358_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx358_4
.Lx358_3:               movq             xmm0, rsi
.Lx358_4:               cmp              cl, 5;                               je    .Lx358_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx358_6
.Lx358_5:               movq             xmm1, rdi
.Lx358_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx358_7:                                                                     jmp   n134_lit_integer_α
.Lx358_0:               mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lx358_240
                        add              rsp, 16;                             jmp   n132_var_β
.Lx358_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_lit_integer_α
n133_binop_β:           mov              r11, 126
                        add              rsp, 16;                             jmp   n132_var_β
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_call_α
n134_lit_integer_β:     mov              r11, 127
                        add              rsp, 16;                             jmp   n133_binop_β
.Lx359_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            sub              rsp, 16
                        mov              r11, 128
                        lea              rcx, [rip + .Lsig361z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig361z:              .quad            1
                        .quad            .Lx361_2
                        .quad            .Lx361_2
                        .quad            16
.Lx361_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx361_29
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
.Lx361_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx361_240
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lx361_240:                                                                   jmp   n136_binop_α
n135_call_β:            mov              r11, 128;                            jmp   n134_lit_integer_β
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           sub              rsp, 16
                        mov              r11, 129
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx362_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx362_7
.Lx362_2:               and              edx, 1;                              jz    .Lx362_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx362_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx362_4
.Lx362_3:               movq             xmm0, rsi
.Lx362_4:               cmp              cl, 5;                               je    .Lx362_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx362_6
.Lx362_5:               movq             xmm1, rdi
.Lx362_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx362_7:                                                                     jmp   n137_assign_α
.Lx362_0:               mov              rdi, qword ptr [rsp + 48]            # binop
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
                        cmp              al, 104;                             jne   .Lx362_240
                        add              rsp, 32;                             jmp   n134_lit_integer_β
.Lx362_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 131
                        mov              r10, 22
                        add              rsp, 96;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 132
                        mov              r10, 23;                             jmp   n140_var_α
n139_statement_begin_β: mov              r11, 132;                            jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_coerce_numeric_α
n141_var_β:             mov              r11, 134
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 135
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx371_1
                        cmp              al, 3;                               jne   .Lx371_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx371_0
.Lx371_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_coerce_numeric_α
.Lx371_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_coerce_numeric_α
n142_coerce_numeric_β:  mov              r11, 135
                        add              rsp, 16;                             jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n143_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 136
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx373_1
                        cmp              al, 3;                               jne   .Lx373_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx373_0
.Lx373_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_cmp_test_α
.Lx373_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_cmp_test_α
n143_coerce_numeric_β:  mov              r11, 136
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n144_cmp_test_α:        sub              rsp, 16
                        mov              r11, 137
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx375_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx375_239
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
.Lx375_239:                                                                   jmp   n145_var_α
.Lx375_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx375_240
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
.Lx375_240:                                                                   jmp   n145_var_α
n144_cmp_test_β:        mov              r11, 137
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_lit_integer_α
n145_var_β:             mov              r11, 138
                        add              rsp, 16;                             jmp   n144_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_binop_α
n146_lit_integer_β:     mov              r11, 139
                        add              rsp, 16;                             jmp   n145_var_β
.Lx377_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:           sub              rsp, 16
                        mov              r11, 140
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx378_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx378_7
.Lx378_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx378_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx378_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx378_4
.Lx378_3:               movq             xmm0, rsi
.Lx378_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx378_7:                                                                     jmp   n148_assign_α
.Lx378_0:               mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lx378_240
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lx378_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n149_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   mov              r11, 142
                        mov              r10, 23
                        add              rsp, 128;                            jmp   n64_statement_begin_α
#=======================================================================================================================
#         MIXED_WORKLOAD = ZS                             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 143
                        mov              r10, 24;                             jmp   n151_var_α
n150_statement_begin_β: mov              r11, 143;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              r11, 144
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # MIXED_WORKLOAD
                        mov              qword ptr [r9 + 40], rdx;            jmp   n153_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 146
                        mov              r10, 24
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# MIXED_WORKLOAD_END  <stmt 25, line 32: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 147
                        mov              r10, 25;                             jmp   n155_statement_end_α
n154_statement_begin_β: mov              r11, 147;                            jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 148
                        mov              r10, 25;                             jmp   n156_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'RSUM(10) = ' RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 149
                        mov              r10, 26;                             jmp   n157_lit_string_α
n156_statement_begin_β: mov              r11, 149;                            jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_lit_integer_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "RSUM(10) = "
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_call_α
n158_lit_integer_β:     mov              r11, 151
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
.Lx395_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 152
                        lea              rcx, [rip + .Lsig397z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig397z:              .quad            1
                        .quad            .Lx397_2
                        .quad            .Lx397_2
                        .quad            16
.Lx397_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx397_29
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
.Lx397_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx397_240
                        add              rsp, 16;                             jmp   n158_lit_integer_β
.Lx397_240:                                                                   jmp   n160_binop_α
n159_call_β:            mov              r11, 152;                            jmp   n158_lit_integer_β
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           sub              rsp, 16
                        mov              r11, 153
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              r11, 154
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_statement_end_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 155
                        mov              r10, 26
                        add              rsp, 64;                             jmp   n163_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'one record = ' MIXED_WORKLOAD(1)
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 156
                        mov              r10, 27;                             jmp   n164_lit_string_α
n163_statement_begin_β: mov              r11, 156;                            jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_lit_integer_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "one record = "
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
n165_lit_integer_β:     mov              r11, 158
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Lx405_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        mov              r11, 159
                        lea              rcx, [rip + .Lsig407z]
                        lea              rax, [rip + MIXED_WORKLOAD_α];       jmp   rax
.Lsig407z:              .quad            1
                        .quad            .Lx407_2
                        .quad            .Lx407_2
                        .quad            16
.Lx407_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx407_29
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
.Lx407_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx407_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lx407_240:                                                                   jmp   n167_binop_α
n166_call_β:            mov              r11, 159;                            jmp   n165_lit_integer_β
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "MIXED_WORKLOAD"
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:           sub              rsp, 16
                        mov              r11, 160
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              r11, 161
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_statement_end_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 162
                        mov              r10, 27
                        add              rsp, 64;                             jmp   n170_statement_begin_α
#=======================================================================================================================
#         OUTPUT = '20 records = ' MIXED_WORKLOAD(20)
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 163
                        mov              r10, 28;                             jmp   n171_lit_string_α
n170_statement_begin_β: mov              r11, 163;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_lit_integer_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "20 records = "
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_call_α
n172_lit_integer_β:     mov              r11, 165
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Lx415_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            sub              rsp, 16
                        mov              r11, 166
                        lea              rcx, [rip + .Lsig417z]
                        lea              rax, [rip + MIXED_WORKLOAD_α];       jmp   rax
.Lsig417z:              .quad            1
                        .quad            .Lx417_2
                        .quad            .Lx417_2
                        .quad            16
.Lx417_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx417_29
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
.Lx417_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx417_240
                        add              rsp, 16;                             jmp   n172_lit_integer_β
.Lx417_240:                                                                   jmp   n174_binop_α
n173_call_β:            mov              r11, 166;                            jmp   n172_lit_integer_β
.Lx417_0:               .quad            .Lx417_0_s
.Lx417_0_s:             .string          "MIXED_WORKLOAD"
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              r11, 167
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              r11, 168
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_statement_end_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 169
                        mov              r10, 28
                        add              rsp, 64;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 170
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
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
