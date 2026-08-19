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
.Lgvan6:                .string          "V"
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
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx206_0:               .quad            1
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
.Lrkfnzd208:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd208]
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
                        cmp              eax, 104;                            jne   .Lx207_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx207_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_integer_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_call_α
n7_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lx214_0:               .quad            0
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
.Lrkfnzd216:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd216]
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
                        cmp              eax, 104;                            jne   .Lx215_240
                        add              rsp, 16;                             jmp   n7_lit_integer_β
.Lx215_240:             mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_lit_integer_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_unop_α
n12_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lx222_0:               .quad            1
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
.Lrkfnzd225:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd225]
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
                        cmp              eax, 104;                            jne   .Lx224_240
                        add              rsp, 16;                             jmp   n13_unop_β
.Lx224_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
n14_call_β:             add              rsp, 16;                             jmp   n13_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    add              rsp, 64;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         ZCHK = 20
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_lit_integer_α
n16_statement_begin_β:                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Lx230_0:               .quad            20
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
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_assign_α
.Lx236_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx242_0:               .quad            20
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
n28_statement_begin_β:                                                        jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_define_α:           mov              rdi, qword ptr [rip + .Lx249_0]
                        mov              rsi, qword ptr [rip + .Lx249_1]
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
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "ZBODY"
.Lx249_1:               .quad            .Lx249_1_s
.Lx249_1_s:             .string          "ZKN"
                                                                              jmp   .Lx250_245
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
                        cmp              rdx, 0;                              jbe   .Lx250_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx250_41
.Lx250_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx250_41:              lea              r10, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx250_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx250_110
.Lx250_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx250_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx250_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx250_180
.Lx250_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx250_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx250_245:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:                                                          jmp   n110_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:                                                        jmp   n32_lit_integer_α
n31_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_assign_α
.Lx255_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 16;                             jmp   n35_statement_begin_α
#=======================================================================================================================
# ZBL     V = ARRAY(500)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_lit_integer_α
n35_statement_begin_β:                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_call_α
.Lx261_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd263:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd263]
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
                        cmp              eax, 104;                            jne   .Lx262_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
.Lx262_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_assign_α
n37_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    add              rsp, 32;                             jmp   n40_statement_begin_α
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_lit_integer_α
n40_statement_begin_β:                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_assign_α
.Lx269_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    add              rsp, 16;                             jmp   n44_statement_begin_α
#=======================================================================================================================
# ZFILL   V[I] = I * 2
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:                                                        jmp   n45_var_α
n44_statement_begin_β:                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_subscript_α
n46_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx277_240
                        add              rsp, 16;                             jmp   n46_var_β
.Lx277_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_var_α
n47_subscript_β:        add              rsp, 16;                             jmp   n46_var_β
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_integer_α
n48_var_β:              add              rsp, 16;                             jmp   n47_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_binop_α
n49_lit_integer_β:      add              rsp, 16;                             jmp   n48_var_β
.Lx279_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx280_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx280_7
.Lx280_2:               and              edx, 1;                              jz    .Lx280_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx280_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx280_4
.Lx280_3:               movq             xmm0, rsi
.Lx280_4:               cmp              ecx, 5;                              je    .Lx280_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx280_6
.Lx280_5:               movq             xmm1, rdi
.Lx280_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx280_7:                                                                     jmp   n51_assign_var_α
.Lx280_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx280_240
                        add              rsp, 16;                             jmp   n49_lit_integer_β
.Lx280_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_assign_var_α
n50_binop_β:            add              rsp, 16;                             jmp   n49_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx281_240
                        add              rsp, 16;                             jmp   n50_binop_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 112;                            jmp   n53_statement_begin_α
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZFILL)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:                                                        jmp   n54_var_α
n53_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_coerce_numeric_α
n55_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Lx287_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx289_1
                        cmp              eax, 3;                              jne   .Lx289_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx289_0
.Lx289_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_coerce_numeric_α
.Lx289_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_coerce_numeric_α
n56_coerce_numeric_β:   add              rsp, 16;                             jmp   n55_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx291_1
                        cmp              eax, 3;                              jne   .Lx291_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx291_0
.Lx291_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_cmp_test_α
.Lx291_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_cmp_test_α
n57_coerce_numeric_β:   add              rsp, 16;                             jmp   n56_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n58_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx293_240
                        add              rsp, 16;                             jmp   n57_coerce_numeric_β
.Lx293_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n59_var_α
n58_cmp_test_β:         add              rsp, 16;                             jmp   n57_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_lit_integer_α
n59_var_β:              add              rsp, 16;                             jmp   n58_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_binop_α
n60_lit_integer_β:      add              rsp, 16;                             jmp   n59_var_β
.Lx295_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx296_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx296_7
.Lx296_2:               and              edx, 1;                              jz    .Lx296_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx296_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx296_4
.Lx296_3:               movq             xmm0, rsi
.Lx296_4:               cmp              ecx, 5;                              je    .Lx296_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx296_6
.Lx296_5:               movq             xmm1, rdi
.Lx296_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx296_7:                                                                     jmp   n62_binop_α
.Lx296_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx296_240
                        add              rsp, 16;                             jmp   n60_lit_integer_β
.Lx296_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_binop_α
n61_binop_β:            add              rsp, 16;                             jmp   n60_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 144;                            jmp   n44_statement_begin_α
#=======================================================================================================================
#         SUM = 0
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_lit_integer_α
n65_statement_begin_β:                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx303_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SUM
                        mov              qword ptr [r9 + 136], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:                                                        jmp   n70_lit_integer_α
n69_statement_begin_β:                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Lx309_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    add              rsp, 16;                             jmp   n73_statement_begin_α
#=======================================================================================================================
# ZREAD   SUM = SUM + V[I]
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:                                                        jmp   n74_var_α
n73_statement_begin_β:                                                        jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # SUM
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_var_α
n75_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_subscript_α
n76_var_β:              add              rsp, 16;                             jmp   n75_var_β
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx318_240
                        add              rsp, 16;                             jmp   n76_var_β
.Lx318_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_deref_α
n77_subscript_β:        add              rsp, 16;                             jmp   n76_var_β
#-----------------------------------------------------------------------------------------------------------------------
n78_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx319_240
                        add              rsp, 16;                             jmp   n77_subscript_β
.Lx319_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_binop_α
n78_deref_β:            add              rsp, 16;                             jmp   n77_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx320_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx320_7
.Lx320_2:               and              edx, 1;                              jz    .Lx320_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              eax, 5;                              je    .Lx320_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx320_4
.Lx320_3:               movq             xmm0, rsi
.Lx320_4:               cmp              ecx, 5;                              je    .Lx320_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx320_6
.Lx320_5:               movq             xmm1, rdi
.Lx320_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx320_7:                                                                     jmp   n80_assign_α
.Lx320_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx320_240
                        add              rsp, 16;                             jmp   n78_deref_β
.Lx320_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SUM
                        mov              qword ptr [r9 + 136], rdx;           jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    add              rsp, 96;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZREAD)
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:                                                        jmp   n83_var_α
n82_statement_begin_β:                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_coerce_numeric_α
n84_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lx327_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx329_1
                        cmp              eax, 3;                              jne   .Lx329_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx329_0
.Lx329_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_coerce_numeric_α
.Lx329_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_coerce_numeric_α
n85_coerce_numeric_β:   add              rsp, 16;                             jmp   n84_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx331_1
                        cmp              eax, 3;                              jne   .Lx331_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx331_0
.Lx331_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_cmp_test_α
.Lx331_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_cmp_test_α
n86_coerce_numeric_β:   add              rsp, 16;                             jmp   n85_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n87_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx333_240
                        add              rsp, 16;                             jmp   n86_coerce_numeric_β
.Lx333_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n88_var_α
n87_cmp_test_β:         add              rsp, 16;                             jmp   n86_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_integer_α
n88_var_β:              add              rsp, 16;                             jmp   n87_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_binop_α
n89_lit_integer_β:      add              rsp, 16;                             jmp   n88_var_β
.Lx335_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx336_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx336_7
.Lx336_2:               and              edx, 1;                              jz    .Lx336_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx336_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx336_4
.Lx336_3:               movq             xmm0, rsi
.Lx336_4:               cmp              ecx, 5;                              je    .Lx336_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx336_6
.Lx336_5:               movq             xmm1, rdi
.Lx336_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx336_7:                                                                     jmp   n91_binop_α
.Lx336_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx336_240
                        add              rsp, 16;                             jmp   n89_lit_integer_β
.Lx336_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_binop_α
n90_binop_β:            add              rsp, 16;                             jmp   n89_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    add              rsp, 144;                            jmp   n73_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                                        jmp   n95_var_α
n94_statement_begin_β:                                                        jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_coerce_numeric_α
n96_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx346_1
                        cmp              eax, 3;                              jne   .Lx346_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx346_0
.Lx346_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_coerce_numeric_α
.Lx346_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_coerce_numeric_α
n97_coerce_numeric_β:   add              rsp, 16;                             jmp   n96_var_β
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx348_1
                        cmp              eax, 3;                              jne   .Lx348_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx348_0
.Lx348_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_cmp_test_α
.Lx348_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_cmp_test_α
n98_coerce_numeric_β:   add              rsp, 16;                             jmp   n97_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n99_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx350_240
                        add              rsp, 16;                             jmp   n98_coerce_numeric_β
.Lx350_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n100_var_α
n99_cmp_test_β:         add              rsp, 16;                             jmp   n98_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_lit_integer_α
n100_var_β:             add              rsp, 16;                             jmp   n99_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_binop_α
n101_lit_integer_β:     add              rsp, 16;                             jmp   n100_var_β
.Lx352_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx353_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx353_7
.Lx353_2:               and              edx, 1;                              jz    .Lx353_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx353_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx353_4
.Lx353_3:               movq             xmm0, rsi
.Lx353_4:               cmp              ecx, 5;                              je    .Lx353_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx353_6
.Lx353_5:               movq             xmm1, rdi
.Lx353_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx353_7:                                                                     jmp   n103_binop_α
.Lx353_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx353_240
                        add              rsp, 16;                             jmp   n101_lit_integer_β
.Lx353_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_binop_α
n102_binop_β:           add              rsp, 16;                             jmp   n101_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   add              rsp, 144;                            jmp   n35_statement_begin_α
#=======================================================================================================================
#         ZBODY = SUM                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:                                                       jmp   n107_var_α
n106_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # SUM
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 19, line 22: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:                                                       jmp   n111_statement_end_α
n110_statement_begin_β:                                                       jmp   n112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:                                                         jmp   n112_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α:                                                       jmp   n113_lit_string_α
n112_statement_begin_β:                                                       jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_var_α
.Lx370_0:               .quad            .Lx370_0_s
.Lx370_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_call_α
n114_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n112_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig373z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig373z:              .quad            1
                        .quad            .Lx373_2
                        .quad            .Lx373_2
                        .quad            16
.Lx373_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx373_29
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
.Lx373_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx373_240
                        add              rsp, 16;                             jmp   n114_var_β
.Lx373_240:                                                                   jmp   n116_binop_α
n115_call_β:                                                                  jmp   n114_var_β
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_statement_end_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   add              rsp, 64;                             jmp   n119_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 39: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:                                                       jmp   n120_var_α
n119_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_call_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd382:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd382]
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
                        cmp              eax, 104;                            jne   .Lx381_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
.Lx381_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_statement_end_α
n121_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 32;                             jmp   n153_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 40: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_lit_integer_α
n123_statement_begin_β:                                                       jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_assign_α
.Lx387_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   add              rsp, 16;                             jmp   n127_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 23, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α:                                                       jmp   n128_call_α
n127_statement_begin_β:                                                       jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd394:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd394]
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
                        cmp              eax, 104;                            jne   .Lx393_240
                        add              rsp, 16;                             jmp   n127_statement_begin_β
.Lx393_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_assign_α
n128_call_β:            add              rsp, 16;                             jmp   n127_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 16;                             jmp   n131_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:                                                       jmp   n132_var_α
n131_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_call_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig402z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig402z:              .quad            1
                        .quad            .Lx402_2
                        .quad            .Lx402_2
                        .quad            16
.Lx402_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx402_29
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
.Lx402_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx402_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Lx402_240:                                                                   jmp   n134_statement_end_α
n133_call_β:                                                                  jmp   n131_statement_begin_β
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 32;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_call_α
n135_statement_begin_β:                                                       jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd408:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd408]
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
                        cmp              eax, 104;                            jne   .Lx407_240
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx407_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_var_α
n136_call_β:            add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_binop_α
n137_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx410_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx410_7
.Lx410_2:               and              edx, 1;                              jz    .Lx410_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx410_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx410_4
.Lx410_3:               movq             xmm0, rsi
.Lx410_4:               cmp              ecx, 5;                              je    .Lx410_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx410_6
.Lx410_5:               movq             xmm1, rdi
.Lx410_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx410_7:                                                                     jmp   n139_assign_α
.Lx410_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx410_240
                        add              rsp, 16;                             jmp   n137_var_β
.Lx410_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n140_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   add              rsp, 48;                             jmp   n141_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α:                                                       jmp   n142_var_α
n141_statement_begin_β:                                                       jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_coerce_numeric_α
n143_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx419_1
                        cmp              eax, 3;                              jne   .Lx419_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx419_0
.Lx419_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_coerce_numeric_α
.Lx419_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_coerce_numeric_α
n144_coerce_numeric_β:  add              rsp, 16;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n145_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx421_1
                        cmp              eax, 3;                              jne   .Lx421_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx421_0
.Lx421_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_cmp_test_α
.Lx421_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_cmp_test_α
n145_coerce_numeric_β:  add              rsp, 16;                             jmp   n144_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n146_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx423_240
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lx423_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n147_var_α
n146_cmp_test_β:        add              rsp, 16;                             jmp   n145_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_lit_integer_α
n147_var_β:             add              rsp, 16;                             jmp   n146_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_binop_α
n148_lit_integer_β:     add              rsp, 16;                             jmp   n147_var_β
.Lx425_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx426_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx426_7
.Lx426_2:               and              edx, 1;                              jz    .Lx426_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx426_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx426_4
.Lx426_3:               movq             xmm0, rsi
.Lx426_4:               cmp              ecx, 5;                              je    .Lx426_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx426_6
.Lx426_5:               movq             xmm1, rdi
.Lx426_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx426_7:                                                                     jmp   n150_binop_α
.Lx426_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx426_240
                        add              rsp, 16;                             jmp   n148_lit_integer_β
.Lx426_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_binop_α
n149_binop_β:           add              rsp, 16;                             jmp   n148_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n152_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   add              rsp, 144;                            jmp   n127_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 27, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α:                                                       jmp   n154_call_α
n153_statement_begin_β:                                                       jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd434:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd434]
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
                        cmp              eax, 104;                            jne   .Lx433_240
                        add              rsp, 16;                             jmp   n153_statement_begin_β
.Lx433_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_assign_α
n154_call_β:            add              rsp, 16;                             jmp   n153_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n156_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   add              rsp, 16;                             jmp   n157_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α:                                                       jmp   n158_var_α
n157_statement_begin_β:                                                       jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_binop_α
n159_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx442_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx442_7
.Lx442_2:               and              edx, 1;                              jz    .Lx442_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx442_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx442_4
.Lx442_3:               movq             xmm0, rsi
.Lx442_4:               cmp              ecx, 5;                              je    .Lx442_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx442_6
.Lx442_5:               movq             xmm1, rdi
.Lx442_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx442_7:                                                                     jmp   n161_assign_α
.Lx442_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx442_240
                        add              rsp, 16;                             jmp   n159_var_β
.Lx442_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 48;                             jmp   n163_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:                                                       jmp   n164_lit_integer_α
n163_statement_begin_β:                                                       jmp   n167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_assign_α
.Lx448_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   add              rsp, 16;                             jmp   n167_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 30, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:                                                       jmp   n168_var_α
n167_statement_begin_β:                                                       jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_call_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig456z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig456z:              .quad            1
                        .quad            .Lx456_2
                        .quad            .Lx456_2
                        .quad            16
.Lx456_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx456_29
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
.Lx456_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx456_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
.Lx456_240:                                                                   jmp   n170_statement_end_α
n169_call_β:                                                                  jmp   n167_statement_begin_β
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 32;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_var_α
n171_statement_begin_β:                                                       jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_binop_α
n173_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx463_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx463_7
.Lx463_2:               and              edx, 1;                              jz    .Lx463_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx463_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx463_4
.Lx463_3:               movq             xmm0, rsi
.Lx463_4:               cmp              ecx, 5;                              je    .Lx463_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx463_6
.Lx463_5:               movq             xmm1, rdi
.Lx463_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx463_7:                                                                     jmp   n175_assign_α
.Lx463_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx463_240
                        add              rsp, 16;                             jmp   n173_var_β
.Lx463_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n176_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 48;                             jmp   n177_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:                                                       jmp   n178_call_α
n177_statement_begin_β:                                                       jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd470:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd470]
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
                        cmp              eax, 104;                            jne   .Lx469_240
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lx469_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_var_α
n178_call_β:            add              rsp, 16;                             jmp   n177_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_coerce_numeric_α
n179_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n180_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx473_1
                        cmp              eax, 3;                              jne   .Lx473_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx473_0
.Lx473_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_coerce_numeric_α
.Lx473_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_coerce_numeric_α
n180_coerce_numeric_β:  add              rsp, 16;                             jmp   n179_var_β
#-----------------------------------------------------------------------------------------------------------------------
n181_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx475_1
                        cmp              eax, 3;                              jne   .Lx475_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx475_0
.Lx475_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_cmp_test_α
.Lx475_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_cmp_test_α
n181_coerce_numeric_β:  add              rsp, 16;                             jmp   n180_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n182_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx477_240
                        add              rsp, 16;                             jmp   n181_coerce_numeric_β
.Lx477_240:                                                                   jmp   n183_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   add              rsp, 80;                             jmp   n167_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:                                                       jmp   n185_call_α
n184_statement_begin_β:                                                       jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd483:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd483]
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
                        cmp              eax, 104;                            jne   .Lx482_240
                        add              rsp, 16;                             jmp   n184_statement_begin_β
.Lx482_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_var_α
n185_call_β:            add              rsp, 16;                             jmp   n184_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_binop_α
n186_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx485_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx485_7
.Lx485_2:               and              edx, 1;                              jz    .Lx485_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx485_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx485_4
.Lx485_3:               movq             xmm0, rsi
.Lx485_4:               cmp              ecx, 5;                              je    .Lx485_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx485_6
.Lx485_5:               movq             xmm1, rdi
.Lx485_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx485_7:                                                                     jmp   n188_assign_α
.Lx485_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx485_240
                        add              rsp, 16;                             jmp   n186_var_β
.Lx485_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n189_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   add              rsp, 48;                             jmp   n190_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:                                                       jmp   n191_lit_string_α
n190_statement_begin_β:                                                       jmp   n196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_var_α
.Lx491_0:               .quad            .Lx491_0_s
.Lx491_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_binop_α
n192_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n193_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n194_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_statement_end_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   add              rsp, 48;                             jmp   n196_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α:                                                       jmp   n197_lit_string_α
n196_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_var_α
.Lx499_0:               .quad            .Lx499_0_s
.Lx499_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_binop_α
n198_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n196_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n199_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_statement_end_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   add              rsp, 48;                             jmp   main_γ
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
