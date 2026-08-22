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
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx7_0:                 cmp              ecx, r15d;                           jl    .Lx7_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx7_240:               movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx7_1
                        add              ecx, 1;                              jmp   .Lx7_0
.Lx7_1:                 mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_lit_α
n2_match_assign_cond_β: sub              r12, 24;                             jmp   n1_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n2_match_assign_cond_β
                        add              r14d, 1;                             jmp   PAT$0_γ
n3_match_lit_β:         sub              r14d, 1;                             jmp   n2_match_assign_cond_β
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
                        mov              edi, 21
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 21
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
.Lgvan16:               .string          "ZK"
.Lgvan17:               .string          "ZT"
.Lgvan18:               .string          "ZE"
.Lgvan19:               .string          "ZD"
.Lgvan20:               .string          "ZN"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:                                                        jmp   n13_lit_integer_α
n12_statement_begin_β:                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_keyword_assign_snobol4_α
.Lx280_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx281_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx281_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
.Lx281_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    add              rsp, 32;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_lit_integer_α
n16_statement_begin_β:                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_keyword_assign_snobol4_α
.Lx286_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx287_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx287_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_statement_end_α
.Lx287_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    add              rsp, 32;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:                                                        jmp   n21_lit_integer_α
n20_statement_begin_β:                                                        jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_unop_α
.Lx292_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_keyword_assign_snobol4_α
n22_unop_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n20_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx294_240
                        add              rsp, 16;                             jmp   n22_unop_β
.Lx294_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_statement_end_α
.Lx294_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 48;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         ZCHK = 20
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_lit_integer_α
n25_statement_begin_β:                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx299_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZCHK
                        mov              qword ptr [r9 + 72], rdx;            jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:                                                        jmp   n30_lit_integer_α
n29_statement_begin_β:                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Lx305_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n32_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    add              rsp, 16;                             jmp   n33_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:                                                        jmp   n34_lit_integer_α
n33_statement_begin_β:                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_assign_α
.Lx311_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 16;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         DEFINE('RSUM(N)')                               :(RSUM_END)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:                                                        jmp   n38_define_α
n37_statement_begin_β:                                                        jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_define_α:           mov              rdi, qword ptr [rip + .Lx318_0]
                        mov              rsi, qword ptr [rip + .Lx318_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n40_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx318_0]
                        lea              rsi, [rip + RSUM_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_statement_end_α
n38_define_β:                                                                 jmp   n37_statement_begin_β
.Lx318_0:               .quad            .Lx318_0_s
.Lx318_0_s:             .string          "RSUM"
.Lx318_1:               .quad            .Lx318_1_s
.Lx318_1_s:             .string          "N"
                                                                              jmp   .Lx319_245
#-----------------------------------------------------------------------------------------------------------------------
RSUM_α:                 sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # RSUM
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx319_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx319_41
.Lx319_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx319_41:              lea              r10, [rip + RSUM_γ]
                        lea              r11, [rip + RSUM_ω]
                        push             r11
                        push             r10
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
                        cmp              rdx, 0;                              jbe   .Lx319_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx319_110
.Lx319_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx319_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx319_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx319_180
.Lx319_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx319_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx319_245:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:                                                          jmp   n58_statement_begin_α
#=======================================================================================================================
# RSUM    RSUM = EQ(N, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_var_α
n40_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_coerce_numeric_α
n42_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lx325_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx327_1
                        cmp              eax, 3;                              jne   .Lx327_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx327_0
.Lx327_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_coerce_numeric_α
.Lx327_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_coerce_numeric_α
n43_coerce_numeric_β:   add              rsp, 16;                             jmp   n42_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx329_1
                        cmp              eax, 3;                              jne   .Lx329_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx329_0
.Lx329_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_cmp_test_α
.Lx329_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_cmp_test_α
n44_coerce_numeric_β:   add              rsp, 16;                             jmp   n43_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n45_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx331_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lx331_239
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
.Lx331_239:                                                                   jmp   n46_lit_integer_α
.Lx331_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx331_240
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
.Lx331_240:                                                                   jmp   n46_lit_integer_α
n45_cmp_test_β:         add              rsp, 16;                             jmp   n44_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx332_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
#         RSUM = N + RSUM(N - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_var_α
n49_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_lit_integer_α
n51_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_binop_α
n52_lit_integer_β:      add              rsp, 16;                             jmp   n51_var_β
.Lx340_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx341_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx341_7
.Lx341_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx341_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx341_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx341_4
.Lx341_3:               movq             xmm0, rsi
.Lx341_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx341_7:                                                                     jmp   n54_call_α
.Lx341_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx341_240
                        add              rsp, 16;                             jmp   n52_lit_integer_β
.Lx341_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_call_α
n53_binop_β:            add              rsp, 16;                             jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig343z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig343z:              .quad            1
                        .quad            .Lx343_2
                        .quad            .Lx343_2
                        .quad            16
.Lx343_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx343_29
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
.Lx343_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx343_240
                        add              rsp, 16;                             jmp   n53_binop_β
.Lx343_240:                                                                   jmp   n55_binop_α
n54_call_β:                                                                   jmp   n53_binop_β
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx344_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx344_7
.Lx344_2:               and              edx, 1;                              jz    .Lx344_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              eax, 5;                              je    .Lx344_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx344_4
.Lx344_3:               movq             xmm0, rsi
.Lx344_4:               cmp              ecx, 5;                              je    .Lx344_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx344_6
.Lx344_5:               movq             xmm1, rdi
.Lx344_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx344_7:                                                                     jmp   n56_assign_α
.Lx344_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx344_240
                        add              rsp, 32;                             jmp   n53_binop_β
.Lx344_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# RSUM_END  <stmt 10, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:                                                        jmp   n59_statement_end_α
n58_statement_begin_β:                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:                                                          jmp   n60_statement_begin_α
#=======================================================================================================================
#         ZPAT = BREAK(',') . ZWORD ','
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:                                                        jmp   n61_lit_string_α
n60_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_call_α
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd356:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd356]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx355_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Lx355_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_assign_α
n62_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZPAT
                        mov              qword ptr [r9 + 120], rdx;           jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 32;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_define_α
n65_statement_begin_β:                                                        jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_define_α:           mov              rdi, qword ptr [rip + .Lx363_0]
                        mov              rsi, qword ptr [rip + .Lx363_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n68_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx363_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_statement_end_α
n66_define_β:                                                                 jmp   n65_statement_begin_β
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "ZBODY"
.Lx363_1:               .quad            .Lx363_1_s
.Lx363_1_s:             .string          "ZKN"
                                                                              jmp   .Lx364_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx364_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx364_41
.Lx364_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx364_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
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
                        cmp              rdx, 0;                              jbe   .Lx364_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx364_110
.Lx364_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx364_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx364_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx364_180
.Lx364_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx364_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx364_245:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:                                                          jmp   n166_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:                                                        jmp   n69_lit_integer_α
n68_statement_begin_β:                                                        jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_assign_α
.Lx369_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZI
                        mov              qword ptr [r9 + 152], rdx;           jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    add              rsp, 16;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:                                                        jmp   n73_lit_integer_α
n72_statement_begin_β:                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_assign_α
.Lx375_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZS
                        mov              qword ptr [r9 + 168], rdx;           jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    add              rsp, 16;                             jmp   n76_statement_begin_α
#=======================================================================================================================
# ZBL     ZTAB = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:                                                        jmp   n77_lit_integer_α
n76_statement_begin_β:                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Lx381_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd383:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd383]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx382_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx382_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
n78_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZTAB
                        mov              qword ptr [r9 + 184], rdx;           jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    add              rsp, 32;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         ZDATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:                                                        jmp   n82_lit_string_α
n81_statement_begin_β:                                                        jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_assign_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZDATA
                        mov              qword ptr [r9 + 200], rdx;           jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    add              rsp, 16;                             jmp   n85_statement_begin_α
#=======================================================================================================================
#         ZIDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:                                                        jmp   n86_lit_integer_α
n85_statement_begin_β:                                                        jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_assign_α
.Lx395_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZIDX
                        mov              qword ptr [r9 + 216], rdx;           jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 16;                             jmp   n89_statement_begin_α
#=======================================================================================================================
# ZPARSE  ZDATA ? ZPAT =                                  :F(ZCALC)
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:                                                        jmp   n90_var_α
n89_statement_begin_β:                                                        jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZDATA
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZPAT
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_assign_α
n91_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_match_begin_α
n92_assign_β:                                                                 jmp   n91_var_β
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n93_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx405_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx405_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n94_match_defer_α
n93_match_begin_β:
.Lx405_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx405_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx405_1
                                                                              jmp   .Lx405_0
.Lx405_1:
n93_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
n94_match_defer_α:      lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx406_14
                        mov              rax, qword ptr [rdx + 0]
.Lx406_14:              test             rax, rax;                            jz    .Lx406_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx406_5]
                        push             rcx
                        lea              rcx, [rip + .Lx406_4]
                        push             rcx;                                 jmp   rax
.Lx406_4:               lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 640], eax;          jmp   n95_match_end_α
.Lx406_5:                                                                     jmp   n93_match_begin_β
.Lx406_0:               push             r14
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
                        lea              rax, [rip + .Lx406_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_end_α
.Lx406_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n93_match_begin_β
n94_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx406_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx406_12
                                                                              jmp   rax
.Lx406_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n95_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx408_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n93_match_begin_af
.Lx408_13:              add              rsp, 16
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
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_match_replace_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_match_replace_α:    mov              rdi, qword ptr [rip + .Lx411_0]
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
                        add              rsp, 16;                             jmp   .Lx411_1
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "ZDATA"
.Lx411_1:                                                                     jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    add              rsp, 32;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         ZIDX = ZIDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:                                                        jmp   n100_var_α
n99_statement_begin_β:                                                        jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZIDX
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_binop_α
n101_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx417_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx418_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx418_7
.Lx418_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx418_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx418_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx418_4
.Lx418_3:               movq             xmm0, rsi
.Lx418_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx418_7:                                                                     jmp   n103_assign_α
.Lx418_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx418_240
                        add              rsp, 16;                             jmp   n101_lit_integer_β
.Lx418_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZIDX
                        mov              qword ptr [r9 + 216], rdx;           jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   add              rsp, 48;                             jmp   n105_statement_begin_α
#=======================================================================================================================
#         ZTAB[ZIDX] = ZWORD + 0                          :(ZPARSE)
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:                                                       jmp   n106_var_α
n105_statement_begin_β:                                                       jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZTAB
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZIDX
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_subscript_α
n107_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n108_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx426_240
                        add              rsp, 16;                             jmp   n107_var_β
.Lx426_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_var_α
n108_subscript_β:       add              rsp, 16;                             jmp   n107_var_β
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZWORD
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_lit_integer_α
n109_var_β:             add              rsp, 16;                             jmp   n108_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_binop_α
n110_lit_integer_β:     add              rsp, 16;                             jmp   n109_var_β
.Lx428_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx429_2
                        add              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx429_7
.Lx429_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx429_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              eax, 5;                              je    .Lx429_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx429_4
.Lx429_3:               movq             xmm0, rsi
.Lx429_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx429_7:                                                                     jmp   n112_assign_var_α
.Lx429_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx429_240
                        add              rsp, 16;                             jmp   n110_lit_integer_β
.Lx429_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_assign_var_α
n111_binop_β:           add              rsp, 16;                             jmp   n110_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx430_240
                        add              rsp, 16;                             jmp   n111_binop_β
.Lx430_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   add              rsp, 112;                            jmp   n89_statement_begin_α
#=======================================================================================================================
# ZCALC   ZTOT = 0
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:                                                       jmp   n115_lit_integer_α
n114_statement_begin_β:                                                       jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_assign_α
.Lx435_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZTOT
                        mov              qword ptr [r9 + 232], rdx;           jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
#         ZJ = 0
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α:                                                       jmp   n119_lit_integer_α
n118_statement_begin_β:                                                       jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_assign_α
.Lx441_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZJ
                        mov              qword ptr [r9 + 248], rdx;           jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   add              rsp, 16;                             jmp   n122_statement_begin_α
#=======================================================================================================================
# ZADD    ZJ = LT(ZJ, ZIDX) ZJ + 1                        :F(ZNEXT)
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α:                                                       jmp   n123_var_α
n122_statement_begin_β:                                                       jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # ZJ
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZIDX
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_coerce_numeric_α
n124_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx450_1
                        cmp              eax, 3;                              jne   .Lx450_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx450_0
.Lx450_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_coerce_numeric_α
.Lx450_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_coerce_numeric_α
n125_coerce_numeric_β:  add              rsp, 16;                             jmp   n124_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx452_1
                        cmp              eax, 3;                              jne   .Lx452_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx452_0
.Lx452_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_cmp_test_α
.Lx452_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_cmp_test_α
n126_coerce_numeric_β:  add              rsp, 16;                             jmp   n125_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n127_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx454_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx454_239
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
.Lx454_239:                                                                   jmp   n128_var_α
.Lx454_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx454_240
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
.Lx454_240:                                                                   jmp   n128_var_α
n127_cmp_test_β:        add              rsp, 16;                             jmp   n126_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # ZJ
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_lit_integer_α
n128_var_β:             add              rsp, 16;                             jmp   n127_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_binop_α
n129_lit_integer_β:     add              rsp, 16;                             jmp   n128_var_β
.Lx456_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx457_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx457_7
.Lx457_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx457_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx457_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx457_4
.Lx457_3:               movq             xmm0, rsi
.Lx457_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx457_7:                                                                     jmp   n131_assign_α
.Lx457_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx457_240
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lx457_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZJ
                        mov              qword ptr [r9 + 248], rdx;           jmp   n132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   add              rsp, 128;                            jmp   n133_statement_begin_α
#=======================================================================================================================
#         ZTOT = ZTOT + ZTAB[ZJ]                          :(ZADD)
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α:                                                       jmp   n134_var_α
n133_statement_begin_β:                                                       jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZTOT
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZTAB
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_var_α
n135_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # ZJ
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_subscript_α
n136_var_β:             add              rsp, 16;                             jmp   n135_var_β
#-----------------------------------------------------------------------------------------------------------------------
n137_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx466_240
                        add              rsp, 16;                             jmp   n136_var_β
.Lx466_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_deref_α
n137_subscript_β:       add              rsp, 16;                             jmp   n136_var_β
#-----------------------------------------------------------------------------------------------------------------------
n138_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx467_240
                        add              rsp, 16;                             jmp   n137_subscript_β
.Lx467_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_binop_α
n138_deref_β:           add              rsp, 16;                             jmp   n137_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx468_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx468_7
.Lx468_2:               and              edx, 1;                              jz    .Lx468_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              eax, 5;                              je    .Lx468_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx468_4
.Lx468_3:               movq             xmm0, rsi
.Lx468_4:               cmp              ecx, 5;                              je    .Lx468_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx468_6
.Lx468_5:               movq             xmm1, rdi
.Lx468_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx468_7:                                                                     jmp   n140_assign_α
.Lx468_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx468_240
                        add              rsp, 16;                             jmp   n138_deref_β
.Lx468_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZTOT
                        mov              qword ptr [r9 + 232], rdx;           jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 96;                             jmp   n122_statement_begin_α
#=======================================================================================================================
# ZNEXT   ZS = ZS + ZTOT + RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                                       jmp   n143_var_α
n142_statement_begin_β:                                                       jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZS
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZTOT
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_binop_α
n144_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx476_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx476_7
.Lx476_2:               and              edx, 1;                              jz    .Lx476_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx476_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx476_4
.Lx476_3:               movq             xmm0, rsi
.Lx476_4:               cmp              ecx, 5;                              je    .Lx476_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx476_6
.Lx476_5:               movq             xmm1, rdi
.Lx476_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx476_7:                                                                     jmp   n146_lit_integer_α
.Lx476_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx476_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lx476_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_lit_integer_α
n145_binop_β:           add              rsp, 16;                             jmp   n144_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_call_α
n146_lit_integer_β:     add              rsp, 16;                             jmp   n145_binop_β
.Lx477_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig479z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lsig479z:              .quad            1
                        .quad            .Lx479_2
                        .quad            .Lx479_2
                        .quad            16
.Lx479_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx479_29
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
.Lx479_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx479_240
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lx479_240:                                                                   jmp   n148_binop_α
n147_call_β:                                                                  jmp   n146_lit_integer_β
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx480_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx480_7
.Lx480_2:               and              edx, 1;                              jz    .Lx480_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              eax, 5;                              je    .Lx480_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx480_4
.Lx480_3:               movq             xmm0, rsi
.Lx480_4:               cmp              ecx, 5;                              je    .Lx480_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx480_6
.Lx480_5:               movq             xmm1, rdi
.Lx480_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx480_7:                                                                     jmp   n149_assign_α
.Lx480_0:               mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx480_240
                        add              rsp, 32;                             jmp   n146_lit_integer_β
.Lx480_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZS
                        mov              qword ptr [r9 + 168], rdx;           jmp   n150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   add              rsp, 96;                             jmp   n151_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α:                                                       jmp   n152_var_α
n151_statement_begin_β:                                                       jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZI
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_coerce_numeric_α
n153_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx489_1
                        cmp              eax, 3;                              jne   .Lx489_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx489_0
.Lx489_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_coerce_numeric_α
.Lx489_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_coerce_numeric_α
n154_coerce_numeric_β:  add              rsp, 16;                             jmp   n153_var_β
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx491_1
                        cmp              eax, 3;                              jne   .Lx491_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx491_0
.Lx491_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_cmp_test_α
.Lx491_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_cmp_test_α
n155_coerce_numeric_β:  add              rsp, 16;                             jmp   n154_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n156_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx493_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx493_239
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
.Lx493_239:                                                                   jmp   n157_var_α
.Lx493_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx493_240
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
.Lx493_240:                                                                   jmp   n157_var_α
n156_cmp_test_β:        add              rsp, 16;                             jmp   n155_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZI
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_lit_integer_α
n157_var_β:             add              rsp, 16;                             jmp   n156_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_binop_α
n158_lit_integer_β:     add              rsp, 16;                             jmp   n157_var_β
.Lx495_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx496_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx496_7
.Lx496_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx496_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx496_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx496_4
.Lx496_3:               movq             xmm0, rsi
.Lx496_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx496_7:                                                                     jmp   n160_assign_α
.Lx496_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx496_240
                        add              rsp, 16;                             jmp   n158_lit_integer_β
.Lx496_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZI
                        mov              qword ptr [r9 + 152], rdx;           jmp   n161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 128;                            jmp   n76_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:                                                       jmp   n163_var_α
n162_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZS
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 28, line 34: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                                       jmp   n167_statement_end_α
n166_statement_begin_β:                                                       jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:                                                         jmp   n168_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:                                                       jmp   n169_lit_string_α
n168_statement_begin_β:                                                       jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_var_α
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_call_α
n170_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n168_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig515z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig515z:              .quad            1
                        .quad            .Lx515_2
                        .quad            .Lx515_2
                        .quad            16
.Lx515_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx515_29
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
.Lx515_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx515_240
                        add              rsp, 16;                             jmp   n170_var_β
.Lx515_240:                                                                   jmp   n172_binop_α
n171_call_β:                                                                  jmp   n170_var_β
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:           sub              rsp, 16
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
n173_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_statement_end_α
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   add              rsp, 64;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:                                                       jmp   n176_var_α
n175_statement_begin_β:                                                       jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_binop_α
n177_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
.Lx523_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx524_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx524_7
.Lx524_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx524_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx524_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx524_4
.Lx524_3:               movq             xmm0, rsi
.Lx524_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx524_7:                                                                     jmp   n179_assign_α
.Lx524_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx524_240
                        add              rsp, 16;                             jmp   n177_lit_integer_β
.Lx524_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n179_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n180_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   add              rsp, 48;                             jmp   n181_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 61: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α:                                                       jmp   n182_var_α
n181_statement_begin_β:                                                       jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_binop_α
n183_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n181_statement_begin_β
.Lx531_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx532_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx532_7
.Lx532_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx532_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx532_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx532_4
.Lx532_3:               movq             xmm0, rsi
.Lx532_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx532_7:                                                                     jmp   n185_assign_α
.Lx532_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx532_240
                        add              rsp, 16;                             jmp   n183_lit_integer_β
.Lx532_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   add              rsp, 48;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:                                                       jmp   n188_var_α
n187_statement_begin_β:                                                       jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # ZK
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_call_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd540:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd540]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx539_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Lx539_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_statement_end_α
n189_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   add              rsp, 32;                             jmp   n220_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 63: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α:                                                       jmp   n192_lit_integer_α
n191_statement_begin_β:                                                       jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_assign_α
.Lx545_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZK
                        mov              qword ptr [r9 + 264], rdx;           jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 16;                             jmp   n195_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 34, line 64: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:                                                       jmp   n196_call_α
n195_statement_begin_β:                                                       jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd552:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd552]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx551_240
                        add              rsp, 16;                             jmp   n195_statement_begin_β
.Lx551_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_assign_α
n196_call_β:            add              rsp, 16;                             jmp   n195_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # ZT
                        mov              qword ptr [r9 + 280], rdx;           jmp   n198_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   add              rsp, 16;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α:                                                       jmp   n200_var_α
n199_statement_begin_β:                                                       jmp   n203_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # ZK
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_call_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig560z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig560z:              .quad            1
                        .quad            .Lx560_2
                        .quad            .Lx560_2
                        .quad            16
.Lx560_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx560_29
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
.Lx560_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx560_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
.Lx560_240:                                                                   jmp   n202_statement_end_α
n201_call_β:                                                                  jmp   n199_statement_begin_β
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   add              rsp, 32;                             jmp   n203_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_begin_α:                                                       jmp   n204_call_α
n203_statement_begin_β:                                                       jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd566:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd566]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx565_240
                        add              rsp, 16;                             jmp   n203_statement_begin_β
.Lx565_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_var_α
n204_call_β:            add              rsp, 16;                             jmp   n203_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # ZT
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_binop_α
n205_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n203_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx568_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx568_7
.Lx568_2:               and              edx, 1;                              jz    .Lx568_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx568_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx568_4
.Lx568_3:               movq             xmm0, rsi
.Lx568_4:               cmp              ecx, 5;                              je    .Lx568_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx568_6
.Lx568_5:               movq             xmm1, rdi
.Lx568_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx568_7:                                                                     jmp   n207_assign_α
.Lx568_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx568_240
                        add              rsp, 16;                             jmp   n205_var_β
.Lx568_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n207_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # ZE
                        mov              qword ptr [r9 + 296], rdx;           jmp   n208_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   add              rsp, 48;                             jmp   n209_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α:                                                       jmp   n210_var_α
n209_statement_begin_β:                                                       jmp   n220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # ZE
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_var_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_coerce_numeric_α
n211_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n209_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n212_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx577_1
                        cmp              eax, 3;                              jne   .Lx577_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx577_0
.Lx577_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_coerce_numeric_α
.Lx577_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_coerce_numeric_α
n212_coerce_numeric_β:  add              rsp, 16;                             jmp   n211_var_β
#-----------------------------------------------------------------------------------------------------------------------
n213_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx579_1
                        cmp              eax, 3;                              jne   .Lx579_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx579_0
.Lx579_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_cmp_test_α
.Lx579_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n214_cmp_test_α
n213_coerce_numeric_β:  add              rsp, 16;                             jmp   n212_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n214_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx581_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx581_239
                        add              rsp, 16;                             jmp   n213_coerce_numeric_β
.Lx581_239:                                                                   jmp   n215_var_α
.Lx581_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx581_240
                        add              rsp, 16;                             jmp   n213_coerce_numeric_β
.Lx581_240:                                                                   jmp   n215_var_α
n214_cmp_test_β:        add              rsp, 16;                             jmp   n213_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # ZK
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_lit_integer_α
n215_var_β:             add              rsp, 16;                             jmp   n214_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_binop_α
n216_lit_integer_β:     add              rsp, 16;                             jmp   n215_var_β
.Lx583_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx584_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx584_7
.Lx584_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx584_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx584_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx584_4
.Lx584_3:               movq             xmm0, rsi
.Lx584_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx584_7:                                                                     jmp   n218_assign_α
.Lx584_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx584_240
                        add              rsp, 16;                             jmp   n216_lit_integer_β
.Lx584_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n218_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZK
                        mov              qword ptr [r9 + 264], rdx;           jmp   n219_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   add              rsp, 128;                            jmp   n195_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 38, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_begin_α:                                                       jmp   n221_call_α
n220_statement_begin_β:                                                       jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd591:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd591]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx590_240
                        add              rsp, 16;                             jmp   n220_statement_begin_β
.Lx590_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_assign_α
n221_call_β:            add              rsp, 16;                             jmp   n220_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # ZT
                        mov              qword ptr [r9 + 280], rdx;           jmp   n223_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   add              rsp, 16;                             jmp   n224_statement_begin_α
#=======================================================================================================================
#         <stmt 39, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α:                                                       jmp   n225_var_α
n224_statement_begin_β:                                                       jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # ZT
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_binop_α
n226_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx599_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx599_7
.Lx599_2:               and              edx, 1;                              jz    .Lx599_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx599_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx599_4
.Lx599_3:               movq             xmm0, rsi
.Lx599_4:               cmp              ecx, 5;                              je    .Lx599_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx599_6
.Lx599_5:               movq             xmm1, rdi
.Lx599_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx599_7:                                                                     jmp   n228_assign_α
.Lx599_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx599_240
                        add              rsp, 16;                             jmp   n226_var_β
.Lx599_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # ZD
                        mov              qword ptr [r9 + 312], rdx;           jmp   n229_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   add              rsp, 48;                             jmp   n230_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α:                                                       jmp   n231_lit_integer_α
n230_statement_begin_β:                                                       jmp   n234_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_assign_α
.Lx605_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # ZN
                        mov              qword ptr [r9 + 328], rdx;           jmp   n233_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   add              rsp, 16;                             jmp   n234_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 41, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_begin_α:                                                       jmp   n235_var_α
n234_statement_begin_β:                                                       jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # ZK
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_call_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig613z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig613z:              .quad            1
                        .quad            .Lx613_2
                        .quad            .Lx613_2
                        .quad            16
.Lx613_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx613_29
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
.Lx613_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx613_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n234_statement_begin_β
.Lx613_240:                                                                   jmp   n237_statement_end_α
n236_call_β:                                                                  jmp   n234_statement_begin_β
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   add              rsp, 32;                             jmp   n238_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α:                                                       jmp   n239_var_α
n238_statement_begin_β:                                                       jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # ZN
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # ZK
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_binop_α
n240_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx620_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx620_7
.Lx620_2:               and              edx, 1;                              jz    .Lx620_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx620_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx620_4
.Lx620_3:               movq             xmm0, rsi
.Lx620_4:               cmp              ecx, 5;                              je    .Lx620_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx620_6
.Lx620_5:               movq             xmm1, rdi
.Lx620_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx620_7:                                                                     jmp   n242_assign_α
.Lx620_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx620_240
                        add              rsp, 16;                             jmp   n240_var_β
.Lx620_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n242_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # ZN
                        mov              qword ptr [r9 + 328], rdx;           jmp   n243_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:   add              rsp, 48;                             jmp   n244_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:                                                       jmp   n245_call_α
n244_statement_begin_β:                                                       jmp   n251_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd627:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd627]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx626_240
                        add              rsp, 16;                             jmp   n244_statement_begin_β
.Lx626_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_var_α
n245_call_β:            add              rsp, 16;                             jmp   n244_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # ZD
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_coerce_numeric_α
n246_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n244_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n247_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx630_1
                        cmp              eax, 3;                              jne   .Lx630_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx630_0
.Lx630_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_coerce_numeric_α
.Lx630_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_coerce_numeric_α
n247_coerce_numeric_β:  add              rsp, 16;                             jmp   n246_var_β
#-----------------------------------------------------------------------------------------------------------------------
n248_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx632_1
                        cmp              eax, 3;                              jne   .Lx632_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx632_0
.Lx632_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_cmp_test_α
.Lx632_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_cmp_test_α
n248_coerce_numeric_β:  add              rsp, 16;                             jmp   n247_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n249_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx634_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx634_239
                        add              rsp, 16;                             jmp   n248_coerce_numeric_β
.Lx634_239:                                                                   jmp   n250_statement_end_α
.Lx634_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx634_240
                        add              rsp, 16;                             jmp   n248_coerce_numeric_β
.Lx634_240:                                                                   jmp   n250_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_end_α:   add              rsp, 80;                             jmp   n234_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_begin_α:                                                       jmp   n252_call_α
n251_statement_begin_β:                                                       jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd640:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd640]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx639_240
                        add              rsp, 16;                             jmp   n251_statement_begin_β
.Lx639_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_var_α
n252_call_β:            add              rsp, 16;                             jmp   n251_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # ZT
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_binop_α
n253_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n251_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx642_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx642_7
.Lx642_2:               and              edx, 1;                              jz    .Lx642_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx642_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx642_4
.Lx642_3:               movq             xmm0, rsi
.Lx642_4:               cmp              ecx, 5;                              je    .Lx642_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx642_6
.Lx642_5:               movq             xmm1, rdi
.Lx642_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx642_7:                                                                     jmp   n255_assign_α
.Lx642_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx642_240
                        add              rsp, 16;                             jmp   n253_var_β
.Lx642_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # ZE
                        mov              qword ptr [r9 + 296], rdx;           jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   add              rsp, 48;                             jmp   n257_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:                                                       jmp   n258_lit_string_α
n257_statement_begin_β:                                                       jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_var_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # ZN
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_binop_α
n259_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n261_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n262_statement_end_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   add              rsp, 48;                             jmp   n263_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:                                                       jmp   n264_lit_string_α
n263_statement_begin_β:                                                       jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_var_α
.Lx656_0:               .quad            .Lx656_0_s
.Lx656_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # ZE
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_binop_α
n265_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n263_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n268_statement_end_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   add              rsp, 48;                             jmp   n269_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:                                                       jmp   n270_lit_string_α
n269_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_var_α
.Lx664_0:               .quad            .Lx664_0_s
.Lx664_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # ZE
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_lit_integer_α
n271_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n269_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n273_binop_α
n272_lit_integer_β:     add              rsp, 16;                             jmp   n271_var_β
.Lx666_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n273_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx667_240
                        add              rsp, 16;                             jmp   n272_lit_integer_β
.Lx667_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n274_binop_α
n273_binop_β:           add              rsp, 16;                             jmp   n272_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n274_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n275_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n276_statement_end_α
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
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
