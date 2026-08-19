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
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx181_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd183:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd183]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx182_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx182_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_end_α
n3_call_β:              add              rsp, 16;                             jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:     add              rsp, 48;                             jmp   n5_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:                                                         jmp   n6_lit_string_α
n5_statement_begin_β:                                                         jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_integer_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_call_α
n7_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lx189_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd191:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd191]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx190_240
                        add              rsp, 16;                             jmp   n7_lit_integer_β
.Lx190_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_statement_end_α
n8_call_β:              add              rsp, 16;                             jmp   n7_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     add              rsp, 48;                             jmp   n10_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:                                                        jmp   n11_lit_string_α
n10_statement_begin_β:                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_lit_integer_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_unop_α
n12_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lx197_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_unop_α:             sub              rsp, 16
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_call_α
n13_unop_β:             add              rsp, 16;                             jmp   n12_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd200:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd200]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx199_240
                        add              rsp, 16;                             jmp   n13_unop_β
.Lx199_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
n14_call_β:             add              rsp, 16;                             jmp   n13_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    add              rsp, 64;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_lit_integer_α
n16_statement_begin_β:                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Lx205_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n19_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    add              rsp, 16;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:                                                        jmp   n21_lit_integer_α
n20_statement_begin_β:                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_assign_α
.Lx211_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 16;                             jmp   n24_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_lit_integer_α
n24_statement_begin_β:                                                        jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx217_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_define_α
n28_statement_begin_β:                                                        jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_define_α:           mov              rdi, qword ptr [rip + .Lx224_0]
                        mov              rsi, qword ptr [rip + .Lx224_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n31_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_statement_end_α
n29_define_β:                                                                 jmp   n28_statement_begin_β
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "ZBODY"
.Lx224_1:               .quad            .Lx224_1_s
.Lx224_1_s:             .string          "ZKN"
                                                                              jmp   .Lx225_245
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
                        cmp              rdx, 0;                              jbe   .Lx225_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx225_41
.Lx225_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx225_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n31_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx225_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx225_110
.Lx225_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx225_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx225_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx225_180
.Lx225_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx225_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx225_245:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:                                                          jmp   n85_statement_begin_α
#=======================================================================================================================
# ZBODY   N = 1
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:                                                        jmp   n32_lit_integer_α
n31_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_assign_α
.Lx230_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 16;                             jmp   n35_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_lit_integer_α
n35_statement_begin_β:                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_assign_α
.Lx236_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    add              rsp, 16;                             jmp   n39_statement_begin_α
#=======================================================================================================================
# ZBL     N = N + 3
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:                                                        jmp   n40_var_α
n39_statement_begin_β:                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_binop_α
n41_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
.Lx243_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx244_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx244_7
.Lx244_2:               and              edx, 1;                              jz    .Lx244_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx244_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx244_4
.Lx244_3:               movq             xmm0, rsi
.Lx244_4:               cmp              ecx, 5;                              je    .Lx244_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx244_6
.Lx244_5:               movq             xmm1, rdi
.Lx244_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx244_7:                                                                     jmp   n43_assign_α
.Lx244_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx244_240
                        add              rsp, 16;                             jmp   n41_lit_integer_β
.Lx244_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    add              rsp, 48;                             jmp   n45_statement_begin_α
#=======================================================================================================================
#         N = N - 1
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:                                                        jmp   n46_var_α
n45_statement_begin_β:                                                        jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_binop_α
n47_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
.Lx251_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx252_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx252_7
.Lx252_2:               and              edx, 1;                              jz    .Lx252_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx252_4
.Lx252_3:               movq             xmm0, rsi
.Lx252_4:               cmp              ecx, 5;                              je    .Lx252_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx252_6
.Lx252_5:               movq             xmm1, rdi
.Lx252_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx252_7:                                                                     jmp   n49_assign_α
.Lx252_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx252_240
                        add              rsp, 16;                             jmp   n47_lit_integer_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    add              rsp, 48;                             jmp   n51_statement_begin_α
#=======================================================================================================================
#         N = N * 2
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:                                                        jmp   n52_var_α
n51_statement_begin_β:                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Lx259_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx260_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx260_7
.Lx260_2:               and              edx, 1;                              jz    .Lx260_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx260_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx260_4
.Lx260_3:               movq             xmm0, rsi
.Lx260_4:               cmp              ecx, 5;                              je    .Lx260_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx260_6
.Lx260_5:               movq             xmm1, rdi
.Lx260_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx260_7:                                                                     jmp   n55_assign_α
.Lx260_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx260_240
                        add              rsp, 16;                             jmp   n53_lit_integer_β
.Lx260_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 48;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         N = GE(N, 1000000) N / 1000
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_var_α
n57_statement_begin_β:                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_coerce_numeric_α
n59_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
.Lx267_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx269_1
                        cmp              eax, 3;                              jne   .Lx269_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx269_0
.Lx269_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_coerce_numeric_α
.Lx269_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_coerce_numeric_α
n60_coerce_numeric_β:   add              rsp, 16;                             jmp   n59_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n61_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx271_1
                        cmp              eax, 3;                              jne   .Lx271_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx271_0
.Lx271_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_cmp_test_α
.Lx271_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_cmp_test_α
n61_coerce_numeric_β:   add              rsp, 16;                             jmp   n60_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n62_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx273_240
                        add              rsp, 16;                             jmp   n61_coerce_numeric_β
.Lx273_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n63_var_α
n62_cmp_test_β:         add              rsp, 16;                             jmp   n61_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_lit_integer_α
n63_var_β:              add              rsp, 16;                             jmp   n62_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_binop_α
n64_lit_integer_β:      add              rsp, 16;                             jmp   n63_var_β
.Lx275_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx276_240
                        add              rsp, 16;                             jmp   n64_lit_integer_β
.Lx276_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_binop_α
n65_binop_β:            add              rsp, 16;                             jmp   n64_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 144;                            jmp   n69_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:                                                        jmp   n70_var_α
n69_statement_begin_β:                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_coerce_numeric_α
n71_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx286_1
                        cmp              eax, 3;                              jne   .Lx286_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx286_0
.Lx286_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_coerce_numeric_α
.Lx286_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_coerce_numeric_α
n72_coerce_numeric_β:   add              rsp, 16;                             jmp   n71_var_β
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx288_1
                        cmp              eax, 3;                              jne   .Lx288_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx288_0
.Lx288_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_cmp_test_α
.Lx288_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_cmp_test_α
n73_coerce_numeric_β:   add              rsp, 16;                             jmp   n72_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n74_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx290_240
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
.Lx290_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n75_var_α
n74_cmp_test_β:         add              rsp, 16;                             jmp   n73_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_lit_integer_α
n75_var_β:              add              rsp, 16;                             jmp   n74_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_binop_α
n76_lit_integer_β:      add              rsp, 16;                             jmp   n75_var_β
.Lx292_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx293_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx293_7
.Lx293_2:               and              edx, 1;                              jz    .Lx293_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx293_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx293_4
.Lx293_3:               movq             xmm0, rsi
.Lx293_4:               cmp              ecx, 5;                              je    .Lx293_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx293_6
.Lx293_5:               movq             xmm1, rdi
.Lx293_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx293_7:                                                                     jmp   n78_binop_α
.Lx293_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx293_240
                        add              rsp, 16;                             jmp   n76_lit_integer_β
.Lx293_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_binop_α
n77_binop_β:            add              rsp, 16;                             jmp   n76_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    add              rsp, 144;                            jmp   n39_statement_begin_α
#=======================================================================================================================
#         ZBODY = N                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:                                                        jmp   n82_var_α
n81_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:                                                        jmp   n86_statement_end_α
n85_statement_begin_β:                                                        jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:                                                          jmp   n87_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:                                                        jmp   n88_lit_string_α
n87_statement_begin_β:                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_var_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_call_α
n89_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig313z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig313z:              .quad            1
                        .quad            .Lx313_2
                        .quad            .Lx313_2
                        .quad            16
.Lx313_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx313_29
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
.Lx313_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx313_240
                        add              rsp, 16;                             jmp   n89_var_β
.Lx313_240:                                                                   jmp   n91_binop_α
n90_call_β:                                                                   jmp   n89_var_β
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_statement_end_α
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    add              rsp, 64;                             jmp   n94_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                                        jmp   n95_var_α
n94_statement_begin_β:                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_call_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd322:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd322]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx321_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Lx321_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_statement_end_α
n96_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    add              rsp, 32;                             jmp   n128_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:                                                        jmp   n99_lit_integer_α
n98_statement_begin_β:                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_assign_α
.Lx327_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZK
                        mov              qword ptr [r9 + 120], rdx;           jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   add              rsp, 16;                             jmp   n102_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 20, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:                                                       jmp   n103_call_α
n102_statement_begin_β:                                                       jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd334:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd334]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx333_240
                        add              rsp, 16;                             jmp   n102_statement_begin_β
.Lx333_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
n103_call_β:            add              rsp, 16;                             jmp   n102_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   add              rsp, 16;                             jmp   n106_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 39: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:                                                       jmp   n107_var_α
n106_statement_begin_β:                                                       jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig342z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig342z:              .quad            1
                        .quad            .Lx342_2
                        .quad            .Lx342_2
                        .quad            16
.Lx342_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx342_29
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
.Lx342_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx342_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n106_statement_begin_β
.Lx342_240:                                                                   jmp   n109_statement_end_α
n108_call_β:                                                                  jmp   n106_statement_begin_β
.Lx342_0:               .quad            .Lx342_0_s
.Lx342_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   add              rsp, 32;                             jmp   n110_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 40: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:                                                       jmp   n111_call_α
n110_statement_begin_β:                                                       jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd348:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd348]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx347_240
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Lx347_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_var_α
n111_call_β:            add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_binop_α
n112_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx350_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx350_7
.Lx350_2:               and              edx, 1;                              jz    .Lx350_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx350_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx350_4
.Lx350_3:               movq             xmm0, rsi
.Lx350_4:               cmp              ecx, 5;                              je    .Lx350_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx350_6
.Lx350_5:               movq             xmm1, rdi
.Lx350_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx350_7:                                                                     jmp   n114_assign_α
.Lx350_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx350_240
                        add              rsp, 16;                             jmp   n112_var_β
.Lx350_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n115_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   add              rsp, 48;                             jmp   n116_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α:                                                       jmp   n117_var_α
n116_statement_begin_β:                                                       jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_coerce_numeric_α
n118_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n116_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx359_1
                        cmp              eax, 3;                              jne   .Lx359_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx359_0
.Lx359_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
.Lx359_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_coerce_numeric_α
n119_coerce_numeric_β:  add              rsp, 16;                             jmp   n118_var_β
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx361_1
                        cmp              eax, 3;                              jne   .Lx361_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx361_0
.Lx361_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_cmp_test_α
.Lx361_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_cmp_test_α
n120_coerce_numeric_β:  add              rsp, 16;                             jmp   n119_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n121_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx363_240
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
.Lx363_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n122_var_α
n121_cmp_test_β:        add              rsp, 16;                             jmp   n120_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_lit_integer_α
n122_var_β:             add              rsp, 16;                             jmp   n121_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_binop_α
n123_lit_integer_β:     add              rsp, 16;                             jmp   n122_var_β
.Lx365_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx366_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx366_7
.Lx366_2:               and              edx, 1;                              jz    .Lx366_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx366_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx366_4
.Lx366_3:               movq             xmm0, rsi
.Lx366_4:               cmp              ecx, 5;                              je    .Lx366_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx366_6
.Lx366_5:               movq             xmm1, rdi
.Lx366_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx366_7:                                                                     jmp   n125_binop_α
.Lx366_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx366_240
                        add              rsp, 16;                             jmp   n123_lit_integer_β
.Lx366_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_binop_α
n124_binop_β:           add              rsp, 16;                             jmp   n123_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZK
                        mov              qword ptr [r9 + 120], rdx;           jmp   n127_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   add              rsp, 144;                            jmp   n102_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 24, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α:                                                       jmp   n129_call_α
n128_statement_begin_β:                                                       jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd374:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd374]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx373_240
                        add              rsp, 16;                             jmp   n128_statement_begin_β
.Lx373_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_assign_α
n129_call_β:            add              rsp, 16;                             jmp   n128_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n131_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   add              rsp, 16;                             jmp   n132_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α:                                                       jmp   n133_var_α
n132_statement_begin_β:                                                       jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_binop_α
n134_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx382_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx382_7
.Lx382_2:               and              edx, 1;                              jz    .Lx382_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx382_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx382_4
.Lx382_3:               movq             xmm0, rsi
.Lx382_4:               cmp              ecx, 5;                              je    .Lx382_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx382_6
.Lx382_5:               movq             xmm1, rdi
.Lx382_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx382_7:                                                                     jmp   n136_assign_α
.Lx382_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx382_240
                        add              rsp, 16;                             jmp   n134_var_β
.Lx382_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZD
                        mov              qword ptr [r9 + 168], rdx;           jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 48;                             jmp   n138_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:                                                       jmp   n139_lit_integer_α
n138_statement_begin_β:                                                       jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_assign_α
.Lx388_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 16;                             jmp   n142_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 27, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                                       jmp   n143_var_α
n142_statement_begin_β:                                                       jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_call_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig396z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig396z:              .quad            1
                        .quad            .Lx396_2
                        .quad            .Lx396_2
                        .quad            16
.Lx396_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx396_29
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
.Lx396_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx396_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
.Lx396_240:                                                                   jmp   n145_statement_end_α
n144_call_β:                                                                  jmp   n142_statement_begin_β
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   add              rsp, 32;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:                                                       jmp   n147_var_α
n146_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZK
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_binop_α
n148_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
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
.Lx403_7:                                                                     jmp   n150_assign_α
.Lx403_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx403_240
                        add              rsp, 16;                             jmp   n148_var_β
.Lx403_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 48;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_call_α
n152_statement_begin_β:                                                       jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd410:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd410]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx409_240
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Lx409_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
n153_call_β:            add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZD
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_coerce_numeric_α
n154_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx413_1
                        cmp              eax, 3;                              jne   .Lx413_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx413_0
.Lx413_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_coerce_numeric_α
.Lx413_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_coerce_numeric_α
n155_coerce_numeric_β:  add              rsp, 16;                             jmp   n154_var_β
#-----------------------------------------------------------------------------------------------------------------------
n156_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx415_1
                        cmp              eax, 3;                              jne   .Lx415_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx415_0
.Lx415_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_cmp_test_α
.Lx415_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_cmp_test_α
n156_coerce_numeric_β:  add              rsp, 16;                             jmp   n155_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n157_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx417_240
                        add              rsp, 16;                             jmp   n156_coerce_numeric_β
.Lx417_240:                                                                   jmp   n158_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   add              rsp, 80;                             jmp   n142_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α:                                                       jmp   n160_call_α
n159_statement_begin_β:                                                       jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd423:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd423]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx422_240
                        add              rsp, 16;                             jmp   n159_statement_begin_β
.Lx422_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_var_α
n160_call_β:            add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_binop_α
n161_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx425_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx425_7
.Lx425_2:               and              edx, 1;                              jz    .Lx425_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx425_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx425_4
.Lx425_3:               movq             xmm0, rsi
.Lx425_4:               cmp              ecx, 5;                              je    .Lx425_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx425_6
.Lx425_5:               movq             xmm1, rdi
.Lx425_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx425_7:                                                                     jmp   n163_assign_α
.Lx425_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx425_240
                        add              rsp, 16;                             jmp   n161_var_β
.Lx425_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 48;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α:                                                       jmp   n166_lit_string_α
n165_statement_begin_β:                                                       jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_var_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_binop_α
n167_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 48;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_lit_string_α
n171_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_var_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
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
n175_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_statement_end_α
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 48;                             jmp   main_γ
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
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
