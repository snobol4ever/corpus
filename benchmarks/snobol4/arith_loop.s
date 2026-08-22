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
.Lgvan5:                .string          "A"
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
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx171_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx172_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx172_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx172_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx177_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx178_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx178_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx178_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx183_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx185_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx185_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx185_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx185_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx190_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx196_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx202_0:               .quad            20
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
n25_statement_begin_β:                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx209_0]
                        mov              rsi, qword ptr [rip + .Lx209_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx209_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "ZBODY"
.Lx209_1:               .quad            .Lx209_1_s
.Lx209_1_s:             .string          "ZKN"
                                                                              jmp   .Lx210_245
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
                        cmp              rdx, 0;                              jbe   .Lx210_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx210_41
.Lx210_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx210_41:              lea              r10, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx210_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx210_110
.Lx210_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx210_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx210_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx210_180
.Lx210_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx210_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx210_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n57_statement_begin_α
#=======================================================================================================================
# ZBODY   A = 0
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_integer_α
n28_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx215_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # A
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
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx221_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
# ZBL     A = A + 1
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:                                                        jmp   n37_var_α
n36_statement_begin_β:                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_binop_α
n38_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx228_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx229_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx229_7
.Lx229_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx229_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx229_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx229_4
.Lx229_3:               movq             xmm0, rsi
.Lx229_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx229_7:                                                                     jmp   n40_assign_α
.Lx229_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx229_240
                        add              rsp, 16;                             jmp   n38_lit_integer_β
.Lx229_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # A
                        mov              qword ptr [r9 + 88], rdx;            jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    add              rsp, 48;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:                                                        jmp   n43_var_α
n42_statement_begin_β:                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_coerce_numeric_α
n44_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx238_1
                        cmp              eax, 3;                              jne   .Lx238_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx238_0
.Lx238_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_coerce_numeric_α
.Lx238_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_coerce_numeric_α
n45_coerce_numeric_β:   add              rsp, 16;                             jmp   n44_var_β
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx240_1
                        cmp              eax, 3;                              jne   .Lx240_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx240_0
.Lx240_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_cmp_test_α
.Lx240_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_cmp_test_α
n46_coerce_numeric_β:   add              rsp, 16;                             jmp   n45_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n47_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx242_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx242_239
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lx242_239:                                                                   jmp   n48_var_α
.Lx242_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx242_240
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lx242_240:                                                                   jmp   n48_var_α
n47_cmp_test_β:         add              rsp, 16;                             jmp   n46_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_integer_α
n48_var_β:              add              rsp, 16;                             jmp   n47_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_binop_α
n49_lit_integer_β:      add              rsp, 16;                             jmp   n48_var_β
.Lx244_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx245_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx245_7
.Lx245_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx245_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx245_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx245_4
.Lx245_3:               movq             xmm0, rsi
.Lx245_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx245_7:                                                                     jmp   n51_assign_α
.Lx245_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx245_240
                        add              rsp, 16;                             jmp   n49_lit_integer_β
.Lx245_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = A                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:                                                        jmp   n54_var_α
n53_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 13, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_statement_end_α
n57_statement_begin_β:                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:                                                          jmp   n59_statement_begin_α
#=======================================================================================================================
#         <stmt 14, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:                                                        jmp   n60_lit_string_α
n59_statement_begin_β:                                                        jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_var_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_call_α
n61_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig264z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig264z:              .quad            1
                        .quad            .Lx264_2
                        .quad            .Lx264_2
                        .quad            16
.Lx264_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx264_29
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
.Lx264_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx264_240
                        add              rsp, 16;                             jmp   n61_var_β
.Lx264_240:                                                                   jmp   n63_binop_α
n62_call_β:                                                                   jmp   n61_var_β
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n65_statement_end_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    add              rsp, 64;                             jmp   n66_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:                                                        jmp   n67_var_α
n66_statement_begin_β:                                                        jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_binop_α
n68_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lx272_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx273_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx273_7
.Lx273_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx273_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx273_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx273_4
.Lx273_3:               movq             xmm0, rsi
.Lx273_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx273_7:                                                                     jmp   n70_assign_α
.Lx273_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx273_240
                        add              rsp, 16;                             jmp   n68_lit_integer_β
.Lx273_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    add              rsp, 48;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:                                                        jmp   n73_var_α
n72_statement_begin_β:                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_binop_α
n74_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Lx280_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx281_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx281_7
.Lx281_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx281_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx281_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx281_4
.Lx281_3:               movq             xmm0, rsi
.Lx281_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx281_7:                                                                     jmp   n76_assign_α
.Lx281_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx281_240
                        add              rsp, 16;                             jmp   n74_lit_integer_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 48;                             jmp   n78_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:                                                        jmp   n79_var_α
n78_statement_begin_β:                                                        jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_call_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd289:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd289]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx288_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_statement_end_α
n80_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    add              rsp, 32;                             jmp   n111_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:                                                        jmp   n83_lit_integer_α
n82_statement_begin_β:                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_assign_α
.Lx294_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZK
                        mov              qword ptr [r9 + 120], rdx;           jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    add              rsp, 16;                             jmp   n86_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 19, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:                                                        jmp   n87_call_α
n86_statement_begin_β:                                                        jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd301:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd301]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx300_240
                        add              rsp, 16;                             jmp   n86_statement_begin_β
.Lx300_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
n87_call_β:             add              rsp, 16;                             jmp   n86_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    add              rsp, 16;                             jmp   n90_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:                                                        jmp   n91_var_α
n90_statement_begin_β:                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_call_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig309z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig309z:              .quad            1
                        .quad            .Lx309_2
                        .quad            .Lx309_2
                        .quad            16
.Lx309_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx309_29
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
.Lx309_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx309_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
.Lx309_240:                                                                   jmp   n93_statement_end_α
n92_call_β:                                                                   jmp   n90_statement_begin_β
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    add              rsp, 32;                             jmp   n94_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                                        jmp   n95_call_α
n94_statement_begin_β:                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd315:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd315]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx314_240
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Lx314_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
n95_call_β:             add              rsp, 16;                             jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_binop_α
n96_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx317_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx317_7
.Lx317_2:               and              edx, 1;                              jz    .Lx317_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx317_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx317_4
.Lx317_3:               movq             xmm0, rsi
.Lx317_4:               cmp              ecx, 5;                              je    .Lx317_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx317_6
.Lx317_5:               movq             xmm1, rdi
.Lx317_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx317_7:                                                                     jmp   n98_assign_α
.Lx317_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx317_240
                        add              rsp, 16;                             jmp   n96_var_β
.Lx317_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    add              rsp, 48;                             jmp   n100_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:                                                       jmp   n101_var_α
n100_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_coerce_numeric_α
n102_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx326_1
                        cmp              eax, 3;                              jne   .Lx326_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx326_0
.Lx326_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_coerce_numeric_α
.Lx326_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_coerce_numeric_α
n103_coerce_numeric_β:  add              rsp, 16;                             jmp   n102_var_β
#-----------------------------------------------------------------------------------------------------------------------
n104_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx328_1
                        cmp              eax, 3;                              jne   .Lx328_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx328_0
.Lx328_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_cmp_test_α
.Lx328_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_cmp_test_α
n104_coerce_numeric_β:  add              rsp, 16;                             jmp   n103_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n105_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx330_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx330_239
                        add              rsp, 16;                             jmp   n104_coerce_numeric_β
.Lx330_239:                                                                   jmp   n106_var_α
.Lx330_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx330_240
                        add              rsp, 16;                             jmp   n104_coerce_numeric_β
.Lx330_240:                                                                   jmp   n106_var_α
n105_cmp_test_β:        add              rsp, 16;                             jmp   n104_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_integer_α
n106_var_β:             add              rsp, 16;                             jmp   n105_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_binop_α
n107_lit_integer_β:     add              rsp, 16;                             jmp   n106_var_β
.Lx332_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx333_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx333_7
.Lx333_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx333_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx333_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx333_4
.Lx333_3:               movq             xmm0, rsi
.Lx333_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx333_7:                                                                     jmp   n109_assign_α
.Lx333_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx333_240
                        add              rsp, 16;                             jmp   n107_lit_integer_β
.Lx333_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZK
                        mov              qword ptr [r9 + 120], rdx;           jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   add              rsp, 128;                            jmp   n86_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 23, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_call_α
n111_statement_begin_β:                                                       jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd340:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd340]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx339_240
                        add              rsp, 16;                             jmp   n111_statement_begin_β
.Lx339_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_assign_α
n112_call_β:            add              rsp, 16;                             jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   add              rsp, 16;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α:                                                       jmp   n116_var_α
n115_statement_begin_β:                                                       jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_binop_α
n117_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx348_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx348_7
.Lx348_2:               and              edx, 1;                              jz    .Lx348_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx348_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx348_4
.Lx348_3:               movq             xmm0, rsi
.Lx348_4:               cmp              ecx, 5;                              je    .Lx348_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx348_6
.Lx348_5:               movq             xmm1, rdi
.Lx348_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx348_7:                                                                     jmp   n119_assign_α
.Lx348_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx348_240
                        add              rsp, 16;                             jmp   n117_var_β
.Lx348_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZD
                        mov              qword ptr [r9 + 168], rdx;           jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   add              rsp, 48;                             jmp   n121_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:                                                       jmp   n122_lit_integer_α
n121_statement_begin_β:                                                       jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_assign_α
.Lx354_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   add              rsp, 16;                             jmp   n125_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 26, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α:                                                       jmp   n126_var_α
n125_statement_begin_β:                                                       jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_call_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig362z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig362z:              .quad            1
                        .quad            .Lx362_2
                        .quad            .Lx362_2
                        .quad            16
.Lx362_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx362_29
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
.Lx362_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx362_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
.Lx362_240:                                                                   jmp   n128_statement_end_α
n127_call_β:                                                                  jmp   n125_statement_begin_β
.Lx362_0:               .quad            .Lx362_0_s
.Lx362_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 32;                             jmp   n129_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:                                                       jmp   n130_var_α
n129_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_binop_α
n131_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx369_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx369_7
.Lx369_2:               and              edx, 1;                              jz    .Lx369_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx369_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx369_4
.Lx369_3:               movq             xmm0, rsi
.Lx369_4:               cmp              ecx, 5;                              je    .Lx369_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx369_6
.Lx369_5:               movq             xmm1, rdi
.Lx369_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx369_7:                                                                     jmp   n133_assign_α
.Lx369_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx369_240
                        add              rsp, 16;                             jmp   n131_var_β
.Lx369_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 48;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_call_α
n135_statement_begin_β:                                                       jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd376:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd376]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx375_240
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx375_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_var_α
n136_call_β:            add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZD
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_coerce_numeric_α
n137_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n138_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx379_1
                        cmp              eax, 3;                              jne   .Lx379_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx379_0
.Lx379_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_coerce_numeric_α
.Lx379_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_coerce_numeric_α
n138_coerce_numeric_β:  add              rsp, 16;                             jmp   n137_var_β
#-----------------------------------------------------------------------------------------------------------------------
n139_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx381_1
                        cmp              eax, 3;                              jne   .Lx381_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx381_0
.Lx381_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_cmp_test_α
.Lx381_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_cmp_test_α
n139_coerce_numeric_β:  add              rsp, 16;                             jmp   n138_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n140_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx383_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx383_239
                        add              rsp, 16;                             jmp   n139_coerce_numeric_β
.Lx383_239:                                                                   jmp   n141_statement_end_α
.Lx383_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx383_240
                        add              rsp, 16;                             jmp   n139_coerce_numeric_β
.Lx383_240:                                                                   jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 80;                             jmp   n125_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                                       jmp   n143_call_α
n142_statement_begin_β:                                                       jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd389:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd389]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx388_240
                        add              rsp, 16;                             jmp   n142_statement_begin_β
.Lx388_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_var_α
n143_call_β:            add              rsp, 16;                             jmp   n142_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_binop_α
n144_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx391_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx391_7
.Lx391_2:               and              edx, 1;                              jz    .Lx391_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx391_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx391_4
.Lx391_3:               movq             xmm0, rsi
.Lx391_4:               cmp              ecx, 5;                              je    .Lx391_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx391_6
.Lx391_5:               movq             xmm1, rdi
.Lx391_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx391_7:                                                                     jmp   n146_assign_α
.Lx391_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx391_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lx391_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n147_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   add              rsp, 48;                             jmp   n148_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:                                                       jmp   n149_lit_string_α
n148_statement_begin_β:                                                       jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_var_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_binop_α
n150_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n148_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n153_statement_end_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   add              rsp, 48;                             jmp   n154_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:                                                       jmp   n155_lit_string_α
n154_statement_begin_β:                                                       jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_var_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_binop_α
n156_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n154_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_statement_end_α
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 48;                             jmp   n160_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α:                                                       jmp   n161_lit_string_α
n160_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_var_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_lit_integer_α
n162_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_binop_α
n163_lit_integer_β:     add              rsp, 16;                             jmp   n162_var_β
.Lx415_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx416_240
                        add              rsp, 16;                             jmp   n163_lit_integer_β
.Lx416_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n165_binop_α
n164_binop_β:           add              rsp, 16;                             jmp   n163_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n165_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n166_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_statement_end_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
