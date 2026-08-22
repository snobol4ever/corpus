                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 14
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 14
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "FIB"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZBODY"
.Lgvan3:                .string          "ZKN"
.Lgvan4:                .string          "ZCHK"
.Lgvan5:                .string          "ZBUD"
.Lgvan6:                .string          "ZFLR"
.Lgvan7:                .string          "ZI"
.Lgvan8:                .string          "R"
.Lgvan9:                .string          "ZK"
.Lgvan10:               .string          "ZT"
.Lgvan11:               .string          "ZE"
.Lgvan12:               .string          "ZD"
.Lgvan13:               .string          "ZN"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_integer_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx192_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx193_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx193_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx193_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx193_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 32;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                                         jmp   n5_lit_integer_α
n4_statement_begin_β:                                                         jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx198_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx199_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx199_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx199_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     add              rsp, 32;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:                                                         jmp   n9_lit_integer_α
n8_statement_begin_β:                                                         jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx204_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_keyword_assign_snobol4_α
n10_unop_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx206_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx206_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx206_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 3
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx211_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZCHK
                        mov              qword ptr [r9 + 72], rdx;            jmp   n16_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 16;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:                                                        jmp   n18_lit_integer_α
n17_statement_begin_β:                                                        jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx217_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    add              rsp, 16;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:                                                        jmp   n22_lit_integer_α
n21_statement_begin_β:                                                        jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx223_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('FIB(N)')                                :(FIBE)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_define_α
n25_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx230_0]
                        mov              rsi, qword ptr [rip + .Lx230_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx230_0]
                        lea              rsi, [rip + FIB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          "FIB"
.Lx230_1:               .quad            .Lx230_1_s
.Lx230_1_s:             .string          "N"
                                                                              jmp   .Lx231_245
#-----------------------------------------------------------------------------------------------------------------------
FIB_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # FIB
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
                        cmp              rdx, 0;                              jbe   .Lx231_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx231_41
.Lx231_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx231_41:              lea              r10, [rip + FIB_γ]
                        lea              r11, [rip + FIB_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
FIB_γ:                  mov              rdi, qword ptr [r9 + 0]              # FIB
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx231_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx231_110
.Lx231_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx231_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
FIB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx231_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx231_180
.Lx231_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx231_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx231_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n49_statement_begin_α
#=======================================================================================================================
# FIB    FIB = LT(N, 2) N                                :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_var_α
n28_statement_begin_β:                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_coerce_numeric_α
n30_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx237_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx239_1
                        cmp              eax, 3;                              jne   .Lx239_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx239_0
.Lx239_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_coerce_numeric_α
.Lx239_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_coerce_numeric_α
n31_coerce_numeric_β:   add              rsp, 16;                             jmp   n30_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx241_1
                        cmp              eax, 3;                              jne   .Lx241_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx241_0
.Lx241_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_cmp_test_α
.Lx241_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_cmp_test_α
n32_coerce_numeric_β:   add              rsp, 16;                             jmp   n31_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n33_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx243_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx243_239
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lx243_239:                                                                   jmp   n34_var_α
.Lx243_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx243_240
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lx243_240:                                                                   jmp   n34_var_α
n33_cmp_test_β:         add              rsp, 16;                             jmp   n32_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              qword ptr [r9 + 8], rdx;             jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
#         FIB = FIB(N - 1) + FIB(N - 2)                   :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:                                                        jmp   n38_var_α
n37_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_binop_α
n39_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx251_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx252_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx252_7
.Lx252_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx252_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx252_4
.Lx252_3:               movq             xmm0, rsi
.Lx252_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx252_7:                                                                     jmp   n41_call_α
.Lx252_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx252_240
                        add              rsp, 16;                             jmp   n39_lit_integer_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_call_α
n40_binop_β:            add              rsp, 16;                             jmp   n39_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig254z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lsig254z:              .quad            1
                        .quad            .Lx254_2
                        .quad            .Lx254_2
                        .quad            16
.Lx254_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx254_29
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
.Lx254_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx254_240
                        add              rsp, 16;                             jmp   n40_binop_β
.Lx254_240:                                                                   jmp   n42_var_α
n41_call_β:                                                                   jmp   n40_binop_β
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "FIB"
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_lit_integer_α
n42_var_β:              add              rsp, 32;                             jmp   n40_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_binop_α
n43_lit_integer_β:      add              rsp, 16;                             jmp   n42_var_β
.Lx256_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx257_2
                        sub              rax, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx257_7
.Lx257_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx257_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx257_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx257_4
.Lx257_3:               movq             xmm0, rsi
.Lx257_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx257_7:                                                                     jmp   n45_call_α
.Lx257_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx257_240
                        add              rsp, 16;                             jmp   n43_lit_integer_β
.Lx257_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_call_α
n44_binop_β:            add              rsp, 16;                             jmp   n43_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig259z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lsig259z:              .quad            1
                        .quad            .Lx259_2
                        .quad            .Lx259_2
                        .quad            16
.Lx259_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx259_29
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
.Lx259_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx259_240
                        add              rsp, 16;                             jmp   n44_binop_β
.Lx259_240:                                                                   jmp   n46_binop_α
n45_call_β:                                                                   jmp   n44_binop_β
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "FIB"
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx260_2
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx260_7
.Lx260_2:               and              edx, 1;                              jz    .Lx260_0
                        mov              rsi, qword ptr [rsp + 88]            # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx260_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx260_4
.Lx260_3:               movq             xmm0, rsi
.Lx260_4:               cmp              ecx, 5;                              je    .Lx260_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx260_6
.Lx260_5:               movq             xmm1, rdi
.Lx260_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx260_7:                                                                     jmp   n47_assign_α
.Lx260_0:               mov              rdi, qword ptr [rsp + 80]            # call
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx260_240
                        add              rsp, 32;                             jmp   n44_binop_β
.Lx260_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              qword ptr [r9 + 8], rdx;             jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 144;                            jmp   RETURN
#=======================================================================================================================
# FIBE  <stmt 10, line 13: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_statement_end_α
n49_statement_begin_β:                                                        jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:                                                          jmp   n51_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:                                                        jmp   n52_define_α
n51_statement_begin_β:                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_define_α:           mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              rsi, qword ptr [rip + .Lx271_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n54_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_statement_end_α
n52_define_β:                                                                 jmp   n51_statement_begin_β
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "ZBODY"
.Lx271_1:               .quad            .Lx271_1_s
.Lx271_1_s:             .string          "ZKN"
                                                                              jmp   .Lx272_245
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
                        cmp              rdx, 0;                              jbe   .Lx272_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx272_41
.Lx272_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx272_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n54_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 32]             # ZBODY
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx272_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx272_110
.Lx272_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx272_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx272_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx272_180
.Lx272_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx272_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx272_245:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:                                                          jmp   n78_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:                                                        jmp   n55_lit_integer_α
n54_statement_begin_β:                                                        jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
.Lx277_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    add              rsp, 16;                             jmp   n58_statement_begin_α
#=======================================================================================================================
# ZBL     R = FIB(16)
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:                                                        jmp   n59_lit_integer_α
n58_statement_begin_β:                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_call_α
.Lx283_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig285z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lsig285z:              .quad            1
                        .quad            .Lx285_2
                        .quad            .Lx285_2
                        .quad            16
.Lx285_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx285_29
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
.Lx285_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx285_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n58_statement_begin_β
.Lx285_240:                                                                   jmp   n61_assign_α
n60_call_β:                                                                   jmp   n58_statement_begin_β
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "FIB"
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # R
                        mov              qword ptr [r9 + 136], rdx;           jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    add              rsp, 32;                             jmp   n63_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:                                                        jmp   n64_var_α
n63_statement_begin_β:                                                        jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_coerce_numeric_α
n65_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n63_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n66_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx294_1
                        cmp              eax, 3;                              jne   .Lx294_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx294_0
.Lx294_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_coerce_numeric_α
.Lx294_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_coerce_numeric_α
n66_coerce_numeric_β:   add              rsp, 16;                             jmp   n65_var_β
#-----------------------------------------------------------------------------------------------------------------------
n67_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx296_1
                        cmp              eax, 3;                              jne   .Lx296_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx296_0
.Lx296_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_cmp_test_α
.Lx296_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_cmp_test_α
n67_coerce_numeric_β:   add              rsp, 16;                             jmp   n66_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n68_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx298_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx298_239
                        add              rsp, 16;                             jmp   n67_coerce_numeric_β
.Lx298_239:                                                                   jmp   n69_var_α
.Lx298_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx298_240
                        add              rsp, 16;                             jmp   n67_coerce_numeric_β
.Lx298_240:                                                                   jmp   n69_var_α
n68_cmp_test_β:         add              rsp, 16;                             jmp   n67_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_integer_α
n69_var_β:              add              rsp, 16;                             jmp   n68_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_binop_α
n70_lit_integer_β:      add              rsp, 16;                             jmp   n69_var_β
.Lx300_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx301_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx301_7
.Lx301_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx301_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx301_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx301_4
.Lx301_3:               movq             xmm0, rsi
.Lx301_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx301_7:                                                                     jmp   n72_assign_α
.Lx301_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx301_240
                        add              rsp, 16;                             jmp   n70_lit_integer_β
.Lx301_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    add              rsp, 128;                            jmp   n58_statement_begin_α
#=======================================================================================================================
#         ZBODY = R                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:                                                        jmp   n75_var_α
n74_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # R
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:                                                        jmp   n79_statement_end_α
n78_statement_begin_β:                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:                                                          jmp   n80_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:                                                        jmp   n81_lit_string_α
n80_statement_begin_β:                                                        jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_var_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_call_α
n82_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig320z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig320z:              .quad            1
                        .quad            .Lx320_2
                        .quad            .Lx320_2
                        .quad            16
.Lx320_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx320_29
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
.Lx320_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx320_240
                        add              rsp, 16;                             jmp   n82_var_β
.Lx320_240:                                                                   jmp   n84_binop_α
n83_call_β:                                                                   jmp   n82_var_β
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_statement_end_α
.Lx322_0:               .quad            .Lx322_0_s
.Lx322_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    add              rsp, 64;                             jmp   n87_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:                                                        jmp   n88_var_α
n87_statement_begin_β:                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_binop_α
n89_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx328_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx329_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx329_7
.Lx329_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx329_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx329_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx329_4
.Lx329_3:               movq             xmm0, rsi
.Lx329_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx329_7:                                                                     jmp   n91_assign_α
.Lx329_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx329_240
                        add              rsp, 16;                             jmp   n89_lit_integer_β
.Lx329_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    add              rsp, 48;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:                                                        jmp   n94_var_α
n93_statement_begin_β:                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
n95_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
.Lx336_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx337_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx337_7
.Lx337_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx337_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx337_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx337_4
.Lx337_3:               movq             xmm0, rsi
.Lx337_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx337_7:                                                                     jmp   n97_assign_α
.Lx337_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx337_240
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lx337_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    add              rsp, 48;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:                                                        jmp   n100_var_α
n99_statement_begin_β:                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_call_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd345:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd345]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx344_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx344_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_statement_end_α
n101_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 32;                             jmp   n132_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                                       jmp   n104_lit_integer_α
n103_statement_begin_β:                                                       jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_assign_α
.Lx350_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   add              rsp, 16;                             jmp   n107_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 22, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:                                                       jmp   n108_call_α
n107_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd357:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd357]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx356_240
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Lx356_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_assign_α
n108_call_β:            add              rsp, 16;                             jmp   n107_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   add              rsp, 16;                             jmp   n111_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_var_α
n111_statement_begin_β:                                                       jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_call_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig365z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig365z:              .quad            1
                        .quad            .Lx365_2
                        .quad            .Lx365_2
                        .quad            16
.Lx365_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx365_29
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
.Lx365_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx365_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
.Lx365_240:                                                                   jmp   n114_statement_end_α
n113_call_β:                                                                  jmp   n111_statement_begin_β
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   add              rsp, 32;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α:                                                       jmp   n116_call_α
n115_statement_begin_β:                                                       jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd371:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd371]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx370_240
                        add              rsp, 16;                             jmp   n115_statement_begin_β
.Lx370_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_var_α
n116_call_β:            add              rsp, 16;                             jmp   n115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_binop_α
n117_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx373_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx373_7
.Lx373_2:               and              edx, 1;                              jz    .Lx373_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx373_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx373_4
.Lx373_3:               movq             xmm0, rsi
.Lx373_4:               cmp              ecx, 5;                              je    .Lx373_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx373_6
.Lx373_5:               movq             xmm1, rdi
.Lx373_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx373_7:                                                                     jmp   n119_assign_α
.Lx373_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx373_240
                        add              rsp, 16;                             jmp   n117_var_β
.Lx373_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   add              rsp, 48;                             jmp   n121_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:                                                       jmp   n122_var_α
n121_statement_begin_β:                                                       jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_coerce_numeric_α
n123_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx382_1
                        cmp              eax, 3;                              jne   .Lx382_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx382_0
.Lx382_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_coerce_numeric_α
.Lx382_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_coerce_numeric_α
n124_coerce_numeric_β:  add              rsp, 16;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx384_1
                        cmp              eax, 3;                              jne   .Lx384_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx384_0
.Lx384_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_cmp_test_α
.Lx384_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_cmp_test_α
n125_coerce_numeric_β:  add              rsp, 16;                             jmp   n124_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n126_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx386_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx386_239
                        add              rsp, 16;                             jmp   n125_coerce_numeric_β
.Lx386_239:                                                                   jmp   n127_var_α
.Lx386_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx386_240
                        add              rsp, 16;                             jmp   n125_coerce_numeric_β
.Lx386_240:                                                                   jmp   n127_var_α
n126_cmp_test_β:        add              rsp, 16;                             jmp   n125_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_lit_integer_α
n127_var_β:             add              rsp, 16;                             jmp   n126_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_binop_α
n128_lit_integer_β:     add              rsp, 16;                             jmp   n127_var_β
.Lx388_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx389_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx389_7
.Lx389_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx389_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx389_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx389_4
.Lx389_3:               movq             xmm0, rsi
.Lx389_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx389_7:                                                                     jmp   n130_assign_α
.Lx389_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx389_240
                        add              rsp, 16;                             jmp   n128_lit_integer_β
.Lx389_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n131_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   add              rsp, 128;                            jmp   n107_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 26, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α:                                                       jmp   n133_call_α
n132_statement_begin_β:                                                       jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd396:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd396]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx395_240
                        add              rsp, 16;                             jmp   n132_statement_begin_β
.Lx395_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_assign_α
n133_call_β:            add              rsp, 16;                             jmp   n132_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   add              rsp, 16;                             jmp   n136_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α:                                                       jmp   n137_var_α
n136_statement_begin_β:                                                       jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_binop_α
n138_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx404_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx404_7
.Lx404_2:               and              edx, 1;                              jz    .Lx404_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx404_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx404_4
.Lx404_3:               movq             xmm0, rsi
.Lx404_4:               cmp              ecx, 5;                              je    .Lx404_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx404_6
.Lx404_5:               movq             xmm1, rdi
.Lx404_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx404_7:                                                                     jmp   n140_assign_α
.Lx404_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx404_240
                        add              rsp, 16;                             jmp   n138_var_β
.Lx404_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 48;                             jmp   n142_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                                       jmp   n143_lit_integer_α
n142_statement_begin_β:                                                       jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_assign_α
.Lx410_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   add              rsp, 16;                             jmp   n146_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 29, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:                                                       jmp   n147_var_α
n146_statement_begin_β:                                                       jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_call_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig418z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig418z:              .quad            1
                        .quad            .Lx418_2
                        .quad            .Lx418_2
                        .quad            16
.Lx418_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx418_29
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
.Lx418_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx418_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
.Lx418_240:                                                                   jmp   n149_statement_end_α
n148_call_β:                                                                  jmp   n146_statement_begin_β
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   add              rsp, 32;                             jmp   n150_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α:                                                       jmp   n151_var_α
n150_statement_begin_β:                                                       jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_binop_α
n152_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx425_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx425_7
.Lx425_2:               and              edx, 1;                              jz    .Lx425_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx425_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx425_4
.Lx425_3:               movq             xmm0, rsi
.Lx425_4:               cmp              ecx, 5;                              je    .Lx425_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx425_6
.Lx425_5:               movq             xmm1, rdi
.Lx425_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx425_7:                                                                     jmp   n154_assign_α
.Lx425_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx425_240
                        add              rsp, 16;                             jmp   n152_var_β
.Lx425_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n155_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   add              rsp, 48;                             jmp   n156_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α:                                                       jmp   n157_call_α
n156_statement_begin_β:                                                       jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd432:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd432]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx431_240
                        add              rsp, 16;                             jmp   n156_statement_begin_β
.Lx431_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
n157_call_β:            add              rsp, 16;                             jmp   n156_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_coerce_numeric_α
n158_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx435_1
                        cmp              eax, 3;                              jne   .Lx435_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx435_0
.Lx435_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_coerce_numeric_α
.Lx435_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_coerce_numeric_α
n159_coerce_numeric_β:  add              rsp, 16;                             jmp   n158_var_β
#-----------------------------------------------------------------------------------------------------------------------
n160_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx437_1
                        cmp              eax, 3;                              jne   .Lx437_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx437_0
.Lx437_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_cmp_test_α
.Lx437_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_cmp_test_α
n160_coerce_numeric_β:  add              rsp, 16;                             jmp   n159_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n161_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx439_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx439_239
                        add              rsp, 16;                             jmp   n160_coerce_numeric_β
.Lx439_239:                                                                   jmp   n162_statement_end_α
.Lx439_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx439_240
                        add              rsp, 16;                             jmp   n160_coerce_numeric_β
.Lx439_240:                                                                   jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 80;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:                                                       jmp   n164_call_α
n163_statement_begin_β:                                                       jmp   n169_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd445:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd445]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx444_240
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Lx444_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_var_α
n164_call_β:            add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_binop_α
n165_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx447_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx447_7
.Lx447_2:               and              edx, 1;                              jz    .Lx447_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx447_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx447_4
.Lx447_3:               movq             xmm0, rsi
.Lx447_4:               cmp              ecx, 5;                              je    .Lx447_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx447_6
.Lx447_5:               movq             xmm1, rdi
.Lx447_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx447_7:                                                                     jmp   n167_assign_α
.Lx447_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx447_240
                        add              rsp, 16;                             jmp   n165_var_β
.Lx447_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n168_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   add              rsp, 48;                             jmp   n169_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α:                                                       jmp   n170_lit_string_α
n169_statement_begin_β:                                                       jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_var_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_binop_α
n171_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n169_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
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
                        mov              rdi, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_statement_end_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   add              rsp, 48;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 61: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:                                                       jmp   n176_lit_string_α
n175_statement_begin_β:                                                       jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_var_α
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_binop_α
n177_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n179_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_statement_end_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   add              rsp, 48;                             jmp   n181_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α:                                                       jmp   n182_lit_string_α
n181_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_var_α
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_lit_integer_α
n183_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_binop_α
n184_lit_integer_β:     add              rsp, 16;                             jmp   n183_var_β
.Lx471_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx472_240
                        add              rsp, 16;                             jmp   n184_lit_integer_β
.Lx472_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_binop_α
n185_binop_β:           add              rsp, 16;                             jmp   n184_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_statement_end_α
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lseala2:               .string          "FIB"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            FIB_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + FIB_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
