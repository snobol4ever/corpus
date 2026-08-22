                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 13
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 13
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
.Lgvan5:                .string          "ZK"
.Lgvan6:                .string          "S"
.Lgvan7:                .string          "ZI"
.Lgvan8:                .string          "fixed_n"
.Lgvan9:                .string          "ZT"
.Lgvan10:               .string          "ZE"
.Lgvan11:               .string          "ZD"
.Lgvan12:               .string          "ZN"
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
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx245_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx246_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx246_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx246_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx251_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx252_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx252_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx252_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx257_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx259_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx259_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx259_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx259_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx264_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx270_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx276_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         ZK = 20000
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_lit_integer_α
n25_statement_begin_β:                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx282_0:               .quad            20000
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:                                                        jmp   n30_define_α
n29_statement_begin_β:                                                        jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_define_α:           mov              rdi, qword ptr [rip + .Lx289_0]
                        mov              rsi, qword ptr [rip + .Lx289_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n32_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx289_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_statement_end_α
n30_define_β:                                                                 jmp   n29_statement_begin_β
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "ZBODY"
.Lx289_1:               .quad            .Lx289_1_s
.Lx289_1_s:             .string          "ZKN"
                                                                              jmp   .Lx290_245
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
                        cmp              rdx, 0;                              jbe   .Lx290_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx290_41
.Lx290_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx290_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n32_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx290_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx290_110
.Lx290_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx290_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx290_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx290_180
.Lx290_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx290_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx290_245:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:                                                          jmp   n62_statement_begin_α
#=======================================================================================================================
# ZBODY   S = ''
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_string_α
n32_statement_begin_β:                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:                                                        jmp   n37_lit_integer_α
n36_statement_begin_β:                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_assign_α
.Lx301_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    add              rsp, 16;                             jmp   n40_statement_begin_α
#=======================================================================================================================
# ZBL     S = S 'x'
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_var_α
n40_statement_begin_β:                                                        jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_binop_α
n42_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    add              rsp, 48;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:                                                        jmp   n47_var_α
n46_statement_begin_β:                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_coerce_numeric_α
n48_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx318_1
                        cmp              al, 3;                               jne   .Lx318_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx318_0
.Lx318_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_coerce_numeric_α
.Lx318_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_coerce_numeric_α
n49_coerce_numeric_β:   add              rsp, 16;                             jmp   n48_var_β
#-----------------------------------------------------------------------------------------------------------------------
n50_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx320_1
                        cmp              al, 3;                               jne   .Lx320_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx320_0
.Lx320_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_cmp_test_α
.Lx320_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_cmp_test_α
n50_coerce_numeric_β:   add              rsp, 16;                             jmp   n49_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n51_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx322_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx322_239
                        add              rsp, 16;                             jmp   n50_coerce_numeric_β
.Lx322_239:                                                                   jmp   n52_var_α
.Lx322_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx322_240
                        add              rsp, 16;                             jmp   n50_coerce_numeric_β
.Lx322_240:                                                                   jmp   n52_var_α
n51_cmp_test_β:         add              rsp, 16;                             jmp   n50_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_integer_α
n52_var_β:              add              rsp, 16;                             jmp   n51_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_integer_β:      add              rsp, 16;                             jmp   n52_var_β
.Lx324_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx325_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx325_7
.Lx325_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx325_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx325_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx325_4
.Lx325_3:               movq             xmm0, rsi
.Lx325_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx325_7:                                                                     jmp   n55_assign_α
.Lx325_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx325_240
                        add              rsp, 16;                             jmp   n53_lit_integer_β
.Lx325_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 128;                            jmp   n40_statement_begin_α
#=======================================================================================================================
#         ZBODY = SIZE(S)                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_var_α
n57_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_call_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd333:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd333]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx332_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
.Lx332_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
n59_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:                                                        jmp   n63_statement_end_α
n62_statement_begin_β:                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:                                                          jmp   n64_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:                                                        jmp   n65_lit_string_α
n64_statement_begin_β:                                                        jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_var_α
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_call_α
n66_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig346z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig346z:              .quad            1
                        .quad            .Lx346_2
                        .quad            .Lx346_2
                        .quad            16
.Lx346_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx346_29
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
.Lx346_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx346_240
                        add              rsp, 16;                             jmp   n66_var_β
.Lx346_240:                                                                   jmp   n68_binop_α
n67_call_β:                                                                   jmp   n66_var_β
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_statement_end_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    add              rsp, 64;                             jmp   n71_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:                                                        jmp   n72_var_α
n71_statement_begin_β:                                                        jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx353_240
                        add              rsp, 16;                             jmp   n71_statement_begin_β
.Lx353_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # fixed_n
                        mov              qword ptr [r9 + 136], rdx;           jmp   n74_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    add              rsp, 16;                             jmp   n178_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:                                                        jmp   n76_var_α
n75_statement_begin_β:                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Lx360_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx361_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx361_7
.Lx361_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx361_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx361_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx361_4
.Lx361_3:               movq             xmm0, rsi
.Lx361_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx361_7:                                                                     jmp   n79_assign_α
.Lx361_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx361_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lx361_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    add              rsp, 48;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:                                                        jmp   n82_var_α
n81_statement_begin_β:                                                        jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_binop_α
n83_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx368_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx369_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx369_7
.Lx369_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx369_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx369_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx369_4
.Lx369_3:               movq             xmm0, rsi
.Lx369_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx369_7:                                                                     jmp   n85_assign_α
.Lx369_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx369_240
                        add              rsp, 16;                             jmp   n83_lit_integer_β
.Lx369_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    add              rsp, 48;                             jmp   n87_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:                                                        jmp   n88_var_α
n87_statement_begin_β:                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_differ_α
n89_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n90_differ_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx378_240
                        add              rsp, 16;                             jmp   n89_lit_string_β
.Lx378_240:                                                                   jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    add              rsp, 48;                             jmp   n121_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:                                                        jmp   n93_lit_integer_α
n92_statement_begin_β:                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_assign_α
.Lx383_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    add              rsp, 16;                             jmp   n96_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 21, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:                                                        jmp   n97_call_α
n96_statement_begin_β:                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd390:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd390]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx389_240
                        add              rsp, 16;                             jmp   n96_statement_begin_β
.Lx389_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_assign_α
n97_call_β:             add              rsp, 16;                             jmp   n96_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    add              rsp, 16;                             jmp   n100_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:                                                       jmp   n101_var_α
n100_statement_begin_β:                                                       jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_call_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig398z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig398z:              .quad            1
                        .quad            .Lx398_2
                        .quad            .Lx398_2
                        .quad            16
.Lx398_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx398_29
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
.Lx398_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx398_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
.Lx398_240:                                                                   jmp   n103_statement_end_α
n102_call_β:                                                                  jmp   n100_statement_begin_β
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   add              rsp, 32;                             jmp   n104_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:                                                       jmp   n105_call_α
n104_statement_begin_β:                                                       jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd404:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd404]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx403_240
                        add              rsp, 16;                             jmp   n104_statement_begin_β
.Lx403_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_var_α
n105_call_β:            add              rsp, 16;                             jmp   n104_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_binop_α
n106_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx406_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx406_7
.Lx406_2:               and              edx, 1;                              jz    .Lx406_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx406_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx406_4
.Lx406_3:               movq             xmm0, rsi
.Lx406_4:               cmp              cl, 5;                               je    .Lx406_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx406_6
.Lx406_5:               movq             xmm1, rdi
.Lx406_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx406_7:                                                                     jmp   n108_assign_α
.Lx406_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx406_240
                        add              rsp, 16;                             jmp   n106_var_β
.Lx406_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   add              rsp, 48;                             jmp   n110_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:                                                       jmp   n111_var_α
n110_statement_begin_β:                                                       jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_coerce_numeric_α
n112_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx415_1
                        cmp              al, 3;                               jne   .Lx415_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx415_0
.Lx415_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_coerce_numeric_α
.Lx415_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_coerce_numeric_α
n113_coerce_numeric_β:  add              rsp, 16;                             jmp   n112_var_β
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx417_1
                        cmp              al, 3;                               jne   .Lx417_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx417_0
.Lx417_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_cmp_test_α
.Lx417_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_cmp_test_α
n114_coerce_numeric_β:  add              rsp, 16;                             jmp   n113_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n115_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx419_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx419_239
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lx419_239:                                                                   jmp   n116_var_α
.Lx419_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx419_240
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lx419_240:                                                                   jmp   n116_var_α
n115_cmp_test_β:        add              rsp, 16;                             jmp   n114_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_integer_α
n116_var_β:             add              rsp, 16;                             jmp   n115_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_binop_α
n117_lit_integer_β:     add              rsp, 16;                             jmp   n116_var_β
.Lx421_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx422_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx422_7
.Lx422_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx422_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx422_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx422_4
.Lx422_3:               movq             xmm0, rsi
.Lx422_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx422_7:                                                                     jmp   n119_assign_α
.Lx422_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx422_240
                        add              rsp, 16;                             jmp   n117_lit_integer_β
.Lx422_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   add              rsp, 128;                            jmp   n96_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 25, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:                                                       jmp   n122_call_α
n121_statement_begin_β:                                                       jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd429:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd429]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx428_240
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Lx428_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_assign_α
n122_call_β:            add              rsp, 16;                             jmp   n121_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   add              rsp, 16;                             jmp   n125_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α:                                                       jmp   n126_var_α
n125_statement_begin_β:                                                       jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_binop_α
n127_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx437_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx437_7
.Lx437_2:               and              edx, 1;                              jz    .Lx437_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx437_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx437_4
.Lx437_3:               movq             xmm0, rsi
.Lx437_4:               cmp              cl, 5;                               je    .Lx437_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx437_6
.Lx437_5:               movq             xmm1, rdi
.Lx437_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx437_7:                                                                     jmp   n129_assign_α
.Lx437_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx437_240
                        add              rsp, 16;                             jmp   n127_var_β
.Lx437_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n129_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZD
                        mov              qword ptr [r9 + 184], rdx;           jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 48;                             jmp   n131_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:                                                       jmp   n132_lit_integer_α
n131_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_assign_α
.Lx443_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 16;                             jmp   n135_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 28, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_var_α
n135_statement_begin_β:                                                       jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_call_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig451z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig451z:              .quad            1
                        .quad            .Lx451_2
                        .quad            .Lx451_2
                        .quad            16
.Lx451_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx451_29
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
.Lx451_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx451_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx451_240:                                                                   jmp   n138_statement_end_α
n137_call_β:                                                                  jmp   n135_statement_begin_β
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   add              rsp, 32;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α:                                                       jmp   n140_var_α
n139_statement_begin_β:                                                       jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_binop_α
n141_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx458_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx458_7
.Lx458_2:               and              edx, 1;                              jz    .Lx458_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx458_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx458_4
.Lx458_3:               movq             xmm0, rsi
.Lx458_4:               cmp              cl, 5;                               je    .Lx458_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx458_6
.Lx458_5:               movq             xmm1, rdi
.Lx458_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx458_7:                                                                     jmp   n143_assign_α
.Lx458_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx458_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx458_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   add              rsp, 48;                             jmp   n145_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:                                                       jmp   n146_call_α
n145_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd465:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd465]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx464_240
                        add              rsp, 16;                             jmp   n145_statement_begin_β
.Lx464_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
n146_call_β:            add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZD
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_coerce_numeric_α
n147_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx468_1
                        cmp              al, 3;                               jne   .Lx468_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx468_0
.Lx468_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_coerce_numeric_α
.Lx468_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_coerce_numeric_α
n148_coerce_numeric_β:  add              rsp, 16;                             jmp   n147_var_β
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx470_1
                        cmp              al, 3;                               jne   .Lx470_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx470_0
.Lx470_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_cmp_test_α
.Lx470_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_cmp_test_α
n149_coerce_numeric_β:  add              rsp, 16;                             jmp   n148_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n150_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx472_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx472_239
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
.Lx472_239:                                                                   jmp   n151_statement_end_α
.Lx472_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx472_240
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
.Lx472_240:                                                                   jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 80;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_call_α
n152_statement_begin_β:                                                       jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd478:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd478]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx477_240
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Lx477_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
n153_call_β:            add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_binop_α
n154_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx480_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx480_7
.Lx480_2:               and              edx, 1;                              jz    .Lx480_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx480_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx480_4
.Lx480_3:               movq             xmm0, rsi
.Lx480_4:               cmp              cl, 5;                               je    .Lx480_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx480_6
.Lx480_5:               movq             xmm1, rdi
.Lx480_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx480_7:                                                                     jmp   n156_assign_α
.Lx480_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx480_240
                        add              rsp, 16;                             jmp   n154_var_β
.Lx480_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   add              rsp, 48;                             jmp   n158_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:                                                       jmp   n159_lit_string_α
n158_statement_begin_β:                                                       jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_var_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_binop_α
n160_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n162_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_statement_end_α
.Lx489_0:               .quad            .Lx489_0_s
.Lx489_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   add              rsp, 48;                             jmp   n164_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α:                                                       jmp   n165_lit_string_α
n164_statement_begin_β:                                                       jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_var_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_binop_α
n166_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n168_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n169_statement_end_α
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   add              rsp, 48;                             jmp   n170_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α:                                                       jmp   n171_lit_string_α
n170_statement_begin_β:                                                       jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_var_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_lit_integer_α
n172_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_binop_α
n173_lit_integer_β:     add              rsp, 16;                             jmp   n172_var_β
.Lx504_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx505_240
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lx505_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_binop_α
n174_binop_β:           add              rsp, 16;                             jmp   n173_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n177_statement_end_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   add              rsp, 80;                             jmp   n238_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 35, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α:                                                       jmp   n179_var_α
n178_statement_begin_β:                                                       jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_differ_α
n180_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n181_differ_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx515_240
                        add              rsp, 16;                             jmp   n180_lit_string_β
.Lx515_240:                                                                   jmp   n182_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 48;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α:                                                       jmp   n184_var_α
n183_statement_begin_β:                                                       jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # fixed_n
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   add              rsp, 16;                             jmp   n187_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 37, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:                                                       jmp   n188_call_α
n187_statement_begin_β:                                                       jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd527:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd527]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx526_240
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Lx526_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_assign_α
n188_call_β:            add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n190_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   add              rsp, 16;                             jmp   n191_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α:                                                       jmp   n192_lit_integer_α
n191_statement_begin_β:                                                       jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_assign_α
.Lx533_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 16;                             jmp   n195_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 39, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:                                                       jmp   n196_var_α
n195_statement_begin_β:                                                       jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_call_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig541z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig541z:              .quad            1
                        .quad            .Lx541_2
                        .quad            .Lx541_2
                        .quad            16
.Lx541_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx541_29
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
.Lx541_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx541_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
.Lx541_240:                                                                   jmp   n198_statement_end_α
n197_call_β:                                                                  jmp   n195_statement_begin_β
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   add              rsp, 32;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α:                                                       jmp   n200_var_α
n199_statement_begin_β:                                                       jmp   n205_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_binop_α
n201_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx548_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx548_7
.Lx548_2:               and              edx, 1;                              jz    .Lx548_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx548_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx548_4
.Lx548_3:               movq             xmm0, rsi
.Lx548_4:               cmp              cl, 5;                               je    .Lx548_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx548_6
.Lx548_5:               movq             xmm1, rdi
.Lx548_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx548_7:                                                                     jmp   n203_assign_α
.Lx548_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx548_240
                        add              rsp, 16;                             jmp   n201_var_β
.Lx548_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n203_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n204_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   add              rsp, 48;                             jmp   n205_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α:                                                       jmp   n206_var_α
n205_statement_begin_β:                                                       jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_var_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # fixed_n
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_coerce_numeric_α
n207_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx557_1
                        cmp              al, 3;                               jne   .Lx557_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx557_0
.Lx557_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_coerce_numeric_α
.Lx557_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_coerce_numeric_α
n208_coerce_numeric_β:  add              rsp, 16;                             jmp   n207_var_β
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx559_1
                        cmp              al, 3;                               jne   .Lx559_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx559_0
.Lx559_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_cmp_test_α
.Lx559_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_cmp_test_α
n209_coerce_numeric_β:  add              rsp, 16;                             jmp   n208_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n210_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx561_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx561_239
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lx561_239:                                                                   jmp   n211_statement_end_α
.Lx561_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx561_240
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lx561_240:                                                                   jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   add              rsp, 80;                             jmp   n195_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α:                                                       jmp   n213_call_α
n212_statement_begin_β:                                                       jmp   n218_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd567:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd567]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx566_240
                        add              rsp, 16;                             jmp   n212_statement_begin_β
.Lx566_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
n213_call_β:            add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx569_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx569_7
.Lx569_2:               and              edx, 1;                              jz    .Lx569_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx569_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx569_4
.Lx569_3:               movq             xmm0, rsi
.Lx569_4:               cmp              cl, 5;                               je    .Lx569_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx569_6
.Lx569_5:               movq             xmm1, rdi
.Lx569_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx569_7:                                                                     jmp   n216_assign_α
.Lx569_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx569_240
                        add              rsp, 16;                             jmp   n214_var_β
.Lx569_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   add              rsp, 48;                             jmp   n218_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:                                                       jmp   n219_lit_string_α
n218_statement_begin_β:                                                       jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_var_α
.Lx575_0:               .quad            .Lx575_0_s
.Lx575_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_binop_α
n220_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n222_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_statement_end_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   add              rsp, 48;                             jmp   n224_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α:                                                       jmp   n225_lit_string_α
n224_statement_begin_β:                                                       jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_var_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_binop_α
n226_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_statement_end_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   add              rsp, 48;                             jmp   n230_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α:                                                       jmp   n231_lit_string_α
n230_statement_begin_β:                                                       jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_var_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_lit_integer_α
n232_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n234_binop_α
n233_lit_integer_β:     add              rsp, 16;                             jmp   n232_var_β
.Lx593_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx594_240
                        add              rsp, 16;                             jmp   n233_lit_integer_β
.Lx594_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_binop_α
n234_binop_β:           add              rsp, 16;                             jmp   n233_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n236_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n237_statement_end_α
.Lx596_0:               .quad            .Lx596_0_s
.Lx596_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   add              rsp, 80;                             jmp   n238_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 46, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α:                                                       jmp   n239_var_α
n238_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n241_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
