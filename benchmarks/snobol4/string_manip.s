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
.Lgvan5:                .string          "ZI"
.Lgvan6:                .string          "S"
.Lgvan7:                .string          "NS"
.Lgvan8:                .string          "ZK"
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
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx177_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
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
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx178_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx178_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx183_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx184_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx184_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx184_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx184_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx189_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx191_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx191_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx191_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx191_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx196_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx202_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx208_0:               .quad            20
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
n25_statement_begin_β:                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx215_0]
                        mov              rsi, qword ptr [rip + .Lx215_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx215_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "ZBODY"
.Lx215_1:               .quad            .Lx215_1_s
.Lx215_1_s:             .string          "ZKN"
                                                                              jmp   .Lx216_245
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
                        cmp              rdx, 0;                              jbe   .Lx216_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx216_41
.Lx216_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx216_41:              lea              r10, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx216_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx216_110
.Lx216_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx216_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx216_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx216_180
.Lx216_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx216_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx216_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n63_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_integer_α
n28_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx221_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
# ZBL     S = 'The quick brown fox jumps over the lazy dog'
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_string_α
n32_statement_begin_β:                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "The quick brown fox jumps over the lazy dog"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
#         S = REPLACE(S, 'aeiou', '*****')
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:                                                        jmp   n37_var_α
n36_statement_begin_β:                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_lit_string_α
n38_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_call_α
n39_lit_string_β:       add              rsp, 16;                             jmp   n38_lit_string_β
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "*****"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             sub              rsp, 16
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd237:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd237]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx236_240
                        add              rsp, 16;                             jmp   n39_lit_string_β
.Lx236_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_assign_α
n40_call_β:             add              rsp, 16;                             jmp   n39_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    add              rsp, 64;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         NS = SIZE(S)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:                                                        jmp   n44_var_α
n43_statement_begin_β:                                                        jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_call_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd245:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd245]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx244_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lx244_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_assign_α
n45_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # NS
                        mov              qword ptr [r9 + 120], rdx;           jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 32;                             jmp   n48_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:                                                        jmp   n49_var_α
n48_statement_begin_β:                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_coerce_numeric_α
n50_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx254_1
                        cmp              eax, 3;                              jne   .Lx254_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx254_0
.Lx254_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_coerce_numeric_α
.Lx254_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_coerce_numeric_α
n51_coerce_numeric_β:   add              rsp, 16;                             jmp   n50_var_β
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx256_1
                        cmp              eax, 3;                              jne   .Lx256_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx256_0
.Lx256_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_cmp_test_α
.Lx256_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_cmp_test_α
n52_coerce_numeric_β:   add              rsp, 16;                             jmp   n51_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n53_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx258_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx258_239
                        add              rsp, 16;                             jmp   n52_coerce_numeric_β
.Lx258_239:                                                                   jmp   n54_var_α
.Lx258_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx258_240
                        add              rsp, 16;                             jmp   n52_coerce_numeric_β
.Lx258_240:                                                                   jmp   n54_var_α
n53_cmp_test_β:         add              rsp, 16;                             jmp   n52_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_lit_integer_α
n54_var_β:              add              rsp, 16;                             jmp   n53_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_binop_α
n55_lit_integer_β:      add              rsp, 16;                             jmp   n54_var_β
.Lx260_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx261_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx261_7
.Lx261_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx261_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx261_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx261_4
.Lx261_3:               movq             xmm0, rsi
.Lx261_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx261_7:                                                                     jmp   n57_assign_α
.Lx261_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx261_240
                        add              rsp, 16;                             jmp   n55_lit_integer_β
.Lx261_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    add              rsp, 128;                            jmp   n32_statement_begin_α
#=======================================================================================================================
#         ZBODY = NS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:                                                        jmp   n60_var_α
n59_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # NS
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:                                                        jmp   n64_statement_end_α
n63_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:                                                          jmp   n65_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_lit_string_α
n65_statement_begin_β:                                                        jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_var_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_call_α
n67_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig280z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig280z:              .quad            1
                        .quad            .Lx280_2
                        .quad            .Lx280_2
                        .quad            16
.Lx280_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx280_29
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
.Lx280_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx280_240
                        add              rsp, 16;                             jmp   n67_var_β
.Lx280_240:                                                                   jmp   n69_binop_α
n68_call_β:                                                                   jmp   n67_var_β
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_statement_end_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    add              rsp, 64;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:                                                        jmp   n73_var_α
n72_statement_begin_β:                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_binop_α
n74_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Lx288_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx289_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx289_7
.Lx289_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx289_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx289_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx289_4
.Lx289_3:               movq             xmm0, rsi
.Lx289_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx289_7:                                                                     jmp   n76_assign_α
.Lx289_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx289_240
                        add              rsp, 16;                             jmp   n74_lit_integer_β
.Lx289_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 48;                             jmp   n78_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:                                                        jmp   n79_var_α
n78_statement_begin_β:                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_binop_α
n80_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Lx296_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx297_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx297_7
.Lx297_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx297_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx297_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx297_4
.Lx297_3:               movq             xmm0, rsi
.Lx297_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx297_7:                                                                     jmp   n82_assign_α
.Lx297_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx297_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lx297_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    add              rsp, 48;                             jmp   n84_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:                                                        jmp   n85_var_α
n84_statement_begin_β:                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_call_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd305:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd305]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx304_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_β
.Lx304_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_statement_end_α
n86_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    add              rsp, 32;                             jmp   n117_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:                                                        jmp   n89_lit_integer_α
n88_statement_begin_β:                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_assign_α
.Lx310_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    add              rsp, 16;                             jmp   n92_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 20, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:                                                        jmp   n93_call_α
n92_statement_begin_β:                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd317:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd317]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx316_240
                        add              rsp, 16;                             jmp   n92_statement_begin_β
.Lx316_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_assign_α
n93_call_β:             add              rsp, 16;                             jmp   n92_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    add              rsp, 16;                             jmp   n96_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:                                                        jmp   n97_var_α
n96_statement_begin_β:                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_call_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig325z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig325z:              .quad            1
                        .quad            .Lx325_2
                        .quad            .Lx325_2
                        .quad            16
.Lx325_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx325_29
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
.Lx325_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx325_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n96_statement_begin_β
.Lx325_240:                                                                   jmp   n99_statement_end_α
n98_call_β:                                                                   jmp   n96_statement_begin_β
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    add              rsp, 32;                             jmp   n100_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:                                                       jmp   n101_call_α
n100_statement_begin_β:                                                       jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd331:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd331]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx330_240
                        add              rsp, 16;                             jmp   n100_statement_begin_β
.Lx330_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
n101_call_β:            add              rsp, 16;                             jmp   n100_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_binop_α
n102_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx333_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx333_7
.Lx333_2:               and              edx, 1;                              jz    .Lx333_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx333_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx333_4
.Lx333_3:               movq             xmm0, rsi
.Lx333_4:               cmp              ecx, 5;                              je    .Lx333_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx333_6
.Lx333_5:               movq             xmm1, rdi
.Lx333_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx333_7:                                                                     jmp   n104_assign_α
.Lx333_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx333_240
                        add              rsp, 16;                             jmp   n102_var_β
.Lx333_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   add              rsp, 48;                             jmp   n106_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:                                                       jmp   n107_var_α
n106_statement_begin_β:                                                       jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_coerce_numeric_α
n108_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n106_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx342_1
                        cmp              eax, 3;                              jne   .Lx342_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx342_0
.Lx342_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_coerce_numeric_α
.Lx342_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_coerce_numeric_α
n109_coerce_numeric_β:  add              rsp, 16;                             jmp   n108_var_β
#-----------------------------------------------------------------------------------------------------------------------
n110_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx344_1
                        cmp              eax, 3;                              jne   .Lx344_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx344_0
.Lx344_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_cmp_test_α
.Lx344_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_cmp_test_α
n110_coerce_numeric_β:  add              rsp, 16;                             jmp   n109_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n111_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx346_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx346_239
                        add              rsp, 16;                             jmp   n110_coerce_numeric_β
.Lx346_239:                                                                   jmp   n112_var_α
.Lx346_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx346_240
                        add              rsp, 16;                             jmp   n110_coerce_numeric_β
.Lx346_240:                                                                   jmp   n112_var_α
n111_cmp_test_β:        add              rsp, 16;                             jmp   n110_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_lit_integer_α
n112_var_β:             add              rsp, 16;                             jmp   n111_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_binop_α
n113_lit_integer_β:     add              rsp, 16;                             jmp   n112_var_β
.Lx348_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n114_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx349_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx349_7
.Lx349_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx349_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx349_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx349_4
.Lx349_3:               movq             xmm0, rsi
.Lx349_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx349_7:                                                                     jmp   n115_assign_α
.Lx349_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx349_240
                        add              rsp, 16;                             jmp   n113_lit_integer_β
.Lx349_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   add              rsp, 128;                            jmp   n92_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 24, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_call_α
n117_statement_begin_β:                                                       jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx355_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_assign_α
n118_call_β:            add              rsp, 16;                             jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   add              rsp, 16;                             jmp   n121_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:                                                       jmp   n122_var_α
n121_statement_begin_β:                                                       jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_binop_α
n123_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx364_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx364_7
.Lx364_2:               and              edx, 1;                              jz    .Lx364_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx364_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx364_4
.Lx364_3:               movq             xmm0, rsi
.Lx364_4:               cmp              ecx, 5;                              je    .Lx364_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx364_6
.Lx364_5:               movq             xmm1, rdi
.Lx364_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx364_7:                                                                     jmp   n125_assign_α
.Lx364_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx364_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lx364_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZD
                        mov              qword ptr [r9 + 184], rdx;           jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   add              rsp, 48;                             jmp   n127_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α:                                                       jmp   n128_lit_integer_α
n127_statement_begin_β:                                                       jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_assign_α
.Lx370_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 16;                             jmp   n131_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 27, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:                                                       jmp   n132_var_α
n131_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_call_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig378z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig378z:              .quad            1
                        .quad            .Lx378_2
                        .quad            .Lx378_2
                        .quad            16
.Lx378_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx378_29
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
.Lx378_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx378_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Lx378_240:                                                                   jmp   n134_statement_end_α
n133_call_β:                                                                  jmp   n131_statement_begin_β
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 32;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_var_α
n135_statement_begin_β:                                                       jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_binop_α
n137_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx385_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx385_7
.Lx385_2:               and              edx, 1;                              jz    .Lx385_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx385_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx385_4
.Lx385_3:               movq             xmm0, rsi
.Lx385_4:               cmp              ecx, 5;                              je    .Lx385_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx385_6
.Lx385_5:               movq             xmm1, rdi
.Lx385_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx385_7:                                                                     jmp   n139_assign_α
.Lx385_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx385_240
                        add              rsp, 16;                             jmp   n137_var_β
.Lx385_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n140_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   add              rsp, 48;                             jmp   n141_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α:                                                       jmp   n142_call_α
n141_statement_begin_β:                                                       jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd392:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd392]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx391_240
                        add              rsp, 16;                             jmp   n141_statement_begin_β
.Lx391_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_var_α
n142_call_β:            add              rsp, 16;                             jmp   n141_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZD
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_coerce_numeric_α
n143_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx395_1
                        cmp              eax, 3;                              jne   .Lx395_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx395_0
.Lx395_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_coerce_numeric_α
.Lx395_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_coerce_numeric_α
n144_coerce_numeric_β:  add              rsp, 16;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n145_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx397_1
                        cmp              eax, 3;                              jne   .Lx397_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx397_0
.Lx397_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_cmp_test_α
.Lx397_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_cmp_test_α
n145_coerce_numeric_β:  add              rsp, 16;                             jmp   n144_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n146_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx399_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx399_239
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lx399_239:                                                                   jmp   n147_statement_end_α
.Lx399_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx399_240
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lx399_240:                                                                   jmp   n147_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   add              rsp, 80;                             jmp   n131_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:                                                       jmp   n149_call_α
n148_statement_begin_β:                                                       jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd405:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd405]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx404_240
                        add              rsp, 16;                             jmp   n148_statement_begin_β
.Lx404_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_var_α
n149_call_β:            add              rsp, 16;                             jmp   n148_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_binop_α
n150_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n148_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx407_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx407_7
.Lx407_2:               and              edx, 1;                              jz    .Lx407_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx407_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx407_4
.Lx407_3:               movq             xmm0, rsi
.Lx407_4:               cmp              ecx, 5;                              je    .Lx407_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx407_6
.Lx407_5:               movq             xmm1, rdi
.Lx407_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx407_7:                                                                     jmp   n152_assign_α
.Lx407_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx407_240
                        add              rsp, 16;                             jmp   n150_var_β
.Lx407_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n153_statement_end_α
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
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_var_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
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
                        mov              rdi, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_statement_end_α
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 48;                             jmp   n160_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α:                                                       jmp   n161_lit_string_α
n160_statement_begin_β:                                                       jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_var_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_binop_α
n162_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n165_statement_end_α
.Lx424_0:               .quad            .Lx424_0_s
.Lx424_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 48;                             jmp   n166_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                                       jmp   n167_lit_string_α
n166_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_var_α
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_lit_integer_α
n168_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_binop_α
n169_lit_integer_β:     add              rsp, 16;                             jmp   n168_var_β
.Lx431_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx432_240
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lx432_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_binop_α
n170_binop_β:           add              rsp, 16;                             jmp   n169_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n171_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n172_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_statement_end_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
