                        .intel_syntax    noprefix
                        .text
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
.Lgvan0:                .string          "ZBODY"
.Lgvan1:                .string          "ZKN"
.Lgvan2:                .string          "ZCHK"
.Lgvan3:                .string          "ZBUD"
.Lgvan4:                .string          "ZFLR"
.Lgvan5:                .string          "N"
.Lgvan6:                .string          "ZI"
.Lgvan7:                .string          "ZK"
.Lgvan8:                .string          "ZT"
.Lgvan9:                .string          "ZE"
.Lgvan10:               .string          "ZD"
.Lgvan11:               .string          "ZN"
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
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_integer_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx194_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx195_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx195_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx195_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx200_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx201_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx201_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx201_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx206_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx208_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx208_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx208_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx208_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx213_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n16_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx219_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n20_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx225_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_define_α
n25_statement_begin_β:                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx232_0]
                        mov              rsi, qword ptr [rip + .Lx232_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx232_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "ZBODY"
.Lx232_1:               .quad            .Lx232_1_s
.Lx232_1_s:             .string          "ZKN"
                                                                              jmp   .Lx233_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ZBODY
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
                        cmp              rdx, 0;                              jbe   .Lx233_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx233_41
.Lx233_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx233_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx233_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx233_110
.Lx233_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx233_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx233_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx233_180
.Lx233_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx233_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx233_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n80_statement_begin_α
#=======================================================================================================================
# ZBODY   N = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_integer_α
n28_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx238_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_integer_α
n32_statement_begin_β:                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx244_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
# ZBL     N = N + 3
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:                                                        jmp   n37_var_α
n36_statement_begin_β:                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_binop_α
n38_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx251_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx252_2
                        add              rax, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx252_7
.Lx252_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx252_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              eax, 5;                              je    .Lx252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx252_4
.Lx252_3:               movq             xmm0, rsi
.Lx252_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx252_7:                                                                     jmp   n40_assign_α
.Lx252_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx252_240
                        add              rsp, 16;                             jmp   n38_lit_integer_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    add              rsp, 48;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         N = N - 1
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:                                                        jmp   n43_var_α
n42_statement_begin_β:                                                        jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_binop_α
n44_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lx259_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx260_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx260_7
.Lx260_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx260_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx260_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx260_4
.Lx260_3:               movq             xmm0, rsi
.Lx260_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx260_7:                                                                     jmp   n46_assign_α
.Lx260_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx260_240
                        add              rsp, 16;                             jmp   n44_lit_integer_β
.Lx260_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 48;                             jmp   n48_statement_begin_α
#=======================================================================================================================
#         N = N * 2
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:                                                        jmp   n49_var_α
n48_statement_begin_β:                                                        jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_binop_α
n50_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
.Lx267_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx268_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx268_7
.Lx268_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx268_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx268_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx268_4
.Lx268_3:               movq             xmm0, rsi
.Lx268_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx268_7:                                                                     jmp   n52_assign_α
.Lx268_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx268_240
                        add              rsp, 16;                             jmp   n50_lit_integer_β
.Lx268_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    add              rsp, 48;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         N = GE(N, 1000000) N / 1000
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:                                                        jmp   n55_var_α
n54_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_coerce_numeric_α
n56_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Lx275_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx277_1
                        cmp              eax, 3;                              jne   .Lx277_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx277_0
.Lx277_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_coerce_numeric_α
.Lx277_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_coerce_numeric_α
n57_coerce_numeric_β:   add              rsp, 16;                             jmp   n56_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx279_1
                        cmp              eax, 3;                              jne   .Lx279_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx279_0
.Lx279_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_cmp_test_α
.Lx279_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_cmp_test_α
n58_coerce_numeric_β:   add              rsp, 16;                             jmp   n57_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n59_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx281_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx281_239
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
.Lx281_239:                                                                   jmp   n60_var_α
.Lx281_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx281_240
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
.Lx281_240:                                                                   jmp   n60_var_α
n59_cmp_test_β:         add              rsp, 16;                             jmp   n58_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_lit_integer_α
n60_var_β:              add              rsp, 16;                             jmp   n59_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_binop_α
n61_lit_integer_β:      add              rsp, 16;                             jmp   n60_var_β
.Lx283_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx284_240
                        add              rsp, 16;                             jmp   n61_lit_integer_β
.Lx284_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 128;                            jmp   n65_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_var_α
n65_statement_begin_β:                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_coerce_numeric_α
n67_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx293_1
                        cmp              eax, 3;                              jne   .Lx293_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx293_0
.Lx293_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_coerce_numeric_α
.Lx293_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_coerce_numeric_α
n68_coerce_numeric_β:   add              rsp, 16;                             jmp   n67_var_β
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx295_1
                        cmp              eax, 3;                              jne   .Lx295_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx295_0
.Lx295_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_cmp_test_α
.Lx295_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_cmp_test_α
n69_coerce_numeric_β:   add              rsp, 16;                             jmp   n68_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n70_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx297_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx297_239
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lx297_239:                                                                   jmp   n71_var_α
.Lx297_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx297_240
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lx297_240:                                                                   jmp   n71_var_α
n70_cmp_test_β:         add              rsp, 16;                             jmp   n69_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
n71_var_β:              add              rsp, 16;                             jmp   n70_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      add              rsp, 16;                             jmp   n71_var_β
.Lx299_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx300_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx300_7
.Lx300_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx300_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx300_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx300_4
.Lx300_3:               movq             xmm0, rsi
.Lx300_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx300_7:                                                                     jmp   n74_assign_α
.Lx300_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx300_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lx300_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = N                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:                                                        jmp   n77_var_α
n76_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:                                                        jmp   n81_statement_end_α
n80_statement_begin_β:                                                        jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:                                                          jmp   n82_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:                                                        jmp   n83_lit_string_α
n82_statement_begin_β:                                                        jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_call_α
n84_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig319z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig319z:              .quad            1
                        .quad            .Lx319_2
                        .quad            .Lx319_2
                        .quad            16
.Lx319_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx319_29
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
.Lx319_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx319_240
                        add              rsp, 16;                             jmp   n84_var_β
.Lx319_240:                                                                   jmp   n86_binop_α
n85_call_β:                                                                   jmp   n84_var_β
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_statement_end_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 64;                             jmp   n89_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:                                                        jmp   n90_var_α
n89_statement_begin_β:                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_binop_α
n91_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lx327_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx328_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx328_7
.Lx328_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx328_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx328_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx328_4
.Lx328_3:               movq             xmm0, rsi
.Lx328_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx328_7:                                                                     jmp   n93_assign_α
.Lx328_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx328_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lx328_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n94_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    add              rsp, 48;                             jmp   n95_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:                                                        jmp   n96_var_α
n95_statement_begin_β:                                                        jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_binop_α
n97_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
.Lx335_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx336_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx336_7
.Lx336_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx336_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx336_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx336_4
.Lx336_3:               movq             xmm0, rsi
.Lx336_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx336_7:                                                                     jmp   n99_assign_α
.Lx336_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx336_240
                        add              rsp, 16;                             jmp   n97_lit_integer_β
.Lx336_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   add              rsp, 48;                             jmp   n101_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:                                                       jmp   n102_var_α
n101_statement_begin_β:                                                       jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd344:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd344]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx343_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Lx343_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_statement_end_α
n103_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   add              rsp, 32;                             jmp   n134_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:                                                       jmp   n106_lit_integer_α
n105_statement_begin_β:                                                       jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_assign_α
.Lx349_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZK
                        mov              qword ptr [r9 + 120], rdx;           jmp   n108_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   add              rsp, 16;                             jmp   n109_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 22, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:                                                       jmp   n110_call_α
n109_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd356:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd356]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx355_240
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Lx355_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_assign_α
n110_call_β:            add              rsp, 16;                             jmp   n109_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   add              rsp, 16;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_call_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig364z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig364z:              .quad            1
                        .quad            .Lx364_2
                        .quad            .Lx364_2
                        .quad            16
.Lx364_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx364_29
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
.Lx364_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx364_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lx364_240:                                                                   jmp   n116_statement_end_α
n115_call_β:                                                                  jmp   n113_statement_begin_β
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   add              rsp, 32;                             jmp   n117_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_call_α
n117_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd370:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd370]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx369_240
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx369_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_var_α
n118_call_β:            add              rsp, 16;                             jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_binop_α
n119_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx372_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx372_7
.Lx372_2:               and              edx, 1;                              jz    .Lx372_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx372_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx372_4
.Lx372_3:               movq             xmm0, rsi
.Lx372_4:               cmp              ecx, 5;                              je    .Lx372_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx372_6
.Lx372_5:               movq             xmm1, rdi
.Lx372_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx372_7:                                                                     jmp   n121_assign_α
.Lx372_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx372_240
                        add              rsp, 16;                             jmp   n119_var_β
.Lx372_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 48;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_var_α
n123_statement_begin_β:                                                       jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_coerce_numeric_α
n125_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx381_1
                        cmp              eax, 3;                              jne   .Lx381_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx381_0
.Lx381_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_coerce_numeric_α
.Lx381_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_coerce_numeric_α
n126_coerce_numeric_β:  add              rsp, 16;                             jmp   n125_var_β
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx383_1
                        cmp              eax, 3;                              jne   .Lx383_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx383_0
.Lx383_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_cmp_test_α
.Lx383_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_cmp_test_α
n127_coerce_numeric_β:  add              rsp, 16;                             jmp   n126_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n128_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx385_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx385_239
                        add              rsp, 16;                             jmp   n127_coerce_numeric_β
.Lx385_239:                                                                   jmp   n129_var_α
.Lx385_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx385_240
                        add              rsp, 16;                             jmp   n127_coerce_numeric_β
.Lx385_240:                                                                   jmp   n129_var_α
n128_cmp_test_β:        add              rsp, 16;                             jmp   n127_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_lit_integer_α
n129_var_β:             add              rsp, 16;                             jmp   n128_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_binop_α
n130_lit_integer_β:     add              rsp, 16;                             jmp   n129_var_β
.Lx387_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n131_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx388_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx388_7
.Lx388_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx388_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx388_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx388_4
.Lx388_3:               movq             xmm0, rsi
.Lx388_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx388_7:                                                                     jmp   n132_assign_α
.Lx388_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx388_240
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lx388_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZK
                        mov              qword ptr [r9 + 120], rdx;           jmp   n133_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   add              rsp, 128;                            jmp   n109_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 26, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α:                                                       jmp   n135_call_α
n134_statement_begin_β:                                                       jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd395:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd395]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx394_240
                        add              rsp, 16;                             jmp   n134_statement_begin_β
.Lx394_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_assign_α
n135_call_β:            add              rsp, 16;                             jmp   n134_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 16;                             jmp   n138_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:                                                       jmp   n139_var_α
n138_statement_begin_β:                                                       jmp   n144_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_binop_α
n140_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n138_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx403_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx403_7
.Lx403_2:               and              edx, 1;                              jz    .Lx403_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx403_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx403_4
.Lx403_3:               movq             xmm0, rsi
.Lx403_4:               cmp              ecx, 5;                              je    .Lx403_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx403_6
.Lx403_5:               movq             xmm1, rdi
.Lx403_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx403_7:                                                                     jmp   n142_assign_α
.Lx403_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx403_240
                        add              rsp, 16;                             jmp   n140_var_β
.Lx403_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZD
                        mov              qword ptr [r9 + 168], rdx;           jmp   n143_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   add              rsp, 48;                             jmp   n144_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_begin_α:                                                       jmp   n145_lit_integer_α
n144_statement_begin_β:                                                       jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_assign_α
.Lx409_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n147_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   add              rsp, 16;                             jmp   n148_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 29, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:                                                       jmp   n149_var_α
n148_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_call_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig417z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
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
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx417_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx417_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n148_statement_begin_β
.Lx417_240:                                                                   jmp   n151_statement_end_α
n150_call_β:                                                                  jmp   n148_statement_begin_β
.Lx417_0:               .quad            .Lx417_0_s
.Lx417_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 32;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_var_α
n152_statement_begin_β:                                                       jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_binop_α
n154_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx424_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx424_7
.Lx424_2:               and              edx, 1;                              jz    .Lx424_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx424_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx424_4
.Lx424_3:               movq             xmm0, rsi
.Lx424_4:               cmp              ecx, 5;                              je    .Lx424_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx424_6
.Lx424_5:               movq             xmm1, rdi
.Lx424_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx424_7:                                                                     jmp   n156_assign_α
.Lx424_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx424_240
                        add              rsp, 16;                             jmp   n154_var_β
.Lx424_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   add              rsp, 48;                             jmp   n158_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:                                                       jmp   n159_call_α
n158_statement_begin_β:                                                       jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd431:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd431]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx430_240
                        add              rsp, 16;                             jmp   n158_statement_begin_β
.Lx430_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_var_α
n159_call_β:            add              rsp, 16;                             jmp   n158_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZD
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_coerce_numeric_α
n160_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx434_1
                        cmp              eax, 3;                              jne   .Lx434_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx434_0
.Lx434_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_coerce_numeric_α
.Lx434_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n162_coerce_numeric_α
n161_coerce_numeric_β:  add              rsp, 16;                             jmp   n160_var_β
#-----------------------------------------------------------------------------------------------------------------------
n162_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx436_1
                        cmp              eax, 3;                              jne   .Lx436_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx436_0
.Lx436_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_cmp_test_α
.Lx436_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_cmp_test_α
n162_coerce_numeric_β:  add              rsp, 16;                             jmp   n161_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n163_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx438_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx438_239
                        add              rsp, 16;                             jmp   n162_coerce_numeric_β
.Lx438_239:                                                                   jmp   n164_statement_end_α
.Lx438_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx438_240
                        add              rsp, 16;                             jmp   n162_coerce_numeric_β
.Lx438_240:                                                                   jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 80;                             jmp   n148_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α:                                                       jmp   n166_call_α
n165_statement_begin_β:                                                       jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd444:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd444]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx443_240
                        add              rsp, 16;                             jmp   n165_statement_begin_β
.Lx443_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_var_α
n166_call_β:            add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_binop_α
n167_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx446_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx446_7
.Lx446_2:               and              edx, 1;                              jz    .Lx446_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx446_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx446_4
.Lx446_3:               movq             xmm0, rsi
.Lx446_4:               cmp              ecx, 5;                              je    .Lx446_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx446_6
.Lx446_5:               movq             xmm1, rdi
.Lx446_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx446_7:                                                                     jmp   n169_assign_α
.Lx446_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx446_240
                        add              rsp, 16;                             jmp   n167_var_β
.Lx446_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n169_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 48;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_lit_string_α
n171_statement_begin_β:                                                       jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_var_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_binop_α
n173_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_statement_end_α
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 48;                             jmp   n177_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 61: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:                                                       jmp   n178_lit_string_α
n177_statement_begin_β:                                                       jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_var_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_binop_α
n179_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_statement_end_α
.Lx463_0:               .quad            .Lx463_0_s
.Lx463_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 48;                             jmp   n183_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α:                                                       jmp   n184_lit_string_α
n183_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_var_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_lit_integer_α
n185_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_binop_α
n186_lit_integer_β:     add              rsp, 16;                             jmp   n185_var_β
.Lx470_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx471_240
                        add              rsp, 16;                             jmp   n186_lit_integer_β
.Lx471_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_binop_α
n187_binop_β:           add              rsp, 16;                             jmp   n186_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_statement_end_α
.Lx473_0:               .quad            .Lx473_0_s
.Lx473_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
.Lseala1:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
