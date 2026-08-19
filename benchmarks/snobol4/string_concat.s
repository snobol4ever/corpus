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
.Lgvan5:                .string          "ZK"
.Lgvan6:                .string          "S"
.Lgvan7:                .string          "ZI"
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
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx162_0:               .quad            1
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
.Lrkfnzd164:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd164]
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
                        cmp              eax, 104;                            jne   .Lx163_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx163_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_integer_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_call_α
n7_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lx170_0:               .quad            0
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
.Lrkfnzd172:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd172]
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
                        cmp              eax, 104;                            jne   .Lx171_240
                        add              rsp, 16;                             jmp   n7_lit_integer_β
.Lx171_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_lit_integer_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_unop_α
n12_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lx178_0:               .quad            1
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
.Lrkfnzd181:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd181]
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
                        cmp              eax, 104;                            jne   .Lx180_240
                        add              rsp, 16;                             jmp   n13_unop_β
.Lx180_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Lx186_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_assign_α
.Lx192_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx198_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         ZK = 20000
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_integer_α
n28_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx204_0:               .quad            20000
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_define_α
n32_statement_begin_β:                                                        jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_define_α:           mov              rdi, qword ptr [rip + .Lx211_0]
                        mov              rsi, qword ptr [rip + .Lx211_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n35_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_statement_end_α
n33_define_β:                                                                 jmp   n32_statement_begin_β
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "ZBODY"
.Lx211_1:               .quad            .Lx211_1_s
.Lx211_1_s:             .string          "ZKN"
                                                                              jmp   .Lx212_245
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
                        cmp              rdx, 0;                              jbe   .Lx212_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx212_41
.Lx212_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx212_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n35_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx212_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx212_110
.Lx212_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx212_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx212_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx212_180
.Lx212_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx212_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx212_245:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:                                                          jmp   n66_statement_begin_α
#=======================================================================================================================
# ZBODY   S = ''
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_lit_string_α
n35_statement_begin_β:                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_assign_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    add              rsp, 16;                             jmp   n39_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:                                                        jmp   n40_lit_integer_α
n39_statement_begin_β:                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Lx223_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    add              rsp, 16;                             jmp   n43_statement_begin_α
#=======================================================================================================================
# ZBL     S = S 'x'
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:                                                        jmp   n44_var_α
n43_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_binop_α
n45_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 48;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_var_α
n49_statement_begin_β:                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_coerce_numeric_α
n51_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx240_1
                        cmp              eax, 3;                              jne   .Lx240_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx240_0
.Lx240_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_coerce_numeric_α
.Lx240_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_coerce_numeric_α
n52_coerce_numeric_β:   add              rsp, 16;                             jmp   n51_var_β
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx242_1
                        cmp              eax, 3;                              jne   .Lx242_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx242_0
.Lx242_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_cmp_test_α
.Lx242_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_cmp_test_α
n53_coerce_numeric_β:   add              rsp, 16;                             jmp   n52_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n54_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx244_240
                        add              rsp, 16;                             jmp   n53_coerce_numeric_β
.Lx244_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n55_var_α
n54_cmp_test_β:         add              rsp, 16;                             jmp   n53_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_lit_integer_α
n55_var_β:              add              rsp, 16;                             jmp   n54_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_binop_α
n56_lit_integer_β:      add              rsp, 16;                             jmp   n55_var_β
.Lx246_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx247_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx247_7
.Lx247_2:               and              edx, 1;                              jz    .Lx247_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx247_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx247_4
.Lx247_3:               movq             xmm0, rsi
.Lx247_4:               cmp              ecx, 5;                              je    .Lx247_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx247_6
.Lx247_5:               movq             xmm1, rdi
.Lx247_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx247_7:                                                                     jmp   n58_binop_α
.Lx247_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx247_240
                        add              rsp, 16;                             jmp   n56_lit_integer_β
.Lx247_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_binop_α
n57_binop_β:            add              rsp, 16;                             jmp   n56_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    add              rsp, 144;                            jmp   n43_statement_begin_α
#=======================================================================================================================
#         ZBODY = SIZE(S)                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:                                                        jmp   n62_var_α
n61_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_call_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd256:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd256]
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
                        cmp              eax, 104;                            jne   .Lx255_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n61_statement_begin_β
.Lx255_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_α
n63_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n61_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n65_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:                                                        jmp   n67_statement_end_α
n66_statement_begin_β:                                                        jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:                                                          jmp   n68_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:                                                        jmp   n69_lit_string_α
n68_statement_begin_β:                                                        jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_var_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_call_α
n70_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig269z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig269z:              .quad            1
                        .quad            .Lx269_2
                        .quad            .Lx269_2
                        .quad            16
.Lx269_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx269_29
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
.Lx269_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx269_240
                        add              rsp, 16;                             jmp   n70_var_β
.Lx269_240:                                                                   jmp   n72_binop_α
n71_call_β:                                                                   jmp   n70_var_β
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_statement_end_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    add              rsp, 64;                             jmp   n75_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:                                                        jmp   n76_var_α
n75_statement_begin_β:                                                        jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_call_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd278:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd278]
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
                        cmp              eax, 104;                            jne   .Lx277_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Lx277_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_statement_end_α
n77_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    add              rsp, 32;                             jmp   n109_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:                                                        jmp   n80_lit_integer_α
n79_statement_begin_β:                                                        jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_assign_α
.Lx283_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    add              rsp, 16;                             jmp   n83_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 18, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:                                                        jmp   n84_call_α
n83_statement_begin_β:                                                        jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd290:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd290]
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
                        cmp              eax, 104;                            jne   .Lx289_240
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Lx289_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_assign_α
n84_call_β:             add              rsp, 16;                             jmp   n83_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZT
                        mov              qword ptr [r9 + 136], rdx;           jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    add              rsp, 16;                             jmp   n87_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 39: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:                                                        jmp   n88_var_α
n87_statement_begin_β:                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_call_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig298z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig298z:              .quad            1
                        .quad            .Lx298_2
                        .quad            .Lx298_2
                        .quad            16
.Lx298_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx298_29
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
.Lx298_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx298_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx298_240:                                                                   jmp   n90_statement_end_α
n89_call_β:                                                                   jmp   n87_statement_begin_β
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    add              rsp, 32;                             jmp   n91_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 40: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:                                                        jmp   n92_call_α
n91_statement_begin_β:                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd304:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd304]
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
                        cmp              eax, 104;                            jne   .Lx303_240
                        add              rsp, 16;                             jmp   n91_statement_begin_β
.Lx303_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_var_α
n92_call_β:             add              rsp, 16;                             jmp   n91_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_binop_α
n93_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx306_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx306_7
.Lx306_2:               and              edx, 1;                              jz    .Lx306_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx306_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx306_4
.Lx306_3:               movq             xmm0, rsi
.Lx306_4:               cmp              ecx, 5;                              je    .Lx306_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx306_6
.Lx306_5:               movq             xmm1, rdi
.Lx306_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx306_7:                                                                     jmp   n95_assign_α
.Lx306_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx306_240
                        add              rsp, 16;                             jmp   n93_var_β
.Lx306_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    add              rsp, 48;                             jmp   n97_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:                                                        jmp   n98_var_α
n97_statement_begin_β:                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_coerce_numeric_α
n99_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx315_1
                        cmp              eax, 3;                              jne   .Lx315_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx315_0
.Lx315_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_coerce_numeric_α
.Lx315_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n101_coerce_numeric_α
n100_coerce_numeric_β:  add              rsp, 16;                             jmp   n99_var_β
#-----------------------------------------------------------------------------------------------------------------------
n101_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx317_1
                        cmp              eax, 3;                              jne   .Lx317_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx317_0
.Lx317_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_cmp_test_α
.Lx317_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_cmp_test_α
n101_coerce_numeric_β:  add              rsp, 16;                             jmp   n100_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n102_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx319_240
                        add              rsp, 16;                             jmp   n101_coerce_numeric_β
.Lx319_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n103_var_α
n102_cmp_test_β:        add              rsp, 16;                             jmp   n101_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_lit_integer_α
n103_var_β:             add              rsp, 16;                             jmp   n102_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_binop_α
n104_lit_integer_β:     add              rsp, 16;                             jmp   n103_var_β
.Lx321_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx322_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx322_7
.Lx322_2:               and              edx, 1;                              jz    .Lx322_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx322_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx322_4
.Lx322_3:               movq             xmm0, rsi
.Lx322_4:               cmp              ecx, 5;                              je    .Lx322_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx322_6
.Lx322_5:               movq             xmm1, rdi
.Lx322_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx322_7:                                                                     jmp   n106_binop_α
.Lx322_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx322_240
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lx322_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_binop_α
n105_binop_β:           add              rsp, 16;                             jmp   n104_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n106_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n108_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   add              rsp, 144;                            jmp   n83_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 22, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:                                                       jmp   n110_call_α
n109_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd330:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd330]
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
                        cmp              eax, 104;                            jne   .Lx329_240
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Lx329_240:             mov              qword ptr [rsp + 0], rax             # result
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
#         <stmt 23, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_binop_α
n115_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx338_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx338_7
.Lx338_2:               and              edx, 1;                              jz    .Lx338_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx338_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx338_4
.Lx338_3:               movq             xmm0, rsi
.Lx338_4:               cmp              ecx, 5;                              je    .Lx338_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx338_6
.Lx338_5:               movq             xmm1, rdi
.Lx338_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx338_7:                                                                     jmp   n117_assign_α
.Lx338_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx338_240
                        add              rsp, 16;                             jmp   n115_var_β
.Lx338_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZD
                        mov              qword ptr [r9 + 168], rdx;           jmp   n118_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   add              rsp, 48;                             jmp   n119_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:                                                       jmp   n120_lit_integer_α
n119_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_assign_α
.Lx344_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 16;                             jmp   n123_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 25, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_var_α
n123_statement_begin_β:                                                       jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_call_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig352z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig352z:              .quad            1
                        .quad            .Lx352_2
                        .quad            .Lx352_2
                        .quad            16
.Lx352_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx352_29
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
.Lx352_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx352_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
.Lx352_240:                                                                   jmp   n126_statement_end_α
n125_call_β:                                                                  jmp   n123_statement_begin_β
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   add              rsp, 32;                             jmp   n127_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α:                                                       jmp   n128_var_α
n127_statement_begin_β:                                                       jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_binop_α
n129_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n127_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx359_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx359_7
.Lx359_2:               and              edx, 1;                              jz    .Lx359_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx359_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx359_4
.Lx359_3:               movq             xmm0, rsi
.Lx359_4:               cmp              ecx, 5;                              je    .Lx359_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx359_6
.Lx359_5:               movq             xmm1, rdi
.Lx359_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx359_7:                                                                     jmp   n131_assign_α
.Lx359_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx359_240
                        add              rsp, 16;                             jmp   n129_var_β
.Lx359_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZN
                        mov              qword ptr [r9 + 184], rdx;           jmp   n132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   add              rsp, 48;                             jmp   n133_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α:                                                       jmp   n134_call_α
n133_statement_begin_β:                                                       jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd366:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd366]
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
                        cmp              eax, 104;                            jne   .Lx365_240
                        add              rsp, 16;                             jmp   n133_statement_begin_β
.Lx365_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_α
n134_call_β:            add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZD
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_coerce_numeric_α
n135_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n136_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx369_1
                        cmp              eax, 3;                              jne   .Lx369_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx369_0
.Lx369_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_coerce_numeric_α
.Lx369_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_coerce_numeric_α
n136_coerce_numeric_β:  add              rsp, 16;                             jmp   n135_var_β
#-----------------------------------------------------------------------------------------------------------------------
n137_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx371_1
                        cmp              eax, 3;                              jne   .Lx371_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx371_0
.Lx371_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_cmp_test_α
.Lx371_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n138_cmp_test_α
n137_coerce_numeric_β:  add              rsp, 16;                             jmp   n136_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n138_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx373_240
                        add              rsp, 16;                             jmp   n137_coerce_numeric_β
.Lx373_240:                                                                   jmp   n139_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   add              rsp, 80;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α:                                                       jmp   n141_call_α
n140_statement_begin_β:                                                       jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd379:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd379]
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
                        cmp              eax, 104;                            jne   .Lx378_240
                        add              rsp, 16;                             jmp   n140_statement_begin_β
.Lx378_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
n141_call_β:            add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZT
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_binop_α
n142_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx381_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx381_7
.Lx381_2:               and              edx, 1;                              jz    .Lx381_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx381_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx381_4
.Lx381_3:               movq             xmm0, rsi
.Lx381_4:               cmp              ecx, 5;                              je    .Lx381_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx381_6
.Lx381_5:               movq             xmm1, rdi
.Lx381_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx381_7:                                                                     jmp   n144_assign_α
.Lx381_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx381_240
                        add              rsp, 16;                             jmp   n142_var_β
.Lx381_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZE
                        mov              qword ptr [r9 + 152], rdx;           jmp   n145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   add              rsp, 48;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:                                                       jmp   n147_lit_string_α
n146_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_var_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZN
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_binop_α
n148_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_statement_end_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 48;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_lit_string_α
n152_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_var_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZE
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_binop_α
n154_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_statement_end_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   add              rsp, 48;                             jmp   main_γ
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
