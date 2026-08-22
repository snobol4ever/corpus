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
.Lgvan0:                .string          "ZBODY"
.Lgvan1:                .string          "ZKN"
.Lgvan2:                .string          "ZCHK"
.Lgvan3:                .string          "ZBUD"
.Lgvan4:                .string          "ZFLR"
.Lgvan5:                .string          "ZI"
.Lgvan6:                .string          "T"
.Lgvan7:                .string          "I"
.Lgvan8:                .string          "SUM"
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
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx218_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx219_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx219_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx219_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx219_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx224_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx225_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx225_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx225_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx225_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx230_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx232_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx232_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx232_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx232_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 20
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx237_0:               .quad            20
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
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx243_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx249_0:               .quad            20
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
n25_statement_begin_β:                                                        jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx256_0]
                        mov              rsi, qword ptr [rip + .Lx256_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "ZBODY"
.Lx256_1:               .quad            .Lx256_1_s
.Lx256_1_s:             .string          "ZKN"
                                                                              jmp   .Lx257_245
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
                        cmp              rdx, 0;                              jbe   .Lx257_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx257_41
.Lx257_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx257_41:              lea              r10, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx257_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx257_110
.Lx257_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx257_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx257_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx257_180
.Lx257_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx257_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx257_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n104_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_integer_α
n28_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx262_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
# ZBL     T = TABLE(512)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_integer_α
n32_statement_begin_β:                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Lx268_0:               .quad            512
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd270:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd270]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx269_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx269_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
n34_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # T
                        mov              qword ptr [r9 + 104], rdx;           jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 32;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:                                                        jmp   n38_lit_integer_α
n37_statement_begin_β:                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx276_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
# ZFILL   T[I] = I * 2
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:                                                        jmp   n42_var_α
n41_statement_begin_β:                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # T
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_subscript_α
n43_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx284_240
                        add              rsp, 16;                             jmp   n43_var_β
.Lx284_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_var_α
n44_subscript_β:        add              rsp, 16;                             jmp   n43_var_β
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_lit_integer_α
n45_var_β:              add              rsp, 16;                             jmp   n44_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_binop_α
n46_lit_integer_β:      add              rsp, 16;                             jmp   n45_var_β
.Lx286_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx287_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx287_7
.Lx287_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx287_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx287_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx287_4
.Lx287_3:               movq             xmm0, rsi
.Lx287_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx287_7:                                                                     jmp   n48_assign_var_α
.Lx287_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx287_240
                        add              rsp, 16;                             jmp   n46_lit_integer_β
.Lx287_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_assign_var_α
n47_binop_β:            add              rsp, 16;                             jmp   n46_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx288_240
                        add              rsp, 16;                             jmp   n47_binop_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    add              rsp, 112;                            jmp   n50_statement_begin_α
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZFILL)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:                                                        jmp   n51_var_α
n50_statement_begin_β:                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_coerce_numeric_α
n52_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lx294_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx296_1
                        cmp              eax, 3;                              jne   .Lx296_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx296_0
.Lx296_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_coerce_numeric_α
.Lx296_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_coerce_numeric_α
n53_coerce_numeric_β:   add              rsp, 16;                             jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx298_1
                        cmp              eax, 3;                              jne   .Lx298_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx298_0
.Lx298_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_cmp_test_α
.Lx298_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_cmp_test_α
n54_coerce_numeric_β:   add              rsp, 16;                             jmp   n53_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n55_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx300_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx300_239
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lx300_239:                                                                   jmp   n56_var_α
.Lx300_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx300_240
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lx300_240:                                                                   jmp   n56_var_α
n55_cmp_test_β:         add              rsp, 16;                             jmp   n54_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_integer_α
n56_var_β:              add              rsp, 16;                             jmp   n55_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_binop_α
n57_lit_integer_β:      add              rsp, 16;                             jmp   n56_var_β
.Lx302_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx303_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx303_7
.Lx303_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx303_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx303_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx303_4
.Lx303_3:               movq             xmm0, rsi
.Lx303_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx303_7:                                                                     jmp   n59_assign_α
.Lx303_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx303_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lx303_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    add              rsp, 128;                            jmp   n41_statement_begin_α
#=======================================================================================================================
#         SUM = 0
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:                                                        jmp   n62_lit_integer_α
n61_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx309_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SUM
                        mov              qword ptr [r9 + 136], rdx;           jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 16;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_lit_integer_α
n65_statement_begin_β:                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx315_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
# ZREAD   SUM = SUM + T[I]
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:                                                        jmp   n70_var_α
n69_statement_begin_β:                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # SUM
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # T
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_var_α
n71_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_subscript_α
n72_var_β:              add              rsp, 16;                             jmp   n71_var_β
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx324_240
                        add              rsp, 16;                             jmp   n72_var_β
.Lx324_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_deref_α
n73_subscript_β:        add              rsp, 16;                             jmp   n72_var_β
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx325_240
                        add              rsp, 16;                             jmp   n73_subscript_β
.Lx325_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_binop_α
n74_deref_β:            add              rsp, 16;                             jmp   n73_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx326_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx326_7
.Lx326_2:               and              edx, 1;                              jz    .Lx326_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              eax, 5;                              je    .Lx326_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx326_4
.Lx326_3:               movq             xmm0, rsi
.Lx326_4:               cmp              ecx, 5;                              je    .Lx326_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx326_6
.Lx326_5:               movq             xmm1, rdi
.Lx326_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx326_7:                                                                     jmp   n76_assign_α
.Lx326_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx326_240
                        add              rsp, 16;                             jmp   n74_deref_β
.Lx326_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SUM
                        mov              qword ptr [r9 + 136], rdx;           jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 96;                             jmp   n78_statement_begin_α
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZREAD)
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:                                                        jmp   n79_var_α
n78_statement_begin_β:                                                        jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_coerce_numeric_α
n80_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Lx333_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx335_1
                        cmp              eax, 3;                              jne   .Lx335_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx335_0
.Lx335_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_coerce_numeric_α
.Lx335_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_coerce_numeric_α
n81_coerce_numeric_β:   add              rsp, 16;                             jmp   n80_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx337_1
                        cmp              eax, 3;                              jne   .Lx337_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx337_0
.Lx337_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_cmp_test_α
.Lx337_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_cmp_test_α
n82_coerce_numeric_β:   add              rsp, 16;                             jmp   n81_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n83_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx339_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx339_239
                        add              rsp, 16;                             jmp   n82_coerce_numeric_β
.Lx339_239:                                                                   jmp   n84_var_α
.Lx339_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx339_240
                        add              rsp, 16;                             jmp   n82_coerce_numeric_β
.Lx339_240:                                                                   jmp   n84_var_α
n83_cmp_test_β:         add              rsp, 16;                             jmp   n82_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_lit_integer_α
n84_var_β:              add              rsp, 16;                             jmp   n83_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_binop_α
n85_lit_integer_β:      add              rsp, 16;                             jmp   n84_var_β
.Lx341_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx342_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx342_7
.Lx342_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx342_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx342_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx342_4
.Lx342_3:               movq             xmm0, rsi
.Lx342_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx342_7:                                                                     jmp   n87_assign_α
.Lx342_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx342_240
                        add              rsp, 16;                             jmp   n85_lit_integer_β
.Lx342_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 128;                            jmp   n69_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:                                                        jmp   n90_var_α
n89_statement_begin_β:                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_coerce_numeric_α
n91_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n92_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx351_1
                        cmp              eax, 3;                              jne   .Lx351_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx351_0
.Lx351_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_coerce_numeric_α
.Lx351_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_coerce_numeric_α
n92_coerce_numeric_β:   add              rsp, 16;                             jmp   n91_var_β
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx353_1
                        cmp              eax, 3;                              jne   .Lx353_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx353_0
.Lx353_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_cmp_test_α
.Lx353_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_cmp_test_α
n93_coerce_numeric_β:   add              rsp, 16;                             jmp   n92_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n94_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx355_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx355_239
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lx355_239:                                                                   jmp   n95_var_α
.Lx355_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx355_240
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lx355_240:                                                                   jmp   n95_var_α
n94_cmp_test_β:         add              rsp, 16;                             jmp   n93_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_lit_integer_α
n95_var_β:              add              rsp, 16;                             jmp   n94_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_binop_α
n96_lit_integer_β:      add              rsp, 16;                             jmp   n95_var_β
.Lx357_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx358_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx358_7
.Lx358_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx358_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx358_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx358_4
.Lx358_3:               movq             xmm0, rsi
.Lx358_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx358_7:                                                                     jmp   n98_assign_α
.Lx358_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx358_240
                        add              rsp, 16;                             jmp   n96_lit_integer_β
.Lx358_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    add              rsp, 128;                            jmp   n32_statement_begin_α
#=======================================================================================================================
#         ZBODY = SUM                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:                                                       jmp   n101_var_α
n100_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # SUM
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n103_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 19, line 22: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:                                                       jmp   n105_statement_end_α
n104_statement_begin_β:                                                       jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:                                                         jmp   n106_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:                                                       jmp   n107_lit_string_α
n106_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_var_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_call_α
n108_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n106_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig377z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig377z:              .quad            1
                        .quad            .Lx377_2
                        .quad            .Lx377_2
                        .quad            16
.Lx377_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx377_29
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
.Lx377_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx377_240
                        add              rsp, 16;                             jmp   n108_var_β
.Lx377_240:                                                                   jmp   n110_binop_α
n109_call_β:                                                                  jmp   n108_var_β
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_statement_end_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   add              rsp, 64;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_binop_α
n115_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lx385_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx386_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx386_7
.Lx386_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx386_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx386_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx386_4
.Lx386_3:               movq             xmm0, rsi
.Lx386_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx386_7:                                                                     jmp   n117_assign_α
.Lx386_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx386_240
                        add              rsp, 16;                             jmp   n115_lit_integer_β
.Lx386_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n118_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   add              rsp, 48;                             jmp   n119_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:                                                       jmp   n120_var_α
n119_statement_begin_β:                                                       jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_binop_α
n121_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
.Lx393_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx394_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx394_7
.Lx394_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx394_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx394_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx394_4
.Lx394_3:               movq             xmm0, rsi
.Lx394_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx394_7:                                                                     jmp   n123_assign_α
.Lx394_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx394_240
                        add              rsp, 16;                             jmp   n121_lit_integer_β
.Lx394_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   add              rsp, 48;                             jmp   n125_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α:                                                       jmp   n126_var_α
n125_statement_begin_β:                                                       jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_call_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd402:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd402]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx401_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
.Lx401_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_statement_end_α
n127_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 32;                             jmp   n158_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:                                                       jmp   n130_lit_integer_α
n129_statement_begin_β:                                                       jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_assign_α
.Lx407_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   add              rsp, 16;                             jmp   n133_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 25, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α:                                                       jmp   n134_call_α
n133_statement_begin_β:                                                       jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd414:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd414]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx413_240
                        add              rsp, 16;                             jmp   n133_statement_begin_β
.Lx413_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
n134_call_β:            add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n136_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   add              rsp, 16;                             jmp   n137_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:                                                       jmp   n138_var_α
n137_statement_begin_β:                                                       jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_call_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig422z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig422z:              .quad            1
                        .quad            .Lx422_2
                        .quad            .Lx422_2
                        .quad            16
.Lx422_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx422_29
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
.Lx422_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx422_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
.Lx422_240:                                                                   jmp   n140_statement_end_α
n139_call_β:                                                                  jmp   n137_statement_begin_β
.Lx422_0:               .quad            .Lx422_0_s
.Lx422_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   add              rsp, 32;                             jmp   n141_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α:                                                       jmp   n142_call_α
n141_statement_begin_β:                                                       jmp   n147_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd428:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd428]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx427_240
                        add              rsp, 16;                             jmp   n141_statement_begin_β
.Lx427_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_var_α
n142_call_β:            add              rsp, 16;                             jmp   n141_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_binop_α
n143_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n144_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx430_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx430_7
.Lx430_2:               and              edx, 1;                              jz    .Lx430_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx430_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx430_4
.Lx430_3:               movq             xmm0, rsi
.Lx430_4:               cmp              ecx, 5;                              je    .Lx430_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx430_6
.Lx430_5:               movq             xmm1, rdi
.Lx430_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx430_7:                                                                     jmp   n145_assign_α
.Lx430_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx430_240
                        add              rsp, 16;                             jmp   n143_var_β
.Lx430_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   add              rsp, 48;                             jmp   n147_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α:                                                       jmp   n148_var_α
n147_statement_begin_β:                                                       jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_coerce_numeric_α
n149_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n150_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx439_1
                        cmp              eax, 3;                              jne   .Lx439_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx439_0
.Lx439_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_coerce_numeric_α
.Lx439_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n151_coerce_numeric_α
n150_coerce_numeric_β:  add              rsp, 16;                             jmp   n149_var_β
#-----------------------------------------------------------------------------------------------------------------------
n151_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx441_1
                        cmp              eax, 3;                              jne   .Lx441_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx441_0
.Lx441_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_cmp_test_α
.Lx441_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_cmp_test_α
n151_coerce_numeric_β:  add              rsp, 16;                             jmp   n150_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n152_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx443_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx443_239
                        add              rsp, 16;                             jmp   n151_coerce_numeric_β
.Lx443_239:                                                                   jmp   n153_var_α
.Lx443_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx443_240
                        add              rsp, 16;                             jmp   n151_coerce_numeric_β
.Lx443_240:                                                                   jmp   n153_var_α
n152_cmp_test_β:        add              rsp, 16;                             jmp   n151_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_lit_integer_α
n153_var_β:             add              rsp, 16;                             jmp   n152_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_binop_α
n154_lit_integer_β:     add              rsp, 16;                             jmp   n153_var_β
.Lx445_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx446_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx446_7
.Lx446_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx446_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx446_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx446_4
.Lx446_3:               movq             xmm0, rsi
.Lx446_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx446_7:                                                                     jmp   n156_assign_α
.Lx446_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx446_240
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lx446_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   add              rsp, 128;                            jmp   n133_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 29, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:                                                       jmp   n159_call_α
n158_statement_begin_β:                                                       jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd453:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd453]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx452_240
                        add              rsp, 16;                             jmp   n158_statement_begin_β
.Lx452_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_assign_α
n159_call_β:            add              rsp, 16;                             jmp   n158_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 16;                             jmp   n162_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:                                                       jmp   n163_var_α
n162_statement_begin_β:                                                       jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_binop_α
n164_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx461_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx461_7
.Lx461_2:               and              edx, 1;                              jz    .Lx461_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx461_4
.Lx461_3:               movq             xmm0, rsi
.Lx461_4:               cmp              ecx, 5;                              je    .Lx461_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx461_6
.Lx461_5:               movq             xmm1, rdi
.Lx461_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx461_7:                                                                     jmp   n166_assign_α
.Lx461_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx461_240
                        add              rsp, 16;                             jmp   n164_var_β
.Lx461_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n166_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n167_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   add              rsp, 48;                             jmp   n168_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:                                                       jmp   n169_lit_integer_α
n168_statement_begin_β:                                                       jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_assign_α
.Lx467_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n171_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   add              rsp, 16;                             jmp   n172_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 32, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α:                                                       jmp   n173_var_α
n172_statement_begin_β:                                                       jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_call_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig475z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig475z:              .quad            1
                        .quad            .Lx475_2
                        .quad            .Lx475_2
                        .quad            16
.Lx475_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx475_29
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
.Lx475_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx475_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n172_statement_begin_β
.Lx475_240:                                                                   jmp   n175_statement_end_α
n174_call_β:                                                                  jmp   n172_statement_begin_β
.Lx475_0:               .quad            .Lx475_0_s
.Lx475_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   add              rsp, 32;                             jmp   n176_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:                                                       jmp   n177_var_α
n176_statement_begin_β:                                                       jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_binop_α
n178_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx482_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx482_7
.Lx482_2:               and              edx, 1;                              jz    .Lx482_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx482_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx482_4
.Lx482_3:               movq             xmm0, rsi
.Lx482_4:               cmp              ecx, 5;                              je    .Lx482_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx482_6
.Lx482_5:               movq             xmm1, rdi
.Lx482_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx482_7:                                                                     jmp   n180_assign_α
.Lx482_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx482_240
                        add              rsp, 16;                             jmp   n178_var_β
.Lx482_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n181_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   add              rsp, 48;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 61: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α:                                                       jmp   n183_call_α
n182_statement_begin_β:                                                       jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd489:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd489]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx488_240
                        add              rsp, 16;                             jmp   n182_statement_begin_β
.Lx488_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_var_α
n183_call_β:            add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_coerce_numeric_α
n184_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n185_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx492_1
                        cmp              eax, 3;                              jne   .Lx492_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx492_0
.Lx492_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_coerce_numeric_α
.Lx492_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_coerce_numeric_α
n185_coerce_numeric_β:  add              rsp, 16;                             jmp   n184_var_β
#-----------------------------------------------------------------------------------------------------------------------
n186_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx494_1
                        cmp              eax, 3;                              jne   .Lx494_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx494_0
.Lx494_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_cmp_test_α
.Lx494_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_cmp_test_α
n186_coerce_numeric_β:  add              rsp, 16;                             jmp   n185_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n187_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx496_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx496_239
                        add              rsp, 16;                             jmp   n186_coerce_numeric_β
.Lx496_239:                                                                   jmp   n188_statement_end_α
.Lx496_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx496_240
                        add              rsp, 16;                             jmp   n186_coerce_numeric_β
.Lx496_240:                                                                   jmp   n188_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   add              rsp, 80;                             jmp   n172_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α:                                                       jmp   n190_call_α
n189_statement_begin_β:                                                       jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd502:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd502]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx501_240
                        add              rsp, 16;                             jmp   n189_statement_begin_β
.Lx501_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_var_α
n190_call_β:            add              rsp, 16;                             jmp   n189_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_binop_α
n191_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx504_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx504_7
.Lx504_2:               and              edx, 1;                              jz    .Lx504_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx504_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx504_4
.Lx504_3:               movq             xmm0, rsi
.Lx504_4:               cmp              ecx, 5;                              je    .Lx504_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx504_6
.Lx504_5:               movq             xmm1, rdi
.Lx504_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx504_7:                                                                     jmp   n193_assign_α
.Lx504_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx504_240
                        add              rsp, 16;                             jmp   n191_var_β
.Lx504_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 48;                             jmp   n195_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 63: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:                                                       jmp   n196_lit_string_α
n195_statement_begin_β:                                                       jmp   n201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_var_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_binop_α
n197_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_statement_end_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   add              rsp, 48;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 64: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α:                                                       jmp   n202_lit_string_α
n201_statement_begin_β:                                                       jmp   n207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_var_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_binop_α
n203_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n204_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n206_statement_end_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   add              rsp, 48;                             jmp   n207_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α:                                                       jmp   n208_lit_string_α
n207_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_var_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_lit_integer_α
n209_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_binop_α
n210_lit_integer_β:     add              rsp, 16;                             jmp   n209_var_β
.Lx528_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx529_240
                        add              rsp, 16;                             jmp   n210_lit_integer_β
.Lx529_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_binop_α
n211_binop_β:           add              rsp, 16;                             jmp   n210_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n212_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n214_statement_end_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
