                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
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
.Lgvan9:                .string          "fixed_n"
.Lgvan10:               .string          "ZK"
.Lgvan11:               .string          "ZT"
.Lgvan12:               .string          "ZE"
.Lgvan13:               .string          "ZD"
.Lgvan14:               .string          "ZN"
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
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx287_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx288_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx288_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx288_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx293_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx294_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx294_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx294_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx299_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx301_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx301_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx301_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx301_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx306_0:               .quad            20
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
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx312_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx318_0:               .quad            20
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
n26_define_α:           mov              rdi, qword ptr [rip + .Lx325_0]
                        mov              rsi, qword ptr [rip + .Lx325_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx325_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "ZBODY"
.Lx325_1:               .quad            .Lx325_1_s
.Lx325_1_s:             .string          "ZKN"
                                                                              jmp   .Lx326_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx326_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx326_41
.Lx326_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx326_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx326_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx326_110
.Lx326_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx326_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx326_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx326_180
.Lx326_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx326_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx326_245:
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
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx331_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Lx337_0:               .quad            512
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd339:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd339]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx338_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx338_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx345_0:               .quad            1
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
                        cmp              al, 104;                             jne   .Lx353_240
                        add              rsp, 16;                             jmp   n43_var_β
.Lx353_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_binop_α
n46_lit_integer_β:      add              rsp, 16;                             jmp   n45_var_β
.Lx355_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx356_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx356_7
.Lx356_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx356_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx356_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx356_4
.Lx356_3:               movq             xmm0, rsi
.Lx356_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx356_7:                                                                     jmp   n48_assign_var_α
.Lx356_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx356_240
                        add              rsp, 16;                             jmp   n46_lit_integer_β
.Lx356_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        cmp              al, 104;                             jne   .Lx357_240
                        add              rsp, 16;                             jmp   n47_binop_β
.Lx357_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_coerce_numeric_α
n52_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lx363_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx365_1
                        cmp              al, 3;                               jne   .Lx365_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx365_0
.Lx365_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_coerce_numeric_α
.Lx365_0:               lea              rdi, [rsp + 32]
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
                        cmp              al, 5;                               je    .Lx367_1
                        cmp              al, 3;                               jne   .Lx367_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx367_0
.Lx367_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_cmp_test_α
.Lx367_0:               lea              rdi, [rsp + 32]
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
                        cmp              dl, 3;                               jne   .Lx369_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx369_239
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lx369_239:                                                                   jmp   n56_var_α
.Lx369_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx369_240
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lx369_240:                                                                   jmp   n56_var_α
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
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_binop_α
n57_lit_integer_β:      add              rsp, 16;                             jmp   n56_var_β
.Lx371_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx372_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx372_7
.Lx372_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx372_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx372_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx372_4
.Lx372_3:               movq             xmm0, rsi
.Lx372_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx372_7:                                                                     jmp   n59_assign_α
.Lx372_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx372_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lx372_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx378_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx384_0:               .quad            1
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
                        cmp              al, 104;                             jne   .Lx393_240
                        add              rsp, 16;                             jmp   n72_var_β
.Lx393_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        cmp              al, 104;                             jne   .Lx394_240
                        add              rsp, 16;                             jmp   n73_subscript_β
.Lx394_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_binop_α
n74_deref_β:            add              rsp, 16;                             jmp   n73_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx395_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx395_7
.Lx395_2:               and              edx, 1;                              jz    .Lx395_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx395_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx395_4
.Lx395_3:               movq             xmm0, rsi
.Lx395_4:               cmp              cl, 5;                               je    .Lx395_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx395_6
.Lx395_5:               movq             xmm1, rdi
.Lx395_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx395_7:                                                                     jmp   n76_assign_α
.Lx395_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx395_240
                        add              rsp, 16;                             jmp   n74_deref_β
.Lx395_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_coerce_numeric_α
n80_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Lx402_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx404_1
                        cmp              al, 3;                               jne   .Lx404_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx404_0
.Lx404_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_coerce_numeric_α
.Lx404_0:               lea              rdi, [rsp + 32]
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
                        cmp              al, 5;                               je    .Lx406_1
                        cmp              al, 3;                               jne   .Lx406_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx406_0
.Lx406_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_cmp_test_α
.Lx406_0:               lea              rdi, [rsp + 32]
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
                        cmp              dl, 3;                               jne   .Lx408_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx408_239
                        add              rsp, 16;                             jmp   n82_coerce_numeric_β
.Lx408_239:                                                                   jmp   n84_var_α
.Lx408_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx408_240
                        add              rsp, 16;                             jmp   n82_coerce_numeric_β
.Lx408_240:                                                                   jmp   n84_var_α
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
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_binop_α
n85_lit_integer_β:      add              rsp, 16;                             jmp   n84_var_β
.Lx410_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx411_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx411_7
.Lx411_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx411_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx411_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx411_4
.Lx411_3:               movq             xmm0, rsi
.Lx411_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx411_7:                                                                     jmp   n87_assign_α
.Lx411_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx411_240
                        add              rsp, 16;                             jmp   n85_lit_integer_β
.Lx411_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        cmp              al, 5;                               je    .Lx420_1
                        cmp              al, 3;                               jne   .Lx420_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx420_0
.Lx420_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_coerce_numeric_α
.Lx420_0:               lea              rdi, [rsp + 32]
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
                        cmp              al, 5;                               je    .Lx422_1
                        cmp              al, 3;                               jne   .Lx422_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx422_0
.Lx422_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_cmp_test_α
.Lx422_0:               lea              rdi, [rsp + 32]
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
                        cmp              dl, 3;                               jne   .Lx424_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx424_239
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lx424_239:                                                                   jmp   n95_var_α
.Lx424_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx424_240
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lx424_240:                                                                   jmp   n95_var_α
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
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_binop_α
n96_lit_integer_β:      add              rsp, 16;                             jmp   n95_var_β
.Lx426_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx427_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx427_7
.Lx427_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx427_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx427_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx427_4
.Lx427_3:               movq             xmm0, rsi
.Lx427_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx427_7:                                                                     jmp   n98_assign_α
.Lx427_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx427_240
                        add              rsp, 16;                             jmp   n96_lit_integer_β
.Lx427_240:             mov              qword ptr [rsp + 0], rax             # result
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
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:                                                       jmp   n107_lit_string_α
n106_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_var_α
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "check: "
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
                        lea              rcx, [rip + .Lsig446z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig446z:              .quad            1
                        .quad            .Lx446_2
                        .quad            .Lx446_2
                        .quad            16
.Lx446_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx446_29
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
.Lx446_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx446_240
                        add              rsp, 16;                             jmp   n108_var_β
.Lx446_240:                                                                   jmp   n110_binop_α
n109_call_β:                                                                  jmp   n108_var_β
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "ZBODY"
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
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_statement_end_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   add              rsp, 64;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx453_240
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lx453_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_assign_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # fixed_n
                        mov              qword ptr [r9 + 152], rdx;           jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   add              rsp, 16;                             jmp   n220_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_var_α
n117_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx460_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx461_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx461_7
.Lx461_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx461_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx461_4
.Lx461_3:               movq             xmm0, rsi
.Lx461_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx461_7:                                                                     jmp   n121_assign_α
.Lx461_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx461_240
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lx461_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 48;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_var_α
n123_statement_begin_β:                                                       jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_binop_α
n125_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
.Lx468_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx469_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx469_7
.Lx469_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx469_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx469_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx469_4
.Lx469_3:               movq             xmm0, rsi
.Lx469_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx469_7:                                                                     jmp   n127_assign_α
.Lx469_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx469_240
                        add              rsp, 16;                             jmp   n125_lit_integer_β
.Lx469_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 48;                             jmp   n129_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:                                                       jmp   n130_var_α
n129_statement_begin_β:                                                       jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_differ_α
n131_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n132_differ_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx478_240
                        add              rsp, 16;                             jmp   n131_lit_string_β
.Lx478_240:                                                                   jmp   n133_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   add              rsp, 48;                             jmp   n163_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α:                                                       jmp   n135_lit_integer_α
n134_statement_begin_β:                                                       jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_assign_α
.Lx483_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 16;                             jmp   n138_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:                                                       jmp   n139_call_α
n138_statement_begin_β:                                                       jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd490:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd490]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx489_240
                        add              rsp, 16;                             jmp   n138_statement_begin_β
.Lx489_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_assign_α
n139_call_β:            add              rsp, 16;                             jmp   n138_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 16;                             jmp   n142_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                                       jmp   n143_var_α
n142_statement_begin_β:                                                       jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_call_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig498z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig498z:              .quad            1
                        .quad            .Lx498_2
                        .quad            .Lx498_2
                        .quad            16
.Lx498_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx498_29
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
.Lx498_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx498_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
.Lx498_240:                                                                   jmp   n145_statement_end_α
n144_call_β:                                                                  jmp   n142_statement_begin_β
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   add              rsp, 32;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:                                                       jmp   n147_call_α
n146_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd504:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd504]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx503_240
                        add              rsp, 16;                             jmp   n146_statement_begin_β
.Lx503_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
n147_call_β:            add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_binop_α
n148_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx506_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx506_7
.Lx506_2:               and              edx, 1;                              jz    .Lx506_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx506_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx506_4
.Lx506_3:               movq             xmm0, rsi
.Lx506_4:               cmp              cl, 5;                               je    .Lx506_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx506_6
.Lx506_5:               movq             xmm1, rdi
.Lx506_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx506_7:                                                                     jmp   n150_assign_α
.Lx506_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx506_240
                        add              rsp, 16;                             jmp   n148_var_β
.Lx506_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 48;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_var_α
n152_statement_begin_β:                                                       jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_coerce_numeric_α
n154_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx515_1
                        cmp              al, 3;                               jne   .Lx515_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx515_0
.Lx515_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_coerce_numeric_α
.Lx515_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_coerce_numeric_α
n155_coerce_numeric_β:  add              rsp, 16;                             jmp   n154_var_β
#-----------------------------------------------------------------------------------------------------------------------
n156_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx517_1
                        cmp              al, 3;                               jne   .Lx517_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx517_0
.Lx517_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_cmp_test_α
.Lx517_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n157_cmp_test_α
n156_coerce_numeric_β:  add              rsp, 16;                             jmp   n155_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n157_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx519_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx519_239
                        add              rsp, 16;                             jmp   n156_coerce_numeric_β
.Lx519_239:                                                                   jmp   n158_var_α
.Lx519_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx519_240
                        add              rsp, 16;                             jmp   n156_coerce_numeric_β
.Lx519_240:                                                                   jmp   n158_var_α
n157_cmp_test_β:        add              rsp, 16;                             jmp   n156_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_lit_integer_α
n158_var_β:             add              rsp, 16;                             jmp   n157_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_binop_α
n159_lit_integer_β:     add              rsp, 16;                             jmp   n158_var_β
.Lx521_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx522_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx522_7
.Lx522_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx522_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx522_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx522_4
.Lx522_3:               movq             xmm0, rsi
.Lx522_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx522_7:                                                                     jmp   n161_assign_α
.Lx522_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx522_240
                        add              rsp, 16;                             jmp   n159_lit_integer_β
.Lx522_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 128;                            jmp   n138_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:                                                       jmp   n164_call_α
n163_statement_begin_β:                                                       jmp   n167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd529:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd529]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx528_240
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Lx528_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_assign_α
n164_call_β:            add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   add              rsp, 16;                             jmp   n167_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:                                                       jmp   n168_var_α
n167_statement_begin_β:                                                       jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_binop_α
n169_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx537_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx537_7
.Lx537_2:               and              edx, 1;                              jz    .Lx537_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
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
.Lx537_7:                                                                     jmp   n171_assign_α
.Lx537_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx537_240
                        add              rsp, 16;                             jmp   n169_var_β
.Lx537_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZD
                        mov              qword ptr [r9 + 216], rdx;           jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   add              rsp, 48;                             jmp   n173_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:                                                       jmp   n174_lit_integer_α
n173_statement_begin_β:                                                       jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_assign_α
.Lx543_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n176_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 16;                             jmp   n177_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:                                                       jmp   n178_var_α
n177_statement_begin_β:                                                       jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_call_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig551z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig551z:              .quad            1
                        .quad            .Lx551_2
                        .quad            .Lx551_2
                        .quad            16
.Lx551_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx551_29
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
.Lx551_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx551_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lx551_240:                                                                   jmp   n180_statement_end_α
n179_call_β:                                                                  jmp   n177_statement_begin_β
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   add              rsp, 32;                             jmp   n181_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α:                                                       jmp   n182_var_α
n181_statement_begin_β:                                                       jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_binop_α
n183_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx558_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx558_7
.Lx558_2:               and              edx, 1;                              jz    .Lx558_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx558_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx558_4
.Lx558_3:               movq             xmm0, rsi
.Lx558_4:               cmp              cl, 5;                               je    .Lx558_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx558_6
.Lx558_5:               movq             xmm1, rdi
.Lx558_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx558_7:                                                                     jmp   n185_assign_α
.Lx558_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx558_240
                        add              rsp, 16;                             jmp   n183_var_β
.Lx558_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   add              rsp, 48;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:                                                       jmp   n188_call_α
n187_statement_begin_β:                                                       jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd565:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd565]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx564_240
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Lx564_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_var_α
n188_call_β:            add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZD
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_coerce_numeric_α
n189_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx568_1
                        cmp              al, 3;                               jne   .Lx568_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx568_0
.Lx568_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_coerce_numeric_α
.Lx568_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_coerce_numeric_α
n190_coerce_numeric_β:  add              rsp, 16;                             jmp   n189_var_β
#-----------------------------------------------------------------------------------------------------------------------
n191_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx570_1
                        cmp              al, 3;                               jne   .Lx570_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx570_0
.Lx570_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_cmp_test_α
.Lx570_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n192_cmp_test_α
n191_coerce_numeric_β:  add              rsp, 16;                             jmp   n190_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n192_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx572_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx572_239
                        add              rsp, 16;                             jmp   n191_coerce_numeric_β
.Lx572_239:                                                                   jmp   n193_statement_end_α
.Lx572_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx572_240
                        add              rsp, 16;                             jmp   n191_coerce_numeric_β
.Lx572_240:                                                                   jmp   n193_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:   add              rsp, 80;                             jmp   n177_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:                                                       jmp   n195_call_α
n194_statement_begin_β:                                                       jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd578:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd578]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx577_240
                        add              rsp, 16;                             jmp   n194_statement_begin_β
.Lx577_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_var_α
n195_call_β:            add              rsp, 16;                             jmp   n194_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_binop_α
n196_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n194_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx580_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx580_7
.Lx580_2:               and              edx, 1;                              jz    .Lx580_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx580_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx580_4
.Lx580_3:               movq             xmm0, rsi
.Lx580_4:               cmp              cl, 5;                               je    .Lx580_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx580_6
.Lx580_5:               movq             xmm1, rdi
.Lx580_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx580_7:                                                                     jmp   n198_assign_α
.Lx580_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx580_240
                        add              rsp, 16;                             jmp   n196_var_β
.Lx580_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n198_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n199_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   add              rsp, 48;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α:                                                       jmp   n201_lit_string_α
n200_statement_begin_β:                                                       jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_var_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_binop_α
n202_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_statement_end_α
.Lx589_0:               .quad            .Lx589_0_s
.Lx589_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   add              rsp, 48;                             jmp   n206_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α:                                                       jmp   n207_lit_string_α
n206_statement_begin_β:                                                       jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_var_α
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_binop_α
n208_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_statement_end_α
.Lx597_0:               .quad            .Lx597_0_s
.Lx597_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   add              rsp, 48;                             jmp   n212_statement_begin_α
#=======================================================================================================================
#         <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α:                                                       jmp   n213_lit_string_α
n212_statement_begin_β:                                                       jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_var_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_lit_integer_α
n214_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_binop_α
n215_lit_integer_β:     add              rsp, 16;                             jmp   n214_var_β
.Lx604_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx605_240
                        add              rsp, 16;                             jmp   n215_lit_integer_β
.Lx605_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n217_binop_α
n216_binop_β:           add              rsp, 16;                             jmp   n215_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n218_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_statement_end_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   add              rsp, 80;                             jmp   n280_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_begin_α:                                                       jmp   n221_var_α
n220_statement_begin_β:                                                       jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n223_differ_α
n222_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n220_statement_begin_β
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n223_differ_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx615_240
                        add              rsp, 16;                             jmp   n222_lit_string_β
.Lx615_240:                                                                   jmp   n224_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   add              rsp, 48;                             jmp   n229_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α:                                                       jmp   n226_var_α
n225_statement_begin_β:                                                       jmp   n229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # fixed_n
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n228_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:   add              rsp, 16;                             jmp   n229_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_begin_α:                                                       jmp   n230_call_α
n229_statement_begin_β:                                                       jmp   n233_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:            sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx626_240
                        add              rsp, 16;                             jmp   n229_statement_begin_β
.Lx626_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_assign_α
n230_call_β:            add              rsp, 16;                             jmp   n229_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n232_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   add              rsp, 16;                             jmp   n233_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α:                                                       jmp   n234_lit_integer_α
n233_statement_begin_β:                                                       jmp   n237_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_assign_α
.Lx633_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n236_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:   add              rsp, 16;                             jmp   n237_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_begin_α:                                                       jmp   n238_var_α
n237_statement_begin_β:                                                       jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_call_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig641z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig641z:              .quad            1
                        .quad            .Lx641_2
                        .quad            .Lx641_2
                        .quad            16
.Lx641_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx641_29
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
.Lx641_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx641_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n237_statement_begin_β
.Lx641_240:                                                                   jmp   n240_statement_end_α
n239_call_β:                                                                  jmp   n237_statement_begin_β
.Lx641_0:               .quad            .Lx641_0_s
.Lx641_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_end_α:   add              rsp, 32;                             jmp   n241_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α:                                                       jmp   n242_var_α
n241_statement_begin_β:                                                       jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_binop_α
n243_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n241_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx648_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx648_7
.Lx648_2:               and              edx, 1;                              jz    .Lx648_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx648_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx648_4
.Lx648_3:               movq             xmm0, rsi
.Lx648_4:               cmp              cl, 5;                               je    .Lx648_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx648_6
.Lx648_5:               movq             xmm1, rdi
.Lx648_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx648_7:                                                                     jmp   n245_assign_α
.Lx648_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx648_240
                        add              rsp, 16;                             jmp   n243_var_β
.Lx648_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n246_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   add              rsp, 48;                             jmp   n247_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α:                                                       jmp   n248_var_α
n247_statement_begin_β:                                                       jmp   n254_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # fixed_n
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_coerce_numeric_α
n249_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx657_1
                        cmp              al, 3;                               jne   .Lx657_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx657_0
.Lx657_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n251_coerce_numeric_α
.Lx657_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n251_coerce_numeric_α
n250_coerce_numeric_β:  add              rsp, 16;                             jmp   n249_var_β
#-----------------------------------------------------------------------------------------------------------------------
n251_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx659_1
                        cmp              al, 3;                               jne   .Lx659_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx659_0
.Lx659_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_cmp_test_α
.Lx659_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n252_cmp_test_α
n251_coerce_numeric_β:  add              rsp, 16;                             jmp   n250_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n252_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx661_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx661_239
                        add              rsp, 16;                             jmp   n251_coerce_numeric_β
.Lx661_239:                                                                   jmp   n253_statement_end_α
.Lx661_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx661_240
                        add              rsp, 16;                             jmp   n251_coerce_numeric_β
.Lx661_240:                                                                   jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   add              rsp, 80;                             jmp   n237_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α:                                                       jmp   n255_call_α
n254_statement_begin_β:                                                       jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n254_statement_begin_β
.Lx666_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
n255_call_β:            add              rsp, 16;                             jmp   n254_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_binop_α
n256_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n254_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx669_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx669_7
.Lx669_2:               and              edx, 1;                              jz    .Lx669_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx669_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx669_4
.Lx669_3:               movq             xmm0, rsi
.Lx669_4:               cmp              cl, 5;                               je    .Lx669_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx669_6
.Lx669_5:               movq             xmm1, rdi
.Lx669_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx669_7:                                                                     jmp   n258_assign_α
.Lx669_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx669_240
                        add              rsp, 16;                             jmp   n256_var_β
.Lx669_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n258_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n259_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   add              rsp, 48;                             jmp   n260_statement_begin_α
#=======================================================================================================================
#         <stmt 48, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α:                                                       jmp   n261_lit_string_α
n260_statement_begin_β:                                                       jmp   n266_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_var_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_binop_α
n262_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n264_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n265_statement_end_α
.Lx678_0:               .quad            .Lx678_0_s
.Lx678_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   add              rsp, 48;                             jmp   n266_statement_begin_α
#=======================================================================================================================
#         <stmt 49, line 99: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_begin_α:                                                       jmp   n267_lit_string_α
n266_statement_begin_β:                                                       jmp   n272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_var_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_binop_α
n268_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n266_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n269_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n270_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_statement_end_α
.Lx686_0:               .quad            .Lx686_0_s
.Lx686_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   add              rsp, 48;                             jmp   n272_statement_begin_α
#=======================================================================================================================
#         <stmt 50, line 100: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α:                                                       jmp   n273_lit_string_α
n272_statement_begin_β:                                                       jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_var_α
.Lx691_0:               .quad            .Lx691_0_s
.Lx691_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_lit_integer_α
n274_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n272_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n276_binop_α
n275_lit_integer_β:     add              rsp, 16;                             jmp   n274_var_β
.Lx693_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n276_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx694_240
                        add              rsp, 16;                             jmp   n275_lit_integer_β
.Lx694_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n277_binop_α
n276_binop_β:           add              rsp, 16;                             jmp   n275_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n278_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n279_statement_end_α
.Lx696_0:               .quad            .Lx696_0_s
.Lx696_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:   add              rsp, 80;                             jmp   n280_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 51, line 101: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α:                                                       jmp   n281_var_α
n280_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n283_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
