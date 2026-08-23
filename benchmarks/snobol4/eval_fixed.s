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
.Lgvan5:                .string          "X"
.Lgvan6:                .string          "ZI"
.Lgvan7:                .string          "R"
.Lgvan8:                .string          "fixed_n"
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
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_integer_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx239_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx240_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx240_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx240_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx240_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx245_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx246_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx246_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx246_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx251_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_unop_α:             sub              rsp, 16
                        mov              r11, 11
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_keyword_assign_snobol4_α
n10_unop_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 12
                        mov              rdi, qword ptr [rip + .Lx253_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx253_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx253_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx253_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 4;                              jmp   n14_lit_integer_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx258_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n16_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 5;                              jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx264_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 6;                              jmp   n22_lit_integer_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx270_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         X = 10
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_lit_integer_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx276_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30
                        mov              r10, 8;                              jmp   n30_define_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n56_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_define_α:           mov              r11, 31
                        mov              rdi, qword ptr [rip + .Lx283_0]
                        mov              rsi, qword ptr [rip + .Lx283_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n32_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx283_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_statement_end_α
n30_define_β:           mov              r11, 31;                             jmp   n29_statement_begin_β
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "ZBODY"
.Lx283_1:               .quad            .Lx283_1_s
.Lx283_1_s:             .string          "ZKN"
                                                                              jmp   .Lx284_245
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
                        cmp              rdx, 0;                              jbe   .Lx284_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx284_41
.Lx284_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx284_41:              lea              rcx, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx284_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx284_110
.Lx284_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx284_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx284_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx284_180
.Lx284_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx284_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx284_245:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 8;                              jmp   n56_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 9;                              jmp   n33_lit_integer_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx289_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
# ZBL     R = EVAL('X + 1')
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_lit_string_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "X + 1"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 39
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd297:            .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd297]
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
                        cmp              al, 104;                             jne   .Lx296_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx296_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
n38_call_β:             mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # R
                        mov              qword ptr [r9 + 120], rdx;           jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 10
                        add              rsp, 32;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 11;                             jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_coerce_numeric_α
n43_var_β:              mov              r11, 44
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 45
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx306_1
                        cmp              al, 3;                               jne   .Lx306_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx306_0
.Lx306_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_coerce_numeric_α
.Lx306_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_coerce_numeric_α
n44_coerce_numeric_β:   mov              r11, 45
                        add              rsp, 16;                             jmp   n43_var_β
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx308_1
                        cmp              al, 3;                               jne   .Lx308_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx308_0
.Lx308_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_cmp_test_α
.Lx308_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_cmp_test_α
n45_coerce_numeric_β:   mov              r11, 46
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n46_cmp_test_α:         sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx310_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx310_239
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
.Lx310_239:                                                                   jmp   n47_var_α
.Lx310_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx310_240
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
.Lx310_240:                                                                   jmp   n47_var_α
n46_cmp_test_β:         mov              r11, 47
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_lit_integer_α
n47_var_β:              mov              r11, 48
                        add              rsp, 16;                             jmp   n46_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_binop_α
n48_lit_integer_β:      mov              r11, 49
                        add              rsp, 16;                             jmp   n47_var_β
.Lx312_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            sub              rsp, 16
                        mov              r11, 50
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx313_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx313_7
.Lx313_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx313_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx313_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx313_4
.Lx313_3:               movq             xmm0, rsi
.Lx313_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx313_7:                                                                     jmp   n50_assign_α
.Lx313_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx313_240
                        add              rsp, 16;                             jmp   n48_lit_integer_β
.Lx313_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        mov              r10, 11
                        add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = R                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 53
                        mov              r10, 12;                             jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 112]            # R
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n55_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 56
                        mov              r10, 12
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 13, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 57
                        mov              r10, 13;                             jmp   n57_statement_end_α
n56_statement_begin_β:  mov              r11, 57;                             jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 58
                        mov              r10, 13;                             jmp   n58_statement_begin_α
#=======================================================================================================================
#         <stmt 14, line 64: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 59
                        mov              r10, 14;                             jmp   n59_lit_string_α
n58_statement_begin_β:  mov              r11, 59;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_var_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_call_α
n60_var_β:              mov              r11, 61
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n58_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        mov              r11, 62
                        lea              rcx, [rip + .Lsig332z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig332z:              .quad            1
                        .quad            .Lx332_2
                        .quad            .Lx332_2
                        .quad            16
.Lx332_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx332_29
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
.Lx332_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx332_240
                        add              rsp, 16;                             jmp   n60_var_β
.Lx332_240:                                                                   jmp   n62_binop_α
n61_call_β:             mov              r11, 62;                             jmp   n60_var_β
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              r11, 63
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 64
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_statement_end_α
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 14
                        add              rsp, 64;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 15;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rdi, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx339_240
                        add              rsp, 16;                             jmp   n65_statement_begin_β
.Lx339_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # fixed_n
                        mov              qword ptr [r9 + 136], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n172_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 16;                             jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_binop_α
n71_lit_integer_β:      mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
.Lx346_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
                        mov              r11, 73
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx347_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx347_7
.Lx347_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx347_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx347_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx347_4
.Lx347_3:               movq             xmm0, rsi
.Lx347_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx347_7:                                                                     jmp   n73_assign_α
.Lx347_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx347_240
                        add              rsp, 16;                             jmp   n71_lit_integer_β
.Lx347_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n74_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75
                        mov              r10, 16
                        add              rsp, 48;                             jmp   n75_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 76
                        mov              r10, 17;                             jmp   n76_var_α
n75_statement_begin_β:  mov              r11, 76;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_integer_β:      mov              r11, 78
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Lx354_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 79
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx355_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx355_7
.Lx355_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx355_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx355_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx355_4
.Lx355_3:               movq             xmm0, rsi
.Lx355_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx355_7:                                                                     jmp   n79_assign_α
.Lx355_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx355_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lx355_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 81
                        mov              r10, 17
                        add              rsp, 48;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 82
                        mov              r10, 18;                             jmp   n82_var_α
n81_statement_begin_β:  mov              r11, 82;                             jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_differ_α
n83_lit_string_β:       mov              r11, 84
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx362_0:               .quad            .Lx362_0_s
.Lx362_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n84_differ_α:           sub              rsp, 16
                        mov              r11, 85
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx364_240
                        add              rsp, 16;                             jmp   n83_lit_string_β
.Lx364_240:                                                                   jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86
                        mov              r10, 18
                        add              rsp, 48;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 87
                        mov              r10, 19;                             jmp   n87_lit_integer_α
n86_statement_begin_β:  mov              r11, 87;                             jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_assign_α
.Lx369_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 89
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n90_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:  mov              r11, 91
                        mov              r10, 20;                             jmp   n91_call_α
n90_statement_begin_β:  mov              r11, 91;                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             sub              rsp, 16
                        mov              r11, 92
                        .section         .rodata
.Lrkfnzd376:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd376]
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
                        cmp              al, 104;                             jne   .Lx375_240
                        add              rsp, 16;                             jmp   n90_statement_begin_β
.Lx375_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_assign_α
n91_call_β:             mov              r11, 92
                        add              rsp, 16;                             jmp   n90_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              r11, 93
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 94
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n94_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 95
                        mov              r10, 21;                             jmp   n95_var_α
n94_statement_begin_β:  mov              r11, 95;                             jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_call_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             sub              rsp, 16
                        mov              r11, 97
                        lea              rcx, [rip + .Lsig384z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig384z:              .quad            1
                        .quad            .Lx384_2
                        .quad            .Lx384_2
                        .quad            16
.Lx384_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx384_29
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
.Lx384_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx384_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Lx384_240:                                                                   jmp   n97_statement_end_α
n96_call_β:             mov              r11, 97;                             jmp   n94_statement_begin_β
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    mov              r11, 98
                        mov              r10, 21
                        add              rsp, 32;                             jmp   n98_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:  mov              r11, 99
                        mov              r10, 22;                             jmp   n99_call_α
n98_statement_begin_β:  mov              r11, 99;                             jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             sub              rsp, 16
                        mov              r11, 100
                        .section         .rodata
.Lrkfnzd390:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd390]
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
                        cmp              al, 104;                             jne   .Lx389_240
                        add              rsp, 16;                             jmp   n98_statement_begin_β
.Lx389_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_var_α
n99_call_β:             mov              r11, 100
                        add              rsp, 16;                             jmp   n98_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_binop_α
n100_var_β:             mov              r11, 101
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:           sub              rsp, 16
                        mov              r11, 102
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx392_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx392_7
.Lx392_2:               and              edx, 1;                              jz    .Lx392_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx392_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx392_4
.Lx392_3:               movq             xmm0, rsi
.Lx392_4:               cmp              cl, 5;                               je    .Lx392_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx392_6
.Lx392_5:               movq             xmm1, rdi
.Lx392_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx392_7:                                                                     jmp   n102_assign_α
.Lx392_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx392_240
                        add              rsp, 16;                             jmp   n100_var_β
.Lx392_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 103
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n103_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 104
                        mov              r10, 22
                        add              rsp, 48;                             jmp   n104_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 105
                        mov              r10, 23;                             jmp   n105_var_α
n104_statement_begin_β: mov              r11, 105;                            jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_coerce_numeric_α
n106_var_β:             mov              r11, 107
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n107_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 108
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx401_1
                        cmp              al, 3;                               jne   .Lx401_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx401_0
.Lx401_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_coerce_numeric_α
.Lx401_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_coerce_numeric_α
n107_coerce_numeric_β:  mov              r11, 108
                        add              rsp, 16;                             jmp   n106_var_β
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 109
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx403_1
                        cmp              al, 3;                               jne   .Lx403_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx403_0
.Lx403_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_cmp_test_α
.Lx403_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_cmp_test_α
n108_coerce_numeric_β:  mov              r11, 109
                        add              rsp, 16;                             jmp   n107_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n109_cmp_test_α:        sub              rsp, 16
                        mov              r11, 110
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx405_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx405_239
                        add              rsp, 16;                             jmp   n108_coerce_numeric_β
.Lx405_239:                                                                   jmp   n110_var_α
.Lx405_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx405_240
                        add              rsp, 16;                             jmp   n108_coerce_numeric_β
.Lx405_240:                                                                   jmp   n110_var_α
n109_cmp_test_β:        mov              r11, 110
                        add              rsp, 16;                             jmp   n108_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_lit_integer_α
n110_var_β:             mov              r11, 111
                        add              rsp, 16;                             jmp   n109_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_binop_α
n111_lit_integer_β:     mov              r11, 112
                        add              rsp, 16;                             jmp   n110_var_β
.Lx407_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:           sub              rsp, 16
                        mov              r11, 113
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx408_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx408_7
.Lx408_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx408_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx408_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx408_4
.Lx408_3:               movq             xmm0, rsi
.Lx408_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx408_7:                                                                     jmp   n113_assign_α
.Lx408_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx408_240
                        add              rsp, 16;                             jmp   n111_lit_integer_β
.Lx408_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 115
                        mov              r10, 23
                        add              rsp, 128;                            jmp   n90_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 116
                        mov              r10, 24;                             jmp   n116_call_α
n115_statement_begin_β: mov              r11, 116;                            jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            sub              rsp, 16
                        mov              r11, 117
                        .section         .rodata
.Lrkfnzd415:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd415]
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
                        cmp              al, 104;                             jne   .Lx414_240
                        add              rsp, 16;                             jmp   n115_statement_begin_β
.Lx414_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_assign_α
n116_call_β:            mov              r11, 117
                        add              rsp, 16;                             jmp   n115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n118_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   mov              r11, 119
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n119_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α: mov              r11, 120
                        mov              r10, 25;                             jmp   n120_var_α
n119_statement_begin_β: mov              r11, 120;                            jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 121
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_binop_α
n121_var_β:             mov              r11, 122
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:           sub              rsp, 16
                        mov              r11, 123
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx423_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx423_7
.Lx423_2:               and              edx, 1;                              jz    .Lx423_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx423_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx423_4
.Lx423_3:               movq             xmm0, rsi
.Lx423_4:               cmp              cl, 5;                               je    .Lx423_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx423_6
.Lx423_5:               movq             xmm1, rdi
.Lx423_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx423_7:                                                                     jmp   n123_assign_α
.Lx423_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx423_240
                        add              rsp, 16;                             jmp   n121_var_β
.Lx423_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   mov              r11, 125
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n125_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α: mov              r11, 126
                        mov              r10, 26;                             jmp   n126_lit_integer_α
n125_statement_begin_β: mov              r11, 126;                            jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_assign_α
.Lx429_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              r11, 128
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 129
                        mov              r10, 26
                        add              rsp, 16;                             jmp   n129_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 130
                        mov              r10, 27;                             jmp   n130_var_α
n129_statement_begin_β: mov              r11, 130;                            jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_call_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            sub              rsp, 16
                        mov              r11, 132
                        lea              rcx, [rip + .Lsig437z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig437z:              .quad            1
                        .quad            .Lx437_2
                        .quad            .Lx437_2
                        .quad            16
.Lx437_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx437_29
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
.Lx437_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx437_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Lx437_240:                                                                   jmp   n132_statement_end_α
n131_call_β:            mov              r11, 132;                            jmp   n129_statement_begin_β
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   mov              r11, 133
                        mov              r10, 27
                        add              rsp, 32;                             jmp   n133_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 134
                        mov              r10, 28;                             jmp   n134_var_α
n133_statement_begin_β: mov              r11, 134;                            jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_binop_α
n135_var_β:             mov              r11, 136
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           sub              rsp, 16
                        mov              r11, 137
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx444_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx444_7
.Lx444_2:               and              edx, 1;                              jz    .Lx444_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx444_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx444_4
.Lx444_3:               movq             xmm0, rsi
.Lx444_4:               cmp              cl, 5;                               je    .Lx444_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx444_6
.Lx444_5:               movq             xmm1, rdi
.Lx444_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx444_7:                                                                     jmp   n137_assign_α
.Lx444_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx444_240
                        add              rsp, 16;                             jmp   n135_var_β
.Lx444_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              r11, 138
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 139
                        mov              r10, 28
                        add              rsp, 48;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 140
                        mov              r10, 29;                             jmp   n140_call_α
n139_statement_begin_β: mov              r11, 140;                            jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            sub              rsp, 16
                        mov              r11, 141
                        .section         .rodata
.Lrkfnzd451:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd451]
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
                        cmp              al, 104;                             jne   .Lx450_240
                        add              rsp, 16;                             jmp   n139_statement_begin_β
.Lx450_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_call_β:            mov              r11, 141
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_coerce_numeric_α
n141_var_β:             mov              r11, 142
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 143
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx454_1
                        cmp              al, 3;                               jne   .Lx454_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx454_0
.Lx454_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_coerce_numeric_α
.Lx454_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_coerce_numeric_α
n142_coerce_numeric_β:  mov              r11, 143
                        add              rsp, 16;                             jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n143_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx456_1
                        cmp              al, 3;                               jne   .Lx456_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx456_0
.Lx456_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_cmp_test_α
.Lx456_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_cmp_test_α
n143_coerce_numeric_β:  mov              r11, 144
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n144_cmp_test_α:        sub              rsp, 16
                        mov              r11, 145
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx458_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx458_239
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
.Lx458_239:                                                                   jmp   n145_statement_end_α
.Lx458_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx458_240
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
.Lx458_240:                                                                   jmp   n145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 146
                        mov              r10, 29
                        add              rsp, 80;                             jmp   n129_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α: mov              r11, 147
                        mov              r10, 30;                             jmp   n147_call_α
n146_statement_begin_β: mov              r11, 147;                            jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            sub              rsp, 16
                        mov              r11, 148
                        .section         .rodata
.Lrkfnzd464:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd464]
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
                        cmp              al, 104;                             jne   .Lx463_240
                        add              rsp, 16;                             jmp   n146_statement_begin_β
.Lx463_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
n147_call_β:            mov              r11, 148
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_binop_α
n148_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              r11, 150
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx466_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx466_7
.Lx466_2:               and              edx, 1;                              jz    .Lx466_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx466_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx466_4
.Lx466_3:               movq             xmm0, rsi
.Lx466_4:               cmp              cl, 5;                               je    .Lx466_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx466_6
.Lx466_5:               movq             xmm1, rdi
.Lx466_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx466_7:                                                                     jmp   n150_assign_α
.Lx466_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx466_240
                        add              rsp, 16;                             jmp   n148_var_β
.Lx466_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 152
                        mov              r10, 30
                        add              rsp, 48;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 153
                        mov              r10, 31;                             jmp   n153_lit_string_α
n152_statement_begin_β: mov              r11, 153;                            jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_var_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_binop_α
n154_var_β:             mov              r11, 155
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              r11, 156
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
n156_assign_α:          mov              r11, 157
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_statement_end_α
.Lx475_0:               .quad            .Lx475_0_s
.Lx475_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 158
                        mov              r10, 31
                        add              rsp, 48;                             jmp   n158_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α: mov              r11, 159
                        mov              r10, 32;                             jmp   n159_lit_string_α
n158_statement_begin_β: mov              r11, 159;                            jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_var_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_binop_α
n160_var_β:             mov              r11, 161
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:           sub              rsp, 16
                        mov              r11, 162
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              r11, 163
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_statement_end_α
.Lx483_0:               .quad            .Lx483_0_s
.Lx483_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 164
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n164_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 165
                        mov              r10, 33;                             jmp   n165_lit_string_α
n164_statement_begin_β: mov              r11, 165;                            jmp   n232_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_var_α
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
n166_var_β:             mov              r11, 167
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_binop_α
n167_lit_integer_β:     mov              r11, 168
                        add              rsp, 16;                             jmp   n166_var_β
.Lx490_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx491_240
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Lx491_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_binop_α
n168_binop_β:           mov              r11, 169
                        add              rsp, 16;                             jmp   n167_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           sub              rsp, 16
                        mov              r11, 170
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              r11, 171
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_statement_end_α
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 172
                        mov              r10, 33
                        add              rsp, 80;                             jmp   n232_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α: mov              r11, 173
                        mov              r10, 34;                             jmp   n173_var_α
n172_statement_begin_β: mov              r11, 173;                            jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_differ_α
n174_lit_string_β:      mov              r11, 175
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n172_statement_begin_β
.Lx499_0:               .quad            .Lx499_0_s
.Lx499_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n175_differ_α:          sub              rsp, 16
                        mov              r11, 176
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx501_240
                        add              rsp, 16;                             jmp   n174_lit_string_β
.Lx501_240:                                                                   jmp   n176_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 177
                        mov              r10, 34
                        add              rsp, 48;                             jmp   n181_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 178
                        mov              r10, 35;                             jmp   n178_var_α
n177_statement_begin_β: mov              r11, 178;                            jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 128]            # fixed_n
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n180_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 181
                        mov              r10, 35
                        add              rsp, 16;                             jmp   n181_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α: mov              r11, 182
                        mov              r10, 36;                             jmp   n182_call_α
n181_statement_begin_β: mov              r11, 182;                            jmp   n185_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:            sub              rsp, 16
                        mov              r11, 183
                        .section         .rodata
.Lrkfnzd513:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd513]
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
                        cmp              al, 104;                             jne   .Lx512_240
                        add              rsp, 16;                             jmp   n181_statement_begin_β
.Lx512_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_assign_α
n182_call_β:            mov              r11, 183
                        add              rsp, 16;                             jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n184_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 185
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n185_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α: mov              r11, 186
                        mov              r10, 37;                             jmp   n186_lit_integer_α
n185_statement_begin_β: mov              r11, 186;                            jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_assign_α
.Lx519_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              r11, 188
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n188_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 189
                        mov              r10, 37
                        add              rsp, 16;                             jmp   n189_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α: mov              r11, 190
                        mov              r10, 38;                             jmp   n190_var_α
n189_statement_begin_β: mov              r11, 190;                            jmp   n193_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_call_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_α:            sub              rsp, 16
                        mov              r11, 192
                        lea              rcx, [rip + .Lsig527z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig527z:              .quad            1
                        .quad            .Lx527_2
                        .quad            .Lx527_2
                        .quad            16
.Lx527_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx527_29
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
.Lx527_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx527_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
.Lx527_240:                                                                   jmp   n192_statement_end_α
n191_call_β:            mov              r11, 192;                            jmp   n189_statement_begin_β
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 193
                        mov              r10, 38
                        add              rsp, 32;                             jmp   n193_statement_begin_α
#=======================================================================================================================
#         <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 194
                        mov              r10, 39;                             jmp   n194_var_α
n193_statement_begin_β: mov              r11, 194;                            jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 195
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_binop_α
n195_var_β:             mov              r11, 196
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:           sub              rsp, 16
                        mov              r11, 197
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx534_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx534_7
.Lx534_2:               and              edx, 1;                              jz    .Lx534_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx534_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx534_4
.Lx534_3:               movq             xmm0, rsi
.Lx534_4:               cmp              cl, 5;                               je    .Lx534_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx534_6
.Lx534_5:               movq             xmm1, rdi
.Lx534_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx534_7:                                                                     jmp   n197_assign_α
.Lx534_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx534_240
                        add              rsp, 16;                             jmp   n195_var_β
.Lx534_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n198_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 199
                        mov              r10, 39
                        add              rsp, 48;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 200
                        mov              r10, 40;                             jmp   n200_var_α
n199_statement_begin_β: mov              r11, 200;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              r11, 201
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 128]            # fixed_n
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_coerce_numeric_α
n201_var_β:             mov              r11, 202
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 203
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx543_1
                        cmp              al, 3;                               jne   .Lx543_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx543_0
.Lx543_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_coerce_numeric_α
.Lx543_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_coerce_numeric_α
n202_coerce_numeric_β:  mov              r11, 203
                        add              rsp, 16;                             jmp   n201_var_β
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 204
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx545_1
                        cmp              al, 3;                               jne   .Lx545_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx545_0
.Lx545_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_cmp_test_α
.Lx545_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_cmp_test_α
n203_coerce_numeric_β:  mov              r11, 204
                        add              rsp, 16;                             jmp   n202_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n204_cmp_test_α:        sub              rsp, 16
                        mov              r11, 205
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx547_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx547_239
                        add              rsp, 16;                             jmp   n203_coerce_numeric_β
.Lx547_239:                                                                   jmp   n205_statement_end_α
.Lx547_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx547_240
                        add              rsp, 16;                             jmp   n203_coerce_numeric_β
.Lx547_240:                                                                   jmp   n205_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 206
                        mov              r10, 40
                        add              rsp, 80;                             jmp   n189_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 207
                        mov              r10, 41;                             jmp   n207_call_α
n206_statement_begin_β: mov              r11, 207;                            jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            sub              rsp, 16
                        mov              r11, 208
                        .section         .rodata
.Lrkfnzd553:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd553]
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
                        cmp              al, 104;                             jne   .Lx552_240
                        add              rsp, 16;                             jmp   n206_statement_begin_β
.Lx552_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_var_α
n207_call_β:            mov              r11, 208
                        add              rsp, 16;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_binop_α
n208_var_β:             mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx555_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx555_7
.Lx555_2:               and              edx, 1;                              jz    .Lx555_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx555_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx555_4
.Lx555_3:               movq             xmm0, rsi
.Lx555_4:               cmp              cl, 5;                               je    .Lx555_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx555_6
.Lx555_5:               movq             xmm1, rdi
.Lx555_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx555_7:                                                                     jmp   n210_assign_α
.Lx555_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx555_240
                        add              rsp, 16;                             jmp   n208_var_β
.Lx555_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              r11, 211
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 212
                        mov              r10, 41
                        add              rsp, 48;                             jmp   n212_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α: mov              r11, 213
                        mov              r10, 42;                             jmp   n213_lit_string_α
n212_statement_begin_β: mov              r11, 213;                            jmp   n218_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_var_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 215
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_var_β:             mov              r11, 215
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              r11, 216
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 217
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_statement_end_α
.Lx564_0:               .quad            .Lx564_0_s
.Lx564_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   mov              r11, 218
                        mov              r10, 42
                        add              rsp, 48;                             jmp   n218_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 219
                        mov              r10, 43;                             jmp   n219_lit_string_α
n218_statement_begin_β: mov              r11, 219;                            jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              r11, 220
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_var_α
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_binop_α
n220_var_β:             mov              r11, 221
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 222
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 223
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_statement_end_α
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 224
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n224_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 225
                        mov              r10, 44;                             jmp   n225_lit_string_α
n224_statement_begin_β: mov              r11, 225;                            jmp   n232_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_var_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_lit_integer_α
n226_var_β:             mov              r11, 227
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 228
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_binop_α
n227_lit_integer_β:     mov              r11, 228
                        add              rsp, 16;                             jmp   n226_var_β
.Lx579_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 229
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx580_240
                        add              rsp, 16;                             jmp   n227_lit_integer_β
.Lx580_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_binop_α
n228_binop_β:           mov              r11, 229
                        add              rsp, 16;                             jmp   n227_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:          mov              r11, 231
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_statement_end_α
.Lx582_0:               .quad            .Lx582_0_s
.Lx582_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   mov              r11, 232
                        mov              r10, 44
                        add              rsp, 80;                             jmp   n232_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_begin_α: mov              r11, 233
                        mov              r10, 45;                             jmp   n233_var_α
n232_statement_begin_β: mov              r11, 233;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              r11, 235
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   mov              r11, 236
                        mov              r10, 45
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 237
                        pop              rcx
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
