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
.Lgvan6:                .string          "S"
.Lgvan7:                .string          "NS"
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
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx246_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx247_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx247_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx247_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx247_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx252_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx253_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx253_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx253_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx253_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx258_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_unop_α:             sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_keyword_assign_snobol4_α
n10_unop_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 12
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx260_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx260_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx260_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx265_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx271_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx277_0:               .quad            20
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
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              rsi, qword ptr [rip + .Lx284_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "ZBODY"
.Lx284_1:               .quad            .Lx284_1_s
.Lx284_1_s:             .string          "ZKN"
                                                                              jmp   .Lx285_245
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
                        cmp              rdx, 0;                              jbe   .Lx285_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx285_41
.Lx285_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx285_41:              lea              rcx, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx285_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx285_110
.Lx285_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx285_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx285_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx285_180
.Lx285_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx285_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx285_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n63_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29
                        mov              r10, 8;                              jmp   n29_lit_integer_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx290_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
# ZBL     S = 'The quick brown fox jumps over the lazy dog'
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 9;                              jmp   n33_lit_string_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "The quick brown fox jumps over the lazy dog"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
#         S = REPLACE(S, 'aeiou', '*****')
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_var_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_lit_string_α
n38_lit_string_β:       mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_call_α
n39_lit_string_β:       mov              r11, 40
                        add              rsp, 16;                             jmp   n38_lit_string_β
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "*****"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             sub              rsp, 16
                        mov              r11, 41
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
.Lrkfnzd306:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd306]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx305_240
                        add              rsp, 16;                             jmp   n39_lit_string_β
.Lx305_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_assign_α
n40_call_β:             mov              r11, 41
                        add              rsp, 16;                             jmp   n39_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S
                        mov              qword ptr [r9 + 104], rdx;           jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         NS = SIZE(S)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 11;                             jmp   n44_var_α
n43_statement_begin_β:  mov              r11, 44;                             jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 96]             # S
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_call_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        mov              r11, 46
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd314:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd314]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx313_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lx313_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_assign_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # NS
                        mov              qword ptr [r9 + 120], rdx;           jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n48_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 49
                        mov              r10, 12;                             jmp   n49_var_α
n48_statement_begin_β:  mov              r11, 49;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_coerce_numeric_α
n50_var_β:              mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 52
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx323_1
                        cmp              al, 3;                               jne   .Lx323_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx323_0
.Lx323_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_coerce_numeric_α
.Lx323_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_coerce_numeric_α
n51_coerce_numeric_β:   mov              r11, 52
                        add              rsp, 16;                             jmp   n50_var_β
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 53
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx325_1
                        cmp              al, 3;                               jne   .Lx325_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx325_0
.Lx325_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_cmp_test_α
.Lx325_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_cmp_test_α
n52_coerce_numeric_β:   mov              r11, 53
                        add              rsp, 16;                             jmp   n51_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n53_cmp_test_α:         sub              rsp, 16
                        mov              r11, 54
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx327_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx327_239
                        add              rsp, 16;                             jmp   n52_coerce_numeric_β
.Lx327_239:                                                                   jmp   n54_var_α
.Lx327_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx327_240
                        add              rsp, 16;                             jmp   n52_coerce_numeric_β
.Lx327_240:                                                                   jmp   n54_var_α
n53_cmp_test_β:         mov              r11, 54
                        add              rsp, 16;                             jmp   n52_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_lit_integer_α
n54_var_β:              mov              r11, 55
                        add              rsp, 16;                             jmp   n53_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_binop_α
n55_lit_integer_β:      mov              r11, 56
                        add              rsp, 16;                             jmp   n54_var_β
.Lx329_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              r11, 57
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx330_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx330_7
.Lx330_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx330_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx330_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx330_4
.Lx330_3:               movq             xmm0, rsi
.Lx330_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx330_7:                                                                     jmp   n57_assign_α
.Lx330_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx330_240
                        add              rsp, 16;                             jmp   n55_lit_integer_β
.Lx330_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 12
                        add              rsp, 128;                            jmp   n32_statement_begin_α
#=======================================================================================================================
#         ZBODY = NS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 13;                             jmp   n60_var_α
n59_statement_begin_β:  mov              r11, 60;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 112]            # NS
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        mov              r10, 13
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64
                        mov              r10, 14;                             jmp   n64_statement_end_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 14;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 15;                             jmp   n66_lit_string_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_var_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_call_α
n67_var_β:              mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        mov              r11, 69
                        lea              rcx, [rip + .Lsig349z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig349z:              .quad            1
                        .quad            .Lx349_2
                        .quad            .Lx349_2
                        .quad            16
.Lx349_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx349_29
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
.Lx349_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx349_240
                        add              rsp, 16;                             jmp   n67_var_β
.Lx349_240:                                                                   jmp   n69_binop_α
n68_call_β:             mov              r11, 69;                             jmp   n67_var_β
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            sub              rsp, 16
                        mov              r11, 70
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
n70_assign_α:           mov              r11, 71
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_statement_end_α
.Lx351_0:               .quad            .Lx351_0_s
.Lx351_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 72
                        mov              r10, 15
                        add              rsp, 64;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 73
                        mov              r10, 16;                             jmp   n73_var_α
n72_statement_begin_β:  mov              r11, 73;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx356_240
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Lx356_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # fixed_n
                        mov              qword ptr [r9 + 136], rdx;           jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 17;                             jmp   n77_var_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_binop_α
n78_lit_integer_β:      mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx363_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            sub              rsp, 16
                        mov              r11, 80
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx364_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx364_7
.Lx364_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx364_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx364_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx364_4
.Lx364_3:               movq             xmm0, rsi
.Lx364_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx364_7:                                                                     jmp   n80_assign_α
.Lx364_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx364_240
                        add              rsp, 16;                             jmp   n78_lit_integer_β
.Lx364_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 82
                        mov              r10, 17
                        add              rsp, 48;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 83
                        mov              r10, 18;                             jmp   n83_var_α
n82_statement_begin_β:  mov              r11, 83;                             jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_binop_α
n84_lit_integer_β:      mov              r11, 85
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lx371_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              r11, 86
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx372_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx372_7
.Lx372_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx372_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx372_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx372_4
.Lx372_3:               movq             xmm0, rsi
.Lx372_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx372_7:                                                                     jmp   n86_assign_α
.Lx372_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx372_240
                        add              rsp, 16;                             jmp   n84_lit_integer_β
.Lx372_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88
                        mov              r10, 18
                        add              rsp, 48;                             jmp   n88_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89
                        mov              r10, 19;                             jmp   n89_var_α
n88_statement_begin_β:  mov              r11, 89;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_differ_α
n90_lit_string_β:       mov              r11, 91
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n88_statement_begin_β
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n91_differ_α:           sub              rsp, 16
                        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx381_240
                        add              rsp, 16;                             jmp   n90_lit_string_β
.Lx381_240:                                                                   jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        mov              r10, 19
                        add              rsp, 48;                             jmp   n122_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94
                        mov              r10, 20;                             jmp   n94_lit_integer_α
n93_statement_begin_β:  mov              r11, 94;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_assign_α
.Lx386_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 97
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n97_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 98
                        mov              r10, 21;                             jmp   n98_call_α
n97_statement_begin_β:  mov              r11, 98;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             sub              rsp, 16
                        mov              r11, 99
                        .section         .rodata
.Lrkfnzd393:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd393]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx392_240
                        add              rsp, 16;                             jmp   n97_statement_begin_β
.Lx392_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_assign_α
n98_call_β:             mov              r11, 99
                        add              rsp, 16;                             jmp   n97_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 101
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n101_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 102
                        mov              r10, 22;                             jmp   n102_var_α
n101_statement_begin_β: mov              r11, 102;                            jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        mov              r11, 104
                        lea              rcx, [rip + .Lsig401z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig401z:              .quad            1
                        .quad            .Lx401_2
                        .quad            .Lx401_2
                        .quad            16
.Lx401_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx401_29
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
.Lx401_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx401_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Lx401_240:                                                                   jmp   n104_statement_end_α
n103_call_β:            mov              r11, 104;                            jmp   n101_statement_begin_β
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 22
                        add              rsp, 32;                             jmp   n105_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106
                        mov              r10, 23;                             jmp   n106_call_α
n105_statement_begin_β: mov              r11, 106;                            jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        mov              r11, 107
                        .section         .rodata
.Lrkfnzd407:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd407]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx406_240
                        add              rsp, 16;                             jmp   n105_statement_begin_β
.Lx406_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_var_α
n106_call_β:            mov              r11, 107
                        add              rsp, 16;                             jmp   n105_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_binop_α
n107_var_β:             mov              r11, 108
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           sub              rsp, 16
                        mov              r11, 109
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx409_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx409_7
.Lx409_2:               and              edx, 1;                              jz    .Lx409_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx409_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx409_4
.Lx409_3:               movq             xmm0, rsi
.Lx409_4:               cmp              cl, 5;                               je    .Lx409_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx409_6
.Lx409_5:               movq             xmm1, rdi
.Lx409_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx409_7:                                                                     jmp   n109_assign_α
.Lx409_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx409_240
                        add              rsp, 16;                             jmp   n107_var_β
.Lx409_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   mov              r11, 111
                        mov              r10, 23
                        add              rsp, 48;                             jmp   n111_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α: mov              r11, 112
                        mov              r10, 24;                             jmp   n112_var_α
n111_statement_begin_β: mov              r11, 112;                            jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_coerce_numeric_α
n113_var_β:             mov              r11, 114
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 115
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx418_1
                        cmp              al, 3;                               jne   .Lx418_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx418_0
.Lx418_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_coerce_numeric_α
.Lx418_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_coerce_numeric_α
n114_coerce_numeric_β:  mov              r11, 115
                        add              rsp, 16;                             jmp   n113_var_β
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 116
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx420_1
                        cmp              al, 3;                               jne   .Lx420_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx420_0
.Lx420_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_cmp_test_α
.Lx420_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_cmp_test_α
n115_coerce_numeric_β:  mov              r11, 116
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n116_cmp_test_α:        sub              rsp, 16
                        mov              r11, 117
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx422_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx422_239
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
.Lx422_239:                                                                   jmp   n117_var_α
.Lx422_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx422_240
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
.Lx422_240:                                                                   jmp   n117_var_α
n116_cmp_test_β:        mov              r11, 117
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_lit_integer_α
n117_var_β:             mov              r11, 118
                        add              rsp, 16;                             jmp   n116_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_binop_α
n118_lit_integer_β:     mov              r11, 119
                        add              rsp, 16;                             jmp   n117_var_β
.Lx424_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           sub              rsp, 16
                        mov              r11, 120
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx425_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx425_7
.Lx425_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx425_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx425_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx425_4
.Lx425_3:               movq             xmm0, rsi
.Lx425_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx425_7:                                                                     jmp   n120_assign_α
.Lx425_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx425_240
                        add              rsp, 16;                             jmp   n118_lit_integer_β
.Lx425_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 122
                        mov              r10, 24
                        add              rsp, 128;                            jmp   n97_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 123
                        mov              r10, 25;                             jmp   n123_call_α
n122_statement_begin_β: mov              r11, 123;                            jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            sub              rsp, 16
                        mov              r11, 124
                        .section         .rodata
.Lrkfnzd432:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd432]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx431_240
                        add              rsp, 16;                             jmp   n122_statement_begin_β
.Lx431_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
n123_call_β:            mov              r11, 124
                        add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   mov              r11, 126
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n126_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α: mov              r11, 127
                        mov              r10, 26;                             jmp   n127_var_α
n126_statement_begin_β: mov              r11, 127;                            jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_binop_α
n128_var_β:             mov              r11, 129
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n126_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:           sub              rsp, 16
                        mov              r11, 130
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx440_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx440_7
.Lx440_2:               and              edx, 1;                              jz    .Lx440_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx440_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx440_4
.Lx440_3:               movq             xmm0, rsi
.Lx440_4:               cmp              cl, 5;                               je    .Lx440_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx440_6
.Lx440_5:               movq             xmm1, rdi
.Lx440_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx440_7:                                                                     jmp   n130_assign_α
.Lx440_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx440_240
                        add              rsp, 16;                             jmp   n128_var_β
.Lx440_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              r11, 131
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n131_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   mov              r11, 132
                        mov              r10, 26
                        add              rsp, 48;                             jmp   n132_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α: mov              r11, 133
                        mov              r10, 27;                             jmp   n133_lit_integer_α
n132_statement_begin_β: mov              r11, 133;                            jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_assign_α
.Lx446_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n136_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137
                        mov              r10, 28;                             jmp   n137_var_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_call_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:            sub              rsp, 16
                        mov              r11, 139
                        lea              rcx, [rip + .Lsig454z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig454z:              .quad            1
                        .quad            .Lx454_2
                        .quad            .Lx454_2
                        .quad            16
.Lx454_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx454_29
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
.Lx454_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx454_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
.Lx454_240:                                                                   jmp   n139_statement_end_α
n138_call_β:            mov              r11, 139;                            jmp   n136_statement_begin_β
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   mov              r11, 140
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n140_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 141
                        mov              r10, 29;                             jmp   n141_var_α
n140_statement_begin_β: mov              r11, 141;                            jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_binop_α
n142_var_β:             mov              r11, 143
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx461_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx461_7
.Lx461_2:               and              edx, 1;                              jz    .Lx461_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx461_4
.Lx461_3:               movq             xmm0, rsi
.Lx461_4:               cmp              cl, 5;                               je    .Lx461_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx461_6
.Lx461_5:               movq             xmm1, rdi
.Lx461_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx461_7:                                                                     jmp   n144_assign_α
.Lx461_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx461_240
                        add              rsp, 16;                             jmp   n142_var_β
.Lx461_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n144_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 146
                        mov              r10, 29
                        add              rsp, 48;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α: mov              r11, 147
                        mov              r10, 30;                             jmp   n147_call_α
n146_statement_begin_β: mov              r11, 147;                            jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            sub              rsp, 16
                        mov              r11, 148
                        .section         .rodata
.Lrkfnzd468:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd468]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx467_240
                        add              rsp, 16;                             jmp   n146_statement_begin_β
.Lx467_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
n147_call_β:            mov              r11, 148
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_coerce_numeric_α
n148_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 150
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx471_1
                        cmp              al, 3;                               jne   .Lx471_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx471_0
.Lx471_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_coerce_numeric_α
.Lx471_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_coerce_numeric_α
n149_coerce_numeric_β:  mov              r11, 150
                        add              rsp, 16;                             jmp   n148_var_β
#-----------------------------------------------------------------------------------------------------------------------
n150_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 151
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx473_1
                        cmp              al, 3;                               jne   .Lx473_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx473_0
.Lx473_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_cmp_test_α
.Lx473_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n151_cmp_test_α
n150_coerce_numeric_β:  mov              r11, 151
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n151_cmp_test_α:        sub              rsp, 16
                        mov              r11, 152
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx475_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx475_239
                        add              rsp, 16;                             jmp   n150_coerce_numeric_β
.Lx475_239:                                                                   jmp   n152_statement_end_α
.Lx475_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx475_240
                        add              rsp, 16;                             jmp   n150_coerce_numeric_β
.Lx475_240:                                                                   jmp   n152_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 153
                        mov              r10, 30
                        add              rsp, 80;                             jmp   n136_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 154
                        mov              r10, 31;                             jmp   n154_call_α
n153_statement_begin_β: mov              r11, 154;                            jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            sub              rsp, 16
                        mov              r11, 155
                        .section         .rodata
.Lrkfnzd481:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd481]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx480_240
                        add              rsp, 16;                             jmp   n153_statement_begin_β
.Lx480_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_var_α
n154_call_β:            mov              r11, 155
                        add              rsp, 16;                             jmp   n153_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_binop_α
n155_var_β:             mov              r11, 156
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              r11, 157
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx483_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx483_7
.Lx483_2:               and              edx, 1;                              jz    .Lx483_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx483_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx483_4
.Lx483_3:               movq             xmm0, rsi
.Lx483_4:               cmp              cl, 5;                               je    .Lx483_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx483_6
.Lx483_5:               movq             xmm1, rdi
.Lx483_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx483_7:                                                                     jmp   n157_assign_α
.Lx483_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx483_240
                        add              rsp, 16;                             jmp   n155_var_β
.Lx483_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n157_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              r11, 158
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n158_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   mov              r11, 159
                        mov              r10, 31
                        add              rsp, 48;                             jmp   n159_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 160
                        mov              r10, 32;                             jmp   n160_lit_string_α
n159_statement_begin_β: mov              r11, 160;                            jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_var_α
.Lx489_0:               .quad            .Lx489_0_s
.Lx489_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_binop_α
n161_var_β:             mov              r11, 162
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:           sub              rsp, 16
                        mov              r11, 163
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              r11, 164
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_statement_end_α
.Lx492_0:               .quad            .Lx492_0_s
.Lx492_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   mov              r11, 165
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 166
                        mov              r10, 33;                             jmp   n166_lit_string_α
n165_statement_begin_β: mov              r11, 166;                            jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_var_α
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              r11, 168
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_binop_α
n167_var_β:             mov              r11, 168
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n169_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 170
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_statement_end_α
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 172
                        mov              r10, 34;                             jmp   n172_lit_string_α
n171_statement_begin_β: mov              r11, 172;                            jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_var_α
.Lx505_0:               .quad            .Lx505_0_s
.Lx505_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_lit_integer_α
n173_var_β:             mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_binop_α
n174_lit_integer_β:     mov              r11, 175
                        add              rsp, 16;                             jmp   n173_var_β
.Lx507_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           sub              rsp, 16
                        mov              r11, 176
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx508_240
                        add              rsp, 16;                             jmp   n174_lit_integer_β
.Lx508_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_binop_α
n175_binop_β:           mov              r11, 176
                        add              rsp, 16;                             jmp   n174_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n176_binop_α:           sub              rsp, 16
                        mov              r11, 177
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n177_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 178
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n178_statement_end_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 179
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n239_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 180
                        mov              r10, 35;                             jmp   n180_var_α
n179_statement_begin_β: mov              r11, 180;                            jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      sub              rsp, 16
                        mov              r11, 182
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_differ_α
n181_lit_string_β:      mov              r11, 182
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n182_differ_α:          sub              rsp, 16
                        mov              r11, 183
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx518_240
                        add              rsp, 16;                             jmp   n181_lit_string_β
.Lx518_240:                                                                   jmp   n183_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   mov              r11, 184
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n188_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 185
                        mov              r10, 36;                             jmp   n185_var_α
n184_statement_begin_β: mov              r11, 185;                            jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 128]            # fixed_n
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n188_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189
                        mov              r10, 37;                             jmp   n189_call_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            sub              rsp, 16
                        mov              r11, 190
                        .section         .rodata
.Lrkfnzd530:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd530]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx529_240
                        add              rsp, 16;                             jmp   n188_statement_begin_β
.Lx529_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
n189_call_β:            mov              r11, 190
                        add              rsp, 16;                             jmp   n188_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 192
                        mov              r10, 37
                        add              rsp, 16;                             jmp   n192_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 193
                        mov              r10, 38;                             jmp   n193_lit_integer_α
n192_statement_begin_β: mov              r11, 193;                            jmp   n196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     sub              rsp, 16
                        mov              r11, 194
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_assign_α
.Lx536_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n195_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 196
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n196_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α: mov              r11, 197
                        mov              r10, 39;                             jmp   n197_var_α
n196_statement_begin_β: mov              r11, 197;                            jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_call_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            sub              rsp, 16
                        mov              r11, 199
                        lea              rcx, [rip + .Lsig544z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig544z:              .quad            1
                        .quad            .Lx544_2
                        .quad            .Lx544_2
                        .quad            16
.Lx544_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx544_29
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
.Lx544_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx544_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n196_statement_begin_β
.Lx544_240:                                                                   jmp   n199_statement_end_α
n198_call_β:            mov              r11, 199;                            jmp   n196_statement_begin_β
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        mov              r10, 39
                        add              rsp, 32;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 201
                        mov              r10, 40;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 201;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_binop_α
n202_var_β:             mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           sub              rsp, 16
                        mov              r11, 204
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx551_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx551_7
.Lx551_2:               and              edx, 1;                              jz    .Lx551_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx551_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx551_4
.Lx551_3:               movq             xmm0, rsi
.Lx551_4:               cmp              cl, 5;                               je    .Lx551_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx551_6
.Lx551_5:               movq             xmm1, rdi
.Lx551_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx551_7:                                                                     jmp   n204_assign_α
.Lx551_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx551_240
                        add              rsp, 16;                             jmp   n202_var_β
.Lx551_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 205
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n205_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 206
                        mov              r10, 40
                        add              rsp, 48;                             jmp   n206_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 207
                        mov              r10, 41;                             jmp   n207_var_α
n206_statement_begin_β: mov              r11, 207;                            jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_var_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 128]            # fixed_n
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_coerce_numeric_α
n208_var_β:             mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx560_1
                        cmp              al, 3;                               jne   .Lx560_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx560_0
.Lx560_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_coerce_numeric_α
.Lx560_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_coerce_numeric_α
n209_coerce_numeric_β:  mov              r11, 210
                        add              rsp, 16;                             jmp   n208_var_β
#-----------------------------------------------------------------------------------------------------------------------
n210_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 211
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx562_1
                        cmp              al, 3;                               jne   .Lx562_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx562_0
.Lx562_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_cmp_test_α
.Lx562_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_cmp_test_α
n210_coerce_numeric_β:  mov              r11, 211
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n211_cmp_test_α:        sub              rsp, 16
                        mov              r11, 212
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx564_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx564_239
                        add              rsp, 16;                             jmp   n210_coerce_numeric_β
.Lx564_239:                                                                   jmp   n212_statement_end_α
.Lx564_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx564_240
                        add              rsp, 16;                             jmp   n210_coerce_numeric_β
.Lx564_240:                                                                   jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 213
                        mov              r10, 41
                        add              rsp, 80;                             jmp   n196_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 214
                        mov              r10, 42;                             jmp   n214_call_α
n213_statement_begin_β: mov              r11, 214;                            jmp   n219_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:            sub              rsp, 16
                        mov              r11, 215
                        .section         .rodata
.Lrkfnzd570:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd570]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx569_240
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lx569_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_var_α
n214_call_β:            mov              r11, 215
                        add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_binop_α
n215_var_β:             mov              r11, 216
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:           sub              rsp, 16
                        mov              r11, 217
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx572_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx572_7
.Lx572_2:               and              edx, 1;                              jz    .Lx572_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx572_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx572_4
.Lx572_3:               movq             xmm0, rsi
.Lx572_4:               cmp              cl, 5;                               je    .Lx572_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx572_6
.Lx572_5:               movq             xmm1, rdi
.Lx572_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx572_7:                                                                     jmp   n217_assign_α
.Lx572_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx572_240
                        add              rsp, 16;                             jmp   n215_var_β
.Lx572_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n217_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:          mov              r11, 218
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n218_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:   mov              r11, 219
                        mov              r10, 42
                        add              rsp, 48;                             jmp   n219_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_begin_α: mov              r11, 220
                        mov              r10, 43;                             jmp   n220_lit_string_α
n219_statement_begin_β: mov              r11, 220;                            jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      sub              rsp, 16
                        mov              r11, 221
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_var_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_binop_α
n221_var_β:             mov              r11, 222
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n219_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:           sub              rsp, 16
                        mov              r11, 223
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:          mov              r11, 224
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n224_statement_end_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   mov              r11, 225
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n225_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α: mov              r11, 226
                        mov              r10, 44;                             jmp   n226_lit_string_α
n225_statement_begin_β: mov              r11, 226;                            jmp   n231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      sub              rsp, 16
                        mov              r11, 227
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_var_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_binop_α
n227_var_β:             mov              r11, 228
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n225_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 229
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 230
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n230_statement_end_α
.Lx589_0:               .quad            .Lx589_0_s
.Lx589_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   mov              r11, 231
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n231_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_begin_α: mov              r11, 232
                        mov              r10, 45;                             jmp   n232_lit_string_α
n231_statement_begin_β: mov              r11, 232;                            jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      sub              rsp, 16
                        mov              r11, 233
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_var_α
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_lit_integer_α
n233_var_β:             mov              r11, 234
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              r11, 235
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_binop_α
n234_lit_integer_β:     mov              r11, 235
                        add              rsp, 16;                             jmp   n233_var_β
.Lx596_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              r11, 236
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx597_240
                        add              rsp, 16;                             jmp   n234_lit_integer_β
.Lx597_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n236_binop_α
n235_binop_β:           mov              r11, 236
                        add              rsp, 16;                             jmp   n234_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n237_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 238
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n238_statement_end_α
.Lx599_0:               .quad            .Lx599_0_s
.Lx599_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   mov              r11, 239
                        mov              r10, 45
                        add              rsp, 80;                             jmp   n239_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α: mov              r11, 240
                        mov              r10, 46;                             jmp   n240_var_α
n239_statement_begin_β: mov              r11, 240;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 241
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              r11, 242
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n242_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   mov              r11, 243
                        mov              r10, 46
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 244
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
