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
                        mov              edi, 22
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 22
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "RSUM"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZBODY"
.Lgvan3:                .string          "ZKN"
.Lgvan4:                .string          "ZCHK"
.Lgvan5:                .string          "ZBUD"
.Lgvan6:                .string          "ZFLR"
.Lgvan7:                .string          "ZPAT"
.Lgvan8:                .string          "ZWORD"
.Lgvan9:                .string          "ZI"
.Lgvan10:               .string          "ZS"
.Lgvan11:               .string          "ZTAB"
.Lgvan12:               .string          "ZDATA"
.Lgvan13:               .string          "ZIDX"
.Lgvan14:               .string          "ZTOT"
.Lgvan15:               .string          "ZJ"
.Lgvan16:               .string          "fixed_n"
.Lgvan17:               .string          "ZK"
.Lgvan18:               .string          "ZT"
.Lgvan19:               .string          "ZE"
.Lgvan20:               .string          "ZD"
.Lgvan21:               .string          "ZN"
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
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
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
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_keyword_assign_snobol4_α
.Lx349_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx350_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx350_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lx350_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
.Lx350_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_keyword_assign_snobol4_α
.Lx355_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rip + .Lx356_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx356_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx356_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_statement_end_α
.Lx356_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_unop_α
.Lx361_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_α:             sub              rsp, 16
                        mov              r11, 15
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_keyword_assign_snobol4_α
n22_unop_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n20_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lx363_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx363_240
                        add              rsp, 16;                             jmp   n22_unop_β
.Lx363_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_statement_end_α
.Lx363_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 17
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         ZCHK = 20
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 18
                        mov              r10, 4;                              jmp   n26_lit_integer_α
n25_statement_begin_β:  mov              r11, 18;                             jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx368_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZCHK
                        mov              qword ptr [r9 + 72], rdx;            jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 21
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 22
                        mov              r10, 5;                              jmp   n30_lit_integer_α
n29_statement_begin_β:  mov              r11, 22;                             jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Lx374_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n32_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 25
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n33_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 26
                        mov              r10, 6;                              jmp   n34_lit_integer_α
n33_statement_begin_β:  mov              r11, 26;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_assign_α
.Lx380_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 29
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         DEFINE('RSUM(N)')                               :(RSUM_END)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 30
                        mov              r10, 7;                              jmp   n38_define_α
n37_statement_begin_β:  mov              r11, 30;                             jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_define_α:           mov              r11, 31
                        mov              rdi, qword ptr [rip + .Lx387_0]
                        mov              rsi, qword ptr [rip + .Lx387_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n40_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx387_0]
                        lea              rsi, [rip + RSUM_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_statement_end_α
n38_define_β:           mov              r11, 31;                             jmp   n37_statement_begin_β
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "RSUM"
.Lx387_1:               .quad            .Lx387_1_s
.Lx387_1_s:             .string          "N"
                                                                              jmp   .Lx388_245
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
                        cmp              rdx, 0;                              jbe   .Lx388_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx388_41
.Lx388_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx388_41:              lea              rcx, [rip + RSUM_γ]
                        lea              rax, [rip + RSUM_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n40_statement_begin_α];  jmp   rax
RSUM_γ:                 mov              rdi, qword ptr [r9 + 0]              # RSUM
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx388_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx388_110
.Lx388_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx388_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx388_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx388_180
.Lx388_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx388_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx388_245:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 32
                        mov              r10, 7;                              jmp   n58_statement_begin_α
#=======================================================================================================================
# RSUM    RSUM = EQ(N, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 33
                        mov              r10, 8;                              jmp   n41_var_α
n40_statement_begin_β:  mov              r11, 33;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_coerce_numeric_α
n42_lit_integer_β:      mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lx394_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 36
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx396_1
                        cmp              al, 3;                               jne   .Lx396_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx396_0
.Lx396_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_coerce_numeric_α
.Lx396_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_coerce_numeric_α
n43_coerce_numeric_β:   mov              r11, 36
                        add              rsp, 16;                             jmp   n42_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 37
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx398_1
                        cmp              al, 3;                               jne   .Lx398_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx398_0
.Lx398_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_cmp_test_α
.Lx398_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_cmp_test_α
n44_coerce_numeric_β:   mov              r11, 37
                        add              rsp, 16;                             jmp   n43_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n45_cmp_test_α:         sub              rsp, 16
                        mov              r11, 38
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx400_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lx400_239
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
.Lx400_239:                                                                   jmp   n46_lit_integer_α
.Lx400_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            je    .Lx400_240
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
.Lx400_240:                                                                   jmp   n46_lit_integer_α
n45_cmp_test_β:         mov              r11, 38
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx401_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 41
                        mov              r10, 8
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
#         RSUM = N + RSUM(N - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 42
                        mov              r10, 9;                              jmp   n50_var_α
n49_statement_begin_β:  mov              r11, 42;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_lit_integer_α
n51_var_β:              mov              r11, 44
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_binop_α
n52_lit_integer_β:      mov              r11, 45
                        add              rsp, 16;                             jmp   n51_var_β
.Lx409_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:            sub              rsp, 16
                        mov              r11, 46
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx410_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx410_7
.Lx410_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx410_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx410_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx410_4
.Lx410_3:               movq             xmm0, rsi
.Lx410_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx410_7:                                                                     jmp   n54_call_α
.Lx410_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx410_240
                        add              rsp, 16;                             jmp   n52_lit_integer_β
.Lx410_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_call_α
n53_binop_β:            mov              r11, 46
                        add              rsp, 16;                             jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
                        mov              r11, 47
                        lea              rcx, [rip + .Lsig412z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig412z:              .quad            1
                        .quad            .Lx412_2
                        .quad            .Lx412_2
                        .quad            16
.Lx412_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx412_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx412_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx412_240
                        add              rsp, 16;                             jmp   n53_binop_β
.Lx412_240:                                                                   jmp   n55_binop_α
n54_call_β:             mov              r11, 47;                             jmp   n53_binop_β
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx413_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx413_7
.Lx413_2:               and              edx, 1;                              jz    .Lx413_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx413_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx413_4
.Lx413_3:               movq             xmm0, rsi
.Lx413_4:               cmp              cl, 5;                               je    .Lx413_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx413_6
.Lx413_5:               movq             xmm1, rdi
.Lx413_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx413_7:                                                                     jmp   n56_assign_α
.Lx413_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx413_240
                        add              rsp, 32;                             jmp   n53_binop_β
.Lx413_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 49
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 50
                        mov              r10, 9
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# RSUM_END  <stmt 10, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 51
                        mov              r10, 10;                             jmp   n59_statement_end_α
n58_statement_begin_β:  mov              r11, 51;                             jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 52
                        mov              r10, 10;                             jmp   n60_statement_begin_α
#=======================================================================================================================
#         ZPAT = BREAK(',') . ZWORD ','
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 53
                        mov              r10, 11;                             jmp   n61_lit_string_α
n60_statement_begin_β:  mov              r11, 53;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_call_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             sub              rsp, 16
                        mov              r11, 55
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd425:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd425]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx424_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Lx424_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_assign_α
n62_call_β:             mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZPAT
                        mov              qword ptr [r9 + 120], rdx;           jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 57
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 58
                        mov              r10, 12;                             jmp   n66_define_α
n65_statement_begin_β:  mov              r11, 58;                             jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_define_α:           mov              r11, 59
                        mov              rdi, qword ptr [rip + .Lx432_0]
                        mov              rsi, qword ptr [rip + .Lx432_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n68_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx432_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_statement_end_α
n66_define_β:           mov              r11, 59;                             jmp   n65_statement_begin_β
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "ZBODY"
.Lx432_1:               .quad            .Lx432_1_s
.Lx432_1_s:             .string          "ZKN"
                                                                              jmp   .Lx433_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx433_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx433_41
.Lx433_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx433_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n68_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 32]             # ZBODY
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx433_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx433_110
.Lx433_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx433_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx433_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx433_180
.Lx433_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx433_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx433_245:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 60
                        mov              r10, 12;                             jmp   n166_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 61
                        mov              r10, 13;                             jmp   n69_lit_integer_α
n68_statement_begin_β:  mov              r11, 61;                             jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_assign_α
.Lx438_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 63
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZI
                        mov              qword ptr [r9 + 152], rdx;           jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 64
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 65
                        mov              r10, 14;                             jmp   n73_lit_integer_α
n72_statement_begin_β:  mov              r11, 65;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_assign_α
.Lx444_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZS
                        mov              qword ptr [r9 + 168], rdx;           jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 68
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n76_statement_begin_α
#=======================================================================================================================
# ZBL     ZTAB = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 69
                        mov              r10, 15;                             jmp   n77_lit_integer_α
n76_statement_begin_β:  mov              r11, 69;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Lx450_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        mov              r11, 71
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd452:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd452]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx451_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx451_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
n78_call_β:             mov              r11, 71
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZTAB
                        mov              qword ptr [r9 + 184], rdx;           jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 73
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         ZDATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 74
                        mov              r10, 16;                             jmp   n82_lit_string_α
n81_statement_begin_β:  mov              r11, 74;                             jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_assign_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 76
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZDATA
                        mov              qword ptr [r9 + 200], rdx;           jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 77
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n85_statement_begin_α
#=======================================================================================================================
#         ZIDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 78
                        mov              r10, 17;                             jmp   n86_lit_integer_α
n85_statement_begin_β:  mov              r11, 78;                             jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_assign_α
.Lx464_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZIDX
                        mov              qword ptr [r9 + 216], rdx;           jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 81
                        mov              r10, 17
                        add              rsp, 16;                             jmp   n89_statement_begin_α
#=======================================================================================================================
# ZPARSE  ZDATA ? ZPAT =                                  :F(ZCALC)
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 82
                        mov              r10, 18;                             jmp   n90_var_α
n89_statement_begin_β:  mov              r11, 82;                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 192]            # ZDATA
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 112]            # ZPAT
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_assign_α
n91_var_β:              mov              r11, 84
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              r11, 85
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_match_begin_α
n92_assign_β:           mov              r11, 85;                             jmp   n91_var_β
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n93_match_begin_α:      mov              r11, 86
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
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx474_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx474_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n94_match_defer_α
n93_match_begin_β:      mov              r11, 86
.Lx474_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx474_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx474_1
                                                                              jmp   .Lx474_0
.Lx474_1:
n93_match_begin_af:     mov              r11, 86
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n92_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      mov              r11, 87
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx475_14
                        mov              rax, qword ptr [rdx + 0]
.Lx475_14:              test             rax, rax;                            jz    .Lx475_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx475_5]
                        push             rcx
                        lea              rcx, [rip + .Lx475_4]
                        push             rcx;                                 jmp   rax
.Lx475_4:               lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 640], eax;          jmp   n95_match_end_α
.Lx475_5:                                                                     jmp   n93_match_begin_β
.Lx475_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n93_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx475_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_end_α
.Lx475_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n93_match_begin_β
n94_match_defer_β:      mov              r11, 87
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx475_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx475_12
                                                                              jmp   rax
.Lx475_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n95_match_end_α:        mov              r11, 88
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx477_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n93_match_begin_af
.Lx477_13:              add              rsp, 16
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
                        pop              rbp;                                 jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_match_replace_α
.Lx478_0:               .quad            .Lx478_0_s
.Lx478_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_match_replace_α:    mov              r11, 90
                        mov              rdi, qword ptr [rip + .Lx480_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16;                             jmp   .Lx480_1
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "ZDATA"
.Lx480_1:                                                                     jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 91
                        mov              r10, 18
                        add              rsp, 32;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         ZIDX = ZIDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 92
                        mov              r10, 19;                             jmp   n100_var_α
n99_statement_begin_β:  mov              r11, 92;                             jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 208]            # ZIDX
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_binop_α
n101_lit_integer_β:     mov              r11, 94
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx486_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              r11, 95
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx487_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx487_7
.Lx487_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx487_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx487_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx487_4
.Lx487_3:               movq             xmm0, rsi
.Lx487_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx487_7:                                                                     jmp   n103_assign_α
.Lx487_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx487_240
                        add              rsp, 16;                             jmp   n101_lit_integer_β
.Lx487_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZIDX
                        mov              qword ptr [r9 + 216], rdx;           jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 97
                        mov              r10, 19
                        add              rsp, 48;                             jmp   n105_statement_begin_α
#=======================================================================================================================
#         ZTAB[ZIDX] = ZWORD + 0                          :(ZPARSE)
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 98
                        mov              r10, 20;                             jmp   n106_var_α
n105_statement_begin_β: mov              r11, 98;                             jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 176]            # ZTAB
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 208]            # ZIDX
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_subscript_α
n107_var_β:             mov              r11, 100
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n108_subscript_α:       sub              rsp, 16
                        mov              r11, 101
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx495_240
                        add              rsp, 16;                             jmp   n107_var_β
.Lx495_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_var_α
n108_subscript_β:       mov              r11, 101
                        add              rsp, 16;                             jmp   n107_var_β
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 128]            # ZWORD
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_lit_integer_α
n109_var_β:             mov              r11, 102
                        add              rsp, 16;                             jmp   n108_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_binop_α
n110_lit_integer_β:     mov              r11, 103
                        add              rsp, 16;                             jmp   n109_var_β
.Lx497_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              r11, 104
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx498_2
                        add              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx498_7
.Lx498_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx498_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lx498_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx498_4
.Lx498_3:               movq             xmm0, rsi
.Lx498_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx498_7:                                                                     jmp   n112_assign_var_α
.Lx498_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx498_240
                        add              rsp, 16;                             jmp   n110_lit_integer_β
.Lx498_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_assign_var_α
n111_binop_β:           mov              r11, 104
                        add              rsp, 16;                             jmp   n110_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_var_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx499_240
                        add              rsp, 16;                             jmp   n111_binop_β
.Lx499_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 106
                        mov              r10, 20
                        add              rsp, 112;                            jmp   n89_statement_begin_α
#=======================================================================================================================
# ZCALC   ZTOT = 0
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α: mov              r11, 107
                        mov              r10, 21;                             jmp   n115_lit_integer_α
n114_statement_begin_β: mov              r11, 107;                            jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_assign_α
.Lx504_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZTOT
                        mov              qword ptr [r9 + 232], rdx;           jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 110
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
#         ZJ = 0
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α: mov              r11, 111
                        mov              r10, 22;                             jmp   n119_lit_integer_α
n118_statement_begin_β: mov              r11, 111;                            jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_assign_α
.Lx510_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZJ
                        mov              qword ptr [r9 + 248], rdx;           jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 114
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n122_statement_begin_α
#=======================================================================================================================
# ZADD    ZJ = LT(ZJ, ZIDX) ZJ + 1                        :F(ZNEXT)
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 115
                        mov              r10, 23;                             jmp   n123_var_α
n122_statement_begin_β: mov              r11, 115;                            jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 240]            # ZJ
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 208]            # ZIDX
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_coerce_numeric_α
n124_var_β:             mov              r11, 117
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 118
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx519_1
                        cmp              al, 3;                               jne   .Lx519_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx519_0
.Lx519_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_coerce_numeric_α
.Lx519_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_coerce_numeric_α
n125_coerce_numeric_β:  mov              r11, 118
                        add              rsp, 16;                             jmp   n124_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 119
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx521_1
                        cmp              al, 3;                               jne   .Lx521_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx521_0
.Lx521_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_cmp_test_α
.Lx521_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_cmp_test_α
n126_coerce_numeric_β:  mov              r11, 119
                        add              rsp, 16;                             jmp   n125_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n127_cmp_test_α:        sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx523_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx523_239
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
.Lx523_239:                                                                   jmp   n128_var_α
.Lx523_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            js    .Lx523_240
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
.Lx523_240:                                                                   jmp   n128_var_α
n127_cmp_test_β:        mov              r11, 120
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              r11, 121
                        mov              rax, qword ptr [r9 + 240]            # ZJ
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_lit_integer_α
n128_var_β:             mov              r11, 121
                        add              rsp, 16;                             jmp   n127_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_binop_α
n129_lit_integer_β:     mov              r11, 122
                        add              rsp, 16;                             jmp   n128_var_β
.Lx525_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:           sub              rsp, 16
                        mov              r11, 123
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx526_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx526_7
.Lx526_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx526_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx526_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx526_4
.Lx526_3:               movq             xmm0, rsi
.Lx526_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx526_7:                                                                     jmp   n131_assign_α
.Lx526_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx526_240
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lx526_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZJ
                        mov              qword ptr [r9 + 248], rdx;           jmp   n132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   mov              r11, 125
                        mov              r10, 23
                        add              rsp, 128;                            jmp   n133_statement_begin_α
#=======================================================================================================================
#         ZTOT = ZTOT + ZTAB[ZJ]                          :(ZADD)
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 126
                        mov              r10, 24;                             jmp   n134_var_α
n133_statement_begin_β: mov              r11, 126;                            jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 224]            # ZTOT
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 176]            # ZTAB
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_var_α
n135_var_β:             mov              r11, 128
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 240]            # ZJ
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_subscript_α
n136_var_β:             mov              r11, 129
                        add              rsp, 16;                             jmp   n135_var_β
#-----------------------------------------------------------------------------------------------------------------------
n137_subscript_α:       sub              rsp, 16
                        mov              r11, 130
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx535_240
                        add              rsp, 16;                             jmp   n136_var_β
.Lx535_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_deref_α
n137_subscript_β:       mov              r11, 130
                        add              rsp, 16;                             jmp   n136_var_β
#-----------------------------------------------------------------------------------------------------------------------
n138_deref_α:           sub              rsp, 16
                        mov              r11, 131
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx536_240
                        add              rsp, 16;                             jmp   n137_subscript_β
.Lx536_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_binop_α
n138_deref_β:           mov              r11, 131
                        add              rsp, 16;                             jmp   n137_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:           sub              rsp, 16
                        mov              r11, 132
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx537_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx537_7
.Lx537_2:               and              edx, 1;                              jz    .Lx537_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx537_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx537_4
.Lx537_3:               movq             xmm0, rsi
.Lx537_4:               cmp              cl, 5;                               je    .Lx537_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx537_6
.Lx537_5:               movq             xmm1, rdi
.Lx537_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx537_7:                                                                     jmp   n140_assign_α
.Lx537_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx537_240
                        add              rsp, 16;                             jmp   n138_deref_β
.Lx537_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZTOT
                        mov              qword ptr [r9 + 232], rdx;           jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 134
                        mov              r10, 24
                        add              rsp, 96;                             jmp   n122_statement_begin_α
#=======================================================================================================================
# ZNEXT   ZS = ZS + ZTOT + RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α: mov              r11, 135
                        mov              r10, 25;                             jmp   n143_var_α
n142_statement_begin_β: mov              r11, 135;                            jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 160]            # ZS
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 224]            # ZTOT
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_binop_α
n144_var_β:             mov              r11, 137
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           sub              rsp, 16
                        mov              r11, 138
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx545_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx545_7
.Lx545_2:               and              edx, 1;                              jz    .Lx545_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx545_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx545_4
.Lx545_3:               movq             xmm0, rsi
.Lx545_4:               cmp              cl, 5;                               je    .Lx545_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx545_6
.Lx545_5:               movq             xmm1, rdi
.Lx545_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx545_7:                                                                     jmp   n146_lit_integer_α
.Lx545_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx545_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lx545_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_lit_integer_α
n145_binop_β:           mov              r11, 138
                        add              rsp, 16;                             jmp   n144_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_call_α
n146_lit_integer_β:     mov              r11, 139
                        add              rsp, 16;                             jmp   n145_binop_β
.Lx546_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            sub              rsp, 16
                        mov              r11, 140
                        lea              rcx, [rip + .Lsig548z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig548z:              .quad            1
                        .quad            .Lx548_2
                        .quad            .Lx548_2
                        .quad            16
.Lx548_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx548_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx548_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx548_240
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lx548_240:                                                                   jmp   n148_binop_α
n147_call_β:            mov              r11, 140;                            jmp   n146_lit_integer_β
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              r11, 141
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx549_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx549_7
.Lx549_2:               and              edx, 1;                              jz    .Lx549_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx549_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx549_4
.Lx549_3:               movq             xmm0, rsi
.Lx549_4:               cmp              cl, 5;                               je    .Lx549_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx549_6
.Lx549_5:               movq             xmm1, rdi
.Lx549_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx549_7:                                                                     jmp   n149_assign_α
.Lx549_0:               mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx549_240
                        add              rsp, 32;                             jmp   n146_lit_integer_β
.Lx549_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZS
                        mov              qword ptr [r9 + 168], rdx;           jmp   n150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 143
                        mov              r10, 25
                        add              rsp, 96;                             jmp   n151_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 144
                        mov              r10, 26;                             jmp   n152_var_α
n151_statement_begin_β: mov              r11, 144;                            jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 144]            # ZI
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              r11, 146
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_coerce_numeric_α
n153_var_β:             mov              r11, 146
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 147
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx558_1
                        cmp              al, 3;                               jne   .Lx558_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx558_0
.Lx558_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_coerce_numeric_α
.Lx558_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_coerce_numeric_α
n154_coerce_numeric_β:  mov              r11, 147
                        add              rsp, 16;                             jmp   n153_var_β
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 148
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx560_1
                        cmp              al, 3;                               jne   .Lx560_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx560_0
.Lx560_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_cmp_test_α
.Lx560_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_cmp_test_α
n155_coerce_numeric_β:  mov              r11, 148
                        add              rsp, 16;                             jmp   n154_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n156_cmp_test_α:        sub              rsp, 16
                        mov              r11, 149
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx562_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx562_239
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
.Lx562_239:                                                                   jmp   n157_var_α
.Lx562_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            js    .Lx562_240
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
.Lx562_240:                                                                   jmp   n157_var_α
n156_cmp_test_β:        mov              r11, 149
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              r11, 150
                        mov              rax, qword ptr [r9 + 144]            # ZI
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_lit_integer_α
n157_var_β:             mov              r11, 150
                        add              rsp, 16;                             jmp   n156_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_binop_α
n158_lit_integer_β:     mov              r11, 151
                        add              rsp, 16;                             jmp   n157_var_β
.Lx564_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:           sub              rsp, 16
                        mov              r11, 152
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx565_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx565_7
.Lx565_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx565_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx565_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx565_4
.Lx565_3:               movq             xmm0, rsi
.Lx565_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx565_7:                                                                     jmp   n160_assign_α
.Lx565_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx565_240
                        add              rsp, 16;                             jmp   n158_lit_integer_β
.Lx565_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZI
                        mov              qword ptr [r9 + 152], rdx;           jmp   n161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 154
                        mov              r10, 26
                        add              rsp, 128;                            jmp   n76_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 155
                        mov              r10, 27;                             jmp   n163_var_α
n162_statement_begin_β: mov              r11, 155;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 160]            # ZS
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   mov              r11, 158
                        mov              r10, 27
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 28, line 34: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α: mov              r11, 159
                        mov              r10, 28;                             jmp   n167_statement_end_α
n166_statement_begin_β: mov              r11, 159;                            jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 160
                        mov              r10, 28;                             jmp   n168_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α: mov              r11, 161
                        mov              r10, 29;                             jmp   n169_lit_string_α
n168_statement_begin_β: mov              r11, 161;                            jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      sub              rsp, 16
                        mov              r11, 162
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_var_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             sub              rsp, 16
                        mov              r11, 163
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_call_α
n170_var_β:             mov              r11, 163
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n168_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            sub              rsp, 16
                        mov              r11, 164
                        lea              rcx, [rip + .Lsig584z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig584z:              .quad            1
                        .quad            .Lx584_2
                        .quad            .Lx584_2
                        .quad            16
.Lx584_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx584_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx584_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx584_240
                        add              rsp, 16;                             jmp   n170_var_β
.Lx584_240:                                                                   jmp   n172_binop_α
n171_call_β:            mov              r11, 164;                            jmp   n170_var_β
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:           sub              rsp, 16
                        mov              r11, 165
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 166
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_statement_end_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 167
                        mov              r10, 29
                        add              rsp, 64;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 168
                        mov              r10, 30;                             jmp   n176_var_α
n175_statement_begin_β: mov              r11, 168;                            jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              r11, 169
                        mov              rdi, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx591_240
                        add              rsp, 16;                             jmp   n175_statement_begin_β
.Lx591_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_assign_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # fixed_n
                        mov              qword ptr [r9 + 264], rdx;           jmp   n178_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 171
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n282_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 172
                        mov              r10, 31;                             jmp   n180_var_α
n179_statement_begin_β: mov              r11, 172;                            jmp   n185_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_binop_α
n181_lit_integer_β:     mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
.Lx598_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n182_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx599_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx599_7
.Lx599_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx599_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx599_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx599_4
.Lx599_3:               movq             xmm0, rsi
.Lx599_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx599_7:                                                                     jmp   n183_assign_α
.Lx599_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx599_240
                        add              rsp, 16;                             jmp   n181_lit_integer_β
.Lx599_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n184_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 177
                        mov              r10, 31
                        add              rsp, 48;                             jmp   n185_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α: mov              r11, 178
                        mov              r10, 32;                             jmp   n186_var_α
n185_statement_begin_β: mov              r11, 178;                            jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     sub              rsp, 16
                        mov              r11, 180
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_binop_α
n187_lit_integer_β:     mov              r11, 180
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n185_statement_begin_β
.Lx606_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:           sub              rsp, 16
                        mov              r11, 181
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx607_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx607_7
.Lx607_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx607_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx607_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx607_4
.Lx607_3:               movq             xmm0, rsi
.Lx607_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx607_7:                                                                     jmp   n189_assign_α
.Lx607_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx607_240
                        add              rsp, 16;                             jmp   n187_lit_integer_β
.Lx607_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 182
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n190_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 183
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n191_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α: mov              r11, 184
                        mov              r10, 33;                             jmp   n192_var_α
n191_statement_begin_β: mov              r11, 184;                            jmp   n196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      sub              rsp, 16
                        mov              r11, 186
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_differ_α
n193_lit_string_β:      mov              r11, 186
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n191_statement_begin_β
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n194_differ_α:          sub              rsp, 16
                        mov              r11, 187
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx616_240
                        add              rsp, 16;                             jmp   n193_lit_string_β
.Lx616_240:                                                                   jmp   n195_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 188
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n225_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α: mov              r11, 189
                        mov              r10, 34;                             jmp   n197_lit_integer_α
n196_statement_begin_β: mov              r11, 189;                            jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_assign_α
.Lx621_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # ZK
                        mov              qword ptr [r9 + 280], rdx;           jmp   n199_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 192
                        mov              r10, 34
                        add              rsp, 16;                             jmp   n200_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 35, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 193
                        mov              r10, 35;                             jmp   n201_call_α
n200_statement_begin_β: mov              r11, 193;                            jmp   n204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            sub              rsp, 16
                        mov              r11, 194
                        .section         .rodata
.Lrkfnzd628:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd628]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx627_240
                        add              rsp, 16;                             jmp   n200_statement_begin_β
.Lx627_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_assign_α
n201_call_β:            mov              r11, 194
                        add              rsp, 16;                             jmp   n200_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # ZT
                        mov              qword ptr [r9 + 296], rdx;           jmp   n203_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 196
                        mov              r10, 35
                        add              rsp, 16;                             jmp   n204_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α: mov              r11, 197
                        mov              r10, 36;                             jmp   n205_var_α
n204_statement_begin_β: mov              r11, 197;                            jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_call_α
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            sub              rsp, 16
                        mov              r11, 199
                        lea              rcx, [rip + .Lsig636z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig636z:              .quad            1
                        .quad            .Lx636_2
                        .quad            .Lx636_2
                        .quad            16
.Lx636_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx636_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx636_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx636_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
.Lx636_240:                                                                   jmp   n207_statement_end_α
n206_call_β:            mov              r11, 199;                            jmp   n204_statement_begin_β
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   mov              r11, 200
                        mov              r10, 36
                        add              rsp, 32;                             jmp   n208_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 201
                        mov              r10, 37;                             jmp   n209_call_α
n208_statement_begin_β: mov              r11, 201;                            jmp   n214_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            sub              rsp, 16
                        mov              r11, 202
                        .section         .rodata
.Lrkfnzd642:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd642]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx641_240
                        add              rsp, 16;                             jmp   n208_statement_begin_β
.Lx641_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_var_α
n209_call_β:            mov              r11, 202
                        add              rsp, 16;                             jmp   n208_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 288]            # ZT
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_binop_α
n210_var_β:             mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n208_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 204
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx644_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx644_7
.Lx644_2:               and              edx, 1;                              jz    .Lx644_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx644_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx644_4
.Lx644_3:               movq             xmm0, rsi
.Lx644_4:               cmp              cl, 5;                               je    .Lx644_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx644_6
.Lx644_5:               movq             xmm1, rdi
.Lx644_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx644_7:                                                                     jmp   n212_assign_α
.Lx644_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx644_240
                        add              rsp, 16;                             jmp   n210_var_β
.Lx644_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              r11, 205
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # ZE
                        mov              qword ptr [r9 + 312], rdx;           jmp   n213_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:   mov              r11, 206
                        mov              r10, 37
                        add              rsp, 48;                             jmp   n214_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 207
                        mov              r10, 38;                             jmp   n215_var_α
n214_statement_begin_β: mov              r11, 207;                            jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 304]            # ZE
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_coerce_numeric_α
n216_var_β:             mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n214_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n217_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx653_1
                        cmp              al, 3;                               jne   .Lx653_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx653_0
.Lx653_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n218_coerce_numeric_α
.Lx653_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n218_coerce_numeric_α
n217_coerce_numeric_β:  mov              r11, 210
                        add              rsp, 16;                             jmp   n216_var_β
#-----------------------------------------------------------------------------------------------------------------------
n218_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 211
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx655_1
                        cmp              al, 3;                               jne   .Lx655_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx655_0
.Lx655_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_cmp_test_α
.Lx655_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_cmp_test_α
n218_coerce_numeric_β:  mov              r11, 211
                        add              rsp, 16;                             jmp   n217_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n219_cmp_test_α:        sub              rsp, 16
                        mov              r11, 212
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx657_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx657_239
                        add              rsp, 16;                             jmp   n218_coerce_numeric_β
.Lx657_239:                                                                   jmp   n220_var_α
.Lx657_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            js    .Lx657_240
                        add              rsp, 16;                             jmp   n218_coerce_numeric_β
.Lx657_240:                                                                   jmp   n220_var_α
n219_cmp_test_β:        mov              r11, 212
                        add              rsp, 16;                             jmp   n218_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_lit_integer_α
n220_var_β:             mov              r11, 213
                        add              rsp, 16;                             jmp   n219_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_binop_α
n221_lit_integer_β:     mov              r11, 214
                        add              rsp, 16;                             jmp   n220_var_β
.Lx659_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:           sub              rsp, 16
                        mov              r11, 215
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx660_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx660_7
.Lx660_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx660_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx660_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx660_4
.Lx660_3:               movq             xmm0, rsi
.Lx660_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx660_7:                                                                     jmp   n223_assign_α
.Lx660_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx660_240
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lx660_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # ZK
                        mov              qword ptr [r9 + 280], rdx;           jmp   n224_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   mov              r11, 217
                        mov              r10, 38
                        add              rsp, 128;                            jmp   n200_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 39, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α: mov              r11, 218
                        mov              r10, 39;                             jmp   n226_call_α
n225_statement_begin_β: mov              r11, 218;                            jmp   n229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_α:            sub              rsp, 16
                        mov              r11, 219
                        .section         .rodata
.Lrkfnzd667:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd667]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx666_240
                        add              rsp, 16;                             jmp   n225_statement_begin_β
.Lx666_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_assign_α
n226_call_β:            mov              r11, 219
                        add              rsp, 16;                             jmp   n225_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # ZT
                        mov              qword ptr [r9 + 296], rdx;           jmp   n228_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:   mov              r11, 221
                        mov              r10, 39
                        add              rsp, 16;                             jmp   n229_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_begin_α: mov              r11, 222
                        mov              r10, 40;                             jmp   n230_var_α
n229_statement_begin_β: mov              r11, 222;                            jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 288]            # ZT
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_binop_α
n231_var_β:             mov              r11, 224
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n229_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              r11, 225
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx675_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx675_7
.Lx675_2:               and              edx, 1;                              jz    .Lx675_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx675_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx675_4
.Lx675_3:               movq             xmm0, rsi
.Lx675_4:               cmp              cl, 5;                               je    .Lx675_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx675_6
.Lx675_5:               movq             xmm1, rdi
.Lx675_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx675_7:                                                                     jmp   n233_assign_α
.Lx675_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx675_240
                        add              rsp, 16;                             jmp   n231_var_β
.Lx675_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 226
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # ZD
                        mov              qword ptr [r9 + 328], rdx;           jmp   n234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 227
                        mov              r10, 40
                        add              rsp, 48;                             jmp   n235_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 228
                        mov              r10, 41;                             jmp   n236_lit_integer_α
n235_statement_begin_β: mov              r11, 228;                            jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_assign_α
.Lx681_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 230
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # ZN
                        mov              qword ptr [r9 + 344], rdx;           jmp   n238_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   mov              r11, 231
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n239_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 42, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α: mov              r11, 232
                        mov              r10, 42;                             jmp   n240_var_α
n239_statement_begin_β: mov              r11, 232;                            jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 234
                        lea              rcx, [rip + .Lsig689z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig689z:              .quad            1
                        .quad            .Lx689_2
                        .quad            .Lx689_2
                        .quad            16
.Lx689_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx689_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx689_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx689_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
.Lx689_240:                                                                   jmp   n242_statement_end_α
n241_call_β:            mov              r11, 234;                            jmp   n239_statement_begin_β
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   mov              r11, 235
                        mov              r10, 42
                        add              rsp, 32;                             jmp   n243_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α: mov              r11, 236
                        mov              r10, 43;                             jmp   n244_var_α
n243_statement_begin_β: mov              r11, 236;                            jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              r11, 237
                        mov              rax, qword ptr [r9 + 336]            # ZN
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:             sub              rsp, 16
                        mov              r11, 238
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_binop_α
n245_var_β:             mov              r11, 238
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n243_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           sub              rsp, 16
                        mov              r11, 239
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx696_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx696_7
.Lx696_2:               and              edx, 1;                              jz    .Lx696_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx696_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx696_4
.Lx696_3:               movq             xmm0, rsi
.Lx696_4:               cmp              cl, 5;                               je    .Lx696_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx696_6
.Lx696_5:               movq             xmm1, rdi
.Lx696_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx696_7:                                                                     jmp   n247_assign_α
.Lx696_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx696_240
                        add              rsp, 16;                             jmp   n245_var_β
.Lx696_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:          mov              r11, 240
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # ZN
                        mov              qword ptr [r9 + 344], rdx;           jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:   mov              r11, 241
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n249_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α: mov              r11, 242
                        mov              r10, 44;                             jmp   n250_call_α
n249_statement_begin_β: mov              r11, 242;                            jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_α:            sub              rsp, 16
                        mov              r11, 243
                        .section         .rodata
.Lrkfnzd703:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd703]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx702_240
                        add              rsp, 16;                             jmp   n249_statement_begin_β
.Lx702_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_var_α
n250_call_β:            mov              r11, 243
                        add              rsp, 16;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 320]            # ZD
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_coerce_numeric_α
n251_var_β:             mov              r11, 244
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 245
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx706_1
                        cmp              al, 3;                               jne   .Lx706_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx706_0
.Lx706_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n253_coerce_numeric_α
.Lx706_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n253_coerce_numeric_α
n252_coerce_numeric_β:  mov              r11, 245
                        add              rsp, 16;                             jmp   n251_var_β
#-----------------------------------------------------------------------------------------------------------------------
n253_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 246
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx708_1
                        cmp              al, 3;                               jne   .Lx708_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx708_0
.Lx708_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_cmp_test_α
.Lx708_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n254_cmp_test_α
n253_coerce_numeric_β:  mov              r11, 246
                        add              rsp, 16;                             jmp   n252_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n254_cmp_test_α:        sub              rsp, 16
                        mov              r11, 247
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx710_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx710_239
                        add              rsp, 16;                             jmp   n253_coerce_numeric_β
.Lx710_239:                                                                   jmp   n255_statement_end_α
.Lx710_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            js    .Lx710_240
                        add              rsp, 16;                             jmp   n253_coerce_numeric_β
.Lx710_240:                                                                   jmp   n255_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 248
                        mov              r10, 44
                        add              rsp, 80;                             jmp   n239_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α: mov              r11, 249
                        mov              r10, 45;                             jmp   n257_call_α
n256_statement_begin_β: mov              r11, 249;                            jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            sub              rsp, 16
                        mov              r11, 250
                        .section         .rodata
.Lrkfnzd716:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd716]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx715_240
                        add              rsp, 16;                             jmp   n256_statement_begin_β
.Lx715_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_var_α
n257_call_β:            mov              r11, 250
                        add              rsp, 16;                             jmp   n256_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 288]            # ZT
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_binop_α
n258_var_β:             mov              r11, 251
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n256_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:           sub              rsp, 16
                        mov              r11, 252
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx718_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx718_7
.Lx718_2:               and              edx, 1;                              jz    .Lx718_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx718_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx718_4
.Lx718_3:               movq             xmm0, rsi
.Lx718_4:               cmp              cl, 5;                               je    .Lx718_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx718_6
.Lx718_5:               movq             xmm1, rdi
.Lx718_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx718_7:                                                                     jmp   n260_assign_α
.Lx718_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx718_240
                        add              rsp, 16;                             jmp   n258_var_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n260_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:          mov              r11, 253
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # ZE
                        mov              qword ptr [r9 + 312], rdx;           jmp   n261_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:   mov              r11, 254
                        mov              r10, 45
                        add              rsp, 48;                             jmp   n262_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 99: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α: mov              r11, 255
                        mov              r10, 46;                             jmp   n263_lit_string_α
n262_statement_begin_β: mov              r11, 255;                            jmp   n268_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      sub              rsp, 16
                        mov              r11, 256
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx724_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_var_α
.Lx724_0:               .quad            .Lx724_0_s
.Lx724_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              r11, 257
                        mov              rax, qword ptr [r9 + 336]            # ZN
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_binop_α
n264_var_β:             mov              r11, 257
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n262_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n265_binop_α:           sub              rsp, 16
                        mov              r11, 258
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n266_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:          mov              r11, 259
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_statement_end_α
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_end_α:   mov              r11, 260
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n268_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 100: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_begin_α: mov              r11, 261
                        mov              r10, 47;                             jmp   n269_lit_string_α
n268_statement_begin_β: mov              r11, 261;                            jmp   n274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      sub              rsp, 16
                        mov              r11, 262
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_var_α
.Lx732_0:               .quad            .Lx732_0_s
.Lx732_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             sub              rsp, 16
                        mov              r11, 263
                        mov              rax, qword ptr [r9 + 304]            # ZE
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_binop_α
n270_var_β:             mov              r11, 263
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n268_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:           sub              rsp, 16
                        mov              r11, 264
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n272_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              r11, 265
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n273_statement_end_α
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   mov              r11, 266
                        mov              r10, 47
                        add              rsp, 48;                             jmp   n274_statement_begin_α
#=======================================================================================================================
#         <stmt 48, line 101: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α: mov              r11, 267
                        mov              r10, 48;                             jmp   n275_lit_string_α
n274_statement_begin_β: mov              r11, 267;                            jmp   n342_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      sub              rsp, 16
                        mov              r11, 268
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n276_var_α
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 304]            # ZE
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_lit_integer_α
n276_var_β:             mov              r11, 269
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n274_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_binop_α
n277_lit_integer_β:     mov              r11, 270
                        add              rsp, 16;                             jmp   n276_var_β
.Lx742_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              r11, 271
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx743_240
                        add              rsp, 16;                             jmp   n277_lit_integer_β
.Lx743_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n279_binop_α
n278_binop_β:           mov              r11, 271
                        add              rsp, 16;                             jmp   n277_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:           sub              rsp, 16
                        mov              r11, 272
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n280_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              r11, 273
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n281_statement_end_α
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   mov              r11, 274
                        mov              r10, 48
                        add              rsp, 80;                             jmp   n342_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 49, line 102: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α: mov              r11, 275
                        mov              r10, 49;                             jmp   n283_var_α
n282_statement_begin_β: mov              r11, 275;                            jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 276
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              r11, 277
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_differ_α
n284_lit_string_β:      mov              r11, 277
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
.Lx751_0:               .quad            .Lx751_0_s
.Lx751_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n285_differ_α:          sub              rsp, 16
                        mov              r11, 278
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx753_240
                        add              rsp, 16;                             jmp   n284_lit_string_β
.Lx753_240:                                                                   jmp   n286_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:   mov              r11, 279
                        mov              r10, 49
                        add              rsp, 48;                             jmp   n291_statement_begin_α
#=======================================================================================================================
#         <stmt 50, line 103: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α: mov              r11, 280
                        mov              r10, 50;                             jmp   n288_var_α
n287_statement_begin_β: mov              r11, 280;                            jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 281
                        mov              rax, qword ptr [r9 + 256]            # fixed_n
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # ZK
                        mov              qword ptr [r9 + 280], rdx;           jmp   n290_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:   mov              r11, 283
                        mov              r10, 50
                        add              rsp, 16;                             jmp   n291_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 51, line 104: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_begin_α: mov              r11, 284
                        mov              r10, 51;                             jmp   n292_call_α
n291_statement_begin_β: mov              r11, 284;                            jmp   n295_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        mov              r11, 285
                        .section         .rodata
.Lrkfnzd765:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd765]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx764_240
                        add              rsp, 16;                             jmp   n291_statement_begin_β
.Lx764_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_assign_α
n292_call_β:            mov              r11, 285
                        add              rsp, 16;                             jmp   n291_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n293_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # ZT
                        mov              qword ptr [r9 + 296], rdx;           jmp   n294_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_end_α:   mov              r11, 287
                        mov              r10, 51
                        add              rsp, 16;                             jmp   n295_statement_begin_α
#=======================================================================================================================
#         <stmt 52, line 105: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_begin_α: mov              r11, 288
                        mov              r10, 52;                             jmp   n296_lit_integer_α
n295_statement_begin_β: mov              r11, 288;                            jmp   n299_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:     sub              rsp, 16
                        mov              r11, 289
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_assign_α
.Lx771_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # ZN
                        mov              qword ptr [r9 + 344], rdx;           jmp   n298_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_end_α:   mov              r11, 291
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n299_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 53, line 106: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_begin_α: mov              r11, 292
                        mov              r10, 53;                             jmp   n300_var_α
n299_statement_begin_β: mov              r11, 292;                            jmp   n303_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             sub              rsp, 16
                        mov              r11, 293
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_call_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            sub              rsp, 16
                        mov              r11, 294
                        lea              rcx, [rip + .Lsig779z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig779z:              .quad            1
                        .quad            .Lx779_2
                        .quad            .Lx779_2
                        .quad            16
.Lx779_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx779_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx779_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx779_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n299_statement_begin_β
.Lx779_240:                                                                   jmp   n302_statement_end_α
n301_call_β:            mov              r11, 294;                            jmp   n299_statement_begin_β
.Lx779_0:               .quad            .Lx779_0_s
.Lx779_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   mov              r11, 295
                        mov              r10, 53
                        add              rsp, 32;                             jmp   n303_statement_begin_α
#=======================================================================================================================
#         <stmt 54, line 107: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_begin_α: mov              r11, 296
                        mov              r10, 54;                             jmp   n304_var_α
n303_statement_begin_β: mov              r11, 296;                            jmp   n309_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             sub              rsp, 16
                        mov              r11, 297
                        mov              rax, qword ptr [r9 + 336]            # ZN
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              r11, 298
                        mov              rax, qword ptr [r9 + 272]            # ZK
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_binop_α
n305_var_β:             mov              r11, 298
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n303_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:           sub              rsp, 16
                        mov              r11, 299
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx786_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx786_7
.Lx786_2:               and              edx, 1;                              jz    .Lx786_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx786_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx786_4
.Lx786_3:               movq             xmm0, rsi
.Lx786_4:               cmp              cl, 5;                               je    .Lx786_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx786_6
.Lx786_5:               movq             xmm1, rdi
.Lx786_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx786_7:                                                                     jmp   n307_assign_α
.Lx786_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx786_240
                        add              rsp, 16;                             jmp   n305_var_β
.Lx786_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n307_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # ZN
                        mov              qword ptr [r9 + 344], rdx;           jmp   n308_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_end_α:   mov              r11, 301
                        mov              r10, 54
                        add              rsp, 48;                             jmp   n309_statement_begin_α
#=======================================================================================================================
#         <stmt 55, line 108: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_begin_α: mov              r11, 302
                        mov              r10, 55;                             jmp   n310_var_α
n309_statement_begin_β: mov              r11, 302;                            jmp   n316_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 336]            # ZN
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              r11, 304
                        mov              rax, qword ptr [r9 + 256]            # fixed_n
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_coerce_numeric_α
n311_var_β:             mov              r11, 304
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n309_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n312_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 305
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx795_1
                        cmp              al, 3;                               jne   .Lx795_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx795_0
.Lx795_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_coerce_numeric_α
.Lx795_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n313_coerce_numeric_α
n312_coerce_numeric_β:  mov              r11, 305
                        add              rsp, 16;                             jmp   n311_var_β
#-----------------------------------------------------------------------------------------------------------------------
n313_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 306
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx797_1
                        cmp              al, 3;                               jne   .Lx797_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx797_0
.Lx797_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_cmp_test_α
.Lx797_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n314_cmp_test_α
n313_coerce_numeric_β:  mov              r11, 306
                        add              rsp, 16;                             jmp   n312_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n314_cmp_test_α:        sub              rsp, 16
                        mov              r11, 307
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx799_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx799_239
                        add              rsp, 16;                             jmp   n313_coerce_numeric_β
.Lx799_239:                                                                   jmp   n315_statement_end_α
.Lx799_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            js    .Lx799_240
                        add              rsp, 16;                             jmp   n313_coerce_numeric_β
.Lx799_240:                                                                   jmp   n315_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_end_α:   mov              r11, 308
                        mov              r10, 55
                        add              rsp, 80;                             jmp   n299_statement_begin_α
#=======================================================================================================================
#         <stmt 56, line 109: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_begin_α: mov              r11, 309
                        mov              r10, 56;                             jmp   n317_call_α
n316_statement_begin_β: mov              r11, 309;                            jmp   n322_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            sub              rsp, 16
                        mov              r11, 310
                        .section         .rodata
.Lrkfnzd805:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd805]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx804_240
                        add              rsp, 16;                             jmp   n316_statement_begin_β
.Lx804_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_var_α
n317_call_β:            mov              r11, 310
                        add              rsp, 16;                             jmp   n316_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              r11, 311
                        mov              rax, qword ptr [r9 + 288]            # ZT
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_binop_α
n318_var_β:             mov              r11, 311
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:           sub              rsp, 16
                        mov              r11, 312
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx807_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx807_7
.Lx807_2:               and              edx, 1;                              jz    .Lx807_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx807_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx807_4
.Lx807_3:               movq             xmm0, rsi
.Lx807_4:               cmp              cl, 5;                               je    .Lx807_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx807_6
.Lx807_5:               movq             xmm1, rdi
.Lx807_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx807_7:                                                                     jmp   n320_assign_α
.Lx807_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx807_240
                        add              rsp, 16;                             jmp   n318_var_β
.Lx807_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:          mov              r11, 313
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # ZE
                        mov              qword ptr [r9 + 312], rdx;           jmp   n321_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_end_α:   mov              r11, 314
                        mov              r10, 56
                        add              rsp, 48;                             jmp   n322_statement_begin_α
#=======================================================================================================================
#         <stmt 57, line 110: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_begin_α: mov              r11, 315
                        mov              r10, 57;                             jmp   n323_lit_string_α
n322_statement_begin_β: mov              r11, 315;                            jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      sub              rsp, 16
                        mov              r11, 316
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_var_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              r11, 317
                        mov              rax, qword ptr [r9 + 336]            # ZN
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_binop_α
n324_var_β:             mov              r11, 317
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n322_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n325_binop_α:           sub              rsp, 16
                        mov              r11, 318
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n326_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:          mov              r11, 319
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_statement_end_α
.Lx816_0:               .quad            .Lx816_0_s
.Lx816_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:   mov              r11, 320
                        mov              r10, 57
                        add              rsp, 48;                             jmp   n328_statement_begin_α
#=======================================================================================================================
#         <stmt 58, line 111: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α: mov              r11, 321
                        mov              r10, 58;                             jmp   n329_lit_string_α
n328_statement_begin_β: mov              r11, 321;                            jmp   n334_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      sub              rsp, 16
                        mov              r11, 322
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n330_var_α
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              r11, 323
                        mov              rax, qword ptr [r9 + 304]            # ZE
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_binop_α
n330_var_β:             mov              r11, 323
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n328_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n331_binop_α:           sub              rsp, 16
                        mov              r11, 324
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n332_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n332_assign_α:          mov              r11, 325
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n333_statement_end_α
.Lx824_0:               .quad            .Lx824_0_s
.Lx824_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_end_α:   mov              r11, 326
                        mov              r10, 58
                        add              rsp, 48;                             jmp   n334_statement_begin_α
#=======================================================================================================================
#         <stmt 59, line 112: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_begin_α: mov              r11, 327
                        mov              r10, 59;                             jmp   n335_lit_string_α
n334_statement_begin_β: mov              r11, 327;                            jmp   n342_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      sub              rsp, 16
                        mov              r11, 328
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n336_var_α
.Lx829_0:               .quad            .Lx829_0_s
.Lx829_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              r11, 329
                        mov              rax, qword ptr [r9 + 304]            # ZE
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_lit_integer_α
n336_var_β:             mov              r11, 329
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n334_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     sub              rsp, 16
                        mov              r11, 330
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n338_binop_α
n337_lit_integer_β:     mov              r11, 330
                        add              rsp, 16;                             jmp   n336_var_β
.Lx831_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n338_binop_α:           sub              rsp, 16
                        mov              r11, 331
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx832_240
                        add              rsp, 16;                             jmp   n337_lit_integer_β
.Lx832_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n339_binop_α
n338_binop_β:           mov              r11, 331
                        add              rsp, 16;                             jmp   n337_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n339_binop_α:           sub              rsp, 16
                        mov              r11, 332
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n340_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:          mov              r11, 333
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n341_statement_end_α
.Lx834_0:               .quad            .Lx834_0_s
.Lx834_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:   mov              r11, 334
                        mov              r10, 59
                        add              rsp, 80;                             jmp   n342_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 60, line 113: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_begin_α: mov              r11, 335
                        mov              r10, 60;                             jmp   n343_var_α
n342_statement_begin_β: mov              r11, 335;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             sub              rsp, 16
                        mov              r11, 336
                        mov              rax, qword ptr [r9 + 304]            # ZE
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:          mov              r11, 337
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # ZE
                        mov              qword ptr [r9 + 312], rdx;           jmp   n345_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 338
                        mov              r10, 60
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 339
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
.Lseala3:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
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
